// monster_demon1
// function begins at statement 19413, parm_start=12796
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12789	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12777	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12797	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12798	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12772	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12690	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3667	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	12799
// OP_STOREP_F	240	12799	0
// OP_ADDRESS	28	103	12800
// OP_STOREP_F	229	12800	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12796	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	12801
// OP_STOREP_F	540	12801	0
// OP_ADDRESS	28	361	12802
// OP_STOREP_FNC	12674	12802	0
// OP_ADDRESS	28	362	12803
// OP_STOREP_FNC	12687	12803	0
// OP_ADDRESS	28	363	12804
// OP_STOREP_FNC	12697	12804	0
// OP_ADDRESS	28	367	12805
// OP_STOREP_FNC	12786	12805	0
// OP_ADDRESS	28	365	12806
// OP_STOREP_FNC	12794	12806	0
// OP_ADDRESS	28	364	12807
// OP_STOREP_FNC	12704	12807	0
// OP_ADDRESS	28	366	12808
// OP_STOREP_FNC	12763	12808	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_demon1 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/demon.mdl");
    precache_model("progs/h_demon.mdl");
    precache_sound("demon/ddeath.wav");
    precache_sound("demon/dhit2.wav");
    precache_sound("demon/djump.wav");
    precache_sound("demon/dpain1.wav");
    precache_sound("demon/idle1.wav");
    precache_sound("demon/sight2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/demon.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = globaldef000523;
    self.th_stand = func000812;
    self.th_walk = func000825;
    self.th_run = func000833;
    self.th_die = func000882;
    self.th_melee = func000883;
    self.th_missile = func000839;
    self.th_pain = func000872;
    func000531();
};

