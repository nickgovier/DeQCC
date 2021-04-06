// monster_fish
// function begins at statement 25747, parm_start=15516
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15516	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15482	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15458	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15432	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	104	15517
// OP_STOREP_F	240	15517	0
// OP_ADDRESS	28	103	15518
// OP_STOREP_F	229	15518	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15516	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	15519	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15522
// OP_STOREP_F	305	15522	0
// OP_ADDRESS	28	361	15523
// OP_STOREP_FNC	15393	15523	0
// OP_ADDRESS	28	362	15524
// OP_STOREP_FNC	15411	15524	0
// OP_ADDRESS	28	363	15525
// OP_STOREP_FNC	15429	15525	0
// OP_ADDRESS	28	367	15526
// OP_STOREP_FNC	15480	15526	0
// OP_ADDRESS	28	366	15527
// OP_STOREP_FNC	15512	15527	0
// OP_ADDRESS	28	365	15528
// OP_STOREP_FNC	15462	15528	0
// OP_CALL0	10214	0	0
// OP_DONE	0	0	0
void () monster_fish = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/fish.mdl");
    precache_sound2("fish/death.wav");
    precache_sound2("fish/bite.wav");
    precache_sound2("fish/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/fish.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 24');
    self.health = SVC_SIGNONNUM;
    self.th_stand = func001921;
    self.th_walk = func001939;
    self.th_run = func001957;
    self.th_die = func001985;
    self.th_pain = func002015;
    self.th_melee = func001967;
    func000535();
};

