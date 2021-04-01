// monster_use
// function begins at statement 9102, parm_start=6177
// OP_LOAD_ENT	28	181	6177
// OP_IFNOT	6177	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	6178
// OP_LE	6178	650	6179
// OP_IFNOT	6179	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	347	162	6180
// OP_BITAND	6180	273	6181
// OP_IFNOT	6181	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	347	182	6182
// OP_BITAND	6182	221	6183
// OP_IFNOT	6183	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	6184
// OP_NE_S	6184	797	6185
// OP_IFNOT	6185	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	6186
// OP_STOREP_ENT	347	6186	0
// OP_ADDRESS	28	150	6187
// OP_ADD_F	31	686	6188
// OP_STOREP_F	6188	6187	0
// OP_ADDRESS	28	148	6189
// OP_STOREP_FNC	1384	6189	0
// OP_DONE	0	0	0
void () monster_use = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= 0.000)
    {
        return;
    }
    
    
    if(activator.items & IT_INVISIBILITY)
    {
        return;
    }
    
    
    if(activator.flags & FL_NOTARGET)
    {
        return;
    }
    
    
    if(activator.classname != "player")
    {
        return;
    }
    
    self.enemy = activator;
    self.nextthink = time + 0.100;
    self.think = FoundTarget;
};

// monster_death_use
// function begins at statement 9129, parm_start=6190
// OP_LOAD_F	28	182	6193
// OP_BITAND	6193	215	6194
// OP_IFNOT	6194	5	0
// OP_ADDRESS	28	182	6195
// OP_LOAD_F	28	182	6196
// OP_SUB_F	6196	215	6197
// OP_STOREP_F	6197	6195	0
// OP_LOAD_F	28	182	6198
// OP_BITAND	6198	216	6199
// OP_IFNOT	6199	5	0
// OP_ADDRESS	28	182	6200
// OP_LOAD_F	28	182	6201
// OP_SUB_F	6201	216	6202
// OP_STOREP_F	6202	6200	0
// OP_LOAD_S	28	196	6203
// OP_NOT_S	6203	0	6204
// OP_IFNOT	6204	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	6205
// OP_STORE_ENT	6205	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () monster_death_use = 
{
    local entity ent;
    local entity otemp;
    local entity stemp;
    
    if(self.flags & FL_FLY)
    {
        self.flags = self.flags - FL_FLY;
    }
    
    
    if(self.flags & FL_SWIM)
    {
        self.flags = self.flags - FL_SWIM;
    }
    
    
    if(!self.target)
    {
        return;
    }
    
    activator = self.enemy;
    SUB_UseTargets();
};

// walkmonster_start_go
// function begins at statement 9151, parm_start=6207
// OP_ADDRESS	28	108	6209
// OP_LOAD_F	28	108	6210
// OP_ADD_F	6210	708	6211
// OP_STOREP_F	6211	6209	0
// OP_CALL0	479	0	0
// OP_ADDRESS	28	163	6212
// OP_STOREP_F	253	6212	0
// OP_ADDRESS	28	191	6213
// OP_LOAD_V	28	117	6214
// OP_MUL_V	6214	1938	6217
// OP_STOREP_F	6217	6213	0
// OP_LOAD_F	28	192	6218
// OP_NOT_F	6218	0	6219
// OP_IFNOT	6219	3	0
// OP_ADDRESS	28	192	6220
// OP_STOREP_F	1017	6220	0
// OP_ADDRESS	28	166	6221
// OP_STOREP_V	6224	6221	0
// OP_ADDRESS	28	147	6227
// OP_STOREP_FNC	6176	6227	0
// OP_ADDRESS	28	182	6228
// OP_LOAD_F	28	182	6229
// OP_BITOR	6229	219	6230
// OP_STOREP_F	6230	6228	0
// OP_ADDRESS	28	418	6231
// OP_STOREP_F	6232	6231	0
// OP_LOAD_FNC	28	357	6233
// OP_CALL0	6233	0	0
// OP_ADDRESS	28	150	6234
// OP_LOAD_F	28	150	6235
// OP_CALL0	453	0	0
// OP_MUL_F	1	1727	6236
// OP_ADD_F	6235	6236	6237
// OP_STOREP_F	6237	6234	0
// OP_DONE	0	0	0
void () walkmonster_start_go = 
{
    local string stemp;
    local entity etemp;
    self.origin_z = self.origin_z + 1.000;
    droptofloor();
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20.000;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    self.pausetime = 100000000.000;
    self.th_stand();
    self.nextthink = self.nextthink + (random() * 0.500);
};

// walkmonster_start
// function begins at statement 9186, parm_start=6239
// OP_ADDRESS	28	150	6239
// OP_LOAD_F	28	150	6240
// OP_CALL0	453	0	0
// OP_MUL_F	1	1727	6241
// OP_ADD_F	6240	6241	6242
// OP_STOREP_F	6242	6239	0
// OP_ADDRESS	28	148	6243
// OP_STOREP_FNC	6206	6243	0
// OP_ADD_F	40	708	6244
// OP_STORE_F	6244	40	0
// OP_DONE	0	0	0
void () walkmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = walkmonster_start_go;
    total_monsters = total_monsters + 1.000;
};

// flymonster_start_go
// function begins at statement 9197, parm_start=6246
// OP_ADDRESS	28	163	6246
// OP_STOREP_F	253	6246	0
// OP_ADDRESS	28	191	6247
// OP_LOAD_V	28	117	6248
// OP_MUL_V	6248	1938	6251
// OP_STOREP_F	6251	6247	0
// OP_LOAD_F	28	192	6252
// OP_NOT_F	6252	0	6253
// OP_IFNOT	6253	3	0
// OP_ADDRESS	28	192	6254
// OP_STOREP_F	1931	6254	0
// OP_ADDRESS	28	166	6255
// OP_STOREP_V	6224	6255	0
// OP_ADDRESS	28	147	6258
// OP_STOREP_FNC	6176	6258	0
// OP_ADDRESS	28	182	6259
// OP_LOAD_F	28	182	6260
// OP_BITOR	6260	215	6261
// OP_STOREP_F	6261	6259	0
// OP_ADDRESS	28	182	6262
// OP_LOAD_F	28	182	6263
// OP_BITOR	6263	219	6264
// OP_STOREP_F	6264	6262	0
// OP_STORE_V	650	4	0
// OP_STORE_V	650	7	0
// OP_CALL2	478	0	0
// OP_NOT_F	1	0	6265
// OP_IFNOT	6265	10	0
// OP_STORE_V	6266	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	6267
// OP_STORE_V	6267	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_ADDRESS	28	418	6270
// OP_STOREP_F	6232	6270	0
// OP_LOAD_FNC	28	357	6271
// OP_CALL0	6271	0	0
// OP_DONE	0	0	0
void () flymonster_start_go = 
{
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10.000;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_FLY;
    self.flags = self.flags | FL_MONSTER;
    
    if(!walkmove(0.000, 0.000))
    {
        dprint("flymonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.pausetime = 100000000.000;
    self.th_stand();
};

// flymonster_start
// function begins at statement 9239, parm_start=6273
// OP_ADDRESS	28	150	6273
// OP_LOAD_F	28	150	6274
// OP_CALL0	453	0	0
// OP_MUL_F	1	1727	6275
// OP_ADD_F	6274	6275	6276
// OP_STOREP_F	6276	6273	0
// OP_ADDRESS	28	148	6277
// OP_STOREP_FNC	6245	6277	0
// OP_ADD_F	40	708	6278
// OP_STORE_F	6278	40	0
// OP_DONE	0	0	0
void () flymonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = flymonster_start_go;
    total_monsters = total_monsters + 1.000;
};

// swimmonster_start_go
// function begins at statement 9250, parm_start=6280
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	163	6280
// OP_STOREP_F	253	6280	0
// OP_ADD_F	40	708	6281
// OP_STORE_F	6281	40	0
// OP_ADDRESS	28	191	6282
// OP_LOAD_V	28	117	6283
// OP_MUL_V	6283	1938	6286
// OP_STOREP_F	6286	6282	0
// OP_LOAD_F	28	192	6287
// OP_NOT_F	6287	0	6288
// OP_IFNOT	6288	3	0
// OP_ADDRESS	28	192	6289
// OP_STOREP_F	1931	6289	0
// OP_ADDRESS	28	166	6290
// OP_STOREP_V	6293	6290	0
// OP_ADDRESS	28	147	6296
// OP_STOREP_FNC	6176	6296	0
// OP_ADDRESS	28	182	6297
// OP_LOAD_F	28	182	6298
// OP_BITOR	6298	216	6299
// OP_STOREP_F	6299	6297	0
// OP_ADDRESS	28	182	6300
// OP_LOAD_F	28	182	6301
// OP_BITOR	6301	219	6302
// OP_STOREP_F	6302	6300	0
// OP_LOAD_S	28	196	6303
// OP_IFNOT	6303	33	0
// OP_ADDRESS	28	194	6304
// OP_ADDRESS	28	419	6305
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	6306
// OP_STORE_V	6306	10	0
// OP_CALL3	464	0	0
// OP_STOREP_ENT	1	6305	0
// OP_STOREP_ENT	1	6304	0
// OP_LOAD_ENT	28	419	6307
// OP_NOT_ENT	6307	0	6308
// OP_IFNOT	6308	10	0
// OP_STORE_V	6309	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	6310
// OP_STORE_V	6310	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_ADDRESS	28	191	6313
// OP_LOAD_ENT	28	194	6314
// OP_LOAD_V	6314	105	6315
// OP_LOAD_V	28	105	6318
// OP_SUB_V	6315	6318	6321
// OP_STORE_V	6321	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	6313	0
// OP_LOAD_FNC	28	358	6324
// OP_CALL0	6324	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	418	6325
// OP_STOREP_F	6232	6325	0
// OP_LOAD_FNC	28	357	6326
// OP_CALL0	6326	0	0
// OP_ADDRESS	28	150	6327
// OP_LOAD_F	28	150	6328
// OP_CALL0	453	0	0
// OP_MUL_F	1	1727	6329
// OP_ADD_F	6328	6329	6330
// OP_STOREP_F	6330	6327	0
// OP_DONE	0	0	0
void () swimmonster_start_go = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    total_monsters = total_monsters + 1.000;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10.000;
    }
    
    self.view_ofs = '0.000 0.000 10.000';
    self.use = monster_use;
    self.flags = self.flags | FL_SWIM;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        self.th_walk();
    }
    else
    {
        self.pausetime = 100000000.000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * 0.500);
};

// swimmonster_start
// function begins at statement 9324, parm_start=6332
// OP_ADDRESS	28	150	6332
// OP_LOAD_F	28	150	6333
// OP_CALL0	453	0	0
// OP_MUL_F	1	1727	6334
// OP_ADD_F	6333	6334	6335
// OP_STOREP_F	6335	6332	0
// OP_ADDRESS	28	148	6336
// OP_STOREP_FNC	6279	6336	0
// OP_ADD_F	40	708	6337
// OP_STORE_F	6337	40	0
// OP_DONE	0	0	0
void () swimmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = swimmonster_start_go;
    total_monsters = total_monsters + 1.000;
};

