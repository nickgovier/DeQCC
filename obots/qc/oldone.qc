// monster_oldone
// function begins at statement 27237, parm_start=16164
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	16164	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	16116	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	16165	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	16166	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	16126	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	104	16167
// OP_STOREP_F	240	16167	0
// OP_ADDRESS	28	103	16168
// OP_STOREP_F	229	16168	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16164	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16169	7	0
// OP_STORE_V	16172	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	16175
// OP_STOREP_F	16162	16175	0
// OP_ADDRESS	28	148	16176
// OP_STOREP_FNC	15984	16176	0
// OP_ADDRESS	28	150	16177
// OP_ADD_F	31	3036	16178
// OP_STOREP_F	16178	16177	0
// OP_ADDRESS	28	163	16179
// OP_STOREP_F	251	16179	0
// OP_ADDRESS	28	366	16180
// OP_STOREP_FNC	16160	16180	0
// OP_ADDRESS	28	367	16181
// OP_STOREP_FNC	15979	16181	0
// OP_STORE_ENT	28	15983	0
// OP_ADD_F	40	214	16182
// OP_STORE_F	16182	40	0
// OP_DONE	0	0	0
void () monster_oldone = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/oldone.mdl");
    precache_sound2("boss2/death.wav");
    precache_sound2("boss2/idle.wav");
    precache_sound2("boss2/sight.wav");
    precache_sound2("boss2/pop2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/oldone.mdl");
    setsize(self, '-160 -128 -24', '160 128 256');
    self.health = 40000;
    self.think = func002183;
    self.nextthink = time + 0.1;
    self.takedamage = DAMAGE_YES;
    self.th_pain = func002253;
    self.th_die = func002249;
    globaldef005566 = self;
    total_monsters = total_monsters + TRUE;
};

