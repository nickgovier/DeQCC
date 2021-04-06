// knight_bow1
// function begins at statement 20642, parm_start=13301
// OP_STATE	9938	13301	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () knight_bow1 = [67, func001056]
{
    func000191();
};

// knight_bow6
// function begins at statement 20657, parm_start=13305
// OP_STATE	1536	13305	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () knight_bow6 = [70, func001061]
{
    func000191();
};

// monster_knight
// function begins at statement 20757, parm_start=13343
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13343	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13335	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13340	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13294	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13255	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13254	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13230	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13344
// OP_STOREP_F	240	13344	0
// OP_ADDRESS	28	103	13345
// OP_STOREP_F	229	13345	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13343	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13349
// OP_STOREP_F	9173	13349	0
// OP_ADDRESS	28	361	13350
// OP_STOREP_FNC	13219	13350	0
// OP_ADDRESS	28	362	13351
// OP_STOREP_FNC	3504	13351	0
// OP_ADDRESS	28	363	13352
// OP_STOREP_FNC	13243	13352	0
// OP_ADDRESS	28	365	13353
// OP_STOREP_FNC	3180	13353	0
// OP_ADDRESS	28	366	13354
// OP_STOREP_FNC	13288	13354	0
// OP_ADDRESS	28	367	13355
// OP_STOREP_FNC	13332	13355	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/knight.mdl");
    precache_model("progs/h_knight.mdl");
    precache_sound("knight/kdeath.wav");
    precache_sound("knight/khurt.wav");
    precache_sound("knight/ksight.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    precache_sound("knight/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/knight.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = globaldef002995;
    self.th_stand = func000988;
    self.th_walk = func000997;
    self.th_run = func001011;
    self.th_melee = func001030;
    self.th_pain = func001054;
    self.th_die = func001086;
    func000531();
};

