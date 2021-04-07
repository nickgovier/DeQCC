void () dog_leap1;
void () dog_run1;
// dog_bite
// function begins at statement 16185, parm_start=9920
// OP_LOAD_ENT	28	181	9924
// OP_NOT_ENT	9924	0	9925
// OP_IFNOT	9925	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_LOAD_ENT	28	181	9926
// OP_STORE_V	9926	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_NOT_F	1	0	9927
// OP_IFNOT	9927	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	9928
// OP_LOAD_V	9928	105	9929
// OP_LOAD_V	28	105	9932
// OP_SUB_V	9929	9932	9935
// OP_STORE_V	9935	9920	0
// OP_STORE_V	9920	4	0
// OP_CALL1	458	0	0
// OP_GT	1	2165	9938
// OP_IFNOT	9938	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_CALL0	453	0	0
// OP_ADD_F	1	1	9939
// OP_CALL0	453	0	0
// OP_ADD_F	9939	1	9940
// OP_MUL_F	9940	1502	9941
// OP_STORE_F	9941	9923	0
// OP_LOAD_ENT	28	181	9942
// OP_STORE_V	9942	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	9923	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () dog_bite = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(10);
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 100)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 8;
    T_Damage(self.enemy, self, self, ldmg);
};

// Dog_JumpTouch
// function begins at statement 16222, parm_start=9944
// OP_LOAD_F	28	152	9945
// OP_LE	9945	650	9946
// OP_IFNOT	9946	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	9947
// OP_IFNOT	9947	15	0
// OP_LOAD_V	28	113	9948
// OP_STORE_V	9948	4	0
// OP_CALL1	458	0	0
// OP_GT	1	2845	9951
// OP_IFNOT	9951	10	0
// OP_CALL0	453	0	0
// OP_MUL_F	1931	1	9952
// OP_ADD_F	1931	9952	9953
// OP_STORE_F	9953	9944	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	9944	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	484	0	0
// OP_NOT_F	1	0	9954
// OP_IFNOT	9954	12	0
// OP_LOAD_F	28	182	9955
// OP_BITAND	9955	223	9956
// OP_IFNOT	9956	8	0
// OP_ADDRESS	28	146	9957
// OP_STOREP_FNC	518	9957	0
// OP_ADDRESS	28	148	9958
// OP_STOREP_FNC	9917	9958	0
// OP_ADDRESS	28	150	9959
// OP_ADD_F	31	686	9960
// OP_STOREP_F	9960	9959	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	9961
// OP_STOREP_FNC	518	9961	0
// OP_ADDRESS	28	148	9962
// OP_STOREP_FNC	9918	9962	0
// OP_ADDRESS	28	150	9963
// OP_ADD_F	31	686	9964
// OP_STOREP_F	9964	9963	0
// OP_DONE	0	0	0
void () Dog_JumpTouch = 
{
    local float ldmg;
    
    if(self.health <= 0)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 300)
        {
            ldmg = 10 + (10 * random());
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = dog_leap1;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = dog_run1;
    self.nextthink = time + 0.1;
};

// dog_stand1
// function begins at statement 16265, parm_start=9966
// OP_STATE	6100	9966	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand1 = [69, dog_stand2]
{
    ai_stand();
};

// dog_stand2
// function begins at statement 16268, parm_start=9967
// OP_STATE	6101	9967	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand2 = [70, dog_stand3]
{
    ai_stand();
};

// dog_stand3
// function begins at statement 16271, parm_start=9968
// OP_STATE	6103	9968	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand3 = [71, dog_stand4]
{
    ai_stand();
};

// dog_stand4
// function begins at statement 16274, parm_start=9969
// OP_STATE	6105	9969	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand4 = [72, dog_stand5]
{
    ai_stand();
};

// dog_stand5
// function begins at statement 16277, parm_start=9970
// OP_STATE	2988	9970	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand5 = [73, dog_stand6]
{
    ai_stand();
};

// dog_stand6
// function begins at statement 16280, parm_start=9971
// OP_STATE	6108	9971	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand6 = [74, dog_stand7]
{
    ai_stand();
};

// dog_stand7
// function begins at statement 16283, parm_start=9972
// OP_STATE	6110	9972	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand7 = [75, dog_stand8]
{
    ai_stand();
};

// dog_stand8
// function begins at statement 16286, parm_start=9973
// OP_STATE	6112	9973	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand8 = [76, dog_stand9]
{
    ai_stand();
};

// dog_stand9
// function begins at statement 16289, parm_start=9974
// OP_STATE	6114	9965	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () dog_stand9 = [77, dog_stand1]
{
    ai_stand();
};

// dog_walk1
// function begins at statement 16292, parm_start=9975
// OP_STATE	6116	9975	0
// OP_CALL0	453	0	0
// OP_LT	1	922	9976
// OP_IFNOT	9976	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9977	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk1 = [78, dog_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", 1, ATTN_IDLE);
    }
    
    ai_walk(8);
};

// dog_walk2
// function begins at statement 16305, parm_start=9978
// OP_STATE	6118	9978	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk2 = [79, dog_walk3]
{
    ai_walk(8);
};

// dog_walk3
// function begins at statement 16309, parm_start=9979
// OP_STATE	874	9979	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk3 = [80, dog_walk4]
{
    ai_walk(8);
};

// dog_walk4
// function begins at statement 16313, parm_start=9980
// OP_STATE	6121	9980	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk4 = [81, dog_walk5]
{
    ai_walk(8);
};

// dog_walk5
// function begins at statement 16317, parm_start=9981
// OP_STATE	6123	9981	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk5 = [82, dog_walk6]
{
    ai_walk(8);
};

// dog_walk6
// function begins at statement 16321, parm_start=9982
// OP_STATE	6125	9982	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk6 = [83, dog_walk7]
{
    ai_walk(8);
};

// dog_walk7
// function begins at statement 16325, parm_start=9983
// OP_STATE	6127	9983	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk7 = [84, dog_walk8]
{
    ai_walk(8);
};

// dog_walk8
// function begins at statement 16329, parm_start=9984
// OP_STATE	6128	9974	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () dog_walk8 = [85, dog_walk1]
{
    ai_walk(8);
};

// dog_run1
// function begins at statement 16333, parm_start=9984
// OP_STATE	6173	9984	0
// OP_CALL0	453	0	0
// OP_LT	1	922	9985
// OP_IFNOT	9985	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9977	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run1 = [48, dog_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", 1, ATTN_IDLE);
    }
    
    ai_run(16);
};

// dog_run2
// function begins at statement 16346, parm_start=9986
// OP_STATE	6175	9986	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run2 = [49, dog_run3]
{
    ai_run(32);
};

// dog_run3
// function begins at statement 16350, parm_start=9987
// OP_STATE	2509	9987	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run3 = [50, dog_run4]
{
    ai_run(32);
};

// dog_run4
// function begins at statement 16354, parm_start=9988
// OP_STATE	6068	9988	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run4 = [51, dog_run5]
{
    ai_run(20);
};

// dog_run5
// function begins at statement 16358, parm_start=9989
// OP_STATE	6070	9989	0
// OP_STORE_V	1684	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run5 = [52, dog_run6]
{
    ai_run(64);
};

// dog_run6
// function begins at statement 16362, parm_start=9990
// OP_STATE	6072	9990	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run6 = [53, dog_run7]
{
    ai_run(32);
};

// dog_run7
// function begins at statement 16366, parm_start=9991
// OP_STATE	6074	9991	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run7 = [54, dog_run8]
{
    ai_run(16);
};

// dog_run8
// function begins at statement 16370, parm_start=9992
// OP_STATE	6076	9992	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run8 = [55, dog_run9]
{
    ai_run(32);
};

// dog_run9
// function begins at statement 16374, parm_start=9993
// OP_STATE	6078	9993	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run9 = [56, dog_run10]
{
    ai_run(32);
};

// dog_run10
// function begins at statement 16378, parm_start=9994
// OP_STATE	6080	9994	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run10 = [57, dog_run11]
{
    ai_run(20);
};

// dog_run11
// function begins at statement 16382, parm_start=9995
// OP_STATE	6082	9995	0
// OP_STORE_V	1684	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run11 = [58, dog_run12]
{
    ai_run(64);
};

// dog_run12
// function begins at statement 16386, parm_start=9996
// OP_STATE	6084	9918	0
// OP_STORE_V	959	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () dog_run12 = [59, dog_run1]
{
    ai_run(32);
};

// dog_atta1
// function begins at statement 16390, parm_start=9997
// OP_STATE	650	9997	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta1 = [0, dog_atta2]
{
    ai_charge(10);
};

// dog_atta2
// function begins at statement 16394, parm_start=9998
// OP_STATE	708	9998	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta2 = [1, dog_atta3]
{
    ai_charge(10);
};

// dog_atta3
// function begins at statement 16398, parm_start=9999
// OP_STATE	929	9999	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta3 = [2, dog_atta4]
{
    ai_charge(10);
};

// dog_atta4
// function begins at statement 16402, parm_start=10000
// OP_STATE	819	10000	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10001	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	9919	0	0
// OP_DONE	0	0	0
void () dog_atta4 = [3, dog_atta5]
{
    sound(self, CHAN_VOICE, "dog/dattack1.wav", 1, ATTN_NORM);
    dog_bite();
};

// dog_atta5
// function begins at statement 16411, parm_start=10002
// OP_STATE	1835	10002	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta5 = [4, dog_atta6]
{
    ai_charge(10);
};

// dog_atta6
// function begins at statement 16415, parm_start=10003
// OP_STATE	1660	10003	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta6 = [5, dog_atta7]
{
    ai_charge(10);
};

// dog_atta7
// function begins at statement 16419, parm_start=10004
// OP_STATE	2107	10004	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta7 = [6, dog_atta8]
{
    ai_charge(10);
};

// dog_atta8
// function begins at statement 16423, parm_start=10005
// OP_STATE	2307	9918	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () dog_atta8 = [7, dog_run1]
{
    ai_charge(10);
};

// dog_leap1
// function begins at statement 16427, parm_start=10005
// OP_STATE	1035	10005	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () dog_leap1 = [60, dog_leap2]
{
    ai_face();
};

// dog_leap2
// function begins at statement 16430, parm_start=10006
// OP_STATE	6086	10006	0
// OP_CALL0	844	0	0
// OP_ADDRESS	28	146	10007
// OP_STOREP_FNC	9943	10007	0
// OP_LOAD_V	28	117	10008
// OP_STORE_V	10008	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	28	108	10011
// OP_LOAD_F	28	108	10012
// OP_ADD_F	10012	708	10013
// OP_STOREP_F	10013	10011	0
// OP_ADDRESS	28	113	10014
// OP_MUL_VF	59	2845	10017
// OP_ADD_V	10017	10020	10023
// OP_STOREP_V	10023	10014	0
// OP_LOAD_F	28	182	10026
// OP_BITAND	10026	223	10027
// OP_IFNOT	10027	5	0
// OP_ADDRESS	28	182	10028
// OP_LOAD_F	28	182	10029
// OP_SUB_F	10029	223	10030
// OP_STOREP_F	10030	10028	0
// OP_DONE	0	0	0
void () dog_leap2 = [61, dog_leap3]
{
    ai_face();
    self.touch = Dog_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + 1;
    self.velocity = (v_forward * 300) + '0 0 200';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};

// dog_leap3
// function begins at statement 16453, parm_start=10031
// OP_STATE	6088	10031	0
// OP_DONE	0	0	0
void () dog_leap3 = [62, dog_leap4]
{
};

// dog_leap4
// function begins at statement 16455, parm_start=10032
// OP_STATE	4345	10032	0
// OP_DONE	0	0	0
void () dog_leap4 = [63, dog_leap5]
{
};

// dog_leap5
// function begins at statement 16457, parm_start=10033
// OP_STATE	1684	10033	0
// OP_DONE	0	0	0
void () dog_leap5 = [64, dog_leap6]
{
};

// dog_leap6
// function begins at statement 16459, parm_start=10034
// OP_STATE	6092	10034	0
// OP_DONE	0	0	0
void () dog_leap6 = [65, dog_leap7]
{
};

// dog_leap7
// function begins at statement 16461, parm_start=10035
// OP_STATE	6094	10035	0
// OP_DONE	0	0	0
void () dog_leap7 = [66, dog_leap8]
{
};

// dog_leap8
// function begins at statement 16463, parm_start=10036
// OP_STATE	6096	10036	0
// OP_DONE	0	0	0
void () dog_leap8 = [67, dog_leap9]
{
};

// dog_leap9
// function begins at statement 16465, parm_start=10037
// OP_STATE	6098	10036	0
// OP_DONE	0	0	0
void () dog_leap9 = [68, dog_leap9]
{
};

// dog_pain1
// function begins at statement 16467, parm_start=10038
// OP_STATE	8446	10038	0
// OP_DONE	0	0	0
void () dog_pain1 = [26, dog_pain2]
{
};

// dog_pain2
// function begins at statement 16469, parm_start=10039
// OP_STATE	8448	10039	0
// OP_DONE	0	0	0
void () dog_pain2 = [27, dog_pain3]
{
};

// dog_pain3
// function begins at statement 16471, parm_start=10040
// OP_STATE	8450	10040	0
// OP_DONE	0	0	0
void () dog_pain3 = [28, dog_pain4]
{
};

// dog_pain4
// function begins at statement 16473, parm_start=10041
// OP_STATE	5829	10041	0
// OP_DONE	0	0	0
void () dog_pain4 = [29, dog_pain5]
{
};

// dog_pain5
// function begins at statement 16475, parm_start=10042
// OP_STATE	1004	10042	0
// OP_DONE	0	0	0
void () dog_pain5 = [30, dog_pain6]
{
};

// dog_pain6
// function begins at statement 16477, parm_start=10043
// OP_STATE	3950	9918	0
// OP_DONE	0	0	0
void () dog_pain6 = [31, dog_run1]
{
};

// dog_painb1
// function begins at statement 16479, parm_start=10044
// OP_STATE	959	10044	0
// OP_DONE	0	0	0
void () dog_painb1 = [32, dog_painb2]
{
};

// dog_painb2
// function begins at statement 16481, parm_start=10045
// OP_STATE	5835	10045	0
// OP_DONE	0	0	0
void () dog_painb2 = [33, dog_painb3]
{
};

// dog_painb3
// function begins at statement 16483, parm_start=10046
// OP_STATE	5837	10046	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb3 = [34, dog_painb4]
{
    ai_pain(4);
};

// dog_painb4
// function begins at statement 16487, parm_start=10047
// OP_STATE	3325	10047	0
// OP_STORE_V	2532	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb4 = [35, dog_painb5]
{
    ai_pain(12);
};

// dog_painb5
// function begins at statement 16491, parm_start=10048
// OP_STATE	5820	10048	0
// OP_STORE_V	2532	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb5 = [36, dog_painb6]
{
    ai_pain(12);
};

// dog_painb6
// function begins at statement 16495, parm_start=10049
// OP_STATE	5822	10049	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb6 = [37, dog_painb7]
{
    ai_pain(2);
};

// dog_painb7
// function begins at statement 16499, parm_start=10050
// OP_STATE	5824	10050	0
// OP_DONE	0	0	0
void () dog_painb7 = [38, dog_painb8]
{
};

// dog_painb8
// function begins at statement 16501, parm_start=10051
// OP_STATE	5826	10051	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb8 = [39, dog_painb9]
{
    ai_pain(4);
};

// dog_painb9
// function begins at statement 16505, parm_start=10052
// OP_STATE	2007	10052	0
// OP_DONE	0	0	0
void () dog_painb9 = [40, dog_painb10]
{
};

// dog_painb10
// function begins at statement 16507, parm_start=10053
// OP_STATE	6160	10053	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () dog_painb10 = [41, dog_painb11]
{
    ai_pain(10);
};

// dog_painb11
// function begins at statement 16511, parm_start=10054
// OP_STATE	6162	10054	0
// OP_DONE	0	0	0
void () dog_painb11 = [42, dog_painb12]
{
};

// dog_painb12
// function begins at statement 16513, parm_start=10055
// OP_STATE	6164	10055	0
// OP_DONE	0	0	0
void () dog_painb12 = [43, dog_painb13]
{
};

// dog_painb13
// function begins at statement 16515, parm_start=10056
// OP_STATE	6166	10056	0
// OP_DONE	0	0	0
void () dog_painb13 = [44, dog_painb14]
{
};

// dog_painb14
// function begins at statement 16517, parm_start=10057
// OP_STATE	1572	10057	0
// OP_DONE	0	0	0
void () dog_painb14 = [45, dog_painb15]
{
};

// dog_painb15
// function begins at statement 16519, parm_start=10058
// OP_STATE	6169	10058	0
// OP_DONE	0	0	0
void () dog_painb15 = [46, dog_painb16]
{
};

// dog_painb16
// function begins at statement 16521, parm_start=10059
// OP_STATE	6171	9918	0
// OP_DONE	0	0	0
void () dog_painb16 = [47, dog_run1]
{
};

// dog_pain
// function begins at statement 16523, parm_start=10060
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10060	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	10061
// OP_IFNOT	10061	3	0
// OP_CALL0	10037	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10043	0	0
// OP_DONE	0	0	0
void () dog_pain = 
{
    sound(self, CHAN_VOICE, "dog/dpain1.wav", 1, ATTN_NORM);
    if(random() > 0.5)
    {
        dog_pain1();
    }
    else
    {
        dog_painb1();
    }
    
};

// dog_die1
// function begins at statement 16536, parm_start=10063
// OP_STATE	1502	10063	0
// OP_DONE	0	0	0
void () dog_die1 = [8, dog_die2]
{
};

// dog_die2
// function begins at statement 16538, parm_start=10064
// OP_STATE	3556	10064	0
// OP_DONE	0	0	0
void () dog_die2 = [9, dog_die3]
{
};

// dog_die3
// function begins at statement 16540, parm_start=10065
// OP_STATE	1931	10065	0
// OP_DONE	0	0	0
void () dog_die3 = [10, dog_die4]
{
};

// dog_die4
// function begins at statement 16542, parm_start=10066
// OP_STATE	3931	10066	0
// OP_DONE	0	0	0
void () dog_die4 = [11, dog_die5]
{
};

// dog_die5
// function begins at statement 16544, parm_start=10067
// OP_STATE	2532	10067	0
// OP_DONE	0	0	0
void () dog_die5 = [12, dog_die6]
{
};

// dog_die6
// function begins at statement 16546, parm_start=10068
// OP_STATE	8427	10068	0
// OP_DONE	0	0	0
void () dog_die6 = [13, dog_die7]
{
};

// dog_die7
// function begins at statement 16548, parm_start=10069
// OP_STATE	3153	10069	0
// OP_DONE	0	0	0
void () dog_die7 = [14, dog_die8]
{
};

// dog_die8
// function begins at statement 16550, parm_start=10070
// OP_STATE	2157	10070	0
// OP_DONE	0	0	0
void () dog_die8 = [15, dog_die9]
{
};

// dog_die9
// function begins at statement 16552, parm_start=10071
// OP_STATE	3273	10070	0
// OP_NOT_F	539	0	10071
// OP_IFNOT	10071	2	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () dog_die9 = [16, dog_die9]
{
    
    if(!king_dead)
    {
        SUB_Remove();
    }
    
};

// dog_dieb1
// function begins at statement 16557, parm_start=10073
// OP_STATE	5588	10073	0
// OP_DONE	0	0	0
void () dog_dieb1 = [17, dog_dieb2]
{
};

// dog_dieb2
// function begins at statement 16559, parm_start=10074
// OP_STATE	3576	10074	0
// OP_DONE	0	0	0
void () dog_dieb2 = [18, dog_dieb3]
{
};

// dog_dieb3
// function begins at statement 16561, parm_start=10075
// OP_STATE	8435	10075	0
// OP_DONE	0	0	0
void () dog_dieb3 = [19, dog_dieb4]
{
};

// dog_dieb4
// function begins at statement 16563, parm_start=10076
// OP_STATE	1017	10076	0
// OP_DONE	0	0	0
void () dog_dieb4 = [20, dog_dieb5]
{
};

// dog_dieb5
// function begins at statement 16565, parm_start=10077
// OP_STATE	8438	10077	0
// OP_DONE	0	0	0
void () dog_dieb5 = [21, dog_dieb6]
{
};

// dog_dieb6
// function begins at statement 16567, parm_start=10078
// OP_STATE	8440	10078	0
// OP_DONE	0	0	0
void () dog_dieb6 = [22, dog_dieb7]
{
};

// dog_dieb7
// function begins at statement 16569, parm_start=10079
// OP_STATE	8442	10079	0
// OP_DONE	0	0	0
void () dog_dieb7 = [23, dog_dieb8]
{
};

// dog_dieb8
// function begins at statement 16571, parm_start=10080
// OP_STATE	4969	10080	0
// OP_DONE	0	0	0
void () dog_dieb8 = [24, dog_dieb9]
{
};

// dog_dieb9
// function begins at statement 16573, parm_start=10081
// OP_STATE	2171	10080	0
// OP_NOT_F	539	0	10081
// OP_IFNOT	10081	2	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () dog_dieb9 = [25, dog_dieb9]
{
    
    if(!king_dead)
    {
        SUB_Remove();
    }
    
};

// dog_die
// function begins at statement 16578, parm_start=10083
// OP_LOAD_F	28	152	10083
// OP_LT	10083	9507	10084
// OP_IFNOT	10084	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	10085
// OP_STORE_V	10085	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	10086
// OP_STORE_V	10086	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	10087
// OP_STORE_V	10087	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	10088	4	0
// OP_LOAD_F	28	152	10089
// OP_STORE_V	10089	7	0
// OP_CALL2	5968	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10090	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	104	10091
// OP_STOREP_F	238	10091	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	10092
// OP_IFNOT	10092	3	0
// OP_CALL0	10062	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10072	0	0
// OP_DONE	0	0	0
void () dog_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowHead("progs/h_dog.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "dog/ddeath.wav", 1, ATTN_NORM);
    self.solid = SOLID_NOT;
    if(random() > 0.5)
    {
        dog_die1();
    }
    else
    {
        dog_dieb1();
    }
    
};

// CheckDogMelee
// function begins at statement 16619, parm_start=10094
// OP_EQ_F	847	243	10094
// OP_IFNOT	10094	4	0
// OP_ADDRESS	28	368	10095
// OP_STOREP_F	371	10095	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDogMelee = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};

// CheckDogJump
// function begins at statement 16626, parm_start=10097
// OP_LOAD_F	28	108	10101
// OP_LOAD_F	28	137	10102
// OP_ADD_F	10101	10102	10103
// OP_LOAD_ENT	28	181	10104
// OP_LOAD_F	10104	108	10105
// OP_LOAD_ENT	28	181	10106
// OP_LOAD_F	10106	137	10107
// OP_ADD_F	10105	10107	10108
// OP_LOAD_ENT	28	181	10109
// OP_LOAD_F	10109	145	10110
// OP_MUL_F	3721	10110	10111
// OP_ADD_F	10108	10111	10112
// OP_GT	10103	10112	10113
// OP_IFNOT	10113	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	10114
// OP_LOAD_F	28	141	10115
// OP_ADD_F	10114	10115	10116
// OP_LOAD_ENT	28	181	10117
// OP_LOAD_F	10117	108	10118
// OP_LOAD_ENT	28	181	10119
// OP_LOAD_F	10119	137	10120
// OP_ADD_F	10118	10120	10121
// OP_LOAD_ENT	28	181	10122
// OP_LOAD_F	10122	145	10123
// OP_MUL_F	3718	10123	10124
// OP_ADD_F	10121	10124	10125
// OP_LT	10116	10125	10126
// OP_IFNOT	10126	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	10127
// OP_LOAD_V	10127	105	10128
// OP_LOAD_V	28	105	10131
// OP_SUB_V	10128	10131	10134
// OP_STORE_V	10134	10097	0
// OP_STORE_F	650	10099	0
// OP_STORE_V	10097	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	10100	0
// OP_LT	10100	874	10137
// OP_IFNOT	10137	2	0
// OP_RETURN	213	0	0
// OP_GT	10100	2241	10138
// OP_IFNOT	10138	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckDogJump = 
{
    local vector dist;
    local float d;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    dist = self.enemy.origin - self.origin;
    dist_z = 0;
    d = vlen(dist);
    
    if(d < 80)
    {
        return FALSE;
    }
    
    
    if(d > 150)
    {
        return FALSE;
    }
    
    return TRUE;
};

// DogCheckAttack
// function begins at statement 16673, parm_start=10139
// OP_CALL0	10093	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	368	10142
// OP_STOREP_F	371	10142	0
// OP_RETURN	214	0	0
// OP_CALL0	10096	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	368	10143
// OP_STOREP_F	372	10143	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DogCheckAttack = 
{
    local vector vec;
    
    if(CheckDogMelee())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(CheckDogJump())
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    return FALSE;
};

// monster_dog
// function begins at statement 16685, parm_start=10145
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10088	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	10145	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	10001	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10090	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10060	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1352	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9977	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	10146
// OP_STOREP_F	241	10146	0
// OP_ADDRESS	28	103	10147
// OP_STOREP_F	230	10147	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10145	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10148	7	0
// OP_STORE_V	10151	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	10154
// OP_STOREP_F	2171	10154	0
// OP_ADDRESS	28	357	10155
// OP_STOREP_FNC	9965	10155	0
// OP_ADDRESS	28	358	10156
// OP_STOREP_FNC	9974	10156	0
// OP_ADDRESS	28	359	10157
// OP_STOREP_FNC	9918	10157	0
// OP_ADDRESS	28	362	10158
// OP_STOREP_FNC	10059	10158	0
// OP_ADDRESS	28	363	10159
// OP_STOREP_FNC	10082	10159	0
// OP_ADDRESS	28	361	10160
// OP_STOREP_FNC	9996	10160	0
// OP_ADDRESS	28	360	10161
// OP_STOREP_FNC	9917	10161	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_dog = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/h_dog.mdl");
    precache_model("progs/dog.mdl");
    precache_sound("dog/dattack1.wav");
    precache_sound("dog/ddeath.wav");
    precache_sound("dog/dpain1.wav");
    precache_sound("dog/dsight.wav");
    precache_sound("dog/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/dog.mdl");
    setsize(self, '-32 -32 -24', '32 32 40');
    self.health = 25;
    self.th_stand = dog_stand1;
    self.th_walk = dog_walk1;
    self.th_run = dog_run1;
    self.th_pain = dog_pain;
    self.th_die = dog_die;
    self.th_melee = dog_atta1;
    self.th_missile = dog_leap1;
    walkmonster_start();
};

