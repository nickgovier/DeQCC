// func000216
// function begins at statement 4698, parm_start=4539
// OP_LOAD_F	29	158	4539
// OP_GT	4539	1997	4540
// OP_IFNOT	4540	3	0
// OP_ADDRESS	29	158	4541
// OP_STOREP_F	1997	4541	0
// OP_LOAD_F	29	159	4542
// OP_GT	4542	2044	4543
// OP_IFNOT	4543	3	0
// OP_ADDRESS	29	159	4544
// OP_STOREP_F	2044	4544	0
// OP_LOAD_F	29	160	4545
// OP_GT	4545	1997	4546
// OP_IFNOT	4546	3	0
// OP_ADDRESS	29	160	4547
// OP_STOREP_F	1997	4547	0
// OP_LOAD_F	29	161	4548
// OP_GT	4548	1997	4549
// OP_IFNOT	4549	3	0
// OP_ADDRESS	29	161	4550
// OP_STOREP_F	1997	4550	0
// OP_DONE	0	0	0
void () func000216 = 
{
    
    if(other.ammo_shells > 100)
    {
        other.ammo_shells = 100;
    }
    
    
    if(other.ammo_nails > 200)
    {
        other.ammo_nails = 200;
    }
    
    
    if(other.ammo_rockets > 100)
    {
        other.ammo_rockets = 100;
    }
    
    
    if(other.ammo_cells > 100)
    {
        other.ammo_cells = 100;
    }
    
};

// func000217
// function begins at statement 4719, parm_start=4552
// OP_EQ_F	4552	260	4553
// OP_IFNOT	4553	2	0
// OP_RETURN	214	0	0
// OP_EQ_F	4552	259	4554
// OP_IFNOT	4554	2	0
// OP_RETURN	216	0	0
// OP_EQ_F	4552	257	4555
// OP_IFNOT	4555	2	0
// OP_RETURN	228	0	0
// OP_EQ_F	4552	258	4556
// OP_IFNOT	4556	2	0
// OP_RETURN	229	0	0
// OP_EQ_F	4552	255	4557
// OP_IFNOT	4557	2	0
// OP_RETURN	230	0	0
// OP_EQ_F	4552	256	4558
// OP_IFNOT	4558	2	0
// OP_RETURN	231	0	0
// OP_RETURN	232	0	0
// OP_DONE	0	0	0
float (float globaldef001838) func000217 = 
{
    
    if(globaldef001838 == IT_LIGHTNING)
    {
        return TRUE;
    }
    
    
    if(globaldef001838 == IT_ROCKET_LAUNCHER)
    {
        return FL_SWIM;
    }
    
    
    if(globaldef001838 == IT_SUPER_NAILGUN)
    {
        return MOVETYPE_WALK;
    }
    
    
    if(globaldef001838 == IT_GRENADE_LAUNCHER)
    {
        return MOVETYPE_STEP;
    }
    
    
    if(globaldef001838 == IT_SUPER_SHOTGUN)
    {
        return MOVETYPE_FLY;
    }
    
    
    if(globaldef001838 == IT_NAILGUN)
    {
        return MOVETYPE_TOSS;
    }
    
    return MOVETYPE_PUSH;
};

// func000218
// function begins at statement 4739, parm_start=4560
// OP_LOAD_F	28	154	4564
// OP_STORE_V	4564	4	0
// OP_CALL1	4551	0	0
// OP_STORE_F	1	4562	0
// OP_STORE_V	4561	4	0
// OP_CALL1	4551	0	0
// OP_STORE_F	1	4563	0
// OP_LT	4563	4562	4565
// OP_IFNOT	4565	3	0
// OP_ADDRESS	28	154	4566
// OP_STOREP_F	4561	4566	0
// OP_DONE	0	0	0
void (float globaldef001840, float globaldef001841) func000218 = 
{
    local float globaldef001842;
    local float globaldef001843;
    globaldef001842 = func000217(self.weapon);
    globaldef001843 = func000217(globaldef001841);
    
    if(globaldef001843 < globaldef001842)
    {
        self.weapon = globaldef001841;
    }
    
};

float () func000284;
// func000219
// function begins at statement 4751, parm_start=4569
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4575
// OP_NE_S	4575	1236	4576
// OP_IFNOT	4576	5	0
// OP_LOAD_S	29	129	4577
// OP_NE_S	4577	1241	4578
// OP_IFNOT	4578	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4579
// OP_BITAND	4579	703	4580
// OP_IFNOT	4580	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4581
// OP_EQ_S	4581	1241	4582
// OP_IFNOT	4582	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_STORE_ENT	28	4573	0
// OP_STORE_ENT	29	28	0
// OP_LOAD_S	28	129	4583
// OP_EQ_S	4583	1236	4584
// OP_IFNOT	4584	3	0
// OP_CALL0	4567	0	0
// OP_STORE_F	1	4570	0
// OP_STORE_ENT	4573	28	0
// OP_EQ_F	35	216	4585
// OP_OR	4585	36	4586
// OP_IFNOT	4586	3	0
// OP_STORE_F	214	4574	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	4574	0
// OP_EQ_F	35	228	4587
// OP_IFNOT	4587	2	0
// OP_STORE_F	214	4574	0
// OP_LOAD_S	28	129	4588
// OP_EQ_S	4588	4589	4590
// OP_IFNOT	4590	14	0
// OP_LOAD_F	29	162	4591
// OP_BITAND	4591	256	4592
// OP_AND	4574	4592	4593
// OP_IFNOT	4593	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	159	4594
// OP_STORE_F	4594	4569	0
// OP_STORE_F	256	4571	0
// OP_ADDRESS	29	159	4595
// OP_LOAD_F	29	159	4596
// OP_ADD_F	4596	309	4597
// OP_STOREP_F	4597	4595	0
// OP_GOTO	83	0	0
// OP_LOAD_S	28	129	4598
// OP_EQ_S	4598	4599	4600
// OP_IFNOT	4600	14	0
// OP_LOAD_F	29	162	4601
// OP_BITAND	4601	257	4602
// OP_AND	4574	4602	4603
// OP_IFNOT	4603	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4604
// OP_STORE_F	4604	4569	0
// OP_STORE_F	257	4571	0
// OP_ADDRESS	29	159	4605
// OP_LOAD_F	29	159	4606
// OP_ADD_F	4606	309	4607
// OP_STOREP_F	4607	4605	0
// OP_GOTO	67	0	0
// OP_LOAD_S	28	129	4608
// OP_EQ_S	4608	4609	4610
// OP_IFNOT	4610	14	0
// OP_LOAD_F	29	162	4611
// OP_BITAND	4611	255	4612
// OP_AND	4574	4612	4613
// OP_IFNOT	4613	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4614
// OP_STORE_F	4614	4569	0
// OP_STORE_F	255	4571	0
// OP_ADDRESS	29	158	4615
// OP_LOAD_F	29	158	4616
// OP_ADD_F	4616	230	4617
// OP_STOREP_F	4617	4615	0
// OP_GOTO	51	0	0
// OP_LOAD_S	28	129	4618
// OP_EQ_S	4618	4619	4620
// OP_IFNOT	4620	14	0
// OP_LOAD_F	29	162	4621
// OP_BITAND	4621	259	4622
// OP_AND	4574	4622	4623
// OP_IFNOT	4623	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4624
// OP_STORE_F	4624	4569	0
// OP_STORE_F	259	4571	0
// OP_ADDRESS	29	160	4625
// OP_LOAD_F	29	160	4626
// OP_ADD_F	4626	230	4627
// OP_STOREP_F	4627	4625	0
// OP_GOTO	35	0	0
// OP_LOAD_S	28	129	4628
// OP_EQ_S	4628	4629	4630
// OP_IFNOT	4630	14	0
// OP_LOAD_F	29	162	4631
// OP_BITAND	4631	258	4632
// OP_AND	4574	4632	4633
// OP_IFNOT	4633	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4634
// OP_STORE_F	4634	4569	0
// OP_STORE_F	258	4571	0
// OP_ADDRESS	29	160	4635
// OP_LOAD_F	29	160	4636
// OP_ADD_F	4636	230	4637
// OP_STOREP_F	4637	4635	0
// OP_GOTO	19	0	0
// OP_LOAD_S	28	129	4638
// OP_EQ_S	4638	4639	4640
// OP_IFNOT	4640	14	0
// OP_LOAD_F	29	162	4641
// OP_BITAND	4641	260	4642
// OP_AND	4574	4642	4643
// OP_IFNOT	4643	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4644
// OP_STORE_F	4644	4569	0
// OP_STORE_F	260	4571	0
// OP_ADDRESS	29	161	4645
// OP_LOAD_F	29	161	4646
// OP_ADD_F	4646	765	4647
// OP_STOREP_F	4647	4645	0
// OP_GOTO	3	0	0
// OP_STORE_V	4648	4	0
// OP_CALL1	461	0	0
// OP_LOAD_S	29	129	4649
// OP_EQ_S	4649	1236	4650
// OP_IFNOT	4650	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4652
// OP_STORE_V	4652	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	28	105	4654
// OP_STORE_V	4654	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	759	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	4657
// OP_EQ_S	4657	1236	4658
// OP_IFNOT	4658	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_CALL0	4538	0	0
// OP_LOAD_F	29	162	4659
// OP_STORE_F	4659	4572	0
// OP_ADDRESS	29	162	4660
// OP_LOAD_F	29	162	4661
// OP_BITOR	4661	4571	4662
// OP_STOREP_F	4662	4660	0
// OP_STORE_ENT	28	4573	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	4663
// OP_IFNOT	4663	4	0
// OP_ADDRESS	28	154	4664
// OP_STOREP_F	4571	4664	0
// OP_GOTO	4	0	0
// OP_STORE_V	4572	4	0
// OP_STORE_V	4571	7	0
// OP_CALL2	4559	0	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	4573	28	0
// OP_IFNOT	4574	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	4665
// OP_STOREP_S	348	4665	0
// OP_ADDRESS	28	104	4666
// OP_STOREP_F	237	4666	0
// OP_EQ_F	35	214	4667
// OP_IFNOT	4667	4	0
// OP_ADDRESS	28	150	4668
// OP_ADD_F	31	309	4669
// OP_STOREP_F	4669	4668	0
// OP_ADDRESS	28	148	4670
// OP_STOREP_FNC	4296	4670	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000219 = 
{
    local float globaldef001846;
    local float globaldef001847;
    local float globaldef001848;
    local float globaldef001849;
    local entity globaldef001850;
    local float globaldef001851;
    
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
    
    globaldef001850 = self;
    self = other;
    
    if(self.classname == "player")
    {
        globaldef001847 = func000284();
    }
    
    self = globaldef001850;
    if((deathmatch == FL_SWIM) || coop)
    {
        globaldef001851 = TRUE;
    }
    else
    {
        globaldef001851 = FALSE;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        globaldef001851 = TRUE;
    }
    
    if(self.classname == "weapon_nailgun")
    {
        
        if(globaldef001851 && (other.items & IT_NAILGUN))
        {
            return;
        }
        
        globaldef001846 = other.ammo_nails;
        globaldef001848 = IT_NAILGUN;
        other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
    }
    else
    {
        if(self.classname == "weapon_supernailgun")
        {
            
            if(globaldef001851 && (other.items & IT_SUPER_NAILGUN))
            {
                return;
            }
            
            globaldef001846 = other.ammo_rockets;
            globaldef001848 = IT_SUPER_NAILGUN;
            other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
        }
        else
        {
            if(self.classname == "weapon_supershotgun")
            {
                
                if(globaldef001851 && (other.items & IT_SUPER_SHOTGUN))
                {
                    return;
                }
                
                globaldef001846 = other.ammo_rockets;
                globaldef001848 = IT_SUPER_SHOTGUN;
                other.ammo_shells = other.ammo_shells + MOVETYPE_FLY;
            }
            else
            {
                if(self.classname == "weapon_rocketlauncher")
                {
                    
                    if(globaldef001851 && (other.items & IT_ROCKET_LAUNCHER))
                    {
                        return;
                    }
                    
                    globaldef001846 = other.ammo_rockets;
                    globaldef001848 = IT_ROCKET_LAUNCHER;
                    other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                }
                else
                {
                    if(self.classname == "weapon_grenadelauncher")
                    {
                        
                        if(globaldef001851 && (other.items & IT_GRENADE_LAUNCHER))
                        {
                            return;
                        }
                        
                        globaldef001846 = other.ammo_rockets;
                        globaldef001848 = IT_GRENADE_LAUNCHER;
                        other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                    }
                    else
                    {
                        if(self.classname == "weapon_lightning")
                        {
                            
                            if(globaldef001851 && (other.items & IT_LIGHTNING))
                            {
                                return;
                            }
                            
                            globaldef001846 = other.ammo_rockets;
                            globaldef001848 = IT_LIGHTNING;
                            other.ammo_cells = other.ammo_cells + globaldef000748;
                        }
                        else
                        {
                            objerror("weapon_touch: unknown classname");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(other.classname == "player")
    {
        func000092(other, "You got the ");
        func000092(other, self.netname);
        func000092(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/pkup.wav", TRUE, ATTN_NORM);
    func002453(other, self.origin, globaldef000522, globaldef000742);
    
    if(other.classname == "player")
    {
        func000064(other, "bf\n");
    }
    
    func000216();
    globaldef001849 = other.items;
    other.items = other.items | globaldef001848;
    globaldef001850 = self;
    self = other;
    if(!deathmatch)
    {
        self.weapon = globaldef001848;
    }
    else
    {
        func000218(globaldef001849, globaldef001848);
    }
    
    func000283();
    self = globaldef001850;
    
    if(globaldef001851)
    {
        return;
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = func000204;
    activator = other;
    SUB_UseTargets();
};

