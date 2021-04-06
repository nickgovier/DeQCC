// monster_shambler
// function begins at statement 20282, parm_start=13208
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13208	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13135	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13201	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6691	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13123	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13162	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13206	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13176	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12949	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3663	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12958	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13058	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12991	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13209
// OP_STOREP_F	240	13209	0
// OP_ADDRESS	28	103	13210
// OP_STOREP_F	229	13210	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13208	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13211
// OP_STOREP_F	740	13211	0
// OP_ADDRESS	28	361	13212
// OP_STOREP_FNC	12919	13212	0
// OP_ADDRESS	28	362	13213
// OP_STOREP_FNC	12936	13213	0
// OP_ADDRESS	28	363	13214
// OP_STOREP_FNC	12950	13214	0
// OP_ADDRESS	28	367	13215
// OP_STOREP_FNC	13197	13215	0
// OP_ADDRESS	28	365	13216
// OP_STOREP_FNC	13079	13216	0
// OP_ADDRESS	28	364	13217
// OP_STOREP_FNC	13121	13217	0
// OP_ADDRESS	28	366	13218
// OP_STOREP_FNC	13173	13218	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_shambler = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/shambler.mdl");
    precache_model("progs/s_light.mdl");
    precache_model("progs/h_shams.mdl");
    precache_model("progs/bolt.mdl");
    precache_sound("shambler/sattck1.wav");
    precache_sound("shambler/sboom.wav");
    precache_sound("shambler/sdeath.wav");
    precache_sound("shambler/shurt2.wav");
    precache_sound("shambler/sidle.wav");
    precache_sound("shambler/ssight.wav");
    precache_sound("shambler/melee1.wav");
    precache_sound("shambler/melee2.wav");
    precache_sound("shambler/smack.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shambler.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = globaldef000723;
    self.th_stand = func000890;
    self.th_walk = func000907;
    self.th_run = func000919;
    self.th_die = func000986;
    self.th_melee = func000956;
    self.th_missile = func000958;
    self.th_pain = func000974;
    func000531();
};

