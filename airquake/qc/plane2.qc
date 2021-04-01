// ac2_currentammo
// function begins at statement 10512, parm_start=8094
// OP_ADDRESS	28	183	8094
// OP_LOAD_F	28	245	8095
// OP_STOREP_F	8095	8094	0
// OP_ADDRESS	28	184	8096
// OP_LOAD_F	28	248	8097
// OP_STOREP_F	8097	8096	0
// OP_ADDRESS	28	185	8098
// OP_LOAD_F	28	250	8099
// OP_STOREP_F	8099	8098	0
// OP_ADDRESS	28	186	8100
// OP_LOAD_F	28	249	8101
// OP_STOREP_F	8101	8100	0
// OP_LOAD_F	28	179	8102
// OP_EQ_F	8102	321	8103
// OP_IFNOT	8103	4	0
// OP_ADDRESS	28	180	8104
// OP_STOREP_S	7632	8104	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	8105
// OP_EQ_F	8105	322	8106
// OP_IFNOT	8106	4	0
// OP_ADDRESS	28	180	8107
// OP_STOREP_S	7640	8107	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	8108
// OP_EQ_F	8108	323	8109
// OP_IFNOT	8109	4	0
// OP_ADDRESS	28	180	8110
// OP_STOREP_S	8111	8110	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	8112
// OP_EQ_F	8112	324	8113
// OP_IFNOT	8113	3	0
// OP_ADDRESS	28	180	8114
// OP_STOREP_S	8115	8114	0
// OP_DONE	0	0	0
void () ac2_currentammo = 
{
    self.ammo_shells = self.ammo_auto;
    self.ammo_nails = self.ammo_amsl;
    self.ammo_rockets = self.ammo_bomb;
    self.ammo_cells = self.ammo_smsl;
    if(self.weapon == IT_WEP1)
    {
        self.weaponmodel = "progs/v_auto.mdl";
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.weaponmodel = "progs/v_sider.mdl";
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weaponmodel = "progs/v_bomb.mdl";
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    self.weaponmodel = "progs/v_maver.mdl";
                }
                
            }
            
        }
        
    }
    
};

// ac2_steer
// function begins at statement 10548, parm_start=8117
// OP_LOAD_ENT	28	206	8132
// OP_STORE_ENT	8132	8117	0
// OP_STORE_V	1252	4	0
// OP_STORE_V	1252	7	0
// OP_STORE_V	1827	10	0
// OP_CALL3	6229	0	0
// OP_CALL0	6058	0	0
// OP_LOAD_F	28	177	8133
// OP_LT	8133	1111	8134
// OP_LOAD_S	8117	155	8135
// OP_EQ_S	8135	8136	8137
// OP_AND	8134	8137	8138
// OP_IFNOT	8138	4	0
// OP_STORE_V	8117	4	0
// OP_STORE_V	8139	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	8140
// OP_GE	8140	1111	8141
// OP_LOAD_S	8117	155	8142
// OP_EQ_S	8142	8139	8143
// OP_AND	8141	8143	8144
// OP_IFNOT	8144	4	0
// OP_STORE_V	8117	4	0
// OP_STORE_V	8136	7	0
// OP_CALL2	498	0	0
// OP_LOAD_V	8117	142	8145
// OP_STORE_V	8145	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	8128	0
// OP_SUB_F	619	8130	8148
// OP_STORE_F	8148	8130	0
// OP_LOAD_F	28	466	8149
// OP_GE	31	8149	8150
// OP_IFNOT	8150	6	0
// OP_ADDRESS	8117	413	8151
// OP_LOAD_F	8117	413	8152
// OP_MUL_F	8130	827	8153
// OP_SUB_F	8152	8153	8154
// OP_STOREP_F	8154	8151	0
// OP_LOAD_F	8117	177	8155
// OP_GT	8155	619	8156
// OP_IFNOT	8156	40	0
// OP_LOAD_F	28	197	8157
// OP_IFNOT	8157	21	0
// OP_LOAD_F	8117	241	8158
// OP_NOT_F	8158	0	8159
// OP_IFNOT	8159	3	0
// OP_ADDRESS	8117	240	8160
// OP_STOREP_F	808	8160	0
// OP_LOAD_F	28	466	8161
// OP_GE	31	8161	8162
// OP_IFNOT	8162	5	0
// OP_STORE_V	8163	4	0
// OP_STORE_V	808	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	8117	157	8164
// OP_STOREP_F	677	8164	0
// OP_BITAND	112	808	8165
// OP_NOT_F	8165	0	8166
// OP_IFNOT	8166	3	0
// OP_ADDRESS	8117	158	8167
// OP_STOREP_F	808	8167	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	466	8168
// OP_GE	31	8168	8169
// OP_IFNOT	8169	8	0
// OP_LOAD_F	8117	240	8170
// OP_MUL_F	8170	1228	8171
// OP_STORE_F	8171	8131	0
// OP_STORE_V	8131	4	0
// OP_STORE_V	788	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	8117	158	8172
// OP_STOREP_F	619	8172	0
// OP_LOAD_F	8117	157	8173
// OP_EQ_F	8173	677	8174
// OP_IFNOT	8174	3	0
// OP_ADDRESS	8117	157	8175
// OP_STOREP_F	619	8175	0
// OP_LOAD_F	8117	177	8176
// OP_LT	8176	677	8177
// OP_IFNOT	8177	12	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	8178
// OP_STORE_F	8178	8131	0
// OP_ADDRESS	28	223	8179
// OP_LOAD_F	28	223	8180
// OP_ADD_F	8180	8131	8181
// OP_STOREP_F	8181	8179	0
// OP_ADDRESS	8117	157	8182
// OP_STOREP_F	619	8182	0
// OP_ADDRESS	8117	158	8183
// OP_STOREP_F	808	8183	0
// OP_LOAD_F	28	466	8184
// OP_GE	31	8184	8185
// OP_IFNOT	8185	4	0
// OP_ADDRESS	28	466	8186
// OP_ADD_F	31	655	8187
// OP_STOREP_F	8187	8186	0
// OP_LOAD_F	8117	413	8188
// OP_LT	8188	619	8189
// OP_IFNOT	8189	3	0
// OP_ADDRESS	8117	413	8190
// OP_STOREP_F	619	8190	0
// OP_ADDRESS	28	213	8191
// OP_LOAD_F	8117	413	8192
// OP_DIV_F	8192	7730	8193
// OP_STOREP_F	8193	8191	0
// OP_ADDRESS	8117	138	8194
// OP_LOAD_F	8117	413	8197
// OP_MUL_VF	8128	8197	8198
// OP_STOREP_V	8198	8194	0
// OP_LOAD_F	8117	241	8201
// OP_IFNOT	8201	3	0
// OP_ADDRESS	8117	141	8202
// OP_STOREP_F	619	8202	0
// OP_LOAD_F	8117	133	8203
// OP_GT	8203	93	8204
// OP_AND	93	8204	8205
// OP_IFNOT	8205	13	0
// OP_LOAD_F	8117	141	8206
// OP_GT	8206	619	8207
// OP_IFNOT	8207	10	0
// OP_ADDRESS	8117	133	8208
// OP_STOREP_F	93	8208	0
// OP_ADDRESS	8117	141	8209
// OP_STOREP_F	619	8209	0
// OP_LOAD_F	8117	143	8210
// OP_GT	8210	619	8211
// OP_IFNOT	8211	3	0
// OP_ADDRESS	8117	143	8212
// OP_STOREP_F	619	8212	0
// OP_STORE_V	8117	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	8117	208	8213
// OP_LOAD_F	28	208	8214
// OP_NE_F	8213	8214	8215
// OP_IFNOT	8215	4	0
// OP_ADDRESS	8117	208	8216
// OP_LOAD_F	28	208	8217
// OP_STOREP_F	8217	8216	0
// OP_LOAD_ENT	28	412	8218
// OP_ADDRESS	8218	138	8219
// OP_LOAD_V	8117	138	8222
// OP_STOREP_V	8222	8219	0
// OP_LOAD_F	28	179	8225
// OP_EQ_F	8225	321	8226
// OP_IFNOT	8226	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8122	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	8227
// OP_EQ_F	8227	322	8228
// OP_IFNOT	8228	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8122	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	8229
// OP_EQ_F	8229	323	8230
// OP_IFNOT	8230	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8122	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	8231
// OP_EQ_F	8231	324	8232
// OP_IFNOT	8232	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8122	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8122	0
// OP_LOAD_ENT	28	464	8234
// OP_NOT_ENT	8234	0	8235
// OP_IFNOT	8235	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	179	8236
// OP_EQ_F	8236	323	8237
// OP_IFNOT	8237	14	0
// OP_LOAD_ENT	28	464	8238
// OP_ADDRESS	8238	156	8239
// OP_STOREP_F	619	8239	0
// OP_LOAD_ENT	28	464	8240
// OP_LOAD_S	8240	155	8241
// OP_NE_S	8241	5219	8242
// OP_IFNOT	8242	5	0
// OP_LOAD_ENT	28	464	8243
// OP_STORE_V	8243	4	0
// OP_STORE_V	5219	7	0
// OP_CALL2	498	0	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	464	8244
// OP_LOAD_S	8244	155	8245
// OP_EQ_S	8245	5219	8246
// OP_IFNOT	8246	5	0
// OP_LOAD_ENT	28	464	8247
// OP_STORE_V	8247	4	0
// OP_STORE_V	8248	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	8122	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	8122	0
// OP_LOAD_V	8117	130	8249
// OP_STORE_V	8249	4	0
// OP_LOAD_V	8117	130	8252
// OP_MUL_VF	8122	986	8255
// OP_ADD_V	8252	8255	8258
// OP_STORE_V	8258	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	8117	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	8261
// OP_LOAD_ENT	8261	464	8262
// OP_EQ_E	8262	30	8263
// OP_IFNOT	8263	11	0
// OP_LOAD_V	8117	130	8264
// OP_MUL_F	70	986	8267
// OP_SUB_F	8267	810	8268
// OP_MUL_VF	8122	8268	8269
// OP_ADD_V	8264	8269	8272
// OP_STORE_V	8272	8125	0
// OP_LOAD_ENT	28	464	8275
// OP_ADDRESS	8275	156	8276
// OP_STOREP_F	619	8276	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	8125	0
// OP_LOAD_ENT	28	464	8277
// OP_STORE_V	8277	4	0
// OP_STORE_V	8125	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () ac2_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    stemp = self.enemy;
    Steer_plane(80.000, 80.000, 180.000);
    jet_sound();
    
    if((self.health < 20.000) && (stemp.model == "progs/plane2.mdl"))
    {
        setmodel(stemp, "progs/plane2b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/plane2b.mdl"))
    {
        setmodel(stemp, "progs/plane2.mdl");
    }
    
    makevectors(stemp.angles);
    v3 = v_forward;
    v3_z = 0.000 - 0.000;
    
    if(time >= self.pausetime)
    {
        stemp.speed = stemp.speed - (0.000 * 10.000);
    }
    
    
    if(stemp.health > 0.000)
    {
        if(self.button2)
        {
            
            if(!stemp.landed)
            {
                stemp.thru = 4.000;
            }
            
            
            if(time >= self.pausetime)
            {
                setplanespeed(450.000, 4.000, 4.000);
            }
            
            stemp.skin = 1.000;
            
            if(!(temp1 & 4.000))
            {
                stemp.effects = 4.000;
            }
            
        }
        else
        {
            
            if(time >= self.pausetime)
            {
                tmp = stemp.thru * 70.000;
                setplanespeed(tmp, 3.000, 4.000);
            }
            
            stemp.effects = 0.000;
            
            if(stemp.skin == 1.000)
            {
                stemp.skin = 0.000;
            }
            
        }
        
    }
    
    
    if(stemp.health < 1.000)
    {
        tmp = random() * 50.000;
        self.dmg_take = self.dmg_take + tmp;
        stemp.skin = 0.000;
        stemp.effects = 4.000;
    }
    
    
    if(time >= self.pausetime)
    {
        self.pausetime = time + 0.100;
    }
    
    
    if(stemp.speed < 0.000)
    {
        stemp.speed = 0.000;
    }
    
    self.armorvalue = stemp.speed / 3.300;
    stemp.velocity = v3 * stemp.speed;
    
    if(stemp.landed)
    {
        stemp.velocity_z = 0.000;
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
    if(self.weapon == IT_WEP1)
    {
        v1 = AC_aim(0.970, -500.000);
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            v1 = AC_aim2(0.970, 1500.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim(0.930, -10.000);
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    v1 = AC_aim2(0.930, 2000.000);
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
    
    if(self.weapon == IT_WEP3)
    {
        self.trigger_field.frame = 0.000;
        
        if(self.trigger_field.model != "progs/null.spr")
        {
            setmodel(self.trigger_field, "progs/null.spr");
        }
        
        return;
    }
    else
    {
        
        if(self.trigger_field.model == "progs/null.spr")
        {
            setmodel(self.trigger_field, "progs/s_target.spr");
        }
        
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

// ac2_attack
// function begins at statement 10792, parm_start=8279
// OP_LOAD_ENT	28	206	8286
// OP_LOAD_V	8286	142	8287
// OP_STORE_V	8287	8279	0
// OP_SUB_F	619	8279	8290
// OP_STORE_F	8290	8279	0
// OP_STORE_V	8279	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	8291
// OP_ADDRESS	8291	464	8292
// OP_STOREP_ENT	30	8292	0
// OP_LOAD_F	28	179	8293
// OP_EQ_F	8293	321	8294
// OP_IFNOT	8294	56	0
// OP_LOAD_F	28	245	8295
// OP_GE	8295	677	8296
// OP_IFNOT	8296	46	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8282	0
// OP_STORE_V	8279	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	245	8297
// OP_BITAND	8297	788	8298
// OP_IFNOT	8298	10	0
// OP_LOAD_ENT	28	206	8299
// OP_LOAD_V	8299	130	8300
// OP_MUL_VF	59	827	8303
// OP_ADD_V	8300	8303	8306
// OP_STORE_V	8306	4	0
// OP_STORE_V	8282	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	206	8309
// OP_LOAD_V	8309	130	8310
// OP_MUL_VF	59	827	8313
// OP_ADD_V	8310	8313	8316
// OP_STORE_V	8316	4	0
// OP_STORE_V	8282	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_ENT	28	206	8319
// OP_ADDRESS	8319	158	8320
// OP_LOAD_ENT	28	206	8321
// OP_LOAD_F	8321	158	8322
// OP_BITOR	8322	383	8323
// OP_STOREP_F	8323	8320	0
// OP_ADDRESS	28	182	8324
// OP_ADDRESS	28	183	8325
// OP_ADDRESS	28	245	8326
// OP_LOAD_F	28	245	8327
// OP_SUB_F	8327	677	8328
// OP_STOREP_F	8328	8326	0
// OP_STOREP_F	8328	8325	0
// OP_STOREP_F	8328	8324	0
// OP_LOAD_ENT	28	206	8329
// OP_ADDRESS	8329	437	8330
// OP_ADD_F	31	677	8331
// OP_STOREP_F	8331	8330	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8332
// OP_ADD_F	31	655	8333
// OP_STOREP_F	8333	8332	0
// OP_GOTO	170	0	0
// OP_LOAD_F	28	179	8334
// OP_EQ_F	8334	322	8335
// OP_IFNOT	8335	64	0
// OP_LOAD_F	28	248	8336
// OP_GE	8336	677	8337
// OP_IFNOT	8337	54	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8282	0
// OP_STORE_V	8279	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	248	8338
// OP_BITAND	8338	677	8339
// OP_IFNOT	8339	14	0
// OP_LOAD_ENT	28	206	8340
// OP_LOAD_V	8340	130	8341
// OP_MUL_VF	59	827	8344
// OP_SUB_V	8341	8344	8347
// OP_MUL_VF	65	812	8350
// OP_ADD_V	8347	8350	8353
// OP_STORE_V	8353	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8356
// OP_LOAD_ENT	8356	464	8357
// OP_STORE_V	8357	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	8358
// OP_LOAD_V	8358	130	8359
// OP_MUL_VF	59	827	8362
// OP_SUB_V	8359	8362	8365
// OP_MUL_VF	65	812	8368
// OP_SUB_V	8365	8368	8371
// OP_STORE_V	8371	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8374
// OP_LOAD_ENT	8374	464	8375
// OP_STORE_V	8375	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	8376
// OP_ADDRESS	8376	158	8377
// OP_LOAD_ENT	28	206	8378
// OP_LOAD_F	8378	158	8379
// OP_BITOR	8379	383	8380
// OP_STOREP_F	8380	8377	0
// OP_ADDRESS	28	182	8381
// OP_ADDRESS	28	184	8382
// OP_ADDRESS	28	248	8383
// OP_LOAD_F	28	248	8384
// OP_SUB_F	8384	677	8385
// OP_STOREP_F	8385	8383	0
// OP_STOREP_F	8385	8382	0
// OP_STOREP_F	8385	8381	0
// OP_LOAD_ENT	28	206	8386
// OP_ADDRESS	8386	437	8387
// OP_ADD_F	31	677	8388
// OP_STOREP_F	8388	8387	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8389
// OP_ADD_F	31	7985	8390
// OP_STOREP_F	8390	8389	0
// OP_GOTO	104	0	0
// OP_LOAD_F	28	179	8391
// OP_EQ_F	8391	323	8392
// OP_IFNOT	8392	52	0
// OP_LOAD_F	28	250	8393
// OP_GE	8393	677	8394
// OP_IFNOT	8394	42	0
// OP_LOAD_ENT	28	206	8395
// OP_LOAD_V	8395	130	8396
// OP_MUL_VF	62	827	8399
// OP_SUB_V	8396	8399	8402
// OP_MUL_VF	65	827	8405
// OP_SUB_V	8402	8405	8408
// OP_STORE_V	8408	4	0
// OP_LOAD_ENT	28	206	8411
// OP_LOAD_V	8411	138	8412
// OP_MUL_VF	65	842	8415
// OP_SUB_V	8412	8415	8418
// OP_STORE_V	8418	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_ENT	28	206	8421
// OP_LOAD_V	8421	130	8422
// OP_MUL_VF	62	827	8425
// OP_SUB_V	8422	8425	8428
// OP_MUL_VF	65	827	8431
// OP_ADD_V	8428	8431	8434
// OP_STORE_V	8434	4	0
// OP_LOAD_ENT	28	206	8437
// OP_LOAD_V	8437	138	8438
// OP_MUL_VF	65	842	8441
// OP_ADD_V	8438	8441	8444
// OP_STORE_V	8444	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_ADDRESS	28	182	8447
// OP_ADDRESS	28	185	8448
// OP_ADDRESS	28	250	8449
// OP_LOAD_F	28	250	8450
// OP_SUB_F	8450	677	8451
// OP_STOREP_F	8451	8449	0
// OP_STOREP_F	8451	8448	0
// OP_STOREP_F	8451	8447	0
// OP_LOAD_ENT	28	206	8452
// OP_ADDRESS	8452	437	8453
// OP_ADD_F	31	677	8454
// OP_STOREP_F	8454	8453	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8455
// OP_ADD_F	31	7985	8456
// OP_STOREP_F	8456	8455	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	179	8457
// OP_EQ_F	8457	324	8458
// OP_IFNOT	8458	47	0
// OP_LOAD_F	28	249	8459
// OP_GT	8459	619	8460
// OP_IFNOT	8460	38	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8282	0
// OP_STORE_V	8279	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	8461
// OP_LOAD_V	8461	130	8462
// OP_MUL_VF	62	827	8465
// OP_SUB_V	8462	8465	8468
// OP_MUL_VF	59	827	8471
// OP_SUB_V	8468	8471	8474
// OP_STORE_V	8474	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8477
// OP_LOAD_ENT	8477	464	8478
// OP_STORE_V	8478	10	0
// OP_CALL3	4972	0	0
// OP_LOAD_ENT	28	206	8479
// OP_ADDRESS	8479	158	8480
// OP_LOAD_ENT	28	206	8481
// OP_LOAD_F	8481	158	8482
// OP_BITOR	8482	383	8483
// OP_STOREP_F	8483	8480	0
// OP_ADDRESS	28	182	8484
// OP_ADDRESS	28	186	8485
// OP_ADDRESS	28	249	8486
// OP_LOAD_F	28	249	8487
// OP_SUB_F	8487	677	8488
// OP_STOREP_F	8488	8486	0
// OP_STOREP_F	8488	8485	0
// OP_STOREP_F	8488	8484	0
// OP_LOAD_ENT	28	206	8489
// OP_ADDRESS	8489	437	8490
// OP_ADD_F	31	677	8491
// OP_STOREP_F	8491	8490	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8492
// OP_ADD_F	31	806	8493
// OP_STOREP_F	8493	8492	0
// OP_DONE	0	0	0
void () ac2_attack = 
{
    local vector v1;
    local vector v2;
    local entity stemp;
    v1 = self.enemy.angles;
    v1_x = 0.000 - v1_x;
    makevectors(v1);
    self.enemy.trigger_field = world;
    if(self.weapon == IT_WEP1)
    {
        if(self.ammo_auto >= 1.000)
        {
            v2 = AC_aim(0.970, -500.000);
            makevectors(v1);
            if(self.ammo_auto & 3.000)
            {
                AC_bullet(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            else
            {
                AC_spike(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            
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
            if(self.ammo_amsl >= 1.000)
            {
                v2 = AC_aim2(0.930, 1500.000);
                makevectors(v1);
                if(self.ammo_amsl & 1.000)
                {
                    AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) + (v_right * 16.000), v_forward, self.enemy.trigger_field);
                }
                else
                {
                    AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) - (v_right * 16.000), v_forward, self.enemy.trigger_field);
                }
                
                self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                self.currentammo = self.ammo_nails = self.ammo_amsl = self.ammo_amsl - 1.000;
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
            if(self.weapon == IT_WEP3)
            {
                if(self.ammo_bomb >= 1.000)
                {
                    AC_bomb((self.enemy.origin - (v_up * 10.000)) - (v_right * 10.000), self.enemy.velocity - (v_right * 15.000), world);
                    AC_bomb((self.enemy.origin - (v_up * 10.000)) + (v_right * 10.000), self.enemy.velocity + (v_right * 15.000), world);
                    self.currentammo = self.ammo_rockets = self.ammo_bomb = self.ammo_bomb - 1.000;
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
                        v2 = AC_aim2(0.930, 2000.000);
                        makevectors(v1);
                        AC_maverick((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000), v_forward, self.enemy.trigger_field);
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

// start_aircraft2
// function begins at statement 11030, parm_start=8495
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	8495	0
// OP_STORE_V	8495	4	0
// OP_STORE_V	8136	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	8497
// OP_STORE_ENT	8497	8496	0
// OP_STORE_V	8495	4	0
// OP_LOAD_V	8496	130	8498
// OP_STORE_V	8498	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	8495	142	8501
// OP_LOAD_V	8496	142	8504
// OP_STOREP_V	8504	8501	0
// OP_ADDRESS	8495	154	8507
// OP_STOREP_S	2097	8507	0
// OP_ADDRESS	8495	138	8508
// OP_STOREP_V	607	8508	0
// OP_ADDRESS	8495	128	8511
// OP_STOREP_F	284	8511	0
// OP_STORE_V	8495	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	8495	129	8512
// OP_STOREP_F	294	8512	0
// OP_ADDRESS	8495	171	8513
// OP_STOREP_FNC	2368	8513	0
// OP_ADDRESS	8495	177	8514
// OP_STOREP_F	1618	8514	0
// OP_ADDRESS	8495	210	8515
// OP_LOAD_F	8495	177	8516
// OP_STOREP_F	8516	8515	0
// OP_ADDRESS	8495	188	8517
// OP_STOREP_F	306	8517	0
// OP_ADDRESS	8495	411	8518
// OP_STOREP_FNC	2366	8518	0
// OP_ADDRESS	8495	205	8519
// OP_LOAD_S	28	205	8520
// OP_STOREP_S	8520	8519	0
// OP_ADDRESS	8495	413	8521
// OP_STOREP_F	8522	8521	0
// OP_ADDRESS	8495	240	8523
// OP_STOREP_F	808	8523	0
// OP_ADDRESS	28	206	8524
// OP_STOREP_ENT	8495	8524	0
// OP_ADDRESS	8495	219	8525
// OP_STOREP_ENT	28	8525	0
// OP_ADDRESS	8495	226	8526
// OP_STOREP_ENT	28	8526	0
// OP_ADDRESS	28	238	8527
// OP_STOREP_F	619	8527	0
// OP_ADDRESS	28	408	8528
// OP_STOREP_FNC	8278	8528	0
// OP_ADDRESS	28	407	8529
// OP_STOREP_FNC	8116	8529	0
// OP_ADDRESS	28	409	8530
// OP_STOREP_FNC	8093	8530	0
// OP_ADDRESS	28	183	8531
// OP_ADDRESS	28	245	8532
// OP_STOREP_F	2618	8532	0
// OP_STOREP_F	2618	8531	0
// OP_ADDRESS	28	184	8533
// OP_ADDRESS	28	248	8534
// OP_MUL_F	808	113	8535
// OP_STOREP_F	8535	8534	0
// OP_STOREP_F	8535	8533	0
// OP_ADDRESS	28	185	8536
// OP_ADDRESS	28	250	8537
// OP_MUL_F	808	113	8538
// OP_STOREP_F	8538	8537	0
// OP_STOREP_F	8538	8536	0
// OP_ADDRESS	28	186	8539
// OP_ADDRESS	28	249	8540
// OP_MUL_F	808	113	8541
// OP_STOREP_F	8541	8540	0
// OP_STOREP_F	8541	8539	0
// OP_CALL0	6345	0	0
// OP_LOAD_ENT	28	412	8542
// OP_ADDRESS	8542	404	8543
// OP_STOREP_F	815	8543	0
// OP_DONE	0	0	0
void () start_aircraft2 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/plane2.mdl");
    e2 = self.goalentity;
    setorigin(e, e2.origin);
    e.angles = e2.angles;
    e.classname = "plane";
    e.velocity = '0.000 0.000 0.000';
    e.movetype = MOVETYPE_FLY;
    setsize(e, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    e.solid = SOLID_SLIDEBOX;
    e.touch = T_ACTouch;
    e.health = 250.000;
    e.max_health = e.health;
    e.takedamage = DAMAGE_AIM;
    e.th_die = AC_Die;
    e.netname = self.netname;
    e.speed = 280.000;
    e.thru = 4.000;
    self.enemy = e;
    e.goalentity = self;
    e.owner = self;
    self.toyview = 0.000;
    self.th_missile = ac2_attack;
    self.th_run = ac2_steer;
    self.th_melee = ac2_currentammo;
    self.ammo_shells = self.ammo_auto = 100.000;
    self.ammo_nails = self.ammo_amsl = 4.000 * wepmulti;
    self.ammo_rockets = self.ammo_bomb = 4.000 * wepmulti;
    self.ammo_cells = self.ammo_smsl = 4.000 * wepmulti;
    Check_startlanded();
    self.oldenemy.style = 32.000;
};

