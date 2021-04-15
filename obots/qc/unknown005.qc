
// func002444
// function begins at statement 40543, parm_start=22954
// OP_LOAD_F	22954	186	22961
// OP_GT	22961	31	22962
// OP_IFNOT	22962	2	0
// OP_RETURN	213	0	0
// OP_GT	22956	800	22963
// OP_IFNOT	22963	2	0
// OP_STORE_F	800	22956	0
// OP_STORE_F	800	22956	0
// OP_STORE_V	286	22957	0
// OP_STORE_F	22955	22958	0
// OP_STORE_V	22957	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	22954	4	0
// OP_STORE_V	59	7	0
// OP_STORE_V	22956	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	22870	0	0
// OP_STORE_F	1	22960	0
// OP_IFNOT	22960	3	0
// OP_ADDRESS	22954	113	22964
// OP_STOREP_V	286	22964	0
// OP_NOT_F	22960	0	22967
// OP_RETURN	22967	0	0
// OP_DONE	0	0	0
float (entity globaldef007585, float globaldef007586, float globaldef007587) func002444 = 
{
    local vector globaldef007588;
    local float globaldef007592;
    
    if(globaldef007585.teleport_time > time)
    {
        return FALSE;
    }
    
    
    if(globaldef007587 > globaldef000783)
    {
    }
    
    globaldef007587 = globaldef007587 = globaldef000783;
    globaldef007588 = VEC_ORIGIN;
    globaldef007588_y = globaldef007586;
    makevectors(globaldef007588);
    globaldef007592 = func002441(globaldef007585, v_forward, globaldef007587, FALSE);
    
    if(globaldef007592)
    {
        globaldef007585.velocity = VEC_ORIGIN;
    }
    
    return !globaldef007592;
};


// func002445
// function begins at statement 40567, parm_start=22968
// OP_LOAD_F	22968	186	22975
// OP_GT	22975	31	22976
// OP_IFNOT	22976	2	0
// OP_RETURN	213	0	0
// OP_GT	22970	800	22977
// OP_IFNOT	22977	2	0
// OP_STORE_F	800	22970	0
// OP_STORE_F	800	22970	0
// OP_STORE_V	286	22971	0
// OP_STORE_F	22969	22972	0
// OP_STORE_V	22971	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	22968	4	0
// OP_STORE_V	59	7	0
// OP_STORE_V	22970	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	22870	0	0
// OP_STORE_F	1	22974	0
// OP_IFNOT	22974	3	0
// OP_ADDRESS	22968	113	22978
// OP_STOREP_V	286	22978	0
// OP_NOT_F	22974	0	22981
// OP_RETURN	22981	0	0
// OP_DONE	0	0	0
float (entity globaldef007593, float globaldef007594, float globaldef007595) func002445 = 
{
    local vector globaldef007596;
    local float globaldef007600;
    
    if(globaldef007593.teleport_time > time)
    {
        return FALSE;
    }
    
    
    if(globaldef007595 > globaldef000783)
    {
    }
    
    globaldef007595 = globaldef007595 = globaldef000783;
    globaldef007596 = VEC_ORIGIN;
    globaldef007596_y = globaldef007594;
    makevectors(globaldef007596);
    globaldef007600 = func002441(globaldef007593, v_forward, globaldef007595, TRUE);
    
    if(globaldef007600)
    {
        globaldef007593.velocity = VEC_ORIGIN;
    }
    
    return !globaldef007600;
};


// func002446
// function begins at statement 40591, parm_start=22982
// OP_LOAD_F	22982	182	22990
// OP_BITAND	22990	225	22991
// OP_IFNOT	22991	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	22982	575	22992
// OP_BITAND	22992	714	22993
// OP_IFNOT	22993	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	22982	575	22994
// OP_BITAND	22994	700	22995
// OP_NOT_F	22995	0	22996
// OP_IFNOT	22996	2	0
// OP_RETURN	214	0	0
// OP_STORE_V	22982	4	0
// OP_CALL1	1115	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	22982	613	22997
// OP_STORE_ENT	22997	22983	0
// OP_ADDRESS	22982	613	22998
// OP_LOAD_ENT	22982	194	22999
// OP_LOAD_ENT	22999	194	23000
// OP_STOREP_ENT	23000	22998	0
// OP_LOAD_ENT	22982	194	23001
// OP_LOAD_ENT	23001	194	23002
// OP_EQ_E	22983	23002	23003
// OP_IFNOT	23003	19	0
// OP_LOAD_ENT	22982	194	23004
// OP_LOAD_V	23004	105	23005
// OP_LOAD_V	22982	580	23008
// OP_SUB_V	23005	23008	23011
// OP_STORE_V	23011	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	22986	0
// OP_LOAD_ENT	22982	194	23014
// OP_LOAD_V	23014	105	23015
// OP_LOAD_V	22982	105	23018
// OP_SUB_V	23015	23018	23021
// OP_STORE_V	23021	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	22985	0
// OP_SUB_F	22986	218	23024
// OP_GT	22985	23024	23025
// OP_IFNOT	23025	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef007601) func002446 = 
{
    local entity globaldef007602;
    local entity globaldef007603;
    local float globaldef007604;
    local float globaldef007605;
    local vector globaldef007606;
    
    if(globaldef007601.flags & FL_WATERJUMP)
    {
        return TRUE;
    }
    
    
    if(globaldef007601.botflags & globaldef000697)
    {
        return TRUE;
    }
    
    
    if(!(globaldef007601.botflags & globaldef000683))
    {
        return TRUE;
    }
    
    
    if(BotIsOnMovingPlatDoorTrain(globaldef007601))
    {
        return TRUE;
    }
    
    globaldef007602 = globaldef007601.field000290;
    globaldef007601.field000290 = globaldef007601.goalentity.goalentity;
    
    if(globaldef007602 == globaldef007601.goalentity.goalentity)
    {
        globaldef007605 = vlen(globaldef007601.goalentity.origin - globaldef007601.old_origin);
        globaldef007604 = vlen(globaldef007601.goalentity.origin - globaldef007601.origin);
        
        if(globaldef007604 > (globaldef007605 - FL_INWATER))
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};

float globaldef007610;
float globaldef007611;
float globaldef007612;
float globaldef007613;
float globaldef007614;

// func002447
// function begins at statement 40638, parm_start=23032
// OP_LOAD_V	23033	105	23037
// OP_LOAD_V	23032	105	23040
// OP_SUB_V	23037	23040	23043
// OP_STORE_V	23043	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23034	0
// OP_GT	23034	23026	23046
// OP_IFNOT	23046	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23035	0
// OP_LOAD_V	23032	105	23047
// OP_STORE_V	23047	4	0
// OP_STORE_V	23034	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23036	0
// OP_IFNOT	23036	9	0
// OP_LOAD_S	23036	129	23050
// OP_EQ_S	23050	5259	23051
// OP_IFNOT	23051	3	0
// OP_ADD_F	23035	214	23052
// OP_STORE_F	23052	23035	0
// OP_LOAD_ENT	23036	164	23053
// OP_STORE_ENT	23053	23036	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23034	1997	23054
// OP_DIV_F	23054	23026	23055
// OP_SUB_F	1997	23055	23056
// OP_DIV_F	23056	23035	23057
// OP_RETURN	23057	0	0
// OP_DONE	0	0	0
float (entity globaldef007616, entity globaldef007617) func002447 = 
{
    local float globaldef007618;
    local float globaldef007619;
    local entity globaldef007620;
    globaldef007618 = vlen(globaldef007617.origin - globaldef007616.origin);
    
    if(globaldef007618 > globaldef007610)
    {
        return FALSE;
    }
    
    globaldef007619 = FALSE;
    globaldef007620 = findradius(globaldef007616.origin, globaldef007618);
    
    while(globaldef007620)
    {
        
        if(globaldef007620.classname == "door")
        {
            globaldef007619 = globaldef007619 + TRUE;
        }
        
        globaldef007620 = globaldef007620.chain;
    }
    
    return (100 - ((globaldef007618 * 100) / globaldef007610)) / globaldef007619;
};


// func002448
// function begins at statement 40668, parm_start=23059
// OP_LOAD_V	23060	105	23064
// OP_LOAD_V	23059	105	23067
// OP_SUB_V	23064	23067	23070
// OP_STORE_V	23070	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23061	0
// OP_GT	23061	23027	23073
// OP_IFNOT	23073	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23062	0
// OP_LOAD_V	23059	105	23074
// OP_STORE_V	23074	4	0
// OP_STORE_V	23061	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23063	0
// OP_IFNOT	23063	9	0
// OP_LOAD_S	23063	129	23077
// OP_EQ_S	23077	19126	23078
// OP_IFNOT	23078	3	0
// OP_ADD_F	23062	214	23079
// OP_STORE_F	23079	23062	0
// OP_LOAD_ENT	23063	164	23080
// OP_STORE_ENT	23080	23063	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23061	1997	23081
// OP_DIV_F	23081	23027	23082
// OP_SUB_F	1997	23082	23083
// OP_DIV_F	23083	23062	23084
// OP_RETURN	23084	0	0
// OP_DONE	0	0	0
float (entity globaldef007622, entity globaldef007623) func002448 = 
{
    local float globaldef007624;
    local float globaldef007625;
    local entity globaldef007626;
    globaldef007624 = vlen(globaldef007623.origin - globaldef007622.origin);
    
    if(globaldef007624 > globaldef007611)
    {
        return FALSE;
    }
    
    globaldef007625 = FALSE;
    globaldef007626 = findradius(globaldef007622.origin, globaldef007624);
    
    while(globaldef007626)
    {
        
        if(globaldef007626.classname == "trigger_teleport")
        {
            globaldef007625 = globaldef007625 + TRUE;
        }
        
        globaldef007626 = globaldef007626.chain;
    }
    
    return (100 - ((globaldef007624 * 100) / globaldef007611)) / globaldef007625;
};


// func002449
// function begins at statement 40698, parm_start=23086
// OP_LOAD_V	23087	105	23091
// OP_LOAD_V	23086	105	23094
// OP_SUB_V	23091	23094	23097
// OP_STORE_V	23097	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23088	0
// OP_GT	23088	23028	23100
// OP_IFNOT	23100	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23089	0
// OP_STORE_ENT	835	23090	0
// OP_IFNOT	23090	13	0
// OP_LOAD_F	23090	426	23101
// OP_EQ_F	23101	758	23102
// OP_IFNOT	23102	7	0
// OP_LOAD_ENT	23090	194	23103
// OP_LOAD_ENT	23087	194	23104
// OP_NE_E	23103	23104	23105
// OP_IFNOT	23105	3	0
// OP_ADD_F	23089	214	23106
// OP_STORE_F	23106	23089	0
// OP_LOAD_ENT	23090	620	23107
// OP_STORE_ENT	23107	23090	0
// OP_GOTO	-12	0	0
// OP_MUL_F	23088	1997	23108
// OP_DIV_F	23108	23028	23109
// OP_SUB_F	1997	23109	23110
// OP_DIV_F	23110	23089	23111
// OP_RETURN	23111	0	0
// OP_DONE	0	0	0
float (entity globaldef007628, entity globaldef007629) func002449 = 
{
    local float globaldef007630;
    local float globaldef007631;
    local entity globaldef007632;
    globaldef007630 = vlen(globaldef007629.origin - globaldef007628.origin);
    
    if(globaldef007630 > globaldef007612)
    {
        return FALSE;
    }
    
    globaldef007631 = FALSE;
    globaldef007632 = globaldef000818;
    
    while(globaldef007632)
    {
        
        if(globaldef007632.cnt == globaldef000741)
        {
            
            if(globaldef007632.goalentity != globaldef007629.goalentity)
            {
                globaldef007631 = globaldef007631 + TRUE;
            }
            
        }
        
        globaldef007632 = globaldef007632.next;
    }
    
    return (100 - ((globaldef007630 * 100) / globaldef007612)) / globaldef007631;
};


// func002450
// function begins at statement 40728, parm_start=23113
// OP_LOAD_V	23114	105	23118
// OP_LOAD_V	23113	105	23121
// OP_SUB_V	23118	23121	23124
// OP_STORE_V	23124	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23115	0
// OP_GT	23115	23030	23127
// OP_IFNOT	23127	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23116	0
// OP_LOAD_V	23113	105	23128
// OP_STORE_V	23128	4	0
// OP_STORE_V	23030	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23117	0
// OP_IFNOT	23117	15	0
// OP_LOAD_S	23117	129	23131
// OP_EQ_S	23131	4469	23132
// OP_LOAD_S	23117	129	23133
// OP_EQ_S	23133	4472	23134
// OP_OR	23132	23134	23135
// OP_LOAD_S	23117	129	23136
// OP_EQ_S	23136	4476	23137
// OP_OR	23135	23137	23138
// OP_IFNOT	23138	3	0
// OP_ADD_F	23116	214	23139
// OP_STORE_F	23139	23116	0
// OP_LOAD_ENT	23117	164	23140
// OP_STORE_ENT	23140	23117	0
// OP_GOTO	-14	0	0
// OP_MUL_F	23115	1997	23141
// OP_DIV_F	23141	23030	23142
// OP_SUB_F	1997	23142	23143
// OP_DIV_F	23143	23116	23144
// OP_RETURN	23144	0	0
// OP_DONE	0	0	0
float (entity globaldef007634, entity globaldef007635) func002450 = 
{
    local float globaldef007636;
    local float globaldef007637;
    local entity globaldef007638;
    globaldef007636 = vlen(globaldef007635.origin - globaldef007634.origin);
    
    if(globaldef007636 > globaldef007614)
    {
        return FALSE;
    }
    
    globaldef007637 = FALSE;
    globaldef007638 = findradius(globaldef007634.origin, globaldef007614);
    
    while(globaldef007638)
    {
        
        if(((globaldef007638.classname == "item_armor1") || (globaldef007638.classname == "item_armor2")) || (globaldef007638.classname == "item_armorInv"))
        {
            globaldef007637 = globaldef007637 + TRUE;
        }
        
        globaldef007638 = globaldef007638.chain;
    }
    
    return (100 - ((globaldef007636 * 100) / globaldef007614)) / globaldef007637;
};


// func002451
// function begins at statement 40764, parm_start=23146
// OP_LOAD_V	23147	105	23151
// OP_LOAD_V	23146	105	23154
// OP_SUB_V	23151	23154	23157
// OP_STORE_V	23157	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23148	0
// OP_GT	23148	23030	23160
// OP_IFNOT	23160	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23149	0
// OP_LOAD_V	23146	105	23161
// OP_STORE_V	23161	4	0
// OP_STORE_V	23029	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23150	0
// OP_IFNOT	23150	9	0
// OP_LOAD_F	23150	182	23164
// OP_BITAND	23164	222	23165
// OP_IFNOT	23165	3	0
// OP_ADD_F	23149	214	23166
// OP_STORE_F	23166	23149	0
// OP_LOAD_ENT	23150	164	23167
// OP_STORE_ENT	23167	23150	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23148	1997	23168
// OP_DIV_F	23168	23029	23169
// OP_SUB_F	1997	23169	23170
// OP_DIV_F	23170	23149	23171
// OP_RETURN	23171	0	0
// OP_DONE	0	0	0
float (entity globaldef007640, entity globaldef007641) func002451 = 
{
    local float globaldef007642;
    local float globaldef007643;
    local entity globaldef007644;
    globaldef007642 = vlen(globaldef007641.origin - globaldef007640.origin);
    
    if(globaldef007642 > globaldef007614)
    {
        return FALSE;
    }
    
    globaldef007643 = FALSE;
    globaldef007644 = findradius(globaldef007640.origin, globaldef007613);
    
    while(globaldef007644)
    {
        
        if(globaldef007644.flags & FL_ITEM)
        {
            globaldef007643 = globaldef007643 + TRUE;
        }
        
        globaldef007644 = globaldef007644.chain;
    }
    
    return (100 - ((globaldef007642 * 100) / globaldef007613)) / globaldef007643;
};


// func002452
// function begins at statement 40794, parm_start=23173
// OP_LOAD_ENT	28	620	23173
// OP_IFNOT	23173	5	0
// OP_LOAD_ENT	28	620	23174
// OP_ADDRESS	23174	621	23175
// OP_LOAD_ENT	28	621	23176
// OP_STOREP_ENT	23176	23175	0
// OP_LOAD_ENT	28	621	23177
// OP_IFNOT	23177	6	0
// OP_LOAD_ENT	28	621	23178
// OP_ADDRESS	23178	620	23179
// OP_LOAD_ENT	28	620	23180
// OP_STOREP_ENT	23180	23179	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	620	23181
// OP_STORE_ENT	23181	835	0
// OP_SUB_F	818	214	23182
// OP_STORE_F	23182	818	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func002452 = 
{
    
    if(self.next)
    {
        self.next.prev = self.prev;
    }
    
    if(self.prev)
    {
        self.prev.next = self.next;
    }
    else
    {
        globaldef000818 = self.next;
    }
    
    globaldef000801 = globaldef000801 - TRUE;
    remove(self);
};


// func002453
// function begins at statement 40814, parm_start=23183
// OP_LOAD_S	23183	129	23190
// OP_NE_S	23190	1236	23191
// OP_IFNOT	23191	5	0
// OP_LOAD_S	23183	129	23192
// OP_NE_S	23192	1241	23193
// OP_IFNOT	23193	2	0
// OP_RETURN	0	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	23189	0
// OP_ADDRESS	23189	129	23194
// OP_STOREP_S	23195	23194	0
// OP_ADDRESS	23189	104	23196
// OP_STOREP_F	237	23196	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	23189	194	23203
// OP_STOREP_ENT	23183	23203	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23184	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	23189	426	23204
// OP_STOREP_F	23188	23204	0
// OP_EQ_F	23188	756	23205
// OP_IFNOT	23205	4	0
// OP_ADDRESS	23189	550	23206
// OP_STOREP_FNC	23031	23206	0
// OP_GOTO	20	0	0
// OP_EQ_F	23188	757	23207
// OP_IFNOT	23207	4	0
// OP_ADDRESS	23189	550	23208
// OP_STOREP_FNC	23058	23208	0
// OP_GOTO	15	0	0
// OP_EQ_F	23188	758	23209
// OP_IFNOT	23209	4	0
// OP_ADDRESS	23189	550	23210
// OP_STOREP_FNC	23085	23210	0
// OP_GOTO	10	0	0
// OP_EQ_F	23188	759	23211
// OP_IFNOT	23211	4	0
// OP_ADDRESS	23189	550	23212
// OP_STOREP_FNC	23145	23212	0
// OP_GOTO	5	0	0
// OP_EQ_F	23188	760	23213
// OP_IFNOT	23213	3	0
// OP_ADDRESS	23189	550	23214
// OP_STOREP_FNC	23112	23214	0
// OP_IFNOT	835	3	0
// OP_ADDRESS	835	621	23215
// OP_STOREP_ENT	23189	23215	0
// OP_ADDRESS	23189	620	23216
// OP_STOREP_ENT	835	23216	0
// OP_ADDRESS	23189	621	23217
// OP_STOREP_ENT	30	23217	0
// OP_STORE_ENT	23189	835	0
// OP_ADD_F	818	214	23218
// OP_STORE_F	23218	818	0
// OP_ADDRESS	23189	148	23219
// OP_STOREP_FNC	23172	23219	0
// OP_ADDRESS	23189	150	23220
// OP_MUL_F	23187	216	23221
// OP_ADD_F	31	23221	23222
// OP_STOREP_F	23222	23220	0
// OP_DONE	0	0	0
void (entity globaldef007646, vector globaldef007647, float globaldef007651, float globaldef007652) func002453 = 
{
    local entity globaldef007653;
    
    if(globaldef007646.classname != "player")
    {
        
        if(globaldef007646.classname != "bot")
        {
            return;
        }
        
    }
    
    globaldef007653 = spawn();
    globaldef007653.classname = "botsound";
    globaldef007653.solid = SOLID_NOT;
    setsize(globaldef007653, '-4 -4 -4', '4 4 4');
    globaldef007653.goalentity = globaldef007646;
    setorigin(globaldef007653, globaldef007647);
    globaldef007653.cnt = globaldef007652;
    if(globaldef007652 == globaldef000739)
    {
        globaldef007653.field000227 = func002447;
    }
    else
    {
        if(globaldef007652 == globaldef000740)
        {
            globaldef007653.field000227 = func002448;
        }
        else
        {
            if(globaldef007652 == globaldef000741)
            {
                globaldef007653.field000227 = func002449;
            }
            else
            {
                if(globaldef007652 == globaldef000742)
                {
                    globaldef007653.field000227 = func002451;
                }
                else
                {
                    
                    if(globaldef007652 == globaldef000743)
                    {
                        globaldef007653.field000227 = func002450;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(globaldef000818)
    {
        globaldef000818.prev = globaldef007653;
    }
    
    globaldef007653.next = globaldef000818;
    globaldef007653.prev = world;
    globaldef000818 = globaldef007653;
    globaldef000801 = globaldef000801 + TRUE;
    globaldef007653.think = func002452;
    globaldef007653.nextthink = time + (globaldef007651 * FL_SWIM);
};


// func002454
// function begins at statement 40879, parm_start=23223
// OP_STORE_ENT	835	23225	0
// OP_IFNOT	23225	15	0
// OP_LOAD_ENT	23225	194	23226
// OP_EQ_E	23226	23224	23227
// OP_IFNOT	23227	9	0
// OP_LOAD_V	23225	105	23228
// OP_LOAD_V	23223	105	23231
// OP_SUB_V	23228	23231	23234
// OP_STORE_V	23234	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1663	23237
// OP_IFNOT	23237	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	23225	620	23238
// OP_STORE_ENT	23238	23225	0
// OP_GOTO	-14	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007657, entity globaldef007658) func002454 = 
{
    local entity globaldef007659;
    globaldef007659 = globaldef000818;
    
    while(globaldef007659)
    {
        
        if(globaldef007659.goalentity == globaldef007658)
        {
            
            if((vlen(globaldef007659.origin - globaldef007657.origin)) < 1000)
            {
                return TRUE;
            }
            
        }
        
        globaldef007659 = globaldef007659.next;
    }
    
    return FALSE;
};


// func002455
// function begins at statement 40897, parm_start=23239
// OP_CALL0	457	0	0
// OP_LOAD_F	28	588	23246
// OP_SUB_F	228	23246	23247
// OP_MUL_F	1	23247	23248
// OP_SUB_F	228	23248	23249
// OP_LT	23249	214	23250
// OP_IFNOT	23250	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	814	809	23251
// OP_MUL_F	23251	235	23252
// OP_STORE_F	23252	23241	0
// OP_GE	23241	1997	23253
// OP_IFNOT	23253	2	0
// OP_RETURN	30	0	0
// OP_SUB_F	814	809	23254
// OP_GT	23254	229	23255
// OP_IFNOT	23255	2	0
// OP_RETURN	30	0	0
// OP_STORE_ENT	30	23244	0
// OP_STORE_ENT	835	23243	0
// OP_IFNOT	23243	35	0
// OP_LOAD_ENT	23243	194	23256
// OP_NE_E	23256	23239	23257
// OP_IFNOT	23257	29	0
// OP_LOAD_ENT	23243	194	23258
// OP_LOAD_F	23258	152	23259
// OP_GT	23259	213	23260
// OP_IFNOT	23260	25	0
// OP_LOAD_ENT	23243	194	23261
// OP_LOAD_F	23261	607	23262
// OP_LOAD_F	23239	607	23263
// OP_EQ_F	23262	23263	23264
// OP_AND	37	23264	23265
// OP_NOT_F	23265	0	23266
// OP_IFNOT	23266	18	0
// OP_LOAD_ENT	23243	194	23267
// OP_LOAD_F	23267	182	23268
// OP_BITAND	23268	221	23269
// OP_NOT_F	23269	0	23270
// OP_IFNOT	23270	13	0
// OP_LOAD_FNC	23243	550	23271
// OP_STORE_V	23239	4	0
// OP_STORE_V	23243	7	0
// OP_CALL2	23271	0	0
// OP_STORE_F	1	23240	0
// OP_GT	23240	23241	23272
// OP_IFNOT	23272	6	0
// OP_STORE_F	23240	23241	0
// OP_LOAD_ENT	23243	194	23273
// OP_STORE_ENT	23273	23244	0
// OP_LOAD_F	23243	426	23274
// OP_STORE_F	23274	23242	0
// OP_LOAD_ENT	23243	620	23275
// OP_STORE_ENT	23275	23243	0
// OP_GOTO	-34	0	0
// OP_RETURN	23244	0	0
// OP_DONE	0	0	0
entity (entity globaldef007660) func002455 = 
{
    local float globaldef007661;
    local float globaldef007662;
    local float globaldef007663;
    local entity globaldef007664;
    local entity globaldef007665;
    local string globaldef007666;
    
    if((MOVETYPE_WALK - (random() * (MOVETYPE_WALK - self.field000265))) < TRUE)
    {
        return FALSE;
    }
    
    globaldef007662 = (activeClientCount - globaldef000792) * MOVETYPE_BOUNCE;
    
    if(globaldef007662 >= 100)
    {
        return world;
    }
    
    
    if((activeClientCount - globaldef000792) > MOVETYPE_STEP)
    {
        return world;
    }
    
    globaldef007665 = world;
    globaldef007664 = globaldef000818;
    
    while(globaldef007664)
    {
        
        if(globaldef007664.goalentity != globaldef007660)
        {
            
            if(globaldef007664.goalentity.health > FALSE)
            {
                
                if(!(teamplay && (globaldef007664.goalentity.field000284 == globaldef007660.field000284)))
                {
                    
                    if(!(globaldef007664.goalentity.flags & FL_NOTARGET))
                    {
                        globaldef007661 = globaldef007664.field000227(globaldef007660, globaldef007664);
                        
                        if(globaldef007661 > globaldef007662)
                        {
                            globaldef007662 = globaldef007661;
                            globaldef007665 = globaldef007664.goalentity;
                            globaldef007663 = globaldef007664.cnt;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef007664 = globaldef007664.next;
    }
    
    return globaldef007665;
};


// func002456
// function begins at statement 40954, parm_start=23276
// OP_LOAD_V	23276	105	23284
// OP_LOAD_V	23276	166	23287
// OP_ADD_V	23284	23287	23290
// OP_STORE_V	23290	23278	0
// OP_LOAD_V	23277	94	23293
// OP_LOAD_V	23277	98	23296
// OP_ADD_V	23293	23296	23299
// OP_MUL_VF	23299	539	23302
// OP_STORE_V	23302	23281	0
// OP_STORE_V	23278	4	0
// OP_STORE_V	23281	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	23276	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	23305
// OP_IFNOT	23305	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	23277	23306
// OP_IFNOT	23306	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007667, entity globaldef007668) func002456 = 
{
    local vector globaldef007669;
    local vector globaldef007673;
    globaldef007669 = globaldef007667.origin + globaldef007667.view_ofs;
    globaldef007673 = (globaldef007668.absmin + globaldef007668.absmax) * RA_PLAYERSTATTIME;
    traceline(globaldef007669, globaldef007673, TRUE, globaldef007667);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == globaldef007668)
    {
        return TRUE;
    }
    
    return FALSE;
};

