// monster_boss
// function begins at statement 23921, parm_start=14839
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14823	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6694	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14603	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14605	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	6659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14815	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14839	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14712	4	0
// OP_CALL1	469	0	0
// OP_ADD_F	40	214	14840
// OP_STORE_F	14840	40	0
// OP_ADDRESS	28	147	14841
// OP_STOREP_FNC	14819	14841	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/boss.mdl");
    precache_model("progs/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + TRUE;
    self.use = func001676;
};

// event_lightning
// function begins at statement 24102, parm_start=14937
// OP_ADDRESS	28	147	14937
// OP_STOREP_FNC	14893	14937	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = func001679;
};

