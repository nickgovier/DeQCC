// hknight_magica1
// function begins at statement 24854, parm_start=15255
// OP_STATE	9955	15255	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magica1 = [79, func001815]
{
    func000165();
};

// hknight_magicb1
// function begins at statement 24902, parm_start=15269
// OP_STATE	9978	15269	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 = [93, func001829]
{
    func000165();
};

// monster_hell_knight
// function begins at statement 25330, parm_start=15380
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15380	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15147	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15247	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15154	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15252	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15217	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3683	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15381	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	15375	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15357	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15382	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	13255	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13254	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	15383
// OP_STOREP_F	240	15383	0
// OP_ADDRESS	28	103	15384
// OP_STOREP_F	229	15384	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15380	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15385
// OP_STOREP_F	738	15385	0
// OP_ADDRESS	28	361	15386
// OP_STOREP_FNC	15179	15386	0
// OP_ADDRESS	28	362	15387
// OP_STOREP_FNC	15188	15387	0
// OP_ADDRESS	28	363	15388
// OP_STOREP_FNC	15093	15388	0
// OP_ADDRESS	28	365	15389
// OP_STOREP_FNC	15373	15389	0
// OP_ADDRESS	28	364	15390
// OP_STOREP_FNC	15281	15390	0
// OP_ADDRESS	28	366	15391
// OP_STOREP_FNC	15358	15391	0
// OP_ADDRESS	28	367	15392
// OP_STOREP_FNC	15244	15392	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_hell_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/hknight.mdl");
    precache_model2("progs/k_spike.mdl");
    precache_model2("progs/h_hellkn.mdl");
    precache_sound2("hknight/attack1.wav");
    precache_sound2("hknight/death1.wav");
    precache_sound2("hknight/pain1.wav");
    precache_sound2("hknight/sight1.wav");
    precache_sound("hknight/hit.wav");
    precache_sound2("hknight/slash1.wav");
    precache_sound2("hknight/idle.wav");
    precache_sound2("hknight/grunt.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/hknight.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = globaldef000721;
    self.th_stand = func001750;
    self.th_walk = func001759;
    self.th_run = func001779;
    self.th_melee = func001919;
    self.th_missile = func001841;
    self.th_pain = func001918;
    self.th_die = func001813;
    func000531();
};

