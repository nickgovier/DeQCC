// monster_tarbaby
// function begins at statement 24455, parm_start=15082
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15082	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15062	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15004	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15005	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3687	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	104	15083
// OP_STOREP_F	240	15083	0
// OP_ADDRESS	28	103	15084
// OP_STOREP_F	229	15084	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15082	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15085
// OP_STOREP_F	2805	15085	0
// OP_ADDRESS	28	361	15086
// OP_STOREP_FNC	14938	15086	0
// OP_ADDRESS	28	362	15087
// OP_STOREP_FNC	14940	15087	0
// OP_ADDRESS	28	363	15088
// OP_STOREP_FNC	14965	15088	0
// OP_ADDRESS	28	364	15089
// OP_STOREP_FNC	14990	15089	0
// OP_ADDRESS	28	365	15090
// OP_STOREP_FNC	14990	15090	0
// OP_ADDRESS	28	367	15091
// OP_STOREP_FNC	15059	15091	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_tarbaby = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/tarbaby.mdl");
    precache_sound2("blob/death1.wav");
    precache_sound2("blob/hit1.wav");
    precache_sound2("blob/land1.wav");
    precache_sound2("blob/sight1.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/tarbaby.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = func001681;
    self.th_walk = func001683;
    self.th_run = func001708;
    self.th_missile = func001738;
    self.th_melee = func001738;
    self.th_die = func001744;
    func000531();
};

