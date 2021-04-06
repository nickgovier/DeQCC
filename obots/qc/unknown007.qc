// func000206
// function begins at statement 4250, parm_start=4310
// OP_ADDRESS	28	399	4311
// OP_LOAD_S	28	130	4312
// OP_STOREP_S	4312	4311	0
// OP_ADDRESS	28	182	4313
// OP_STOREP_F	222	4313	0
// OP_ADDRESS	28	104	4314
// OP_STOREP_F	238	4314	0
// OP_ADDRESS	28	103	4315
// OP_STOREP_F	231	4315	0
// OP_ADDRESS	28	113	4316
// OP_STOREP_V	286	4316	0
// OP_ADDRESS	28	108	4319
// OP_LOAD_F	28	108	4320
// OP_ADD_F	4320	231	4321
// OP_STOREP_F	4321	4319	0
// OP_LOAD_F	28	108	4322
// OP_STORE_F	4322	4310	0
// OP_CALL0	481	0	0
// OP_NOT_F	1	0	4323
// OP_IFNOT	4323	13	0
// OP_STORE_V	4324	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	4325
// OP_STORE_V	4325	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000206 = 
{
    local float globaldef001794;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_TOSS;
    self.velocity = VEC_ORIGIN;
    self.origin_z = self.origin_z + MOVETYPE_TOSS;
    globaldef001794 = self.origin_z;
    
    if(!droptofloor())
    {
        dprint("Bonus item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
        return;
    }
    
};

// func000207
// function begins at statement 4283, parm_start=4329
// OP_ADDRESS	28	150	4329
// OP_ADD_F	31	3267	4330
// OP_STOREP_F	4330	4329	0
// OP_ADDRESS	28	148	4331
// OP_STOREP_FNC	4309	4331	0
// OP_DONE	0	0	0
void () func000207 = 
{
    self.nextthink = time + 0.2;
    self.think = func000206;
};

// func000208
// function begins at statement 4289, parm_start=4332
// OP_LOAD_F	4332	152	4335
// OP_LE	4335	213	4336
// OP_IFNOT	4336	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	4334	0	4337
// OP_LOAD_F	4332	152	4338
// OP_LOAD_F	29	185	4339
// OP_GE	4338	4339	4340
// OP_AND	4337	4340	4341
// OP_IFNOT	4341	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	4333	4	0
// OP_CALL1	485	0	0
// OP_STORE_F	1	4333	0
// OP_ADDRESS	4332	152	4342
// OP_LOAD_F	4332	152	4343
// OP_ADD_F	4343	4333	4344
// OP_STOREP_F	4344	4342	0
// OP_NOT_F	4334	0	4345
// OP_LOAD_F	4332	152	4346
// OP_LOAD_F	29	185	4347
// OP_GE	4346	4347	4348
// OP_AND	4345	4348	4349
// OP_IFNOT	4349	4	0
// OP_ADDRESS	4332	152	4350
// OP_LOAD_F	29	185	4351
// OP_STOREP_F	4351	4350	0
// OP_LOAD_F	4332	152	4352
// OP_GT	4352	738	4353
// OP_IFNOT	4353	3	0
// OP_ADDRESS	4332	152	4354
// OP_STOREP_F	738	4354	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef001797, float globaldef001798, float globaldef001799) func000208 = 
{
    
    if(globaldef001797.health <= FALSE)
    {
        return FALSE;
    }
    
    
    if(!globaldef001799 && (globaldef001797.health >= other.max_health))
    {
        return FALSE;
    }
    
    globaldef001798 = ceil(globaldef001798);
    globaldef001797.health = globaldef001797.health + globaldef001798;
    
    if(!globaldef001799 && (globaldef001797.health >= other.max_health))
    {
        globaldef001797.health = other.max_health;
    }
    
    
    if(globaldef001797.health > globaldef000721)
    {
        globaldef001797.health = globaldef000721;
    }
    
    return TRUE;
};

