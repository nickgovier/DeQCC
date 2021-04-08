
// monster_army
// function begins at statement 21266, parm_start=13526
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13526	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13518	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6687	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6688	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6689	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13523	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13368	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13454	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13459	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13466	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3706	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	6661	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13527
// OP_STOREP_F	240	13527	0
// OP_ADDRESS	28	103	13528
// OP_STOREP_F	229	13528	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13526	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13529
// OP_STOREP_F	309	13529	0
// OP_ADDRESS	28	361	13530
// OP_STOREP_FNC	13357	13530	0
// OP_ADDRESS	28	362	13531
// OP_STOREP_FNC	13365	13531	0
// OP_ADDRESS	28	363	13532
// OP_STOREP_FNC	13391	13532	0
// OP_ADDRESS	28	364	13533
// OP_STOREP_FNC	13400	13533	0
// OP_ADDRESS	28	366	13534
// OP_STOREP_FNC	13445	13534	0
// OP_ADDRESS	28	367	13535
// OP_STOREP_FNC	13514	13535	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_army = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/soldier.mdl");
    precache_model("progs/h_guard.mdl");
    precache_model("progs/gib1.mdl");
    precache_model("progs/gib2.mdl");
    precache_model("progs/gib3.mdl");
    precache_sound("soldier/death1.wav");
    precache_sound("soldier/idle.wav");
    precache_sound("soldier/pain1.wav");
    precache_sound("soldier/pain2.wav");
    precache_sound("soldier/sattck1.wav");
    precache_sound("soldier/sight1.wav");
    precache_sound("player/udeath.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/soldier.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = SVC_INTERMISSION;
    self.th_stand = func001088;
    self.th_walk = func001096;
    self.th_run = func001120;
    self.th_missile = func001128;
    self.th_pain = func001170;
    self.th_die = func001193;
    func000531();
};

