// initscore
// function begins at statement 20733, parm_start=11955
// OP_ADDRESS	28	528	11955
// OP_STOREP_F	213	11955	0
// OP_ADDRESS	28	529	11956
// OP_STOREP_F	213	11956	0
// OP_ADDRESS	28	530	11957
// OP_STOREP_F	213	11957	0
// OP_ADDRESS	28	531	11958
// OP_STOREP_F	213	11958	0
// OP_ADDRESS	28	532	11959
// OP_STOREP_F	213	11959	0
// OP_DONE	0	0	0
void () initscore = 
{
    self.playerkills = FALSE;
    self.playerdeaths = FALSE;
    self.botkills = FALSE;
    self.botdeaths = FALSE;
    self.suicides = FALSE;
};

// countkill
// function begins at statement 20744, parm_start=11960
// OP_EQ_F	349	214	11963
// OP_IFNOT	11963	14	0
// OP_STORE_F	2355	11962	0
// OP_LOAD_F	11961	529	11964
// OP_LOAD_F	11961	531	11965
// OP_ADD_F	11964	11965	11966
// OP_GT	11966	235	11967
// OP_IFNOT	11967	2	0
// OP_STORE_F	1227	11962	0
// OP_LOAD_F	11961	529	11968
// OP_LOAD_F	11961	531	11969
// OP_ADD_F	11968	11969	11970
// OP_GT	11970	576	11971
// OP_IFNOT	11971	2	0
// OP_STORE_F	11972	11962	0
// OP_EQ_E	11960	11961	11973
// OP_IFNOT	11973	6	0
// OP_ADDRESS	11960	532	11974
// OP_LOAD_F	11960	532	11975
// OP_ADD_F	11975	214	11976
// OP_STOREP_F	11976	11974	0
// OP_RETURN	0	0	0
// OP_LOAD_S	11960	129	11977
// OP_EQ_S	11977	1102	11978
// OP_IFNOT	11978	22	0
// OP_ADDRESS	11961	529	11979
// OP_LOAD_F	11961	529	11980
// OP_ADD_F	11980	214	11981
// OP_STOREP_F	11981	11979	0
// OP_EQ_F	349	214	11982
// OP_IFNOT	11982	15	0
// OP_LOAD_S	11961	129	11983
// OP_EQ_S	11983	2056	11984
// OP_IFNOT	11984	12	0
// OP_ADDRESS	11961	553	11985
// OP_LOAD_F	11961	553	11986
// OP_CALL0	452	0	0
// OP_MUL_F	11962	1	11987
// OP_ADD_F	11986	11987	11988
// OP_STOREP_F	11988	11985	0
// OP_LOAD_F	11961	553	11989
// OP_GT	11989	228	11990
// OP_IFNOT	11990	3	0
// OP_ADDRESS	11961	553	11991
// OP_STOREP_F	228	11991	0
// OP_GOTO	24	0	0
// OP_LOAD_S	11960	129	11992
// OP_EQ_S	11992	2056	11993
// OP_IFNOT	11993	21	0
// OP_ADDRESS	11961	531	11994
// OP_LOAD_F	11961	531	11995
// OP_ADD_F	11995	214	11996
// OP_STOREP_F	11996	11994	0
// OP_EQ_F	349	214	11997
// OP_IFNOT	11997	15	0
// OP_LOAD_S	11961	129	11998
// OP_EQ_S	11998	1102	11999
// OP_IFNOT	11999	12	0
// OP_ADDRESS	11960	553	12000
// OP_LOAD_F	11960	553	12001
// OP_CALL0	452	0	0
// OP_MUL_F	11962	1	12002
// OP_SUB_F	12001	12002	12003
// OP_STOREP_F	12003	12000	0
// OP_LOAD_F	11960	553	12004
// OP_LT	12004	213	12005
// OP_IFNOT	12005	3	0
// OP_ADDRESS	11960	553	12006
// OP_STOREP_F	213	12006	0
// OP_LOAD_S	11961	129	12007
// OP_EQ_S	12007	1102	12008
// OP_IFNOT	12008	6	0
// OP_ADDRESS	11960	528	12009
// OP_LOAD_F	11960	528	12010
// OP_ADD_F	12010	214	12011
// OP_STOREP_F	12011	12009	0
// OP_GOTO	8	0	0
// OP_LOAD_S	11961	129	12012
// OP_EQ_S	12012	2056	12013
// OP_IFNOT	12013	5	0
// OP_ADDRESS	11960	530	12014
// OP_LOAD_F	11960	530	12015
// OP_ADD_F	12015	214	12016
// OP_STOREP_F	12016	12014	0
// OP_DONE	0	0	0
void (entity killer, entity killed) countkill = 
{
    local float adj;
    
    if(skill == TRUE)
    {
        adj = 0.800;
        
        if((killed.playerdeaths + killed.botdeaths) > MOVETYPE_BOUNCE)
        {
            adj = 0.400;
        }
        
        
        if((killed.playerdeaths + killed.botdeaths) > KINDA_WANT)
        {
            adj = 0.150;
        }
        
    }
    
    
    if(killer == killed)
    {
        killer.suicides = killer.suicides + TRUE;
        return;
    }
    
    if(killer.classname == "player")
    {
        killed.playerdeaths = killed.playerdeaths + TRUE;
        
        if(skill == TRUE)
        {
            
            if(killed.classname == "dmbot")
            {
                killed.skil = killed.skil + (adj * random());
                
                if(killed.skil > MOVETYPE_WALK)
                {
                    killed.skil = MOVETYPE_WALK;
                }
                
            }
            
        }
        
    }
    else
    {
        
        if(killer.classname == "dmbot")
        {
            killed.botdeaths = killed.botdeaths + TRUE;
            
            if(skill == TRUE)
            {
                
                if(killed.classname == "player")
                {
                    killer.skil = killer.skil - (adj * random());
                    
                    if(killer.skil < FALSE)
                    {
                        killer.skil = FALSE;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    if(killed.classname == "player")
    {
        killer.playerkills = killer.playerkills + TRUE;
    }
    else
    {
        
        if(killed.classname == "dmbot")
        {
            killer.botkills = killer.botkills + TRUE;
        }
        
    }
    
};

// FPrintScore
// function begins at statement 20829, parm_start=12018
// OP_GT	12018	4751	12020
// OP_LT	12018	213	12021
// OP_AND	12020	12021	12022
// OP_IFNOT	12022	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4756	7	0
// OP_CALL2	469	0	0
// OP_GOTO	13	0	0
// OP_GE	12018	213	12023
// OP_IFNOT	12023	11	0
// OP_LT	12018	574	12024
// OP_IFNOT	12024	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4756	7	0
// OP_CALL2	469	0	0
// OP_LT	12018	235	12025
// OP_IFNOT	12025	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4756	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	12018	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	12019	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12019	7	0
// OP_CALL2	469	0	0
// OP_DONE	0	0	0
void (float sc) FPrintScore = 
{
    local string fs;
    if((sc > -10.000) && (sc < FALSE))
    {
        sprint(self, " ");
    }
    else
    {
        
        if(sc >= FALSE)
        {
            
            if(sc < MUST_HAVE)
            {
                sprint(self, " ");
            }
            
            
            if(sc < MOVETYPE_BOUNCE)
            {
                sprint(self, " ");
            }
            
        }
        
    }
    
    fs = ftos(sc);
    sprint(self, fs);
};

// totalscore
// function begins at statement 20856, parm_start=12026
// OP_LOAD_F	12026	528	12028
// OP_LOAD_F	12026	530	12029
// OP_ADD_F	12028	12029	12030
// OP_LOAD_F	12026	532	12031
// OP_SUB_F	12030	12031	12032
// OP_MUL_F	216	12032	12033
// OP_LOAD_F	12026	529	12034
// OP_LOAD_F	12026	531	12035
// OP_ADD_F	12034	12035	12036
// OP_SUB_F	12033	12036	12037
// OP_STORE_F	12037	12027	0
// OP_RETURN	12027	0	0
// OP_DONE	0	0	0
float (entity e) totalscore = 
{
    local float sc;
    sc = (FL_SWIM * ((e.playerkills + e.botkills) - e.suicides)) - (e.playerdeaths + e.botdeaths);
    return sc;
};

// PrintScoreFor
// function begins at statement 20869, parm_start=12039
// OP_LOAD_F	12039	528	12042
// OP_STORE_V	12042	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12043	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	12039	529	12044
// OP_STORE_V	12044	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12045	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	12039	530	12046
// OP_STORE_V	12046	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12043	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	12039	531	12047
// OP_STORE_V	12047	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12045	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	12039	532	12048
// OP_STORE_V	12048	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12049	7	0
// OP_CALL2	469	0	0
// OP_EQ_F	12040	573	12050
// OP_IFNOT	12050	5	0
// OP_STORE_V	12039	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12041	0
// OP_GOTO	3	0	0
// OP_LOAD_F	12039	153	12051
// OP_STORE_F	12051	12041	0
// OP_STORE_V	12041	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4756	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	12039	571	12052
// OP_STORE_V	12052	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	12039	180	12053
// OP_STORE_V	12053	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_DONE	0	0	0
void (entity e, float scoretype) PrintScoreFor = 
{
    local float sc;
    FPrintScore(e.playerkills);
    sprint(self, "  ");
    FPrintScore(e.playerdeaths);
    sprint(self, "|");
    FPrintScore(e.botkills);
    sprint(self, "  ");
    FPrintScore(e.botdeaths);
    sprint(self, "|");
    FPrintScore(e.suicides);
    sprint(self, " |");
    if(scoretype == MYSCORE)
    {
        sc = totalscore(e);
    }
    else
    {
        sc = e.frags;
    }
    
    FPrintScore(sc);
    sprint(self, " ");
    sprint(self, e.teamname);
    sprint(self, e.netname);
    sprint(self, "\n");
};

// SortPlayers
// function begins at statement 20924, parm_start=12055
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	12056	0
// OP_STORE_ENT	30	12057	0
// OP_IFNOT	12056	58	0
// OP_NOT_ENT	12057	0	12061
// OP_IFNOT	12061	5	0
// OP_STORE_ENT	12056	12057	0
// OP_ADDRESS	12056	164	12062
// OP_STOREP_ENT	30	12062	0
// OP_GOTO	46	0	0
// OP_EQ_F	12055	573	12063
// OP_IFNOT	12063	8	0
// OP_STORE_V	12056	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12059	0
// OP_STORE_V	12057	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12060	0
// OP_GOTO	5	0	0
// OP_LOAD_F	12056	153	12064
// OP_STORE_F	12064	12059	0
// OP_LOAD_F	12057	153	12065
// OP_STORE_F	12065	12060	0
// OP_GT	12059	12060	12066
// OP_IFNOT	12066	5	0
// OP_ADDRESS	12056	164	12067
// OP_STOREP_ENT	12057	12067	0
// OP_STORE_ENT	12056	12057	0
// OP_GOTO	27	0	0
// OP_STORE_ENT	12057	12058	0
// OP_LOAD_ENT	12058	164	12068
// OP_STORE_V	12068	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12060	0
// OP_LOAD_ENT	12058	164	12069
// OP_NOT_ENT	12069	0	12070
// OP_IFNOT	12070	6	0
// OP_ADDRESS	12056	164	12071
// OP_STOREP_ENT	30	12071	0
// OP_ADDRESS	12058	164	12072
// OP_STOREP_ENT	12056	12072	0
// OP_GOTO	11	0	0
// OP_LT	12060	12059	12073
// OP_IFNOT	12073	7	0
// OP_ADDRESS	12056	164	12074
// OP_LOAD_ENT	12058	164	12075
// OP_STOREP_ENT	12075	12074	0
// OP_ADDRESS	12058	164	12076
// OP_STOREP_ENT	12056	12076	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	12058	164	12077
// OP_STORE_ENT	12077	12058	0
// OP_LOAD_ENT	12058	164	12078
// OP_NE_E	12078	12056	12079
// OP_IF	12079	-20	0
// OP_STORE_V	12056	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	12056	0
// OP_GOTO	-57	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	12056	0
// OP_IFNOT	12056	58	0
// OP_NOT_ENT	12057	0	12080
// OP_IFNOT	12080	5	0
// OP_STORE_ENT	12056	12057	0
// OP_ADDRESS	12056	164	12081
// OP_STOREP_ENT	30	12081	0
// OP_GOTO	46	0	0
// OP_EQ_F	12055	573	12082
// OP_IFNOT	12082	8	0
// OP_STORE_V	12056	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12059	0
// OP_STORE_V	12057	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12060	0
// OP_GOTO	5	0	0
// OP_LOAD_F	12056	153	12083
// OP_STORE_F	12083	12059	0
// OP_LOAD_F	12057	153	12084
// OP_STORE_F	12084	12060	0
// OP_GT	12059	12060	12085
// OP_IFNOT	12085	5	0
// OP_ADDRESS	12056	164	12086
// OP_STOREP_ENT	12057	12086	0
// OP_STORE_ENT	12056	12057	0
// OP_GOTO	27	0	0
// OP_STORE_ENT	12057	12058	0
// OP_LOAD_ENT	12058	164	12087
// OP_STORE_V	12087	4	0
// OP_CALL1	11575	0	0
// OP_STORE_F	1	12060	0
// OP_LOAD_ENT	12058	164	12088
// OP_NOT_ENT	12088	0	12089
// OP_IFNOT	12089	6	0
// OP_ADDRESS	12056	164	12090
// OP_STOREP_ENT	30	12090	0
// OP_ADDRESS	12058	164	12091
// OP_STOREP_ENT	12056	12091	0
// OP_GOTO	11	0	0
// OP_LT	12060	12059	12092
// OP_IFNOT	12092	7	0
// OP_ADDRESS	12056	164	12093
// OP_LOAD_ENT	12058	164	12094
// OP_STOREP_ENT	12094	12093	0
// OP_ADDRESS	12058	164	12095
// OP_STOREP_ENT	12056	12095	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	12058	164	12096
// OP_STORE_ENT	12096	12058	0
// OP_LOAD_ENT	12058	164	12097
// OP_NE_E	12097	12056	12098
// OP_IF	12098	-24	0
// OP_STORE_V	12056	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	12056	0
// OP_GOTO	-57	0	0
// OP_RETURN	12057	0	0
// OP_DONE	0	0	0
entity (float scoretype) SortPlayers = 
{
    local entity e;
    local entity sort;
    local entity walk;
    local float es;
    local float ss;
    e = find(world, classname, "player");
    sort = world;
    
    while(e)
    {
        if(!sort)
        {
            sort = e;
            e.chain = world;
        }
        else
        {
            if(scoretype == MYSCORE)
            {
                es = totalscore(e);
                ss = totalscore(sort);
            }
            else
            {
                es = e.frags;
                ss = sort.frags;
            }
            
            if(es > ss)
            {
                e.chain = sort;
                sort = e;
            }
            else
            {
                walk = sort;
                ss = totalscore(walk.chain);
                do
                {
                    if(!walk.chain)
                    {
                        e.chain = world;
                        walk.chain = e;
                    }
                    else
                    {
                        if(ss < es)
                        {
                            e.chain = walk.chain;
                            walk.chain = e;
                        }
                        else
                        {
                            walk = walk.chain;
                        }
                        
                    }
                    
                } while (walk.chain != e);
            }
            
        }
        
        e = find(e, classname, "player");
    }
    
    e = find(world, classname, "dmbot");
    
    while(e)
    {
        if(!sort)
        {
            sort = e;
            e.chain = world;
        }
        else
        {
            if(scoretype == MYSCORE)
            {
                es = totalscore(e);
                ss = totalscore(sort);
            }
            else
            {
                es = e.frags;
                ss = sort.frags;
            }
            
            if(es > ss)
            {
                e.chain = sort;
                sort = e;
            }
            else
            {
                walk = sort;
                do
                {
                    ss = totalscore(walk.chain);
                    if(!walk.chain)
                    {
                        e.chain = world;
                        walk.chain = e;
                    }
                    else
                    {
                        if(ss < es)
                        {
                            e.chain = walk.chain;
                            walk.chain = e;
                        }
                        else
                        {
                            walk = walk.chain;
                        }
                        
                    }
                    
                } while (walk.chain != e);
            }
            
        }
        
        e = find(e, classname, "dmbot");
    }
    
    return sort;
};

// PrintTopScores
// function begins at statement 21053, parm_start=12100
// OP_LOAD_ENT	30	164	12103
// OP_IFNOT	12103	3	0
// OP_STORE_V	4768	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	572	4	0
// OP_CALL1	12054	0	0
// OP_STORE_ENT	1	12101	0
// OP_STORE_F	213	12102	0
// OP_IFNOT	12101	26	0
// OP_ADD_F	12102	214	12104
// OP_STORE_F	12104	12102	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	12101	571	12105
// OP_STORE_V	12105	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	12101	180	12106
// OP_STORE_V	12106	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12043	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	12101	153	12107
// OP_STORE_V	12107	4	0
// OP_CALL1	12017	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_LOAD_ENT	12101	164	12108
// OP_STORE_ENT	12108	12101	0
// OP_EQ_F	12102	228	12109
// OP_IFNOT	12109	2	0
// OP_STORE_ENT	30	12101	0
// OP_GOTO	-25	0	0
// OP_DONE	0	0	0
void (float scoretype) PrintTopScores = 
{
    local entity sort;
    local float i;
    
    if(world.chain)
    {
        error("DumpScore: world.chain is set");
    }
    
    sort = SortPlayers(NORMALSCORE);
    i = FALSE;
    
    while(sort)
    {
        i = i + TRUE;
        sprint(self, sort.teamname);
        sprint(self, sort.netname);
        sprint(self, "  ");
        FPrintScore(sort.frags);
        sprint(self, "\n");
        sort = sort.chain;
        
        if(i == MOVETYPE_WALK)
        {
            sort = world;
        }
        
    }
    
};

// PrintScores
// function begins at statement 21088, parm_start=12111
// OP_LOAD_ENT	30	164	12113
// OP_IFNOT	12113	3	0
// OP_STORE_V	4768	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	12111	4	0
// OP_CALL1	12054	0	0
// OP_STORE_ENT	1	12112	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12114	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12115	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12116	7	0
// OP_CALL2	469	0	0
// OP_IFNOT	12112	7	0
// OP_STORE_V	12112	4	0
// OP_STORE_V	12111	7	0
// OP_CALL2	12038	0	0
// OP_LOAD_ENT	12112	164	12117
// OP_STORE_ENT	12117	12112	0
// OP_GOTO	-6	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_DONE	0	0	0
void (float scoretype) PrintScores = 
{
    local entity sort;
    
    if(world.chain)
    {
        error("DumpScore: world.chain is set");
    }
    
    sort = SortPlayers(scoretype);
    sprint(self, "Vs. Plyr|Vs. Bots|Suic|Score\n");
    sprint(self, "kill die|kill die|ides|\n");
    sprint(self, "_______________________________\n");
    
    while(sort)
    {
        PrintScoreFor(sort, scoretype);
        sort = sort.chain;
    }
    
    sprint(self, "\n");
};

