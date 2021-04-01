// calcbit
// function begins at statement 275, parm_start=803
// OP_EQ_F	803	619	804
// OP_IFNOT	804	2	0
// OP_RETURN	677	0	0
// OP_EQ_F	803	677	805
// OP_IFNOT	805	2	0
// OP_RETURN	806	0	0
// OP_EQ_F	803	806	807
// OP_IFNOT	807	2	0
// OP_RETURN	808	0	0
// OP_EQ_F	803	788	809
// OP_IFNOT	809	2	0
// OP_RETURN	810	0	0
// OP_EQ_F	803	808	811
// OP_IFNOT	811	2	0
// OP_RETURN	812	0	0
// OP_EQ_F	803	813	814
// OP_IFNOT	814	2	0
// OP_RETURN	815	0	0
// OP_EQ_F	803	816	817
// OP_IFNOT	817	2	0
// OP_RETURN	818	0	0
// OP_EQ_F	803	819	820
// OP_IFNOT	820	2	0
// OP_RETURN	821	0	0
// OP_EQ_F	803	810	822
// OP_IFNOT	822	2	0
// OP_RETURN	823	0	0
// OP_EQ_F	803	824	825
// OP_IFNOT	825	2	0
// OP_RETURN	826	0	0
// OP_EQ_F	803	827	828
// OP_IFNOT	828	2	0
// OP_RETURN	829	0	0
// OP_EQ_F	803	830	831
// OP_IFNOT	831	2	0
// OP_RETURN	832	0	0
// OP_EQ_F	803	833	834
// OP_IFNOT	834	2	0
// OP_RETURN	835	0	0
// OP_EQ_F	803	836	837
// OP_IFNOT	837	2	0
// OP_RETURN	838	0	0
// OP_EQ_F	803	839	840
// OP_IFNOT	840	2	0
// OP_RETURN	841	0	0
// OP_EQ_F	803	842	843
// OP_IFNOT	843	2	0
// OP_RETURN	844	0	0
// OP_RETURN	619	0	0
// OP_DONE	0	0	0
float (float n) calcbit = 
{
    
    if(n == 0.000)
    {
        return 1.000;
    }
    
    
    if(n == 1.000)
    {
        return 2.000;
    }
    
    
    if(n == 2.000)
    {
        return 4.000;
    }
    
    
    if(n == 3.000)
    {
        return 8.000;
    }
    
    
    if(n == 4.000)
    {
        return 16.000;
    }
    
    
    if(n == 5.000)
    {
        return 32.000;
    }
    
    
    if(n == 6.000)
    {
        return 64.000;
    }
    
    
    if(n == 7.000)
    {
        return 128.000;
    }
    
    
    if(n == 8.000)
    {
        return 256.000;
    }
    
    
    if(n == 9.000)
    {
        return 512.000;
    }
    
    
    if(n == 10.000)
    {
        return 1024.000;
    }
    
    
    if(n == 11.000)
    {
        return 2048.000;
    }
    
    
    if(n == 12.000)
    {
        return 4096.000;
    }
    
    
    if(n == 13.000)
    {
        return 8192.000;
    }
    
    
    if(n == 14.000)
    {
        return 16384.000;
    }
    
    
    if(n == 15.000)
    {
        return 32768.000;
    }
    
    return 0.000;
};

// checkcli
// function begins at statement 325, parm_start=846
// OP_EQ_S	846	101	847
// OP_IFNOT	847	3	0
// OP_RETURN	104	0	0
// OP_GOTO	6	0	0
// OP_EQ_S	846	102	848
// OP_IFNOT	848	3	0
// OP_RETURN	105	0	0
// OP_GOTO	2	0	0
// OP_RETURN	106	0	0
// OP_DONE	0	0	0
entity (string tstr) checkcli = 
{
    if(tstr == T0)
    {
        return checkcl0;
    }
    else
    {
        if(tstr == T1)
        {
            return checkcl1;
        }
        else
        {
            return checkcl2;
        }
        
    }
    
};

// change_cc
// function begins at statement 335, parm_start=850
// OP_EQ_S	850	101	854
// OP_IFNOT	854	3	0
// OP_STORE_ENT	104	851	0
// OP_GOTO	6	0	0
// OP_EQ_S	850	102	855
// OP_IFNOT	855	3	0
// OP_STORE_ENT	105	851	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	106	851	0
// OP_STORE_V	851	4	0
// OP_STORE_V	243	7	0
// OP_STORE_V	850	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	851	0
// OP_STORE_ENT	851	852	0
// OP_LT	853	856	857
// OP_IFNOT	857	48	0
// OP_ADD_F	853	677	858
// OP_STORE_F	858	853	0
// OP_LOAD_F	851	177	859
// OP_GT	859	619	860
// OP_LOAD_F	851	188	861
// OP_GT	861	619	862
// OP_AND	860	862	863
// OP_LOAD_S	851	154	864
// OP_NE_S	864	766	865
// OP_AND	863	865	866
// OP_IFNOT	866	11	0
// OP_EQ_S	850	101	867
// OP_IFNOT	867	3	0
// OP_STORE_ENT	851	104	0
// OP_GOTO	6	0	0
// OP_EQ_S	850	102	868
// OP_IFNOT	868	3	0
// OP_STORE_ENT	851	105	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	851	106	0
// OP_RETURN	0	0	0
// OP_STORE_V	851	4	0
// OP_STORE_V	243	7	0
// OP_STORE_V	850	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	851	0
// OP_EQ_E	851	852	869
// OP_IFNOT	869	12	0
// OP_STORE_ENT	30	851	0
// OP_EQ_S	850	101	870
// OP_IFNOT	870	3	0
// OP_STORE_ENT	851	104	0
// OP_GOTO	6	0	0
// OP_EQ_S	850	102	871
// OP_IFNOT	871	3	0
// OP_STORE_ENT	851	105	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	851	106	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	851	0	872
// OP_IFNOT	872	6	0
// OP_STORE_V	851	4	0
// OP_STORE_V	243	7	0
// OP_STORE_V	850	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	851	0
// OP_GOTO	-48	0	0
// OP_STORE_ENT	30	851	0
// OP_EQ_S	850	101	873
// OP_IFNOT	873	3	0
// OP_STORE_ENT	851	104	0
// OP_GOTO	6	0	0
// OP_EQ_S	850	102	874
// OP_IFNOT	874	3	0
// OP_STORE_ENT	851	105	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	851	106	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (string tstr) change_cc = 
{
    local entity e;
    local entity oe;
    local float tmp;
    if(tstr == T0)
    {
        e = checkcl0;
    }
    else
    {
        if(tstr == T1)
        {
            e = checkcl1;
        }
        else
        {
            e = checkcl2;
        }
        
    }
    
    e = find(e, ts, tstr);
    oe = e;
    
    while(tmp < 50.000)
    {
        tmp = tmp + 1.000;
        
        if(((e.health > 0.000) && (e.takedamage > 0.000)) && (e.classname != "player"))
        {
            if(tstr == T0)
            {
                checkcl0 = e;
            }
            else
            {
                if(tstr == T1)
                {
                    checkcl1 = e;
                }
                else
                {
                    checkcl2 = e;
                }
                
            }
            
            return;
        }
        
        e = find(e, ts, tstr);
        
        if(e == oe)
        {
            e = world;
            if(tstr == T0)
            {
                checkcl0 = e;
            }
            else
            {
                if(tstr == T1)
                {
                    checkcl1 = e;
                }
                else
                {
                    checkcl2 = e;
                }
                
            }
            
            return;
        }
        
        
        if(!e)
        {
            e = find(e, ts, tstr);
        }
        
    }
    
    e = world;
    if(tstr == T0)
    {
        checkcl0 = e;
    }
    else
    {
        if(tstr == T1)
        {
            checkcl1 = e;
        }
        else
        {
            checkcl2 = e;
        }
        
    }
    
    return;
};

// check_allowed
// function begins at statement 411, parm_start=876
// OP_SUB_F	876	677	878
// OP_STORE_V	878	4	0
// OP_CALL1	802	0	0
// OP_STORE_F	1	877	0
// OP_EQ_F	37	619	879
// OP_IFNOT	879	5	0
// OP_BITAND	107	877	880
// OP_IFNOT	880	2	0
// OP_RETURN	268	0	0
// OP_GOTO	13	0	0
// OP_LOAD_S	28	243	881
// OP_EQ_S	881	102	882
// OP_IFNOT	882	4	0
// OP_BITAND	108	877	883
// OP_IFNOT	883	2	0
// OP_RETURN	268	0	0
// OP_LOAD_S	28	243	884
// OP_EQ_S	884	103	885
// OP_IFNOT	885	4	0
// OP_BITAND	109	877	886
// OP_IFNOT	886	2	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float (float n) check_allowed = 
{
    local float tmp;
    tmp = calcbit(n - 1.000);
    if(teamplay == 0.000)
    {
        
        if(allowedcraft & tmp)
        {
            return TRUE;
        }
        
    }
    else
    {
        
        if(self.ts == T1)
        {
            
            if(allow1 & tmp)
            {
                return TRUE;
            }
            
        }
        
        
        if(self.ts == T2)
        {
            
            if(allow2 & tmp)
            {
                return TRUE;
            }
            
        }
        
    }
    
    return FALSE;
};

// add_allowedcraft
// function begins at statement 435, parm_start=888
// OP_EQ_F	889	677	894
// OP_IFNOT	894	4	0
// OP_BITOR	108	888	895
// OP_STORE_F	895	108	0
// OP_GOTO	23	0	0
// OP_EQ_F	889	806	896
// OP_IFNOT	896	4	0
// OP_BITOR	109	888	897
// OP_STORE_F	897	109	0
// OP_GOTO	18	0	0
// OP_BITOR	107	888	898
// OP_STORE_F	898	107	0
// OP_STORE_F	619	890	0
// OP_STORE_F	619	891	0
// OP_LT	890	827	899
// OP_IFNOT	899	11	0
// OP_STORE_V	890	4	0
// OP_CALL1	802	0	0
// OP_STORE_F	1	892	0
// OP_BITAND	107	892	900
// OP_IFNOT	900	3	0
// OP_ADD_F	891	677	901
// OP_STORE_F	901	891	0
// OP_ADD_F	890	677	902
// OP_STORE_F	902	890	0
// OP_GOTO	-11	0	0
// OP_STORE_F	891	110	0
// OP_DONE	0	0	0
void (float n, float t) add_allowedcraft = 
{
    local float tmp;
    local float f1;
    local float f2;
    local float f3;
    if(t == 1.000)
    {
        allow1 = allow1 | n;
    }
    else
    {
        if(t == 2.000)
        {
            allow2 = allow2 | n;
        }
        else
        {
            allowedcraft = allowedcraft | n;
            f1 = tmp = 0.000;
            
            while(tmp < 10.000)
            {
                f2 = calcbit(tmp);
                
                if(allowedcraft & f2)
                {
                    f1 = f1 + 1.000;
                }
                
                tmp = tmp + 1.000;
            }
            
            numcraft = f1;
        }
        
    }
    
};

// givefrags
// function begins at statement 463, parm_start=904
// OP_LOAD_F	904	207	907
// OP_BITAND	907	271	908
// OP_IFNOT	908	5	0
// OP_ADDRESS	904	178	909
// OP_LOAD_F	904	178	910
// OP_ADD_F	910	906	911
// OP_STOREP_F	911	909	0
// OP_DONE	0	0	0
void (entity to, entity from, float num) givefrags = 
{
    
    if(to.flags & FL_CLIENT)
    {
        to.frags = to.frags + num;
    }
    
};

// giveteamfrags
// function begins at statement 471, parm_start=913
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	915	0
// OP_IFNOT	915	15	0
// OP_LOAD_S	915	243	916
// OP_LOAD_S	913	243	917
// OP_EQ_S	916	917	918
// OP_IFNOT	918	5	0
// OP_ADDRESS	915	178	919
// OP_LOAD_F	915	178	920
// OP_ADD_F	920	914	921
// OP_STOREP_F	921	919	0
// OP_STORE_V	915	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	915	0
// OP_GOTO	-14	0	0
// OP_DONE	0	0	0
void (entity to, float num) giveteamfrags = 
{
    local entity e;
    e = find(world, classname, "player");
    
    while(e)
    {
        
        if(e.ts == to.ts)
        {
            e.frags = e.frags + num;
        }
        
        e = find(e, classname, "player");
    }
    
};

// teamprint
// function begins at statement 492, parm_start=923
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	925	0
// OP_IFNOT	925	18	0
// OP_LOAD_S	925	243	926
// OP_LOAD_S	923	243	927
// OP_EQ_S	926	927	928
// OP_LOAD_F	925	207	929
// OP_BITAND	929	275	930
// OP_NE_F	930	619	931
// OP_OR	928	931	932
// OP_IFNOT	932	4	0
// OP_STORE_V	925	4	0
// OP_STORE_V	924	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	925	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	925	0
// OP_GOTO	-17	0	0
// OP_DONE	0	0	0
void (entity to, string str) teamprint = 
{
    local entity e;
    e = find(world, classname, "player");
    
    while(e)
    {
        
        if((e.ts == to.ts) || ((e.flags & FL_NOTARGET) != 0.000))
        {
            sprint(e, str);
        }
        
        e = find(e, classname, "player");
    }
    
};

// checkground
// function begins at statement 516, parm_start=934
// OP_LOAD_F	28	207	934
// OP_BITAND	934	277	935
// OP_NOT_F	935	0	936
// OP_IFNOT	936	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	176	937
// OP_LOAD_F	937	129	938
// OP_NE_F	938	295	939
// OP_IFNOT	939	8	0
// OP_ADDRESS	28	207	940
// OP_LOAD_F	28	207	941
// OP_LOAD_F	28	207	942
// OP_BITAND	942	277	943
// OP_SUB_F	941	943	944
// OP_STOREP_F	944	940	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () checkground = 
{
    
    if(!(self.flags & FL_ONGROUND))
    {
        return;
    }
    
    
    if(self.groundentity.solid != SOLID_BSP)
    {
        self.flags = self.flags - (self.flags & FL_ONGROUND);
        return;
    }
    
};

// place_targetbox
// function begins at statement 533, parm_start=946
// OP_LOAD_ENT	28	206	956
// OP_STORE_ENT	956	946	0
// OP_LOAD_ENT	946	464	957
// OP_LOAD_V	957	130	958
// OP_LOAD_ENT	946	464	961
// OP_LOAD_V	961	159	962
// OP_LOAD_ENT	946	464	965
// OP_LOAD_V	965	163	966
// OP_ADD_V	962	966	969
// OP_MUL_VF	969	972	973
// OP_ADD_V	958	973	976
// OP_STORE_V	976	947	0
// OP_LOAD_ENT	28	412	979
// OP_LOAD_V	979	130	980
// OP_SUB_V	947	980	983
// OP_STORE_V	983	4	0
// OP_CALL1	503	0	0
// OP_MUL_VF	1	986	987
// OP_LOAD_V	946	138	990
// OP_MUL_FV	32	990	993
// OP_ADD_V	987	993	996
// OP_STORE_V	996	950	0
// OP_LOAD_ENT	28	412	999
// OP_LOAD_V	999	130	1000
// OP_STORE_V	1000	4	0
// OP_LOAD_ENT	28	412	1003
// OP_LOAD_V	1003	130	1004
// OP_ADD_V	1004	950	1007
// OP_STORE_V	1007	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	946	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	412	1010
// OP_LOAD_V	1010	130	1011
// OP_SUB_F	70	1014	1015
// OP_MUL_VF	950	1015	1016
// OP_ADD_V	1011	1016	1019
// OP_STORE_V	1019	953	0
// OP_LOAD_ENT	946	464	1022
// OP_LOAD_S	1022	243	1023
// OP_LOAD_S	28	243	1024
// OP_EQ_S	1023	1024	1025
// OP_GT	37	619	1026
// OP_EQ_F	35	619	1027
// OP_OR	1026	1027	1028
// OP_AND	1025	1028	1029
// OP_IFNOT	1029	5	0
// OP_LOAD_ENT	28	464	1030
// OP_ADDRESS	1030	156	1031
// OP_STOREP_F	788	1031	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	464	1032
// OP_ADDRESS	1032	156	1033
// OP_STOREP_F	677	1033	0
// OP_LOAD_ENT	946	464	1034
// OP_LOAD_ENT	1034	226	1035
// OP_LOAD_S	1035	154	1036
// OP_EQ_S	1036	766	1037
// OP_IFNOT	1037	9	0
// OP_LOAD_ENT	946	464	1038
// OP_LOAD_ENT	1038	226	1039
// OP_ADDRESS	1039	212	1040
// OP_LOAD_ENT	946	464	1041
// OP_LOAD_ENT	1041	226	1042
// OP_LOAD_F	1042	212	1043
// OP_BITOR	1043	677	1044
// OP_STOREP_F	1044	1040	0
// OP_RETURN	953	0	0
// OP_DONE	0	0	0
vector () place_targetbox = 
{
    local entity e;
    local vector v0;
    local vector v1;
    local vector v2;
    e = self.enemy;
    v0 = e.trigger_field.origin + ((e.trigger_field.mins + e.trigger_field.maxs) * 0.500);
    v1 = ((normalize(v0 - self.oldenemy.origin)) * 200.000) + (frametime * e.velocity);
    traceline(self.oldenemy.origin, self.oldenemy.origin + v1, FALSE, e);
    v2 = self.oldenemy.origin + (v1 * (trace_fraction - 0.040));
    if((e.trigger_field.ts == self.ts) && ((teamplay > 0.000) || (deathmatch == 0.000)))
    {
        self.trigger_field.frame = 3.000;
    }
    else
    {
        self.trigger_field.frame = 1.000;
    }
    
    
    if(e.trigger_field.owner.classname == "player")
    {
        e.trigger_field.owner.armortype = e.trigger_field.owner.armortype | 1.000;
    }
    
    return v2;
};

// orgia
// function begins at statement 602, parm_start=1046
// OP_LOAD_V	1046	130	1050
// OP_LOAD_V	1046	159	1053
// OP_LOAD_V	1046	159	1056
// OP_ADD_V	1053	1056	1059
// OP_MUL_VF	1059	972	1062
// OP_ADD_V	1050	1062	1065
// OP_STORE_V	1065	1047	0
// OP_RETURN	1047	0	0
// OP_DONE	0	0	0
vector (entity targ) orgia = 
{
    local vector v;
    v = targ.origin + ((targ.mins + targ.mins) * 0.500);
    return v;
};

// setup_teament
// function begins at statement 611, parm_start=1069
// OP_LOAD_F	28	209	1069
// OP_EQ_F	1069	619	1070
// OP_LOAD_F	28	209	1071
// OP_NE_F	1071	677	1072
// OP_EQ_F	35	619	1073
// OP_AND	1072	1073	1074
// OP_OR	1070	1074	1075
// OP_IFNOT	1075	4	0
// OP_ADDRESS	28	243	1076
// OP_STOREP_S	101	1076	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	209	1077
// OP_EQ_F	1077	677	1078
// OP_IFNOT	1078	4	0
// OP_ADDRESS	28	243	1079
// OP_STOREP_S	102	1079	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	243	1080
// OP_STOREP_S	103	1080	0
// OP_LOAD_F	28	242	1081
// OP_IFNOT	1081	10	0
// OP_NOT_F	35	0	1082
// OP_IFNOT	1082	8	0
// OP_LOAD_F	28	209	1083
// OP_EQ_F	1083	677	1084
// OP_IFNOT	1084	5	0
// OP_ADDRESS	28	242	1085
// OP_LOAD_F	28	242	1086
// OP_SUB_F	619	1086	1087
// OP_STOREP_F	1087	1085	0
// OP_DONE	0	0	0
void () setup_teament = 
{
    if((self.team == 0.000) || ((self.team != 1.000) && (deathmatch == 0.000)))
    {
        self.ts = T0;
    }
    else
    {
        if(self.team == 1.000)
        {
            self.ts = T1;
        }
        else
        {
            self.ts = T2;
        }
        
    }
    
    
    if(self.value)
    {
        
        if(!deathmatch)
        {
            
            if(self.team == 1.000)
            {
                self.value = 0.000 - self.value;
            }
            
        }
        
    }
    
};

// send_voicemsg
// function begins at statement 642, parm_start=1089
// OP_STORE_S	774	1092	0
// OP_GT	1089	619	1093
// OP_LT	1089	827	1094
// OP_AND	1093	1094	1095
// OP_IFNOT	1095	29	0
// OP_EQ_F	1089	677	1096
// OP_IFNOT	1096	3	0
// OP_STORE_S	1097	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	806	1098
// OP_IFNOT	1098	3	0
// OP_STORE_S	1099	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	788	1100
// OP_IFNOT	1100	3	0
// OP_STORE_S	1101	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	808	1102
// OP_IFNOT	1102	3	0
// OP_STORE_S	1103	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	813	1104
// OP_IFNOT	1104	3	0
// OP_STORE_S	1105	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	816	1106
// OP_IFNOT	1106	3	0
// OP_STORE_S	1107	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	819	1108
// OP_IFNOT	1108	2	0
// OP_STORE_S	1109	1092	0
// OP_GOTO	244	0	0
// OP_GT	1089	827	1110
// OP_LT	1089	1111	1112
// OP_AND	1110	1112	1113
// OP_IFNOT	1113	29	0
// OP_EQ_F	1089	830	1114
// OP_IFNOT	1114	3	0
// OP_STORE_S	1115	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	833	1116
// OP_IFNOT	1116	3	0
// OP_STORE_S	1117	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	836	1118
// OP_IFNOT	1118	3	0
// OP_STORE_S	1119	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	839	1120
// OP_IFNOT	1120	3	0
// OP_STORE_S	1121	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	842	1122
// OP_IFNOT	1122	3	0
// OP_STORE_S	1123	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	812	1124
// OP_IFNOT	1124	3	0
// OP_STORE_S	1125	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1126	1127
// OP_IFNOT	1127	2	0
// OP_STORE_S	1128	1092	0
// OP_GOTO	212	0	0
// OP_GT	1089	1111	1129
// OP_LT	1089	1130	1131
// OP_AND	1129	1131	1132
// OP_IFNOT	1132	29	0
// OP_EQ_F	1089	1133	1134
// OP_IFNOT	1134	3	0
// OP_STORE_S	1135	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	1136	1137
// OP_IFNOT	1137	3	0
// OP_STORE_S	1138	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1139	1140
// OP_IFNOT	1140	3	0
// OP_STORE_S	1141	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	1142	1143
// OP_IFNOT	1143	3	0
// OP_STORE_S	1144	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1145	1146
// OP_IFNOT	1146	3	0
// OP_STORE_S	1147	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1148	1149
// OP_IFNOT	1149	3	0
// OP_STORE_S	1150	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1151	1152
// OP_IFNOT	1152	2	0
// OP_STORE_S	1153	1092	0
// OP_GOTO	180	0	0
// OP_GT	1089	1130	1154
// OP_LT	1089	1155	1156
// OP_AND	1154	1156	1157
// OP_IFNOT	1157	29	0
// OP_EQ_F	1089	1158	1159
// OP_IFNOT	1159	3	0
// OP_STORE_S	1160	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	815	1161
// OP_IFNOT	1161	3	0
// OP_STORE_S	1162	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1163	1164
// OP_IFNOT	1164	3	0
// OP_STORE_S	1165	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	1166	1167
// OP_IFNOT	1167	3	0
// OP_STORE_S	1168	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1169	1170
// OP_IFNOT	1170	3	0
// OP_STORE_S	1171	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1172	1173
// OP_IFNOT	1173	3	0
// OP_STORE_S	1174	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1175	1176
// OP_IFNOT	1176	2	0
// OP_STORE_S	1177	1092	0
// OP_GOTO	148	0	0
// OP_GT	1089	1155	1178
// OP_LT	1089	856	1179
// OP_AND	1178	1179	1180
// OP_IFNOT	1180	29	0
// OP_EQ_F	1089	1181	1182
// OP_IFNOT	1182	3	0
// OP_STORE_S	1183	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	1184	1185
// OP_IFNOT	1185	3	0
// OP_STORE_S	1186	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1187	1188
// OP_IFNOT	1188	3	0
// OP_STORE_S	1189	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	1190	1191
// OP_IFNOT	1191	3	0
// OP_STORE_S	1192	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1193	1194
// OP_IFNOT	1194	3	0
// OP_STORE_S	1195	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1196	1197
// OP_IFNOT	1197	3	0
// OP_STORE_S	1198	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1199	1200
// OP_IFNOT	1200	2	0
// OP_STORE_S	1201	1092	0
// OP_GOTO	116	0	0
// OP_GT	1089	856	1202
// OP_LT	1089	1203	1204
// OP_AND	1202	1204	1205
// OP_IFNOT	1205	29	0
// OP_EQ_F	1089	1206	1207
// OP_IFNOT	1207	3	0
// OP_STORE_S	1208	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	1209	1210
// OP_IFNOT	1210	3	0
// OP_STORE_S	1211	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1212	1213
// OP_IFNOT	1213	3	0
// OP_STORE_S	1214	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	1215	1216
// OP_IFNOT	1216	3	0
// OP_STORE_S	1217	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1218	1219
// OP_IFNOT	1219	3	0
// OP_STORE_S	1220	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1221	1222
// OP_IFNOT	1222	3	0
// OP_STORE_S	1223	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1224	1225
// OP_IFNOT	1225	2	0
// OP_STORE_S	1226	1092	0
// OP_GOTO	84	0	0
// OP_GT	1089	1203	1227
// OP_LT	1089	1228	1229
// OP_AND	1227	1229	1230
// OP_IFNOT	1230	29	0
// OP_EQ_F	1089	1231	1232
// OP_IFNOT	1232	3	0
// OP_STORE_S	1233	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	1234	1235
// OP_IFNOT	1235	3	0
// OP_STORE_S	1236	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1237	1238
// OP_IFNOT	1238	3	0
// OP_STORE_S	1239	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	818	1240
// OP_IFNOT	1240	3	0
// OP_STORE_S	1241	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1242	1243
// OP_IFNOT	1243	3	0
// OP_STORE_S	1244	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1245	1246
// OP_IFNOT	1246	3	0
// OP_STORE_S	1247	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1248	1249
// OP_IFNOT	1249	2	0
// OP_STORE_S	1250	1092	0
// OP_GOTO	52	0	0
// OP_GT	1089	1228	1251
// OP_LT	1089	1252	1253
// OP_AND	1251	1253	1254
// OP_IFNOT	1254	17	0
// OP_EQ_F	1089	1255	1256
// OP_IFNOT	1256	3	0
// OP_STORE_S	1257	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1258	1259
// OP_IFNOT	1259	3	0
// OP_STORE_S	1260	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1261	1262
// OP_IFNOT	1262	3	0
// OP_STORE_S	1263	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1264	1265
// OP_IFNOT	1265	2	0
// OP_STORE_S	1266	1092	0
// OP_GOTO	32	0	0
// OP_GT	1089	1252	1267
// OP_LT	1089	1268	1269
// OP_AND	1267	1269	1270
// OP_IFNOT	1270	28	0
// OP_EQ_F	1089	1271	1272
// OP_IFNOT	1272	3	0
// OP_STORE_S	1273	1092	0
// OP_GOTO	24	0	0
// OP_EQ_F	1089	1274	1275
// OP_IFNOT	1275	3	0
// OP_STORE_S	1276	1092	0
// OP_GOTO	20	0	0
// OP_EQ_F	1089	1277	1278
// OP_IFNOT	1278	3	0
// OP_STORE_S	1279	1092	0
// OP_GOTO	16	0	0
// OP_EQ_F	1089	1280	1281
// OP_IFNOT	1281	3	0
// OP_STORE_S	1282	1092	0
// OP_GOTO	12	0	0
// OP_EQ_F	1089	1283	1284
// OP_IFNOT	1284	3	0
// OP_STORE_S	1285	1092	0
// OP_GOTO	8	0	0
// OP_EQ_F	1089	1286	1287
// OP_IFNOT	1287	3	0
// OP_STORE_S	1288	1092	0
// OP_GOTO	4	0	0
// OP_EQ_F	1089	1289	1290
// OP_IFNOT	1290	2	0
// OP_STORE_S	1291	1092	0
// OP_LOAD_S	1090	154	1292
// OP_EQ_S	1292	766	1293
// OP_IFNOT	1293	4	0
// OP_ADDRESS	1090	233	1294
// OP_STOREP_S	1092	1294	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	1091	0
// OP_IFNOT	1091	13	0
// OP_LOAD_S	1091	243	1295
// OP_LOAD_S	1090	243	1296
// OP_EQ_S	1295	1296	1297
// OP_IFNOT	1297	3	0
// OP_ADDRESS	1091	233	1298
// OP_STOREP_S	1092	1298	0
// OP_STORE_V	1091	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	1091	0
// OP_GOTO	-12	0	0
// OP_DONE	0	0	0
void (float n, entity to) send_voicemsg = 
{
    local entity e;
    local string wave;
    wave = "misc/talk.wav";
    if((n > 0.000) && (n < 10.000))
    {
        if(n == 1.000)
        {
            wave = "speech/f2_a.wav";
        }
        else
        {
            if(n == 2.000)
            {
                wave = "speech/f2_b.wav";
            }
            else
            {
                if(n == 3.000)
                {
                    wave = "speech/f2_c.wav";
                }
                else
                {
                    if(n == 4.000)
                    {
                        wave = "speech/f2_d.wav";
                    }
                    else
                    {
                        if(n == 5.000)
                        {
                            wave = "speech/f2_e.wav";
                        }
                        else
                        {
                            if(n == 6.000)
                            {
                                wave = "speech/f2_f.wav";
                            }
                            else
                            {
                                
                                if(n == 7.000)
                                {
                                    wave = "speech/f2_g.wav";
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if((n > 10.000) && (n < 20.000))
        {
            if(n == 11.000)
            {
                wave = "speech/f3_a.wav";
            }
            else
            {
                if(n == 12.000)
                {
                    wave = "speech/f3_b.wav";
                }
                else
                {
                    if(n == 13.000)
                    {
                        wave = "speech/f3_c.wav";
                    }
                    else
                    {
                        if(n == 14.000)
                        {
                            wave = "speech/f3_d.wav";
                        }
                        else
                        {
                            if(n == 15.000)
                            {
                                wave = "speech/f3_e.wav";
                            }
                            else
                            {
                                if(n == 16.000)
                                {
                                    wave = "speech/f3_f.wav";
                                }
                                else
                                {
                                    
                                    if(n == 17.000)
                                    {
                                        wave = "speech/f3_g.wav";
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            if((n > 20.000) && (n < 30.000))
            {
                if(n == 21.000)
                {
                    wave = "speech/f4_a.wav";
                }
                else
                {
                    if(n == 22.000)
                    {
                        wave = "speech/f4_b.wav";
                    }
                    else
                    {
                        if(n == 23.000)
                        {
                            wave = "speech/f4_c.wav";
                        }
                        else
                        {
                            if(n == 24.000)
                            {
                                wave = "speech/f4_d.wav";
                            }
                            else
                            {
                                if(n == 25.000)
                                {
                                    wave = "speech/f4_e.wav";
                                }
                                else
                                {
                                    if(n == 26.000)
                                    {
                                        wave = "speech/f4_f.wav";
                                    }
                                    else
                                    {
                                        
                                        if(n == 27.000)
                                        {
                                            wave = "speech/f4_g.wav";
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                if((n > 30.000) && (n < 40.000))
                {
                    if(n == 31.000)
                    {
                        wave = "speech/f5_a.wav";
                    }
                    else
                    {
                        if(n == 32.000)
                        {
                            wave = "speech/f5_b.wav";
                        }
                        else
                        {
                            if(n == 33.000)
                            {
                                wave = "speech/f5_c.wav";
                            }
                            else
                            {
                                if(n == 34.000)
                                {
                                    wave = "speech/f5_d.wav";
                                }
                                else
                                {
                                    if(n == 35.000)
                                    {
                                        wave = "speech/f5_e.wav";
                                    }
                                    else
                                    {
                                        if(n == 36.000)
                                        {
                                            wave = "speech/f5_f.wav";
                                        }
                                        else
                                        {
                                            
                                            if(n == 37.000)
                                            {
                                                wave = "speech/f5_g.wav";
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                else
                {
                    if((n > 40.000) && (n < 50.000))
                    {
                        if(n == 41.000)
                        {
                            wave = "speech/f6_a.wav";
                        }
                        else
                        {
                            if(n == 42.000)
                            {
                                wave = "speech/f6_b.wav";
                            }
                            else
                            {
                                if(n == 43.000)
                                {
                                    wave = "speech/f6_c.wav";
                                }
                                else
                                {
                                    if(n == 44.000)
                                    {
                                        wave = "speech/f6_d.wav";
                                    }
                                    else
                                    {
                                        if(n == 45.000)
                                        {
                                            wave = "speech/f6_e.wav";
                                        }
                                        else
                                        {
                                            if(n == 46.000)
                                            {
                                                wave = "speech/f6_f.wav";
                                            }
                                            else
                                            {
                                                
                                                if(n == 47.000)
                                                {
                                                    wave = "speech/f6_g.wav";
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    else
                    {
                        if((n > 50.000) && (n < 60.000))
                        {
                            if(n == 51.000)
                            {
                                wave = "speech/f7_a.wav";
                            }
                            else
                            {
                                if(n == 52.000)
                                {
                                    wave = "speech/f7_b.wav";
                                }
                                else
                                {
                                    if(n == 53.000)
                                    {
                                        wave = "speech/f7_c.wav";
                                    }
                                    else
                                    {
                                        if(n == 54.000)
                                        {
                                            wave = "speech/f7_d.wav";
                                        }
                                        else
                                        {
                                            if(n == 55.000)
                                            {
                                                wave = "speech/f7_e.wav";
                                            }
                                            else
                                            {
                                                if(n == 56.000)
                                                {
                                                    wave = "speech/f7_f.wav";
                                                }
                                                else
                                                {
                                                    
                                                    if(n == 57.000)
                                                    {
                                                        wave = "speech/f7_g.wav";
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if((n > 60.000) && (n < 70.000))
                            {
                                if(n == 61.000)
                                {
                                    wave = "speech/f8_a.wav";
                                }
                                else
                                {
                                    if(n == 62.000)
                                    {
                                        wave = "speech/f8_b.wav";
                                    }
                                    else
                                    {
                                        if(n == 63.000)
                                        {
                                            wave = "speech/f8_c.wav";
                                        }
                                        else
                                        {
                                            if(n == 64.000)
                                            {
                                                wave = "speech/f8_d.wav";
                                            }
                                            else
                                            {
                                                if(n == 65.000)
                                                {
                                                    wave = "speech/f8_e.wav";
                                                }
                                                else
                                                {
                                                    if(n == 66.000)
                                                    {
                                                        wave = "speech/f8_f.wav";
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(n == 67.000)
                                                        {
                                                            wave = "speech/f8_g.wav";
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                if((n > 70.000) && (n < 80.000))
                                {
                                    if(n == 71.000)
                                    {
                                        wave = "speech/fc_1.wav";
                                    }
                                    else
                                    {
                                        if(n == 72.000)
                                        {
                                            wave = "speech/fc_2.wav";
                                        }
                                        else
                                        {
                                            if(n == 73.000)
                                            {
                                                wave = "speech/fc_3.wav";
                                            }
                                            else
                                            {
                                                
                                                if(n == 74.000)
                                                {
                                                    wave = "speech/fc_4.wav";
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                else
                                {
                                    
                                    if((n > 80.000) && (n < 90.000))
                                    {
                                        if(n == 81.000)
                                        {
                                            wave = "speech/mc_1.wav";
                                        }
                                        else
                                        {
                                            if(n == 82.000)
                                            {
                                                wave = "speech/mc_2.wav";
                                            }
                                            else
                                            {
                                                if(n == 83.000)
                                                {
                                                    wave = "speech/mc_3.wav";
                                                }
                                                else
                                                {
                                                    if(n == 84.000)
                                                    {
                                                        wave = "speech/mc_4.wav";
                                                    }
                                                    else
                                                    {
                                                        if(n == 85.000)
                                                        {
                                                            wave = "speech/mc_5.wav";
                                                        }
                                                        else
                                                        {
                                                            if(n == 86.000)
                                                            {
                                                                wave = "speech/mc_6.wav";
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(n == 87.000)
                                                                {
                                                                    wave = "speech/mc_7.wav";
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(to.classname == "player")
    {
        to.noise = wave;
        return;
    }
    
    e = find(world, classname, "player");
    
    while(e)
    {
        
        if(e.ts == to.ts)
        {
            e.noise = wave;
        }
        
        e = find(e, classname, "player");
    }
    
};

