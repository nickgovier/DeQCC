// ac4_currentammo
// function begins at statement 11739, parm_start=9019
// OP_ADDRESS	28	183	9019
// OP_LOAD_F	28	245	9020
// OP_STOREP_F	9020	9019	0
// OP_ADDRESS	28	184	9021
// OP_LOAD_F	28	248	9022
// OP_STOREP_F	9022	9021	0
// OP_ADDRESS	28	185	9023
// OP_LOAD_F	28	250	9024
// OP_STOREP_F	9024	9023	0
// OP_ADDRESS	28	186	9025
// OP_LOAD_F	28	249	9026
// OP_STOREP_F	9026	9025	0
// OP_LOAD_F	28	179	9027
// OP_EQ_F	9027	321	9028
// OP_IFNOT	9028	4	0
// OP_ADDRESS	28	180	9029
// OP_STOREP_S	7632	9029	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	9030
// OP_EQ_F	9030	322	9031
// OP_IFNOT	9031	4	0
// OP_ADDRESS	28	180	9032
// OP_STOREP_S	7640	9032	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	9033
// OP_EQ_F	9033	323	9034
// OP_IFNOT	9034	4	0
// OP_ADDRESS	28	180	9035
// OP_STOREP_S	8111	9035	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	9036
// OP_EQ_F	9036	324	9037
// OP_IFNOT	9037	3	0
// OP_ADDRESS	28	180	9038
// OP_STOREP_S	8115	9038	0
// OP_DONE	0	0	0
void () ac4_currentammo = 
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

// ac4_steer
// function begins at statement 11775, parm_start=9040
// OP_LOAD_ENT	28	206	9055
// OP_STORE_ENT	9055	9040	0
// OP_STORE_V	1228	4	0
// OP_STORE_V	1228	7	0
// OP_STORE_V	2627	10	0
// OP_CALL3	6229	0	0
// OP_CALL0	6058	0	0
// OP_LOAD_F	28	177	9056
// OP_LT	9056	1111	9057
// OP_LOAD_S	9040	155	9058
// OP_EQ_S	9058	9059	9060
// OP_AND	9057	9060	9061
// OP_IFNOT	9061	4	0
// OP_STORE_V	9040	4	0
// OP_STORE_V	9062	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	9063
// OP_GE	9063	1111	9064
// OP_LOAD_S	9040	155	9065
// OP_EQ_S	9065	9062	9066
// OP_AND	9064	9066	9067
// OP_IFNOT	9067	4	0
// OP_STORE_V	9040	4	0
// OP_STORE_V	9059	7	0
// OP_CALL2	498	0	0
// OP_LOAD_V	9040	142	9068
// OP_STORE_V	9068	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	9051	0
// OP_SUB_F	619	9053	9071
// OP_STORE_F	9071	9053	0
// OP_LOAD_F	28	466	9072
// OP_GE	31	9072	9073
// OP_IFNOT	9073	6	0
// OP_ADDRESS	9040	413	9074
// OP_LOAD_F	9040	413	9075
// OP_MUL_F	9053	816	9076
// OP_SUB_F	9075	9076	9077
// OP_STOREP_F	9077	9074	0
// OP_LOAD_F	9040	177	9078
// OP_GT	9078	619	9079
// OP_IFNOT	9079	33	0
// OP_LOAD_F	28	197	9080
// OP_IFNOT	9080	16	0
// OP_LOAD_F	9040	241	9081
// OP_NOT_F	9081	0	9082
// OP_IFNOT	9082	3	0
// OP_ADDRESS	9040	240	9083
// OP_STOREP_F	808	9083	0
// OP_LOAD_F	28	466	9084
// OP_GE	31	9084	9085
// OP_IFNOT	9085	5	0
// OP_STORE_V	9086	4	0
// OP_STORE_V	806	7	0
// OP_STORE_V	788	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	9040	157	9087
// OP_STOREP_F	619	9087	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	466	9088
// OP_GE	31	9088	9089
// OP_IFNOT	9089	8	0
// OP_LOAD_F	9040	240	9090
// OP_MUL_F	9090	9091	9092
// OP_STORE_F	9092	9054	0
// OP_STORE_V	9054	4	0
// OP_STORE_V	806	7	0
// OP_STORE_V	806	10	0
// OP_CALL3	6378	0	0
// OP_LOAD_F	9040	157	9093
// OP_EQ_F	9093	677	9094
// OP_IFNOT	9094	3	0
// OP_ADDRESS	9040	157	9095
// OP_STOREP_F	619	9095	0
// OP_LOAD_F	9040	177	9096
// OP_LT	9096	677	9097
// OP_IFNOT	9097	12	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	9098
// OP_STORE_F	9098	9054	0
// OP_ADDRESS	28	223	9099
// OP_LOAD_F	28	223	9100
// OP_ADD_F	9100	9054	9101
// OP_STOREP_F	9101	9099	0
// OP_ADDRESS	9040	157	9102
// OP_STOREP_F	619	9102	0
// OP_ADDRESS	9040	158	9103
// OP_STOREP_F	808	9103	0
// OP_LOAD_F	28	466	9104
// OP_GE	31	9104	9105
// OP_IFNOT	9105	4	0
// OP_ADDRESS	28	466	9106
// OP_ADD_F	31	655	9107
// OP_STOREP_F	9107	9106	0
// OP_LOAD_F	9040	413	9108
// OP_LT	9108	619	9109
// OP_IFNOT	9109	3	0
// OP_ADDRESS	9040	413	9110
// OP_STOREP_F	619	9110	0
// OP_ADDRESS	28	213	9111
// OP_LOAD_F	9040	413	9112
// OP_DIV_F	9112	7730	9113
// OP_STOREP_F	9113	9111	0
// OP_ADDRESS	9040	138	9114
// OP_LOAD_F	9040	413	9117
// OP_MUL_VF	9051	9117	9118
// OP_STOREP_V	9118	9114	0
// OP_LOAD_F	9040	241	9121
// OP_IFNOT	9121	3	0
// OP_ADDRESS	9040	141	9122
// OP_STOREP_F	619	9122	0
// OP_LOAD_F	9040	133	9123
// OP_GT	9123	93	9124
// OP_AND	93	9124	9125
// OP_IFNOT	9125	13	0
// OP_LOAD_F	9040	141	9126
// OP_GT	9126	619	9127
// OP_IFNOT	9127	10	0
// OP_ADDRESS	9040	133	9128
// OP_STOREP_F	93	9128	0
// OP_ADDRESS	9040	141	9129
// OP_STOREP_F	619	9129	0
// OP_LOAD_F	9040	143	9130
// OP_GT	9130	619	9131
// OP_IFNOT	9131	3	0
// OP_ADDRESS	9040	143	9132
// OP_STOREP_F	619	9132	0
// OP_STORE_V	9040	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	9040	208	9133
// OP_LOAD_F	28	208	9134
// OP_NE_F	9133	9134	9135
// OP_IFNOT	9135	4	0
// OP_ADDRESS	9040	208	9136
// OP_LOAD_F	28	208	9137
// OP_STOREP_F	9137	9136	0
// OP_LOAD_ENT	28	412	9138
// OP_ADDRESS	9138	138	9139
// OP_LOAD_V	9040	138	9142
// OP_STOREP_V	9142	9139	0
// OP_LOAD_F	28	179	9145
// OP_EQ_F	9145	321	9146
// OP_IFNOT	9146	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9045	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	9147
// OP_EQ_F	9147	322	9148
// OP_IFNOT	9148	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9045	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	9149
// OP_EQ_F	9149	323	9150
// OP_IFNOT	9150	6	0
// OP_STORE_V	677	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9045	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	9151
// OP_EQ_F	9151	324	9152
// OP_IFNOT	9152	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9045	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9045	0
// OP_LOAD_ENT	28	464	9153
// OP_NOT_ENT	9153	0	9154
// OP_IFNOT	9154	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	179	9155
// OP_EQ_F	9155	323	9156
// OP_IFNOT	9156	14	0
// OP_LOAD_ENT	28	464	9157
// OP_ADDRESS	9157	156	9158
// OP_STOREP_F	619	9158	0
// OP_LOAD_ENT	28	464	9159
// OP_LOAD_S	9159	155	9160
// OP_NE_S	9160	5219	9161
// OP_IFNOT	9161	5	0
// OP_LOAD_ENT	28	464	9162
// OP_STORE_V	9162	4	0
// OP_STORE_V	5219	7	0
// OP_CALL2	498	0	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	464	9163
// OP_LOAD_S	9163	155	9164
// OP_EQ_S	9164	5219	9165
// OP_IFNOT	9165	5	0
// OP_LOAD_ENT	28	464	9166
// OP_STORE_V	9166	4	0
// OP_STORE_V	8248	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	9045	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	9045	0
// OP_LOAD_V	9040	130	9167
// OP_STORE_V	9167	4	0
// OP_LOAD_V	9040	130	9170
// OP_MUL_VF	9045	986	9173
// OP_ADD_V	9170	9173	9176
// OP_STORE_V	9176	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	9040	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	9179
// OP_LOAD_ENT	9179	464	9180
// OP_EQ_E	9180	30	9181
// OP_IFNOT	9181	11	0
// OP_LOAD_V	9040	130	9182
// OP_MUL_F	70	986	9185
// OP_SUB_F	9185	810	9186
// OP_MUL_VF	9045	9186	9187
// OP_ADD_V	9182	9187	9190
// OP_STORE_V	9190	9048	0
// OP_LOAD_ENT	28	464	9193
// OP_ADDRESS	9193	156	9194
// OP_STOREP_F	619	9194	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	9048	0
// OP_LOAD_ENT	28	464	9195
// OP_STORE_V	9195	4	0
// OP_STORE_V	9048	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () ac4_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    stemp = self.enemy;
    Steer_plane(70.000, 70.000, 120.000);
    jet_sound();
    
    if((self.health < 20.000) && (stemp.model == "progs/plane4.mdl"))
    {
        setmodel(stemp, "progs/plane4b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/plane4b.mdl"))
    {
        setmodel(stemp, "progs/plane4.mdl");
    }
    
    makevectors(stemp.angles);
    v3 = v_forward;
    v3_z = 0.000 - 0.000;
    
    if(time >= self.pausetime)
    {
        stemp.speed = stemp.speed - (0.000 * 6.000);
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
                setplanespeed(350.000, 2.000, 3.000);
            }
            
            stemp.skin = 0.000;
        }
        else
        {
            
            if(time >= self.pausetime)
            {
                tmp = stemp.thru * 62.500;
                setplanespeed(tmp, 2.000, 2.000);
            }
            
            
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
            v1 = AC_aim(0.970, 1500.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim(1.000, -10.000);
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

// ac4_attack
// function begins at statement 12012, parm_start=9197
// OP_LOAD_ENT	28	206	9204
// OP_LOAD_V	9204	142	9205
// OP_STORE_V	9205	9197	0
// OP_SUB_F	619	9197	9208
// OP_STORE_F	9208	9197	0
// OP_STORE_V	9197	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	9209
// OP_ADDRESS	9209	464	9210
// OP_STOREP_ENT	30	9210	0
// OP_LOAD_F	28	179	9211
// OP_EQ_F	9211	321	9212
// OP_IFNOT	9212	63	0
// OP_LOAD_F	28	245	9213
// OP_GE	9213	677	9214
// OP_IFNOT	9214	53	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	9215	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9200	0
// OP_STORE_V	9197	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	245	9216
// OP_BITAND	9216	788	9217
// OP_IFNOT	9217	10	0
// OP_LOAD_ENT	28	206	9218
// OP_LOAD_V	9218	130	9219
// OP_MUL_VF	59	827	9222
// OP_ADD_V	9219	9222	9225
// OP_STORE_V	9225	4	0
// OP_STORE_V	9200	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	206	9228
// OP_LOAD_V	9228	130	9229
// OP_MUL_VF	59	827	9232
// OP_ADD_V	9229	9232	9235
// OP_STORE_V	9235	4	0
// OP_STORE_V	9200	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_ADDRESS	394	171	9238
// OP_STOREP_FNC	3962	9238	0
// OP_ADDRESS	394	469	9239
// OP_STOREP_F	856	9239	0
// OP_ADDRESS	394	175	9240
// OP_ADD_F	31	677	9241
// OP_STOREP_F	9241	9240	0
// OP_LOAD_ENT	28	206	9242
// OP_ADDRESS	9242	158	9243
// OP_LOAD_ENT	28	206	9244
// OP_LOAD_F	9244	158	9245
// OP_BITOR	9245	383	9246
// OP_STOREP_F	9246	9243	0
// OP_ADDRESS	28	182	9247
// OP_ADDRESS	28	183	9248
// OP_ADDRESS	28	245	9249
// OP_LOAD_F	28	245	9250
// OP_SUB_F	9250	677	9251
// OP_STOREP_F	9251	9249	0
// OP_STOREP_F	9251	9248	0
// OP_STOREP_F	9251	9247	0
// OP_LOAD_ENT	28	206	9252
// OP_ADDRESS	9252	437	9253
// OP_ADD_F	31	677	9254
// OP_STOREP_F	9254	9253	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9255
// OP_ADD_F	31	655	9256
// OP_STOREP_F	9256	9255	0
// OP_GOTO	229	0	0
// OP_LOAD_F	28	179	9257
// OP_EQ_F	9257	322	9258
// OP_IFNOT	9258	64	0
// OP_LOAD_F	28	248	9259
// OP_GE	9259	677	9260
// OP_IFNOT	9260	54	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9200	0
// OP_STORE_V	9197	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	185	9261
// OP_BITAND	9261	677	9262
// OP_IFNOT	9262	14	0
// OP_LOAD_ENT	28	206	9263
// OP_LOAD_V	9263	130	9264
// OP_MUL_VF	59	827	9267
// OP_SUB_V	9264	9267	9270
// OP_MUL_VF	65	812	9273
// OP_ADD_V	9270	9273	9276
// OP_STORE_V	9276	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9279
// OP_LOAD_ENT	9279	464	9280
// OP_STORE_V	9280	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	9281
// OP_LOAD_V	9281	130	9282
// OP_MUL_VF	59	827	9285
// OP_SUB_V	9282	9285	9288
// OP_MUL_VF	65	812	9291
// OP_SUB_V	9288	9291	9294
// OP_STORE_V	9294	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9297
// OP_LOAD_ENT	9297	464	9298
// OP_STORE_V	9298	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	9299
// OP_ADDRESS	9299	158	9300
// OP_LOAD_ENT	28	206	9301
// OP_LOAD_F	9301	158	9302
// OP_BITOR	9302	383	9303
// OP_STOREP_F	9303	9300	0
// OP_ADDRESS	28	182	9304
// OP_ADDRESS	28	184	9305
// OP_ADDRESS	28	248	9306
// OP_LOAD_F	28	248	9307
// OP_SUB_F	9307	677	9308
// OP_STOREP_F	9308	9306	0
// OP_STOREP_F	9308	9305	0
// OP_STOREP_F	9308	9304	0
// OP_LOAD_ENT	28	206	9309
// OP_ADDRESS	9309	437	9310
// OP_ADD_F	31	677	9311
// OP_STOREP_F	9311	9310	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9312
// OP_ADD_F	31	7985	9313
// OP_STOREP_F	9313	9312	0
// OP_GOTO	163	0	0
// OP_LOAD_F	28	179	9314
// OP_EQ_F	9314	323	9315
// OP_IFNOT	9315	91	0
// OP_LOAD_F	28	250	9316
// OP_GE	9316	677	9317
// OP_IFNOT	9317	81	0
// OP_LOAD_ENT	28	206	9318
// OP_LOAD_V	9318	130	9319
// OP_MUL_VF	62	827	9322
// OP_SUB_V	9319	9322	9325
// OP_MUL_VF	65	827	9328
// OP_SUB_V	9325	9328	9331
// OP_STORE_V	9331	4	0
// OP_LOAD_ENT	28	206	9334
// OP_LOAD_V	9334	138	9335
// OP_MUL_VF	65	842	9338
// OP_SUB_V	9335	9338	9341
// OP_STORE_V	9341	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_ENT	28	206	9344
// OP_LOAD_V	9344	130	9345
// OP_MUL_VF	62	827	9348
// OP_SUB_V	9345	9348	9351
// OP_MUL_VF	65	827	9354
// OP_ADD_V	9351	9354	9357
// OP_STORE_V	9357	4	0
// OP_LOAD_ENT	28	206	9360
// OP_LOAD_V	9360	138	9361
// OP_MUL_VF	65	842	9364
// OP_ADD_V	9361	9364	9367
// OP_STORE_V	9367	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_ADDRESS	28	182	9370
// OP_ADDRESS	28	185	9371
// OP_ADDRESS	28	250	9372
// OP_LOAD_F	28	250	9373
// OP_SUB_F	9373	677	9374
// OP_STOREP_F	9374	9372	0
// OP_STOREP_F	9374	9371	0
// OP_STOREP_F	9374	9370	0
// OP_LOAD_F	28	182	9375
// OP_GE	9375	677	9376
// OP_IFNOT	9376	37	0
// OP_LOAD_ENT	28	206	9377
// OP_LOAD_V	9377	130	9378
// OP_MUL_VF	62	827	9381
// OP_SUB_V	9378	9381	9384
// OP_MUL_VF	65	1111	9387
// OP_SUB_V	9384	9387	9390
// OP_STORE_V	9390	4	0
// OP_LOAD_ENT	28	206	9393
// OP_LOAD_V	9393	138	9394
// OP_MUL_VF	65	1193	9397
// OP_SUB_V	9394	9397	9400
// OP_STORE_V	9400	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_ENT	28	206	9403
// OP_LOAD_V	9403	130	9404
// OP_MUL_VF	62	827	9407
// OP_SUB_V	9404	9407	9410
// OP_MUL_VF	65	1111	9413
// OP_ADD_V	9410	9413	9416
// OP_STORE_V	9416	4	0
// OP_LOAD_ENT	28	206	9419
// OP_LOAD_V	9419	138	9420
// OP_MUL_VF	65	1193	9423
// OP_ADD_V	9420	9423	9426
// OP_STORE_V	9426	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4281	0	0
// OP_ADDRESS	28	182	9429
// OP_ADDRESS	28	185	9430
// OP_ADDRESS	28	250	9431
// OP_LOAD_F	28	250	9432
// OP_SUB_F	9432	677	9433
// OP_STOREP_F	9433	9431	0
// OP_STOREP_F	9433	9430	0
// OP_STOREP_F	9433	9429	0
// OP_LOAD_ENT	28	206	9434
// OP_ADDRESS	9434	437	9435
// OP_ADD_F	31	677	9436
// OP_STOREP_F	9436	9435	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9437
// OP_ADD_F	31	7985	9438
// OP_STOREP_F	9438	9437	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	179	9439
// OP_EQ_F	9439	324	9440
// OP_IFNOT	9440	67	0
// OP_LOAD_F	28	249	9441
// OP_GT	9441	619	9442
// OP_IFNOT	9442	58	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9200	0
// OP_STORE_V	9197	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	249	9443
// OP_BITAND	9443	677	9444
// OP_IFNOT	9444	16	0
// OP_LOAD_ENT	28	206	9445
// OP_LOAD_V	9445	130	9446
// OP_MUL_VF	62	827	9449
// OP_SUB_V	9446	9449	9452
// OP_MUL_VF	59	827	9455
// OP_SUB_V	9452	9455	9458
// OP_MUL_VF	65	812	9461
// OP_ADD_V	9458	9461	9464
// OP_STORE_V	9464	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9467
// OP_LOAD_ENT	9467	464	9468
// OP_STORE_V	9468	10	0
// OP_CALL3	4972	0	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	28	206	9469
// OP_LOAD_V	9469	130	9470
// OP_MUL_VF	62	827	9473
// OP_SUB_V	9470	9473	9476
// OP_MUL_VF	59	827	9479
// OP_SUB_V	9476	9479	9482
// OP_MUL_VF	65	812	9485
// OP_SUB_V	9482	9485	9488
// OP_STORE_V	9488	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9491
// OP_LOAD_ENT	9491	464	9492
// OP_STORE_V	9492	10	0
// OP_CALL3	4972	0	0
// OP_LOAD_ENT	28	206	9493
// OP_ADDRESS	9493	158	9494
// OP_LOAD_ENT	28	206	9495
// OP_LOAD_F	9495	158	9496
// OP_BITOR	9496	383	9497
// OP_STOREP_F	9497	9494	0
// OP_ADDRESS	28	182	9498
// OP_ADDRESS	28	186	9499
// OP_ADDRESS	28	249	9500
// OP_LOAD_F	28	249	9501
// OP_SUB_F	9501	677	9502
// OP_STOREP_F	9502	9500	0
// OP_STOREP_F	9502	9499	0
// OP_STOREP_F	9502	9498	0
// OP_LOAD_ENT	28	206	9503
// OP_ADDRESS	9503	437	9504
// OP_ADD_F	31	677	9505
// OP_STOREP_F	9505	9504	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9506
// OP_ADD_F	31	806	9507
// OP_STOREP_F	9507	9506	0
// OP_DONE	0	0	0
void () ac4_attack = 
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
            v2 = AC_aim(0.970, -700.000);
            makevectors(v1);
            if(self.ammo_auto & 3.000)
            {
                AC_bullet(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            else
            {
                AC_spike(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            
            newmis.touch = ACsuperspike_touch;
            newmis.dmg = 50.000;
            newmis.nextthink = time + 1.000;
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
                v2 = AC_aim(0.930, 1500.000);
                makevectors(v1);
                if(self.ammo_rockets & 1.000)
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
                    
                    if(self.currentammo >= 1.000)
                    {
                        AC_bomb((self.enemy.origin - (v_up * 10.000)) - (v_right * 20.000), self.enemy.velocity - (v_right * 45.000), world);
                        AC_bomb((self.enemy.origin - (v_up * 10.000)) + (v_right * 20.000), self.enemy.velocity + (v_right * 45.000), world);
                        self.currentammo = self.ammo_rockets = self.ammo_bomb = self.ammo_bomb - 1.000;
                    }
                    
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
                        makevectors(v1);
                        if(self.ammo_smsl & 1.000)
                        {
                            AC_maverick(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) + (v_right * 16.000), v_forward, self.enemy.trigger_field);
                        }
                        else
                        {
                            AC_maverick(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) - (v_right * 16.000), v_forward, self.enemy.trigger_field);
                        }
                        
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

// start_aircraft4
// function begins at statement 12316, parm_start=9509
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	9509	0
// OP_STORE_V	9509	4	0
// OP_STORE_V	9059	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	9511
// OP_STORE_ENT	9511	9510	0
// OP_STORE_V	9509	4	0
// OP_LOAD_V	9510	130	9512
// OP_STORE_V	9512	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	9509	142	9515
// OP_LOAD_V	9510	142	9518
// OP_STOREP_V	9518	9515	0
// OP_ADDRESS	9509	154	9521
// OP_STOREP_S	2097	9521	0
// OP_ADDRESS	9509	138	9522
// OP_STOREP_V	607	9522	0
// OP_ADDRESS	9509	128	9525
// OP_STOREP_F	284	9525	0
// OP_STORE_V	9509	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	9509	129	9526
// OP_STOREP_F	294	9526	0
// OP_ADDRESS	9509	171	9527
// OP_STOREP_FNC	2368	9527	0
// OP_ADDRESS	9509	177	9528
// OP_STOREP_F	9086	9528	0
// OP_ADDRESS	9509	210	9529
// OP_LOAD_F	9509	177	9530
// OP_STOREP_F	9530	9529	0
// OP_ADDRESS	9509	188	9531
// OP_STOREP_F	306	9531	0
// OP_ADDRESS	9509	411	9532
// OP_STOREP_FNC	2366	9532	0
// OP_ADDRESS	9509	205	9533
// OP_LOAD_S	28	205	9534
// OP_STOREP_S	9534	9533	0
// OP_ADDRESS	9509	413	9535
// OP_STOREP_F	1618	9535	0
// OP_ADDRESS	9509	240	9536
// OP_STOREP_F	808	9536	0
// OP_ADDRESS	28	206	9537
// OP_STOREP_ENT	9509	9537	0
// OP_ADDRESS	9509	219	9538
// OP_STOREP_ENT	28	9538	0
// OP_ADDRESS	9509	226	9539
// OP_STOREP_ENT	28	9539	0
// OP_ADDRESS	9509	213	9540
// OP_STOREP_F	842	9540	0
// OP_ADDRESS	28	238	9541
// OP_STOREP_F	619	9541	0
// OP_ADDRESS	28	408	9542
// OP_STOREP_FNC	9196	9542	0
// OP_ADDRESS	28	407	9543
// OP_STOREP_FNC	9039	9543	0
// OP_ADDRESS	28	409	9544
// OP_STOREP_FNC	9018	9544	0
// OP_ADDRESS	28	183	9545
// OP_ADDRESS	28	245	9546
// OP_STOREP_F	2618	9546	0
// OP_STOREP_F	2618	9545	0
// OP_ADDRESS	28	184	9547
// OP_ADDRESS	28	248	9548
// OP_MUL_F	806	113	9549
// OP_STOREP_F	9549	9548	0
// OP_STOREP_F	9549	9547	0
// OP_ADDRESS	28	185	9550
// OP_ADDRESS	28	250	9551
// OP_MUL_F	816	113	9552
// OP_STOREP_F	9552	9551	0
// OP_STOREP_F	9552	9550	0
// OP_ADDRESS	28	186	9553
// OP_ADDRESS	28	249	9554
// OP_MUL_F	816	113	9555
// OP_STOREP_F	9555	9554	0
// OP_STOREP_F	9555	9553	0
// OP_CALL0	6345	0	0
// OP_LOAD_ENT	28	412	9556
// OP_ADDRESS	9556	404	9557
// OP_STOREP_F	815	9557	0
// OP_DONE	0	0	0
void () start_aircraft4 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/plane4.mdl");
    e2 = self.goalentity;
    setorigin(e, e2.origin);
    e.angles = e2.angles;
    e.classname = "plane";
    e.velocity = '0.000 0.000 0.000';
    e.movetype = MOVETYPE_FLY;
    setsize(e, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    e.solid = SOLID_SLIDEBOX;
    e.touch = T_ACTouch;
    e.health = 350.000;
    e.max_health = e.health;
    e.takedamage = DAMAGE_AIM;
    e.th_die = AC_Die;
    e.netname = self.netname;
    e.speed = 250.000;
    e.thru = 4.000;
    self.enemy = e;
    e.goalentity = self;
    e.owner = self;
    e.armorvalue = 15.000;
    self.toyview = 0.000;
    self.th_missile = ac4_attack;
    self.th_run = ac4_steer;
    self.th_melee = ac4_currentammo;
    self.ammo_shells = self.ammo_auto = 100.000;
    self.ammo_nails = self.ammo_amsl = 2.000 * wepmulti;
    self.ammo_rockets = self.ammo_bomb = 6.000 * wepmulti;
    self.ammo_cells = self.ammo_smsl = 6.000 * wepmulti;
    Check_startlanded();
    self.oldenemy.style = 32.000;
};

