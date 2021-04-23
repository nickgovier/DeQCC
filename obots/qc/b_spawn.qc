
// DestroyBot
// function begins at statement 38008, parm_start=21001
// OP_LOAD_F	28	165	21004
// OP_EQ_F	21004	246	21005
// OP_IFNOT	21005	3	0
// OP_STORE_F	213	21003	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	21003	0
// OP_LOAD_S	21001	180	21006
// OP_STORE_V	21006	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9087	4	0
// OP_CALL1	472	0	0
// OP_LOAD_F	21001	153	21007
// OP_STORE_V	21007	4	0
// OP_CALL1	474	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9089	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	21001	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6662	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_BITAND	821	777	21008
// OP_IFNOT	21008	19	0
// OP_LOAD_F	21001	608	21009
// OP_STORE_V	21009	4	0
// OP_CALL1	1054	0	0
// OP_STORE_ENT	1	21002	0
// OP_NOT_ENT	21002	0	21010
// OP_IFNOT	21010	3	0
// OP_STORE_V	16254	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	21002	93	21011
// OP_STOREP_F	213	21011	0
// OP_ADDRESS	21002	132	21012
// OP_STOREP_F	213	21012	0
// OP_ADDRESS	21002	130	21013
// OP_STOREP_S	348	21013	0
// OP_ADDRESS	21001	574	21014
// OP_STOREP_F	213	21014	0
// OP_ADDRESS	21001	573	21015
// OP_STOREP_F	213	21015	0
// OP_STORE_V	21001	4	0
// OP_CALL1	1066	0	0
// OP_STORE_V	21001	4	0
// OP_CALL1	1164	0	0
// OP_LOAD_F	21001	575	21016
// OP_BITAND	21016	703	21017
// OP_IFNOT	21017	7	0
// OP_ADDRESS	21001	575	21018
// OP_LOAD_F	21001	575	21019
// OP_SUB_F	21019	703	21020
// OP_STOREP_F	21020	21018	0
// OP_SUB_F	802	214	21021
// OP_STORE_F	21021	802	0
// OP_LOAD_ENT	21001	194	21022
// OP_IFNOT	21022	4	0
// OP_LOAD_ENT	21001	194	21023
// OP_STORE_V	21023	4	0
// OP_CALL1	465	0	0
// OP_LOAD_F	21001	608	21024
// OP_STORE_V	21024	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	21001	609	21025
// OP_STORE_V	21025	4	0
// OP_CALL1	20983	0	0
// OP_LOAD_F	21001	608	21026
// OP_STORE_V	21026	4	0
// OP_CALL1	1049	0	0
// OP_LOAD_ENT	21001	620	21027
// OP_IFNOT	21027	5	0
// OP_LOAD_ENT	21001	620	21028
// OP_ADDRESS	21028	621	21029
// OP_LOAD_ENT	21001	621	21030
// OP_STOREP_ENT	21030	21029	0
// OP_LOAD_ENT	21001	621	21031
// OP_IFNOT	21031	6	0
// OP_LOAD_ENT	21001	621	21032
// OP_ADDRESS	21032	620	21033
// OP_LOAD_ENT	21001	620	21034
// OP_STOREP_ENT	21034	21033	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	21001	620	21035
// OP_STORE_ENT	21035	834	0
// OP_BITAND	821	767	21036
// OP_IFNOT	21036	4	0
// OP_STORE_V	21001	4	0
// OP_STORE_V	21003	7	0
// OP_CALL2	1215	0	0
// OP_STORE_V	21001	4	0
// OP_CALL1	465	0	0
// OP_SUB_F	810	214	21037
// OP_STORE_F	21037	810	0
// OP_DONE	0	0	0
void (entity globaldef007102) DestroyBot = 
{
    local entity globaldef007103;
    local float globaldef007104;
    if(self.deadflag == DEAD_NO)
    {
        globaldef007104 = FALSE;
    }
    else
    {
        globaldef007104 = TRUE;
    }
    
    bprint(globaldef007102.netname);
    bprint(" left the game with ");
    bprint(ftos(globaldef007102.frags));
    bprint(" frags\n");
    sound(globaldef007102, CHAN_BODY, "player/tornoff2.wav", TRUE, ATTN_NONE);
    
    if(obot_game_option_bitflags & GLOBALDEF760_32768)
    {
        globaldef007103 = GetClientEntity(globaldef007102.clientnumber);
        
        if(!globaldef007103)
        {
            objerror("bot with invalid client number");
        }
        
        globaldef007103.modelindex = FALSE;
        globaldef007103.skin = FALSE;
        globaldef007103.model = string_null;
        globaldef007102.field000251 = FALSE;
        globaldef007102.clmodelindex = FALSE;
    }
    
    func002359(globaldef007102);
    RemoveEnemyFromBots(globaldef007102);
    
    if(globaldef007102.botflags & GLOBALDEF686_8)
    {
        globaldef007102.botflags = globaldef007102.botflags - GLOBALDEF686_8;
        globaldef000785 = globaldef000785 - TRUE;
    }
    
    
    if(globaldef007102.goalentity)
    {
        remove(globaldef007102.goalentity);
    }
    
    msgUpdateClientNameToAll(globaldef007102.clientnumber, "");
    func002414(globaldef007102.botnumber);
    SetClientNumberFree(globaldef007102.clientnumber);
    
    if(globaldef007102.next)
    {
        globaldef007102.next.prev = globaldef007102.prev;
    }
    
    if(globaldef007102.prev)
    {
        globaldef007102.prev.next = globaldef007102.next;
    }
    else
    {
        firstBot = globaldef007102.next;
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_disconnect(globaldef007102, globaldef007104);
    }
    
    remove(globaldef007102);
    botCount = botCount - TRUE;
};


// func002418
// function begins at statement 38105, parm_start=21039
// OP_ADDRESS	21039	129	21043
// OP_STOREP_S	1241	21043	0
// OP_ADDRESS	21039	152	21044
// OP_STOREP_F	1997	21044	0
// OP_ADDRESS	21039	163	21045
// OP_STOREP_F	252	21045	0
// OP_ADDRESS	21039	104	21046
// OP_STOREP_F	240	21046	0
// OP_ADDRESS	21039	103	21047
// OP_STOREP_F	229	21047	0
// OP_ADDRESS	21039	393	21048
// OP_STOREP_F	213	21048	0
// OP_ADDRESS	21039	185	21049
// OP_STOREP_F	1997	21049	0
// OP_ADDRESS	21039	396	21050
// OP_ADD_F	31	791	21051
// OP_STOREP_F	21051	21050	0
// OP_ADDRESS	21039	425	21052
// OP_STOREP_F	214	21052	0
// OP_ADDRESS	21039	382	21053
// OP_STOREP_F	213	21053	0
// OP_ADDRESS	21039	383	21054
// OP_STOREP_F	213	21054	0
// OP_ADDRESS	21039	381	21055
// OP_STOREP_F	213	21055	0
// OP_ADDRESS	21039	380	21056
// OP_STOREP_F	213	21056	0
// OP_ADDRESS	21039	133	21057
// OP_STOREP_F	213	21057	0
// OP_ADDRESS	21039	384	21058
// OP_STOREP_F	213	21058	0
// OP_ADDRESS	21039	192	21059
// OP_LOAD_F	21039	588	21060
// OP_MUL_F	217	21060	21061
// OP_ADD_F	2323	21061	21062
// OP_STOREP_F	21062	21059	0
// OP_ADDRESS	21039	612	21063
// OP_LOAD_F	21039	588	21064
// OP_MUL_F	228	21064	21065
// OP_ADD_F	235	21065	21066
// OP_STOREP_F	21066	21063	0
// OP_LOAD_F	21039	588	21067
// OP_GT	21067	21068	21069
// OP_IFNOT	21069	9	0
// OP_ADDRESS	21039	192	21070
// OP_LOAD_F	21039	192	21071
// OP_ADD_F	21071	235	21072
// OP_STOREP_F	21072	21070	0
// OP_ADDRESS	21039	612	21073
// OP_LOAD_F	21039	612	21074
// OP_ADD_F	21074	229	21075
// OP_STOREP_F	21075	21073	0
// OP_BITAND	821	767	21076
// OP_IFNOT	21076	13	0
// OP_ADDRESS	21039	192	21077
// OP_LOAD_F	21039	192	21078
// OP_LOAD_F	21039	588	21079
// OP_MUL_F	235	21079	21080
// OP_ADD_F	21078	21080	21081
// OP_STOREP_F	21081	21077	0
// OP_ADDRESS	21039	612	21082
// OP_LOAD_F	21039	612	21083
// OP_LOAD_F	21039	588	21084
// OP_MUL_F	230	21084	21085
// OP_ADD_F	21083	21085	21086
// OP_STOREP_F	21086	21082	0
// OP_LOAD_ENT	21039	194	21087
// OP_EQ_E	21087	30	21088
// OP_IFNOT	21088	4	0
// OP_ADDRESS	21039	194	21089
// OP_CALL0	1130	0	0
// OP_STOREP_ENT	1	21089	0
// OP_LOAD_ENT	21039	194	21090
// OP_ADDRESS	21090	194	21091
// OP_STOREP_ENT	30	21091	0
// OP_ADDRESS	21039	162	21092
// OP_BITOR	254	253	21093
// OP_STOREP_F	21093	21092	0
// OP_ADDRESS	21039	152	21094
// OP_STOREP_F	1997	21094	0
// OP_ADDRESS	21039	188	21095
// OP_STOREP_F	213	21095	0
// OP_ADDRESS	21039	158	21096
// OP_STOREP_F	305	21096	0
// OP_ADDRESS	21039	159	21097
// OP_STOREP_F	213	21097	0
// OP_ADDRESS	21039	160	21098
// OP_STOREP_F	213	21098	0
// OP_ADDRESS	21039	161	21099
// OP_STOREP_F	213	21099	0
// OP_ADDRESS	21039	154	21100
// OP_STOREP_F	4838	21100	0
// OP_ADDRESS	21039	187	21101
// OP_STOREP_F	213	21101	0
// OP_EQ_F	35	229	21102
// OP_IFNOT	21102	3	0
// OP_STORE_V	21039	4	0
// OP_CALL1	8390	0	0
// OP_STORE_ENT	28	21041	0
// OP_STORE_ENT	21039	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	21041	28	0
// OP_ADDRESS	21039	371	21103
// OP_STOREP_F	31	21103	0
// OP_ADDRESS	21039	378	21104
// OP_STOREP_F	31	21104	0
// OP_ADDRESS	21039	366	21105
// OP_STOREP_FNC	1176	21105	0
// OP_ADDRESS	21039	367	21106
// OP_STOREP_FNC	1177	21106	0
// OP_ADDRESS	21039	148	21107
// OP_STOREP_FNC	1166	21107	0
// OP_ADDRESS	21039	150	21108
// OP_ADD_F	31	3036	21109
// OP_STOREP_F	21109	21108	0
// OP_ADDRESS	21039	551	21110
// OP_STOREP_FNC	1155	21110	0
// OP_ADDRESS	21039	422	21111
// OP_CALL0	457	0	0
// OP_LOAD_F	21039	588	21112
// OP_SUB_F	228	21112	21113
// OP_MUL_F	1	21113	21114
// OP_ADD_F	31	21114	21115
// OP_STOREP_F	21115	21111	0
// OP_ADDRESS	21039	181	21116
// OP_STOREP_ENT	30	21116	0
// OP_ADDRESS	21039	688	21117
// OP_STOREP_F	716	21117	0
// OP_ADDRESS	21039	165	21118
// OP_STOREP_F	246	21118	0
// OP_NOT_F	527	0	21119
// OP_IFNOT	21119	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6686	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	21120
// OP_STORE_F	21120	527	0
// OP_NOT_F	525	0	21121
// OP_IFNOT	21121	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6685	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	21122
// OP_STORE_F	21122	525	0
// OP_NOT_F	526	0	21123
// OP_IFNOT	21123	6	0
// OP_STORE_V	21039	4	0
// OP_STORE_V	6684	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	21039	93	21124
// OP_STORE_F	21124	526	0
// OP_BITAND	821	777	21125
// OP_IFNOT	21125	11	0
// OP_ADDRESS	21039	132	21126
// OP_STOREP_F	213	21126	0
// OP_ADDRESS	21039	574	21127
// OP_LOAD_F	21039	572	21128
// OP_STOREP_F	21128	21127	0
// OP_ADDRESS	21039	573	21129
// OP_STOREP_F	526	21129	0
// OP_ADDRESS	21039	93	21130
// OP_STOREP_F	213	21130	0
// OP_GOTO	5	0	0
// OP_ADDRESS	21039	130	21131
// OP_STOREP_S	6684	21131	0
// OP_ADDRESS	21039	93	21132
// OP_STOREP_F	526	21132	0
// OP_STORE_V	21039	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	21039	4	0
// OP_CALL1	7623	0	0
// OP_STORE_ENT	1	21040	0
// OP_BITAND	821	767	21133
// OP_IFNOT	21133	4	0
// OP_STORE_V	8379	4	0
// OP_CALL1	1220	0	0
// OP_STORE_ENT	1	21040	0
// OP_STORE_V	21039	4	0
// OP_LOAD_V	21040	105	21134
// OP_ADD_V	21134	2827	21137
// OP_STORE_V	21137	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	21039	113	21140
// OP_STOREP_V	286	21140	0
// OP_ADDRESS	21039	576	21143
// OP_STOREP_V	286	21143	0
// OP_ADDRESS	21039	182	21146
// OP_STOREP_F	698	21146	0
// OP_ADDRESS	21039	580	21147
// OP_LOAD_V	21039	105	21150
// OP_STOREP_V	21150	21147	0
// OP_ADDRESS	21039	584	21153
// OP_STOREP_F	213	21153	0
// OP_ADDRESS	21039	117	21154
// OP_LOAD_V	21040	117	21157
// OP_STOREP_V	21157	21154	0
// OP_ADDRESS	21039	175	21160
// OP_LOAD_V	21039	117	21163
// OP_STOREP_V	21163	21160	0
// OP_ADDRESS	21039	622	21166
// OP_STOREP_ENT	30	21166	0
// OP_LOAD_F	21039	575	21167
// OP_BITAND	21167	703	21168
// OP_IFNOT	21168	7	0
// OP_SUB_F	802	214	21169
// OP_STORE_F	21169	802	0
// OP_ADDRESS	21039	575	21170
// OP_LOAD_F	21039	575	21171
// OP_SUB_F	21171	703	21172
// OP_STOREP_F	21172	21170	0
// OP_BITAND	821	768	21173
// OP_NOT_F	21173	0	21174
// OP_LT	803	804	21175
// OP_NE_F	805	727	21176
// OP_OR	21175	21176	21177
// OP_AND	21174	21177	21178
// OP_IFNOT	21178	7	0
// OP_ADDRESS	21039	575	21179
// OP_LOAD_F	21039	575	21180
// OP_BITOR	21180	703	21181
// OP_STOREP_F	21181	21179	0
// OP_ADD_F	802	214	21182
// OP_STORE_F	21182	802	0
// OP_ADDRESS	21039	166	21183
// OP_STOREP_V	8450	21183	0
// OP_LOAD_V	21039	117	21186
// OP_STORE_V	21186	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	21039	105	21189
// OP_MUL_VF	59	2323	21192
// OP_ADD_V	21189	21192	21195
// OP_STORE_V	21195	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	21039	105	21198
// OP_STORE_V	21198	4	0
// OP_STORE_V	21039	7	0
// OP_CALL2	7260	0	0
// OP_BITAND	821	767	21201
// OP_IFNOT	21201	3	0
// OP_STORE_V	21039	4	0
// OP_CALL1	1217	0	0
// OP_DONE	0	0	0
void (entity globaldef007106) func002418 = 
{
    local entity globaldef007107;
    local entity globaldef007108;
    local string globaldef007109;
    globaldef007106.classname = "bot";
    globaldef007106.health = 100;
    globaldef007106.takedamage = DAMAGE_AIM;
    globaldef007106.solid = SOLID_SLIDEBOX;
    globaldef007106.movetype = MOVETYPE_STEP;
    globaldef007106.show_hostile = FALSE;
    globaldef007106.max_health = 100;
    globaldef007106.air_finished = time + BOTSHIRTPANTS_12;
    globaldef007106.dmg = TRUE;
    globaldef007106.super_damage_finished = FALSE;
    globaldef007106.radsuit_finished = FALSE;
    globaldef007106.invisible_finished = FALSE;
    globaldef007106.invincible_finished = FALSE;
    globaldef007106.effects = FALSE;
    globaldef007106.invincible_time = FALSE;
    globaldef007106.yaw_speed = 20 + (FL_CLIENT * globaldef007106.botskill);
    globaldef007106.field000289 = MOVETYPE_BOUNCE + (MOVETYPE_WALK * globaldef007106.botskill);
    
    if(globaldef007106.botskill > 2.9)
    {
        globaldef007106.yaw_speed = globaldef007106.yaw_speed + MOVETYPE_BOUNCE;
        globaldef007106.field000289 = globaldef007106.field000289 + MOVETYPE_STEP;
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        globaldef007106.yaw_speed = globaldef007106.yaw_speed + (MOVETYPE_BOUNCE * globaldef007106.botskill);
        globaldef007106.field000289 = globaldef007106.field000289 + (MOVETYPE_FLY * globaldef007106.botskill);
    }
    
    
    if(globaldef007106.goalentity == world)
    {
        globaldef007106.goalentity = CreateBotGoal();
    }
    
    globaldef007106.goalentity.goalentity = world;
    globaldef007106.items = IT_SHOTGUN | IT_AXE;
    globaldef007106.health = 100;
    globaldef007106.armorvalue = FALSE;
    globaldef007106.ammo_shells = SVC_SIGNONNUM;
    globaldef007106.ammo_nails = FALSE;
    globaldef007106.ammo_rockets = FALSE;
    globaldef007106.ammo_cells = FALSE;
    globaldef007106.weapon = WEAPON_SHOTGUN;
    globaldef007106.armortype = FALSE;
    
    if(deathmatch == MOVETYPE_STEP)
    {
        FullLoadout(globaldef007106);
    }
    
    globaldef007108 = self;
    self = globaldef007106;
    W_SetCurrentAmmo();
    self = globaldef007108;
    globaldef007106.search_time = time;
    globaldef007106.attack_finished = time;
    globaldef007106.th_pain = bot_pain;
    globaldef007106.th_die = BotDie;
    globaldef007106.think = bot_stand;
    globaldef007106.nextthink = time + 0.1;
    globaldef007106.f_ai = func002503;
    globaldef007106.pausetime = time + (random() * (MOVETYPE_WALK - globaldef007106.botskill));
    globaldef007106.enemy = world;
    globaldef007106.waypointtype = WAYPOINTTYPE_SPAWN;
    globaldef007106.deadflag = DEAD_NO;
    
    if(!modelindex_head)
    {
        setmodel(self, "progs/h_player.mdl");
        modelindex_head = self.modelindex;
    }
    
    
    if(!modelindex_eyes)
    {
        setmodel(self, "progs/eyes.mdl");
        modelindex_eyes = self.modelindex;
    }
    
    
    if(!modelindex_player)
    {
        setmodel(globaldef007106, "progs/player.mdl");
        modelindex_player = globaldef007106.modelindex;
    }
    
    if(obot_game_option_bitflags & GLOBALDEF760_32768)
    {
        globaldef007106.skin = FALSE;
        globaldef007106.field000251 = globaldef007106.field000249;
        globaldef007106.clmodelindex = modelindex_player;
        globaldef007106.modelindex = FALSE;
    }
    else
    {
        globaldef007106.model = "progs/player.mdl";
        globaldef007106.modelindex = modelindex_player;
    }
    
    setsize(globaldef007106, VEC_HULL_MIN, VEC_HULL_MAX);
    globaldef007107 = func000350(globaldef007106);
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        globaldef007107 = rocket_arena_selectspawnpoint("info_player_deathmatch");
    }
    
    setorigin(globaldef007106, globaldef007107.origin + '0 0 2');
    globaldef007106.velocity = VEC_ORIGIN;
    globaldef007106.old_velocity = VEC_ORIGIN;
    globaldef007106.flags = GLOBALDEF681_8192;
    globaldef007106.old_origin = globaldef007106.origin;
    globaldef007106.old_flags = FALSE;
    globaldef007106.angles = globaldef007107.angles;
    globaldef007106.v_angle = globaldef007106.angles;
    globaldef007106.path0 = world;
    
    if(globaldef007106.botflags & GLOBALDEF686_8)
    {
        globaldef000785 = globaldef000785 - TRUE;
        globaldef007106.botflags = globaldef007106.botflags - GLOBALDEF686_8;
    }
    
    
    if((!(obot_game_option_bitflags & OBOT_BOTPATHING)) && ((waypointCount < globaldef000787) || (waypointStatus != WAYPOINTSTATUS_SETUP_COMPLETE)))
    {
        globaldef007106.botflags = globaldef007106.botflags | GLOBALDEF686_8;
        globaldef000785 = globaldef000785 + TRUE;
    }
    
    globaldef007106.view_ofs = '0 0 22';
    makevectors(globaldef007106.angles);
    spawn_tfog(globaldef007106.origin + (v_forward * 20));
    spawn_tdeath(globaldef007106.origin, globaldef007106);
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_putclientinserver(globaldef007106);
    }
    
};


// func002419
// function begins at statement 38349, parm_start=21203
// OP_STORE_V	28	4	0
// OP_CALL1	21038	0	0
// OP_DONE	0	0	0
void () func002419 = 
{
    func002418(self);
};


// AddDeathmatchBot
// function begins at statement 38352, parm_start=21204
// OP_STORE_V	21204	4	0
// OP_CALL1	20977	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	21207	4	0
// OP_CALL1	472	0	0
// OP_RETURN	30	0	0
// OP_CALL0	1046	0	0
// OP_STORE_F	1	21206	0
// OP_EQ_F	21206	276	21208
// OP_IFNOT	21208	10	0
// OP_STORE_V	21209	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	813	4	0
// OP_CALL1	474	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_RETURN	30	0	0
// OP_STORE_V	21206	4	0
// OP_CALL1	1048	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	21205	0
// OP_ADDRESS	21205	608	21210
// OP_STOREP_F	21206	21210	0
// OP_ADDRESS	21205	609	21211
// OP_STOREP_F	21204	21211	0
// OP_LOAD_F	21205	609	21212
// OP_STORE_V	21212	4	0
// OP_CALL1	20980	0	0
// OP_ADDRESS	21205	183	21213
// OP_ADD_F	21206	214	21214
// OP_STOREP_F	21214	21213	0
// OP_IFNOT	834	3	0
// OP_ADDRESS	834	621	21215
// OP_STOREP_ENT	21205	21215	0
// OP_ADDRESS	21205	620	21216
// OP_STOREP_ENT	834	21216	0
// OP_ADDRESS	21205	621	21217
// OP_STOREP_ENT	30	21217	0
// OP_STORE_ENT	21205	834	0
// OP_ADDRESS	21205	588	21218
// OP_STOREP_F	354	21218	0
// OP_LOAD_F	21205	588	21219
// OP_LT	21219	213	21220
// OP_IFNOT	21220	3	0
// OP_ADDRESS	21205	588	21221
// OP_STOREP_F	213	21221	0
// OP_LOAD_F	21205	588	21222
// OP_GT	21222	228	21223
// OP_IFNOT	21223	3	0
// OP_ADDRESS	21205	588	21224
// OP_STOREP_F	228	21224	0
// OP_ADDRESS	21205	148	21225
// OP_STOREP_FNC	21202	21225	0
// OP_ADDRESS	21205	150	21226
// OP_ADD_F	31	3036	21227
// OP_LOAD_F	21205	609	21228
// OP_MUL_F	21228	3036	21229
// OP_ADD_F	21227	21229	21230
// OP_STOREP_F	21230	21226	0
// OP_ADD_F	810	214	21231
// OP_STORE_F	21231	810	0
// OP_RETURN	21205	0	0
// OP_DONE	0	0	0
entity (float globaldef007113) AddDeathmatchBot = 
{
    local entity globaldef007114;
    local float globaldef007115;
    
    if(func002412(globaldef007113))
    {
        bprint("bot is already in the game\n");
        return world;
    }
    
    globaldef007115 = NextAvailableClientNumber();
    
    if(globaldef007115 == CONTENT_EMPTY)
    {
        bprint("Can't create bot, maxplayers = ");
        bprint(ftos(maxClients));
        bprint("\n");
        return world;
    }
    
    SetClientNumberUsed(globaldef007115);
    globaldef007114 = spawn();
    globaldef007114.clientnumber = globaldef007115;
    globaldef007114.botnumber = globaldef007113;
    func002413(globaldef007114.botnumber);
    globaldef007114.colormap = globaldef007115 + TRUE;
    
    if(firstBot)
    {
        firstBot.prev = globaldef007114;
    }
    
    globaldef007114.next = firstBot;
    globaldef007114.prev = world;
    firstBot = globaldef007114;
    globaldef007114.botskill = skill;
    
    if(globaldef007114.botskill < FALSE)
    {
        globaldef007114.botskill = FALSE;
    }
    
    
    if(globaldef007114.botskill > MOVETYPE_WALK)
    {
        globaldef007114.botskill = MOVETYPE_WALK;
    }
    
    globaldef007114.think = func002419;
    globaldef007114.nextthink = (time + 0.1) + (globaldef007114.botnumber * 0.1);
    botCount = botCount + TRUE;
    return globaldef007114;
};


// func002421
// function begins at statement 38417, parm_start=21232
// OP_IFNOT	816	5	0
// OP_ADDRESS	28	150	21232
// OP_ADD_F	31	214	21233
// OP_STOREP_F	21233	21232	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	6795	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	21038	0	0
// OP_DONE	0	0	0
void () func002421 = 
{
    
    if(gameNotRunning)
    {
        self.nextthink = time + TRUE;
        return;
    }
    
    CopyToBodyQue(self);
    func002418(self);
};


// AddBots
// function begins at statement 38427, parm_start=21234
// OP_IFNOT	37	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	21234	4	0
// OP_CALL1	21203	0	0
// OP_STORE_ENT	1	21235	0
// OP_NOT_ENT	21235	0	21236
// OP_IFNOT	21236	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	21235	184	21237
// OP_STOREP_F	9989	21237	0
// OP_ADDRESS	21235	180	21238
// OP_LOAD_F	21235	609	21239
// OP_STORE_V	21239	4	0
// OP_CALL1	1085	0	0
// OP_STOREP_S	1	21238	0
// OP_ADDRESS	21235	610	21240
// OP_LOAD_F	21235	609	21241
// OP_STORE_V	21241	4	0
// OP_CALL1	1087	0	0
// OP_STOREP_F	1	21240	0
// OP_NOT_F	822	0	21242
// OP_IFNOT	21242	9	0
// OP_ADDRESS	21235	132	21243
// OP_STOREP_F	213	21243	0
// OP_ADDRESS	21235	574	21244
// OP_LOAD_F	21235	609	21245
// OP_STOREP_F	21245	21244	0
// OP_ADDRESS	21235	572	21246
// OP_LOAD_F	21235	609	21247
// OP_STOREP_F	21247	21246	0
// OP_LOAD_F	21235	608	21248
// OP_STORE_V	21248	4	0
// OP_LOAD_S	21235	180	21249
// OP_STORE_V	21249	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	21235	608	21250
// OP_STORE_V	21250	4	0
// OP_LOAD_F	21235	153	21251
// OP_STORE_V	21251	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	21235	608	21252
// OP_STORE_V	21252	4	0
// OP_LOAD_F	21235	610	21253
// OP_STORE_V	21253	7	0
// OP_CALL2	1052	0	0
// OP_LOAD_S	21235	180	21254
// OP_STORE_V	21254	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9064	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (float globaldef007118) AddBots = 
{
    local entity globaldef007119;
    
    if(teamplay)
    {
        return;
    }
    
    globaldef007119 = AddDeathmatchBot(globaldef007118);
    
    if(!globaldef007119)
    {
        return;
    }
    
    globaldef007119.team = 99;
    globaldef007119.netname = BotName(globaldef007119.botnumber);
    globaldef007119.clientcolor = BotShirtPantsColor(globaldef007119.botnumber);
    
    if(!lowMemoryDisableExtraModels)
    {
        globaldef007119.skin = FALSE;
        globaldef007119.field000251 = globaldef007119.botnumber;
        globaldef007119.field000249 = globaldef007119.botnumber;
    }
    
    msgUpdateClientNameToAll(globaldef007119.clientnumber, globaldef007119.netname);
    msgUpdateClientFragsToAll(globaldef007119.clientnumber, globaldef007119.frags);
    msgUpdateClientColorsToAll(globaldef007119.clientnumber, globaldef007119.clientcolor);
    bprint(globaldef007119.netname);
    bprint(" entered the game\n");
};


// AddRandomDeathmatchBot
// function begins at statement 38478, parm_start=21255
// OP_CALL0	20992	0	0
// OP_STORE_F	1	21255	0
// OP_STORE_V	21255	4	0
// OP_CALL1	1104	0	0
// OP_DONE	0	0	0
void () AddRandomDeathmatchBot = 
{
    local float globaldef007120;
    globaldef007120 = func002416();
    AddBots(globaldef007120);
};


// RemoveAllBots
// function begins at statement 38483, parm_start=21256
// OP_STORE_ENT	834	21256	0
// OP_IFNOT	21256	6	0
// OP_STORE_V	21256	4	0
// OP_CALL1	1100	0	0
// OP_LOAD_ENT	21256	620	21257
// OP_STORE_ENT	21257	21256	0
// OP_GOTO	-5	0	0
// OP_DONE	0	0	0
void () RemoveAllBots = 
{
    local entity globaldef007121;
    globaldef007121 = firstBot;
    
    while(globaldef007121)
    {
        DestroyBot(globaldef007121);
        globaldef007121 = globaldef007121.next;
    }
    
};


// RemoveOneDeathmatchBot
// function begins at statement 38491, parm_start=21258
// OP_STORE_ENT	834	21258	0
// OP_IFNOT	21258	5	0
// OP_STORE_V	21258	4	0
// OP_CALL1	1078	0	0
// OP_STORE_V	21258	4	0
// OP_CALL1	1100	0	0
// OP_DONE	0	0	0
void () RemoveOneDeathmatchBot = 
{
    local entity globaldef007122;
    globaldef007122 = firstBot;
    
    if(globaldef007122)
    {
        CheckBotExitMessage(globaldef007122);
        DestroyBot(globaldef007122);
    }
    
};


// func002426
// function begins at statement 38498, parm_start=21259
// OP_EQ_F	21260	214	21261
// OP_IFNOT	21261	6	0
// OP_ADDRESS	21259	610	21262
// OP_MUL_F	783	218	21263
// OP_ADD_F	21263	783	21264
// OP_STOREP_F	21264	21262	0
// OP_GOTO	52	0	0
// OP_EQ_F	21260	216	21265
// OP_IFNOT	21265	6	0
// OP_ADDRESS	21259	610	21266
// OP_MUL_F	792	218	21267
// OP_ADD_F	21267	792	21268
// OP_STOREP_F	21268	21266	0
// OP_GOTO	45	0	0
// OP_EQ_F	21260	228	21269
// OP_IFNOT	21269	6	0
// OP_ADDRESS	21259	610	21270
// OP_MUL_F	791	218	21271
// OP_ADD_F	21271	791	21272
// OP_STOREP_F	21272	21270	0
// OP_GOTO	38	0	0
// OP_EQ_F	21260	229	21273
// OP_IFNOT	21273	6	0
// OP_ADDRESS	21259	610	21274
// OP_MUL_F	788	218	21275
// OP_ADD_F	21275	788	21276
// OP_STOREP_F	21276	21274	0
// OP_GOTO	31	0	0
// OP_EQ_F	21260	230	21277
// OP_IFNOT	21277	6	0
// OP_ADDRESS	21259	610	21278
// OP_MUL_F	782	218	21279
// OP_ADD_F	21279	782	21280
// OP_STOREP_F	21280	21278	0
// OP_GOTO	24	0	0
// OP_EQ_F	21260	231	21281
// OP_IFNOT	21281	6	0
// OP_ADDRESS	21259	610	21282
// OP_MUL_F	785	218	21283
// OP_ADD_F	21283	785	21284
// OP_STOREP_F	21284	21282	0
// OP_GOTO	17	0	0
// OP_EQ_F	21260	232	21285
// OP_IFNOT	21285	6	0
// OP_ADDRESS	21259	610	21286
// OP_MUL_F	786	218	21287
// OP_ADD_F	21287	786	21288
// OP_STOREP_F	21288	21286	0
// OP_GOTO	10	0	0
// OP_EQ_F	21260	217	21289
// OP_IFNOT	21289	6	0
// OP_ADDRESS	21259	610	21290
// OP_MUL_F	781	218	21291
// OP_ADD_F	21291	781	21292
// OP_STOREP_F	21292	21290	0
// OP_GOTO	3	0	0
// OP_ADDRESS	21259	610	21293
// OP_STOREP_F	213	21293	0
// OP_DONE	0	0	0
void (entity globaldef007123, float globaldef007124) func002426 = 
{
    if(globaldef007124 == TRUE)
    {
        globaldef007123.clientcolor = (BOTSHIRTPANTS_04 * FL_INWATER) + BOTSHIRTPANTS_04;
    }
    else
    {
        if(globaldef007124 == FL_SWIM)
        {
            globaldef007123.clientcolor = (BOTSHIRTPANTS_13 * FL_INWATER) + BOTSHIRTPANTS_13;
        }
        else
        {
            if(globaldef007124 == MOVETYPE_WALK)
            {
                globaldef007123.clientcolor = (BOTSHIRTPANTS_12 * FL_INWATER) + BOTSHIRTPANTS_12;
            }
            else
            {
                if(globaldef007124 == MOVETYPE_STEP)
                {
                    globaldef007123.clientcolor = (BOTSHIRTPANTS_09 * FL_INWATER) + BOTSHIRTPANTS_09;
                }
                else
                {
                    if(globaldef007124 == MOVETYPE_FLY)
                    {
                        globaldef007123.clientcolor = (BOTSHIRTPANTS_03 * FL_INWATER) + BOTSHIRTPANTS_03;
                    }
                    else
                    {
                        if(globaldef007124 == MOVETYPE_TOSS)
                        {
                            globaldef007123.clientcolor = (BOTSHIRTPANTS_06 * FL_INWATER) + BOTSHIRTPANTS_06;
                        }
                        else
                        {
                            if(globaldef007124 == MOVETYPE_PUSH)
                            {
                                globaldef007123.clientcolor = (BOTSHIRTPANTS_07 * FL_INWATER) + BOTSHIRTPANTS_07;
                            }
                            else
                            {
                                if(globaldef007124 == FL_CLIENT)
                                {
                                    globaldef007123.clientcolor = (BOTSHIRTPANTS_02 * FL_INWATER) + BOTSHIRTPANTS_02;
                                }
                                else
                                {
                                    globaldef007123.clientcolor = FALSE;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002427
// function begins at statement 38557, parm_start=21294
// OP_CALL0	20987	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	21203	0	0
// OP_STORE_ENT	1	21295	0
// OP_NOT_ENT	21295	0	21296
// OP_IFNOT	21296	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	21295	607	21297
// OP_STOREP_F	21294	21297	0
// OP_ADDRESS	21295	180	21298
// OP_LOAD_F	21295	609	21299
// OP_STORE_V	21299	4	0
// OP_CALL1	1085	0	0
// OP_STOREP_S	1	21298	0
// OP_STORE_V	21295	4	0
// OP_STORE_V	21294	7	0
// OP_CALL2	1109	0	0
// OP_NOT_F	822	0	21300
// OP_IFNOT	21300	7	0
// OP_ADDRESS	21295	132	21301
// OP_STOREP_F	213	21301	0
// OP_ADDRESS	21295	574	21302
// OP_STOREP_F	214	21302	0
// OP_ADDRESS	21295	572	21303
// OP_STOREP_F	214	21303	0
// OP_LOAD_F	21295	608	21304
// OP_STORE_V	21304	4	0
// OP_LOAD_S	21295	180	21305
// OP_STORE_V	21305	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	21295	608	21306
// OP_STORE_V	21306	4	0
// OP_LOAD_F	21295	153	21307
// OP_STORE_V	21307	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	21295	608	21308
// OP_STORE_V	21308	4	0
// OP_LOAD_F	21295	610	21309
// OP_STORE_V	21309	7	0
// OP_CALL2	1052	0	0
// OP_LOAD_S	21295	180	21310
// OP_STORE_V	21310	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9064	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (float globaldef007125) func002427 = 
{
    local entity globaldef007126;
    globaldef007126 = AddDeathmatchBot(func002415());
    
    if(!globaldef007126)
    {
        return;
    }
    
    globaldef007126.field000284 = globaldef007125;
    globaldef007126.netname = BotName(globaldef007126.botnumber);
    func002426(globaldef007126, globaldef007125);
    
    if(!lowMemoryDisableExtraModels)
    {
        globaldef007126.skin = FALSE;
        globaldef007126.field000251 = TRUE;
        globaldef007126.field000249 = TRUE;
    }
    
    msgUpdateClientNameToAll(globaldef007126.clientnumber, globaldef007126.netname);
    msgUpdateClientFragsToAll(globaldef007126.clientnumber, globaldef007126.frags);
    msgUpdateClientColorsToAll(globaldef007126.clientnumber, globaldef007126.clientcolor);
    bprint(globaldef007126.netname);
    bprint(" entered the game\n");
};


// func002428
// function begins at statement 38603, parm_start=21311
// OP_STORE_ENT	834	21312	0
// OP_IFNOT	21312	10	0
// OP_LOAD_F	21312	607	21313
// OP_EQ_F	21313	21311	21314
// OP_IFNOT	21314	4	0
// OP_STORE_V	21312	4	0
// OP_CALL1	1100	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	21312	620	21315
// OP_STORE_ENT	21315	21312	0
// OP_GOTO	-9	0	0
// OP_DONE	0	0	0
void (float globaldef007127) func002428 = 
{
    local entity globaldef007128;
    globaldef007128 = firstBot;
    
    while(globaldef007128)
    {
        
        if(globaldef007128.field000284 == globaldef007127)
        {
            DestroyBot(globaldef007128);
            return;
        }
        
        globaldef007128 = globaldef007128.next;
    }
    
};


// func002429
// function begins at statement 38615, parm_start=21316
// OP_STORE_V	6765	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	21316	0
// OP_STORE_F	213	21317	0
// OP_STORE_F	214	21318	0
// OP_BITAND	21316	21318	21319
// OP_IFNOT	21319	3	0
// OP_STORE_V	21317	4	0
// OP_CALL1	1104	0	0
// OP_MUL_F	21318	216	21320
// OP_STORE_F	21320	21318	0
// OP_ADD_F	21317	214	21321
// OP_STORE_F	21321	21317	0
// OP_LT	21317	736	21322
// OP_IF	21322	-9	0
// OP_DONE	0	0	0
void () func002429 = 
{
    local float globaldef007129;
    local float globaldef007130;
    local float globaldef007131;
    globaldef007129 = cvar("temp1");
    globaldef007130 = FALSE;
    globaldef007131 = TRUE;
    do
    {
        
        if(globaldef007129 & globaldef007131)
        {
            AddBots(globaldef007130);
        }
        
        globaldef007131 = globaldef007131 * FL_SWIM;
        globaldef007130 = globaldef007130 + TRUE;
    } while (globaldef007130 < OBOT_MAXBOTS);
};

