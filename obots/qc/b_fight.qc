float globaldef006846;

// BotAimAtEnemyAxe
// function begins at statement 36492, parm_start=19885
// OP_LOAD_V	19885	105	19895
// OP_ADD_V	19895	5392	19898
// OP_STORE_V	19898	19886	0
// OP_LOAD_ENT	19885	181	19901
// OP_LOAD_V	19901	105	19902
// OP_ADD_V	19902	5392	19905
// OP_STORE_V	19905	19889	0
// OP_SUB_V	19889	19886	19908
// OP_STORE_V	19908	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	19892	0
// OP_RETURN	19892	0	0
// OP_DONE	0	0	0
vector (entity globaldef006848) BotAimAtEnemyAxe = 
{
    local vector globaldef006849;
    local vector globaldef006853;
    local vector globaldef006857;
    globaldef006849 = globaldef006848.origin + '0 0 16';
    globaldef006853 = globaldef006848.enemy.origin + '0 0 16';
    globaldef006857 = normalize(globaldef006853 - globaldef006849);
    return globaldef006857;
};


// BotAimAtEnemyShotgun
// function begins at statement 36505, parm_start=19912
// OP_LOAD_F	19912	588	19923
// OP_STORE_F	19923	19922	0
// OP_LT	19922	213	19924
// OP_IFNOT	19924	2	0
// OP_STORE_F	213	19922	0
// OP_GT	19922	228	19925
// OP_IFNOT	19925	2	0
// OP_STORE_F	228	19922	0
// OP_LOAD_V	19912	105	19926
// OP_STORE_V	19926	19913	0
// OP_LOAD_F	19912	97	19929
// OP_LOAD_F	19912	145	19930
// OP_MUL_F	19930	5599	19931
// OP_ADD_F	19929	19931	19932
// OP_STORE_F	19932	19915	0
// OP_LOAD_ENT	19912	181	19933
// OP_LOAD_V	19933	105	19934
// OP_STORE_V	19934	19916	0
// OP_STORE_V	19913	4	0
// OP_STORE_V	19916	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	19912	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	19937
// OP_IFNOT	19937	5	0
// OP_LOAD_ENT	19912	181	19938
// OP_LOAD_V	19938	166	19939
// OP_ADD_V	19916	19939	19942
// OP_STORE_V	19942	19916	0
// OP_SUB_V	19916	19913	19945
// OP_STORE_V	19945	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	19919	0
// OP_SUB_F	230	19922	19948
// OP_CALL0	5370	0	0
// OP_MUL_F	19948	1	19949
// OP_MUL_FV	19949	19950	19953
// OP_ADD_V	19919	19953	19956
// OP_STORE_V	19956	19919	0
// OP_SUB_F	230	19922	19959
// OP_CALL0	5370	0	0
// OP_MUL_F	19959	1	19960
// OP_MUL_FV	19960	19950	19961
// OP_ADD_V	19919	19961	19964
// OP_STORE_V	19964	19919	0
// OP_STORE_V	19919	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	19919	0
// OP_RETURN	19919	0	0
// OP_DONE	0	0	0
vector (entity globaldef006862) BotAimAtEnemyShotgun = 
{
    local vector globaldef006863;
    local vector globaldef006867;
    local vector globaldef006871;
    local float globaldef006875;
    globaldef006875 = globaldef006862.botskill;
    
    if(globaldef006875 < FALSE)
    {
        globaldef006875 = FALSE;
    }
    
    
    if(globaldef006875 > MOVETYPE_WALK)
    {
        globaldef006875 = MOVETYPE_WALK;
    }
    
    globaldef006863 = globaldef006862.origin;
    globaldef006863_z = globaldef006862.absmin_z + (globaldef006862.size_z * 0.7);
    globaldef006867 = globaldef006862.enemy.origin;
    traceline(globaldef006863, globaldef006867, TRUE, globaldef006862);
    
    if(trace_fraction != TRUE)
    {
        globaldef006867 = globaldef006867 + globaldef006862.enemy.view_ofs;
    }
    
    globaldef006871 = normalize(globaldef006867 - globaldef006863);
    globaldef006871 = globaldef006871 + (((MOVETYPE_FLY - globaldef006875) * crandom()) * '0.05 0.05 0');
    globaldef006871 = globaldef006871 + (((MOVETYPE_FLY - globaldef006875) * crandom()) * '0.05 0.05 0');
    globaldef006871 = normalize(globaldef006871);
    return globaldef006871;
};


// BotAimAtEnemyNailgun
// function begins at statement 36555, parm_start=19968
// OP_LOAD_V	19968	105	19975
// OP_ADD_V	19975	5392	19978
// OP_STORE_V	19978	19969	0
// OP_LOAD_ENT	19968	181	19981
// OP_LOAD_V	19981	105	19982
// OP_STORE_V	19982	19972	0
// OP_STORE_V	19969	4	0
// OP_STORE_V	19972	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	19968	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	19985
// OP_IFNOT	19985	5	0
// OP_LOAD_ENT	19968	181	19986
// OP_LOAD_V	19986	166	19987
// OP_ADD_V	19972	19987	19990
// OP_STORE_V	19990	19972	0
// OP_LOAD_ENT	19968	181	19993
// OP_LOAD_V	19993	113	19994
// OP_MUL_VF	19994	1283	19997
// OP_SUB_V	19972	19969	20000
// OP_STORE_V	20000	4	0
// OP_CALL1	462	0	0
// OP_MUL_VF	19997	1	20003
// OP_ADD_V	19972	20003	20006
// OP_STORE_V	20006	19972	0
// OP_SUB_V	19972	19969	20009
// OP_RETURN	20009	0	0
// OP_DONE	0	0	0
vector (entity globaldef006878) BotAimAtEnemyNailgun = 
{
    local vector globaldef006879;
    local vector globaldef006883;
    globaldef006879 = globaldef006878.origin + '0 0 16';
    globaldef006883 = globaldef006878.enemy.origin;
    traceline(globaldef006879, globaldef006883, TRUE, globaldef006878);
    
    if(trace_fraction != TRUE)
    {
        globaldef006883 = globaldef006883 + globaldef006878.enemy.view_ofs;
    }
    
    globaldef006883 = globaldef006883 + ((globaldef006878.enemy.velocity * 0.001) * (vlen(globaldef006883 - globaldef006879)));
    return globaldef006883 - globaldef006879;
};


// BotAimAtEnemyRocket
// function begins at statement 36584, parm_start=20013
// OP_LOAD_F	20013	588	20031
// OP_STORE_F	20031	20030	0
// OP_LT	20030	213	20032
// OP_IFNOT	20032	2	0
// OP_STORE_F	213	20030	0
// OP_GT	20030	228	20033
// OP_IFNOT	20033	2	0
// OP_STORE_F	228	20030	0
// OP_LOAD_V	20013	105	20034
// OP_ADD_V	20034	5392	20037
// OP_STORE_V	20037	20014	0
// OP_LOAD_ENT	20013	181	20040
// OP_LOAD_V	20040	105	20041
// OP_STORE_V	20041	20017	0
// OP_STORE_V	20014	4	0
// OP_STORE_V	20017	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20013	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	20044
// OP_IFNOT	20044	5	0
// OP_LOAD_ENT	20013	181	20045
// OP_LOAD_V	20045	166	20046
// OP_ADD_V	20017	20046	20049
// OP_STORE_V	20049	20017	0
// OP_LOAD_ENT	20013	181	20052
// OP_LOAD_V	20052	113	20053
// OP_MUL_VF	20053	20056	20057
// OP_SUB_V	20017	20014	20060
// OP_STORE_V	20060	4	0
// OP_CALL1	462	0	0
// OP_MUL_VF	20057	1	20063
// OP_STORE_V	20063	20020	0
// OP_STORE_V	20014	4	0
// OP_ADD_V	20017	20020	20066
// OP_STORE_V	20066	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20013	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	20069
// OP_IFNOT	20069	3	0
// OP_ADD_V	20017	20020	20070
// OP_STORE_V	20070	20017	0
// OP_LOAD_F	20013	108	20073
// OP_LOAD_ENT	20013	181	20074
// OP_LOAD_F	20074	108	20075
// OP_GE	20073	20075	20076
// OP_IFNOT	20076	35	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	216	20077
// OP_ADD_F	20077	3263	20078
// OP_STORE_F	20078	20029	0
// OP_LOAD_F	20013	588	20079
// OP_GT	20079	20029	20080
// OP_IFNOT	20080	28	0
// OP_STORE_V	20017	20023	0
// OP_LOAD_ENT	20013	181	20081
// OP_LOAD_F	20081	137	20082
// OP_ADD_F	20025	20082	20083
// OP_SUB_F	20083	230	20084
// OP_STORE_F	20084	20025	0
// OP_STORE_V	20014	4	0
// OP_STORE_V	20023	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20013	13	0
// OP_CALL4	466	0	0
// OP_SUB_F	73	20025	20085
// OP_STORE_V	20085	4	0
// OP_CALL1	488	0	0
// OP_LT	1	1470	20086
// OP_IFNOT	20086	12	0
// OP_SUB_V	71	20023	20087
// OP_STORE_V	20087	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1997	20090
// OP_IFNOT	20090	7	0
// OP_SUB_V	71	20014	20091
// OP_STORE_V	20091	4	0
// OP_CALL1	462	0	0
// OP_GT	1	2003	20094
// OP_IFNOT	20094	2	0
// OP_STORE_V	20023	20017	0
// OP_SUB_V	20017	20014	20095
// OP_STORE_V	20095	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20026	0
// OP_SUB_F	228	20030	20098
// OP_CALL0	5370	0	0
// OP_MUL_F	20098	1	20099
// OP_MUL_FV	20099	20100	20103
// OP_ADD_V	20026	20103	20106
// OP_STORE_V	20106	20026	0
// OP_SUB_F	228	20030	20109
// OP_CALL0	5370	0	0
// OP_MUL_F	20109	1	20110
// OP_MUL_FV	20110	20111	20114
// OP_ADD_V	20026	20114	20117
// OP_STORE_V	20117	20026	0
// OP_STORE_V	20026	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20026	0
// OP_RETURN	20026	0	0
// OP_DONE	0	0	0
vector (entity globaldef006888) BotAimAtEnemyRocket = 
{
    local vector globaldef006889;
    local vector globaldef006893;
    local vector globaldef006897;
    local vector globaldef006901;
    local vector globaldef006905;
    local float globaldef006909;
    local float globaldef006910;
    globaldef006910 = globaldef006888.botskill;
    
    if(globaldef006910 < FALSE)
    {
        globaldef006910 = FALSE;
    }
    
    
    if(globaldef006910 > MOVETYPE_WALK)
    {
        globaldef006910 = MOVETYPE_WALK;
    }
    
    globaldef006889 = globaldef006888.origin + '0 0 16';
    globaldef006893 = globaldef006888.enemy.origin;
    traceline(globaldef006889, globaldef006893, TRUE, globaldef006888);
    
    if(trace_fraction != TRUE)
    {
        globaldef006893 = globaldef006893 + globaldef006888.enemy.view_ofs;
    }
    
    globaldef006897 = (globaldef006888.enemy.velocity * 0.001) * (vlen(globaldef006893 - globaldef006889));
    traceline(globaldef006889, globaldef006893 + globaldef006897, TRUE, globaldef006888);
    
    if(trace_fraction == TRUE)
    {
        globaldef006893 = globaldef006893 + globaldef006897;
    }
    
    
    if(globaldef006888.origin_z >= globaldef006888.enemy.origin_z)
    {
        globaldef006909 = (random() * FL_SWIM) + 0.9;
        
        if(globaldef006888.botskill > globaldef006909)
        {
            globaldef006901 = globaldef006893;
            globaldef006901_z = (globaldef006901_z + globaldef006888.enemy.mins_z) - MOVETYPE_FLY;
            traceline(globaldef006889, globaldef006901, TRUE, globaldef006888);
            
            if((fabs(trace_endpos_z - globaldef006901_z)) < 50)
            {
                
                if((vlen(trace_endpos - globaldef006901)) < 100)
                {
                    
                    if((vlen(trace_endpos - globaldef006889)) > 150)
                    {
                        globaldef006893 = globaldef006901;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    globaldef006905 = normalize(globaldef006893 - globaldef006889);
    globaldef006905 = globaldef006905 + (((MOVETYPE_WALK - globaldef006910) * crandom()) * '0.06 0 0');
    globaldef006905 = globaldef006905 + (((MOVETYPE_WALK - globaldef006910) * crandom()) * '0 0.06 0');
    globaldef006905 = normalize(globaldef006905);
    return globaldef006905;
};


// BotAimAtEnemyGrenade
// function begins at statement 36687, parm_start=20121
// OP_LOAD_F	20121	588	20139
// OP_STORE_F	20139	20138	0
// OP_LT	20138	213	20140
// OP_IFNOT	20140	2	0
// OP_STORE_F	213	20138	0
// OP_GT	20138	228	20141
// OP_IFNOT	20141	2	0
// OP_STORE_F	228	20138	0
// OP_LOAD_V	20121	105	20142
// OP_STORE_V	20142	20122	0
// OP_LOAD_ENT	20121	181	20145
// OP_LOAD_V	20145	105	20146
// OP_STORE_V	20146	20125	0
// OP_STORE_V	20122	4	0
// OP_STORE_V	20125	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20121	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	20149
// OP_IFNOT	20149	5	0
// OP_LOAD_ENT	20121	181	20150
// OP_LOAD_V	20150	166	20151
// OP_ADD_V	20125	20151	20154
// OP_STORE_V	20154	20125	0
// OP_LOAD_ENT	20121	181	20157
// OP_LOAD_V	20157	113	20158
// OP_MUL_VF	20158	20161	20162
// OP_SUB_V	20125	20122	20165
// OP_STORE_V	20165	4	0
// OP_CALL1	462	0	0
// OP_MUL_VF	20162	1	20168
// OP_ADD_V	20125	20168	20171
// OP_STORE_V	20171	20125	0
// OP_STORE_V	20125	20131	0
// OP_STORE_F	213	20133	0
// OP_LOAD_V	20121	105	20174
// OP_STORE_V	20174	20134	0
// OP_STORE_F	213	20136	0
// OP_SUB_V	20131	20134	20177
// OP_STORE_V	20177	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	1	798	20180
// OP_STORE_F	20180	20137	0
// OP_GT	20137	214	20181
// OP_IFNOT	20181	8	0
// OP_LT	20137	791	20182
// OP_IFNOT	20182	5	0
// OP_SUB_F	20137	214	20183
// OP_MUL_F	797	20183	20184
// OP_ADD_F	20127	20184	20185
// OP_STORE_F	20185	20127	0
// OP_GOTO	5	0	0
// OP_SUB_F	214	20137	20186
// OP_MUL_F	797	20186	20187
// OP_SUB_F	20127	20187	20188
// OP_STORE_F	20188	20127	0
// OP_SUB_V	20125	20122	20189
// OP_STORE_V	20189	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20128	0
// OP_SUB_F	228	20138	20192
// OP_CALL0	5370	0	0
// OP_MUL_F	20192	1	20193
// OP_MUL_FV	20193	20100	20194
// OP_ADD_V	20128	20194	20197
// OP_STORE_V	20197	20128	0
// OP_SUB_F	228	20138	20200
// OP_CALL0	5370	0	0
// OP_MUL_F	20200	1	20201
// OP_MUL_FV	20201	20111	20202
// OP_ADD_V	20128	20202	20205
// OP_STORE_V	20205	20128	0
// OP_STORE_V	20128	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20128	0
// OP_RETURN	20128	0	0
// OP_DONE	0	0	0
vector (entity globaldef006915) BotAimAtEnemyGrenade = 
{
    local vector globaldef006916;
    local vector globaldef006920;
    local vector globaldef006924;
    local vector globaldef006928;
    local vector globaldef006932;
    local float globaldef006936;
    local float globaldef006937;
    globaldef006937 = globaldef006915.botskill;
    
    if(globaldef006937 < FALSE)
    {
        globaldef006937 = FALSE;
    }
    
    
    if(globaldef006937 > MOVETYPE_WALK)
    {
        globaldef006937 = MOVETYPE_WALK;
    }
    
    globaldef006916 = globaldef006915.origin;
    globaldef006920 = globaldef006915.enemy.origin;
    traceline(globaldef006916, globaldef006920, TRUE, globaldef006915);
    
    if(trace_fraction != TRUE)
    {
        globaldef006920 = globaldef006920 + globaldef006915.enemy.view_ofs;
    }
    
    globaldef006920 = globaldef006920 + ((globaldef006915.enemy.velocity * 0.001) * (vlen(globaldef006920 - globaldef006916)));
    globaldef006928 = globaldef006920;
    globaldef006928_z = FALSE;
    globaldef006932 = globaldef006915.origin;
    globaldef006932_z = FALSE;
    globaldef006936 = (vlen(globaldef006928 - globaldef006932)) * globaldef000781;
    if(globaldef006936 > TRUE)
    {
        
        if(globaldef006936 < BOTSHIRTPANTS_12)
        {
            globaldef006920_z = globaldef006920_z + (globaldef000780 * (globaldef006936 - TRUE));
        }
        
    }
    else
    {
        globaldef006920_z = globaldef006920_z - (globaldef000780 * (TRUE - globaldef006936));
    }
    
    globaldef006924 = normalize(globaldef006920 - globaldef006916);
    globaldef006924 = globaldef006924 + (((MOVETYPE_WALK - globaldef006937) * crandom()) * '0.06 0 0');
    globaldef006924 = globaldef006924 + (((MOVETYPE_WALK - globaldef006937) * crandom()) * '0 0.06 0');
    globaldef006924 = normalize(globaldef006924);
    return globaldef006924;
};


// BotAimAtEnemyLightning
// function begins at statement 36764, parm_start=20209
// OP_LOAD_F	20209	588	20220
// OP_STORE_F	20220	20219	0
// OP_LT	20219	213	20221
// OP_IFNOT	20221	2	0
// OP_STORE_F	213	20219	0
// OP_GT	20219	228	20222
// OP_IFNOT	20222	2	0
// OP_STORE_F	228	20219	0
// OP_LOAD_V	20209	105	20223
// OP_ADD_V	20223	5392	20226
// OP_STORE_V	20226	20210	0
// OP_LOAD_ENT	20209	181	20229
// OP_LOAD_V	20229	105	20230
// OP_ADD_V	20230	5392	20233
// OP_STORE_V	20233	20213	0
// OP_STORE_V	20210	4	0
// OP_STORE_V	20213	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20209	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	20236
// OP_IFNOT	20236	5	0
// OP_LOAD_ENT	20209	181	20237
// OP_LOAD_V	20237	166	20238
// OP_ADD_V	20213	20238	20241
// OP_STORE_V	20241	20213	0
// OP_SUB_V	20213	20210	20244
// OP_STORE_V	20244	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20216	0
// OP_SUB_F	20247	20219	20248
// OP_CALL0	5370	0	0
// OP_MUL_F	20248	1	20249
// OP_MUL_FV	20249	20250	20253
// OP_ADD_V	20216	20253	20256
// OP_STORE_V	20256	20216	0
// OP_SUB_F	20247	20219	20259
// OP_CALL0	5370	0	0
// OP_MUL_F	20259	1	20260
// OP_MUL_FV	20260	20261	20264
// OP_ADD_V	20216	20264	20267
// OP_STORE_V	20267	20216	0
// OP_STORE_V	20216	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20216	0
// OP_RETURN	20216	0	0
// OP_DONE	0	0	0
vector (entity globaldef006940) BotAimAtEnemyLightning = 
{
    local vector globaldef006941;
    local vector globaldef006945;
    local vector globaldef006949;
    local float globaldef006953;
    globaldef006953 = globaldef006940.botskill;
    
    if(globaldef006953 < FALSE)
    {
        globaldef006953 = FALSE;
    }
    
    
    if(globaldef006953 > MOVETYPE_WALK)
    {
        globaldef006953 = MOVETYPE_WALK;
    }
    
    globaldef006941 = globaldef006940.origin + '0 0 16';
    globaldef006945 = globaldef006940.enemy.origin + '0 0 16';
    traceline(globaldef006941, globaldef006945, TRUE, globaldef006940);
    
    if(trace_fraction != TRUE)
    {
        globaldef006945 = globaldef006945 + globaldef006940.enemy.view_ofs;
    }
    
    globaldef006949 = normalize(globaldef006945 - globaldef006941);
    globaldef006949 = globaldef006949 + (((3.05 - globaldef006953) * crandom()) * '0.05 0 0');
    globaldef006949 = globaldef006949 + (((3.05 - globaldef006953) * crandom()) * '0 0.05 0');
    globaldef006949 = normalize(globaldef006949);
    return globaldef006949;
};


// BotAimAtEnemyByWeapon
// function begins at statement 36811, parm_start=20271
// OP_LOAD_F	20271	154	20272
// OP_EQ_F	20272	253	20273
// OP_IFNOT	20273	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	19884	0	0
// OP_RETURN	1	0	0
// OP_GOTO	49	0	0
// OP_LOAD_F	20271	154	20274
// OP_EQ_F	20274	254	20275
// OP_IFNOT	20275	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	19911	0	0
// OP_RETURN	1	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	20271	154	20276
// OP_EQ_F	20276	255	20277
// OP_IFNOT	20277	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	19911	0	0
// OP_RETURN	1	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	20271	154	20278
// OP_EQ_F	20278	256	20279
// OP_IFNOT	20279	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	19967	0	0
// OP_RETURN	1	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	20271	154	20280
// OP_EQ_F	20280	257	20281
// OP_IFNOT	20281	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	19967	0	0
// OP_RETURN	1	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	20271	154	20282
// OP_EQ_F	20282	258	20283
// OP_IFNOT	20283	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	20120	0	0
// OP_RETURN	1	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	20271	154	20284
// OP_EQ_F	20284	259	20285
// OP_IFNOT	20285	5	0
// OP_STORE_V	20271	4	0
// OP_CALL1	20012	0	0
// OP_RETURN	1	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	20271	154	20286
// OP_EQ_F	20286	260	20287
// OP_IFNOT	20287	4	0
// OP_STORE_V	20271	4	0
// OP_CALL1	20208	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
vector (entity globaldef006958) BotAimAtEnemyByWeapon = 
{
    if(globaldef006958.weapon == IT_AXE)
    {
        return BotAimAtEnemyAxe(globaldef006958);
    }
    else
    {
        if(globaldef006958.weapon == IT_SHOTGUN)
        {
            return BotAimAtEnemyShotgun(globaldef006958);
        }
        else
        {
            if(globaldef006958.weapon == IT_SUPER_SHOTGUN)
            {
                return BotAimAtEnemyShotgun(globaldef006958);
            }
            else
            {
                if(globaldef006958.weapon == IT_NAILGUN)
                {
                    return BotAimAtEnemyNailgun(globaldef006958);
                }
                else
                {
                    if(globaldef006958.weapon == IT_SUPER_NAILGUN)
                    {
                        return BotAimAtEnemyNailgun(globaldef006958);
                    }
                    else
                    {
                        if(globaldef006958.weapon == IT_GRENADE_LAUNCHER)
                        {
                            return BotAimAtEnemyGrenade(globaldef006958);
                        }
                        else
                        {
                            if(globaldef006958.weapon == IT_ROCKET_LAUNCHER)
                            {
                                return BotAimAtEnemyRocket(globaldef006958);
                            }
                            else
                            {
                                
                                if(globaldef006958.weapon == IT_LIGHTNING)
                                {
                                    return BotAimAtEnemyLightning(globaldef006958);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// BotAimAtEnemy
// function begins at statement 36867, parm_start=20288
// OP_LOAD_ENT	20288	181	20295
// OP_NOT_ENT	20295	0	20296
// OP_IFNOT	20296	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	20288	4	0
// OP_CALL1	20270	0	0
// OP_STORE_V	1	20289	0
// OP_STORE_V	20289	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	20292	0
// OP_ADDRESS	20288	191	20297
// OP_STOREP_F	20293	20297	0
// OP_ADDRESS	20288	611	20298
// OP_STOREP_F	20292	20298	0
// OP_LOAD_F	20288	611	20299
// OP_GT	20299	1296	20300
// OP_IFNOT	20300	5	0
// OP_ADDRESS	20288	611	20301
// OP_LOAD_F	20288	611	20302
// OP_SUB_F	20302	1298	20303
// OP_STOREP_F	20303	20301	0
// OP_DONE	0	0	0
void (entity globaldef006959) BotAimAtEnemy = 
{
    local vector globaldef006960;
    local vector globaldef006964;
    
    if(!globaldef006959.enemy)
    {
        return;
    }
    
    globaldef006960 = BotAimAtEnemyByWeapon(globaldef006959);
    globaldef006964 = vectoangles(globaldef006960);
    globaldef006959.ideal_yaw = globaldef006964_y;
    globaldef006959.field000288 = globaldef006964_x;
    
    if(globaldef006959.field000288 > 180)
    {
        globaldef006959.field000288 = globaldef006959.field000288 - 360;
    }
    
};


// func002389
// function begins at statement 36889, parm_start=20305
// OP_LOAD_F	20305	382	20306
// OP_GT	20306	31	20307
// OP_IFNOT	20307	13	0
// OP_LOAD_F	20305	389	20308
// OP_LT	20308	31	20309
// OP_IFNOT	20309	10	0
// OP_ADDRESS	20305	389	20310
// OP_ADD_F	31	214	20311
// OP_STOREP_F	20311	20310	0
// OP_STORE_V	20305	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	5078	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void (entity globaldef006969) func002389 = 
{
    
    if(globaldef006969.super_damage_finished > time)
    {
        
        if(globaldef006969.super_sound < time)
        {
            globaldef006969.super_sound = time + TRUE;
            sound(globaldef006969, CHAN_BODY, "items/damage3.wav", TRUE, ATTN_NORM);
        }
        
    }
    
};


// func002390
// function begins at statement 36905, parm_start=20313
// OP_LOAD_F	20313	378	20317
// OP_GT	20317	31	20318
// OP_IFNOT	20318	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	20316	0
// OP_STORE_ENT	20313	28	0
// OP_CALL0	6252	0	0
// OP_NOT_F	1	0	20319
// OP_IFNOT	20319	3	0
// OP_STORE_ENT	20316	28	0
// OP_RETURN	0	0	0
// OP_STORE_V	20313	4	0
// OP_CALL1	20304	0	0
// OP_LOAD_F	20313	588	20320
// OP_SUB_F	228	20320	20321
// OP_CALL0	457	0	0
// OP_MUL_F	20321	1	20322
// OP_MUL_F	20322	3267	20323
// OP_STORE_F	20323	20314	0
// OP_LOAD_V	20313	175	20324
// OP_STORE_V	20324	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	20313	393	20327
// OP_ADD_F	31	214	20328
// OP_STOREP_F	20328	20327	0
// OP_LOAD_F	20313	154	20329
// OP_EQ_F	20329	253	20330
// OP_IFNOT	20330	31	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	20315	0
// OP_LT	20315	6277	20331
// OP_IFNOT	20331	4	0
// OP_ADDRESS	20313	148	20332
// OP_STOREP_FNC	1169	20332	0
// OP_GOTO	13	0	0
// OP_LT	20315	539	20333
// OP_IFNOT	20333	4	0
// OP_ADDRESS	20313	148	20334
// OP_STOREP_FNC	1170	20334	0
// OP_GOTO	8	0	0
// OP_LT	20315	6280	20335
// OP_IFNOT	20335	4	0
// OP_ADDRESS	20313	148	20336
// OP_STOREP_FNC	1171	20336	0
// OP_GOTO	3	0	0
// OP_ADDRESS	20313	148	20337
// OP_STOREP_FNC	1172	20337	0
// OP_ADDRESS	20313	378	20338
// OP_ADD_F	31	539	20339
// OP_ADD_F	20339	20314	20340
// OP_STOREP_F	20340	20338	0
// OP_STORE_V	20313	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	6276	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	62	0	0
// OP_LOAD_F	20313	154	20341
// OP_EQ_F	20341	254	20342
// OP_IFNOT	20342	9	0
// OP_ADDRESS	20313	148	20343
// OP_STOREP_FNC	1168	20343	0
// OP_ADDRESS	20313	378	20344
// OP_ADD_F	31	539	20345
// OP_ADD_F	20345	20314	20346
// OP_STOREP_F	20346	20344	0
// OP_CALL0	5625	0	0
// OP_GOTO	51	0	0
// OP_LOAD_F	20313	154	20347
// OP_EQ_F	20347	255	20348
// OP_IFNOT	20348	9	0
// OP_ADDRESS	20313	148	20349
// OP_STOREP_FNC	1168	20349	0
// OP_ADDRESS	20313	378	20350
// OP_ADD_F	31	5599	20351
// OP_ADD_F	20351	20314	20352
// OP_STOREP_F	20352	20350	0
// OP_CALL0	5655	0	0
// OP_GOTO	40	0	0
// OP_LOAD_F	20313	154	20353
// OP_EQ_F	20353	256	20354
// OP_IFNOT	20354	4	0
// OP_ADDRESS	20313	148	20355
// OP_STOREP_FNC	1173	20355	0
// OP_GOTO	34	0	0
// OP_LOAD_F	20313	154	20356
// OP_EQ_F	20356	257	20357
// OP_IFNOT	20357	4	0
// OP_ADDRESS	20313	148	20358
// OP_STOREP_FNC	1173	20358	0
// OP_GOTO	28	0	0
// OP_LOAD_F	20313	154	20359
// OP_EQ_F	20359	258	20360
// OP_IFNOT	20360	9	0
// OP_ADDRESS	20313	148	20361
// OP_STOREP_FNC	1175	20361	0
// OP_ADDRESS	20313	378	20362
// OP_ADD_F	31	4474	20363
// OP_ADD_F	20363	20314	20364
// OP_STOREP_F	20364	20362	0
// OP_CALL0	5931	0	0
// OP_GOTO	17	0	0
// OP_LOAD_F	20313	154	20365
// OP_EQ_F	20365	259	20366
// OP_IFNOT	20366	9	0
// OP_ADDRESS	20313	148	20367
// OP_STOREP_FNC	1175	20367	0
// OP_ADDRESS	20313	378	20368
// OP_ADD_F	31	4478	20369
// OP_ADD_F	20369	20314	20370
// OP_STOREP_F	20370	20368	0
// OP_CALL0	5748	0	0
// OP_GOTO	6	0	0
// OP_LOAD_F	20313	154	20371
// OP_EQ_F	20371	260	20372
// OP_IFNOT	20372	3	0
// OP_ADDRESS	20313	148	20373
// OP_STOREP_FNC	1174	20373	0
// OP_STORE_ENT	20316	28	0
// OP_DONE	0	0	0
void (entity globaldef006971) func002390 = 
{
    local float globaldef006972;
    local float globaldef006973;
    local entity globaldef006974;
    
    if(globaldef006971.attack_finished > time)
    {
        return;
    }
    
    globaldef006974 = self;
    self = globaldef006971;
    
    if(!W_CheckNoAmmo())
    {
        self = globaldef006974;
        return;
    }
    
    func002389(globaldef006971);
    globaldef006972 = ((MOVETYPE_WALK - globaldef006971.botskill) * random()) * 0.2;
    makevectors(globaldef006971.v_angle);
    globaldef006971.show_hostile = time + TRUE;
    if(globaldef006971.weapon == IT_AXE)
    {
        globaldef006973 = random();
        if(globaldef006973 < 0.25)
        {
            globaldef006971.think = bot_axe1;
        }
        else
        {
            if(globaldef006973 < RA_PLAYERSTATTIME)
            {
                globaldef006971.think = bot_axeb1;
            }
            else
            {
                if(globaldef006973 < 0.75)
                {
                    globaldef006971.think = bot_axec1;
                }
                else
                {
                    globaldef006971.think = bot_axed1;
                }
                
            }
            
        }
        
        globaldef006971.attack_finished = (time + RA_PLAYERSTATTIME) + globaldef006972;
        sound(globaldef006971, CHAN_WEAPON, "weapons/ax1.wav", TRUE, ATTN_NORM);
    }
    else
    {
        if(globaldef006971.weapon == IT_SHOTGUN)
        {
            globaldef006971.think = bot_shot1;
            globaldef006971.attack_finished = (time + RA_PLAYERSTATTIME) + globaldef006972;
            W_FireShotgun();
        }
        else
        {
            if(globaldef006971.weapon == IT_SUPER_SHOTGUN)
            {
                globaldef006971.think = bot_shot1;
                globaldef006971.attack_finished = (time + 0.7) + globaldef006972;
                W_FireSuperShotgun();
            }
            else
            {
                if(globaldef006971.weapon == IT_NAILGUN)
                {
                    globaldef006971.think = bot_nail1;
                }
                else
                {
                    if(globaldef006971.weapon == IT_SUPER_NAILGUN)
                    {
                        globaldef006971.think = bot_nail1;
                    }
                    else
                    {
                        if(globaldef006971.weapon == IT_GRENADE_LAUNCHER)
                        {
                            globaldef006971.think = bot_rocket1;
                            globaldef006971.attack_finished = (time + 0.6) + globaldef006972;
                            W_FireGrenade();
                        }
                        else
                        {
                            if(globaldef006971.weapon == IT_ROCKET_LAUNCHER)
                            {
                                globaldef006971.think = bot_rocket1;
                                globaldef006971.attack_finished = (time + 0.8) + globaldef006972;
                                W_FireRocket();
                            }
                            else
                            {
                                
                                if(globaldef006971.weapon == IT_LIGHTNING)
                                {
                                    globaldef006971.think = bot_light1;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self = globaldef006974;
};


// func002391
// function begins at statement 37026, parm_start=20374
// OP_LOAD_F	20374	378	20387
// OP_GT	20387	31	20388
// OP_IFNOT	20388	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	20374	194	20389
// OP_STORE_ENT	20389	20384	0
// OP_LOAD_V	20374	105	20390
// OP_ADD_V	20390	5392	20393
// OP_STORE_V	20393	20381	0
// OP_LOAD_ENT	20384	194	20396
// OP_LOAD_V	20396	94	20397
// OP_LOAD_ENT	20384	194	20400
// OP_LOAD_V	20400	98	20401
// OP_ADD_V	20397	20401	20404
// OP_MUL_VF	20404	539	20407
// OP_STORE_V	20407	20375	0
// OP_SUB_V	20375	20381	20410
// OP_STORE_V	20410	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20375	0
// OP_STORE_V	20375	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	20378	0
// OP_GT	20378	1296	20413
// OP_IFNOT	20413	3	0
// OP_SUB_F	20378	1298	20414
// OP_STORE_F	20414	20378	0
// OP_ADDRESS	20374	611	20415
// OP_STOREP_F	20378	20415	0
// OP_ADDRESS	20374	191	20416
// OP_STOREP_F	20379	20416	0
// OP_LOAD_V	20374	175	20417
// OP_STORE_V	20417	4	0
// OP_CALL1	452	0	0
// OP_LOAD_F	20374	162	20420
// OP_BITAND	20420	253	20421
// OP_IFNOT	20421	20	0
// OP_STORE_V	20381	4	0
// OP_MUL_VF	59	2019	20422
// OP_ADD_V	20381	20422	20425
// OP_STORE_V	20425	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	20374	13	0
// OP_CALL4	466	0	0
// OP_LOAD_ENT	20384	194	20428
// OP_EQ_E	78	20428	20429
// OP_IFNOT	20429	10	0
// OP_ADDRESS	20374	154	20430
// OP_STOREP_F	253	20430	0
// OP_STORE_ENT	28	20385	0
// OP_STORE_ENT	20374	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	20385	28	0
// OP_STORE_V	20374	4	0
// OP_CALL1	20312	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	20374	162	20431
// OP_BITAND	20431	254	20432
// OP_LOAD_F	20374	158	20433
// OP_GT	20433	213	20434
// OP_AND	20432	20434	20435
// OP_IFNOT	20435	20	0
// OP_STORE_V	20381	4	0
// OP_MUL_VF	59	1663	20436
// OP_ADD_V	20381	20436	20439
// OP_STORE_V	20439	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	20374	13	0
// OP_CALL4	466	0	0
// OP_LOAD_ENT	20384	194	20442
// OP_EQ_E	78	20442	20443
// OP_IFNOT	20443	9	0
// OP_ADDRESS	20374	154	20444
// OP_STOREP_F	254	20444	0
// OP_STORE_ENT	28	20385	0
// OP_STORE_ENT	20374	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	20385	28	0
// OP_STORE_V	20374	4	0
// OP_CALL1	20312	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	20374	162	20445
// OP_BITAND	20445	256	20446
// OP_LOAD_F	20374	159	20447
// OP_GT	20447	213	20448
// OP_AND	20446	20448	20449
// OP_IFNOT	20449	20	0
// OP_STORE_V	20381	4	0
// OP_MUL_VF	59	1663	20450
// OP_ADD_V	20381	20450	20453
// OP_STORE_V	20453	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	20374	13	0
// OP_CALL4	466	0	0
// OP_LOAD_ENT	20384	194	20456
// OP_EQ_E	78	20456	20457
// OP_IFNOT	20457	9	0
// OP_ADDRESS	20374	154	20458
// OP_STOREP_F	256	20458	0
// OP_STORE_ENT	28	20385	0
// OP_STORE_ENT	20374	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	20385	28	0
// OP_STORE_V	20374	4	0
// OP_CALL1	20312	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	20374	371	20459
// OP_SUB_F	31	214	20460
// OP_STOREP_F	20460	20459	0
// OP_DONE	0	0	0
void (entity globaldef006975) func002391 = 
{
    local vector globaldef006976;
    local vector globaldef006980;
    local vector globaldef006984;
    local entity globaldef006988;
    local entity globaldef006989;
    local float globaldef006990;
    
    if(globaldef006975.attack_finished > time)
    {
        return;
    }
    
    globaldef006988 = globaldef006975.goalentity;
    globaldef006984 = globaldef006975.origin + '0 0 16';
    globaldef006976 = (globaldef006988.goalentity.absmin + globaldef006988.goalentity.absmax) * RA_PLAYERSTATTIME;
    globaldef006976 = normalize(globaldef006976 - globaldef006984);
    globaldef006980 = vectoangles(globaldef006976);
    
    if(globaldef006980_x > 180)
    {
        globaldef006980_x = globaldef006980_x - 360;
    }
    
    globaldef006975.field000288 = globaldef006980_x;
    globaldef006975.ideal_yaw = globaldef006980_y;
    makevectors(globaldef006975.v_angle);
    
    if(globaldef006975.items & IT_AXE)
    {
        traceline(globaldef006984, globaldef006984 + (v_forward * 60), FALSE, globaldef006975);
        
        if(trace_ent == globaldef006988.goalentity)
        {
            globaldef006975.weapon = IT_AXE;
            globaldef006989 = self;
            self = globaldef006975;
            W_SetCurrentAmmo();
            self = globaldef006989;
            func002390(globaldef006975);
            return;
        }
        
    }
    
    
    if((globaldef006975.items & IT_SHOTGUN) && (globaldef006975.ammo_shells > FALSE))
    {
        traceline(globaldef006984, globaldef006984 + (v_forward * 1000), FALSE, globaldef006975);
        
        if(trace_ent == globaldef006988.goalentity)
        {
            globaldef006975.weapon = IT_SHOTGUN;
            globaldef006989 = self;
            self = globaldef006975;
            W_SetCurrentAmmo();
            self = globaldef006989;
            func002390(globaldef006975);
        }
        
        return;
    }
    
    
    if((globaldef006975.items & IT_NAILGUN) && (globaldef006975.ammo_nails > FALSE))
    {
        traceline(globaldef006984, globaldef006984 + (v_forward * 1000), FALSE, globaldef006975);
        
        if(trace_ent == globaldef006988.goalentity)
        {
            globaldef006975.weapon = IT_NAILGUN;
            globaldef006989 = self;
            self = globaldef006975;
            W_SetCurrentAmmo();
            self = globaldef006989;
            func002390(globaldef006975);
        }
        
        return;
    }
    
    globaldef006975.search_time = time - TRUE;
};


// func002392
// function begins at statement 37136, parm_start=20461
// OP_LOAD_V	20461	105	20469
// OP_LOAD_V	20461	166	20472
// OP_ADD_V	20469	20472	20475
// OP_STORE_V	20475	20463	0
// OP_LOAD_V	20462	105	20478
// OP_STORE_V	20478	20466	0
// OP_STORE_V	20463	4	0
// OP_STORE_V	20466	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20461	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	20481
// OP_IFNOT	20481	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	20462	20482
// OP_IFNOT	20482	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	20462	105	20483
// OP_LOAD_V	20462	166	20486
// OP_ADD_V	20483	20486	20489
// OP_STORE_V	20489	20466	0
// OP_STORE_V	20463	4	0
// OP_STORE_V	20466	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	20461	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	20492
// OP_IFNOT	20492	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	20462	20493
// OP_IFNOT	20493	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef006991, entity globaldef006992) func002392 = 
{
    local vector globaldef006993;
    local vector globaldef006997;
    globaldef006993 = globaldef006991.origin + globaldef006991.view_ofs;
    globaldef006997 = globaldef006992.origin;
    traceline(globaldef006993, globaldef006997, TRUE, globaldef006991);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == globaldef006992)
    {
        return TRUE;
    }
    
    globaldef006997 = globaldef006992.origin + globaldef006992.view_ofs;
    traceline(globaldef006993, globaldef006997, TRUE, globaldef006991);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == globaldef006992)
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002393
// function begins at statement 37170, parm_start=20495
// OP_STORE_V	20495	4	0
// OP_CALL1	3179	0	0
// OP_STORE_F	1	20495	0
// OP_STORE_V	20496	4	0
// OP_CALL1	3179	0	0
// OP_STORE_F	1	20496	0
// OP_SUB_F	20496	20495	20499
// OP_STORE_F	20499	20498	0
// OP_GT	20496	20495	20500
// OP_IFNOT	20500	6	0
// OP_GT	20498	1296	20501
// OP_IFNOT	20501	3	0
// OP_SUB_F	20498	1298	20502
// OP_STORE_F	20502	20498	0
// OP_GOTO	5	0	0
// OP_LT	20498	1300	20503
// OP_IFNOT	20503	3	0
// OP_ADD_F	20498	1298	20504
// OP_STORE_F	20504	20498	0
// OP_STORE_V	20498	4	0
// OP_CALL1	488	0	0
// OP_MUL_F	20497	539	20505
// OP_GT	1	20505	20506
// OP_IFNOT	20506	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float globaldef007002, float globaldef007003, float globaldef007004) func002393 = 
{
    local float globaldef007005;
    globaldef007002 = anglemod(globaldef007002);
    globaldef007003 = anglemod(globaldef007003);
    globaldef007005 = globaldef007003 - globaldef007002;
    if(globaldef007003 > globaldef007002)
    {
        
        if(globaldef007005 > 180)
        {
            globaldef007005 = globaldef007005 - 360;
        }
        
    }
    else
    {
        
        if(globaldef007005 < -180)
        {
            globaldef007005 = globaldef007005 + 360;
        }
        
    }
    
    
    if(fabs(globaldef007005) > (globaldef007004 * RA_PLAYERSTATTIME))
    {
        return FALSE;
    }
    
    return TRUE;
};


// func002394
// function begins at statement 37197, parm_start=20508
// OP_LOAD_V	20509	105	20516
// OP_LOAD_V	20508	105	20519
// OP_SUB_V	20516	20519	20522
// OP_STORE_V	20522	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20510	0
// OP_STORE_V	20510	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	20513	0
// OP_STORE_V	20513	4	0
// OP_LOAD_F	20508	176	20525
// OP_SUB_F	213	20525	20526
// OP_STORE_V	20526	7	0
// OP_LOAD_F	20508	588	20527
// OP_MUL_F	20527	235	20528
// OP_ADD_F	2658	20528	20529
// OP_STORE_V	20529	10	0
// OP_CALL3	20494	0	0
// OP_IFNOT	1	11	0
// OP_STORE_V	20514	4	0
// OP_LOAD_F	20508	177	20530
// OP_STORE_V	20530	7	0
// OP_LOAD_F	20508	588	20531
// OP_MUL_F	20531	765	20532
// OP_ADD_F	12645	20532	20533
// OP_STORE_V	20533	10	0
// OP_CALL3	20494	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007007, entity globaldef007008) func002394 = 
{
    local vector globaldef007009;
    local vector globaldef007013;
    globaldef007009 = normalize(globaldef007008.origin - globaldef007007.origin);
    globaldef007013 = vectoangles(globaldef007009);
    
    if(func002393(globaldef007013_x, FALSE - globaldef007007.v_angle_x, 90 + (globaldef007007.botskill * MOVETYPE_BOUNCE)))
    {
        
        if(func002393(globaldef007013_y, globaldef007007.v_angle_y, 135 + (globaldef007007.botskill * GLOBALDEF748_15)))
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};


// func002395
// function begins at statement 37228, parm_start=20535
// OP_LOAD_V	20535	175	20539
// OP_STORE_V	20539	4	0
// OP_CALL1	452	0	0
// OP_LOAD_ENT	20535	181	20542
// OP_LOAD_V	20542	105	20543
// OP_LOAD_V	20535	105	20546
// OP_SUB_V	20543	20546	20549
// OP_STORE_V	20549	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20536	0
// OP_MUL_V	20536	59	20552
// OP_GT	20552	5599	20553
// OP_IFNOT	20553	17	0
// OP_LOAD_F	20535	611	20554
// OP_STORE_V	20554	4	0
// OP_LOAD_F	20535	176	20555
// OP_SUB_F	213	20555	20556
// OP_STORE_V	20556	7	0
// OP_STORE_V	2323	10	0
// OP_CALL3	20494	0	0
// OP_IFNOT	1	9	0
// OP_LOAD_F	20535	191	20557
// OP_STORE_V	20557	4	0
// OP_LOAD_F	20535	177	20558
// OP_STORE_V	20558	7	0
// OP_STORE_V	309	10	0
// OP_CALL3	20494	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007018) func002395 = 
{
    local vector globaldef007019;
    makevectors(globaldef007018.v_angle);
    globaldef007019 = normalize(globaldef007018.enemy.origin - globaldef007018.origin);
    
    if((globaldef007019 * v_forward) > 0.7)
    {
        
        if(func002393(globaldef007018.field000288, FALSE - globaldef007018.v_angle_x, 20))
        {
            
            if(func002393(globaldef007018.ideal_yaw, globaldef007018.v_angle_y, SVC_INTERMISSION))
            {
                return TRUE;
            }
            
        }
        
    }
    
    return FALSE;
};


// func002396
// function begins at statement 37259, parm_start=20560
// OP_STORE_ENT	28	20561	0
// OP_STORE_ENT	20560	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	20561	28	0
// OP_DONE	0	0	0
void (entity globaldef007024) func002396 = 
{
    local entity globaldef007025;
    globaldef007025 = self;
    self = globaldef007024;
    W_SetCurrentAmmo();
    self = globaldef007025;
};


// func002397
// function begins at statement 37264, parm_start=20562
// OP_LOAD_ENT	20562	181	20563
// OP_NOT_ENT	20563	0	20564
// OP_IFNOT	20564	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	20562	378	20565
// OP_GT	20565	31	20566
// OP_IFNOT	20566	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	20562	4	0
// OP_LOAD_ENT	20562	181	20567
// OP_STORE_V	20567	7	0
// OP_CALL2	1096	0	0
// OP_IFNOT	1	6	0
// OP_STORE_V	20562	4	0
// OP_CALL1	20534	0	0
// OP_IFNOT	1	3	0
// OP_STORE_V	20562	4	0
// OP_CALL1	20312	0	0
// OP_STORE_V	20562	4	0
// OP_CALL1	1040	0	0
// OP_STORE_V	20562	4	0
// OP_CALL1	20559	0	0
// OP_DONE	0	0	0
void (entity globaldef007026) func002397 = 
{
    
    if(!globaldef007026.enemy)
    {
        return;
    }
    
    
    if(globaldef007026.attack_finished > time)
    {
        return;
    }
    
    
    if(func002392(globaldef007026, globaldef007026.enemy))
    {
        
        if(func002395(globaldef007026))
        {
            func002390(globaldef007026);
        }
        
    }
    
    BotSetBestRangeWeapon(globaldef007026);
    func002396(globaldef007026);
};


// BotEnemyRange
// function begins at statement 37287, parm_start=20569
// OP_LOAD_V	20569	105	20579
// OP_LOAD_V	20569	166	20582
// OP_ADD_V	20579	20582	20585
// OP_STORE_V	20585	20571	0
// OP_LOAD_V	20570	105	20588
// OP_LOAD_V	20570	166	20591
// OP_ADD_V	20588	20591	20594
// OP_STORE_V	20594	20574	0
// OP_SUB_V	20571	20574	20597
// OP_STORE_V	20597	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	20578	0
// OP_LOAD_F	20569	152	20600
// OP_MUL_F	20600	539	20601
// OP_SUB_F	1296	20601	20602
// OP_LOAD_F	20569	188	20603
// OP_LOAD_F	20569	187	20604
// OP_MUL_F	20603	20604	20605
// OP_SUB_F	20602	20605	20606
// OP_STORE_F	20606	20577	0
// OP_LOAD_F	20569	162	20607
// OP_BITAND	20607	275	20608
// OP_IFNOT	20608	3	0
// OP_MUL_F	216	20577	20609
// OP_STORE_F	20609	20577	0
// OP_LT	20578	20577	20610
// OP_IFNOT	20610	3	0
// OP_RETURN	242	0	0
// OP_GOTO	8	0	0
// OP_LT	20578	740	20611
// OP_IFNOT	20611	3	0
// OP_RETURN	243	0	0
// OP_GOTO	4	0	0
// OP_LT	20578	1663	20612
// OP_IFNOT	20612	2	0
// OP_RETURN	244	0	0
// OP_RETURN	245	0	0
// OP_DONE	0	0	0
float (entity bot, entity botenemy) BotEnemyRange = 
{
    local vector startPos;
    local vector endPos;
    local float botCondition;
    local float dist;
    startPos = bot.origin + bot.view_ofs;
    endPos = botenemy.origin + botenemy.view_ofs;
    dist = vlen(startPos - endPos);
    botCondition = (180 - (bot.health * RA_PLAYERSTATTIME)) - (bot.armorvalue * bot.armortype);
    
    if(bot.items & IT_QUAD)
    {
        botCondition = FL_SWIM * botCondition;
    }
    
    if(dist < botCondition)
    {
        return RANGE_MELEE;
    }
    else
    {
        if(dist < GLOBALDEF723_600)
        {
            return RANGE_NEAR;
        }
        else
        {
            
            if(dist < 1000)
            {
                return RANGE_MID;
            }
            
        }
        
    }
    
    return RANGE_FAR;
};


// BotAttackMove
// function begins at statement 37325, parm_start=20613
// OP_LOAD_ENT	20613	181	20621
// OP_LOAD_V	20621	105	20622
// OP_LOAD_V	20613	105	20625
// OP_SUB_V	20622	20625	20628
// OP_STORE_V	20628	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	20617	0
// OP_LOAD_ENT	20613	181	20631
// OP_LOAD_V	20631	580	20632
// OP_LOAD_V	20613	105	20635
// OP_SUB_V	20632	20635	20638
// OP_STORE_V	20638	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	20618	0
// OP_LOAD_F	20613	594	20641
// OP_GT	20641	213	20642
// OP_IFNOT	20642	5	0
// OP_ADDRESS	20613	594	20643
// OP_LOAD_F	20613	594	20644
// OP_SUB_F	20644	214	20645
// OP_STOREP_F	20645	20643	0
// OP_ADD_F	20618	235	20646
// OP_GT	20617	20646	20647
// OP_IFNOT	20647	5	0
// OP_ADDRESS	20613	594	20648
// OP_LOAD_F	20613	594	20649
// OP_ADD_F	20649	216	20650
// OP_STOREP_F	20650	20648	0
// OP_STORE_F	2658	20615	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	228	20651
// OP_STORE_F	20651	20616	0
// OP_STORE_V	20613	4	0
// OP_LOAD_ENT	20613	181	20652
// OP_STORE_V	20652	7	0
// OP_CALL2	20568	0	0
// OP_STORE_F	1	20617	0
// OP_EQ_F	20617	243	20653
// OP_IFNOT	20653	4	0
// OP_ADD_F	20616	4478	20654
// OP_STORE_F	20654	20616	0
// OP_GOTO	60	0	0
// OP_EQ_F	20617	242	20655
// OP_IFNOT	20655	41	0
// OP_ADD_F	20616	20656	20657
// OP_STORE_F	20657	20616	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	20619	0
// OP_STORE_V	20613	4	0
// OP_CALL1	1041	0	0
// OP_STORE_F	1	20620	0
// OP_EQ_F	20620	259	20658
// OP_IFNOT	20658	3	0
// OP_STORE_F	213	20619	0
// OP_GOTO	19	0	0
// OP_EQ_F	20620	258	20659
// OP_IFNOT	20659	3	0
// OP_STORE_F	213	20619	0
// OP_GOTO	15	0	0
// OP_LOAD_F	20613	594	20660
// OP_GT	20660	229	20661
// OP_IFNOT	20661	3	0
// OP_STORE_F	214	20619	0
// OP_GOTO	10	0	0
// OP_EQ_F	20620	253	20662
// OP_IFNOT	20662	3	0
// OP_STORE_F	214	20619	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	20613	181	20663
// OP_LOAD_F	20663	154	20664
// OP_EQ_F	20664	259	20665
// OP_IFNOT	20665	2	0
// OP_STORE_F	214	20619	0
// OP_LT	20619	3409	20666
// OP_IFNOT	20666	9	0
// OP_STORE_V	20613	4	0
// OP_LOAD_F	20613	191	20667
// OP_ADD_F	20667	1296	20668
// OP_STORE_V	20668	7	0
// OP_STORE_V	20614	10	0
// OP_CALL3	1125	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	20617	244	20669
// OP_IFNOT	20669	12	0
// OP_STORE_V	20613	4	0
// OP_CALL1	1041	0	0
// OP_STORE_F	1	20620	0
// OP_EQ_F	20620	260	20670
// OP_IFNOT	20670	4	0
// OP_SUB_F	20616	228	20671
// OP_STORE_F	20671	20616	0
// OP_GOTO	3	0	0
// OP_SUB_F	20616	214	20672
// OP_STORE_F	20672	20616	0
// OP_GOTO	5	0	0
// OP_EQ_F	20617	245	20673
// OP_IFNOT	20673	3	0
// OP_SUB_F	20616	6009	20674
// OP_STORE_F	20674	20616	0
// OP_LOAD_F	20613	154	20675
// OP_EQ_F	20675	253	20676
// OP_IFNOT	20676	3	0
// OP_STORE_F	213	20616	0
// OP_GOTO	12	0	0
// OP_LOAD_F	20613	154	20677
// OP_EQ_F	20677	259	20678
// OP_IFNOT	20678	4	0
// OP_ADD_F	20616	1825	20679
// OP_STORE_F	20679	20616	0
// OP_GOTO	6	0	0
// OP_LOAD_F	20613	154	20680
// OP_EQ_F	20680	258	20681
// OP_IFNOT	20681	3	0
// OP_ADD_F	20616	1825	20682
// OP_STORE_F	20682	20616	0
// OP_LOAD_ENT	20613	181	20683
// OP_LOAD_F	20683	154	20684
// OP_EQ_F	20684	259	20685
// OP_IFNOT	20685	4	0
// OP_ADD_F	20616	1825	20686
// OP_STORE_F	20686	20616	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	20613	181	20687
// OP_LOAD_F	20687	154	20688
// OP_EQ_F	20688	260	20689
// OP_IFNOT	20689	3	0
// OP_ADD_F	20616	1825	20690
// OP_STORE_F	20690	20616	0
// OP_LOAD_F	20613	594	20691
// OP_GT	20691	217	20692
// OP_IFNOT	20692	4	0
// OP_SUB_F	20616	216	20693
// OP_STORE_F	20693	20616	0
// OP_GOTO	15	0	0
// OP_LOAD_F	20613	108	20694
// OP_LOAD_ENT	20613	181	20695
// OP_LOAD_F	20695	108	20696
// OP_ADD_F	20696	12639	20697
// OP_GT	20694	20697	20698
// OP_IFNOT	20698	9	0
// OP_ADD_F	20616	13457	20699
// OP_CALL0	457	0	0
// OP_ADD_F	20699	1	20700
// OP_STORE_F	20700	20616	0
// OP_LOAD_F	20613	154	20701
// OP_EQ_F	20701	253	20702
// OP_IFNOT	20702	2	0
// OP_STORE_F	213	20616	0
// OP_LT	20616	1825	20703
// OP_IFNOT	20703	9	0
// OP_STORE_V	20613	4	0
// OP_STORE_V	20614	7	0
// OP_CALL2	1123	0	0
// OP_NE_F	1	733	20704
// OP_IFNOT	20704	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	2658	20615	0
// OP_GOTO	4	0	0
// OP_LT	20616	20705	20706
// OP_IFNOT	20706	2	0
// OP_STORE_F	2598	20615	0
// OP_LOAD_F	20613	588	20707
// OP_EQ_F	20707	213	20708
// OP_IFNOT	20708	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	20613	595	20709
// OP_LOAD_F	20613	595	20710
// OP_ADD_F	20710	3036	20711
// OP_STOREP_F	20711	20709	0
// OP_LOAD_F	20613	588	20712
// OP_LT	20712	216	20713
// OP_IFNOT	20713	25	0
// OP_LOAD_F	20613	588	20714
// OP_LT	20714	214	20715
// OP_IFNOT	20715	3	0
// OP_MUL_F	5599	20614	20716
// OP_STORE_F	20716	20614	0
// OP_LOAD_F	20613	595	20717
// OP_EQ_F	20717	3036	20718
// OP_IFNOT	20718	17	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	229	20719
// OP_STORE_F	20719	20619	0
// OP_LOAD_F	20613	588	20720
// OP_GE	20720	214	20721
// OP_IFNOT	20721	5	0
// OP_LOAD_F	20613	588	20722
// OP_SUB_F	20619	20722	20723
// OP_ADD_F	20723	539	20724
// OP_STORE_F	20724	20619	0
// OP_LOAD_F	20613	588	20725
// OP_GT	20619	20725	20726
// OP_IFNOT	20726	4	0
// OP_ADDRESS	20613	595	20727
// OP_STOREP_F	213	20727	0
// OP_RETURN	0	0	0
// OP_LOAD_F	20613	595	20728
// OP_GT	20728	1644	20729
// OP_IFNOT	20729	21	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	216	20730
// OP_STORE_F	20730	20619	0
// OP_GT	20619	20731	20732
// OP_IFNOT	20732	16	0
// OP_LOAD_F	20613	575	20733
// OP_BITAND	20733	704	20734
// OP_IFNOT	20734	6	0
// OP_ADDRESS	20613	575	20735
// OP_LOAD_F	20613	575	20736
// OP_SUB_F	20736	704	20737
// OP_STOREP_F	20737	20735	0
// OP_GOTO	5	0	0
// OP_ADDRESS	20613	575	20738
// OP_LOAD_F	20613	575	20739
// OP_ADD_F	20739	704	20740
// OP_STOREP_F	20740	20738	0
// OP_ADDRESS	20613	595	20741
// OP_STOREP_F	213	20741	0
// OP_RETURN	0	0	0
// OP_LOAD_F	20613	575	20742
// OP_BITAND	20742	704	20743
// OP_IFNOT	20743	3	0
// OP_MUL_F	276	20615	20744
// OP_STORE_F	20744	20615	0
// OP_LOAD_F	20613	588	20745
// OP_GT	20745	20746	20747
// OP_CALL0	457	0	0
// OP_LT	1	1644	20748
// OP_AND	20747	20748	20749
// OP_IFNOT	20749	10	0
// OP_STORE_V	20613	4	0
// OP_LOAD_F	20613	191	20750
// OP_ADD_F	20750	20615	20751
// OP_STORE_V	20751	7	0
// OP_STORE_V	20614	10	0
// OP_CALL3	1126	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	20613	4	0
// OP_LOAD_F	20613	191	20752
// OP_ADD_F	20752	20615	20753
// OP_STORE_V	20753	7	0
// OP_STORE_V	20614	10	0
// OP_CALL3	1125	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	20613	595	20754
// OP_STOREP_F	213	20754	0
// OP_LOAD_F	20613	575	20755
// OP_BITAND	20755	704	20756
// OP_IFNOT	20756	6	0
// OP_ADDRESS	20613	575	20757
// OP_LOAD_F	20613	575	20758
// OP_SUB_F	20758	704	20759
// OP_STOREP_F	20759	20757	0
// OP_GOTO	5	0	0
// OP_ADDRESS	20613	575	20760
// OP_LOAD_F	20613	575	20761
// OP_ADD_F	20761	704	20762
// OP_STOREP_F	20762	20760	0
// OP_EQ_F	20615	2658	20763
// OP_EQ_F	20615	3865	20764
// OP_OR	20763	20764	20765
// OP_IFNOT	20765	22	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	20619	0
// OP_LT	20619	3270	20766
// OP_IFNOT	20766	7	0
// OP_STORE_V	20613	4	0
// OP_STORE_V	20614	7	0
// OP_CALL2	1123	0	0
// OP_NE_F	1	733	20767
// OP_IFNOT	20767	2	0
// OP_RETURN	0	0	0
// OP_LT	20619	539	20768
// OP_IFNOT	20768	10	0
// OP_STORE_V	20613	4	0
// OP_LOAD_F	20613	191	20769
// OP_ADD_F	20769	1296	20770
// OP_STORE_V	20770	7	0
// OP_MUL_F	20614	539	20771
// OP_STORE_V	20771	10	0
// OP_CALL3	1125	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	20613	4	0
// OP_LOAD_F	20613	191	20772
// OP_STORE_V	20772	7	0
// OP_STORE_V	20614	10	0
// OP_CALL3	1125	0	0
// OP_DONE	0	0	0
void (entity bot, float botspeed) BotAttackMove = 
{
    local float strafeAngle;
    local float strafeAngleChoice;
    local float currentDistToEnemy;
    local float oldDistToEnemy;
    local float rnd;
    local float bestWeapon;
    currentDistToEnemy = vlen(bot.enemy.origin - bot.origin);
    oldDistToEnemy = vlen(bot.enemy.old_origin - bot.origin);
    
    if(bot.field000271 > FALSE)
    {
        bot.field000271 = bot.field000271 - TRUE;
    }
    
    
    if(currentDistToEnemy > (oldDistToEnemy + MOVETYPE_BOUNCE))
    {
        bot.field000271 = bot.field000271 + FL_SWIM;
    }
    
    strafeAngle = 90;
    strafeAngleChoice = random() * MOVETYPE_WALK;
    currentDistToEnemy = BotEnemyRange(bot, bot.enemy);
    if(currentDistToEnemy == RANGE_NEAR)
    {
        strafeAngleChoice = strafeAngleChoice + 0.8;
    }
    else
    {
        if(currentDistToEnemy == RANGE_MELEE)
        {
            strafeAngleChoice = strafeAngleChoice + 1.2;
            rnd = random();
            bestWeapon = BestBotWeapon(bot);
            if(bestWeapon == IT_ROCKET_LAUNCHER)
            {
                rnd = FALSE;
            }
            else
            {
                if(bestWeapon == IT_GRENADE_LAUNCHER)
                {
                    rnd = FALSE;
                }
                else
                {
                    if(bot.field000271 > MOVETYPE_STEP)
                    {
                        rnd = TRUE;
                    }
                    else
                    {
                        if(bestWeapon == IT_AXE)
                        {
                            rnd = TRUE;
                        }
                        else
                        {
                            
                            if(bot.enemy.weapon == IT_ROCKET_LAUNCHER)
                            {
                                rnd = TRUE;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(rnd < 0.3)
            {
                
                if(BotMoveInDirection(bot, bot.ideal_yaw + 180, botspeed))
                {
                    return;
                }
                
            }
            
        }
        else
        {
            if(currentDistToEnemy == RANGE_MID)
            {
                bestWeapon = BestBotWeapon(bot);
                if(bestWeapon == IT_LIGHTNING)
                {
                    strafeAngleChoice = strafeAngleChoice - MOVETYPE_WALK;
                }
                else
                {
                    strafeAngleChoice = strafeAngleChoice - TRUE;
                }
                
            }
            else
            {
                
                if(currentDistToEnemy == RANGE_FAR)
                {
                    strafeAngleChoice = strafeAngleChoice - 2.5;
                }
                
            }
            
        }
        
    }
    
    if(bot.weapon == IT_AXE)
    {
        strafeAngleChoice = FALSE;
    }
    else
    {
        if(bot.weapon == IT_ROCKET_LAUNCHER)
        {
            strafeAngleChoice = strafeAngleChoice + 1.5;
        }
        else
        {
            
            if(bot.weapon == IT_GRENADE_LAUNCHER)
            {
                strafeAngleChoice = strafeAngleChoice + 1.5;
            }
            
        }
        
    }
    
    if(bot.enemy.weapon == IT_ROCKET_LAUNCHER)
    {
        strafeAngleChoice = strafeAngleChoice + 1.5;
    }
    else
    {
        
        if(bot.enemy.weapon == IT_LIGHTNING)
        {
            strafeAngleChoice = strafeAngleChoice + 1.5;
        }
        
    }
    
    if(bot.field000271 > FL_CLIENT)
    {
        strafeAngleChoice = strafeAngleChoice - FL_SWIM;
    }
    else
    {
        
        if(bot.origin_z > (bot.enemy.origin_z + 130))
        {
            strafeAngleChoice = (strafeAngleChoice + 1.1) + random();
            
            if(bot.weapon == IT_AXE)
            {
                strafeAngleChoice = FALSE;
            }
            
        }
        
    }
    
    if(strafeAngleChoice < 1.5)
    {
        
        if(BotMoveToGoal(bot, botspeed) != globaldef000716)
        {
            return;
        }
        
        strafeAngle = 90;
    }
    else
    {
        
        if(strafeAngleChoice < 2.4)
        {
            strafeAngle = 45;
        }
        
    }
    
    
    if(bot.botskill == FALSE)
    {
        return;
    }
    
    bot.field000272 = bot.field000272 + 0.1;
    
    if(bot.botskill < FL_SWIM)
    {
        
        if(bot.botskill < TRUE)
        {
            botspeed = 0.7 * botspeed;
        }
        
        
        if(bot.field000272 == 0.1)
        {
            rnd = random() * MOVETYPE_STEP;
            
            if(bot.botskill >= TRUE)
            {
                rnd = (rnd - bot.botskill) + RA_PLAYERSTATTIME;
            }
            
            
            if(rnd > bot.botskill)
            {
                bot.field000272 = FALSE;
                return;
            }
            
        }
        
    }
    
    
    if(bot.field000272 > 0.4)
    {
        rnd = random() * FL_SWIM;
        
        if(rnd > 1.87)
        {
            if(bot.botflags & GLOBALDEF687_16)
            {
                bot.botflags = bot.botflags - GLOBALDEF687_16;
            }
            else
            {
                bot.botflags = bot.botflags + GLOBALDEF687_16;
            }
            
            bot.field000272 = FALSE;
            return;
        }
        
    }
    
    
    if(bot.botflags & GLOBALDEF687_16)
    {
        strafeAngle = CONTENT_EMPTY * strafeAngle;
    }
    
    if((bot.botskill > 2.8) && (random() < 0.4))
    {
        
        if(BotJumpInDirection(bot, bot.ideal_yaw + strafeAngle, botspeed))
        {
            return;
        }
        
    }
    else
    {
        
        if(BotMoveInDirection(bot, bot.ideal_yaw + strafeAngle, botspeed))
        {
            return;
        }
        
    }
    
    bot.field000272 = FALSE;
    if(bot.botflags & GLOBALDEF687_16)
    {
        bot.botflags = bot.botflags - GLOBALDEF687_16;
    }
    else
    {
        bot.botflags = bot.botflags + GLOBALDEF687_16;
    }
    
    
    if((strafeAngle == 90) || (strafeAngle == -90))
    {
        rnd = random();
        
        if(rnd < 0.05)
        {
            
            if(BotMoveToGoal(bot, botspeed) != globaldef000716)
            {
                return;
            }
            
        }
        
        
        if(rnd < RA_PLAYERSTATTIME)
        {
            
            if(BotMoveInDirection(bot, bot.ideal_yaw + 180, botspeed * RA_PLAYERSTATTIME))
            {
                return;
            }
            
        }
        
    }
    
    BotMoveInDirection(bot, bot.ideal_yaw, botspeed);
};

