// monster_use
// function begins at statement 9174, parm_start=6059
// OP_LOAD_ENT	28	181	6059
// OP_IFNOT	6059	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	6060
// OP_LE	6060	213	6061
// OP_IFNOT	6061	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	346	162	6062
// OP_BITAND	6062	272	6063
// OP_IFNOT	6063	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	346	182	6064
// OP_BITAND	6064	221	6065
// OP_IFNOT	6065	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	346	129	6066
// OP_NE_S	6066	1102	6067
// OP_IFNOT	6067	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	6068
// OP_STOREP_ENT	346	6068	0
// OP_ADDRESS	28	150	6069
// OP_ADD_F	31	993	6070
// OP_STOREP_F	6070	6069	0
// OP_ADDRESS	28	148	6071
// OP_STOREP_FNC	1673	6071	0
// OP_DONE	0	0	0
void () monster_use = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= FALSE)
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
// function begins at statement 9201, parm_start=6072
// OP_LOAD_F	28	182	6075
// OP_BITAND	6075	215	6076
// OP_IFNOT	6076	5	0
// OP_ADDRESS	28	182	6077
// OP_LOAD_F	28	182	6078
// OP_SUB_F	6078	215	6079
// OP_STOREP_F	6079	6077	0
// OP_LOAD_F	28	182	6080
// OP_BITAND	6080	216	6081
// OP_IFNOT	6081	5	0
// OP_ADDRESS	28	182	6082
// OP_LOAD_F	28	182	6083
// OP_SUB_F	6083	216	6084
// OP_STOREP_F	6084	6082	0
// OP_LOAD_S	28	196	6085
// OP_NOT_S	6085	0	6086
// OP_IFNOT	6086	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	6087
// OP_STORE_ENT	6087	346	0
// OP_CALL0	518	0	0
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
// function begins at statement 9223, parm_start=6089
// OP_ADDRESS	28	108	6091
// OP_LOAD_F	28	108	6092
// OP_ADD_F	6092	214	6093
// OP_STOREP_F	6093	6091	0
// OP_CALL0	478	0	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	477	0	0
// OP_NOT_F	1	0	6094
// OP_IFNOT	6094	10	0
// OP_STORE_V	6095	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	6096
// OP_STORE_V	6096	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	163	6099
// OP_STOREP_F	252	6099	0
// OP_ADDRESS	28	191	6100
// OP_LOAD_V	28	117	6101
// OP_MUL_V	6101	6104	6107
// OP_STOREP_F	6107	6100	0
// OP_LOAD_F	28	192	6108
// OP_NOT_F	6108	0	6109
// OP_IFNOT	6109	3	0
// OP_ADDRESS	28	192	6110
// OP_STOREP_F	576	6110	0
// OP_ADDRESS	28	166	6111
// OP_STOREP_V	6114	6111	0
// OP_ADDRESS	28	147	6117
// OP_STOREP_FNC	6058	6117	0
// OP_ADDRESS	28	182	6118
// OP_LOAD_F	28	182	6119
// OP_BITOR	6119	219	6120
// OP_STOREP_F	6120	6118	0
// OP_LOAD_S	28	196	6121
// OP_IFNOT	6121	42	0
// OP_ADDRESS	28	194	6122
// OP_ADDRESS	28	418	6123
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	6124
// OP_STORE_V	6124	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	6123	0
// OP_STOREP_ENT	1	6122	0
// OP_ADDRESS	28	191	6125
// OP_LOAD_ENT	28	194	6126
// OP_LOAD_V	6126	105	6127
// OP_LOAD_V	28	105	6130
// OP_SUB_V	6127	6130	6133
// OP_STORE_V	6133	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	6125	0
// OP_LOAD_ENT	28	418	6136
// OP_NOT_ENT	6136	0	6137
// OP_IFNOT	6137	10	0
// OP_STORE_V	6138	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	6139
// OP_STORE_V	6139	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	418	6142
// OP_LOAD_S	6142	129	6143
// OP_EQ_S	6143	6144	6145
// OP_IFNOT	6145	4	0
// OP_LOAD_FNC	28	357	6146
// OP_CALL0	6146	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	417	6147
// OP_STOREP_F	6148	6147	0
// OP_LOAD_FNC	28	356	6149
// OP_CALL0	6149	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	417	6150
// OP_STOREP_F	6148	6150	0
// OP_LOAD_FNC	28	356	6151
// OP_CALL0	6151	0	0
// OP_ADDRESS	28	150	6152
// OP_LOAD_F	28	150	6153
// OP_CALL0	452	0	0
// OP_MUL_F	1	677	6154
// OP_ADD_F	6153	6154	6155
// OP_STOREP_F	6155	6152	0
// OP_DONE	0	0	0
void () walkmonster_start_go = 
{
    local string stemp;
    local entity etemp;
    self.origin_z = self.origin_z + TRUE;
    droptofloor();
    
    if(!walkmove(FALSE, FALSE))
    {
        dprint("walkmonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = KINDA_WANT;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
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
            self.pausetime = 100000000.000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000.000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * 0.500);
};

// walkmonster_start
// function begins at statement 9315, parm_start=6157
// OP_ADDRESS	28	150	6157
// OP_LOAD_F	28	150	6158
// OP_CALL0	452	0	0
// OP_MUL_F	1	677	6159
// OP_ADD_F	6158	6159	6160
// OP_STOREP_F	6160	6157	0
// OP_ADDRESS	28	148	6161
// OP_STOREP_FNC	6088	6161	0
// OP_ADD_F	40	214	6162
// OP_STORE_F	6162	40	0
// OP_DONE	0	0	0
void () walkmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = walkmonster_start_go;
    total_monsters = total_monsters + TRUE;
};

// flymonster_start_go
// function begins at statement 9326, parm_start=6164
// OP_ADDRESS	28	163	6164
// OP_STOREP_F	252	6164	0
// OP_ADDRESS	28	191	6165
// OP_LOAD_V	28	117	6166
// OP_MUL_V	6166	6104	6169
// OP_STOREP_F	6169	6165	0
// OP_LOAD_F	28	192	6170
// OP_NOT_F	6170	0	6171
// OP_IFNOT	6171	3	0
// OP_ADDRESS	28	192	6172
// OP_STOREP_F	235	6172	0
// OP_ADDRESS	28	166	6173
// OP_STOREP_V	6114	6173	0
// OP_ADDRESS	28	147	6176
// OP_STOREP_FNC	6058	6176	0
// OP_ADDRESS	28	182	6177
// OP_LOAD_F	28	182	6178
// OP_BITOR	6178	215	6179
// OP_STOREP_F	6179	6177	0
// OP_ADDRESS	28	182	6180
// OP_LOAD_F	28	182	6181
// OP_BITOR	6181	219	6182
// OP_STOREP_F	6182	6180	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	477	0	0
// OP_NOT_F	1	0	6183
// OP_IFNOT	6183	10	0
// OP_STORE_V	6184	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	6185
// OP_STORE_V	6185	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	196	6188
// OP_IFNOT	6188	34	0
// OP_ADDRESS	28	194	6189
// OP_ADDRESS	28	418	6190
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	6191
// OP_STORE_V	6191	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	6190	0
// OP_STOREP_ENT	1	6189	0
// OP_LOAD_ENT	28	418	6192
// OP_NOT_ENT	6192	0	6193
// OP_IFNOT	6193	10	0
// OP_STORE_V	6138	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	6194
// OP_STORE_V	6194	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	418	6197
// OP_LOAD_S	6197	129	6198
// OP_EQ_S	6198	6144	6199
// OP_IFNOT	6199	4	0
// OP_LOAD_FNC	28	357	6200
// OP_CALL0	6200	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	417	6201
// OP_STOREP_F	6148	6201	0
// OP_LOAD_FNC	28	356	6202
// OP_CALL0	6202	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	417	6203
// OP_STOREP_F	6148	6203	0
// OP_LOAD_FNC	28	356	6204
// OP_CALL0	6204	0	0
// OP_DONE	0	0	0
void () flymonster_start_go = 
{
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_FLY;
    self.flags = self.flags | FL_MONSTER;
    
    if(!walkmove(FALSE, FALSE))
    {
        dprint("flymonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        
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
            self.pausetime = 100000000.000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000.000;
        self.th_stand();
    }
    
};

// flymonster_start
// function begins at statement 9403, parm_start=6206
// OP_ADDRESS	28	150	6206
// OP_LOAD_F	28	150	6207
// OP_CALL0	452	0	0
// OP_MUL_F	1	677	6208
// OP_ADD_F	6207	6208	6209
// OP_STOREP_F	6209	6206	0
// OP_ADDRESS	28	148	6210
// OP_STOREP_FNC	6163	6210	0
// OP_ADD_F	40	214	6211
// OP_STORE_F	6211	40	0
// OP_DONE	0	0	0
void () flymonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = flymonster_start_go;
    total_monsters = total_monsters + TRUE;
};

// swimmonster_start_go
// function begins at statement 9414, parm_start=6213
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	163	6213
// OP_STOREP_F	252	6213	0
// OP_ADD_F	40	214	6214
// OP_STORE_F	6214	40	0
// OP_ADDRESS	28	191	6215
// OP_LOAD_V	28	117	6216
// OP_MUL_V	6216	6104	6219
// OP_STOREP_F	6219	6215	0
// OP_LOAD_F	28	192	6220
// OP_NOT_F	6220	0	6221
// OP_IFNOT	6221	3	0
// OP_ADDRESS	28	192	6222
// OP_STOREP_F	235	6222	0
// OP_ADDRESS	28	166	6223
// OP_STOREP_V	6226	6223	0
// OP_ADDRESS	28	147	6229
// OP_STOREP_FNC	6058	6229	0
// OP_ADDRESS	28	182	6230
// OP_LOAD_F	28	182	6231
// OP_BITOR	6231	216	6232
// OP_STOREP_F	6232	6230	0
// OP_ADDRESS	28	182	6233
// OP_LOAD_F	28	182	6234
// OP_BITOR	6234	219	6235
// OP_STOREP_F	6235	6233	0
// OP_LOAD_S	28	196	6236
// OP_IFNOT	6236	33	0
// OP_ADDRESS	28	194	6237
// OP_ADDRESS	28	418	6238
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	6239
// OP_STORE_V	6239	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	6238	0
// OP_STOREP_ENT	1	6237	0
// OP_LOAD_ENT	28	418	6240
// OP_NOT_ENT	6240	0	6241
// OP_IFNOT	6241	10	0
// OP_STORE_V	6138	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	6242
// OP_STORE_V	6242	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	191	6245
// OP_LOAD_ENT	28	194	6246
// OP_LOAD_V	6246	105	6247
// OP_LOAD_V	28	105	6250
// OP_SUB_V	6247	6250	6253
// OP_STORE_V	6253	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	6245	0
// OP_LOAD_FNC	28	357	6256
// OP_CALL0	6256	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	417	6257
// OP_STOREP_F	6148	6257	0
// OP_LOAD_FNC	28	356	6258
// OP_CALL0	6258	0	0
// OP_ADDRESS	28	150	6259
// OP_LOAD_F	28	150	6260
// OP_CALL0	452	0	0
// OP_MUL_F	1	677	6261
// OP_ADD_F	6260	6261	6262
// OP_STOREP_F	6262	6259	0
// OP_DONE	0	0	0
void () swimmonster_start_go = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    total_monsters = total_monsters + TRUE;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0.000 0.000 10.000';
    self.use = monster_use;
    self.flags = self.flags | FL_SWIM;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        
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
// function begins at statement 9488, parm_start=6264
// OP_ADDRESS	28	150	6264
// OP_LOAD_F	28	150	6265
// OP_CALL0	452	0	0
// OP_MUL_F	1	677	6266
// OP_ADD_F	6265	6266	6267
// OP_STOREP_F	6267	6264	0
// OP_ADDRESS	28	148	6268
// OP_STOREP_FNC	6212	6268	0
// OP_ADD_F	40	214	6269
// OP_STORE_F	6269	40	0
// OP_DONE	0	0	0
void () swimmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.500);
    self.think = swimmonster_start_go;
    total_monsters = total_monsters + TRUE;
};

