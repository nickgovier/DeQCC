// func000210
// function begins at statement 4388, parm_start=4390
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4392
// OP_NE_S	4392	1236	4393
// OP_IFNOT	4393	5	0
// OP_LOAD_S	29	129	4394
// OP_NE_S	4394	1241	4395
// OP_IFNOT	4395	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4396
// OP_BITAND	4396	703	4397
// OP_IFNOT	4397	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4398
// OP_EQ_S	4398	1241	4399
// OP_IFNOT	4399	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_F	28	4358	4400
// OP_EQ_F	4400	216	4401
// OP_IFNOT	4401	14	0
// OP_LOAD_F	29	152	4402
// OP_GE	4402	738	4403
// OP_IFNOT	4403	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	4357	4404
// OP_STORE_V	4404	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	523	0	0
// OP_NOT_F	1	0	4405
// OP_IFNOT	4405	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	4357	4406
// OP_STORE_V	4406	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	523	0	0
// OP_NOT_F	1	0	4407
// OP_IFNOT	4407	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4408
// OP_EQ_S	4408	1236	4409
// OP_IFNOT	4409	14	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4410	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	4357	4411
// OP_STORE_V	4411	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	4391	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4391	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4412	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4413
// OP_STORE_V	4413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	4414
// OP_EQ_S	4414	1236	4415
// OP_IFNOT	4415	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	130	4417
// OP_STOREP_S	348	4417	0
// OP_ADDRESS	28	104	4418
// OP_STOREP_F	237	4418	0
// OP_LOAD_F	28	4358	4419
// OP_EQ_F	4419	216	4420
// OP_IFNOT	4420	13	0
// OP_ADDRESS	29	162	4421
// OP_LOAD_F	29	162	4422
// OP_BITOR	4422	269	4423
// OP_STOREP_F	4423	4421	0
// OP_ADDRESS	28	150	4424
// OP_ADD_F	31	230	4425
// OP_STOREP_F	4425	4424	0
// OP_ADDRESS	28	148	4426
// OP_STOREP_FNC	4360	4426	0
// OP_ADDRESS	28	201	4427
// OP_STOREP_ENT	29	4427	0
// OP_GOTO	9	0	0
// OP_NE_F	35	216	4428
// OP_IFNOT	4428	7	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	4429
// OP_ADD_F	31	2323	4430
// OP_STOREP_F	4430	4429	0
// OP_ADDRESS	28	148	4431
// OP_STOREP_FNC	4296	4431	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000210 = 
{
    local float globaldef001814;
    local string globaldef001815;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    if(self.healtype == FL_SWIM)
    {
        
        if(other.health >= globaldef000721)
        {
            return;
        }
        
        
        if(!func000208(other, self.healamount, TRUE))
        {
            return;
        }
        
    }
    else
    {
        
        if(!func000208(other, self.healamount, FALSE))
        {
            return;
        }
        
    }
    
    
    if(other.classname == "player")
    {
        func000092(other, "You receive ");
        globaldef001815 = ftos(self.healamount);
        func000092(other, globaldef001815);
        func000092(other, " health\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        func000064(other, "bf\n");
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == FL_SWIM)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + MOVETYPE_FLY;
        self.think = func000211;
        self.owner = other;
    }
    else
    {
        
        if(deathmatch != FL_SWIM)
        {
            
            if(deathmatch)
            {
                self.nextthink = time + 20;
            }
            
            self.think = func000204;
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};

// func000211
// function begins at statement 4492, parm_start=4432
// OP_LOAD_ENT	28	201	4432
// OP_STORE_ENT	4432	29	0
// OP_LOAD_F	29	152	4433
// OP_LOAD_F	29	185	4434
// OP_GT	4433	4434	4435
// OP_IFNOT	4435	9	0
// OP_ADDRESS	29	152	4436
// OP_LOAD_F	29	152	4437
// OP_SUB_F	4437	214	4438
// OP_STOREP_F	4438	4436	0
// OP_ADDRESS	28	150	4439
// OP_ADD_F	31	214	4440
// OP_STOREP_F	4440	4439	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	4441
// OP_LOAD_F	29	162	4442
// OP_LOAD_F	29	162	4443
// OP_BITAND	4443	269	4444
// OP_SUB_F	4442	4444	4445
// OP_STOREP_F	4445	4441	0
// OP_EQ_F	35	214	4446
// OP_IFNOT	4446	6	0
// OP_ADDRESS	28	150	4447
// OP_ADD_F	31	2323	4448
// OP_STOREP_F	4448	4447	0
// OP_ADDRESS	28	148	4449
// OP_STOREP_FNC	4296	4449	0
// OP_EQ_F	35	228	4450
// OP_IFNOT	4450	6	0
// OP_ADDRESS	28	150	4451
// OP_ADD_F	31	2323	4452
// OP_STOREP_F	4452	4451	0
// OP_ADDRESS	28	148	4453
// OP_STOREP_FNC	4296	4453	0
// OP_DONE	0	0	0
void () func000211 = 
{
    other = self.owner;
    
    if(other.health > other.max_health)
    {
        other.health = other.health - TRUE;
        self.nextthink = time + TRUE;
        return;
    }
    
    other.items = other.items - (other.items & IT_SUPERHEALTH);
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + 20;
        self.think = func000204;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        self.nextthink = time + 20;
        self.think = func000204;
    }
    
};

// func000212
// function begins at statement 4527, parm_start=4455
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4458
// OP_LE	4458	213	4459
// OP_IFNOT	4459	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4460
// OP_NE_S	4460	1236	4461
// OP_IFNOT	4461	5	0
// OP_LOAD_S	29	129	4462
// OP_NE_S	4462	1241	4463
// OP_IFNOT	4463	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4464
// OP_BITAND	4464	703	4465
// OP_IFNOT	4465	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4466
// OP_EQ_S	4466	1241	4467
// OP_IFNOT	4467	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_S	28	129	4468
// OP_EQ_S	4468	4469	4470
// OP_IFNOT	4470	4	0
// OP_STORE_F	3409	4455	0
// OP_STORE_F	1997	4456	0
// OP_STORE_F	266	4457	0
// OP_LOAD_S	28	129	4471
// OP_EQ_S	4471	4472	4473
// OP_IFNOT	4473	4	0
// OP_STORE_F	4474	4455	0
// OP_STORE_F	2003	4456	0
// OP_STORE_F	267	4457	0
// OP_LOAD_S	28	129	4475
// OP_EQ_S	4475	4476	4477
// OP_IFNOT	4477	4	0
// OP_STORE_F	4478	4455	0
// OP_STORE_F	2044	4456	0
// OP_STORE_F	268	4457	0
// OP_LOAD_F	29	187	4479
// OP_LOAD_F	29	188	4480
// OP_MUL_F	4479	4480	4481
// OP_MUL_F	4455	4456	4482
// OP_GE	4481	4482	4483
// OP_IFNOT	4483	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	4484
// OP_STOREP_F	4455	4484	0
// OP_ADDRESS	29	188	4485
// OP_STOREP_F	4456	4485	0
// OP_ADDRESS	29	162	4486
// OP_LOAD_F	29	162	4487
// OP_LOAD_F	29	162	4488
// OP_BITOR	266	267	4489
// OP_BITOR	4489	268	4490
// OP_BITAND	4488	4490	4491
// OP_SUB_F	4487	4491	4492
// OP_ADD_F	4492	4457	4493
// OP_STOREP_F	4493	4486	0
// OP_ADDRESS	28	104	4494
// OP_STOREP_F	237	4494	0
// OP_ADDRESS	28	130	4495
// OP_STOREP_S	348	4495	0
// OP_EQ_F	35	214	4496
// OP_IFNOT	4496	4	0
// OP_ADDRESS	28	150	4497
// OP_ADD_F	31	2323	4498
// OP_STOREP_F	4498	4497	0
// OP_EQ_F	35	228	4499
// OP_IFNOT	4499	4	0
// OP_ADDRESS	28	150	4500
// OP_ADD_F	31	2323	4501
// OP_STOREP_F	4501	4500	0
// OP_ADDRESS	28	148	4502
// OP_STOREP_FNC	4296	4502	0
// OP_LOAD_S	29	129	4503
// OP_EQ_S	4503	1236	4504
// OP_IFNOT	4504	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4505	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4506	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	28	105	4507
// OP_STORE_V	4507	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	760	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	4510
// OP_EQ_S	4510	1236	4511
// OP_IFNOT	4511	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000212 = 
{
    local float globaldef001820;
    local float globaldef001821;
    local float globaldef001822;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(self.classname == "item_armor1")
    {
        globaldef001820 = 0.3;
        globaldef001821 = 100;
        globaldef001822 = IT_ARMOR1;
    }
    
    
    if(self.classname == "item_armor2")
    {
        globaldef001820 = 0.6;
        globaldef001821 = 150;
        globaldef001822 = IT_ARMOR2;
    }
    
    
    if(self.classname == "item_armorInv")
    {
        globaldef001820 = 0.8;
        globaldef001821 = 200;
        globaldef001822 = IT_ARMOR3;
    }
    
    
    if((other.armortype * other.armorvalue) >= (globaldef001820 * globaldef001821))
    {
        return;
    }
    
    other.armortype = globaldef001820;
    other.armorvalue = globaldef001821;
    other.items = (other.items - (other.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + globaldef001822;
    self.solid = SOLID_NOT;
    self.model = string_null;
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + 20;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        self.nextthink = time + 20;
    }
    
    self.think = func000204;
    
    if(other.classname == "player")
    {
        func000092(other, "You got armor\n");
    }
    
    sound(other, CHAN_ITEM, "items/armor1.wav", TRUE, ATTN_NORM);
    func002453(other, self.origin, TRUE, globaldef000743);
    
    if(other.classname == "player")
    {
        func000064(other, "bf\n");
    }
    
    activator = other;
    SUB_UseTargets();
};

