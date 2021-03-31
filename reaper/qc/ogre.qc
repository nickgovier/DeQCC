// ogre_smash1
// function begins at statement 12975, parm_start=8396
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ogre_smash1 = 
{
    return;
};

// ogre_swing1
// function begins at statement 12977, parm_start=8396
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ogre_swing1 = 
{
    return;
};

// monster_ogre
// function begins at statement 12979, parm_start=8397
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_ogre = 
{
    remove(self);
    return;
};

// monster_ogre_marksman
// function begins at statement 12983, parm_start=8398
// OP_CALL0	8396	0	0
// OP_DONE	0	0	0
void () monster_ogre_marksman = 
{
    monster_ogre();
};

