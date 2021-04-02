// jet_sound
// function begins at statement 7898, parm_start=6059
// OP_LOAD_ENT	28	206	6062
// OP_STORE_ENT	6062	6061	0
// OP_LOAD_F	6061	413	6063
// OP_DIV_F	6063	1228	6064
// OP_STORE_F	6064	6059	0
// OP_STORE_V	6059	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	6059	0
// OP_GT	6059	810	6065
// OP_IFNOT	6065	2	0
// OP_STORE_F	810	6059	0
// OP_LOAD_F	28	435	6066
// OP_GT	31	6066	6067
// OP_LOAD_F	6061	198	6068
// OP_NE_F	6068	6059	6069
// OP_OR	6067	6069	6070
// OP_IFNOT	6070	94	0
// OP_LOAD_F	6061	240	6071
// OP_MUL_F	6071	655	6072
// OP_ADD_F	6072	1349	6073
// OP_STORE_F	6073	6060	0
// OP_LOAD_F	28	197	6074
// OP_LOAD_F	28	404	6075
// OP_NE_F	6075	788	6076
// OP_AND	6074	6076	6077
// OP_IFNOT	6077	2	0
// OP_STORE_F	677	6060	0
// OP_EQ_F	6059	619	6078
// OP_IFNOT	6078	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6079	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	6059	677	6080
// OP_IFNOT	6080	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6081	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	61	0	0
// OP_EQ_F	6059	806	6082
// OP_IFNOT	6082	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6083	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	52	0	0
// OP_EQ_F	6059	788	6084
// OP_IFNOT	6084	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6085	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	43	0	0
// OP_EQ_F	6059	808	6086
// OP_IFNOT	6086	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6087	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	6059	813	6088
// OP_IFNOT	6088	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6089	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	6059	816	6090
// OP_IFNOT	6090	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6091	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	6059	819	6092
// OP_IFNOT	6092	8	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6093	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	6061	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6094	10	0
// OP_STORE_V	6060	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	6095
// OP_ADD_F	31	1349	6096
// OP_STOREP_F	6096	6095	0
// OP_ADDRESS	6061	198	6097
// OP_STOREP_F	6059	6097	0
// OP_DONE	0	0	0
void () jet_sound = 
{
    local float tmp;
    local float f1;
    local entity veh;
    veh = self.enemy;
    tmp = veh.speed / 70.000;
    tmp = floor(tmp);
    
    if(tmp > 8.000)
    {
        tmp = 8.000;
    }
    
    
    if((time > self.fly_sound) || (veh.impulse != tmp))
    {
        f1 = (veh.thru * 0.100) + 0.200;
        
        if(self.button2 && (self.style != 3.000))
        {
            f1 = 1.000;
        }
        
        if(tmp == 0.000)
        {
            sound(veh, CHAN_BODY, "engines/jet0.wav", f1, ATTN_NORM);
        }
        else
        {
            if(tmp == 1.000)
            {
                sound(veh, CHAN_BODY, "engines/jet1.wav", f1, ATTN_NORM);
            }
            else
            {
                if(tmp == 2.000)
                {
                    sound(veh, CHAN_BODY, "engines/jet2.wav", f1, ATTN_NORM);
                }
                else
                {
                    if(tmp == 3.000)
                    {
                        sound(veh, CHAN_BODY, "engines/jet3.wav", f1, ATTN_NORM);
                    }
                    else
                    {
                        if(tmp == 4.000)
                        {
                            sound(veh, CHAN_BODY, "engines/jet4.wav", f1, ATTN_NORM);
                        }
                        else
                        {
                            if(tmp == 5.000)
                            {
                                sound(veh, CHAN_BODY, "engines/jet5.wav", f1, ATTN_NORM);
                            }
                            else
                            {
                                if(tmp == 6.000)
                                {
                                    sound(veh, CHAN_BODY, "engines/jet6.wav", f1, ATTN_NORM);
                                }
                                else
                                {
                                    if(tmp == 7.000)
                                    {
                                        sound(veh, CHAN_BODY, "engines/jet7.wav", f1, ATTN_NORM);
                                    }
                                    else
                                    {
                                        sound(veh, CHAN_BODY, "engines/jet8.wav", f1, ATTN_NORM);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        self.fly_sound = time + 0.200;
        veh.impulse = tmp;
    }
    
};

// plane_upright
// function begins at statement 8009, parm_start=6099
// OP_LOAD_ENT	28	206	6103
// OP_STORE_ENT	6103	6099	0
// OP_LOAD_S	6099	154	6104
// OP_NE_S	6104	2097	6105
// OP_IFNOT	6105	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	6099	142	6106
// OP_STORE_V	6106	6100	0
// OP_STORE_V	6100	4	0
// OP_CALL1	534	0	0
// OP_GT	1	1268	6109
// OP_IFNOT	6109	24	0
// OP_ADD_F	6101	1827	6110
// OP_STORE_V	6110	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6101	0
// OP_ADD_F	6102	1827	6111
// OP_STORE_V	6111	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6102	0
// OP_GT	6102	1827	6112
// OP_IFNOT	6112	3	0
// OP_SUB_F	6102	1459	6113
// OP_STORE_F	6113	6102	0
// OP_ADDRESS	6099	146	6114
// OP_LOAD_V	6099	146	6117
// OP_SUB_V	607	6117	6120
// OP_STOREP_V	6120	6114	0
// OP_GE	6100	619	6123
// OP_IFNOT	6123	4	0
// OP_SUB_F	1827	6100	6124
// OP_STORE_F	6124	6100	0
// OP_GOTO	3	0	0
// OP_SUB_F	4766	6100	6125
// OP_STORE_F	6125	6100	0
// OP_STORE_V	6102	4	0
// OP_CALL1	534	0	0
// OP_GT	1	1827	6126
// OP_IFNOT	6126	8	0
// OP_GT	6102	1827	6127
// OP_IFNOT	6127	4	0
// OP_SUB_F	6102	1459	6128
// OP_STORE_F	6128	6102	0
// OP_GOTO	3	0	0
// OP_ADD_F	6102	1459	6129
// OP_STORE_F	6129	6102	0
// OP_ADDRESS	6099	142	6130
// OP_STOREP_V	6100	6130	0
// OP_DONE	0	0	0
void () plane_upright = 
{
    local entity stemp;
    local vector v1;
    stemp = self.enemy;
    
    if(stemp.classname != "plane")
    {
        return;
    }
    
    v1 = stemp.angles;
    
    if(fabs(v1_x) > 90.000)
    {
        v1_y = anglemod(0.000 + 180.000);
        v1_z = anglemod(0.000 + 180.000);
        
        if(0.000 > 180.000)
        {
            v1_z = 0.000 - 360.000;
        }
        
        stemp.avelocity = '0.000 0.000 0.000' - stemp.avelocity;
        if(v1_x >= 0.000)
        {
            v1_x = 180.000 - v1_x;
        }
        else
        {
            v1_x = -180.000 - v1_x;
        }
        
    }
    
    
    if(fabs(0.000) > 180.000)
    {
        if(0.000 > 180.000)
        {
            v1_z = 0.000 - 360.000;
        }
        else
        {
            v1_z = 0.000 + 360.000;
        }
        
    }
    
    stemp.angles = v1;
};

// Turn_plane
// function begins at statement 8058, parm_start=6134
// OP_LOAD_ENT	28	206	6150
// OP_STORE_ENT	6150	6140	0
// OP_STORE_V	607	6141	0
// OP_LOAD_F	6140	144	6151
// OP_SUB_F	6135	6151	6152
// OP_STORE_V	6152	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6142	0
// OP_GT	6142	1827	6153
// OP_IFNOT	6153	3	0
// OP_SUB_F	6142	1459	6154
// OP_STORE_F	6154	6142	0
// OP_LOAD_F	6140	143	6155
// OP_SUB_F	6134	6155	6156
// OP_STORE_F	6156	6141	0
// OP_STORE_V	6142	4	0
// OP_CALL1	534	0	0
// OP_GT	1	1268	6157
// OP_STORE_V	6142	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	6140	143	6158
// OP_ADD_F	6158	6134	6159
// OP_STORE_V	6159	4	0
// OP_CALL1	534	0	0
// OP_SUB_F	1827	1	6160
// OP_GT	1	6160	6161
// OP_AND	6157	6161	6162
// OP_IFNOT	6162	25	0
// OP_GE	6134	619	6163
// OP_IFNOT	6163	4	0
// OP_SUB_F	1827	6134	6164
// OP_STORE_F	6164	6134	0
// OP_GOTO	3	0	0
// OP_SUB_F	4766	6134	6165
// OP_STORE_F	6165	6134	0
// OP_ADD_F	6135	1827	6166
// OP_STORE_V	6166	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6135	0
// OP_STORE_V	607	6141	0
// OP_LOAD_F	6140	144	6167
// OP_SUB_F	6135	6167	6168
// OP_STORE_V	6168	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6142	0
// OP_GT	6142	1827	6169
// OP_IFNOT	6169	3	0
// OP_SUB_F	6142	1459	6170
// OP_STORE_F	6170	6142	0
// OP_LOAD_F	6140	143	6171
// OP_SUB_F	6134	6171	6172
// OP_STORE_F	6172	6141	0
// OP_STORE_V	607	6144	0
// OP_LT	6141	619	6173
// OP_IFNOT	6173	3	0
// OP_SUB_F	619	6137	6174
// OP_STORE_F	6174	6144	0
// OP_GT	6141	619	6175
// OP_IFNOT	6175	2	0
// OP_STORE_F	6137	6144	0
// OP_STORE_V	6141	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	32	6137	6176
// OP_LT	1	6176	6177
// OP_IFNOT	6177	4	0
// OP_STORE_F	619	6144	0
// OP_ADDRESS	6140	143	6178
// OP_STOREP_F	6134	6178	0
// OP_MUL_F	6142	813	6179
// OP_STORE_F	6179	6145	0
// OP_SUB_F	619	6138	6180
// OP_LT	6145	6180	6181
// OP_IFNOT	6181	3	0
// OP_SUB_F	619	6138	6182
// OP_STORE_F	6182	6145	0
// OP_GT	6145	6138	6183
// OP_IFNOT	6183	2	0
// OP_STORE_F	6138	6145	0
// OP_STORE_V	6142	4	0
// OP_CALL1	534	0	0
// OP_STORE_V	6145	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	32	1	6184
// OP_LT	1	6184	6185
// OP_IFNOT	6185	5	0
// OP_STORE_F	619	6145	0
// OP_ADDRESS	6140	144	6186
// OP_STOREP_F	6135	6186	0
// OP_GOTO	6	0	0
// OP_ADDRESS	6140	144	6187
// OP_LOAD_F	6140	144	6188
// OP_STORE_V	6188	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	6187	0
// OP_SUB_F	619	6145	6189
// OP_LOAD_F	6140	145	6190
// OP_SUB_F	6189	6190	6191
// OP_STORE_F	6191	6143	0
// OP_LT	6143	619	6192
// OP_IFNOT	6192	7	0
// OP_STORE_F	6193	6146	0
// OP_MUL_F	6143	827	6194
// OP_LT	6146	6194	6195
// OP_IFNOT	6195	3	0
// OP_MUL_F	6143	827	6196
// OP_STORE_F	6196	6146	0
// OP_GT	6143	619	6197
// OP_IFNOT	6197	7	0
// OP_STORE_F	986	6146	0
// OP_MUL_F	6143	827	6198
// OP_GT	6146	6198	6199
// OP_IFNOT	6199	3	0
// OP_MUL_F	6143	827	6200
// OP_STORE_F	6200	6146	0
// OP_LOAD_F	28	414	6201
// OP_IFNOT	6201	4	0
// OP_LOAD_F	28	414	6202
// OP_MUL_F	6202	986	6203
// OP_STORE_F	6203	6146	0
// OP_STORE_V	6143	4	0
// OP_CALL1	534	0	0
// OP_STORE_V	6146	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	32	1	6204
// OP_LT	1	6204	6205
// OP_IFNOT	6205	5	0
// OP_STORE_F	619	6146	0
// OP_ADDRESS	6140	145	6206
// OP_SUB_F	619	6145	6207
// OP_STOREP_F	6207	6206	0
// OP_LOAD_F	28	414	6208
// OP_IFNOT	6208	7	0
// OP_LOAD_F	6140	145	6209
// OP_MUL_VF	575	6209	6210
// OP_STORE_V	6210	4	0
// OP_CALL1	496	0	0
// OP_MUL_F	60	6138	6213
// OP_STORE_F	6213	6145	0
// OP_LOAD_F	6140	413	6214
// OP_LT	6214	6139	6215
// OP_IFNOT	6215	17	0
// OP_LOAD_F	6140	143	6216
// OP_STORE_V	6216	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1268	6217
// OP_IFNOT	6217	7	0
// OP_SUB_F	6144	6139	6218
// OP_SUB_F	6218	2618	6219
// OP_LOAD_F	6140	413	6220
// OP_ADD_F	6219	6220	6221
// OP_STORE_F	6221	6144	0
// OP_GOTO	6	0	0
// OP_ADD_F	6144	6139	6222
// OP_ADD_F	6222	2618	6223
// OP_LOAD_F	6140	413	6224
// OP_SUB_F	6223	6224	6225
// OP_STORE_F	6225	6144	0
// OP_ADDRESS	6140	146	6226
// OP_STOREP_V	6144	6226	0
// OP_DONE	0	0	0
void (vector v0, float sp_x, float sp_y, float sp_st) Turn_plane = 
{
    local entity stemp;
    local vector v1;
    local vector v2;
    local vector v3;
    stemp = self.enemy;
    v1 = '0.000 0.000 0.000';
    v1_y = anglemod(0.000 - stemp.angles_y);
    
    if(0.000 > 180.000)
    {
        v1_y = 0.000 - 360.000;
    }
    
    v1_x = v0_x - stemp.angles_x;
    fabs(0.000);
    
    if((fabs(0.000) > 90.000) && ((fabs(stemp.angles_x + v0_x)) > (180.000 - (fabs(stemp.angles_x + v0_x)))))
    {
        if(v0_x >= 0.000)
        {
            v0_x = 180.000 - v0_x;
        }
        else
        {
            v0_x = -180.000 - v0_x;
        }
        
        v0_y = anglemod(0.000 + 180.000);
        v1 = '0.000 0.000 0.000';
        v1_y = anglemod(0.000 - stemp.angles_y);
        
        if(0.000 > 180.000)
        {
            v1_y = 0.000 - 360.000;
        }
        
        v1_x = v0_x - stemp.angles_x;
    }
    
    v2 = '0.000 0.000 0.000';
    
    if(v1_x < 0.000)
    {
        v2_x = 0.000 - sp_x;
    }
    
    
    if(v1_x > 0.000)
    {
        v2_x = sp_x;
    }
    
    
    if(fabs(v1_x) < (frametime * sp_x))
    {
        v2_x = 0.000;
        stemp.angles_x = v0;
    }
    
    v2_y = 0.000 * 5.000;
    
    if(0.000 < (0.000 - sp_y))
    {
        v2_y = 0.000 - sp_y;
    }
    
    
    if(0.000 > sp_y)
    {
        v2_y = sp_y;
    }
    
    fabs(0.000);
    if(fabs(0.000) < (frametime * fabs(0.000)))
    {
        v2_y = 0.000;
        stemp.angles_y = 0.000;
    }
    else
    {
        stemp.angles_y = anglemod(stemp.angles_y);
    }
    
    v1_z = (0.000 - 0.000) - stemp.angles_z;
    
    if(0.000 < 0.000)
    {
        v2_z = -200.000;
        
        if(0.000 < (0.000 * 10.000))
        {
            v2_z = 0.000 * 10.000;
        }
        
    }
    
    
    if(0.000 > 0.000)
    {
        v2_z = 200.000;
        
        if(0.000 > (0.000 * 10.000))
        {
            v2_z = 0.000 * 10.000;
        }
        
    }
    
    
    if(self.lefty)
    {
        v2_z = self.lefty * 200.000;
    }
    
    fabs(0.000);
    
    if(fabs(0.000) < (frametime * fabs(0.000)))
    {
        v2_z = 0.000;
        stemp.angles_z = 0.000 - 0.000;
    }
    
    
    if(self.lefty)
    {
        makevectors('0.000 -1.000 0.000' * stemp.angles_z);
        v2_y = 0.000 * sp_y;
    }
    
    
    if(stemp.speed < sp_st)
    {
        if(fabs(stemp.angles_x) < 90.000)
        {
            v2_x = ((v2_x - sp_st) - 100.000) + stemp.speed;
        }
        else
        {
            v2_x = ((v2_x + sp_st) + 100.000) - stemp.speed;
        }
        
    }
    
    stemp.avelocity = v2;
};

// Steer_plane
// function begins at statement 8218, parm_start=6230
// OP_LOAD_ENT	28	206	6238
// OP_STORE_ENT	6238	6233	0
// OP_LOAD_V	6233	130	6239
// OP_STORE_V	6239	4	0
// OP_CALL1	533	0	0
// OP_LT	1	325	6242
// OP_IFNOT	6242	6	0
// OP_STORE_V	6233	4	0
// OP_STORE_V	6233	7	0
// OP_STORE_V	6233	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	6233	207	6243
// OP_LOAD_F	6233	207	6244
// OP_LOAD_F	6233	207	6245
// OP_BITAND	6245	277	6246
// OP_SUB_F	6244	6246	6247
// OP_STOREP_F	6247	6243	0
// OP_ADDRESS	28	207	6248
// OP_LOAD_F	28	207	6249
// OP_LOAD_F	28	207	6250
// OP_BITAND	6250	277	6251
// OP_SUB_F	6249	6251	6252
// OP_STOREP_F	6252	6248	0
// OP_LOAD_F	6233	241	6253
// OP_LOAD_F	6233	177	6254
// OP_LT	6254	677	6255
// OP_AND	6253	6255	6256
// OP_IFNOT	6256	3	0
// OP_ADDRESS	6233	241	6257
// OP_STOREP_F	619	6257	0
// OP_LOAD_F	6233	177	6258
// OP_GT	6258	619	6259
// OP_IFNOT	6259	62	0
// OP_LOAD_F	28	201	6260
// OP_STORE_F	6260	6234	0
// OP_LOAD_F	28	238	6261
// OP_EQ_F	6261	808	6262
// OP_IFNOT	6262	2	0
// OP_STORE_F	619	6234	0
// OP_SUB_F	619	6234	6263
// OP_STORE_F	6263	6234	0
// OP_LOAD_F	28	238	6264
// OP_EQ_F	6264	619	6265
// OP_IFNOT	6265	4	0
// OP_LOAD_F	28	202	6266
// OP_STORE_F	6266	6235	0
// OP_GOTO	33	0	0
// OP_LOAD_F	28	238	6267
// OP_EQ_F	6267	677	6268
// OP_IFNOT	6268	7	0
// OP_LOAD_F	28	202	6269
// OP_ADD_F	6269	1268	6270
// OP_STORE_V	6270	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6235	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	238	6271
// OP_EQ_F	6271	806	6272
// OP_IFNOT	6272	7	0
// OP_LOAD_F	28	202	6273
// OP_ADD_F	6273	1827	6274
// OP_STORE_V	6274	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6235	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	238	6275
// OP_EQ_F	6275	788	6276
// OP_IFNOT	6276	7	0
// OP_LOAD_F	28	202	6277
// OP_ADD_F	6277	2995	6278
// OP_STORE_V	6278	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	6235	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	238	6279
// OP_EQ_F	6279	808	6280
// OP_IFNOT	6280	3	0
// OP_LOAD_F	6233	144	6281
// OP_STORE_F	6281	6235	0
// OP_STORE_V	6234	4	0
// OP_STORE_V	6230	7	0
// OP_STORE_V	6231	10	0
// OP_STORE_V	6232	13	0
// OP_CALL4	6133	0	0
// OP_LOAD_F	6233	241	6282
// OP_IFNOT	6282	9	0
// OP_ADDRESS	6233	146	6283
// OP_LOAD_F	6233	148	6289
// OP_MUL_VF	6286	6289	6290
// OP_STOREP_V	6290	6283	0
// OP_ADDRESS	6233	142	6293
// OP_LOAD_F	6233	144	6296
// OP_MUL_VF	6286	6296	6297
// OP_STOREP_V	6297	6293	0
// OP_LOAD_F	6233	241	6300
// OP_IFNOT	6300	41	0
// OP_LOAD_F	6233	413	6301
// OP_GT	6301	6232	6302
// OP_LOAD_F	28	201	6303
// OP_LT	6303	619	6304
// OP_AND	6302	6304	6305
// OP_IFNOT	6305	6	0
// OP_ADDRESS	6233	176	6306
// OP_STOREP_ENT	30	6306	0
// OP_ADDRESS	6233	241	6307
// OP_STOREP_F	619	6307	0
// OP_GOTO	30	0	0
// OP_ADDRESS	6233	133	6308
// OP_LOAD_ENT	6233	176	6309
// OP_LOAD_F	6309	133	6310
// OP_LOAD_ENT	6233	176	6311
// OP_LOAD_F	6311	166	6312
// OP_ADD_F	6310	6312	6313
// OP_ADD_F	6313	812	6314
// OP_STOREP_F	6314	6308	0
// OP_ADDRESS	6233	145	6315
// OP_ADDRESS	6233	143	6316
// OP_STOREP_F	619	6316	0
// OP_STOREP_F	619	6315	0
// OP_ADDRESS	6233	141	6317
// OP_STOREP_F	619	6317	0
// OP_LOAD_V	6233	130	6318
// OP_STORE_V	6318	4	0
// OP_LOAD_V	6233	130	6321
// OP_ADD_V	6321	6324	6327
// OP_STORE_V	6327	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	78	154	6330
// OP_NE_S	6330	5708	6331
// OP_IFNOT	6331	5	0
// OP_ADDRESS	6233	176	6332
// OP_STOREP_ENT	30	6332	0
// OP_ADDRESS	6233	241	6333
// OP_STOREP_F	619	6333	0
// OP_LOAD_F	6233	177	6334
// OP_MUL_F	6334	2618	6335
// OP_LOAD_F	6233	210	6336
// OP_DIV_F	6335	6336	6337
// OP_STORE_F	6337	6237	0
// OP_LT	6237	677	6338
// OP_IFNOT	6338	2	0
// OP_STORE_F	677	6237	0
// OP_LOAD_F	28	177	6339
// OP_LT	6237	6339	6340
// OP_IFNOT	6340	5	0
// OP_ADDRESS	28	223	6341
// OP_LOAD_F	28	177	6342
// OP_SUB_F	6342	6237	6343
// OP_STOREP_F	6343	6341	0
// OP_ADDRESS	28	177	6344
// OP_STOREP_F	6237	6344	0
// OP_DONE	0	0	0
void (float sp_x, float sp_y, float sp_st) Steer_plane = 
{
    local entity stemp;
    local vector v0;
    local float tmp;
    stemp = self.enemy;
    
    if(pointcontents(stemp.origin) < CONTENT_EMPTY)
    {
        T_Damage(stemp, stemp, stemp, 1000.000);
    }
    
    stemp.flags = stemp.flags - (stemp.flags & FL_ONGROUND);
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    
    if(stemp.landed && (stemp.health < 1.000))
    {
        stemp.landed = 0.000;
    }
    
    
    if(stemp.health > 0.000)
    {
        v0_x = self.v_angle_x;
        
        if(self.toyview == 4.000)
        {
            v0_x = 0.000;
        }
        
        v0_x = 0.000 - v0_x;
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
        
        Turn_plane(v0, sp_x, sp_y, sp_st);
        
        if(stemp.landed)
        {
            stemp.avelocity = '0.000 1.000 0.000' * stemp.avelocity_y;
            stemp.angles = '0.000 1.000 0.000' * stemp.angles_y;
        }
        
    }
    
    
    if(stemp.landed)
    {
        if((stemp.speed > sp_st) && (self.v_angle_x < 0.000))
        {
            stemp.groundentity = world;
            stemp.landed = 0.000;
        }
        else
        {
            stemp.origin_z = (stemp.groundentity.origin_z + stemp.groundentity.maxs_z) + 16.000;
            stemp.angles_x = 0.000;
            stemp.angles_z = 0.000;
            stemp.velocity_z = 0.000;
            traceline(stemp.origin, stemp.origin + '0.000 0.000 -64.000', FALSE, self);
            
            if(trace_ent.classname != "func_runway")
            {
                stemp.groundentity = world;
                stemp.landed = 0.000;
            }
            
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
};

// Check_startlanded
// function begins at statement 8373, parm_start=6346
// OP_LOAD_ENT	28	206	6347
// OP_STORE_ENT	6347	6346	0
// OP_LOAD_V	6346	130	6348
// OP_STORE_V	6348	4	0
// OP_LOAD_V	6346	130	6351
// OP_ADD_V	6351	6354	6357
// OP_STORE_V	6357	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	78	154	6360
// OP_EQ_S	6360	5708	6361
// OP_IFNOT	6361	23	0
// OP_ADDRESS	6346	176	6362
// OP_STOREP_ENT	78	6362	0
// OP_ADDRESS	6346	241	6363
// OP_STOREP_F	677	6363	0
// OP_ADDRESS	6346	413	6364
// OP_STOREP_F	619	6364	0
// OP_ADDRESS	6346	240	6365
// OP_STOREP_F	619	6365	0
// OP_ADDRESS	6346	133	6366
// OP_LOAD_ENT	6346	176	6367
// OP_LOAD_F	6367	133	6368
// OP_LOAD_ENT	6346	176	6369
// OP_LOAD_F	6369	166	6370
// OP_ADD_F	6368	6370	6371
// OP_ADD_F	6371	812	6372
// OP_STOREP_F	6372	6366	0
// OP_ADDRESS	6346	145	6373
// OP_ADDRESS	6346	143	6374
// OP_STOREP_F	619	6374	0
// OP_STOREP_F	619	6373	0
// OP_ADDRESS	6346	138	6375
// OP_STOREP_V	607	6375	0
// OP_DONE	0	0	0
void () Check_startlanded = 
{
    local entity stemp;
    stemp = self.enemy;
    traceline(stemp.origin, stemp.origin + '0.000 0.000 -128.000', FALSE, self);
    
    if(trace_ent.classname == "func_runway")
    {
        stemp.groundentity = trace_ent;
        stemp.landed = 1.000;
        stemp.speed = 0.000;
        stemp.thru = 0.000;
        stemp.origin_z = (stemp.groundentity.origin_z + stemp.groundentity.maxs_z) + 16.000;
        stemp.angles_x = 0.000;
        stemp.angles_z = 0.000;
        stemp.velocity = '0.000 0.000 0.000';
    }
    
};

// setplanespeed
// function begins at statement 8409, parm_start=6379
// OP_LOAD_ENT	28	206	6383
// OP_STORE_ENT	6383	6382	0
// OP_LOAD_F	6382	241	6384
// OP_IFNOT	6384	6	0
// OP_MUL_F	6379	6385	6386
// OP_STORE_F	6386	6379	0
// OP_MUL_F	6381	806	6387
// OP_STORE_F	6387	6381	0
// OP_GOTO	3	0	0
// OP_MUL_F	6380	806	6388
// OP_STORE_F	6388	6380	0
// OP_LOAD_F	6382	413	6389
// OP_GE	6389	6379	6390
// OP_IFNOT	6390	11	0
// OP_ADDRESS	6382	413	6391
// OP_LOAD_F	6382	413	6392
// OP_SUB_F	6392	6381	6393
// OP_STOREP_F	6393	6391	0
// OP_LOAD_F	6382	413	6394
// OP_LT	6394	6379	6395
// OP_IFNOT	6395	3	0
// OP_ADDRESS	6382	413	6396
// OP_STOREP_F	6379	6396	0
// OP_GOTO	10	0	0
// OP_ADDRESS	6382	413	6397
// OP_LOAD_F	6382	413	6398
// OP_ADD_F	6398	6380	6399
// OP_STOREP_F	6399	6397	0
// OP_LOAD_F	6382	413	6400
// OP_GT	6400	6379	6401
// OP_IFNOT	6401	3	0
// OP_ADDRESS	6382	413	6402
// OP_STOREP_F	6379	6402	0
// OP_DONE	0	0	0
void (float tsp, float asp, float dsp) setplanespeed = 
{
    local entity stemp;
    stemp = self.enemy;
    if(stemp.landed)
    {
        tsp = tsp * 0.750;
        dsp = dsp * 2.000;
    }
    else
    {
        asp = asp * 2.000;
    }
    
    if(stemp.speed >= tsp)
    {
        stemp.speed = stemp.speed - dsp;
        
        if(stemp.speed < tsp)
        {
            stemp.speed = tsp;
        }
        
    }
    else
    {
        stemp.speed = stemp.speed + asp;
        
        if(stemp.speed > tsp)
        {
            stemp.speed = tsp;
        }
        
    }
    
};

