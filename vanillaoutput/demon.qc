void() Demon_JumpTouch;
void() demon1_stand1;
// demon1_stand1
// function begins at statement 12796
OP_STATE	337	7989	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 337 7989 0
    ai_stand();
};

// demon1_stand2
// function begins at statement 12799
OP_STATE	7368	7990	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7368 7990 0
    ai_stand();
};

// demon1_stand3
// function begins at statement 12802
OP_STATE	7369	7991	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7369 7991 0
    ai_stand();
};

// demon1_stand4
// function begins at statement 12805
OP_STATE	370	7992	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 370 7992 0
    ai_stand();
};

// demon1_stand5
// function begins at statement 12808
OP_STATE	6076	7993	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6076 7993 0
    ai_stand();
};

// demon1_stand6
// function begins at statement 12811
OP_STATE	313	7994	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 313 7994 0
    ai_stand();
};

// demon1_stand7
// function begins at statement 12814
OP_STATE	314	7995	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 314 7995 0
    ai_stand();
};

// demon1_stand8
// function begins at statement 12817
OP_STATE	315	7996	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 315 7996 0
    ai_stand();
};

// demon1_stand9
// function begins at statement 12820
OP_STATE	6077	7997	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6077 7997 0
    ai_stand();
};

// demon1_stand10
// function begins at statement 12823
OP_STATE	317	7998	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 317 7998 0
    ai_stand();
};

// demon1_stand11
// function begins at statement 12826
OP_STATE	318	7999	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 318 7999 0
    ai_stand();
};

// demon1_stand12
// function begins at statement 12829
OP_STATE	319	8000	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 319 8000 0
    ai_stand();
};

// demon1_stand13
// function begins at statement 12832
OP_STATE	2250	7988	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () demon1_stand13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2250 7988 0
    ai_stand();
};

void() demon1_walk1;
// demon1_walk1
// function begins at statement 12835
OP_STATE	7768	8002	0
OP_CALL0	452	0	0
OP_LT	1	836	8003
OP_IFNOT	8003	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	8004	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7768 8002 0
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
    ai_walk(8.000);
};

// demon1_walk2
// function begins at statement 12848
OP_STATE	2901	8005	0
OP_STORE_V	314	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2901 8005 0
    ai_walk(6.000);
};

// demon1_walk3
// function begins at statement 12852
OP_STATE	1876	8006	0
OP_STORE_V	314	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1876 8006 0
    ai_walk(6.000);
};

// demon1_walk4
// function begins at statement 12856
OP_STATE	6078	8007	0
OP_STORE_V	315	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6078 8007 0
    ai_walk(7.000);
};

// demon1_walk5
// function begins at statement 12860
OP_STATE	4861	8008	0
OP_STORE_V	6076	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4861 8008 0
    ai_walk(4.000);
};

// demon1_walk6
// function begins at statement 12864
OP_STATE	3319	8009	0
OP_STORE_V	314	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3319 8009 0
    ai_walk(6.000);
};

// demon1_walk7
// function begins at statement 12868
OP_STATE	7776	8010	0
OP_STORE_V	318	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7776 8010 0
    ai_walk(10.000);
};

// demon1_walk8
// function begins at statement 12872
OP_STATE	894	8001	0
OP_STORE_V	318	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () demon1_walk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 894 8001 0
    ai_walk(10.000);
};

void() demon1_run1;
// demon1_run1
// function begins at statement 12876
OP_STATE	7779	8012	0
OP_CALL0	452	0	0
OP_LT	1	836	8013
OP_IFNOT	8013	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	8004	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_STORE_V	894	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7779 8012 0
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
    ai_run(20.000);
};

// demon1_run2
// function begins at statement 12889
OP_STATE	7781	8014	0
OP_STORE_V	1876	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7781 8014 0
    ai_run(15.000);
};

// demon1_run3
// function begins at statement 12893
OP_STATE	301	8015	0
OP_STORE_V	5096	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 301 8015 0
    ai_run(36.000);
};

// demon1_run4
// function begins at statement 12897
OP_STATE	4437	8016	0
OP_STORE_V	894	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4437 8016 0
    ai_run(20.000);
};

// demon1_run5
// function begins at statement 12901
OP_STATE	1890	8017	0
OP_STORE_V	1876	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1890 8017 0
    ai_run(15.000);
};

// demon1_run6
// function begins at statement 12905
OP_STATE	7788	8011	0
OP_STORE_V	5096	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () demon1_run6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7788 8011 0
    ai_run(36.000);
};

void() demon1_jump1;
// demon1_jump1
// function begins at statement 12909
OP_STATE	302	8019	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () demon1_jump1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 302 8019 0
    ai_face();
};

// demon1_jump2
// function begins at statement 12912
OP_STATE	303	8020	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () demon1_jump2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 303 8020 0
    ai_face();
};

// demon1_jump3
// function begins at statement 12915
OP_STATE	5105	8021	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () demon1_jump3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5105 8021 0
    ai_face();
};

// demon1_jump4
// function begins at statement 12918
OP_STATE	304	8022	0
OP_CALL0	758	0	0
OP_ADDRESS	28	146	8023
OP_STOREP_FNC	7987	8023	0
OP_LOAD_V	28	117	8024
OP_STORE_V	8024	4	0
OP_CALL1	447	0	0
OP_ADDRESS	28	108	8027
OP_LOAD_F	28	108	8028
OP_ADD_F	8028	7368	8029
OP_STOREP_F	8029	8027	0
OP_ADDRESS	28	113	8030
OP_MUL_VF	59	1029	8033
OP_ADD_V	8033	8036	8039
OP_STOREP_V	8039	8030	0
OP_LOAD_F	28	182	8042
OP_BITAND	8042	223	8043
OP_IFNOT	8043	5	0
OP_ADDRESS	28	182	8044
OP_LOAD_F	28	182	8045
OP_SUB_F	8045	223	8046
OP_STOREP_F	8046	8044	0
OP_DONE	0	0	0
voidTODO () demon1_jump4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 304 8022 0
    ai_face();
    self.touch = Demon_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + 1.000;
    // *** UNPROCESSED OPCODE OP_ADD_V 8033 8036 8039
    self.velocity = ;
    
    if(self.flags & 512.000)
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 8045 223 8046
        self.flags = ;
    }
    
};

// demon1_jump5
// function begins at statement 12941
OP_STATE	305	8047	0
OP_DONE	0	0	0
voidTODO () demon1_jump5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 305 8047 0
};

// demon1_jump6
// function begins at statement 12943
OP_STATE	5674	8048	0
OP_DONE	0	0	0
voidTODO () demon1_jump6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5674 8048 0
};

// demon1_jump7
// function begins at statement 12945
OP_STATE	307	8049	0
OP_DONE	0	0	0
voidTODO () demon1_jump7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 307 8049 0
};

// demon1_jump8
// function begins at statement 12947
OP_STATE	5112	8050	0
OP_DONE	0	0	0
voidTODO () demon1_jump8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5112 8050 0
};

// demon1_jump9
// function begins at statement 12949
OP_STATE	3072	8051	0
OP_DONE	0	0	0
voidTODO () demon1_jump9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3072 8051 0
};

// demon1_jump10
// function begins at statement 12951
OP_STATE	5096	8018	0
OP_ADDRESS	28	150	8052
OP_ADD_F	31	370	8053
OP_STOREP_F	8053	8052	0
OP_DONE	0	0	0
voidTODO () demon1_jump10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5096 8018 0
    self.nextthink = 0.000 + 3.000;
};

void() demon1_jump11;
// demon1_jump11
// function begins at statement 12956
OP_STATE	5098	8055	0
OP_DONE	0	0	0
voidTODO () demon1_jump11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5098 8055 0
};

// demon1_jump12
// function begins at statement 12958
OP_STATE	5100	8011	0
OP_DONE	0	0	0
voidTODO () demon1_jump12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5100 8011 0
};

void() demon1_atta1;
// demon1_atta1
// function begins at statement 12960
OP_STATE	5357	8057	0
OP_STORE_V	6076	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5357 8057 0
    ai_charge(4.000);
};

// demon1_atta2
// function begins at statement 12964
OP_STATE	5359	8058	0
OP_STORE_V	337	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5359 8058 0
    ai_charge(0.000);
};

// demon1_atta3
// function begins at statement 12968
OP_STATE	5361	8059	0
OP_STORE_V	337	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5361 8059 0
    ai_charge(0.000);
};

// demon1_atta4
// function begins at statement 12972
OP_STATE	5363	8060	0
OP_STORE_V	7368	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5363 8060 0
    ai_charge(1.000);
};

// demon1_atta5
// function begins at statement 12976
OP_STATE	5365	8061	0
OP_STORE_V	7369	4	0
OP_CALL1	857	0	0
OP_STORE_V	1965	4	0
OP_CALL1	756	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5365 8061 0
    ai_charge(2.000);
    Demon_Melee(200.000);
};

// demon1_atta6
// function begins at statement 12982
OP_STATE	5367	8062	0
OP_STORE_V	7368	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5367 8062 0
    ai_charge(1.000);
};

// demon1_atta7
// function begins at statement 12986
OP_STATE	912	8063	0
OP_STORE_V	314	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 912 8063 0
    ai_charge(6.000);
};

// demon1_atta8
// function begins at statement 12990
OP_STATE	5369	8064	0
OP_STORE_V	6077	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5369 8064 0
    ai_charge(8.000);
};

// demon1_atta9
// function begins at statement 12994
OP_STATE	5371	8065	0
OP_STORE_V	6076	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 8065 0
    ai_charge(4.000);
};

// demon1_atta10
// function begins at statement 12998
OP_STATE	3872	8066	0
OP_STORE_V	7369	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3872 8066 0
    ai_charge(2.000);
};

// demon1_atta11
// function begins at statement 13002
OP_STATE	260	8067	0
OP_STORE_V	5210	4	0
OP_CALL1	756	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 260 8067 0
    Demon_Melee(-200.000);
};

// demon1_atta12
// function begins at statement 13006
OP_STATE	5375	8068	0
OP_STORE_V	313	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5375 8068 0
    ai_charge(5.000);
};

// demon1_atta13
// function begins at statement 13010
OP_STATE	5377	8069	0
OP_STORE_V	6077	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5377 8069 0
    ai_charge(8.000);
};

// demon1_atta14
// function begins at statement 13014
OP_STATE	5379	8070	0
OP_STORE_V	6076	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 8070 0
    ai_charge(4.000);
};

// demon1_atta15
// function begins at statement 13018
OP_STATE	5381	8011	0
OP_STORE_V	6076	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () demon1_atta15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 8011 0
    ai_charge(4.000);
};

void() demon1_pain1;
// demon1_pain1
// function begins at statement 13022
OP_STATE	5102	8072	0
OP_DONE	0	0	0
voidTODO () demon1_pain1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5102 8072 0
};

// demon1_pain2
// function begins at statement 13024
OP_STATE	1733	8073	0
OP_DONE	0	0	0
voidTODO () demon1_pain2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1733 8073 0
};

// demon1_pain3
// function begins at statement 13026
OP_STATE	5443	8074	0
OP_DONE	0	0	0
voidTODO () demon1_pain3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5443 8074 0
};

// demon1_pain4
// function begins at statement 13028
OP_STATE	5445	8075	0
OP_DONE	0	0	0
voidTODO () demon1_pain4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5445 8075 0
};

// demon1_pain5
// function begins at statement 13030
OP_STATE	5447	8076	0
OP_DONE	0	0	0
voidTODO () demon1_pain5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5447 8076 0
};

// demon1_pain6
// function begins at statement 13032
OP_STATE	5449	8011	0
OP_DONE	0	0	0
voidTODO () demon1_pain6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5449 8011 0
};

void() demon1_pain;
// demon1_pain
// function begins at statement 13034
OP_LOAD_FNC	28	146	8080
OP_EQ_FNC	8080	7987	8081
OP_IFNOT	8081	2	0
OP_RETURN	0	0	0
OP_LOAD_F	28	374	8082
OP_GT	8082	31	8083
OP_IFNOT	8083	2	0
OP_RETURN	0	0	0
OP_ADDRESS	28	374	8084
OP_ADD_F	31	7368	8085
OP_STOREP_F	8085	8084	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	8086	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_CALL0	452	0	0
OP_MUL_F	1	1965	8087
OP_GT	8087	8079	8088
OP_IFNOT	8088	2	0
OP_RETURN	0	0	0
OP_CALL0	8071	0	0
OP_DONE	0	0	0
voidTODO (entity attacker, float damage) demon1_pain =
{
    // *** UNPROCESSED OPCODE OP_EQ_FNC 8080 7987 8081
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GT 8082 31 8083
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    self.pain_finished = 0.000 + 1.000;
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1965 8087
    // *** UNPROCESSED OPCODE OP_GT 8087 8079 8088
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    demon1_pain1();
};

void() demon1_die1;
// demon1_die1
// function begins at statement 13058
OP_STATE	1390	8090	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	8091	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () demon1_die1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1390 8090 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
};

// demon1_die2
// function begins at statement 13066
OP_STATE	5452	8092	0
OP_DONE	0	0	0
voidTODO () demon1_die2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5452 8092 0
};

// demon1_die3
// function begins at statement 13068
OP_STATE	5454	8093	0
OP_DONE	0	0	0
voidTODO () demon1_die3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5454 8093 0
};

// demon1_die4
// function begins at statement 13070
OP_STATE	5456	8094	0
OP_DONE	0	0	0
voidTODO () demon1_die4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5456 8094 0
};

// demon1_die5
// function begins at statement 13072
OP_STATE	5458	8095	0
OP_DONE	0	0	0
voidTODO () demon1_die5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5458 8095 0
};

// demon1_die6
// function begins at statement 13074
OP_STATE	2227	8096	0
OP_ADDRESS	28	104	8097
OP_STOREP_F	237	8097	0
OP_DONE	0	0	0
voidTODO () demon1_die6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2227 8096 0
    self.solid = 0.000;
};

// demon1_die7
// function begins at statement 13078
OP_STATE	5351	8098	0
OP_DONE	0	0	0
voidTODO () demon1_die7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5351 8098 0
};

// demon1_die8
// function begins at statement 13080
OP_STATE	5353	8099	0
OP_DONE	0	0	0
voidTODO () demon1_die8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5353 8099 0
};

// demon1_die9
// function begins at statement 13082
OP_STATE	5355	8099	0
OP_DONE	0	0	0
voidTODO () demon1_die9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 8099 0
};

void() demon_die;
// demon_die
// function begins at statement 13084
OP_LOAD_F	28	152	8101
OP_LT	8101	7963	8102
OP_IFNOT	8102	24	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	3826	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_LOAD_F	28	152	8104
OP_STORE_V	8103	4	0
OP_STORE_V	8104	7	0
OP_CALL2	5247	0	0
OP_LOAD_F	28	152	8105
OP_STORE_V	3852	4	0
OP_STORE_V	8105	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	8106
OP_STORE_V	3852	4	0
OP_STORE_V	8106	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	8107
OP_STORE_V	3852	4	0
OP_STORE_V	8107	7	0
OP_CALL2	5218	0	0
OP_RETURN	0	0	0
OP_CALL0	8089	0	0
OP_DONE	0	0	0
voidTODO () demon_die =
{
    
    if(self.health < (-80.000))
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
        ThrowHead(, self.health);
        ThrowGib("IMMEDIATE", self.health);
        ThrowGib("IMMEDIATE", self.health);
        ThrowGib("IMMEDIATE", self.health);
        return; /* TODO retvalue? */
    }
    
    demon1_die1();
};

void() Demon_MeleeAttack;
// Demon_MeleeAttack
// function begins at statement 13112
OP_CALL0	8056	0	0
OP_DONE	0	0	0
voidTODO () Demon_MeleeAttack =
{
    demon1_atta1();
};

void() monster_demon1;
// monster_demon1
// function begins at statement 13114
OP_IFNOT	35	4	0
OP_STORE_V	28	4	0
OP_CALL1	460	0	0
OP_RETURN	0	0	0
OP_STORE_V	8110	4	0
OP_CALL1	465	0	0
OP_STORE_V	8103	4	0
OP_CALL1	465	0	0
OP_STORE_V	8091	4	0
OP_CALL1	464	0	0
OP_STORE_V	8111	4	0
OP_CALL1	464	0	0
OP_STORE_V	8112	4	0
OP_CALL1	464	0	0
OP_STORE_V	8086	4	0
OP_CALL1	464	0	0
OP_STORE_V	8004	4	0
OP_CALL1	464	0	0
OP_STORE_V	1249	4	0
OP_CALL1	464	0	0
OP_ADDRESS	28	104	8113
OP_STOREP_F	240	8113	0
OP_ADDRESS	28	103	8114
OP_STOREP_F	229	8114	0
OP_STORE_V	28	4	0
OP_STORE_V	8110	7	0
OP_CALL2	449	0	0
OP_STORE_V	28	4	0
OP_STORE_V	295	7	0
OP_STORE_V	298	10	0
OP_CALL3	450	0	0
OP_ADDRESS	28	152	8115
OP_STOREP_F	2596	8115	0
OP_ADDRESS	28	356	8116
OP_STOREP_FNC	7988	8116	0
OP_ADDRESS	28	357	8117
OP_STOREP_FNC	8001	8117	0
OP_ADDRESS	28	358	8118
OP_STOREP_FNC	8011	8118	0
OP_ADDRESS	28	362	8119
OP_STOREP_FNC	8100	8119	0
OP_ADDRESS	28	360	8120
OP_STOREP_FNC	8108	8120	0
OP_ADDRESS	28	359	8121
OP_STOREP_FNC	8018	8121	0
OP_ADDRESS	28	361	8122
OP_STOREP_FNC	8077	8122	0
OP_CALL0	5557	0	0
OP_DONE	0	0	0
voidTODO () monster_demon1 =
{
    
    if(0.000)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    precache_model("IMMEDIATE");
    precache_model();
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    self.solid = 3.000;
    self.movetype = 4.000;
    setmodel(self, "IMMEDIATE");
    setsize(self, '-32.000 -32.000 -24.000', '32.000 32.000 64.000');
    self.health = 300.000;
    self.th_stand = demon1_stand1;
    self.th_walk = demon1_walk1;
    self.th_run = demon1_run1;
    self.th_die = demon_die;
    self.th_melee = Demon_MeleeAttack;
    self.th_missile = demon1_jump1;
    self.th_pain = demon1_pain;
    walkmonster_start();
};

void() CheckDemonMelee;
// CheckDemonMelee
// function begins at statement 13163
OP_EQ_F	761	242	8124
OP_IFNOT	8124	4	0
OP_ADDRESS	28	367	8125
OP_STOREP_F	370	8125	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_DONE	0	0	0
voidTODO () CheckDemonMelee =
{
    
    if(0.000 == 0.000)
    {
        self.attack_state = 3.000;
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

void() CheckDemonJump;
// CheckDemonJump
// function begins at statement 13170
OP_LOAD_F	28	108	8131
OP_LOAD_F	28	137	8132
OP_ADD_F	8131	8132	8133
OP_LOAD_ENT	28	181	8134
OP_LOAD_F	8134	108	8135
OP_LOAD_ENT	28	181	8136
OP_LOAD_F	8136	137	8137
OP_ADD_F	8135	8137	8138
OP_LOAD_ENT	28	181	8139
OP_LOAD_F	8139	145	8140
OP_MUL_F	3464	8140	8141
OP_ADD_F	8138	8141	8142
OP_GT	8133	8142	8143
OP_IFNOT	8143	2	0
OP_RETURN	213	0	0
OP_LOAD_F	28	108	8144
OP_LOAD_F	28	141	8145
OP_ADD_F	8144	8145	8146
OP_LOAD_ENT	28	181	8147
OP_LOAD_F	8147	108	8148
OP_LOAD_ENT	28	181	8149
OP_LOAD_F	8149	137	8150
OP_ADD_F	8148	8150	8151
OP_LOAD_ENT	28	181	8152
OP_LOAD_F	8152	145	8153
OP_MUL_F	3461	8153	8154
OP_ADD_F	8151	8154	8155
OP_LT	8146	8155	8156
OP_IFNOT	8156	2	0
OP_RETURN	213	0	0
OP_LOAD_ENT	28	181	8157
OP_LOAD_V	8157	105	8158
OP_LOAD_V	28	105	8161
OP_SUB_V	8158	8161	8164
OP_STORE_V	8164	8127	0
OP_STORE_F	337	8129	0
OP_STORE_V	8127	4	0
OP_CALL1	457	0	0
OP_STORE_F	1	8130	0
OP_LT	8130	1884	8167
OP_IFNOT	8167	2	0
OP_RETURN	213	0	0
OP_GT	8130	1965	8168
OP_IFNOT	8168	5	0
OP_CALL0	452	0	0
OP_LT	1	832	8169
OP_IFNOT	8169	2	0
OP_RETURN	213	0	0
OP_RETURN	214	0	0
OP_DONE	0	0	0
voidTODO () CheckDemonJump =
{
    local vector dist;
    local float d;
    // *** UNPROCESSED OPCODE OP_MUL_F 3464 8140 8141
    // *** UNPROCESSED OPCODE OP_GT 8133 8142 8143
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_MUL_F 3461 8153 8154
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + ))
    {
        return; /* TODO retvalue? */
    }
    
    dist = self.enemy.origin - self.origin;
     = 0.000;
    d = vlen(dist);
    
    if(d < 100.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GT 8130 1965 8168
    
    if()
    {
        
        if(random() < 0.900)
        {
            return; /* TODO retvalue? */
        }
        
    }
    
    return; /* TODO retvalue? */
};

// DemonCheckAttack
// function begins at statement 13220
OP_CALL0	8123	0	0
OP_IFNOT	1	4	0
OP_ADDRESS	28	367	8173
OP_STOREP_F	370	8173	0
OP_RETURN	214	0	0
OP_CALL0	8126	0	0
OP_IFNOT	1	10	0
OP_ADDRESS	28	367	8174
OP_STOREP_F	371	8174	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	8112	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_DONE	0	0	0
voidTODO () DemonCheckAttack =
{
    local vector vec;
    
    if(CheckDemonMelee())
    {
        self.attack_state = 3.000;
        return; /* TODO retvalue? */
    }
    
    
    if(CheckDemonJump())
    {
        self.attack_state = 4.000;
        sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

// Demon_Melee
// function begins at statement 13238
OP_CALL0	758	0	0
OP_LOAD_F	28	191	8180
OP_STORE_V	8180	4	0
OP_STORE_V	2250	7	0
OP_CALL2	477	0	0
OP_LOAD_ENT	28	181	8181
OP_LOAD_V	8181	105	8182
OP_LOAD_V	28	105	8185
OP_SUB_V	8182	8185	8188
OP_STORE_V	8188	8177	0
OP_STORE_V	8177	4	0
OP_CALL1	457	0	0
OP_GT	1	1884	8191
OP_IFNOT	8191	2	0
OP_RETURN	0	0	0
OP_LOAD_ENT	28	181	8192
OP_STORE_V	8192	4	0
OP_STORE_V	28	7	0
OP_CALL2	522	0	0
OP_NOT_F	1	0	8193
OP_IFNOT	8193	2	0
OP_RETURN	0	0	0
OP_STORE_V	28	4	0
OP_STORE_V	321	7	0
OP_STORE_V	8111	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_CALL0	452	0	0
OP_MUL_F	313	1	8194
OP_ADD_F	318	8194	8195
OP_STORE_F	8195	8176	0
OP_LOAD_ENT	28	181	8196
OP_STORE_V	8196	4	0
OP_STORE_V	28	7	0
OP_STORE_V	28	10	0
OP_STORE_V	8176	13	0
OP_CALL4	520	0	0
OP_LOAD_V	28	117	8197
OP_STORE_V	8197	4	0
OP_CALL1	447	0	0
OP_LOAD_V	28	105	8200
OP_MUL_VF	59	6078	8203
OP_ADD_V	8200	8203	8206
OP_MUL_FV	8175	65	8209
OP_STORE_V	8206	4	0
OP_STORE_V	8209	7	0
OP_CALL2	2696	0	0
OP_DONE	0	0	0
voidTODO (float side) Demon_Melee =
{
    local float ldmg;
    local vector delta;
    ai_face();
    walkmove(self.ideal_yaw, 12.000);
    delta = self.enemy.origin - self.origin;
    // *** UNPROCESSED OPCODE OP_GT 1 1884 8191
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return; /* TODO retvalue? */
    }
    
    sound(self, 1.000, "IMMEDIATE", 1.000, 1.000);
    random();
    // *** UNPROCESSED OPCODE OP_MUL_F 313 1 8194
    ldmg = 10.000 + ;
    T_Damage(self.enemy, self, self, ldmg);
    makevectors(self.angles);
    // *** UNPROCESSED OPCODE OP_ADD_V 8200 8203 8206
    // *** UNPROCESSED OPCODE OP_MUL_FV 8175 65 8209
    SpawnMeatSpray(, );
};

/* ERROR: NULL TYPE */ ;
/* ERROR: NULL TYPE */ ;
// Demon_JumpTouch
// function begins at statement 13287
OP_LOAD_F	28	152	8213
OP_LE	8213	337	8214
OP_IFNOT	8214	2	0
OP_RETURN	0	0	0
OP_LOAD_F	29	163	8215
OP_IFNOT	8215	15	0
OP_LOAD_V	28	113	8216
OP_STORE_V	8216	4	0
OP_CALL1	457	0	0
OP_GT	1	3036	8219
OP_IFNOT	8219	10	0
OP_CALL0	452	0	0
OP_MUL_F	318	1	8220
OP_ADD_F	1733	8220	8221
OP_STORE_F	8221	8212	0
OP_STORE_V	29	4	0
OP_STORE_V	28	7	0
OP_STORE_V	28	10	0
OP_STORE_V	8212	13	0
OP_CALL4	520	0	0
OP_STORE_V	28	4	0
OP_CALL1	483	0	0
OP_NOT_F	1	0	8222
OP_IFNOT	8222	12	0
OP_LOAD_F	28	182	8223
OP_BITAND	8223	223	8224
OP_IFNOT	8224	8	0
OP_ADDRESS	28	146	8225
OP_STOREP_FNC	517	8225	0
OP_ADDRESS	28	148	8226
OP_STOREP_FNC	8018	8226	0
OP_ADDRESS	28	150	8227
OP_ADD_F	31	603	8228
OP_STOREP_F	8228	8227	0
OP_RETURN	0	0	0
OP_ADDRESS	28	146	8229
OP_STOREP_FNC	517	8229	0
OP_ADDRESS	28	148	8230
OP_STOREP_FNC	8054	8230	0
OP_ADDRESS	28	150	8231
OP_ADD_F	31	603	8232
OP_STOREP_F	8232	8231	0
OP_DONE	0	0	0
voidTODO () Demon_JumpTouch =
{
    local float ldmg;
    
    if(self.health <= 0.000)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.takedamage)
    {
        // *** UNPROCESSED OPCODE OP_GT 1 3036 8219
        
        if()
        {
            random();
            // *** UNPROCESSED OPCODE OP_MUL_F 318 1 8220
            ldmg = 40.000 + ;
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & 512.000)
        {
            self.touch = SUB_Null;
            self.think = demon1_jump1;
            self.nextthink = 0.000 + 0.100;
        }
        
        return; /* TODO retvalue? */
    }
    
    self.touch = SUB_Null;
    self.think = demon1_jump11;
    self.nextthink = 0.000 + 0.100;
};

