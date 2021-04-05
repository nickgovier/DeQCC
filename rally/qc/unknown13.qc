// monster_use
// function begins at statement 21276, parm_start=15213
// OP_DONE	0	0	0
void () monster_use = 
{
};

// monster_death_use
// function begins at statement 21277, parm_start=15213
// OP_LOAD_F	28	182	15216
// OP_BITAND	15216	220	15217
// OP_IFNOT	15217	5	0
// OP_ADDRESS	28	182	15218
// OP_LOAD_F	28	182	15219
// OP_SUB_F	15219	220	15220
// OP_STOREP_F	15220	15218	0
// OP_LOAD_F	28	182	15221
// OP_BITAND	15221	221	15222
// OP_IFNOT	15222	5	0
// OP_ADDRESS	28	182	15223
// OP_LOAD_F	28	182	15224
// OP_SUB_F	15224	221	15225
// OP_STOREP_F	15225	15223	0
// OP_LOAD_S	28	196	15226
// OP_NOT_S	15226	0	15227
// OP_IFNOT	15227	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	15228
// OP_STORE_ENT	15228	360	0
// OP_CALL0	532	0	0
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
// function begins at statement 21299, parm_start=15230
// OP_ADDRESS	28	108	15232
// OP_LOAD_F	28	108	15233
// OP_ADD_F	15233	819	15234
// OP_STOREP_F	15234	15232	0
// OP_CALL0	492	0	0
// OP_STORE_V	817	4	0
// OP_STORE_V	817	7	0
// OP_CALL2	491	0	0
// OP_NOT_F	1	0	15235
// OP_IFNOT	15235	10	0
// OP_STORE_V	15236	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	15237
// OP_STORE_V	15237	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_ADDRESS	28	163	15240
// OP_STOREP_F	258	15240	0
// OP_ADDRESS	28	191	15241
// OP_LOAD_V	28	117	15242
// OP_MUL_V	15242	1224	15245
// OP_STOREP_F	15245	15241	0
// OP_LOAD_F	28	192	15246
// OP_NOT_F	15246	0	15247
// OP_IFNOT	15247	3	0
// OP_ADDRESS	28	192	15248
// OP_STOREP_F	1112	15248	0
// OP_ADDRESS	28	166	15249
// OP_STOREP_V	15252	15249	0
// OP_ADDRESS	28	147	15255
// OP_STOREP_FNC	15212	15255	0
// OP_ADDRESS	28	182	15256
// OP_LOAD_F	28	182	15257
// OP_BITOR	15257	224	15258
// OP_STOREP_F	15258	15256	0
// OP_LOAD_S	28	196	15259
// OP_IFNOT	15259	42	0
// OP_ADDRESS	28	194	15260
// OP_ADDRESS	28	432	15261
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	15262
// OP_STORE_V	15262	10	0
// OP_CALL3	477	0	0
// OP_STOREP_ENT	1	15261	0
// OP_STOREP_ENT	1	15260	0
// OP_ADDRESS	28	191	15263
// OP_LOAD_ENT	28	194	15264
// OP_LOAD_V	15264	105	15265
// OP_LOAD_V	28	105	15268
// OP_SUB_V	15265	15268	15271
// OP_STORE_V	15271	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	15263	0
// OP_LOAD_ENT	28	432	15274
// OP_NOT_ENT	15274	0	15275
// OP_IFNOT	15275	10	0
// OP_STORE_V	15276	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	15277
// OP_STORE_V	15277	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_LOAD_ENT	28	432	15280
// OP_LOAD_S	15280	129	15281
// OP_EQ_S	15281	15282	15283
// OP_IFNOT	15283	4	0
// OP_LOAD_FNC	28	371	15284
// OP_CALL0	15284	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	431	15285
// OP_STOREP_F	15286	15285	0
// OP_LOAD_FNC	28	370	15287
// OP_CALL0	15287	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	431	15288
// OP_STOREP_F	15286	15288	0
// OP_LOAD_FNC	28	370	15289
// OP_CALL0	15289	0	0
// OP_ADDRESS	28	150	15290
// OP_LOAD_F	28	150	15291
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	15292
// OP_ADD_F	15291	15292	15293
// OP_STOREP_F	15293	15290	0
// OP_DONE	0	0	0
void () walkmonster_start_go = 
{
    local string stemp;
    local entity etemp;
    self.origin_z = self.origin_z + 1;
    droptofloor();
    
    if(!walkmove(0, 0))
    {
        dprint("walkmonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        if(self.movetarget.classname == "path_corner")
        {
            self.th_walk();
        }
        else
        {
            self.pausetime = 100000000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * 0.5);
};

// walkmonster_start
// function begins at statement 21391, parm_start=15295
// OP_ADDRESS	28	150	15295
// OP_LOAD_F	28	150	15296
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	15297
// OP_ADD_F	15296	15297	15298
// OP_STOREP_F	15298	15295	0
// OP_ADDRESS	28	148	15299
// OP_STOREP_FNC	15229	15299	0
// OP_EQ_F	738	825	15300
// OP_IFNOT	15300	3	0
// OP_STORE_F	792	40	0
// OP_GOTO	3	0	0
// OP_ADD_F	40	819	15301
// OP_STORE_F	15301	40	0
// OP_DONE	0	0	0
void () walkmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = walkmonster_start_go;
    if(rally_type_index == 4)
    {
        total_monsters = NUM_DUKES;
    }
    else
    {
        total_monsters = total_monsters + 1;
    }
    
};

// flymonster_start_go
// function begins at statement 21406, parm_start=15303
// OP_ADDRESS	28	163	15303
// OP_STOREP_F	258	15303	0
// OP_DONE	0	0	0
void () flymonster_start_go = 
{
    self.takedamage = DAMAGE_AIM;
};

// flymonster_start
// function begins at statement 21409, parm_start=15305
// OP_ADDRESS	28	150	15305
// OP_LOAD_F	28	150	15306
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	15307
// OP_ADD_F	15306	15307	15308
// OP_STOREP_F	15308	15305	0
// OP_ADDRESS	28	148	15309
// OP_STOREP_FNC	15302	15309	0
// OP_ADD_F	40	819	15310
// OP_STORE_F	15310	40	0
// OP_DONE	0	0	0
void () flymonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = flymonster_start_go;
    total_monsters = total_monsters + 1;
};

// swimmonster_start_go
// function begins at statement 21420, parm_start=15312
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () swimmonster_start_go = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
};

// swimmonster_start
// function begins at statement 21425, parm_start=15313
// OP_ADDRESS	28	150	15313
// OP_LOAD_F	28	150	15314
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	15315
// OP_ADD_F	15314	15315	15316
// OP_STOREP_F	15316	15313	0
// OP_ADDRESS	28	148	15317
// OP_STOREP_FNC	15311	15317	0
// OP_ADD_F	40	819	15318
// OP_STORE_F	15318	40	0
// OP_DONE	0	0	0
void () swimmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = swimmonster_start_go;
    total_monsters = total_monsters + 1;
};

