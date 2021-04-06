void () func000454;
void () func000407;
float globaldef002863;
float globaldef002864;
// info_intermission
// function begins at statement 11104, parm_start=8216
// OP_DONE	0	0	0
void () info_intermission = 
{
};

// SetChangeParms
// function begins at statement 11105, parm_start=8216
// OP_ADDRESS	28	162	8216
// OP_LOAD_F	28	162	8217
// OP_LOAD_F	28	162	8218
// OP_BITOR	270	271	8219
// OP_BITOR	8219	272	8220
// OP_BITOR	8220	273	8221
// OP_BITOR	8221	274	8222
// OP_BITOR	8222	275	8223
// OP_BITAND	8218	8223	8224
// OP_SUB_F	8217	8224	8225
// OP_STOREP_F	8225	8216	0
// OP_LOAD_F	28	152	8226
// OP_GT	8226	1997	8227
// OP_IFNOT	8227	3	0
// OP_ADDRESS	28	152	8228
// OP_STOREP_F	1997	8228	0
// OP_LOAD_F	28	152	8229
// OP_LT	8229	1470	8230
// OP_IFNOT	8230	3	0
// OP_ADDRESS	28	152	8231
// OP_STOREP_F	1470	8231	0
// OP_LOAD_F	28	162	8232
// OP_STORE_F	8232	43	0
// OP_LOAD_F	28	152	8233
// OP_STORE_F	8233	44	0
// OP_LOAD_F	28	188	8234
// OP_STORE_F	8234	45	0
// OP_LOAD_F	28	158	8235
// OP_LT	8235	305	8236
// OP_IFNOT	8236	3	0
// OP_STORE_F	305	46	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	158	8237
// OP_STORE_F	8237	46	0
// OP_LOAD_F	28	159	8238
// OP_STORE_F	8238	47	0
// OP_LOAD_F	28	160	8239
// OP_STORE_F	8239	48	0
// OP_LOAD_F	28	161	8240
// OP_STORE_F	8240	49	0
// OP_LOAD_F	28	154	8241
// OP_STORE_F	8241	50	0
// OP_LOAD_F	28	187	8242
// OP_MUL_F	8242	1997	8243
// OP_STORE_F	8243	51	0
// OP_LOAD_F	28	572	8244
// OP_STORE_F	8244	52	0
// OP_DONE	0	0	0
void () SetChangeParms = 
{
    self.items = self.items - (self.items & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD));
    
    if(self.health > 100)
    {
        self.health = 100;
    }
    
    
    if(self.health < 50)
    {
        self.health = 50;
    }
    
    parm1 = self.items;
    parm2 = self.health;
    parm3 = self.armorvalue;
    if(self.ammo_shells < SVC_SIGNONNUM)
    {
        parm4 = SVC_SIGNONNUM;
    }
    else
    {
        parm4 = self.ammo_shells;
    }
    
    parm5 = self.ammo_nails;
    parm6 = self.ammo_rockets;
    parm7 = self.ammo_cells;
    parm8 = self.weapon;
    parm9 = self.armortype * 100;
    parm10 = self.field000249;
};

// SetNewParms
// function begins at statement 11153, parm_start=8245
// OP_BITOR	254	253	8245
// OP_STORE_F	8245	43	0
// OP_STORE_F	1997	44	0
// OP_STORE_F	213	45	0
// OP_STORE_F	305	46	0
// OP_STORE_F	213	47	0
// OP_STORE_F	213	48	0
// OP_STORE_F	213	49	0
// OP_STORE_F	4838	50	0
// OP_STORE_F	213	51	0
// OP_LOAD_F	28	572	8246
// OP_STORE_F	8246	52	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    parm1 = IT_SHOTGUN | IT_AXE;
    parm2 = 100;
    parm3 = FALSE;
    parm4 = SVC_SIGNONNUM;
    parm5 = FALSE;
    parm6 = FALSE;
    parm7 = FALSE;
    parm8 = globaldef001900;
    parm9 = FALSE;
    parm10 = self.field000249;
};

// trigger_changelevel
// function begins at statement 11479, parm_start=8353
// OP_LOAD_S	28	356	8353
// OP_NOT_S	8353	0	8354
// OP_IFNOT	8354	3	0
// OP_STORE_V	8355	4	0
// OP_CALL1	461	0	0
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	8356
// OP_STOREP_FNC	8334	8356	0
// OP_DONE	0	0	0
void () trigger_changelevel = 
{
    
    if(!self.map)
    {
        objerror("changelevel trigger doesn't have map");
    }
    
    InitTrigger();
    self.touch = func000382;
};

// ClientKill
// function begins at statement 11506, parm_start=8361
// OP_BITAND	821	767	8361
// OP_IFNOT	8361	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8362
// OP_NE_S	8362	1236	8363
// OP_IFNOT	8363	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	180	8364
// OP_STORE_V	8364	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8365	4	0
// OP_CALL1	472	0	0
// OP_CALL0	8357	0	0
// OP_ADDRESS	28	93	8366
// OP_STOREP_F	526	8366	0
// OP_ADDRESS	28	153	8367
// OP_LOAD_F	28	153	8368
// OP_SUB_F	8368	216	8369
// OP_STOREP_F	8369	8367	0
// OP_CALL0	8358	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    
    if(globaldef000804 & globaldef000750)
    {
        return;
    }
    
    
    if(self.classname != "player")
    {
        return;
    }
    
    bprint(self.netname);
    bprint(" suicides\n");
    func000465();
    self.modelindex = globaldef000509;
    self.frags = self.frags - FL_SWIM;
    func000384();
};

// CheckSpawnPoint
// function begins at statement 11527, parm_start=8371
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector globaldef002895) CheckSpawnPoint = 
{
    return FALSE;
};

void () func000464;
// PutClientInServer
// function begins at statement 11641, parm_start=8417
// OP_ADDRESS	28	129	8419
// OP_STOREP_S	1236	8419	0
// OP_ADDRESS	28	152	8420
// OP_STOREP_F	1997	8420	0
// OP_ADDRESS	28	163	8421
// OP_STOREP_F	252	8421	0
// OP_ADDRESS	28	104	8422
// OP_STOREP_F	240	8422	0
// OP_ADDRESS	28	103	8423
// OP_STOREP_F	228	8423	0
// OP_ADDRESS	28	393	8424
// OP_STOREP_F	213	8424	0
// OP_ADDRESS	28	185	8425
// OP_STOREP_F	1997	8425	0
// OP_ADDRESS	28	182	8426
// OP_STOREP_F	217	8426	0
// OP_ADDRESS	28	396	8427
// OP_ADD_F	31	791	8428
// OP_STOREP_F	8428	8427	0
// OP_ADDRESS	28	425	8429
// OP_STOREP_F	216	8429	0
// OP_ADDRESS	28	382	8430
// OP_STOREP_F	213	8430	0
// OP_ADDRESS	28	383	8431
// OP_STOREP_F	213	8431	0
// OP_ADDRESS	28	381	8432
// OP_STOREP_F	213	8432	0
// OP_ADDRESS	28	380	8433
// OP_STOREP_F	213	8433	0
// OP_ADDRESS	28	133	8434
// OP_STOREP_F	213	8434	0
// OP_ADDRESS	28	384	8435
// OP_STOREP_F	213	8435	0
// OP_CALL0	8247	0	0
// OP_EQ_F	35	229	8436
// OP_IFNOT	8436	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	8390	0	0
// OP_CALL0	4295	0	0
// OP_ADDRESS	28	378	8437
// OP_STOREP_F	31	8437	0
// OP_ADDRESS	28	366	8438
// OP_STOREP_FNC	8211	8438	0
// OP_ADDRESS	28	367	8439
// OP_STOREP_FNC	8416	8439	0
// OP_ADDRESS	28	165	8440
// OP_STOREP_F	246	8440	0
// OP_ADDRESS	28	422	8441
// OP_STOREP_F	213	8441	0
// OP_NOT_F	527	0	8442
// OP_IFNOT	8442	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6686	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8443
// OP_STORE_F	8443	527	0
// OP_NOT_F	525	0	8444
// OP_IFNOT	8444	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6685	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8445
// OP_STORE_F	8445	525	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6684	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8446
// OP_STORE_F	8446	526	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	166	8447
// OP_STOREP_V	8450	8447	0
// OP_STORE_V	28	4	0
// OP_CALL1	7623	0	0
// OP_STORE_ENT	1	8417	0
// OP_BITAND	821	767	8453
// OP_IFNOT	8453	4	0
// OP_STORE_V	8379	4	0
// OP_CALL1	1220	0	0
// OP_STORE_ENT	1	8417	0
// OP_ADDRESS	28	105	8454
// OP_LOAD_V	8417	105	8457
// OP_ADD_V	8457	2827	8460
// OP_STOREP_V	8460	8454	0
// OP_ADDRESS	28	117	8463
// OP_LOAD_V	8417	117	8466
// OP_STOREP_V	8466	8463	0
// OP_ADDRESS	28	174	8469
// OP_STOREP_F	214	8469	0
// OP_ADDRESS	28	132	8470
// OP_LOAD_F	28	572	8471
// OP_STOREP_F	8471	8470	0
// OP_ADDRESS	28	113	8472
// OP_STOREP_V	8475	8472	0
// OP_ADDRESS	28	576	8478
// OP_STOREP_V	8475	8478	0
// OP_ADDRESS	28	580	8481
// OP_LOAD_V	28	105	8484
// OP_STOREP_V	8484	8481	0
// OP_ADDRESS	28	584	8487
// OP_STOREP_F	213	8487	0
// OP_ADDRESS	28	622	8488
// OP_STOREP_ENT	30	8488	0
// OP_ADDRESS	28	688	8489
// OP_STOREP_F	716	8489	0
// OP_LOAD_F	28	575	8490
// OP_BITAND	8490	703	8491
// OP_IFNOT	8491	7	0
// OP_SUB_F	802	214	8492
// OP_STORE_F	8492	802	0
// OP_ADDRESS	28	575	8493
// OP_LOAD_F	28	575	8494
// OP_SUB_F	8494	703	8495
// OP_STOREP_F	8495	8493	0
// OP_BITAND	821	769	8496
// OP_NOT_F	8496	0	8497
// OP_LT	803	804	8498
// OP_NE_F	805	727	8499
// OP_OR	8498	8499	8500
// OP_AND	8497	8500	8501
// OP_IFNOT	8501	7	0
// OP_ADDRESS	28	575	8502
// OP_LOAD_F	28	575	8503
// OP_BITOR	8503	703	8504
// OP_STOREP_F	8504	8502	0
// OP_ADD_F	802	214	8505
// OP_STORE_F	8505	802	0
// OP_ADDRESS	28	588	8506
// OP_STOREP_F	354	8506	0
// OP_ADDRESS	28	667	8507
// OP_STOREP_ENT	28	8507	0
// OP_CALL0	8212	0	0
// OP_OR	35	36	8508
// OP_IFNOT	8508	9	0
// OP_LOAD_V	28	117	8509
// OP_STORE_V	8509	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	8512
// OP_MUL_VF	59	2323	8515
// OP_ADD_V	8512	8515	8518
// OP_STORE_V	8518	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	28	105	8521
// OP_STORE_V	8521	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	7260	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	7138	0	0
// OP_BITAND	821	767	8524
// OP_IFNOT	8524	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1217	0	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity globaldef002910;
    local float globaldef002911;
    self.classname = "player";
    self.health = 100;
    self.takedamage = DAMAGE_AIM;
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_WALK;
    self.show_hostile = FALSE;
    self.max_health = 100;
    self.flags = FL_CLIENT;
    self.air_finished = time + globaldef000774;
    self.dmg = FL_SWIM;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.effects = FALSE;
    self.invincible_time = FALSE;
    func000376();
    
    if(deathmatch == MOVETYPE_STEP)
    {
        func000388(self);
    }
    
    func000283();
    self.attack_finished = time;
    self.th_pain = func000454;
    self.th_die = func000464;
    self.deadflag = DEAD_NO;
    self.pausetime = FALSE;
    
    if(!globaldef000510)
    {
        setmodel(self, "progs/h_player.mdl");
        globaldef000510 = self.modelindex;
    }
    
    
    if(!globaldef000508)
    {
        setmodel(self, "progs/eyes.mdl");
        globaldef000508 = self.modelindex;
    }
    
    setmodel(self, "progs/player.mdl");
    globaldef000509 = self.modelindex;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.view_ofs = '0 0 22';
    globaldef002910 = func000350(self);
    
    if(globaldef000804 & globaldef000750)
    {
        globaldef002910 = func000353("info_player_deathmatch");
    }
    
    self.origin = globaldef002910.origin + '0 0 2';
    self.angles = globaldef002910.angles;
    self.fixangle = TRUE;
    self.skin = self.field000249;
    self.velocity = '0 0 40';
    self.field000253 = '0 0 40';
    self.field000257 = self.origin;
    self.field000261 = FALSE;
    self.field000299 = world;
    self.waypointtype = globaldef000699;
    
    if(self.field000252 & globaldef000686)
    {
        globaldef000785 = globaldef000785 - TRUE;
        self.field000252 = self.field000252 - globaldef000686;
    }
    
    
    if((!(globaldef000804 & globaldef000752)) && ((globaldef000786 < globaldef000787) || (globaldef000788 != globaldef000710)))
    {
        self.field000252 = self.field000252 | globaldef000686;
        globaldef000785 = globaldef000785 + TRUE;
    }
    
    self.field000265 = skill;
    self.field000344 = self;
    func000407();
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        func000584(self.origin + (v_forward * 20));
    }
    
    func000586(self.origin, self);
    func000338(self);
    
    if(globaldef000804 & globaldef000750)
    {
        func000364(self);
    }
    
};

// info_player_start
// function begins at statement 11796, parm_start=8525
// OP_DONE	0	0	0
void () info_player_start = 
{
};

// info_player_start2
// function begins at statement 11797, parm_start=8526
// OP_DONE	0	0	0
void () info_player_start2 = 
{
};

// testplayerstart
// function begins at statement 11798, parm_start=8527
// OP_DONE	0	0	0
void () testplayerstart = 
{
};

// info_player_deathmatch
// function begins at statement 11799, parm_start=8528
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
};

// info_player_coop
// function begins at statement 11800, parm_start=8529
// OP_DONE	0	0	0
void () info_player_coop = 
{
};

// PlayerPreThink
// function begins at statement 12244, parm_start=8798
// OP_IFNOT	8213	3	0
// OP_CALL0	8294	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	8800
// OP_EQ_V	8800	286	8803
// OP_IFNOT	8803	2	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	8804
// OP_IFNOT	8804	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1216	0	0
// OP_LOAD_V	28	175	8805
// OP_STORE_V	8805	4	0
// OP_CALL1	452	0	0
// OP_CALL0	8559	0	0
// OP_CALL0	8657	0	0
// OP_LOAD_F	28	189	8808
// OP_EQ_F	8808	216	8809
// OP_IFNOT	8809	2	0
// OP_CALL0	8749	0	0
// OP_LOAD_F	28	165	8810
// OP_GE	8810	248	8811
// OP_IFNOT	8811	3	0
// OP_CALL0	8566	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	8812
// OP_EQ_F	8812	247	8813
// OP_IFNOT	8813	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	8814
// OP_IFNOT	8814	3	0
// OP_CALL0	8609	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	182	8815
// OP_LOAD_F	28	182	8816
// OP_BITOR	8816	226	8817
// OP_STOREP_F	8817	8815	0
// OP_LOAD_F	28	422	8818
// OP_LT	31	8818	8819
// OP_IFNOT	8819	3	0
// OP_ADDRESS	28	113	8820
// OP_STOREP_V	286	8820	0
// OP_LOAD_F	28	378	8823
// OP_GT	31	8823	8824
// OP_LOAD_F	28	157	8825
// OP_EQ_F	8825	213	8826
// OP_AND	8824	8826	8827
// OP_LOAD_F	28	154	8828
// OP_NE_F	8828	253	8829
// OP_AND	8827	8829	8830
// OP_IFNOT	8830	5	0
// OP_ADDRESS	28	154	8831
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	8831	0
// OP_CALL0	4295	0	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float globaldef002953;
    local float globaldef002954;
    
    if(globaldef002863)
    {
        func000380();
        return;
    }
    
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    
    if(globaldef000804 & globaldef000750)
    {
        func000365(self);
    }
    
    makevectors(self.v_angle);
    func000396();
    func000399();
    
    if(self.waterlevel == FL_SWIM)
    {
        func000400();
    }
    
    
    if(self.deadflag >= DEAD_DEAD)
    {
        func000397();
        return;
    }
    
    
    if(self.deadflag == DEAD_DYING)
    {
        return;
    }
    
    if(self.button2)
    {
        func000398();
    }
    else
    {
        self.flags = self.flags | FL_JUMPRELEASED;
    }
    
    
    if(time < self.pausetime)
    {
        self.velocity = VEC_ORIGIN;
    }
    
    
    if(((time > self.attack_finished) && (self.currentammo == FALSE)) && (self.weapon != IT_AXE))
    {
        self.weapon = func000284();
        func000283();
    }
    
};

// PlayerPostThink
// function begins at statement 12554, parm_start=8956
// OP_LOAD_S	28	129	8959
// OP_EQ_S	8959	2849	8960
// OP_NOT_F	8213	0	8961
// OP_AND	8960	8961	8962
// OP_IFNOT	8962	3	0
// OP_CALL0	2796	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	8963
// OP_EQ_V	8963	286	8966
// OP_IFNOT	8966	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8967
// OP_EQ_S	8967	1236	8968
// OP_IFNOT	8968	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1055	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1069	0	0
// OP_LOAD_S	28	129	8969
// OP_EQ_S	8969	1236	8970
// OP_LOAD_S	28	129	8971
// OP_EQ_S	8971	2025	8972
// OP_OR	8970	8972	8973
// OP_IFNOT	8973	2	0
// OP_CALL0	1211	0	0
// OP_LOAD_F	28	165	8974
// OP_IFNOT	8974	4	0
// OP_ADDRESS	28	173	8975
// OP_STOREP_F	213	8975	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8976
// OP_EQ_S	8976	2025	8977
// OP_IFNOT	8977	4	0
// OP_ADDRESS	28	173	8978
// OP_STOREP_F	213	8978	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1057	0	0
// OP_LOAD_F	28	575	8979
// OP_BITAND	8979	703	8980
// OP_IFNOT	8980	2	0
// OP_CALL0	1196	0	0
// OP_IFNOT	35	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	7410	0	0
// OP_CALL0	6496	0	0
// OP_LOAD_F	28	394	8981
// OP_LT	8981	8982	8983
// OP_LOAD_F	28	182	8984
// OP_BITAND	8984	223	8985
// OP_AND	8983	8985	8986
// OP_LOAD_F	28	152	8987
// OP_GT	8987	213	8988
// OP_AND	8986	8988	8989
// OP_IFNOT	8989	36	0
// OP_LOAD_F	28	190	8990
// OP_EQ_F	8990	278	8991
// OP_IFNOT	8991	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	394	8992
// OP_LT	8992	8993	8994
// OP_IFNOT	8994	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6647	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	398	8995
// OP_STOREP_S	8996	8995	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6646	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	394	8997
// OP_STOREP_F	213	8997	0
// OP_LOAD_F	28	182	8998
// OP_BITAND	8998	223	8999
// OP_NOT_F	8999	0	9000
// OP_IFNOT	9000	4	0
// OP_ADDRESS	28	394	9001
// OP_LOAD_F	28	116	9002
// OP_STOREP_F	9002	9001	0
// OP_CALL0	8832	0	0
// OP_CALL0	1084	0	0
// OP_ADDRESS	28	576	9003
// OP_LOAD_V	28	113	9006
// OP_STOREP_V	9006	9003	0
// OP_ADDRESS	28	580	9009
// OP_LOAD_V	28	105	9012
// OP_STOREP_V	9012	9009	0
// OP_ADDRESS	28	584	9015
// OP_LOAD_F	28	182	9016
// OP_STOREP_F	9016	9015	0
// OP_ADDRESS	28	585	9017
// OP_LOAD_F	28	575	9018
// OP_STOREP_F	9018	9017	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float globaldef002960;
    local float globaldef002961;
    local float globaldef002962;
    
    if((self.classname == "KasCam") && !globaldef002863)
    {
        func000144();
        return;
    }
    
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    
    if(self.classname == "player")
    {
        func002267(self, self);
    }
    
    func002356(self);
    
    if((self.classname == "player") || (self.classname == "observer"))
    {
        func002748();
    }
    
    
    if(self.deadflag)
    {
        self.impulse = FALSE;
        return;
    }
    
    
    if(self.classname == "observer")
    {
        self.impulse = FALSE;
        return;
    }
    
    func002273(self);
    
    if(self.field000252 & globaldef000686)
    {
        func002680();
    }
    
    
    if(deathmatch)
    {
        func000347(self);
    }
    
    func000294();
    
    if(((self.jump_flag < -300) && (self.flags & FL_ONGROUND)) && (self.health > FALSE))
    {
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/h2ojump.wav", TRUE, ATTN_NORM);
        }
        else
        {
            if(self.jump_flag < -650)
            {
                func000201(self, world, world, MOVETYPE_FLY);
                sound(self, CHAN_VOICE, "player/land2.wav", TRUE, ATTN_NORM);
                self.deathtype = "falling";
            }
            else
            {
                sound(self, CHAN_VOICE, "player/land.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.jump_flag = FALSE;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.jump_flag = self.velocity_z;
    }
    
    func000402();
    func002380();
    self.field000253 = self.velocity;
    self.field000257 = self.origin;
    self.field000261 = self.flags;
    self.field000262 = self.field000252;
};

// ClientConnect
// function begins at statement 12667, parm_start=9019
// OP_ADDRESS	28	609	9021
// OP_STOREP_F	276	9021	0
// OP_ADDRESS	28	608	9022
// OP_LOAD_F	28	183	9023
// OP_SUB_F	9023	214	9024
// OP_STOREP_F	9024	9022	0
// OP_ADDRESS	28	610	9025
// OP_MUL_F	213	218	9026
// OP_LOAD_F	28	184	9027
// OP_ADD_F	9026	9027	9028
// OP_STOREP_F	9028	9025	0
// OP_ADDRESS	28	572	9029
// OP_STOREP_F	213	9029	0
// OP_IFNOT	833	3	0
// OP_ADDRESS	833	621	9030
// OP_STOREP_ENT	28	9030	0
// OP_ADDRESS	28	620	9031
// OP_STOREP_ENT	833	9031	0
// OP_ADDRESS	28	621	9032
// OP_STOREP_ENT	30	9032	0
// OP_STORE_ENT	28	833	0
// OP_LOAD_F	28	608	9033
// OP_STORE_V	9033	4	0
// OP_CALL1	1047	0	0
// OP_IFNOT	1	46	0
// OP_STORE_ENT	834	9019	0
// OP_IFNOT	9019	35	0
// OP_LOAD_F	9019	608	9034
// OP_LOAD_F	28	608	9035
// OP_EQ_F	9034	9035	9036
// OP_IFNOT	9036	28	0
// OP_CALL0	1046	0	0
// OP_STORE_F	1	9020	0
// OP_EQ_F	9020	276	9037
// OP_IFNOT	9037	4	0
// OP_STORE_V	9019	4	0
// OP_CALL1	1100	0	0
// OP_GOTO	21	0	0
// OP_ADDRESS	9019	608	9038
// OP_STOREP_F	9020	9038	0
// OP_LOAD_F	9019	608	9039
// OP_STORE_V	9039	4	0
// OP_CALL1	1048	0	0
// OP_LOAD_F	9019	608	9040
// OP_STORE_V	9040	4	0
// OP_LOAD_S	9019	180	9041
// OP_STORE_V	9041	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	9019	608	9042
// OP_STORE_V	9042	4	0
// OP_LOAD_F	9019	153	9043
// OP_STORE_V	9043	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	9019	608	9044
// OP_STORE_V	9044	4	0
// OP_LOAD_F	9019	610	9045
// OP_STORE_V	9045	7	0
// OP_CALL2	1052	0	0
// OP_LOAD_ENT	9019	620	9046
// OP_STORE_ENT	9046	9019	0
// OP_GOTO	-34	0	0
// OP_LOAD_F	28	608	9047
// OP_STORE_V	9047	4	0
// OP_LOAD_S	28	180	9048
// OP_STORE_V	9048	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	28	608	9049
// OP_STORE_V	9049	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	28	608	9050
// OP_STORE_V	9050	4	0
// OP_CALL1	1048	0	0
// OP_ADDRESS	28	173	9051
// OP_STOREP_F	2035	9051	0
// OP_LOAD_F	28	608	9052
// OP_EQ_F	9052	213	9053
// OP_IFNOT	9053	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1209	0	0
// OP_NOT_F	816	0	9054
// OP_OR	37	9054	9055
// OP_IFNOT	9055	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1062	0	0
// OP_LOAD_S	28	180	9056
// OP_EQ_S	9056	9057	9058
// OP_LOAD_S	28	180	9059
// OP_EQ_S	9059	3002	9060
// OP_OR	9058	9060	9061
// OP_IFNOT	9061	4	0
// OP_ADDRESS	28	173	9062
// OP_STOREP_F	738	9062	0
// OP_GOTO	6	0	0
// OP_LOAD_S	28	180	9063
// OP_STORE_V	9063	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9064	4	0
// OP_CALL1	472	0	0
// OP_BITAND	821	767	9065
// OP_IFNOT	9065	3	0
// OP_ADDRESS	28	538	9066
// OP_STOREP_F	214	9066	0
// OP_IFNOT	8213	2	0
// OP_CALL0	8271	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    local entity globaldef002966;
    local float globaldef002967;
    self.field000286 = CONTENT_EMPTY;
    self.field000285 = self.colormap - TRUE;
    self.field000287 = (FALSE * FL_INWATER) + self.team;
    self.field000249 = FALSE;
    
    if(globaldef000816)
    {
        globaldef000816.field000298 = self;
    }
    
    self.field000297 = globaldef000816;
    self.field000298 = world;
    globaldef000816 = self;
    
    if(func002257(self.field000285))
    {
        globaldef002966 = globaldef000817;
        
        while(globaldef002966)
        {
            
            if(globaldef002966.field000285 == self.field000285)
            {
                globaldef002967 = func002261();
                if(globaldef002967 == CONTENT_EMPTY)
                {
                    func002417(globaldef002966);
                }
                else
                {
                    globaldef002966.field000285 = globaldef002967;
                    func002259(globaldef002966.field000285);
                    func002262(globaldef002966.field000285, globaldef002966.netname);
                    func002263(globaldef002966.field000285, globaldef002966.frags);
                    func002264(globaldef002966.field000285, globaldef002966.field000287);
                }
                
            }
            
            globaldef002966 = globaldef002966.field000297;
        }
        
        func002262(self.field000285, self.netname);
        func002263(self.field000285, FALSE);
    }
    
    func002259(self.field000285);
    self.impulse = 190;
    
    if(self.field000285 == FALSE)
    {
        func002738(self);
    }
    
    
    if(teamplay || !globaldef000799)
    {
        func002365(self);
    }
    
    if((self.netname == "CamClient") || (self.netname == ""))
    {
        self.impulse = globaldef000721;
    }
    else
    {
        bprint(self.netname);
        bprint(" entered the game\n");
    }
    
    
    if(globaldef000804 & globaldef000750)
    {
        self.motd = TRUE;
    }
    
    
    if(globaldef002863)
    {
        func000379();
    }
    
};

// ClientDisconnect
// function begins at statement 12773, parm_start=9067
// OP_STORE_V	28	4	0
// OP_CALL1	7075	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1067	0	0
// OP_LOAD_F	28	608	9068
// OP_STORE_V	9068	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	28	608	9069
// OP_STORE_V	9069	4	0
// OP_CALL1	1049	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1210	0	0
// OP_LOAD_ENT	28	620	9070
// OP_IFNOT	9070	5	0
// OP_LOAD_ENT	28	620	9071
// OP_ADDRESS	9071	621	9072
// OP_LOAD_ENT	28	621	9073
// OP_STOREP_ENT	9073	9072	0
// OP_LOAD_ENT	28	621	9074
// OP_IFNOT	9074	6	0
// OP_LOAD_ENT	28	621	9075
// OP_ADDRESS	9075	620	9076
// OP_LOAD_ENT	28	620	9077
// OP_STOREP_ENT	9077	9076	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	620	9078
// OP_STORE_ENT	9078	833	0
// OP_LOAD_F	28	575	9079
// OP_BITAND	9079	703	9080
// OP_IFNOT	9080	3	0
// OP_SUB_F	802	214	9081
// OP_STORE_F	9081	802	0
// OP_IFNOT	347	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	9083
// OP_EQ_F	9083	246	9084
// OP_IFNOT	9084	3	0
// OP_STORE_F	213	9082	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	9082	0
// OP_CALL0	2932	0	0
// OP_IFNOT	1	25	0
// OP_LOAD_S	28	606	9085
// OP_STORE_V	9085	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	28	180	9086
// OP_STORE_V	9086	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9087	4	0
// OP_CALL1	472	0	0
// OP_LOAD_F	28	153	9088
// OP_STORE_V	9088	4	0
// OP_CALL1	474	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9089	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6662	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	129	9090
// OP_STOREP_S	9091	9090	0
// OP_CALL0	8357	0	0
// OP_BITAND	821	767	9092
// OP_IFNOT	9092	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9082	7	0
// OP_CALL2	1215	0	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    local float globaldef002970;
    local float globaldef002971;
    func000334(self);
    func002364(self);
    func002262(self.field000285, "");
    func002260(self.field000285);
    func002739(self);
    
    if(self.field000297)
    {
        self.field000297.field000298 = self.field000298;
    }
    
    if(self.field000298)
    {
        self.field000298.field000297 = self.field000297;
    }
    else
    {
        globaldef000816 = self.field000297;
    }
    
    
    if(self.field000252 & globaldef000686)
    {
        globaldef000785 = globaldef000785 - TRUE;
    }
    
    
    if(gameover)
    {
        return;
    }
    
    if(self.deadflag == DEAD_NO)
    {
        globaldef002971 = FALSE;
    }
    else
    {
        globaldef002971 = TRUE;
    }
    
    
    if(func000147())
    {
        bprint(self.field000283);
        bprint(self.netname);
        bprint(" left the game with ");
        bprint(ftos(self.frags));
        bprint(" frags\n");
        sound(self, CHAN_BODY, "player/tornoff2.wav", TRUE, ATTN_NONE);
        self.classname = "nobody";
        func000465();
    }
    
    
    if(globaldef000804 & globaldef000750)
    {
        func000366(self, globaldef002971);
    }
    
};

