
// monster_use
// function begins at statement 14481, parm_start=10010
// OP_LOAD_ENT	28	181	10010
// OP_IFNOT	10010	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	10011
// OP_LE	10011	213	10012
// OP_IFNOT	10012	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	162	10013
// OP_BITAND	10013	272	10014
// OP_IFNOT	10014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	182	10015
// OP_BITAND	10015	221	10016
// OP_IFNOT	10016	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	10017
// OP_NE_S	10017	1236	10018
// OP_IFNOT	10018	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10019
// OP_STOREP_ENT	351	10019	0
// OP_ADDRESS	28	150	10020
// OP_ADD_F	31	3036	10021
// OP_STOREP_F	10021	10020	0
// OP_ADDRESS	28	148	10022
// OP_STOREP_FNC	3711	10022	0
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
    self.nextthink = time + 0.1;
    self.think = FoundTarget;
};


// monster_death_use
// function begins at statement 14508, parm_start=10023
// OP_LOAD_F	28	182	10026
// OP_BITAND	10026	215	10027
// OP_IFNOT	10027	5	0
// OP_ADDRESS	28	182	10028
// OP_LOAD_F	28	182	10029
// OP_SUB_F	10029	215	10030
// OP_STOREP_F	10030	10028	0
// OP_LOAD_F	28	182	10031
// OP_BITAND	10031	216	10032
// OP_IFNOT	10032	5	0
// OP_ADDRESS	28	182	10033
// OP_LOAD_F	28	182	10034
// OP_SUB_F	10034	216	10035
// OP_STOREP_F	10035	10033	0
// OP_LOAD_S	28	196	10036
// OP_NOT_S	10036	0	10037
// OP_IFNOT	10037	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	10038
// OP_STORE_ENT	10038	351	0
// OP_CALL0	520	0	0
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
// function begins at statement 14530, parm_start=10040
// OP_ADDRESS	28	108	10042
// OP_LOAD_F	28	108	10043
// OP_ADD_F	10043	214	10044
// OP_STOREP_F	10044	10042	0
// OP_CALL0	481	0	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	10045
// OP_IFNOT	10045	10	0
// OP_STORE_V	10046	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10047
// OP_STORE_V	10047	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_ADDRESS	28	163	10050
// OP_STOREP_F	252	10050	0
// OP_ADDRESS	28	191	10051
// OP_LOAD_V	28	117	10052
// OP_MUL_V	10052	10055	10058
// OP_STOREP_F	10058	10051	0
// OP_LOAD_F	28	192	10059
// OP_NOT_F	10059	0	10060
// OP_IFNOT	10060	3	0
// OP_ADDRESS	28	192	10061
// OP_STOREP_F	2323	10061	0
// OP_ADDRESS	28	166	10062
// OP_STOREP_V	10065	10062	0
// OP_ADDRESS	28	147	10068
// OP_STOREP_FNC	10009	10068	0
// OP_ADDRESS	28	182	10069
// OP_LOAD_F	28	182	10070
// OP_BITOR	10070	219	10071
// OP_STOREP_F	10071	10069	0
// OP_LOAD_S	28	196	10072
// OP_IFNOT	10072	42	0
// OP_ADDRESS	28	194	10073
// OP_ADDRESS	28	423	10074
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10075
// OP_STORE_V	10075	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10074	0
// OP_STOREP_ENT	1	10073	0
// OP_ADDRESS	28	191	10076
// OP_LOAD_ENT	28	194	10077
// OP_LOAD_V	10077	105	10078
// OP_LOAD_V	28	105	10081
// OP_SUB_V	10078	10081	10084
// OP_STORE_V	10084	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	10076	0
// OP_LOAD_ENT	28	423	10087
// OP_NOT_ENT	10087	0	10088
// OP_IFNOT	10088	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10090
// OP_STORE_V	10090	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_ENT	28	423	10093
// OP_LOAD_S	10093	129	10094
// OP_EQ_S	10094	10095	10096
// OP_IFNOT	10096	4	0
// OP_LOAD_FNC	28	362	10097
// OP_CALL0	10097	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	422	10098
// OP_STOREP_F	10099	10098	0
// OP_LOAD_FNC	28	361	10100
// OP_CALL0	10100	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10101
// OP_STOREP_F	10099	10101	0
// OP_LOAD_FNC	28	361	10102
// OP_CALL0	10102	0	0
// OP_ADDRESS	28	150	10103
// OP_LOAD_F	28	150	10104
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10105
// OP_ADD_F	10104	10105	10106
// OP_STOREP_F	10106	10103	0
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
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20;
    }
    
    self.view_ofs = '0 0 25';
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
    
    self.nextthink = self.nextthink + (random() * RA_PLAYERSTATTIME);
};


// walkmonster_start
// function begins at statement 14622, parm_start=10108
// OP_ADDRESS	28	150	10108
// OP_LOAD_F	28	150	10109
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10110
// OP_ADD_F	10109	10110	10111
// OP_STOREP_F	10111	10108	0
// OP_ADDRESS	28	148	10112
// OP_STOREP_FNC	10039	10112	0
// OP_ADD_F	40	214	10113
// OP_STORE_F	10113	40	0
// OP_DONE	0	0	0
void () walkmonster_start = 
{
    self.nextthink = self.nextthink + (random() * RA_PLAYERSTATTIME);
    self.think = walkmonster_start_go;
    total_monsters = total_monsters + TRUE;
};


// flymonster_start_go
// function begins at statement 14633, parm_start=10115
// OP_ADDRESS	28	163	10115
// OP_STOREP_F	252	10115	0
// OP_ADDRESS	28	191	10116
// OP_LOAD_V	28	117	10117
// OP_MUL_V	10117	10055	10120
// OP_STOREP_F	10120	10116	0
// OP_LOAD_F	28	192	10121
// OP_NOT_F	10121	0	10122
// OP_IFNOT	10122	3	0
// OP_ADDRESS	28	192	10123
// OP_STOREP_F	235	10123	0
// OP_ADDRESS	28	166	10124
// OP_STOREP_V	10065	10124	0
// OP_ADDRESS	28	147	10127
// OP_STOREP_FNC	10009	10127	0
// OP_ADDRESS	28	182	10128
// OP_LOAD_F	28	182	10129
// OP_BITOR	10129	215	10130
// OP_STOREP_F	10130	10128	0
// OP_ADDRESS	28	182	10131
// OP_LOAD_F	28	182	10132
// OP_BITOR	10132	219	10133
// OP_STOREP_F	10133	10131	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	10134
// OP_IFNOT	10134	10	0
// OP_STORE_V	10135	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10136
// OP_STORE_V	10136	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_S	28	196	10139
// OP_IFNOT	10139	34	0
// OP_ADDRESS	28	194	10140
// OP_ADDRESS	28	423	10141
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10142
// OP_STORE_V	10142	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10141	0
// OP_STOREP_ENT	1	10140	0
// OP_LOAD_ENT	28	423	10143
// OP_NOT_ENT	10143	0	10144
// OP_IFNOT	10144	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10145
// OP_STORE_V	10145	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_ENT	28	423	10148
// OP_LOAD_S	10148	129	10149
// OP_EQ_S	10149	10095	10150
// OP_IFNOT	10150	4	0
// OP_LOAD_FNC	28	362	10151
// OP_CALL0	10151	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	422	10152
// OP_STOREP_F	10099	10152	0
// OP_LOAD_FNC	28	361	10153
// OP_CALL0	10153	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10154
// OP_STOREP_F	10099	10154	0
// OP_LOAD_FNC	28	361	10155
// OP_CALL0	10155	0	0
// OP_DONE	0	0	0
void () flymonster_start_go = 
{
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0 0 25';
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
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
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
    
};


// flymonster_start
// function begins at statement 14710, parm_start=10157
// OP_ADDRESS	28	150	10157
// OP_LOAD_F	28	150	10158
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10159
// OP_ADD_F	10158	10159	10160
// OP_STOREP_F	10160	10157	0
// OP_ADDRESS	28	148	10161
// OP_STOREP_FNC	10114	10161	0
// OP_ADD_F	40	214	10162
// OP_STORE_F	10162	40	0
// OP_DONE	0	0	0
void () flymonster_start = 
{
    self.nextthink = self.nextthink + (random() * RA_PLAYERSTATTIME);
    self.think = flymonster_start_go;
    total_monsters = total_monsters + TRUE;
};


// swimmonster_start_go
// function begins at statement 14721, parm_start=10164
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	163	10164
// OP_STOREP_F	252	10164	0
// OP_ADD_F	40	214	10165
// OP_STORE_F	10165	40	0
// OP_ADDRESS	28	191	10166
// OP_LOAD_V	28	117	10167
// OP_MUL_V	10167	10055	10170
// OP_STOREP_F	10170	10166	0
// OP_LOAD_F	28	192	10171
// OP_NOT_F	10171	0	10172
// OP_IFNOT	10172	3	0
// OP_ADDRESS	28	192	10173
// OP_STOREP_F	235	10173	0
// OP_ADDRESS	28	166	10174
// OP_STOREP_V	10177	10174	0
// OP_ADDRESS	28	147	10180
// OP_STOREP_FNC	10009	10180	0
// OP_ADDRESS	28	182	10181
// OP_LOAD_F	28	182	10182
// OP_BITOR	10182	216	10183
// OP_STOREP_F	10183	10181	0
// OP_ADDRESS	28	182	10184
// OP_LOAD_F	28	182	10185
// OP_BITOR	10185	219	10186
// OP_STOREP_F	10186	10184	0
// OP_LOAD_S	28	196	10187
// OP_IFNOT	10187	33	0
// OP_ADDRESS	28	194	10188
// OP_ADDRESS	28	423	10189
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10190
// OP_STORE_V	10190	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10189	0
// OP_STOREP_ENT	1	10188	0
// OP_LOAD_ENT	28	423	10191
// OP_NOT_ENT	10191	0	10192
// OP_IFNOT	10192	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10193
// OP_STORE_V	10193	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_ADDRESS	28	191	10196
// OP_LOAD_ENT	28	194	10197
// OP_LOAD_V	10197	105	10198
// OP_LOAD_V	28	105	10201
// OP_SUB_V	10198	10201	10204
// OP_STORE_V	10204	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	10196	0
// OP_LOAD_FNC	28	362	10207
// OP_CALL0	10207	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10208
// OP_STOREP_F	10099	10208	0
// OP_LOAD_FNC	28	361	10209
// OP_CALL0	10209	0	0
// OP_ADDRESS	28	150	10210
// OP_LOAD_F	28	150	10211
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10212
// OP_ADD_F	10211	10212	10213
// OP_STOREP_F	10213	10210	0
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
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0 0 10';
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
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * RA_PLAYERSTATTIME);
};


// swimmonster_start
// function begins at statement 14795, parm_start=10215
// OP_ADDRESS	28	150	10215
// OP_LOAD_F	28	150	10216
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10217
// OP_ADD_F	10216	10217	10218
// OP_STOREP_F	10218	10215	0
// OP_ADDRESS	28	148	10219
// OP_STOREP_FNC	10163	10219	0
// OP_ADD_F	40	214	10220
// OP_STORE_F	10220	40	0
// OP_DONE	0	0	0
void () swimmonster_start = 
{
    self.nextthink = self.nextthink + (random() * RA_PLAYERSTATTIME);
    self.think = swimmonster_start_go;
    total_monsters = total_monsters + TRUE;
};

