
// DogCheckAttack
// function begins at statement 22431, parm_start=14145
// OP_CALL0	14099	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	372	14148
// OP_STOREP_F	375	14148	0
// OP_RETURN	214	0	0
// OP_CALL0	14102	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	372	14149
// OP_STOREP_F	376	14149	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DogCheckAttack = 
{
    local vector globaldef004517;
    
    if(func001355())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(func001356())
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    return FALSE;
};


// monster_dog
// function begins at statement 22443, parm_start=14151
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14094	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14151	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14009	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14096	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14068	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3679	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13985	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	14152
// OP_STOREP_F	240	14152	0
// OP_ADDRESS	28	103	14153
// OP_STOREP_F	229	14153	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14151	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	14154	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	14157
// OP_STOREP_F	305	14157	0
// OP_ADDRESS	28	361	14158
// OP_STOREP_FNC	13973	14158	0
// OP_ADDRESS	28	362	14159
// OP_STOREP_FNC	13982	14159	0
// OP_ADDRESS	28	363	14160
// OP_STOREP_FNC	13926	14160	0
// OP_ADDRESS	28	366	14161
// OP_STOREP_FNC	14067	14161	0
// OP_ADDRESS	28	367	14162
// OP_STOREP_FNC	14088	14162	0
// OP_ADDRESS	28	365	14163
// OP_STOREP_FNC	14004	14163	0
// OP_ADDRESS	28	364	14164
// OP_STOREP_FNC	13925	14164	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_dog = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/h_dog.mdl");
    precache_model("progs/dog.mdl");
    precache_sound("dog/dattack1.wav");
    precache_sound("dog/ddeath.wav");
    precache_sound("dog/dpain1.wav");
    precache_sound("dog/dsight.wav");
    precache_sound("dog/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/dog.mdl");
    setsize(self, VEC_HULL2_MIN, '32 32 40');
    self.health = SVC_SIGNONNUM;
    self.th_stand = func001267;
    self.th_walk = func001276;
    self.th_run = func001284;
    self.th_pain = func001335;
    self.th_die = func001354;
    self.th_melee = func001296;
    self.th_missile = func001304;
    func000531();
};

