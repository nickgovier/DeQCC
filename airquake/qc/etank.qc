// etank_sound
// function begins at statement 31506, parm_start=21894
// OP_LOAD_F	28	413	21895
// OP_STORE_V	21895	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	1	10599	21896
// OP_STORE_F	21896	21894	0
// OP_STORE_V	21894	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	21894	0
// OP_GT	21894	810	21897
// OP_IFNOT	21897	2	0
// OP_STORE_F	810	21894	0
// OP_LOAD_F	28	435	21898
// OP_GT	31	21898	21899
// OP_LOAD_F	28	198	21900
// OP_NE_F	21900	21894	21901
// OP_OR	21899	21901	21902
// OP_IFNOT	21902	84	0
// OP_EQ_F	21894	619	21903
// OP_IFNOT	21903	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10608	10	0
// OP_STORE_V	1349	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	21894	677	21904
// OP_IFNOT	21904	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10610	10	0
// OP_STORE_V	1687	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	61	0	0
// OP_EQ_F	21894	806	21905
// OP_IFNOT	21905	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10612	10	0
// OP_STORE_V	1350	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	52	0	0
// OP_EQ_F	21894	788	21906
// OP_IFNOT	21906	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10614	10	0
// OP_STORE_V	972	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	43	0	0
// OP_EQ_F	21894	808	21907
// OP_IFNOT	21907	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10616	10	0
// OP_STORE_V	10617	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	21894	813	21908
// OP_IFNOT	21908	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10619	10	0
// OP_STORE_V	2571	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	21894	816	21909
// OP_IFNOT	21909	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10621	10	0
// OP_STORE_V	10247	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	21894	819	21910
// OP_IFNOT	21910	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10623	10	0
// OP_STORE_V	1345	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10624	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	21911
// OP_ADD_F	31	677	21912
// OP_STOREP_F	21912	21911	0
// OP_ADDRESS	28	198	21913
// OP_STOREP_F	21894	21913	0
// OP_DONE	0	0	0
void () etank_sound = 
{
    local float tmp;
    tmp = fabs(self.speed) * 0.060;
    tmp = floor(tmp);
    
    if(tmp > 8.000)
    {
        tmp = 8.000;
    }
    
    
    if((time > self.fly_sound) || (self.impulse != tmp))
    {
        if(tmp == 0.000)
        {
            sound(self, CHAN_BODY, "engines/tank0.wav", 0.200, ATTN_NORM);
        }
        else
        {
            if(tmp == 1.000)
            {
                sound(self, CHAN_BODY, "engines/tank1.wav", 0.300, ATTN_NORM);
            }
            else
            {
                if(tmp == 2.000)
                {
                    sound(self, CHAN_BODY, "engines/tank2.wav", 0.400, ATTN_NORM);
                }
                else
                {
                    if(tmp == 3.000)
                    {
                        sound(self, CHAN_BODY, "engines/tank3.wav", 0.500, ATTN_NORM);
                    }
                    else
                    {
                        if(tmp == 4.000)
                        {
                            sound(self, CHAN_BODY, "engines/tank4.wav", 0.600, ATTN_NORM);
                        }
                        else
                        {
                            if(tmp == 5.000)
                            {
                                sound(self, CHAN_BODY, "engines/tank5.wav", 0.700, ATTN_NORM);
                            }
                            else
                            {
                                if(tmp == 6.000)
                                {
                                    sound(self, CHAN_BODY, "engines/tank6.wav", 0.800, ATTN_NORM);
                                }
                                else
                                {
                                    if(tmp == 7.000)
                                    {
                                        sound(self, CHAN_BODY, "engines/tank7.wav", 0.900, ATTN_NORM);
                                    }
                                    else
                                    {
                                        sound(self, CHAN_BODY, "engines/tank8.wav", 1.000, ATTN_NORM);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        self.fly_sound = time + 1.000;
        self.impulse = tmp;
    }
    
};

// etank_die
// function begins at statement 31607, parm_start=21915
// OP_ADDRESS	28	188	21915
// OP_STOREP_F	619	21915	0
// OP_LOAD_ENT	28	263	21916
// OP_IFNOT	21916	4	0
// OP_LOAD_ENT	28	263	21917
// OP_STORE_V	21917	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	28	264	21918
// OP_IFNOT	21918	4	0
// OP_LOAD_ENT	28	264	21919
// OP_STORE_V	21919	4	0
// OP_CALL1	509	0	0
// OP_CALL0	3796	0	0
// OP_DONE	0	0	0
void () etank_die = 
{
    self.takedamage = 0.000;
    
    if(self.tur1)
    {
        remove(self.tur1);
    }
    
    
    if(self.tur2)
    {
        remove(self.tur2);
    }
    
    AC_Explode();
};

// etank_stand
// function begins at statement 31621, parm_start=21921
// OP_CALL0	21893	0	0
// OP_LOAD_F	28	413	21921
// OP_GT	21921	619	21922
// OP_IFNOT	21922	10	0
// OP_ADDRESS	28	413	21923
// OP_LOAD_F	28	413	21924
// OP_SUB_F	21924	813	21925
// OP_STOREP_F	21925	21923	0
// OP_LOAD_F	28	413	21926
// OP_LT	21926	619	21927
// OP_IFNOT	21927	3	0
// OP_ADDRESS	28	413	21928
// OP_STOREP_F	619	21928	0
// OP_LOAD_F	28	144	21929
// OP_STORE_V	21929	4	0
// OP_LOAD_F	28	413	21930
// OP_MUL_F	21930	655	21931
// OP_STORE_V	21931	7	0
// OP_CALL2	526	0	0
// OP_CALL0	17812	0	0
// OP_LOAD_V	28	142	21932
// OP_STORE_V	21932	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	8	0
// OP_ADDRESS	28	173	21935
// OP_LOAD_FNC	28	407	21936
// OP_STOREP_FNC	21936	21935	0
// OP_ADDRESS	28	175	21937
// OP_ADD_F	31	655	21938
// OP_STOREP_F	21938	21937	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	21939
// OP_STOREP_FNC	21920	21939	0
// OP_ADDRESS	28	175	21940
// OP_ADD_F	31	655	21941
// OP_STOREP_F	21941	21940	0
// OP_DONE	0	0	0
void () etank_stand = 
{
    etank_sound();
    
    if(self.speed > 0.000)
    {
        self.speed = self.speed - 5.000;
        
        if(self.speed < 0.000)
        {
            self.speed = 0.000;
        }
        
    }
    
    walkmove(self.angles_y, self.speed * 0.100);
    tilt_etank();
    turn_eturret(self.angles, 100.000);
    
    if(FindTarget())
    {
        self.think = self.th_run;
        self.nextthink = time + 0.100;
        return;
    }
    
    self.think = etank_stand;
    self.nextthink = time + 0.100;
};

// etank_walk
// function begins at statement 31660, parm_start=21943
// OP_CALL0	21893	0	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	8	0
// OP_ADDRESS	28	173	21949
// OP_LOAD_FNC	28	407	21950
// OP_STOREP_FNC	21950	21949	0
// OP_ADDRESS	28	175	21951
// OP_ADD_F	31	655	21952
// OP_STOREP_F	21952	21951	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	21953
// OP_STOREP_ENT	30	21953	0
// OP_LOAD_ENT	28	467	21954
// OP_NOT_ENT	21954	0	21955
// OP_IFNOT	21955	7	0
// OP_ADDRESS	28	173	21956
// OP_STOREP_FNC	21920	21956	0
// OP_ADDRESS	28	175	21957
// OP_ADD_F	31	655	21958
// OP_STOREP_F	21958	21957	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	467	21959
// OP_LOAD_V	21959	130	21960
// OP_LOAD_V	28	130	21963
// OP_SUB_V	21960	21963	21966
// OP_STORE_V	21966	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	21943	0
// OP_LOAD_F	28	144	21969
// OP_SUB_F	21944	21969	21970
// OP_STORE_V	21970	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	21947	0
// OP_GT	21947	1827	21971
// OP_IFNOT	21971	3	0
// OP_SUB_F	21947	1459	21972
// OP_STORE_F	21972	21947	0
// OP_STORE_V	21947	4	0
// OP_CALL1	534	0	0
// OP_GT	1	827	21973
// OP_IFNOT	21973	18	0
// OP_LT	21947	619	21974
// OP_IFNOT	21974	7	0
// OP_ADDRESS	28	144	21975
// OP_LOAD_F	28	144	21976
// OP_SUB_F	21976	827	21977
// OP_STORE_V	21977	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	21975	0
// OP_GT	21947	619	21978
// OP_IFNOT	21978	7	0
// OP_ADDRESS	28	144	21979
// OP_LOAD_F	28	144	21980
// OP_ADD_F	21980	827	21981
// OP_STORE_V	21981	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	21979	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	144	21982
// OP_STOREP_F	21944	21982	0
// OP_STORE_V	21947	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1193	21983
// OP_IFNOT	21983	14	0
// OP_LOAD_F	28	413	21984
// OP_LT	21984	2627	21985
// OP_IFNOT	21985	10	0
// OP_ADDRESS	28	413	21986
// OP_LOAD_F	28	413	21987
// OP_ADD_F	21987	813	21988
// OP_STOREP_F	21988	21986	0
// OP_LOAD_F	28	413	21989
// OP_GT	21989	2627	21990
// OP_IFNOT	21990	3	0
// OP_ADDRESS	28	413	21991
// OP_STOREP_F	2627	21991	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	413	21992
// OP_GT	21992	619	21993
// OP_IFNOT	21993	10	0
// OP_ADDRESS	28	413	21994
// OP_LOAD_F	28	413	21995
// OP_SUB_F	21995	813	21996
// OP_STOREP_F	21996	21994	0
// OP_LOAD_F	28	413	21997
// OP_LT	21997	619	21998
// OP_IFNOT	21998	3	0
// OP_ADDRESS	28	413	21999
// OP_STOREP_F	619	21999	0
// OP_LOAD_F	28	144	22000
// OP_STORE_V	22000	4	0
// OP_LOAD_F	28	413	22001
// OP_MUL_F	22001	655	22002
// OP_STORE_V	22002	7	0
// OP_CALL2	526	0	0
// OP_CALL0	17812	0	0
// OP_LOAD_ENT	28	467	22003
// OP_LOAD_V	22003	130	22004
// OP_LOAD_V	28	130	22007
// OP_SUB_V	22004	22007	22010
// OP_STORE_V	22010	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	21943	0
// OP_STORE_V	21943	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_ADDRESS	28	173	22013
// OP_STOREP_FNC	21942	22013	0
// OP_ADDRESS	28	175	22014
// OP_ADD_F	31	655	22015
// OP_STOREP_F	22015	22014	0
// OP_DONE	0	0	0
void () etank_walk = 
{
    local vector v0;
    local vector v1;
    etank_sound();
    
    if(FindTarget())
    {
        self.think = self.th_run;
        self.nextthink = time + 0.100;
        return;
    }
    
    self.enemy = world;
    
    if(!self.movetarget)
    {
        self.think = etank_stand;
        self.nextthink = time + 0.100;
        return;
    }
    
    v0 = vectoangles(self.movetarget.origin - self.origin);
    v1_y = anglemod(v0_y - self.angles_y);
    
    if(v1_y > 180.000)
    {
        v1_y = v1_y - 360.000;
    }
    
    if(fabs(v1_y) > 10.000)
    {
        
        if(v1_y < 0.000)
        {
            self.angles_y = anglemod(self.angles_y - 10.000);
        }
        
        
        if(v1_y > 0.000)
        {
            self.angles_y = anglemod(self.angles_y + 10.000);
        }
        
    }
    else
    {
        self.angles_y = v0_y;
    }
    
    if(fabs(v1_y) < 45.000)
    {
        
        if(self.speed < 120.000)
        {
            self.speed = self.speed + 5.000;
            
            if(self.speed > 120.000)
            {
                self.speed = 120.000;
            }
            
        }
        
    }
    else
    {
        
        if(self.speed > 0.000)
        {
            self.speed = self.speed - 5.000;
            
            if(self.speed < 0.000)
            {
                self.speed = 0.000;
            }
            
        }
        
    }
    
    walkmove(self.angles_y, self.speed * 0.100);
    tilt_etank();
    v0 = vectoangles(self.movetarget.origin - self.origin);
    turn_eturret(v0, 100.000);
    self.think = etank_walk;
    self.nextthink = time + 0.100;
};

// etank_run
// function begins at statement 31772, parm_start=22017
// OP_CALL0	21893	0	0
// OP_CALL0	1716	0	0
// OP_LOAD_ENT	28	206	22028
// OP_LOAD_F	22028	177	22029
// OP_LT	22029	677	22030
// OP_LOAD_ENT	28	206	22031
// OP_LOAD_F	22031	188	22032
// OP_LT	22032	677	22033
// OP_OR	22030	22033	22034
// OP_IFNOT	22034	3	0
// OP_ADDRESS	28	206	22035
// OP_STOREP_ENT	30	22035	0
// OP_LOAD_ENT	28	206	22036
// OP_STORE_V	22036	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	22037
// OP_LOAD_F	28	415	22038
// OP_LT	22038	31	22039
// OP_AND	22037	22039	22040
// OP_IFNOT	22040	3	0
// OP_ADDRESS	28	206	22041
// OP_STOREP_ENT	30	22041	0
// OP_LOAD_ENT	28	206	22042
// OP_NOT_ENT	22042	0	22043
// OP_IFNOT	22043	19	0
// OP_LOAD_F	28	144	22044
// OP_STORE_V	22044	4	0
// OP_LOAD_F	28	413	22045
// OP_MUL_F	22045	655	22046
// OP_STORE_V	22046	7	0
// OP_CALL2	526	0	0
// OP_LOAD_F	28	144	22047
// OP_MUL_FV	22047	6286	22048
// OP_STORE_V	22048	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_ADDRESS	28	173	22051
// OP_LOAD_FNC	28	406	22052
// OP_STOREP_FNC	22052	22051	0
// OP_ADDRESS	28	175	22053
// OP_ADD_F	31	655	22054
// OP_STOREP_F	22054	22053	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	22055
// OP_LOAD_S	22055	154	22056
// OP_EQ_S	22056	1550	22057
// OP_LOAD_ENT	28	206	22058
// OP_LOAD_ENT	22058	226	22059
// OP_LOAD_S	22059	154	22060
// OP_NE_S	22060	766	22061
// OP_OR	22057	22061	22062
// OP_IFNOT	22062	5	0
// OP_ADDRESS	28	219	22063
// OP_LOAD_ENT	28	206	22064
// OP_STOREP_ENT	22064	22063	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	219	22065
// OP_LOAD_ENT	28	467	22066
// OP_STOREP_ENT	22066	22065	0
// OP_LOAD_ENT	28	219	22067
// OP_LOAD_V	22067	130	22068
// OP_LOAD_ENT	28	219	22071
// OP_LOAD_V	22071	159	22072
// OP_LOAD_ENT	28	219	22075
// OP_LOAD_V	22075	163	22076
// OP_ADD_V	22072	22076	22079
// OP_MUL_VF	22079	972	22082
// OP_ADD_V	22068	22082	22085
// OP_STORE_V	22085	22020	0
// OP_LOAD_V	28	130	22088
// OP_SUB_V	22020	22088	22091
// OP_STORE_V	22091	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22017	0
// OP_LOAD_ENT	28	219	22094
// OP_LOAD_S	22094	154	22095
// OP_EQ_S	22095	1526	22096
// OP_IFNOT	22096	4	0
// OP_ADDRESS	28	414	22097
// OP_STOREP_F	689	22097	0
// OP_GOTO	59	0	0
// OP_LOAD_ENT	28	219	22098
// OP_STORE_V	22098	4	0
// OP_CALL1	792	0	0
// OP_EQ_F	1	268	22099
// OP_LOAD_ENT	28	219	22100
// OP_STORE_V	22100	4	0
// OP_CALL1	1369	0	0
// OP_GT	1	297	22101
// OP_AND	22099	22101	22102
// OP_IFNOT	22102	4	0
// OP_ADDRESS	28	414	22103
// OP_STOREP_F	689	22103	0
// OP_GOTO	46	0	0
// OP_LOAD_F	28	415	22104
// OP_LT	22104	31	22105
// OP_IFNOT	22105	11	0
// OP_ADDRESS	28	414	22106
// OP_LOAD_F	28	414	22107
// OP_SUB_F	677	22107	22108
// OP_STOREP_F	22108	22106	0
// OP_ADDRESS	28	415	22109
// OP_CALL0	501	0	0
// OP_MUL_F	1	1111	22110
// OP_ADD_F	31	22110	22111
// OP_ADD_F	22111	827	22112
// OP_STOREP_F	22112	22109	0
// OP_LOAD_F	28	414	22113
// OP_LT	22113	619	22114
// OP_IFNOT	22114	12	0
// OP_ADDRESS	28	415	22115
// OP_ADD_F	31	1130	22116
// OP_STOREP_F	22116	22115	0
// OP_CALL0	501	0	0
// OP_LT	1	972	22117
// OP_IFNOT	22117	4	0
// OP_ADDRESS	28	414	22118
// OP_STOREP_F	619	22118	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	414	22119
// OP_STOREP_F	677	22119	0
// OP_LOAD_F	28	414	22120
// OP_EQ_F	22120	619	22121
// OP_IFNOT	22121	3	0
// OP_STORE_F	677	22026	0
// OP_GOTO	2	0	0
// OP_STORE_F	689	22026	0
// OP_LOAD_ENT	28	219	22122
// OP_STORE_V	22122	4	0
// OP_CALL1	1369	0	0
// OP_GT	1	296	22123
// OP_IFNOT	22123	5	0
// OP_MUL_F	22026	1228	22124
// OP_ADD_F	22018	22124	22125
// OP_STORE_F	22125	22018	0
// OP_GOTO	4	0	0
// OP_MUL_F	22026	2618	22126
// OP_ADD_F	22018	22126	22127
// OP_STORE_F	22127	22018	0
// OP_MUL_FV	22018	6286	22128
// OP_STORE_V	22128	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	22131
// OP_MUL_VF	65	830	22134
// OP_ADD_V	22131	22134	22137
// OP_STORE_V	22137	4	0
// OP_LOAD_V	28	130	22140
// OP_MUL_VF	65	830	22143
// OP_ADD_V	22140	22143	22146
// OP_MUL_VF	59	821	22149
// OP_ADD_V	22146	22149	22152
// OP_STORE_V	22152	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_STORE_F	70	22026	0
// OP_LOAD_V	28	130	22155
// OP_MUL_VF	65	830	22158
// OP_SUB_V	22155	22158	22161
// OP_STORE_V	22161	4	0
// OP_LOAD_V	28	130	22164
// OP_MUL_VF	65	830	22167
// OP_SUB_V	22164	22167	22170
// OP_MUL_VF	59	821	22173
// OP_ADD_V	22170	22173	22176
// OP_STORE_V	22176	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_SUB_F	22026	70	22179
// OP_STORE_F	22179	22026	0
// OP_IFNOT	22026	4	0
// OP_MUL_F	22026	1268	22180
// OP_SUB_F	22018	22180	22181
// OP_STORE_F	22181	22018	0
// OP_STORE_V	607	22020	0
// OP_LOAD_F	28	144	22182
// OP_SUB_F	22018	22182	22183
// OP_STORE_V	22183	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	22021	0
// OP_GT	22021	1827	22184
// OP_IFNOT	22184	3	0
// OP_SUB_F	22021	1459	22185
// OP_STORE_F	22185	22021	0
// OP_STORE_V	22021	4	0
// OP_CALL1	534	0	0
// OP_GT	1	827	22186
// OP_IFNOT	22186	18	0
// OP_LT	22021	619	22187
// OP_IFNOT	22187	7	0
// OP_ADDRESS	28	144	22188
// OP_LOAD_F	28	144	22189
// OP_SUB_F	22189	827	22190
// OP_STORE_V	22190	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	22188	0
// OP_GT	22021	619	22191
// OP_IFNOT	22191	7	0
// OP_ADDRESS	28	144	22192
// OP_LOAD_F	28	144	22193
// OP_ADD_F	22193	827	22194
// OP_STORE_V	22194	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	22192	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	144	22195
// OP_STOREP_F	22018	22195	0
// OP_STORE_V	22021	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1193	22196
// OP_IFNOT	22196	14	0
// OP_LOAD_F	28	413	22197
// OP_LT	22197	2627	22198
// OP_IFNOT	22198	10	0
// OP_ADDRESS	28	413	22199
// OP_LOAD_F	28	413	22200
// OP_ADD_F	22200	813	22201
// OP_STOREP_F	22201	22199	0
// OP_LOAD_F	28	413	22202
// OP_GT	22202	2627	22203
// OP_IFNOT	22203	3	0
// OP_ADDRESS	28	413	22204
// OP_STOREP_F	2627	22204	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	413	22205
// OP_GT	22205	619	22206
// OP_IFNOT	22206	10	0
// OP_ADDRESS	28	413	22207
// OP_LOAD_F	28	413	22208
// OP_SUB_F	22208	813	22209
// OP_STOREP_F	22209	22207	0
// OP_LOAD_F	28	413	22210
// OP_LT	22210	619	22211
// OP_IFNOT	22211	3	0
// OP_ADDRESS	28	413	22212
// OP_STOREP_F	619	22212	0
// OP_LOAD_F	28	144	22213
// OP_STORE_V	22213	4	0
// OP_LOAD_F	28	413	22214
// OP_MUL_F	22214	655	22215
// OP_STORE_V	22215	7	0
// OP_CALL2	526	0	0
// OP_NOT_F	1	0	22216
// OP_IFNOT	22216	18	0
// OP_LOAD_F	28	414	22217
// OP_GE	22217	619	22218
// OP_LOAD_F	28	415	22219
// OP_ADD_F	31	827	22220
// OP_LT	22219	22220	22221
// OP_AND	22218	22221	22222
// OP_IFNOT	22222	11	0
// OP_ADDRESS	28	414	22223
// OP_LOAD_F	28	414	22224
// OP_SUB_F	677	22224	22225
// OP_STOREP_F	22225	22223	0
// OP_ADDRESS	28	415	22226
// OP_ADD_F	31	827	22227
// OP_CALL0	501	0	0
// OP_MUL_F	1	1111	22228
// OP_ADD_F	22227	22228	22229
// OP_STOREP_F	22229	22226	0
// OP_CALL0	17812	0	0
// OP_LOAD_ENT	28	206	22230
// OP_LOAD_V	22230	130	22231
// OP_LOAD_V	28	130	22234
// OP_SUB_V	22231	22234	22237
// OP_STORE_V	22237	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	22027	0
// OP_LT	22027	4035	22240
// OP_IFNOT	22240	19	0
// OP_ADDRESS	28	416	22241
// OP_STOREP_F	677	22241	0
// OP_LOAD_F	28	185	22242
// OP_GT	22242	619	22243
// OP_IFNOT	22243	13	0
// OP_LOAD_ENT	28	206	22244
// OP_LOAD_F	22244	207	22245
// OP_BITAND	22245	277	22246
// OP_IFNOT	22246	3	0
// OP_ADDRESS	28	416	22247
// OP_STOREP_F	806	22247	0
// OP_LOAD_ENT	28	206	22248
// OP_LOAD_S	22248	154	22249
// OP_EQ_S	22249	1550	22250
// OP_IFNOT	22250	3	0
// OP_ADDRESS	28	416	22251
// OP_STOREP_F	806	22251	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	416	22252
// OP_STOREP_F	619	22252	0
// OP_LOAD_ENT	28	206	22253
// OP_STORE_V	22253	4	0
// OP_CALL1	1045	0	0
// OP_STORE_V	1	22020	0
// OP_LOAD_V	28	130	22254
// OP_SUB_V	22020	22254	22257
// OP_STORE_V	22257	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	22017	0
// OP_LOAD_F	28	416	22260
// OP_EQ_F	22260	806	22261
// OP_IFNOT	22261	23	0
// OP_LT	22027	8522	22262
// OP_IFNOT	22262	4	0
// OP_ADD_V	22017	607	22263
// OP_STORE_V	22263	22017	0
// OP_GOTO	18	0	0
// OP_LT	22027	22266	22267
// OP_IFNOT	22267	4	0
// OP_ADD_V	22017	22268	22271
// OP_STORE_V	22271	22017	0
// OP_GOTO	13	0	0
// OP_LT	22027	22274	22275
// OP_IFNOT	22275	4	0
// OP_ADD_V	22017	22276	22279
// OP_STORE_V	22279	22017	0
// OP_GOTO	8	0	0
// OP_LT	22027	22282	22283
// OP_IFNOT	22283	4	0
// OP_ADD_V	22017	22284	22287
// OP_STORE_V	22287	22017	0
// OP_GOTO	3	0	0
// OP_ADD_V	22017	22290	22293
// OP_STORE_V	22293	22017	0
// OP_STORE_V	22017	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	22023	0
// OP_SUB_F	619	22025	22296
// OP_STORE_F	22296	22025	0
// OP_STORE_V	22017	4	0
// OP_STORE_V	2618	7	0
// OP_CALL2	17830	0	0
// OP_LOAD_ENT	28	264	22297
// OP_LOAD_V	22297	142	22298
// OP_STORE_V	22298	22020	0
// OP_SUB_F	619	22020	22301
// OP_STORE_F	22301	22020	0
// OP_LOAD_F	28	422	22302
// OP_LT	22302	31	22303
// OP_LOAD_F	28	416	22304
// OP_GT	22304	619	22305
// OP_AND	22303	22305	22306
// OP_IFNOT	22306	66	0
// OP_LOAD_V	28	130	22307
// OP_STORE_V	22307	4	0
// OP_LOAD_ENT	28	206	22310
// OP_LOAD_V	22310	130	22311
// OP_LOAD_ENT	28	206	22314
// OP_LOAD_V	22314	159	22315
// OP_LOAD_ENT	28	206	22318
// OP_LOAD_V	22318	163	22319
// OP_ADD_V	22315	22319	22322
// OP_MUL_VF	22322	972	22325
// OP_ADD_V	22311	22325	22328
// OP_STORE_V	22328	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	22331
// OP_EQ_E	78	22331	22332
// OP_IFNOT	22332	48	0
// OP_STORE_V	22020	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	416	22333
// OP_EQ_F	22333	677	22334
// OP_IFNOT	22334	20	0
// OP_MUL_V	59	22023	22335
// OP_GT	22335	10293	22336
// OP_IFNOT	22336	16	0
// OP_LOAD_V	28	130	22337
// OP_MUL_VF	59	827	22340
// OP_ADD_V	22337	22340	22343
// OP_STORE_V	22343	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	22346
// OP_STORE_V	22346	10	0
// OP_CALL3	5084	0	0
// OP_ADDRESS	28	422	22347
// OP_ADD_F	31	972	22348
// OP_STOREP_F	22348	22347	0
// OP_ADDRESS	28	158	22349
// OP_LOAD_F	28	158	22350
// OP_BITOR	22350	383	22351
// OP_STOREP_F	22351	22349	0
// OP_GOTO	24	0	0
// OP_MUL_V	59	22023	22352
// OP_GT	22352	10293	22353
// OP_IFNOT	22353	21	0
// OP_LOAD_V	28	130	22354
// OP_MUL_VF	59	827	22357
// OP_ADD_V	22354	22357	22360
// OP_STORE_V	22360	4	0
// OP_MUL_VF	59	11357	22363
// OP_STORE_V	22363	7	0
// OP_LOAD_ENT	28	206	22366
// OP_STORE_V	22366	10	0
// OP_CALL3	4281	0	0
// OP_ADDRESS	28	422	22367
// OP_ADD_F	31	677	22368
// OP_STOREP_F	22368	22367	0
// OP_ADDRESS	28	185	22369
// OP_LOAD_F	28	185	22370
// OP_SUB_F	22370	677	22371
// OP_STOREP_F	22371	22369	0
// OP_ADDRESS	28	158	22372
// OP_LOAD_F	28	158	22373
// OP_BITOR	22373	383	22374
// OP_STOREP_F	22374	22372	0
// OP_ADDRESS	28	173	22375
// OP_STOREP_FNC	22016	22375	0
// OP_ADDRESS	28	175	22376
// OP_ADD_F	31	655	22377
// OP_STOREP_F	22377	22376	0
// OP_DONE	0	0	0
void () etank_run = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local float tmp;
    local float dist;
    etank_sound();
    FindTarget();
    
    if((self.enemy.health < 1.000) || (self.enemy.takedamage < 1.000))
    {
        self.enemy = world;
    }
    
    
    if(!visible(self.enemy) && (self.search_time < time))
    {
        self.enemy = world;
    }
    
    
    if(!self.enemy)
    {
        walkmove(self.angles_y, self.speed * 0.100);
        turn_eturret(self.angles_y * '0.000 1.000 0.000', 100.000);
        self.think = self.th_walk;
        self.nextthink = time + 0.100;
        return;
    }
    
    if((self.enemy.classname == "tank") || (self.enemy.owner.classname != "player"))
    {
        self.goalentity = self.enemy;
    }
    else
    {
        self.goalentity = self.movetarget;
    }
    
    v1 = self.goalentity.origin + ((self.goalentity.mins + self.goalentity.maxs) * 0.500);
    v0 = vectoangles(v1 - self.origin);
    if(self.goalentity.classname == "path_corner")
    {
        self.lefty = -1.000;
    }
    else
    {
        if((visible(self.goalentity) == TRUE) && (range(self.goalentity) > RANGE_NEAR))
        {
            self.lefty = -1.000;
        }
        else
        {
            
            if(self.search_time < time)
            {
                self.lefty = 1.000 - self.lefty;
                self.search_time = (time + (random() * 20.000)) + 10.000;
            }
            
            
            if(self.lefty < 0.000)
            {
                self.search_time = time + 30.000;
                if(random() < 0.500)
                {
                    self.lefty = 0.000;
                }
                else
                {
                    self.lefty = 1.000;
                }
                
            }
            
            if(self.lefty == 0.000)
            {
                tmp = 1.000;
            }
            else
            {
                tmp = -1.000;
            }
            
            if(range(self.goalentity) > RANGE_MELEE)
            {
                v0_y = v0_y + (tmp * 70.000);
            }
            else
            {
                v0_y = v0_y + (tmp * 100.000);
            }
            
        }
        
    }
    
    makevectors(v0_y * '0.000 1.000 0.000');
    traceline(self.origin + (v_right * 11.000), (self.origin + (v_right * 11.000)) + (v_forward * 128.000), FALSE, self);
    tmp = trace_fraction;
    traceline(self.origin - (v_right * 11.000), (self.origin - (v_right * 11.000)) + (v_forward * 128.000), FALSE, self);
    tmp = tmp - trace_fraction;
    
    if(tmp)
    {
        v0_y = v0_y - (tmp * 90.000);
    }
    
    v1 = '0.000 0.000 0.000';
    v1_y = anglemod(v0_y - self.angles_y);
    
    if(v1_y > 180.000)
    {
        v1_y = v1_y - 360.000;
    }
    
    if(fabs(v1_y) > 10.000)
    {
        
        if(v1_y < 0.000)
        {
            self.angles_y = anglemod(self.angles_y - 10.000);
        }
        
        
        if(v1_y > 0.000)
        {
            self.angles_y = anglemod(self.angles_y + 10.000);
        }
        
    }
    else
    {
        self.angles_y = v0_y;
    }
    
    if(fabs(v1_y) < 45.000)
    {
        
        if(self.speed < 120.000)
        {
            self.speed = self.speed + 5.000;
            
            if(self.speed > 120.000)
            {
                self.speed = 120.000;
            }
            
        }
        
    }
    else
    {
        
        if(self.speed > 0.000)
        {
            self.speed = self.speed - 5.000;
            
            if(self.speed < 0.000)
            {
                self.speed = 0.000;
            }
            
        }
        
    }
    
    
    if(!(walkmove(self.angles_y, self.speed * 0.100)))
    {
        
        if((self.lefty >= 0.000) && (self.search_time < (time + 10.000)))
        {
            self.lefty = 1.000 - self.lefty;
            self.search_time = (time + 10.000) + (random() * 20.000);
        }
        
    }
    
    tilt_etank();
    dist = vlen(self.enemy.origin - self.origin);
    if(dist < 1500.000)
    {
        self.attack_state = 1.000;
        
        if(self.ammo_rockets > 0.000)
        {
            
            if(self.enemy.flags & FL_ONGROUND)
            {
                self.attack_state = 2.000;
            }
            
            
            if(self.enemy.classname == "tank")
            {
                self.attack_state = 2.000;
            }
            
        }
        
    }
    else
    {
        self.attack_state = 0.000;
    }
    
    v1 = orgia(self.enemy);
    v0 = vectoangles(v1 - self.origin);
    
    if(self.attack_state == 2.000)
    {
        if(dist < 280.000)
        {
            v0 = v0 + '0.000 0.000 0.000';
        }
        else
        {
            if(dist < 480.000)
            {
                v0 = v0 + '5.000 0.000 0.000';
            }
            else
            {
                if(dist < 690.000)
                {
                    v0 = v0 + '10.000 0.000 0.000';
                }
                else
                {
                    if(dist < 1030.000)
                    {
                        v0 = v0 + '15.000 0.000 0.000';
                    }
                    else
                    {
                        v0 = v0 + '20.000 0.000 0.000';
                    }
                    
                }
                
            }
            
        }
        
    }
    
    makevectors(v0);
    v2 = v_forward;
    v2_z = 0.000 - v2_z;
    turn_eturret(v0, 100.000);
    v1 = self.tur2.angles;
    v1_x = 0.000 - v1_x;
    
    if((self.attack_finished < time) && (self.attack_state > 0.000))
    {
        traceline(self.origin, self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.500), FALSE, self);
        
        if(trace_ent == self.enemy)
        {
            makevectors(v1);
            if(self.attack_state == 1.000)
            {
                
                if((v_forward * v2) > 0.950)
                {
                    AC_plasma(self.origin + (v_forward * 10.000), v_forward, self.enemy);
                    self.attack_finished = time + 0.500;
                    self.effects = self.effects | EF_MUZZLEFLASH;
                }
                
            }
            else
            {
                
                if((v_forward * v2) > 0.950)
                {
                    AC_bomb(self.origin + (v_forward * 10.000), v_forward * 900.000, self.enemy);
                    self.attack_finished = time + 1.000;
                    self.ammo_rockets = self.ammo_rockets - 1.000;
                    self.effects = self.effects | EF_MUZZLEFLASH;
                }
                
            }
            
        }
        
    }
    
    self.think = etank_run;
    self.nextthink = time + 0.100;
};

// etank_shoot
// function begins at statement 32188, parm_start=22379
// OP_LOAD_ENT	28	264	22382
// OP_LOAD_V	22382	142	22383
// OP_STORE_V	22383	22379	0
// OP_SUB_F	619	22379	22386
// OP_STORE_F	22386	22379	0
// OP_STORE_V	22379	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	22387
// OP_MUL_VF	59	827	22390
// OP_ADD_V	22387	22390	22393
// OP_STORE_V	22393	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	22396
// OP_STORE_V	22396	10	0
// OP_CALL3	5084	0	0
// OP_DONE	0	0	0
void () etank_shoot = 
{
    local vector v0;
    v0 = self.tur2.angles;
    v0_x = 0.000 - v0_x;
    makevectors(v0);
    AC_plasma(self.origin + (v_forward * 10.000), v_forward, self.enemy);
};

// etank_start
// function begins at statement 32204, parm_start=22398
// OP_GT	35	619	22398
// OP_LOAD_F	28	209	22399
// OP_EQ_F	22399	619	22400
// OP_EQ_F	37	619	22401
// OP_OR	22400	22401	22402
// OP_AND	22398	22402	22403
// OP_IFNOT	22403	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	188	22404
// OP_STOREP_F	306	22404	0
// OP_ADDRESS	28	191	22405
// OP_STOREP_V	582	22405	0
// OP_ADDRESS	28	207	22408
// OP_LOAD_F	28	207	22409
// OP_BITOR	22409	273	22410
// OP_STOREP_F	22410	22408	0
// OP_ADDRESS	28	263	22411
// OP_CALL0	508	0	0
// OP_STOREP_ENT	1	22411	0
// OP_LOAD_ENT	28	263	22412
// OP_STORE_V	22412	4	0
// OP_LOAD_V	28	130	22413
// OP_STORE_V	22413	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	263	22416
// OP_STORE_V	22416	4	0
// OP_STORE_V	11513	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	264	22417
// OP_CALL0	508	0	0
// OP_STOREP_ENT	1	22417	0
// OP_LOAD_ENT	28	264	22418
// OP_STORE_V	22418	4	0
// OP_LOAD_V	28	130	22419
// OP_STORE_V	22419	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	264	22422
// OP_STORE_V	22422	4	0
// OP_STORE_V	11503	7	0
// OP_CALL2	498	0	0
// OP_LOAD_S	28	221	22423
// OP_IFNOT	22423	26	0
// OP_ADDRESS	28	219	22424
// OP_ADDRESS	28	467	22425
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	22426
// OP_STORE_V	22426	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	22425	0
// OP_STOREP_ENT	1	22424	0
// OP_LOAD_ENT	28	467	22427
// OP_NOT_ENT	22427	0	22428
// OP_IFNOT	22428	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	22429
// OP_STORE_V	22429	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	173	22432
// OP_LOAD_FNC	28	406	22433
// OP_STOREP_FNC	22433	22432	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	173	22434
// OP_LOAD_FNC	28	405	22435
// OP_STOREP_FNC	22435	22434	0
// OP_ADDRESS	28	175	22436
// OP_LOAD_F	28	175	22437
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	22438
// OP_ADD_F	22437	22438	22439
// OP_STOREP_F	22439	22436	0
// OP_DONE	0	0	0
void () etank_start = 
{
    
    if((deathmatch > 0.000) && ((self.team == 0.000) || (teamplay == 0.000)))
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.view_ofs = '0.000 0.000 1.000';
    self.flags = self.flags | FL_MONSTER;
    self.tur1 = spawn();
    setorigin(self.tur1, self.origin);
    setmodel(self.tur1, "progs/tanktr.mdl");
    self.tur2 = spawn();
    setorigin(self.tur2, self.origin);
    setmodel(self.tur2, "progs/tanktb.mdl");
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        
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
    
    self.nextthink = self.nextthink + (random() * 0.500);
};

// monster_etank
// function begins at statement 32283, parm_start=22441
// OP_ADDRESS	28	129	22441
// OP_STOREP_F	294	22441	0
// OP_ADDRESS	28	128	22442
// OP_STOREP_F	283	22442	0
// OP_NOT_F	35	0	22443
// OP_IFNOT	22443	3	0
// OP_ADD_F	40	677	22444
// OP_STORE_F	22444	40	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11464	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10915	7	0
// OP_STORE_V	22445	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	191	22448
// OP_STOREP_V	582	22448	0
// OP_LOAD_F	28	177	22451
// OP_NOT_F	22451	0	22452
// OP_IFNOT	22452	3	0
// OP_ADDRESS	28	177	22453
// OP_STOREP_F	4412	22453	0
// OP_ADDRESS	28	205	22454
// OP_STOREP_S	22455	22454	0
// OP_LOAD_F	28	209	22456
// OP_EQ_F	22456	619	22457
// OP_LOAD_F	28	209	22458
// OP_NE_F	22458	677	22459
// OP_EQ_F	35	619	22460
// OP_AND	22459	22460	22461
// OP_OR	22457	22461	22462
// OP_IFNOT	22462	4	0
// OP_ADDRESS	28	243	22463
// OP_STOREP_S	101	22463	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	209	22464
// OP_EQ_F	22464	677	22465
// OP_IFNOT	22465	4	0
// OP_ADDRESS	28	243	22466
// OP_STOREP_S	102	22466	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	243	22467
// OP_STOREP_S	103	22467	0
// OP_LOAD_F	28	185	22468
// OP_NOT_F	22468	0	22469
// OP_IFNOT	22469	3	0
// OP_ADDRESS	28	185	22470
// OP_STOREP_F	827	22470	0
// OP_ADDRESS	28	411	22471
// OP_STOREP_FNC	21914	22471	0
// OP_ADDRESS	28	405	22472
// OP_STOREP_FNC	21920	22472	0
// OP_ADDRESS	28	406	22473
// OP_STOREP_FNC	21942	22473	0
// OP_ADDRESS	28	407	22474
// OP_STOREP_FNC	22016	22474	0
// OP_ADDRESS	28	408	22475
// OP_STOREP_FNC	22378	22475	0
// OP_ADDRESS	28	173	22476
// OP_STOREP_FNC	22397	22476	0
// OP_ADDRESS	28	175	22477
// OP_ADD_F	31	655	22478
// OP_CALL0	501	0	0
// OP_MUL_F	1	655	22479
// OP_ADD_F	22478	22479	22480
// OP_STOREP_F	22480	22477	0
// OP_DONE	0	0	0
void () monster_etank = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1.000;
    }
    
    setmodel(self, "progs/tankba.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 8.000');
    self.view_ofs = '0.000 0.000 1.000';
    
    if(!self.health)
    {
        self.health = 300.000;
    }
    
    self.netname = "a Tank";
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
    
    
    if(!self.ammo_rockets)
    {
        self.ammo_rockets = 10.000;
    }
    
    self.th_die = etank_die;
    self.th_stand = etank_stand;
    self.th_walk = etank_walk;
    self.th_run = etank_run;
    self.th_missile = etank_shoot;
    self.think = etank_start;
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

