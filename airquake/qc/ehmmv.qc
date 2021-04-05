// ehmmv_sound
// function begins at statement 32830, parm_start=22863
// OP_LOAD_F	28	413	22864
// OP_STORE_V	22864	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	1	1353	22865
// OP_STORE_F	22865	22863	0
// OP_STORE_V	22863	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	22863	0
// OP_GT	22863	810	22866
// OP_IFNOT	22866	2	0
// OP_STORE_F	810	22863	0
// OP_LOAD_F	28	435	22867
// OP_GT	31	22867	22868
// OP_LOAD_F	28	198	22869
// OP_NE_F	22869	22863	22870
// OP_OR	22868	22870	22871
// OP_IFNOT	22871	84	0
// OP_EQ_F	22863	619	22872
// OP_IFNOT	22872	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11598	10	0
// OP_STORE_V	1349	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	22863	677	22873
// OP_IFNOT	22873	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11600	10	0
// OP_STORE_V	1687	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	61	0	0
// OP_EQ_F	22863	806	22874
// OP_IFNOT	22874	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11602	10	0
// OP_STORE_V	1350	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	52	0	0
// OP_EQ_F	22863	788	22875
// OP_IFNOT	22875	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11604	10	0
// OP_STORE_V	972	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	43	0	0
// OP_EQ_F	22863	808	22876
// OP_IFNOT	22876	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11606	10	0
// OP_STORE_V	10617	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	22863	813	22877
// OP_IFNOT	22877	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11608	10	0
// OP_STORE_V	2571	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	22863	816	22878
// OP_IFNOT	22878	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11610	10	0
// OP_STORE_V	10247	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	22863	819	22879
// OP_IFNOT	22879	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11612	10	0
// OP_STORE_V	1345	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	11613	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	22880
// OP_ADD_F	31	677	22881
// OP_STOREP_F	22881	22880	0
// OP_ADDRESS	28	198	22882
// OP_STOREP_F	22863	22882	0
// OP_DONE	0	0	0
void () ehmmv_sound = 
{
    local float tmp;
    tmp = fabs(self.speed) * 0.05;
    tmp = floor(tmp);
    
    if(tmp > 8)
    {
        tmp = 8;
    }
    
    
    if((time > self.fly_sound) || (self.impulse != tmp))
    {
        if(tmp == 0)
        {
            sound(self, CHAN_BODY, "engines/car0.wav", 0.2, ATTN_NORM);
        }
        else
        {
            if(tmp == 1)
            {
                sound(self, CHAN_BODY, "engines/car1.wav", 0.3, ATTN_NORM);
            }
            else
            {
                if(tmp == 2)
                {
                    sound(self, CHAN_BODY, "engines/car2.wav", 0.4, ATTN_NORM);
                }
                else
                {
                    if(tmp == 3)
                    {
                        sound(self, CHAN_BODY, "engines/car3.wav", 0.5, ATTN_NORM);
                    }
                    else
                    {
                        if(tmp == 4)
                        {
                            sound(self, CHAN_BODY, "engines/car4.wav", 0.6, ATTN_NORM);
                        }
                        else
                        {
                            if(tmp == 5)
                            {
                                sound(self, CHAN_BODY, "engines/car5.wav", 0.7, ATTN_NORM);
                            }
                            else
                            {
                                if(tmp == 6)
                                {
                                    sound(self, CHAN_BODY, "engines/car6.wav", 0.8, ATTN_NORM);
                                }
                                else
                                {
                                    if(tmp == 7)
                                    {
                                        sound(self, CHAN_BODY, "engines/car7.wav", 0.9, ATTN_NORM);
                                    }
                                    else
                                    {
                                        sound(self, CHAN_BODY, "engines/car8.wav", 1, ATTN_NORM);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        self.fly_sound = time + 1;
        self.impulse = tmp;
    }
    
};

// ehmmv_stand
// function begins at statement 32931, parm_start=22884
// OP_CALL0	22862	0	0
// OP_LOAD_F	28	413	22884
// OP_GT	22884	619	22885
// OP_IFNOT	22885	10	0
// OP_ADDRESS	28	413	22886
// OP_LOAD_F	28	413	22887
// OP_SUB_F	22887	813	22888
// OP_STOREP_F	22888	22886	0
// OP_LOAD_F	28	413	22889
// OP_LT	22889	619	22890
// OP_IFNOT	22890	3	0
// OP_ADDRESS	28	413	22891
// OP_STOREP_F	619	22891	0
// OP_LOAD_F	28	144	22892
// OP_STORE_V	22892	4	0
// OP_LOAD_F	28	413	22893
// OP_MUL_F	22893	655	22894
// OP_STORE_V	22894	7	0
// OP_CALL2	526	0	0
// OP_CALL0	17812	0	0
// OP_LOAD_V	28	142	22895
// OP_STORE_V	22895	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	8	0
// OP_ADDRESS	28	173	22898
// OP_LOAD_FNC	28	407	22899
// OP_STOREP_FNC	22899	22898	0
// OP_ADDRESS	28	175	22900
// OP_ADD_F	31	655	22901
// OP_STOREP_F	22901	22900	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	22902
// OP_STOREP_FNC	22883	22902	0
// OP_ADDRESS	28	175	22903
// OP_ADD_F	31	655	22904
// OP_STOREP_F	22904	22903	0
// OP_DONE	0	0	0
void () ehmmv_stand = 
{
    ehmmv_sound();
    
    if(self.speed > 0)
    {
        self.speed = self.speed - 5;
        
        if(self.speed < 0)
        {
            self.speed = 0;
        }
        
    }
    
    walkmove(self.angles_y, self.speed * 0.1);
    tilt_etank();
    turn_eturret(self.angles, 100);
    
    if(FindTarget())
    {
        self.think = self.th_run;
        self.nextthink = time + 0.1;
        return;
    }
    
    self.think = ehmmv_stand;
    self.nextthink = time + 0.1;
};

// ehmmv_walk
// function begins at statement 32970, parm_start=22906
// OP_CALL0	22862	0	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	8	0
// OP_ADDRESS	28	173	22912
// OP_LOAD_FNC	28	407	22913
// OP_STOREP_FNC	22913	22912	0
// OP_ADDRESS	28	175	22914
// OP_ADD_F	31	655	22915
// OP_STOREP_F	22915	22914	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	22916
// OP_STOREP_ENT	30	22916	0
// OP_LOAD_ENT	28	467	22917
// OP_NOT_ENT	22917	0	22918
// OP_IFNOT	22918	7	0
// OP_ADDRESS	28	173	22919
// OP_STOREP_FNC	22883	22919	0
// OP_ADDRESS	28	175	22920
// OP_ADD_F	31	655	22921
// OP_STOREP_F	22921	22920	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	467	22922
// OP_LOAD_V	22922	130	22923
// OP_LOAD_V	28	130	22926
// OP_SUB_V	22923	22926	22929
// OP_STORE_V	22929	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22906	0
// OP_LOAD_F	28	144	22932
// OP_SUB_F	22907	22932	22933
// OP_STORE_V	22933	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	22910	0
// OP_GT	22910	1827	22934
// OP_IFNOT	22934	3	0
// OP_SUB_F	22910	1459	22935
// OP_STORE_F	22935	22910	0
// OP_STORE_V	22910	4	0
// OP_CALL1	534	0	0
// OP_GT	1	827	22936
// OP_IFNOT	22936	18	0
// OP_LT	22910	619	22937
// OP_IFNOT	22937	7	0
// OP_ADDRESS	28	144	22938
// OP_LOAD_F	28	144	22939
// OP_SUB_F	22939	827	22940
// OP_STORE_V	22940	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	22938	0
// OP_GT	22910	619	22941
// OP_IFNOT	22941	7	0
// OP_ADDRESS	28	144	22942
// OP_LOAD_F	28	144	22943
// OP_ADD_F	22943	827	22944
// OP_STORE_V	22944	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	22942	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	144	22945
// OP_STOREP_F	22907	22945	0
// OP_STORE_V	22910	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1193	22946
// OP_IFNOT	22946	14	0
// OP_LOAD_F	28	413	22947
// OP_LT	22947	5005	22948
// OP_IFNOT	22948	10	0
// OP_ADDRESS	28	413	22949
// OP_LOAD_F	28	413	22950
// OP_ADD_F	22950	813	22951
// OP_STOREP_F	22951	22949	0
// OP_LOAD_F	28	413	22952
// OP_GT	22952	5005	22953
// OP_IFNOT	22953	3	0
// OP_ADDRESS	28	413	22954
// OP_STOREP_F	5005	22954	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	413	22955
// OP_GT	22955	619	22956
// OP_IFNOT	22956	10	0
// OP_ADDRESS	28	413	22957
// OP_LOAD_F	28	413	22958
// OP_SUB_F	22958	813	22959
// OP_STOREP_F	22959	22957	0
// OP_LOAD_F	28	413	22960
// OP_LT	22960	619	22961
// OP_IFNOT	22961	3	0
// OP_ADDRESS	28	413	22962
// OP_STOREP_F	619	22962	0
// OP_LOAD_F	28	144	22963
// OP_STORE_V	22963	4	0
// OP_LOAD_F	28	413	22964
// OP_MUL_F	22964	655	22965
// OP_STORE_V	22965	7	0
// OP_CALL2	526	0	0
// OP_CALL0	17812	0	0
// OP_LOAD_ENT	28	467	22966
// OP_LOAD_V	22966	130	22967
// OP_LOAD_V	28	130	22970
// OP_SUB_V	22967	22970	22973
// OP_STORE_V	22973	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22906	0
// OP_STORE_V	22906	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_ADDRESS	28	173	22976
// OP_STOREP_FNC	22905	22976	0
// OP_ADDRESS	28	175	22977
// OP_ADD_F	31	655	22978
// OP_STOREP_F	22978	22977	0
// OP_DONE	0	0	0
void () ehmmv_walk = 
{
    local vector v0;
    local vector v1;
    ehmmv_sound();
    
    if(FindTarget())
    {
        self.think = self.th_run;
        self.nextthink = time + 0.1;
        return;
    }
    
    self.enemy = world;
    
    if(!self.movetarget)
    {
        self.think = ehmmv_stand;
        self.nextthink = time + 0.1;
        return;
    }
    
    v0 = vectoangles(self.movetarget.origin - self.origin);
    v1_y = anglemod(0 - self.angles_y);
    
    if(0 > 180)
    {
        v1_y = 0 - 360;
    }
    
    if(fabs(0) > 10)
    {
        
        if(0 < 0)
        {
            self.angles_y = anglemod(self.angles_y - 10);
        }
        
        
        if(0 > 0)
        {
            self.angles_y = anglemod(self.angles_y + 10);
        }
        
    }
    else
    {
        self.angles_y = 0;
    }
    
    if(fabs(0) < 45)
    {
        
        if(self.speed < 160)
        {
            self.speed = self.speed + 5;
            
            if(self.speed > 160)
            {
                self.speed = 160;
            }
            
        }
        
    }
    else
    {
        
        if(self.speed > 0)
        {
            self.speed = self.speed - 5;
            
            if(self.speed < 0)
            {
                self.speed = 0;
            }
            
        }
        
    }
    
    walkmove(self.angles_y, self.speed * 0.1);
    tilt_etank();
    v0 = vectoangles(self.movetarget.origin - self.origin);
    turn_eturret(v0, 100);
    self.think = ehmmv_walk;
    self.nextthink = time + 0.1;
};

// ehmmv_run
// function begins at statement 33082, parm_start=22980
// OP_CALL0	1716	0	0
// OP_CALL0	22862	0	0
// OP_LOAD_ENT	28	206	22991
// OP_LOAD_F	22991	177	22992
// OP_LT	22992	677	22993
// OP_LOAD_ENT	28	206	22994
// OP_LOAD_F	22994	188	22995
// OP_LT	22995	677	22996
// OP_OR	22993	22996	22997
// OP_IFNOT	22997	3	0
// OP_ADDRESS	28	206	22998
// OP_STOREP_ENT	30	22998	0
// OP_LOAD_ENT	28	206	22999
// OP_STORE_V	22999	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	23000
// OP_LOAD_F	28	415	23001
// OP_LT	23001	31	23002
// OP_AND	23000	23002	23003
// OP_IFNOT	23003	4	0
// OP_ADDRESS	28	206	23004
// OP_STOREP_ENT	30	23004	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	415	23005
// OP_ADD_F	31	1130	23006
// OP_STOREP_F	23006	23005	0
// OP_LOAD_ENT	28	467	23007
// OP_LOAD_V	23007	130	23008
// OP_LOAD_V	28	130	23011
// OP_SUB_V	23008	23011	23014
// OP_STORE_V	23014	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22980	0
// OP_LOAD_F	28	144	23017
// OP_SUB_F	22981	23017	23018
// OP_STORE_V	23018	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	22984	0
// OP_GT	22984	1827	23019
// OP_IFNOT	23019	3	0
// OP_SUB_F	22984	1459	23020
// OP_STORE_F	23020	22984	0
// OP_STORE_V	22984	4	0
// OP_CALL1	534	0	0
// OP_GT	1	827	23021
// OP_IFNOT	23021	18	0
// OP_LT	22984	619	23022
// OP_IFNOT	23022	7	0
// OP_ADDRESS	28	144	23023
// OP_LOAD_F	28	144	23024
// OP_SUB_F	23024	827	23025
// OP_STORE_V	23025	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	23023	0
// OP_GT	22984	619	23026
// OP_IFNOT	23026	7	0
// OP_ADDRESS	28	144	23027
// OP_LOAD_F	28	144	23028
// OP_ADD_F	23028	827	23029
// OP_STORE_V	23029	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	23027	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	144	23030
// OP_STOREP_F	22981	23030	0
// OP_STORE_V	22984	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1193	23031
// OP_IFNOT	23031	13	0
// OP_STORE_F	5005	22989	0
// OP_LOAD_ENT	28	467	23032
// OP_LOAD_V	23032	130	23033
// OP_LOAD_V	28	130	23036
// OP_SUB_V	23033	23036	23039
// OP_STORE_V	23039	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	22990	0
// OP_LT	22990	823	23042
// OP_IFNOT	23042	2	0
// OP_STORE_F	1252	22989	0
// OP_GOTO	2	0	0
// OP_STORE_F	619	22989	0
// OP_LOAD_F	28	413	23043
// OP_LT	23043	22989	23044
// OP_IFNOT	23044	10	0
// OP_ADDRESS	28	413	23045
// OP_LOAD_F	28	413	23046
// OP_ADD_F	23046	842	23047
// OP_STOREP_F	23047	23045	0
// OP_LOAD_F	28	413	23048
// OP_GT	23048	22989	23049
// OP_IFNOT	23049	3	0
// OP_ADDRESS	28	413	23050
// OP_STOREP_F	22989	23050	0
// OP_LOAD_F	28	413	23051
// OP_GT	23051	22989	23052
// OP_IFNOT	23052	10	0
// OP_ADDRESS	28	413	23053
// OP_LOAD_F	28	413	23054
// OP_SUB_F	23054	842	23055
// OP_STOREP_F	23055	23053	0
// OP_LOAD_F	28	413	23056
// OP_LT	23056	22989	23057
// OP_IFNOT	23057	3	0
// OP_ADDRESS	28	413	23058
// OP_STOREP_F	22989	23058	0
// OP_LOAD_F	28	144	23059
// OP_STORE_V	23059	4	0
// OP_LOAD_F	28	413	23060
// OP_MUL_F	23060	655	23061
// OP_STORE_V	23061	7	0
// OP_CALL2	526	0	0
// OP_CALL0	17812	0	0
// OP_LOAD_ENT	28	206	23062
// OP_EQ_E	23062	30	23063
// OP_IFNOT	23063	8	0
// OP_ADDRESS	28	173	23064
// OP_LOAD_FNC	28	406	23065
// OP_STOREP_FNC	23065	23064	0
// OP_ADDRESS	28	175	23066
// OP_ADD_F	31	655	23067
// OP_STOREP_F	23067	23066	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	23068
// OP_LOAD_V	23068	130	23069
// OP_LOAD_V	28	130	23072
// OP_SUB_V	23069	23072	23075
// OP_STORE_V	23075	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	22990	0
// OP_LT	22990	10744	23078
// OP_LOAD_F	28	185	23079
// OP_GT	23079	619	23080
// OP_AND	23078	23080	23081
// OP_IFNOT	23081	4	0
// OP_ADDRESS	28	416	23082
// OP_STOREP_F	806	23082	0
// OP_GOTO	8	0	0
// OP_LT	22990	4839	23083
// OP_IFNOT	23083	4	0
// OP_ADDRESS	28	416	23084
// OP_STOREP_F	677	23084	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	416	23085
// OP_STOREP_F	619	23085	0
// OP_LOAD_ENT	28	206	23086
// OP_STORE_V	23086	4	0
// OP_CALL1	1045	0	0
// OP_STORE_V	1	22983	0
// OP_LOAD_V	28	130	23087
// OP_SUB_V	22983	23087	23090
// OP_STORE_V	23090	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22980	0
// OP_STORE_V	22980	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	22986	0
// OP_SUB_F	619	22988	23093
// OP_STORE_F	23093	22988	0
// OP_STORE_V	22980	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_LOAD_ENT	28	264	23094
// OP_LOAD_V	23094	142	23095
// OP_STORE_V	23095	22983	0
// OP_SUB_F	619	22983	23098
// OP_STORE_F	23098	22983	0
// OP_LOAD_F	28	422	23099
// OP_LT	23099	31	23100
// OP_LOAD_F	28	416	23101
// OP_GT	23101	619	23102
// OP_AND	23100	23102	23103
// OP_IFNOT	23103	65	0
// OP_LOAD_V	28	130	23104
// OP_STORE_V	23104	4	0
// OP_LOAD_ENT	28	206	23107
// OP_LOAD_V	23107	130	23108
// OP_LOAD_ENT	28	206	23111
// OP_LOAD_V	23111	159	23112
// OP_LOAD_ENT	28	206	23115
// OP_LOAD_V	23115	163	23116
// OP_ADD_V	23112	23116	23119
// OP_MUL_VF	23119	972	23122
// OP_ADD_V	23108	23122	23125
// OP_STORE_V	23125	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	23128
// OP_EQ_E	78	23128	23129
// OP_IFNOT	23129	47	0
// OP_STORE_V	22983	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	416	23130
// OP_EQ_F	23130	677	23131
// OP_IFNOT	23131	20	0
// OP_MUL_V	59	22986	23132
// OP_GT	23132	7765	23133
// OP_IFNOT	23133	16	0
// OP_LOAD_V	28	130	23134
// OP_MUL_VF	59	827	23137
// OP_ADD_V	23134	23137	23140
// OP_STORE_V	23140	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	23143
// OP_STORE_V	23143	10	0
// OP_CALL3	4006	0	0
// OP_ADDRESS	28	422	23144
// OP_ADD_F	31	655	23145
// OP_STOREP_F	23145	23144	0
// OP_ADDRESS	28	158	23146
// OP_LOAD_F	28	158	23147
// OP_BITOR	23147	383	23148
// OP_STOREP_F	23148	23146	0
// OP_GOTO	23	0	0
// OP_MUL_V	59	22986	23149
// OP_GT	23149	10293	23150
// OP_IFNOT	23150	20	0
// OP_LOAD_V	28	130	23151
// OP_MUL_VF	59	827	23154
// OP_ADD_V	23151	23154	23157
// OP_STORE_V	23157	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	23160
// OP_STORE_V	23160	10	0
// OP_CALL3	4948	0	0
// OP_ADDRESS	28	422	23161
// OP_ADD_F	31	1798	23162
// OP_STOREP_F	23162	23161	0
// OP_ADDRESS	28	185	23163
// OP_LOAD_F	28	185	23164
// OP_SUB_F	23164	677	23165
// OP_STOREP_F	23165	23163	0
// OP_ADDRESS	28	158	23166
// OP_LOAD_F	28	158	23167
// OP_BITOR	23167	383	23168
// OP_STOREP_F	23168	23166	0
// OP_ADDRESS	28	173	23169
// OP_STOREP_FNC	22979	23169	0
// OP_ADDRESS	28	175	23170
// OP_ADD_F	31	655	23171
// OP_STOREP_F	23171	23170	0
// OP_DONE	0	0	0
void () ehmmv_run = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local float tmp;
    local float dist;
    FindTarget();
    ehmmv_sound();
    
    if((self.enemy.health < 1) || (self.enemy.takedamage < 1))
    {
        self.enemy = world;
    }
    
    if(!visible(self.enemy) && (self.search_time < time))
    {
        self.enemy = world;
    }
    else
    {
        self.search_time = time + 30;
    }
    
    v0 = vectoangles(self.movetarget.origin - self.origin);
    v1_y = anglemod(0 - self.angles_y);
    
    if(0 > 180)
    {
        v1_y = 0 - 360;
    }
    
    if(fabs(0) > 10)
    {
        
        if(0 < 0)
        {
            self.angles_y = anglemod(self.angles_y - 10);
        }
        
        
        if(0 > 0)
        {
            self.angles_y = anglemod(self.angles_y + 10);
        }
        
    }
    else
    {
        self.angles_y = 0;
    }
    
    if(fabs(0) < 45)
    {
        tmp = 160;
        dist = vlen(self.movetarget.origin - self.origin);
        
        if(dist < 256)
        {
            tmp = 80;
        }
        
    }
    else
    {
        tmp = 0;
    }
    
    
    if(self.speed < tmp)
    {
        self.speed = self.speed + 15;
        
        if(self.speed > tmp)
        {
            self.speed = tmp;
        }
        
    }
    
    
    if(self.speed > tmp)
    {
        self.speed = self.speed - 15;
        
        if(self.speed < tmp)
        {
            self.speed = tmp;
        }
        
    }
    
    walkmove(self.angles_y, self.speed * 0.1);
    tilt_etank();
    
    if(self.enemy == world)
    {
        self.think = self.th_walk;
        self.nextthink = time + 0.1;
        return;
    }
    
    dist = vlen(self.enemy.origin - self.origin);
    if((dist < 1800) && (self.ammo_rockets > 0))
    {
        self.attack_state = 2;
    }
    else
    {
        if(dist < 800)
        {
            self.attack_state = 1;
        }
        else
        {
            self.attack_state = 0;
        }
        
    }
    
    v1 = orgia(self.enemy);
    v0 = vectoangles(v1 - self.origin);
    makevectors(v0);
    v2 = v_forward;
    v2_z = 0 - 0;
    turn_eturret(v0, 100);
    v1 = self.tur2.angles;
    v1_x = 0 - v1_x;
    
    if((self.attack_finished < time) && (self.attack_state > 0))
    {
        traceline(self.origin, self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5), FALSE, self);
        
        if(trace_ent == self.enemy)
        {
            makevectors(v1);
            if(self.attack_state == 1)
            {
                
                if((v_forward * v2) > 0.97)
                {
                    AC_spike(self.origin + (v_forward * 10), v_forward, self.enemy);
                    self.attack_finished = time + 0.1;
                    self.effects = self.effects | EF_MUZZLEFLASH;
                }
                
            }
            else
            {
                
                if((v_forward * v2) > 0.95)
                {
                    AC_stinger(self.origin + (v_forward * 10), v_forward, self.enemy);
                    self.attack_finished = time + 1.5;
                    self.ammo_rockets = self.ammo_rockets - 1;
                    self.effects = self.effects | EF_MUZZLEFLASH;
                }
                
            }
            
        }
        
    }
    
    self.think = ehmmv_run;
    self.nextthink = time + 0.1;
};

// ehmmv_start
// function begins at statement 33325, parm_start=23173
// OP_GT	35	619	23173
// OP_LOAD_F	28	209	23174
// OP_EQ_F	23174	619	23175
// OP_EQ_F	37	619	23176
// OP_OR	23175	23176	23177
// OP_AND	23173	23177	23178
// OP_IFNOT	23178	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	188	23179
// OP_STOREP_F	306	23179	0
// OP_ADDRESS	28	191	23180
// OP_STOREP_V	582	23180	0
// OP_ADDRESS	28	207	23183
// OP_LOAD_F	28	207	23184
// OP_BITOR	23184	273	23185
// OP_STOREP_F	23185	23183	0
// OP_ADDRESS	28	263	23186
// OP_CALL0	508	0	0
// OP_STOREP_ENT	1	23186	0
// OP_LOAD_ENT	28	263	23187
// OP_STORE_V	23187	4	0
// OP_LOAD_V	28	130	23188
// OP_STORE_V	23188	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	263	23191
// OP_STORE_V	23191	4	0
// OP_STORE_V	12054	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	264	23192
// OP_CALL0	508	0	0
// OP_STOREP_ENT	1	23192	0
// OP_LOAD_ENT	28	264	23193
// OP_STORE_V	23193	4	0
// OP_LOAD_V	28	130	23194
// OP_STORE_V	23194	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	264	23197
// OP_STORE_V	23197	4	0
// OP_STORE_V	12044	7	0
// OP_CALL2	498	0	0
// OP_LOAD_S	28	221	23198
// OP_IFNOT	23198	26	0
// OP_ADDRESS	28	219	23199
// OP_ADDRESS	28	467	23200
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	23201
// OP_STORE_V	23201	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	23200	0
// OP_STOREP_ENT	1	23199	0
// OP_LOAD_ENT	28	467	23202
// OP_NOT_ENT	23202	0	23203
// OP_IFNOT	23203	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	23204
// OP_STORE_V	23204	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	173	23207
// OP_LOAD_FNC	28	406	23208
// OP_STOREP_FNC	23208	23207	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	173	23209
// OP_LOAD_FNC	28	405	23210
// OP_STOREP_FNC	23210	23209	0
// OP_ADDRESS	28	175	23211
// OP_LOAD_F	28	175	23212
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	23213
// OP_ADD_F	23212	23213	23214
// OP_STOREP_F	23214	23211	0
// OP_DONE	0	0	0
void () ehmmv_start = 
{
    
    if((deathmatch > 0) && ((self.team == 0) || (teamplay == 0)))
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.view_ofs = '0.000 0.000 1.000';
    self.flags = self.flags | FL_MONSTER;
    self.tur1 = spawn();
    setorigin(self.tur1, self.origin);
    setmodel(self.tur1, "progs/humtr.mdl");
    self.tur2 = spawn();
    setorigin(self.tur2, self.origin);
    setmodel(self.tur2, "progs/humtb.mdl");
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        self.think = self.th_walk;
    }
    else
    {
        self.think = self.th_stand;
    }
    
    self.nextthink = self.nextthink + (random() * 0.5);
};

// monster_ehmmv
// function begins at statement 33404, parm_start=23216
// OP_ADDRESS	28	129	23216
// OP_STOREP_F	294	23216	0
// OP_ADDRESS	28	128	23217
// OP_STOREP_F	283	23217	0
// OP_NOT_F	35	0	23218
// OP_IFNOT	23218	3	0
// OP_ADD_F	40	677	23219
// OP_STORE_F	23219	40	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12005	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10915	7	0
// OP_STORE_V	22445	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	191	23220
// OP_STOREP_V	582	23220	0
// OP_LOAD_F	28	177	23223
// OP_NOT_F	23223	0	23224
// OP_IFNOT	23224	3	0
// OP_ADDRESS	28	177	23225
// OP_STOREP_F	3338	23225	0
// OP_ADDRESS	28	205	23226
// OP_STOREP_S	23227	23226	0
// OP_LOAD_F	28	209	23228
// OP_EQ_F	23228	619	23229
// OP_LOAD_F	28	209	23230
// OP_NE_F	23230	677	23231
// OP_EQ_F	35	619	23232
// OP_AND	23231	23232	23233
// OP_OR	23229	23233	23234
// OP_IFNOT	23234	4	0
// OP_ADDRESS	28	243	23235
// OP_STOREP_S	101	23235	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	209	23236
// OP_EQ_F	23236	677	23237
// OP_IFNOT	23237	4	0
// OP_ADDRESS	28	243	23238
// OP_STOREP_S	102	23238	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	243	23239
// OP_STOREP_S	103	23239	0
// OP_LOAD_F	28	185	23240
// OP_NOT_F	23240	0	23241
// OP_IFNOT	23241	3	0
// OP_ADDRESS	28	185	23242
// OP_STOREP_F	810	23242	0
// OP_ADDRESS	28	411	23243
// OP_STOREP_FNC	21914	23243	0
// OP_ADDRESS	28	405	23244
// OP_STOREP_FNC	22883	23244	0
// OP_ADDRESS	28	406	23245
// OP_STOREP_FNC	22905	23245	0
// OP_ADDRESS	28	407	23246
// OP_STOREP_FNC	22979	23246	0
// OP_ADDRESS	28	173	23247
// OP_STOREP_FNC	23172	23247	0
// OP_ADDRESS	28	175	23248
// OP_ADD_F	31	655	23249
// OP_CALL0	501	0	0
// OP_MUL_F	1	655	23250
// OP_ADD_F	23249	23250	23251
// OP_STOREP_F	23251	23248	0
// OP_DONE	0	0	0
void () monster_ehmmv = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1;
    }
    
    setmodel(self, "progs/humba.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 8.000');
    self.view_ofs = '0.000 0.000 1.000';
    
    if(!self.health)
    {
        self.health = 150;
    }
    
    self.netname = "an Armoured Car";
    if((self.team == 0) || ((self.team != 1) && (deathmatch == 0)))
    {
        self.ts = T0;
    }
    else
    {
        if(self.team == 1)
        {
            self.ts = T1;
        }
        else
        {
            self.ts = T2;
        }
        
    }
    
    
    if(!self.ammo_rockets)
    {
        self.ammo_rockets = 8;
    }
    
    self.th_die = etank_die;
    self.th_stand = ehmmv_stand;
    self.th_walk = ehmmv_walk;
    self.th_run = ehmmv_run;
    self.think = ehmmv_start;
    self.nextthink = (time + 0.1) + (random() * 0.1);
};

