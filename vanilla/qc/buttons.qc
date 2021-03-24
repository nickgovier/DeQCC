void () button_return;
// button_wait
// function begins at statement 9753
// OP_ADDRESS	28	433	6302
// OP_STOREP_F	282	6302	0
// OP_ADDRESS	28	150	6303
// OP_LOAD_F	28	102	6304
// OP_LOAD_F	28	413	6305
// OP_ADD_F	6304	6305	6306
// OP_STOREP_F	6306	6303	0
// OP_ADDRESS	28	148	6307
// OP_STOREP_FNC	6301	6307	0
// OP_LOAD_ENT	28	181	6308
// OP_STORE_ENT	6308	346	0
// OP_CALL0	518	0	0
// OP_ADDRESS	28	131	6309
// OP_STOREP_F	6074	6309	0
// OP_DONE	0	0	0
void () button_wait =
{
    self.state = STATE_TOP;
    self.nextthink = self.ltime + self.wait;
    self.think = button_return;
    activator = self.enemy;
    SUB_UseTargets();
    self.frame = SECRET_OPEN_ONCE;
};

// button_done
// function begins at statement 9768
// OP_ADDRESS	28	433	6311
// OP_STOREP_F	283	6311	0
// OP_DONE	0	0	0
void () button_done =
{
    self.state = STATE_BOTTOM;
};

// button_return
// function begins at statement 9771
// OP_ADDRESS	28	433	6312
// OP_STOREP_F	285	6312	0
// OP_LOAD_V	28	434	6313
// OP_LOAD_F	28	364	6316
// OP_STORE_V	6313	4	0
// OP_STORE_V	6316	7	0
// OP_STORE_V	6310	10	0
// OP_CALL3	512	0	0
// OP_ADDRESS	28	131	6317
// OP_STOREP_F	337	6317	0
// OP_LOAD_F	28	152	6318
// OP_IFNOT	6318	3	0
// OP_ADDRESS	28	163	6319
// OP_STOREP_F	251	6319	0
// OP_DONE	0	0	0
void () button_return =
{
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, button_done);
    self.frame = MSG_BROADCAST;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
    }
    
};

// button_blocked
// function begins at statement 9786
// OP_DONE	0	0	0
void () button_blocked =
{
};

// button_fire
// function begins at statement 9787
// OP_LOAD_F	28	433	6322
// OP_EQ_F	6322	284	6323
// OP_LOAD_F	28	433	6324
// OP_EQ_F	6324	282	6325
// OP_OR	6323	6325	6326
// OP_IFNOT	6326	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	208	6327
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6327	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6328
// OP_STOREP_F	284	6328	0
// OP_LOAD_V	28	438	6329
// OP_LOAD_F	28	364	6332
// OP_STORE_V	6329	4	0
// OP_STORE_V	6332	7	0
// OP_STORE_V	6300	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () button_fire =
{
    
    if((self.state == STATE_UP) || (self.state == STATE_TOP))
    {
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise, SECRET_OPEN_ONCE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, button_wait);
};

// button_use
// function begins at statement 9810
// OP_ADDRESS	28	181	6334
// OP_STOREP_ENT	346	6334	0
// OP_CALL0	6321	0	0
// OP_DONE	0	0	0
void () button_use =
{
    self.enemy = activator;
    button_fire();
};

// button_touch
// function begins at statement 9814
// OP_LOAD_S	29	129	6336
// OP_NE_S	6336	712	6337
// OP_IFNOT	6337	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	6338
// OP_STOREP_ENT	29	6338	0
// OP_CALL0	6321	0	0
// OP_DONE	0	0	0
void () button_touch =
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    self.enemy = other;
    button_fire();
};

// button_killed
// function begins at statement 9822
// OP_ADDRESS	28	181	6340
// OP_STOREP_ENT	347	6340	0
// OP_ADDRESS	28	152	6341
// OP_LOAD_F	28	185	6342
// OP_STOREP_F	6342	6341	0
// OP_ADDRESS	28	163	6343
// OP_STOREP_F	250	6343	0
// OP_CALL0	6321	0	0
// OP_DONE	0	0	0
void () button_killed =
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    button_fire();
};

// func_button
// function begins at statement 9831
// OP_LOAD_F	28	207	6347
// OP_EQ_F	6347	337	6348
// OP_IFNOT	6348	5	0
// OP_STORE_V	6349	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6350
// OP_STOREP_S	6349	6350	0
// OP_LOAD_F	28	207	6351
// OP_EQ_F	6351	6074	6352
// OP_IFNOT	6352	5	0
// OP_STORE_V	6353	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6354
// OP_STOREP_S	6353	6354	0
// OP_LOAD_F	28	207	6355
// OP_EQ_F	6355	6075	6356
// OP_IFNOT	6356	5	0
// OP_STORE_V	6357	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6358
// OP_STOREP_S	6357	6358	0
// OP_LOAD_F	28	207	6359
// OP_EQ_F	6359	370	6360
// OP_IFNOT	6360	5	0
// OP_STORE_V	6361	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6362
// OP_STOREP_S	6361	6362	0
// OP_CALL0	523	0	0
// OP_ADDRESS	28	103	6363
// OP_STOREP_F	232	6363	0
// OP_ADDRESS	28	104	6364
// OP_STOREP_F	241	6364	0
// OP_LOAD_S	28	130	6365
// OP_STORE_V	28	4	0
// OP_STORE_V	6365	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	149	6366
// OP_STOREP_FNC	6320	6366	0
// OP_ADDRESS	28	147	6367
// OP_STOREP_FNC	6333	6367	0
// OP_LOAD_F	28	152	6368
// OP_IFNOT	6368	9	0
// OP_ADDRESS	28	185	6369
// OP_LOAD_F	28	152	6370
// OP_STOREP_F	6370	6369	0
// OP_ADDRESS	28	362	6371
// OP_STOREP_FNC	6339	6371	0
// OP_ADDRESS	28	163	6372
// OP_STOREP_F	251	6372	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	146	6373
// OP_STOREP_FNC	6335	6373	0
// OP_LOAD_F	28	364	6374
// OP_NOT_F	6374	0	6375
// OP_IFNOT	6375	3	0
// OP_ADDRESS	28	364	6376
// OP_STOREP_F	1733	6376	0
// OP_LOAD_F	28	413	6377
// OP_NOT_F	6377	0	6378
// OP_IFNOT	6378	3	0
// OP_ADDRESS	28	413	6379
// OP_STOREP_F	6074	6379	0
// OP_LOAD_F	28	432	6380
// OP_NOT_F	6380	0	6381
// OP_IFNOT	6381	3	0
// OP_ADDRESS	28	432	6382
// OP_STOREP_F	6076	6382	0
// OP_ADDRESS	28	433	6383
// OP_STOREP_F	283	6383	0
// OP_ADDRESS	28	434	6384
// OP_LOAD_V	28	105	6387
// OP_STOREP_V	6387	6384	0
// OP_ADDRESS	28	438	6390
// OP_LOAD_V	28	434	6393
// OP_LOAD_V	28	202	6396
// OP_LOAD_V	28	202	6399
// OP_LOAD_V	28	142	6402
// OP_MUL_V	6399	6402	6405
// OP_STORE_V	6405	4	0
// OP_CALL1	485	0	0
// OP_LOAD_F	28	432	6406
// OP_SUB_F	1	6406	6407
// OP_MUL_VF	6396	6407	6408
// OP_ADD_V	6393	6408	6411
// OP_STOREP_V	6411	6390	0
// OP_DONE	0	0	0
void () func_button =
{
    local float gtemp;
    local float ftemp;
    
    if(self.sounds == MSG_BROADCAST)
    {
        precache_sound("buttons/airbut1.wav");
        self.noise = "buttons/airbut1.wav";
    }
    
    
    if(self.sounds == SECRET_OPEN_ONCE)
    {
        precache_sound("buttons/switch21.wav");
        self.noise = "buttons/switch21.wav";
    }
    
    
    if(self.sounds == SECRET_1ST_LEFT)
    {
        precache_sound("buttons/switch02.wav");
        self.noise = "buttons/switch02.wav";
    }
    
    
    if(self.sounds == AS_MELEE)
    {
        precache_sound("buttons/switch04.wav");
        self.noise = "buttons/switch04.wav";
    }
    
    SetMovedir();
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    setmodel(self, self.model);
    self.blocked = button_blocked;
    self.use = button_use;
    if(self.health)
    {
        self.max_health = self.health;
        self.th_die = button_killed;
        self.takedamage = DAMAGE_YES;
    }
    else    
    {
        self.touch = button_touch;
    }
    
    
    if(!self.speed)
    {
        self.speed = 40.000;
    }
    
    
    if(!self.wait)
    {
        self.wait = SECRET_OPEN_ONCE;
    }
    
    
    if(!self.lip)
    {
        self.lip = SECRET_1ST_DOWN;
    }
    
    self.state = STATE_BOTTOM;
    self.pos1 = self.origin;
    fabs(self.movedir * self.size);
    self.pos2 = self.pos1 + (self.movedir * ((fabs(v_forward * self.size)) - self.lip));
};

