
// monster_enforcer
// function begins at statement 26772, parm_start=15969
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15969	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15962	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	12106	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	12306	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12064	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12107	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12307	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12303	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12305	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3697	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3699	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3701	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3702	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	104	15970
// OP_STOREP_F	240	15970	0
// OP_ADDRESS	28	103	15971
// OP_STOREP_F	229	15971	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15969	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15972
// OP_STOREP_F	2805	15972	0
// OP_ADDRESS	28	361	15973
// OP_STOREP_FNC	15829	15973	0
// OP_ADDRESS	28	362	15974
// OP_STOREP_FNC	15836	15974	0
// OP_ADDRESS	28	363	15975
// OP_STOREP_FNC	15853	15975	0
// OP_ADDRESS	28	366	15976
// OP_STOREP_FNC	15912	15976	0
// OP_ADDRESS	28	367	15977
// OP_STOREP_FNC	15959	15977	0
// OP_ADDRESS	28	364	15978
// OP_STOREP_FNC	15862	15978	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_enforcer = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/enforcer.mdl");
    precache_model2("progs/h_mega.mdl");
    precache_model2("progs/laser.mdl");
    precache_sound2("enforcer/death1.wav");
    precache_sound2("enforcer/enfire.wav");
    precache_sound2("enforcer/enfstop.wav");
    precache_sound2("enforcer/idle1.wav");
    precache_sound2("enforcer/pain1.wav");
    precache_sound2("enforcer/pain2.wav");
    precache_sound2("enforcer/sight1.wav");
    precache_sound2("enforcer/sight2.wav");
    precache_sound2("enforcer/sight3.wav");
    precache_sound2("enforcer/sight4.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/enforcer.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = func002074;
    self.th_walk = func002081;
    self.th_run = func002097;
    self.th_pain = func002155;
    self.th_die = func002181;
    self.th_missile = func002105;
    func000531();
};

