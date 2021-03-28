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
// function begins at statement 275, parm_start=764
// OP_LOAD_ENT	28	181	765
// OP_LOAD_V	765	105	766
// OP_LOAD_ENT	28	181	769
// OP_LOAD_V	769	166	770
// OP_ADD_V	766	770	773
// OP_LOAD_V	28	105	776
// OP_LOAD_V	28	166	779
// OP_ADD_V	776	779	782
// OP_SUB_V	773	782	785
// OP_STORE_V	785	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	764	0
// OP_LT	764	788	789
// OP_IFNOT	789	3	0
// OP_CALL0	748	0	0
// OP_GOTO	2	0	0
// OP_CALL0	749	0	0
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
// function begins at statement 293, parm_start=791
// OP_LOAD_ENT	28	181	799
// OP_STORE_ENT	799	797	0
// OP_LOAD_V	28	105	800
// OP_LOAD_V	28	166	803
// OP_ADD_V	800	803	806
// OP_STORE_V	806	791	0
// OP_LOAD_V	797	105	809
// OP_LOAD_V	797	166	812
// OP_ADD_V	809	812	815
// OP_STORE_V	815	794	0
// OP_STORE_V	791	4	0
// OP_STORE_V	794	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	797	818
// OP_IFNOT	818	2	0
// OP_RETURN	213	0	0
// OP_AND	79	80	819
// OP_IFNOT	819	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	242	820
// OP_IFNOT	820	11	0
// OP_LOAD_FNC	28	360	821
// OP_IFNOT	821	9	0
// OP_LOAD_S	28	129	822
// OP_EQ_S	822	823	824
// OP_IFNOT	824	3	0
// OP_CALL0	763	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	360	825
// OP_CALL0	825	0	0
// OP_RETURN	214	0	0
// OP_LOAD_FNC	28	359	826
// OP_NOT_FNC	826	0	827
// OP_IFNOT	827	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	828
// OP_LT	31	828	829
// OP_IFNOT	829	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	245	830
// OP_IFNOT	830	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	242	831
// OP_IFNOT	831	5	0
// OP_STORE_F	832	798	0
// OP_ADDRESS	28	373	833
// OP_STOREP_F	337	833	0
// OP_GOTO	18	0	0
// OP_EQ_F	761	243	834
// OP_IFNOT	834	7	0
// OP_LOAD_FNC	28	360	835
// OP_IFNOT	835	3	0
// OP_STORE_F	836	798	0
// OP_GOTO	2	0	0
// OP_STORE_F	837	798	0
// OP_GOTO	10	0	0
// OP_EQ_F	761	244	838
// OP_IFNOT	838	7	0
// OP_LOAD_FNC	28	360	839
// OP_IFNOT	839	3	0
// OP_STORE_F	840	798	0
// OP_GOTO	2	0	0
// OP_STORE_F	603	798	0
// OP_GOTO	2	0	0
// OP_STORE_F	337	798	0
// OP_CALL0	452	0	0
// OP_LT	1	798	841
// OP_IFNOT	841	8	0
// OP_LOAD_FNC	28	359	842
// OP_CALL0	842	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	369	1	843
// OP_STORE_V	843	4	0
// OP_CALL1	731	0	0
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
        self.attack_finished = MSG_BROADCAST;
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
                chance = MSG_BROADCAST;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(AS_SLIDING * random());
        return TRUE;
    }
    
    return FALSE;
};

// ai_face
// function begins at statement 372, parm_start=844
// OP_ADDRESS	28	191	844
// OP_LOAD_ENT	28	181	845
// OP_LOAD_V	845	105	846
// OP_LOAD_V	28	105	849
// OP_SUB_V	846	849	852
// OP_STORE_V	852	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	844	0
// OP_CALL0	491	0	0
// OP_DONE	0	0	0
void () ai_face = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
};

float (entity targ) infront;
float (entity targ) range;
// ai_charge
// function begins at statement 382, parm_start=858
// OP_CALL0	758	0	0
// OP_STORE_V	858	4	0
// OP_CALL1	501	0	0
// OP_DONE	0	0	0
void (float d) ai_charge = 
{
    ai_face();
    movetogoal(d);
};

// ai_charge_side
// function begins at statement 386, parm_start=860
// OP_ADDRESS	28	191	864
// OP_LOAD_ENT	28	181	865
// OP_LOAD_V	865	105	866
// OP_LOAD_V	28	105	869
// OP_SUB_V	866	869	872
// OP_STORE_V	872	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	864	0
// OP_CALL0	491	0	0
// OP_LOAD_V	28	117	875
// OP_STORE_V	875	4	0
// OP_CALL1	447	0	0
// OP_LOAD_ENT	28	181	878
// OP_LOAD_V	878	105	879
// OP_MUL_FV	304	65	882
// OP_SUB_V	879	882	885
// OP_STORE_V	885	860	0
// OP_LOAD_V	28	105	888
// OP_SUB_V	860	888	891
// OP_STORE_V	891	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	863	0
// OP_STORE_V	863	4	0
// OP_STORE_V	894	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void () ai_charge_side = 
{
    local vector dtemp;
    local float heading;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    makevectors(self.angles);
    dtemp = self.enemy.origin - (SVC_INTERMISSION * v_right);
    heading = vectoyaw(dtemp - self.origin);
    walkmove(heading, 20.000);
};

// ai_melee
// function begins at statement 412, parm_start=896
// OP_LOAD_ENT	28	181	900
// OP_NOT_ENT	900	0	901
// OP_IFNOT	901	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	902
// OP_LOAD_V	902	105	903
// OP_LOAD_V	28	105	906
// OP_SUB_V	903	906	909
// OP_STORE_V	909	896	0
// OP_STORE_V	896	4	0
// OP_CALL1	457	0	0
// OP_GT	1	912	913
// OP_IFNOT	913	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_V	1	914	0
// OP_CALL0	452	0	0
// OP_ADD_F	914	1	917
// OP_CALL0	452	0	0
// OP_ADD_F	917	1	918
// OP_MUL_F	918	370	919
// OP_STORE_F	919	899	0
// OP_LOAD_ENT	28	181	920
// OP_STORE_V	920	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	899	13	0
// OP_CALL4	520	0	0
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
    
    ldmg = ((random() + random()) + random()) * AS_MELEE;
    T_Damage(self.enemy, self, self, ldmg);
};

// ai_melee_side
// function begins at statement 441, parm_start=922
// OP_LOAD_ENT	28	181	926
// OP_NOT_ENT	926	0	927
// OP_IFNOT	927	2	0
// OP_RETURN	0	0	0
// OP_CALL0	859	0	0
// OP_LOAD_ENT	28	181	928
// OP_LOAD_V	928	105	929
// OP_LOAD_V	28	105	932
// OP_SUB_V	929	932	935
// OP_STORE_V	935	922	0
// OP_STORE_V	922	4	0
// OP_CALL1	457	0	0
// OP_GT	1	912	938
// OP_IFNOT	938	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	939
// OP_STORE_V	939	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	940
// OP_IFNOT	940	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_V	1	941	0
// OP_CALL0	452	0	0
// OP_ADD_F	941	1	944
// OP_CALL0	452	0	0
// OP_ADD_F	944	1	945
// OP_MUL_F	945	370	946
// OP_STORE_F	946	925	0
// OP_LOAD_ENT	28	181	947
// OP_STORE_V	947	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	925	13	0
// OP_CALL4	520	0	0
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
    
    ldmg = ((random() + random()) + random()) * AS_MELEE;
    T_Damage(self.enemy, self, self, ldmg);
};

// SoldierCheckAttack
// function begins at statement 478, parm_start=949
// OP_LOAD_ENT	28	181	957
// OP_STORE_ENT	957	955	0
// OP_LOAD_V	28	105	958
// OP_LOAD_V	28	166	961
// OP_ADD_V	958	961	964
// OP_STORE_V	964	949	0
// OP_LOAD_V	955	105	967
// OP_LOAD_V	955	166	970
// OP_ADD_V	967	970	973
// OP_STORE_V	973	952	0
// OP_STORE_V	949	4	0
// OP_STORE_V	952	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	976
// OP_IFNOT	976	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	955	977
// OP_IFNOT	977	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	978
// OP_LT	31	978	979
// OP_IFNOT	979	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	245	980
// OP_IFNOT	980	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	242	981
// OP_IFNOT	981	3	0
// OP_STORE_F	832	956	0
// OP_GOTO	10	0	0
// OP_EQ_F	761	243	982
// OP_IFNOT	982	3	0
// OP_STORE_F	837	956	0
// OP_GOTO	6	0	0
// OP_EQ_F	761	244	983
// OP_IFNOT	983	3	0
// OP_STORE_F	840	956	0
// OP_GOTO	2	0	0
// OP_STORE_F	337	956	0
// OP_CALL0	452	0	0
// OP_LT	1	956	984
// OP_IFNOT	984	15	0
// OP_LOAD_FNC	28	359	985
// OP_CALL0	985	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	368	1	986
// OP_STORE_V	986	4	0
// OP_CALL1	731	0	0
// OP_CALL0	452	0	0
// OP_LT	1	987	988
// OP_IFNOT	988	5	0
// OP_ADDRESS	28	365	989
// OP_LOAD_F	28	365	990
// OP_NOT_F	990	0	991
// OP_STOREP_F	991	989	0
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
                chance = MSG_BROADCAST;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(AS_STRAIGHT + random());
        
        if(random() < 0.300)
        {
            self.lefty = !self.lefty;
        }
        
        return TRUE;
    }
    
    return FALSE;
};

// ShamCheckAttack
// function begins at statement 538, parm_start=993
// OP_EQ_F	761	242	1001
// OP_IFNOT	1001	9	0
// OP_LOAD_ENT	28	181	1002
// OP_STORE_V	1002	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	1003
// OP_STOREP_F	370	1003	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	373	1004
// OP_LT	31	1004	1005
// OP_IFNOT	1005	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	759	0	1006
// OP_IFNOT	1006	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1007
// OP_STORE_ENT	1007	999	0
// OP_LOAD_V	28	105	1008
// OP_LOAD_V	28	166	1011
// OP_ADD_V	1008	1011	1014
// OP_STORE_V	1014	993	0
// OP_LOAD_V	999	105	1017
// OP_LOAD_V	999	166	1020
// OP_ADD_V	1017	1020	1023
// OP_STORE_V	1023	996	0
// OP_SUB_V	993	996	1026
// OP_STORE_V	1026	4	0
// OP_CALL1	457	0	0
// OP_GT	1	1029	1030
// OP_IFNOT	1030	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	993	4	0
// OP_STORE_V	996	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1031
// OP_IFNOT	1031	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	999	1032
// OP_IFNOT	1032	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	245	1033
// OP_IFNOT	1033	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	367	1034
// OP_STOREP_F	371	1034	0
// OP_CALL0	452	0	0
// OP_MUL_F	369	1	1035
// OP_ADD_F	369	1035	1036
// OP_STORE_V	1036	4	0
// OP_CALL1	731	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () ShamCheckAttack = 
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
    
    if((vlen(spot1 - spot2)) > 600.000)
    {
        return FALSE;
    }
    
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(AS_SLIDING + (AS_SLIDING * random()));
    return TRUE;
};

// OgreCheckAttack
// function begins at statement 594, parm_start=1038
// OP_EQ_F	761	242	1046
// OP_IFNOT	1046	9	0
// OP_LOAD_ENT	28	181	1047
// OP_STORE_V	1047	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	1048
// OP_STOREP_F	370	1048	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	373	1049
// OP_LT	31	1049	1050
// OP_IFNOT	1050	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	759	0	1051
// OP_IFNOT	1051	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1052
// OP_STORE_ENT	1052	1044	0
// OP_LOAD_V	28	105	1053
// OP_LOAD_V	28	166	1056
// OP_ADD_V	1053	1056	1059
// OP_STORE_V	1059	1038	0
// OP_LOAD_V	1044	105	1062
// OP_LOAD_V	1044	166	1065
// OP_ADD_V	1062	1065	1068
// OP_STORE_V	1068	1041	0
// OP_STORE_V	1038	4	0
// OP_STORE_V	1041	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1071
// OP_IFNOT	1071	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1044	1072
// OP_IFNOT	1072	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	1073
// OP_LT	31	1073	1074
// OP_IFNOT	1074	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	245	1075
// OP_IFNOT	1075	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	761	243	1076
// OP_IFNOT	1076	3	0
// OP_STORE_F	603	1045	0
// OP_GOTO	6	0	0
// OP_EQ_F	761	244	1077
// OP_IFNOT	1077	3	0
// OP_STORE_F	840	1045	0
// OP_GOTO	2	0	0
// OP_STORE_F	337	1045	0
// OP_ADDRESS	28	367	1078
// OP_STOREP_F	371	1078	0
// OP_CALL0	452	0	0
// OP_MUL_F	369	1	1079
// OP_ADD_F	368	1079	1080
// OP_STORE_V	1080	4	0
// OP_CALL1	731	0	0
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
                chance = MSG_BROADCAST;
            }
            
        }
        
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(AS_STRAIGHT + (AS_SLIDING * random()));
    return TRUE;
};

