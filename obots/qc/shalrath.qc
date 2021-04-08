
// monster_shalrath
// function begins at statement 26165, parm_start=15717
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15717	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15591	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15639	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15561	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15635	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15596	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15535	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15585	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3710	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	104	15718
// OP_STOREP_F	240	15718	0
// OP_ADDRESS	28	103	15719
// OP_STOREP_F	229	15719	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15717	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15720
// OP_STOREP_F	5347	15720	0
// OP_ADDRESS	28	361	15721
// OP_STOREP_FNC	15531	15721	0
// OP_ADDRESS	28	362	15722
// OP_STOREP_FNC	15532	15722	0
// OP_ADDRESS	28	363	15723
// OP_STOREP_FNC	15546	15723	0
// OP_ADDRESS	28	367	15724
// OP_STOREP_FNC	15588	15724	0
// OP_ADDRESS	28	366	15725
// OP_STOREP_FNC	15529	15725	0
// OP_ADDRESS	28	364	15726
// OP_STOREP_FNC	15559	15726	0
// OP_ADDRESS	28	148	15727
// OP_STOREP_FNC	10107	15727	0
// OP_ADDRESS	28	150	15728
// OP_ADD_F	31	3036	15729
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	15730
// OP_ADD_F	15729	15730	15731
// OP_STOREP_F	15731	15728	0
// OP_DONE	0	0	0
void () monster_shalrath = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/shalrath.mdl");
    precache_model2("progs/h_shal.mdl");
    precache_model2("progs/v_spike.mdl");
    precache_sound2("shalrath/attack.wav");
    precache_sound2("shalrath/attack2.wav");
    precache_sound2("shalrath/death.wav");
    precache_sound2("shalrath/idle.wav");
    precache_sound2("shalrath/pain.wav");
    precache_sound2("shalrath/sight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shalrath.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 400;
    self.th_stand = func002017;
    self.th_walk = func002018;
    self.th_run = func002030;
    self.th_die = func002066;
    self.th_pain = func002065;
    self.th_missile = func002042;
    self.think = func000531;
    self.nextthink = (time + 0.1) + (random() * 0.1);
};

