// monster_zombie
// function begins at statement 23388, parm_start=14575
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14575	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14549	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5476	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	3675	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14257	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14281	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14548	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14391	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14404	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14413	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14264	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14263	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14186	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	14576
// OP_STOREP_F	240	14576	0
// OP_ADDRESS	28	103	14577
// OP_STOREP_F	229	14577	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14575	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	14578
// OP_STOREP_F	2019	14578	0
// OP_ADDRESS	28	361	14579
// OP_STOREP_FNC	14167	14579	0
// OP_ADDRESS	28	362	14580
// OP_STOREP_FNC	14216	14580	0
// OP_ADDRESS	28	363	14581
// OP_STOREP_FNC	14236	14581	0
// OP_ADDRESS	28	366	14582
// OP_STOREP_FNC	14554	14582	0
// OP_ADDRESS	28	367	14583
// OP_STOREP_FNC	14547	14583	0
// OP_ADDRESS	28	364	14584
// OP_STOREP_FNC	14385	14584	0
// OP_LOAD_F	28	195	14585
// OP_BITAND	14585	14165	14586
// OP_IFNOT	14586	5	0
// OP_ADDRESS	28	103	14587
// OP_STOREP_F	227	14587	0
// OP_CALL0	14182	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_zombie = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/zombie.mdl");
    precache_model("progs/h_zombie.mdl");
    precache_model("progs/zom_gib.mdl");
    precache_sound("zombie/z_idle.wav");
    precache_sound("zombie/z_idle1.wav");
    precache_sound("zombie/z_shot1.wav");
    precache_sound("zombie/z_gib.wav");
    precache_sound("zombie/z_pain.wav");
    precache_sound("zombie/z_pain1.wav");
    precache_sound("zombie/z_fall.wav");
    precache_sound("zombie/z_miss.wav");
    precache_sound("zombie/z_hit.wav");
    precache_sound("zombie/idle_w2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/zombie.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 60;
    self.th_stand = func001359;
    self.th_walk = func001380;
    self.th_run = func001399;
    self.th_pain = func001561;
    self.th_die = func001560;
    self.th_missile = func001458;
    if(self.spawnflags & globaldef004524)
    {
        self.movetype = MOVETYPE_NONE;
        func001374();
    }
    else
    {
        func000531();
    }
    
};

