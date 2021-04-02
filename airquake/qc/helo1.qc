// he1_currentammo
// function begins at statement 12996, parm_start=10000
// OP_ADDRESS	28	183	10000
// OP_LOAD_F	28	245	10001
// OP_STOREP_F	10001	10000	0
// OP_ADDRESS	28	184	10002
// OP_LOAD_F	28	246	10003
// OP_STOREP_F	10003	10002	0
// OP_ADDRESS	28	185	10004
// OP_LOAD_F	28	248	10005
// OP_STOREP_F	10005	10004	0
// OP_ADDRESS	28	186	10006
// OP_LOAD_F	28	249	10007
// OP_STOREP_F	10007	10006	0
// OP_LOAD_F	28	179	10008
// OP_EQ_F	10008	321	10009
// OP_IFNOT	10009	4	0
// OP_ADDRESS	28	180	10010
// OP_STOREP_S	7632	10010	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	10011
// OP_EQ_F	10011	322	10012
// OP_IFNOT	10012	4	0
// OP_ADDRESS	28	180	10013
// OP_STOREP_S	7636	10013	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	10014
// OP_EQ_F	10014	323	10015
// OP_IFNOT	10015	4	0
// OP_ADDRESS	28	180	10016
// OP_STOREP_S	7640	10016	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	10017
// OP_EQ_F	10017	324	10018
// OP_IFNOT	10018	3	0
// OP_ADDRESS	28	180	10019
// OP_STOREP_S	10020	10019	0
// OP_DONE	0	0	0
void () he1_currentammo = 
{
    self.ammo_shells = self.ammo_auto;
    self.ammo_nails = self.ammo_rock;
    self.ammo_rockets = self.ammo_amsl;
    self.ammo_cells = self.ammo_smsl;
    if(self.weapon == IT_WEP1)
    {
        self.weaponmodel = "progs/v_auto.mdl";
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.weaponmodel = "progs/v_rock.mdl";
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weaponmodel = "progs/v_sider.mdl";
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    self.weaponmodel = "progs/v_hell.mdl";
                }
                
            }
            
        }
        
    }
    
};

// he1_steer
// function begins at statement 13032, parm_start=10022
// OP_LOAD_ENT	28	206	10038
// OP_STORE_ENT	10038	10022	0
// OP_LOAD_F	28	435	10039
// OP_GT	31	10039	10040
// OP_IFNOT	10040	13	0
// OP_STORE_V	10022	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10041	10	0
// OP_LOAD_F	10022	240	10042
// OP_MUL_F	10042	1349	10043
// OP_ADD_F	10043	1349	10044
// OP_STORE_V	10044	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	10045
// OP_ADD_F	31	677	10046
// OP_STOREP_F	10046	10045	0
// OP_ADDRESS	28	207	10047
// OP_LOAD_F	28	207	10048
// OP_LOAD_F	28	207	10049
// OP_BITAND	10049	277	10050
// OP_SUB_F	10048	10050	10051
// OP_STOREP_F	10051	10047	0
// OP_ADDRESS	10022	207	10052
// OP_LOAD_F	10022	207	10053
// OP_LOAD_F	10022	207	10054
// OP_BITAND	10054	277	10055
// OP_SUB_F	10053	10055	10056
// OP_STOREP_F	10056	10052	0
// OP_LOAD_V	10022	130	10057
// OP_STORE_V	10057	4	0
// OP_CALL1	533	0	0
// OP_LT	1	325	10060
// OP_IFNOT	10060	6	0
// OP_STORE_V	10022	4	0
// OP_STORE_V	10022	7	0
// OP_STORE_V	10022	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_STORE_F	619	10037	0
// OP_LOAD_F	28	197	10061
// OP_IFNOT	10061	2	0
// OP_STORE_F	677	10037	0
// OP_LOAD_F	10022	143	10062
// OP_LT	10062	4766	10063
// OP_IFNOT	10063	5	0
// OP_ADDRESS	10022	143	10064
// OP_LOAD_F	10022	143	10065
// OP_ADD_F	10065	1459	10066
// OP_STOREP_F	10066	10064	0
// OP_LOAD_F	10022	143	10067
// OP_GT	10067	1827	10068
// OP_IFNOT	10068	5	0
// OP_ADDRESS	10022	143	10069
// OP_LOAD_F	10022	143	10070
// OP_SUB_F	10070	1459	10071
// OP_STOREP_F	10071	10069	0
// OP_LOAD_F	10022	177	10072
// OP_GT	10072	619	10073
// OP_LOAD_F	10022	241	10074
// OP_NOT_F	10074	0	10075
// OP_AND	10073	10075	10076
// OP_IFNOT	10076	168	0
// OP_STORE_V	607	10024	0
// OP_LOAD_F	28	201	10077
// OP_SUB_F	619	10077	10078
// OP_STORE_F	10078	10024	0
// OP_LOAD_F	28	238	10079
// OP_EQ_F	10079	808	10080
// OP_IFNOT	10080	2	0
// OP_STORE_F	619	10024	0
// OP_IFNOT	10037	19	0
// OP_LOAD_V	28	200	10081
// OP_STORE_V	10081	10027	0
// OP_LOAD_V	10022	142	10084
// OP_STORE_V	10084	10030	0
// OP_SUB_V	10027	10030	10087
// OP_STORE_V	10087	10033	0
// OP_STORE_F	619	10033	0
// OP_STORE_F	619	10035	0
// OP_STORE_V	10033	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	59	10036	0
// OP_MUL_F	1155	10036	10090
// OP_SUB_F	10024	10090	10091
// OP_STORE_F	10091	10024	0
// OP_STORE_F	60	10036	0
// OP_MUL_F	1155	10036	10092
// OP_SUB_F	10026	10092	10093
// OP_STORE_F	10093	10026	0
// OP_LT	10024	10094	10095
// OP_IFNOT	10095	2	0
// OP_STORE_F	10094	10024	0
// OP_GT	10024	1193	10096
// OP_IFNOT	10096	2	0
// OP_STORE_F	1193	10024	0
// OP_LOAD_F	28	238	10097
// OP_EQ_F	10097	619	10098
// OP_IFNOT	10098	4	0
// OP_LOAD_F	28	202	10099
// OP_STORE_F	10099	10025	0
// OP_GOTO	33	0	0
// OP_LOAD_F	28	238	10100
// OP_EQ_F	10100	677	10101
// OP_IFNOT	10101	7	0
// OP_LOAD_F	28	202	10102
// OP_ADD_F	10102	1268	10103
// OP_STORE_V	10103	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	10025	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	238	10104
// OP_EQ_F	10104	806	10105
// OP_IFNOT	10105	7	0
// OP_LOAD_F	28	202	10106
// OP_ADD_F	10106	1827	10107
// OP_STORE_V	10107	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	10025	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	238	10108
// OP_EQ_F	10108	788	10109
// OP_IFNOT	10109	7	0
// OP_LOAD_F	28	202	10110
// OP_ADD_F	10110	2995	10111
// OP_STORE_V	10111	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	10025	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	238	10112
// OP_EQ_F	10112	808	10113
// OP_IFNOT	10113	3	0
// OP_LOAD_F	10022	144	10114
// OP_STORE_F	10114	10025	0
// OP_STORE_V	607	10027	0
// OP_LOAD_F	10022	144	10115
// OP_SUB_F	10025	10115	10116
// OP_STORE_V	10116	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	10028	0
// OP_GT	10028	1827	10117
// OP_IFNOT	10117	3	0
// OP_SUB_F	10028	1459	10118
// OP_STORE_F	10118	10028	0
// OP_LOAD_F	10022	143	10119
// OP_SUB_F	10024	10119	10120
// OP_STORE_F	10120	10027	0
// OP_STORE_V	607	10030	0
// OP_LT	10027	619	10121
// OP_IFNOT	10121	2	0
// OP_STORE_F	5845	10030	0
// OP_GT	10027	619	10122
// OP_IFNOT	10122	2	0
// OP_STORE_F	1228	10030	0
// OP_STORE_V	10027	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	32	1228	10123
// OP_LT	1	10123	10124
// OP_IFNOT	10124	4	0
// OP_STORE_F	619	10030	0
// OP_ADDRESS	10022	143	10125
// OP_STOREP_F	10024	10125	0
// OP_LT	10028	619	10126
// OP_IFNOT	10126	2	0
// OP_STORE_F	10127	10031	0
// OP_GT	10028	619	10128
// OP_IFNOT	10128	2	0
// OP_STORE_F	3011	10031	0
// OP_STORE_V	10028	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	32	3011	10129
// OP_LT	1	10129	10130
// OP_IFNOT	10130	5	0
// OP_STORE_F	619	10031	0
// OP_ADDRESS	10022	144	10131
// OP_STOREP_F	10025	10131	0
// OP_GOTO	6	0	0
// OP_ADDRESS	10022	144	10132
// OP_LOAD_F	10022	144	10133
// OP_STORE_V	10133	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	10132	0
// OP_LOAD_F	10022	143	10134
// OP_STORE_V	10134	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	10031	1	10135
// OP_MUL_F	10135	2472	10136
// OP_SUB_F	10026	10136	10137
// OP_STORE_F	10137	10026	0
// OP_LOAD_F	28	414	10138
// OP_MUL_F	1193	10138	10139
// OP_ADD_F	10026	10139	10140
// OP_STORE_F	10140	10026	0
// OP_LT	10026	10094	10141
// OP_IFNOT	10141	2	0
// OP_STORE_F	10094	10026	0
// OP_GT	10026	1193	10142
// OP_IFNOT	10142	2	0
// OP_STORE_F	1193	10026	0
// OP_LOAD_F	10022	145	10143
// OP_SUB_F	10026	10143	10144
// OP_STORE_F	10144	10029	0
// OP_LT	10029	619	10145
// OP_IFNOT	10145	7	0
// OP_STORE_F	7776	10032	0
// OP_MUL_F	10029	827	10146
// OP_LT	10032	10146	10147
// OP_IFNOT	10147	3	0
// OP_MUL_F	10029	827	10148
// OP_STORE_F	10148	10032	0
// OP_GT	10029	619	10149
// OP_IFNOT	10149	7	0
// OP_STORE_F	2618	10032	0
// OP_MUL_F	10029	827	10150
// OP_GT	10032	10150	10151
// OP_IFNOT	10151	3	0
// OP_MUL_F	10029	827	10152
// OP_STORE_F	10152	10032	0
// OP_STORE_V	10029	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	10032	32	10153
// OP_LT	1	10153	10154
// OP_IFNOT	10154	6	0
// OP_STORE_F	619	10032	0
// OP_ADDRESS	10022	145	10155
// OP_MUL_F	10031	1687	10156
// OP_SUB_F	619	10156	10157
// OP_STOREP_F	10157	10155	0
// OP_ADDRESS	10022	146	10158
// OP_STOREP_V	10030	10158	0
// OP_LOAD_F	10022	241	10161
// OP_IFNOT	10161	15	0
// OP_LOAD_ENT	10022	176	10162
// OP_LOAD_S	10162	154	10163
// OP_NE_S	10163	5708	10164
// OP_LOAD_F	10022	240	10165
// OP_GT	10165	806	10166
// OP_OR	10164	10166	10167
// OP_LOAD_F	10022	177	10168
// OP_LT	10168	677	10169
// OP_OR	10167	10169	10170
// OP_IFNOT	10170	5	0
// OP_ADDRESS	10022	241	10171
// OP_STOREP_F	619	10171	0
// OP_ADDRESS	10022	176	10172
// OP_STOREP_ENT	30	10172	0
// OP_LOAD_F	10022	177	10173
// OP_MUL_F	10173	2618	10174
// OP_LOAD_F	10022	210	10175
// OP_DIV_F	10174	10175	10176
// OP_STORE_F	10176	10036	0
// OP_LT	10036	677	10177
// OP_IFNOT	10177	2	0
// OP_STORE_F	677	10036	0
// OP_LOAD_F	28	177	10178
// OP_LT	10036	10178	10179
// OP_IFNOT	10179	5	0
// OP_ADDRESS	28	223	10180
// OP_LOAD_F	28	177	10181
// OP_SUB_F	10181	10036	10182
// OP_STOREP_F	10182	10180	0
// OP_ADDRESS	28	177	10183
// OP_STOREP_F	10036	10183	0
// OP_LOAD_F	28	177	10184
// OP_LT	10184	1111	10185
// OP_LOAD_S	10022	155	10186
// OP_EQ_S	10186	10187	10188
// OP_AND	10185	10188	10189
// OP_IFNOT	10189	4	0
// OP_STORE_V	10022	4	0
// OP_STORE_V	10190	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	10191
// OP_GE	10191	1111	10192
// OP_LOAD_S	10022	155	10193
// OP_EQ_S	10193	10190	10194
// OP_AND	10192	10194	10195
// OP_IFNOT	10195	4	0
// OP_STORE_V	10022	4	0
// OP_STORE_V	10187	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	10022	177	10196
// OP_LT	10196	677	10197
// OP_IFNOT	10197	11	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	10198
// OP_STORE_F	10198	10036	0
// OP_ADDRESS	28	223	10199
// OP_LOAD_F	28	223	10200
// OP_ADD_F	10200	10036	10201
// OP_STOREP_F	10201	10199	0
// OP_ADDRESS	10022	158	10202
// OP_STOREP_F	808	10202	0
// OP_GOTO	3	0	0
// OP_ADDRESS	10022	158	10203
// OP_STOREP_F	619	10203	0
// OP_LOAD_V	10022	142	10204
// OP_STORE_V	10204	10033	0
// OP_SUB_F	619	10033	10207
// OP_STORE_F	10207	10033	0
// OP_STORE_V	10033	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	10022	240	10208
// OP_NE_F	10208	806	10209
// OP_LOAD_F	10022	177	10210
// OP_LT	10210	677	10211
// OP_OR	10209	10211	10212
// OP_IFNOT	10212	7	0
// OP_MUL_VF	62	1111	10213
// OP_LOAD_F	10022	240	10216
// OP_MUL_VF	10213	10216	10217
// OP_SUB_V	10217	10220	10223
// OP_STORE_V	10223	10033	0
// OP_GOTO	7	0	0
// OP_LOAD_F	10022	240	10226
// OP_MUL_F	1111	10226	10227
// OP_DIV_F	10227	64	10228
// OP_MUL_VF	62	10228	10229
// OP_SUB_V	10229	10220	10232
// OP_STORE_V	10232	10033	0
// OP_LOAD_F	28	466	10235
// OP_GE	31	10235	10236
// OP_IFNOT	10236	21	0
// OP_ADDRESS	28	466	10237
// OP_ADD_F	31	655	10238
// OP_STOREP_F	10238	10237	0
// OP_LOAD_F	10022	241	10239
// OP_NOT_F	10239	0	10240
// OP_IFNOT	10240	13	0
// OP_ADDRESS	10022	138	10241
// OP_LOAD_V	10022	138	10244
// OP_MUL_VF	10244	10247	10248
// OP_ADD_V	10248	10033	10251
// OP_STOREP_V	10251	10241	0
// OP_ADDRESS	28	213	10254
// OP_LOAD_V	10022	138	10255
// OP_STORE_V	10255	4	0
// OP_CALL1	506	0	0
// OP_DIV_F	1	7730	10258
// OP_STOREP_F	10258	10254	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	213	10259
// OP_STOREP_F	619	10259	0
// OP_LOAD_F	10022	133	10260
// OP_GT	10260	93	10261
// OP_AND	93	10261	10262
// OP_IFNOT	10262	13	0
// OP_LOAD_F	10022	141	10263
// OP_GT	10263	619	10264
// OP_IFNOT	10264	10	0
// OP_ADDRESS	10022	133	10265
// OP_STOREP_F	93	10265	0
// OP_ADDRESS	10022	141	10266
// OP_STOREP_F	619	10266	0
// OP_LOAD_F	10022	143	10267
// OP_GT	10267	619	10268
// OP_IFNOT	10268	3	0
// OP_ADDRESS	10022	143	10269
// OP_STOREP_F	619	10269	0
// OP_STORE_V	10022	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	10022	208	10270
// OP_LOAD_F	28	208	10271
// OP_NE_F	10270	10271	10272
// OP_IFNOT	10272	4	0
// OP_ADDRESS	10022	208	10273
// OP_LOAD_F	28	208	10274
// OP_STOREP_F	10274	10273	0
// OP_LOAD_ENT	28	412	10275
// OP_ADDRESS	10275	138	10276
// OP_LOAD_V	10022	138	10279
// OP_STOREP_V	10279	10276	0
// OP_LOAD_ENT	28	206	10282
// OP_LOAD_V	10282	142	10283
// OP_STORE_V	10283	10030	0
// OP_SUB_F	619	10030	10286
// OP_STORE_F	10286	10030	0
// OP_STORE_V	10030	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	10030	0
// OP_LOAD_F	28	179	10287
// OP_EQ_F	10287	321	10288
// OP_IFNOT	10288	13	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	10027	0
// OP_MUL_V	10030	10027	10289
// OP_LT	10289	2571	10290
// OP_IFNOT	10290	5	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10027	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	10291
// OP_EQ_F	10291	322	10292
// OP_IFNOT	10292	6	0
// OP_STORE_V	10293	4	0
// OP_STORE_V	7770	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10027	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	10294
// OP_EQ_F	10294	323	10295
// OP_IFNOT	10295	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10027	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	10296
// OP_EQ_F	10296	324	10297
// OP_IFNOT	10297	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10027	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10027	0
// OP_LOAD_ENT	28	464	10298
// OP_NOT_ENT	10298	0	10299
// OP_IFNOT	10299	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	10027	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	10027	0
// OP_LOAD_V	10022	130	10300
// OP_STORE_V	10300	4	0
// OP_LOAD_V	10022	130	10303
// OP_MUL_VF	10027	986	10306
// OP_ADD_V	10303	10306	10309
// OP_STORE_V	10309	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	10022	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	10312
// OP_LOAD_ENT	10312	464	10313
// OP_EQ_E	10313	30	10314
// OP_IFNOT	10314	11	0
// OP_LOAD_V	10022	130	10315
// OP_MUL_F	70	986	10318
// OP_SUB_F	10318	810	10319
// OP_MUL_VF	10027	10319	10320
// OP_ADD_V	10315	10320	10323
// OP_STORE_V	10323	10030	0
// OP_LOAD_ENT	28	464	10326
// OP_ADDRESS	10326	156	10327
// OP_STOREP_F	619	10327	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	10030	0
// OP_LOAD_ENT	28	464	10328
// OP_STORE_V	10328	4	0
// OP_STORE_V	10030	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () he1_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    local float mov;
    stemp = self.enemy;
    
    if(time > self.fly_sound)
    {
        sound(stemp, CHAN_BODY, "engines/chopper.wav", (stemp.thru * 0.200) + 0.200, ATTN_NORM);
        self.fly_sound = time + 1.000;
    }
    
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    stemp.flags = stemp.flags - (stemp.flags & FL_ONGROUND);
    
    if(pointcontents(stemp.origin) < CONTENT_EMPTY)
    {
        T_Damage(stemp, stemp, stemp, 1000.000);
    }
    
    mov = 0.000;
    
    if(self.button2)
    {
        mov = 1.000;
    }
    
    
    if(stemp.angles_x < -180.000)
    {
        stemp.angles_x = stemp.angles_x + 360.000;
    }
    
    
    if(stemp.angles_x > 180.000)
    {
        stemp.angles_x = stemp.angles_x - 360.000;
    }
    
    
    if((stemp.health > 0.000) && !stemp.landed)
    {
        v0 = '0.000 0.000 0.000';
        v0_x = 0.000 - self.v_angle_x;
        
        if(self.toyview == 4.000)
        {
            v0_x = 0.000;
        }
        
        
        if(mov)
        {
            v1 = self.v_angle;
            v2 = stemp.angles;
            v3 = v1 - v2;
            v3_x = 0.000;
            v3_z = 0.000;
            makevectors(v3);
            tmp = v_forward_x;
            v0_x = v0_x - (40.000 * tmp);
            tmp = 0.000;
            v0_z = 0.000 - (40.000 * tmp);
        }
        
        
        if(v0_x < -45.000)
        {
            v0_x = -45.000;
        }
        
        
        if(v0_x > 45.000)
        {
            v0_x = 45.000;
        }
        
        if(self.toyview == 0.000)
        {
            v0_y = self.v_angle_y;
        }
        else
        {
            if(self.toyview == 1.000)
            {
                v0_y = anglemod(self.v_angle_y + 90.000);
            }
            else
            {
                if(self.toyview == 2.000)
                {
                    v0_y = anglemod(self.v_angle_y + 180.000);
                }
                else
                {
                    if(self.toyview == 3.000)
                    {
                        v0_y = anglemod(self.v_angle_y + 270.000);
                    }
                    else
                    {
                        
                        if(self.toyview == 4.000)
                        {
                            v0_y = stemp.angles_y;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        v1 = '0.000 0.000 0.000';
        v1_y = anglemod(0.000 - stemp.angles_y);
        
        if(0.000 > 180.000)
        {
            v1_y = 0.000 - 360.000;
        }
        
        v1_x = v0_x - stemp.angles_x;
        v2 = '0.000 0.000 0.000';
        
        if(v1_x < 0.000)
        {
            v2_x = -70.000;
        }
        
        
        if(v1_x > 0.000)
        {
            v2_x = 70.000;
        }
        
        
        if(fabs(v1_x) < (frametime * 70.000))
        {
            v2_x = 0.000;
            stemp.angles_x = v0_x;
        }
        
        
        if(0.000 < 0.000)
        {
            v2_y = -110.000;
        }
        
        
        if(0.000 > 0.000)
        {
            v2_y = 110.000;
        }
        
        if(fabs(0.000) < (frametime * 110.000))
        {
            v2_y = 0.000;
            stemp.angles_y = 0.000;
        }
        else
        {
            stemp.angles_y = anglemod(stemp.angles_y);
        }
        
        v0_z = 0.000 - ((0.000 * fabs(stemp.angles_x)) * 0.010);
        v0_z = 0.000 + (45.000 * self.lefty);
        
        if(0.000 < -45.000)
        {
            v0_z = -45.000;
        }
        
        
        if(0.000 > 45.000)
        {
            v0_z = 45.000;
        }
        
        v1_z = 0.000 - stemp.angles_z;
        
        if(0.000 < 0.000)
        {
            v2_z = -100.000;
            
            if(0.000 < (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(0.000 > 0.000)
        {
            v2_z = 100.000;
            
            if(0.000 > (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(fabs(0.000) < (0.000 * frametime))
        {
            v2_z = 0.000;
            stemp.angles_z = 0.000 - (0.000 * 0.300);
        }
        
        stemp.avelocity = v2;
    }
    
    
    if(stemp.landed)
    {
        
        if(((stemp.groundentity.classname != "func_runway") || (stemp.thru > 2.000)) || (stemp.health < 1.000))
        {
            stemp.landed = 0.000;
            stemp.groundentity = world;
        }
        
    }
    
    tmp = (stemp.health * 100.000) / stemp.max_health;
    
    if(tmp < 1.000)
    {
        tmp = 1.000;
    }
    
    
    if(tmp < self.health)
    {
        self.dmg_take = self.health - tmp;
    }
    
    self.health = tmp;
    
    if((self.health < 20.000) && (stemp.model == "progs/helo1.mdl"))
    {
        setmodel(stemp, "progs/helo1b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/helo1b.mdl"))
    {
        setmodel(stemp, "progs/helo1.mdl");
    }
    
    if(stemp.health < 1.000)
    {
        tmp = random() * 50.000;
        self.dmg_take = self.dmg_take + tmp;
        stemp.effects = 4.000;
    }
    else
    {
        stemp.effects = 0.000;
    }
    
    v3 = stemp.angles;
    v3_x = 0.000 - v3_x;
    makevectors(v3);
    if((stemp.thru != 2.000) || (stemp.health < 1.000))
    {
        v3 = ((v_up * 20.000) * stemp.thru) - '0.000 0.000 40.000';
    }
    else
    {
        v3 = (v_up * ((20.000 * stemp.thru) / 0.000)) - '0.000 0.000 40.000';
    }
    
    
    if(time >= self.pausetime)
    {
        self.pausetime = time + 0.100;
        if(!stemp.landed)
        {
            stemp.velocity = (stemp.velocity * 0.800) + v3;
            self.armorvalue = vlen(stemp.velocity) / 3.300;
        }
        else
        {
            self.armorvalue = 0.000;
        }
        
    }
    
    
    if(sky_z && (stemp.origin_z > sky_z))
    {
        
        if(stemp.velocity_z > 0.000)
        {
            stemp.origin_z = sky_z;
            stemp.velocity_z = 0.000;
            
            if(stemp.angles_x > 0.000)
            {
                stemp.angles_x = 0.000;
            }
            
        }
        
    }
    
    Check_minsmaxs(stemp);
    
    if(stemp.colormap != self.colormap)
    {
        stemp.colormap = self.colormap;
    }
    
    self.oldenemy.velocity = stemp.velocity;
    v2 = self.enemy.angles;
    v2_x = 0.000 - v2_x;
    makevectors(v2);
    v2 = v_forward;
    if(self.weapon == IT_WEP1)
    {
        v1 = AC_aim2(0.970, -500.000);
        
        if((v2 * v1) < 0.700)
        {
            v1 = AC_aim(0.970, -500.000);
        }
        
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            v1 = AC_aim(0.950, -1000.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim(0.930, 1500.000);
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    v1 = AC_aim(0.930, 2000.000);
                }
                else
                {
                    v1 = AC_aim(1.000, -10.000);
                }
                
            }
            
        }
        
    }
    
    
    if(!self.trigger_field)
    {
        return;
    }
    
    v1 = normalize(v1);
    traceline(stemp.origin, stemp.origin + (v1 * 200.000), FALSE, stemp);
    if(self.enemy.trigger_field == world)
    {
        v2 = stemp.origin + (v1 * ((trace_fraction * 200.000) - 8.000));
        self.trigger_field.frame = 0.000;
    }
    else
    {
        v2 = place_targetbox();
    }
    
    setorigin(self.trigger_field, v2);
};

// he1_attack
// function begins at statement 13492, parm_start=10330
// OP_LOAD_ENT	28	206	10337
// OP_LOAD_V	10337	142	10338
// OP_STORE_V	10338	10330	0
// OP_SUB_F	619	10330	10341
// OP_STORE_F	10341	10330	0
// OP_STORE_V	10330	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	10330	0
// OP_LOAD_ENT	28	206	10342
// OP_ADDRESS	10342	464	10343
// OP_STOREP_ENT	30	10343	0
// OP_LOAD_F	28	179	10344
// OP_EQ_F	10344	321	10345
// OP_IFNOT	10345	49	0
// OP_LOAD_F	28	245	10346
// OP_GE	10346	677	10347
// OP_IFNOT	10347	39	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	10333	0
// OP_MUL_V	10333	10330	10348
// OP_LT	10348	2571	10349
// OP_IFNOT	10349	5	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10333	0
// OP_LOAD_ENT	28	206	10350
// OP_LOAD_V	10350	130	10351
// OP_MUL_VF	10330	827	10354
// OP_ADD_V	10351	10354	10357
// OP_STORE_V	10357	4	0
// OP_STORE_V	10333	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_ENT	28	206	10360
// OP_ADDRESS	10360	158	10361
// OP_LOAD_ENT	28	206	10362
// OP_LOAD_F	10362	158	10363
// OP_BITOR	10363	383	10364
// OP_STOREP_F	10364	10361	0
// OP_ADDRESS	28	182	10365
// OP_ADDRESS	28	183	10366
// OP_ADDRESS	28	245	10367
// OP_LOAD_F	28	245	10368
// OP_SUB_F	10368	677	10369
// OP_STOREP_F	10369	10367	0
// OP_STOREP_F	10369	10366	0
// OP_STOREP_F	10369	10365	0
// OP_LOAD_ENT	28	206	10370
// OP_ADDRESS	10370	437	10371
// OP_ADD_F	31	677	10372
// OP_STOREP_F	10372	10371	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	10373
// OP_ADD_F	31	655	10374
// OP_STOREP_F	10374	10373	0
// OP_GOTO	176	0	0
// OP_LOAD_F	28	179	10375
// OP_EQ_F	10375	322	10376
// OP_IFNOT	10376	62	0
// OP_LOAD_F	28	246	10377
// OP_GE	10377	677	10378
// OP_IFNOT	10378	52	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	7770	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10333	0
// OP_LOAD_F	28	246	10379
// OP_BITAND	10379	677	10380
// OP_IFNOT	10380	14	0
// OP_LOAD_ENT	28	206	10381
// OP_LOAD_V	10381	130	10382
// OP_MUL_VF	62	827	10385
// OP_SUB_V	10382	10385	10388
// OP_MUL_VF	10330	827	10391
// OP_SUB_V	10388	10391	10394
// OP_MUL_VF	65	827	10397
// OP_ADD_V	10394	10397	10400
// OP_STORE_V	10400	4	0
// OP_STORE_V	10333	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4169	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	10403
// OP_LOAD_V	10403	130	10404
// OP_MUL_VF	62	827	10407
// OP_SUB_V	10404	10407	10410
// OP_MUL_VF	10330	827	10413
// OP_SUB_V	10410	10413	10416
// OP_MUL_VF	65	827	10419
// OP_SUB_V	10416	10419	10422
// OP_STORE_V	10422	4	0
// OP_STORE_V	10333	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4169	0	0
// OP_LOAD_ENT	28	206	10425
// OP_ADDRESS	10425	158	10426
// OP_LOAD_ENT	28	206	10427
// OP_LOAD_F	10427	158	10428
// OP_BITOR	10428	383	10429
// OP_STOREP_F	10429	10426	0
// OP_ADDRESS	28	182	10430
// OP_ADDRESS	28	184	10431
// OP_ADDRESS	28	246	10432
// OP_LOAD_F	28	246	10433
// OP_SUB_F	10433	677	10434
// OP_STOREP_F	10434	10432	0
// OP_STOREP_F	10434	10431	0
// OP_STOREP_F	10434	10430	0
// OP_LOAD_ENT	28	206	10435
// OP_ADDRESS	10435	437	10436
// OP_ADD_F	31	677	10437
// OP_STOREP_F	10437	10436	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	10438
// OP_ADD_F	31	1350	10439
// OP_STOREP_F	10439	10438	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	179	10440
// OP_EQ_F	10440	323	10441
// OP_IFNOT	10441	62	0
// OP_LOAD_F	28	248	10442
// OP_GE	10442	677	10443
// OP_IFNOT	10443	52	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10333	0
// OP_LOAD_F	28	248	10444
// OP_BITAND	10444	677	10445
// OP_IFNOT	10445	14	0
// OP_LOAD_ENT	28	206	10446
// OP_LOAD_V	10446	130	10447
// OP_MUL_VF	10330	827	10450
// OP_SUB_V	10447	10450	10453
// OP_MUL_VF	65	812	10456
// OP_ADD_V	10453	10456	10459
// OP_STORE_V	10459	4	0
// OP_STORE_V	10330	7	0
// OP_LOAD_ENT	28	206	10462
// OP_LOAD_ENT	10462	464	10463
// OP_STORE_V	10463	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	10464
// OP_LOAD_V	10464	130	10465
// OP_MUL_VF	10330	827	10468
// OP_SUB_V	10465	10468	10471
// OP_MUL_VF	65	812	10474
// OP_SUB_V	10471	10474	10477
// OP_STORE_V	10477	4	0
// OP_STORE_V	10330	7	0
// OP_LOAD_ENT	28	206	10480
// OP_LOAD_ENT	10480	464	10481
// OP_STORE_V	10481	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	10482
// OP_ADDRESS	10482	158	10483
// OP_LOAD_ENT	28	206	10484
// OP_LOAD_F	10484	158	10485
// OP_BITOR	10485	383	10486
// OP_STOREP_F	10486	10483	0
// OP_ADDRESS	28	182	10487
// OP_ADDRESS	28	185	10488
// OP_ADDRESS	28	248	10489
// OP_LOAD_F	28	248	10490
// OP_SUB_F	10490	677	10491
// OP_STOREP_F	10491	10489	0
// OP_STOREP_F	10491	10488	0
// OP_STOREP_F	10491	10487	0
// OP_LOAD_ENT	28	206	10492
// OP_ADDRESS	10492	437	10493
// OP_ADD_F	31	677	10494
// OP_STOREP_F	10494	10493	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	10495
// OP_ADD_F	31	7985	10496
// OP_STOREP_F	10496	10495	0
// OP_GOTO	48	0	0
// OP_LOAD_F	28	179	10497
// OP_EQ_F	10497	324	10498
// OP_IFNOT	10498	45	0
// OP_LOAD_F	28	249	10499
// OP_GT	10499	619	10500
// OP_IFNOT	10500	36	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	10333	0
// OP_LOAD_ENT	28	206	10501
// OP_LOAD_V	10501	130	10502
// OP_MUL_VF	62	827	10505
// OP_SUB_V	10502	10505	10508
// OP_MUL_VF	10330	827	10511
// OP_SUB_V	10508	10511	10514
// OP_STORE_V	10514	4	0
// OP_STORE_V	10330	7	0
// OP_LOAD_ENT	28	206	10517
// OP_LOAD_ENT	10517	464	10518
// OP_STORE_V	10518	10	0
// OP_CALL3	4996	0	0
// OP_LOAD_ENT	28	206	10519
// OP_ADDRESS	10519	158	10520
// OP_LOAD_ENT	28	206	10521
// OP_LOAD_F	10521	158	10522
// OP_BITOR	10522	383	10523
// OP_STOREP_F	10523	10520	0
// OP_ADDRESS	28	182	10524
// OP_ADDRESS	28	186	10525
// OP_ADDRESS	28	249	10526
// OP_LOAD_F	28	249	10527
// OP_SUB_F	10527	677	10528
// OP_STOREP_F	10528	10526	0
// OP_STOREP_F	10528	10525	0
// OP_STOREP_F	10528	10524	0
// OP_LOAD_ENT	28	206	10529
// OP_ADDRESS	10529	437	10530
// OP_ADD_F	31	677	10531
// OP_STOREP_F	10531	10530	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	10532
// OP_ADD_F	31	806	10533
// OP_STOREP_F	10533	10532	0
// OP_DONE	0	0	0
void () he1_attack = 
{
    local vector v1;
    local vector v2;
    local entity stemp;
    v1 = self.enemy.angles;
    v1_x = 0.000 - v1_x;
    makevectors(v1);
    v1 = v_forward;
    self.enemy.trigger_field = world;
    if(self.weapon == IT_WEP1)
    {
        if(self.ammo_auto >= 1.000)
        {
            v2 = AC_aim2(0.970, -500.000);
            
            if((v2 * v1) < 0.700)
            {
                v2 = AC_aim(0.970, -500.000);
            }
            
            AC_spike(self.enemy.origin + (v1 * 10.000), v2, world);
            self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
            self.currentammo = self.ammo_shells = self.ammo_auto = self.ammo_auto - 1.000;
            self.enemy.show_hostile = time + 1.000;
        }
        else
        {
            sprint(self, "not enough ammo.\n");
        }
        
        self.attack_finished = time + 0.100;
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            if(self.ammo_rock >= 1.000)
            {
                v2 = AC_aim(0.930, -1000.000);
                if(self.ammo_rock & 1.000)
                {
                    AC_rocket(((self.enemy.origin - (v_up * 10.000)) - (v1 * 10.000)) + (v_right * 10.000), v2, world);
                }
                else
                {
                    AC_rocket(((self.enemy.origin - (v_up * 10.000)) - (v1 * 10.000)) - (v_right * 10.000), v2, world);
                }
                
                self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                self.currentammo = self.ammo_nails = self.ammo_rock = self.ammo_rock - 1.000;
                self.enemy.show_hostile = time + 1.000;
            }
            else
            {
                sprint(self, "not enough ammo.\n");
            }
            
            self.attack_finished = time + 0.400;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                if(self.ammo_amsl >= 1.000)
                {
                    v2 = AC_aim(0.930, 1500.000);
                    if(self.ammo_amsl & 1.000)
                    {
                        AC_sidewinder((self.enemy.origin - (v1 * 10.000)) + (v_right * 16.000), v1, self.enemy.trigger_field);
                    }
                    else
                    {
                        AC_sidewinder((self.enemy.origin - (v1 * 10.000)) - (v_right * 16.000), v1, self.enemy.trigger_field);
                    }
                    
                    self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                    self.currentammo = self.ammo_rockets = self.ammo_amsl = self.ammo_amsl - 1.000;
                    self.enemy.show_hostile = time + 1.000;
                }
                else
                {
                    sprint(self, "not enough ammo.\n");
                }
                
                self.attack_finished = time + 1.200;
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    if(self.ammo_smsl > 0.000)
                    {
                        v2 = AC_aim(0.930, 2000.000);
                        AC_hellfire((self.enemy.origin - (v_up * 10.000)) - (v1 * 10.000), v1, self.enemy.trigger_field);
                        self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                        self.currentammo = self.ammo_cells = self.ammo_smsl = self.ammo_smsl - 1.000;
                        self.enemy.show_hostile = time + 1.000;
                    }
                    else
                    {
                        sprint(self, "not enough ammo.\n");
                    }
                    
                    self.attack_finished = time + 2.000;
                }
                
            }
            
        }
        
    }
    
};

// start_helo1
// function begins at statement 13730, parm_start=10535
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	10535	0
// OP_STORE_V	10535	4	0
// OP_STORE_V	10187	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	10537
// OP_STORE_ENT	10537	10536	0
// OP_STORE_V	10535	4	0
// OP_LOAD_V	10536	130	10538
// OP_STORE_V	10538	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	10535	142	10541
// OP_LOAD_V	10536	142	10544
// OP_STOREP_V	10544	10541	0
// OP_ADDRESS	10535	154	10547
// OP_STOREP_S	2097	10547	0
// OP_ADDRESS	10535	138	10548
// OP_STOREP_V	607	10548	0
// OP_ADDRESS	10535	128	10551
// OP_STOREP_F	284	10551	0
// OP_STORE_V	10535	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	10535	129	10552
// OP_STOREP_F	294	10552	0
// OP_ADDRESS	10535	171	10553
// OP_STOREP_FNC	5883	10553	0
// OP_ADDRESS	10535	177	10554
// OP_STOREP_F	986	10554	0
// OP_ADDRESS	10535	210	10555
// OP_LOAD_F	10535	177	10556
// OP_STOREP_F	10556	10555	0
// OP_ADDRESS	10535	188	10557
// OP_STOREP_F	306	10557	0
// OP_ADDRESS	10535	411	10558
// OP_STOREP_FNC	6051	10558	0
// OP_ADDRESS	10535	205	10559
// OP_LOAD_S	28	205	10560
// OP_STOREP_S	10560	10559	0
// OP_ADDRESS	10535	240	10561
// OP_STOREP_F	806	10561	0
// OP_ADDRESS	28	206	10562
// OP_STOREP_ENT	10535	10562	0
// OP_ADDRESS	10535	219	10563
// OP_STOREP_ENT	28	10563	0
// OP_ADDRESS	10535	226	10564
// OP_STOREP_ENT	28	10564	0
// OP_ADDRESS	28	238	10565
// OP_STOREP_F	619	10565	0
// OP_ADDRESS	28	408	10566
// OP_STOREP_FNC	10329	10566	0
// OP_ADDRESS	28	407	10567
// OP_STOREP_FNC	10021	10567	0
// OP_ADDRESS	28	409	10568
// OP_STOREP_FNC	9999	10568	0
// OP_ADDRESS	28	183	10569
// OP_ADDRESS	28	245	10570
// OP_STOREP_F	2618	10570	0
// OP_STOREP_F	2618	10569	0
// OP_ADDRESS	28	184	10571
// OP_ADDRESS	28	246	10572
// OP_MUL_F	812	113	10573
// OP_STOREP_F	10573	10572	0
// OP_STOREP_F	10573	10571	0
// OP_ADDRESS	28	185	10574
// OP_ADDRESS	28	248	10575
// OP_MUL_F	808	113	10576
// OP_STOREP_F	10576	10575	0
// OP_STOREP_F	10576	10574	0
// OP_ADDRESS	28	186	10577
// OP_ADDRESS	28	249	10578
// OP_MUL_F	808	113	10579
// OP_STOREP_F	10579	10578	0
// OP_STOREP_F	10579	10577	0
// OP_CALL0	6345	0	0
// OP_DONE	0	0	0
void () start_helo1 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/helo1.mdl");
    e2 = self.goalentity;
    setorigin(e, e2.origin);
    e.angles = e2.angles;
    e.classname = "plane";
    e.velocity = '0.000 0.000 0.000';
    e.movetype = MOVETYPE_FLY;
    setsize(e, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    e.solid = SOLID_SLIDEBOX;
    e.touch = T_HETouch;
    e.health = 200.000;
    e.max_health = e.health;
    e.takedamage = DAMAGE_AIM;
    e.th_die = HE_Die;
    e.netname = self.netname;
    e.thru = 2.000;
    self.enemy = e;
    e.goalentity = self;
    e.owner = self;
    self.toyview = 0.000;
    self.th_missile = he1_attack;
    self.th_run = he1_steer;
    self.th_melee = he1_currentammo;
    self.ammo_auto = 100.000;
    self.ammo_shells = 100.000;
    self.ammo_nails = self.ammo_rock = 16.000 * wepmulti;
    self.ammo_rockets = self.ammo_amsl = 4.000 * wepmulti;
    self.ammo_cells = self.ammo_smsl = 4.000 * wepmulti;
    Check_startlanded();
};

