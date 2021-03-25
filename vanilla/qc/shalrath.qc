void () shalrath_pain;
void () ShalMissile;
// shal_stand
// function begins at statement 19491, parm_start=10867
// OP_STATE	301	10866	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () shal_stand =
{
    *** UNPROCESSED OPCODE OP_STATE 301 10866 0
    ai_stand();
};

// shal_walk1
// function begins at statement 19494, parm_start=10868
// OP_STATE	4437	10868	0
// OP_CALL0	452	0	0
// OP_LT	1	836	10869
// OP_IFNOT	10869	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10870	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	314	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4437 10868 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_walk(TE_LIGHTNING2);
};

// shal_walk2
// function begins at statement 19507, parm_start=10871
// OP_STATE	1890	10871	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 1890 10871 0
    ai_walk(SECRET_1ST_DOWN);
};

// shal_walk3
// function begins at statement 19511, parm_start=10872
// OP_STATE	7788	10872	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7788 10872 0
    ai_walk(MSG_BROADCAST);
};

// shal_walk4
// function begins at statement 19515, parm_start=10873
// OP_STATE	302	10873	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 302 10873 0
    ai_walk(MSG_BROADCAST);
};

// shal_walk5
// function begins at statement 19519, parm_start=10874
// OP_STATE	303	10874	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 303 10874 0
    ai_walk(MSG_BROADCAST);
};

// shal_walk6
// function begins at statement 19523, parm_start=10875
// OP_STATE	5105	10875	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 10875 0
    ai_walk(MSG_BROADCAST);
};

// shal_walk7
// function begins at statement 19527, parm_start=10876
// OP_STATE	304	10876	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 10876 0
    ai_walk(TE_LIGHTNING1);
};

// shal_walk8
// function begins at statement 19531, parm_start=10877
// OP_STATE	305	10877	0
// OP_STORE_V	314	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 10877 0
    ai_walk(TE_LIGHTNING2);
};

// shal_walk9
// function begins at statement 19535, parm_start=10878
// OP_STATE	5674	10878	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 10878 0
    ai_walk(TE_LIGHTNING1);
};

// shal_walk10
// function begins at statement 19539, parm_start=10879
// OP_STATE	307	10879	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk10 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 10879 0
    ai_walk(MSG_BROADCAST);
};

// shal_walk11
// function begins at statement 19543, parm_start=10880
// OP_STATE	5112	10880	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 10880 0
    ai_walk(SECRET_1ST_DOWN);
};

// shal_walk12
// function begins at statement 19547, parm_start=10881
// OP_STATE	301	10867	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () shal_walk12 =
{
    *** UNPROCESSED OPCODE OP_STATE 301 10867 0
    ai_walk(TE_LIGHTNING1);
};

// shal_run1
// function begins at statement 19551, parm_start=10882
// OP_STATE	4437	10882	0
// OP_CALL0	452	0	0
// OP_LT	1	836	10883
// OP_IFNOT	10883	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10870	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	314	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4437 10882 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_run(TE_LIGHTNING2);
};

// shal_run2
// function begins at statement 19564, parm_start=10884
// OP_STATE	1890	10884	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run2 =
{
    *** UNPROCESSED OPCODE OP_STATE 1890 10884 0
    ai_run(SECRET_1ST_DOWN);
};

// shal_run3
// function begins at statement 19568, parm_start=10885
// OP_STATE	7788	10885	0
// OP_STORE_V	337	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7788 10885 0
    ai_run(MSG_BROADCAST);
};

// shal_run4
// function begins at statement 19572, parm_start=10886
// OP_STATE	302	10886	0
// OP_STORE_V	337	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run4 =
{
    *** UNPROCESSED OPCODE OP_STATE 302 10886 0
    ai_run(MSG_BROADCAST);
};

// shal_run5
// function begins at statement 19576, parm_start=10887
// OP_STATE	303	10887	0
// OP_STORE_V	337	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run5 =
{
    *** UNPROCESSED OPCODE OP_STATE 303 10887 0
    ai_run(MSG_BROADCAST);
};

// shal_run6
// function begins at statement 19580, parm_start=10888
// OP_STATE	5105	10888	0
// OP_STORE_V	337	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 10888 0
    ai_run(MSG_BROADCAST);
};

// shal_run7
// function begins at statement 19584, parm_start=10889
// OP_STATE	304	10889	0
// OP_STORE_V	313	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run7 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 10889 0
    ai_run(TE_LIGHTNING1);
};

// shal_run8
// function begins at statement 19588, parm_start=10890
// OP_STATE	305	10890	0
// OP_STORE_V	314	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run8 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 10890 0
    ai_run(TE_LIGHTNING2);
};

// shal_run9
// function begins at statement 19592, parm_start=10891
// OP_STATE	5674	10891	0
// OP_STORE_V	313	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 10891 0
    ai_run(TE_LIGHTNING1);
};

// shal_run10
// function begins at statement 19596, parm_start=10892
// OP_STATE	307	10892	0
// OP_STORE_V	337	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run10 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 10892 0
    ai_run(MSG_BROADCAST);
};

// shal_run11
// function begins at statement 19600, parm_start=10893
// OP_STATE	5112	10893	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 10893 0
    ai_run(SECRET_1ST_DOWN);
};

// shal_run12
// function begins at statement 19604, parm_start=10894
// OP_STATE	301	10881	0
// OP_STORE_V	313	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () shal_run12 =
{
    *** UNPROCESSED OPCODE OP_STATE 301 10881 0
    ai_run(TE_LIGHTNING1);
};

// shal_attack1
// function begins at statement 19608, parm_start=10895
// OP_STATE	337	10895	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10896	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 10895 0
    sound(self, CHAN_VOICE, "shalrath/attack.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    ai_face();
};

// shal_attack2
// function begins at statement 19617, parm_start=10897
// OP_STATE	9491	10897	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack2 =
{
    *** UNPROCESSED OPCODE OP_STATE 9491 10897 0
    ai_face();
};

// shal_attack3
// function begins at statement 19620, parm_start=10898
// OP_STATE	7369	10898	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 10898 0
    ai_face();
};

// shal_attack4
// function begins at statement 19623, parm_start=10899
// OP_STATE	370	10899	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 10899 0
    ai_face();
};

// shal_attack5
// function begins at statement 19626, parm_start=10900
// OP_STATE	6076	10900	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 10900 0
    ai_face();
};

// shal_attack6
// function begins at statement 19629, parm_start=10901
// OP_STATE	313	10901	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 10901 0
    ai_face();
};

// shal_attack7
// function begins at statement 19632, parm_start=10902
// OP_STATE	314	10902	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 10902 0
    ai_face();
};

// shal_attack8
// function begins at statement 19635, parm_start=10903
// OP_STATE	315	10903	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack8 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 10903 0
    ai_face();
};

// shal_attack9
// function begins at statement 19638, parm_start=10904
// OP_STATE	6077	10904	0
// OP_CALL0	10865	0	0
// OP_DONE	0	0	0
void () shal_attack9 =
{
    *** UNPROCESSED OPCODE OP_STATE 6077 10904 0
    ShalMissile();
};

// shal_attack10
// function begins at statement 19641, parm_start=10905
// OP_STATE	317	10905	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () shal_attack10 =
{
    *** UNPROCESSED OPCODE OP_STATE 317 10905 0
    ai_face();
};

// shal_attack11
// function begins at statement 19644, parm_start=10906
// OP_STATE	318	10881	0
// OP_DONE	0	0	0
void () shal_attack11 =
{
    *** UNPROCESSED OPCODE OP_STATE 318 10881 0
};

// shal_pain1
// function begins at statement 19646, parm_start=10907
// OP_STATE	319	10907	0
// OP_DONE	0	0	0
void () shal_pain1 =
{
    *** UNPROCESSED OPCODE OP_STATE 319 10907 0
};

// shal_pain2
// function begins at statement 19648, parm_start=10908
// OP_STATE	2250	10908	0
// OP_DONE	0	0	0
void () shal_pain2 =
{
    *** UNPROCESSED OPCODE OP_STATE 2250 10908 0
};

// shal_pain3
// function begins at statement 19650, parm_start=10909
// OP_STATE	7768	10909	0
// OP_DONE	0	0	0
void () shal_pain3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7768 10909 0
};

// shal_pain4
// function begins at statement 19652, parm_start=10910
// OP_STATE	2901	10910	0
// OP_DONE	0	0	0
void () shal_pain4 =
{
    *** UNPROCESSED OPCODE OP_STATE 2901 10910 0
};

// shal_pain5
// function begins at statement 19654, parm_start=10911
// OP_STATE	1876	10881	0
// OP_DONE	0	0	0
void () shal_pain5 =
{
    *** UNPROCESSED OPCODE OP_STATE 1876 10881 0
};

// shal_death1
// function begins at statement 19656, parm_start=10912
// OP_STATE	6078	10912	0
// OP_DONE	0	0	0
void () shal_death1 =
{
    *** UNPROCESSED OPCODE OP_STATE 6078 10912 0
};

// shal_death2
// function begins at statement 19658, parm_start=10913
// OP_STATE	4861	10913	0
// OP_DONE	0	0	0
void () shal_death2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4861 10913 0
};

// shal_death3
// function begins at statement 19660, parm_start=10914
// OP_STATE	3319	10914	0
// OP_DONE	0	0	0
void () shal_death3 =
{
    *** UNPROCESSED OPCODE OP_STATE 3319 10914 0
};

// shal_death4
// function begins at statement 19662, parm_start=10915
// OP_STATE	7776	10915	0
// OP_DONE	0	0	0
void () shal_death4 =
{
    *** UNPROCESSED OPCODE OP_STATE 7776 10915 0
};

// shal_death5
// function begins at statement 19664, parm_start=10916
// OP_STATE	894	10916	0
// OP_DONE	0	0	0
void () shal_death5 =
{
    *** UNPROCESSED OPCODE OP_STATE 894 10916 0
};

// shal_death6
// function begins at statement 19666, parm_start=10917
// OP_STATE	7779	10917	0
// OP_DONE	0	0	0
void () shal_death6 =
{
    *** UNPROCESSED OPCODE OP_STATE 7779 10917 0
};

// shal_death7
// function begins at statement 19668, parm_start=10918
// OP_STATE	7781	10917	0
// OP_DONE	0	0	0
void () shal_death7 =
{
    *** UNPROCESSED OPCODE OP_STATE 7781 10917 0
};

// shalrath_pain
// function begins at statement 19670, parm_start=10918
// OP_LOAD_F	28	374	10918
// OP_GT	10918	31	10919
// OP_IFNOT	10919	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10920	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	10906	0	0
// OP_ADDRESS	28	374	10921
// OP_ADD_F	31	370	10922
// OP_STOREP_F	10922	10921	0
// OP_DONE	0	0	0
void () shalrath_pain =
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/pain.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    shal_pain1();
    self.pain_finished = time + AS_MELEE;
};

// shalrath_die
// function begins at statement 19685, parm_start=10924
// OP_LOAD_F	28	152	10924
// OP_LT	10924	1424	10925
// OP_IFNOT	10925	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	10927
// OP_STORE_V	10926	4	0
// OP_STORE_V	10927	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	10928
// OP_STORE_V	3852	4	0
// OP_STORE_V	10928	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	10929
// OP_STORE_V	3853	4	0
// OP_STORE_V	10929	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	10930
// OP_STORE_V	3854	4	0
// OP_STORE_V	10930	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10931	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	10911	0	0
// OP_ADDRESS	28	104	10932
// OP_STOREP_F	237	10932	0
// OP_DONE	0	0	0
void () shalrath_die =
{
    
    if(self.health < -90.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWN_CRUCIFIED, ATTN_NORM);
        ThrowHead(IMMEDIATE, self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/death.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    shal_death1();
    self.solid = SOLID_NOT;
};

void () ShalMissileTouch;
void () ShalHome;
// ShalMissile
// function begins at statement 19721, parm_start=10935
// OP_LOAD_ENT	28	181	10941
// OP_LOAD_V	10941	105	10942
// OP_ADD_V	10942	5626	10945
// OP_LOAD_V	28	105	10948
// OP_SUB_V	10945	10948	10951
// OP_STORE_V	10951	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10936	0
// OP_LOAD_ENT	28	181	10954
// OP_LOAD_V	10954	105	10955
// OP_LOAD_V	28	105	10958
// OP_SUB_V	10955	10958	10961
// OP_STORE_V	10961	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	10939	0
// OP_MUL_F	10939	10964	10965
// OP_STORE_F	10965	10940	0
// OP_LT	10940	603	10966
// OP_IFNOT	10966	2	0
// OP_STORE_F	603	10940	0
// OP_ADDRESS	28	133	10967
// OP_LOAD_F	28	133	10968
// OP_BITOR	10968	334	10969
// OP_STOREP_F	10969	10967	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10970	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	10935	0
// OP_ADDRESS	10935	201	10971
// OP_STOREP_ENT	28	10971	0
// OP_ADDRESS	10935	104	10972
// OP_STOREP_F	239	10972	0
// OP_ADDRESS	10935	103	10973
// OP_STOREP_F	234	10973	0
// OP_STORE_V	10935	4	0
// OP_STORE_V	10974	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	10935	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	10935	105	10975
// OP_LOAD_V	28	105	10978
// OP_ADD_V	10978	5626	10981
// OP_STOREP_V	10981	10975	0
// OP_ADDRESS	10935	113	10984
// OP_MUL_VF	10936	3036	10987
// OP_STOREP_V	10987	10984	0
// OP_ADDRESS	10935	121	10990
// OP_STOREP_V	3186	10990	0
// OP_ADDRESS	10935	150	10993
// OP_ADD_F	10940	31	10994
// OP_STOREP_F	10994	10993	0
// OP_ADDRESS	10935	148	10995
// OP_STOREP_FNC	10934	10995	0
// OP_ADDRESS	10935	181	10996
// OP_LOAD_ENT	28	181	10997
// OP_STOREP_ENT	10997	10996	0
// OP_ADDRESS	10935	146	10998
// OP_STOREP_FNC	10933	10998	0
// OP_DONE	0	0	0
void () ShalMissile =
{
    local entity missile;
    local vector dir;
    local float dist;
    local float flytime;
    dir = normalize((self.enemy.origin + '0.000 0.000 10.000') - self.origin);
    dist = vlen(self.enemy.origin - self.origin);
    flytime = dist * 0.002;
    
    if(flytime < 0.100)
    {
        flytime = 0.100;
    }
    
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "shalrath/attack2.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.solid = SOLID_BBOX;
    missile.movetype = MOVETYPE_FLYMISSILE;
    setmodel(missile, "progs/v_spike.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    missile.origin = self.origin + '0.000 0.000 10.000';
    missile.velocity = dir * 400.000;
    missile.avelocity = '300.000 300.000 300.000';
    missile.nextthink = flytime + time;
    missile.think = ShalHome;
    missile.enemy = self.enemy;
    missile.touch = ShalMissileTouch;
};

// ShalHome
// function begins at statement 19786, parm_start=10999
// OP_LOAD_ENT	28	181	11005
// OP_LOAD_V	11005	105	11006
// OP_ADD_V	11006	5626	11009
// OP_STORE_V	11009	11002	0
// OP_LOAD_ENT	28	181	11012
// OP_LOAD_F	11012	152	11013
// OP_LT	11013	9491	11014
// OP_IFNOT	11014	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	11015
// OP_SUB_V	11002	11015	11018
// OP_STORE_V	11018	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10999	0
// OP_EQ_F	349	370	11021
// OP_IFNOT	11021	5	0
// OP_ADDRESS	28	113	11022
// OP_MUL_VF	10999	11025	11026
// OP_STOREP_V	11026	11022	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	113	11029
// OP_MUL_VF	10999	1859	11032
// OP_STOREP_V	11032	11029	0
// OP_ADDRESS	28	150	11035
// OP_ADD_F	31	836	11036
// OP_STOREP_F	11036	11035	0
// OP_ADDRESS	28	148	11037
// OP_STOREP_FNC	10934	11037	0
// OP_DONE	0	0	0
void () ShalHome =
{
    local vector dir;
    local vector vtemp;
    vtemp = self.enemy.origin + '0.000 0.000 10.000';
    
    if(self.enemy.health < SPAWN_CRUCIFIED)
    {
        remove(self);
        return;
    }
    
    dir = normalize(vtemp - self.origin);
    if(skill == AS_MELEE)
    {
        self.velocity = dir * 350.000;
    }
    else    
    {
        self.velocity = dir * 250.000;
    }
    
    self.nextthink = time + 0.200;
    self.think = ShalHome;
};

// ShalMissileTouch
// function begins at statement 19817, parm_start=11038
// OP_LOAD_ENT	28	201	11038
// OP_EQ_E	29	11038	11039
// OP_IFNOT	11039	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	11040
// OP_EQ_S	11040	1255	11041
// OP_IFNOT	11041	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5041	13	0
// OP_CALL4	520	0	0
// OP_LOAD_ENT	28	201	11042
// OP_STORE_V	28	4	0
// OP_STORE_V	11042	7	0
// OP_STORE_V	1733	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2616	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	11043
// OP_STORE_V	337	4	0
// OP_STORE_V	11043	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	11044
// OP_STORE_V	337	4	0
// OP_STORE_V	11044	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	11045
// OP_STORE_V	337	4	0
// OP_STORE_V	11045	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	113	11046
// OP_STOREP_V	286	11046	0
// OP_ADDRESS	28	146	11049
// OP_STOREP_FNC	517	11049	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2917	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	104	11050
// OP_STOREP_F	237	11050	0
// OP_CALL0	2905	0	0
// OP_DONE	0	0	0
void () ShalMissileTouch =
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.classname == "monster_zombie")
    {
        T_Damage(other, self, self, 110.000);
    }
    
    T_RadiusDamage(self, self.owner, 40.000, world);
    sound(self, CHAN_WEAPON, "weapons/r_exp3.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = VEC_ORIGIN;
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// monster_shalrath
// function begins at statement 19870, parm_start=11052
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	11052	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10926	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10974	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10896	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10970	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10931	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10870	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10920	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1292	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	104	11053
// OP_STOREP_F	240	11053	0
// OP_ADDRESS	28	103	11054
// OP_STOREP_F	229	11054	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11052	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	11055
// OP_STOREP_F	3036	11055	0
// OP_ADDRESS	28	356	11056
// OP_STOREP_FNC	10866	11056	0
// OP_ADDRESS	28	357	11057
// OP_STOREP_FNC	10867	11057	0
// OP_ADDRESS	28	358	11058
// OP_STOREP_FNC	10881	11058	0
// OP_ADDRESS	28	362	11059
// OP_STOREP_FNC	10923	11059	0
// OP_ADDRESS	28	361	11060
// OP_STOREP_FNC	10864	11060	0
// OP_ADDRESS	28	359	11061
// OP_STOREP_FNC	10894	11061	0
// OP_ADDRESS	28	148	11062
// OP_STOREP_FNC	5557	11062	0
// OP_ADDRESS	28	150	11063
// OP_ADD_F	31	603	11064
// OP_CALL0	452	0	0
// OP_MUL_F	1	603	11065
// OP_ADD_F	11064	11065	11066
// OP_STOREP_F	11066	11063	0
// OP_DONE	0	0	0
void () monster_shalrath =
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/shalrath.mdl");
    precache_model2(IMMEDIATE);
    precache_model2("progs/v_spike.mdl");
    precache_sound2("shalrath/attack.wav");
    precache_sound2("shalrath/attack2.wav");
    precache_sound2("shalrath/death.wav");
    precache_sound2("shalrath/idle.wav");
    precache_sound2("shalrath/pain.wav");
    precache_sound2("shalrath/sight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shalrath.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 400.000;
    self.th_stand = shal_stand;
    self.th_walk = shal_walk1;
    self.th_run = shal_run1;
    self.th_die = shalrath_die;
    self.th_pain = shalrath_pain;
    self.th_missile = shal_attack1;
    self.think = walkmonster_start;
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

