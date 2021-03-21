void() monster_use;
// monster_use
// function begins at statement 8399
OP_LOAD_ENT	28	181	5460
OP_IFNOT	5460	2	0
OP_RETURN	0	0	0
OP_LOAD_F	28	152	5461
OP_LE	5461	337	5462
OP_IFNOT	5462	2	0
OP_RETURN	0	0	0
OP_LOAD_F	346	162	5463
OP_BITAND	5463	272	5464
OP_IFNOT	5464	2	0
OP_RETURN	0	0	0
OP_LOAD_F	346	182	5465
OP_BITAND	5465	221	5466
OP_IFNOT	5466	2	0
OP_RETURN	0	0	0
OP_LOAD_S	346	129	5467
OP_NE_S	5467	712	5468
OP_IFNOT	5468	2	0
OP_RETURN	0	0	0
OP_ADDRESS	28	181	5469
OP_STOREP_ENT	346	5469	0
OP_ADDRESS	28	150	5470
OP_ADD_F	31	603	5471
OP_STOREP_F	5471	5470	0
OP_ADDRESS	28	148	5472
OP_STOREP_FNC	1293	5472	0
OP_DONE	0	0	0
voidTODO () monster_use =
{
    
    if(self.enemy)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(self.health <= 0.000)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(activator.items & 524288.000)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(activator.flags & 128.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_NE_S 5467 712 5468
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    self.enemy = activator;
    self.nextthink = 0.000 + 0.100;
    self.think = FoundTarget;
};

// monster_death_use
// function begins at statement 8426
OP_LOAD_F	28	182	5476
OP_BITAND	5476	215	5477
OP_IFNOT	5477	5	0
OP_ADDRESS	28	182	5478
OP_LOAD_F	28	182	5479
OP_SUB_F	5479	215	5480
OP_STOREP_F	5480	5478	0
OP_LOAD_F	28	182	5481
OP_BITAND	5481	216	5482
OP_IFNOT	5482	5	0
OP_ADDRESS	28	182	5483
OP_LOAD_F	28	182	5484
OP_SUB_F	5484	216	5485
OP_STOREP_F	5485	5483	0
OP_LOAD_S	28	196	5486
OP_NOT_S	5486	0	5487
OP_IFNOT	5487	2	0
OP_RETURN	0	0	0
OP_LOAD_ENT	28	181	5488
OP_STORE_ENT	5488	346	0
OP_CALL0	518	0	0
OP_DONE	0	0	0
voidTODO () monster_death_use =
{
    local entity ent;
    local entity otemp;
    local entity stemp;
    
    if(self.flags & 1.000)
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 5479 215 5480
        self.flags = ;
    }
    
    
    if(self.flags & 2.000)
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 5484 216 5485
        self.flags = ;
    }
    
    // *** UNPROCESSED OPCODE OP_NOT_S 5486 0 5487
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    activator = self.enemy;
    SUB_UseTargets();
};

void() walkmonster_start_go;
// walkmonster_start_go
// function begins at statement 8448
OP_ADDRESS	28	108	5492
OP_LOAD_F	28	108	5493
OP_ADD_F	5493	2256	5494
OP_STOREP_F	5494	5492	0
OP_CALL0	478	0	0
OP_STORE_V	337	4	0
OP_STORE_V	337	7	0
OP_CALL2	477	0	0
OP_NOT_F	1	0	5495
OP_IFNOT	5495	10	0
OP_STORE_V	5496	4	0
OP_CALL1	470	0	0
OP_LOAD_V	28	105	5497
OP_STORE_V	5497	4	0
OP_CALL1	472	0	0
OP_STORE_V	1	4	0
OP_CALL1	470	0	0
OP_STORE_V	1814	4	0
OP_CALL1	470	0	0
OP_ADDRESS	28	163	5500
OP_STOREP_F	252	5500	0
OP_ADDRESS	28	191	5501
OP_LOAD_V	28	117	5502
OP_MUL_V	5502	5505	5508
OP_STOREP_F	5508	5501	0
OP_LOAD_F	28	192	5509
OP_NOT_F	5509	0	5510
OP_IFNOT	5510	3	0
OP_ADDRESS	28	192	5511
OP_STOREP_F	894	5511	0
OP_ADDRESS	28	166	5512
OP_STOREP_V	5515	5512	0
OP_ADDRESS	28	147	5518
OP_STOREP_FNC	5459	5518	0
OP_ADDRESS	28	182	5519
OP_LOAD_F	28	182	5520
OP_BITOR	5520	219	5521
OP_STOREP_F	5521	5519	0
OP_LOAD_S	28	196	5522
OP_IFNOT	5522	42	0
OP_ADDRESS	28	194	5523
OP_ADDRESS	28	418	5524
OP_LOAD_S	28	196	5525
OP_STORE_V	30	4	0
OP_STORE_V	197	7	0
OP_STORE_V	5525	10	0
OP_CALL3	463	0	0
OP_STOREP_ENT	1	5524	0
OP_STOREP_ENT	1	5523	0
OP_ADDRESS	28	191	5526
OP_LOAD_ENT	28	194	5527
OP_LOAD_V	5527	105	5528
OP_LOAD_V	28	105	5531
OP_SUB_V	5528	5531	5534
OP_STORE_V	5534	4	0
OP_CALL1	458	0	0
OP_STOREP_F	1	5526	0
OP_LOAD_ENT	28	418	5537
OP_NOT_ENT	5537	0	5538
OP_IFNOT	5538	10	0
OP_STORE_V	5539	4	0
OP_CALL1	470	0	0
OP_LOAD_V	28	105	5540
OP_STORE_V	5540	4	0
OP_CALL1	472	0	0
OP_STORE_V	1	4	0
OP_CALL1	470	0	0
OP_STORE_V	1814	4	0
OP_CALL1	470	0	0
OP_LOAD_ENT	28	418	5543
OP_LOAD_S	5543	129	5544
OP_EQ_S	5544	5545	5546
OP_IFNOT	5546	4	0
OP_LOAD_FNC	28	357	5547
OP_CALL0	5547	0	0
OP_GOTO	3	0	0
OP_ADDRESS	28	417	5548
OP_STOREP_F	5549	5548	0
OP_LOAD_FNC	28	356	5550
OP_CALL0	5550	0	0
OP_GOTO	5	0	0
OP_ADDRESS	28	417	5551
OP_STOREP_F	5549	5551	0
OP_LOAD_FNC	28	356	5552
OP_CALL0	5552	0	0
OP_ADDRESS	28	150	5553
OP_LOAD_F	28	150	5554
OP_CALL0	452	0	0
OP_MUL_F	1	1491	5555
OP_ADD_F	5554	5555	5556
OP_STOREP_F	5556	5553	0
OP_DONE	0	0	0
voidTODO () walkmonster_start_go =
{
    local string stemp;
    local entity etemp;
    self. = self. + 1.000;
    droptofloor();
    
    if(!walkmove(0.000, 0.000))
    {
        dprint("IMMEDIATE");
        dprint(vtos(self.origin));
        dprint("IMMEDIATE");
    }
    
    self.takedamage = 2.000;
    // *** UNPROCESSED OPCODE OP_MUL_V 5502 5505 5508
    self.ideal_yaw = ;
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20.000;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    // *** UNPROCESSED OPCODE OP_BITOR 5520 219 5521
    self.flags = ;
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        // *** UNPROCESSED OPCODE OP_NOT_ENT 5537 0 5538
        
        if()
        {
            dprint("IMMEDIATE");
            dprint(vtos(self.origin));
            dprint("IMMEDIATE");
        }
        
        // *** UNPROCESSED OPCODE OP_EQ_S 5544 5545 5546
        if()
        {
            func000000();
        }
        else        
        {
            self.pausetime = 100000000.000;
        }
        
        func000000();
    }
    else    
    {
        self.pausetime = 100000000.000;
        func000000();
    }
    
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1491 5555
    self.nextthink = self.nextthink + ;
};

void() walkmonster_start;
// walkmonster_start
// function begins at statement 8540
OP_ADDRESS	28	150	5558
OP_LOAD_F	28	150	5559
OP_CALL0	452	0	0
OP_MUL_F	1	1491	5560
OP_ADD_F	5559	5560	5561
OP_STOREP_F	5561	5558	0
OP_ADDRESS	28	148	5562
OP_STOREP_FNC	5489	5562	0
OP_ADD_F	40	2256	5563
OP_STORE_F	5563	40	0
OP_DONE	0	0	0
voidTODO () walkmonster_start =
{
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1491 5560
    self.nextthink = self.nextthink + ;
    self.think = walkmonster_start_go;
    total_monsters = 0.000 + 1.000;
};

void() flymonster_start_go;
// flymonster_start_go
// function begins at statement 8551
OP_ADDRESS	28	163	5565
OP_STOREP_F	252	5565	0
OP_ADDRESS	28	191	5566
OP_LOAD_V	28	117	5567
OP_MUL_V	5567	5505	5570
OP_STOREP_F	5570	5566	0
OP_LOAD_F	28	192	5571
OP_NOT_F	5571	0	5572
OP_IFNOT	5572	3	0
OP_ADDRESS	28	192	5573
OP_STOREP_F	318	5573	0
OP_ADDRESS	28	166	5574
OP_STOREP_V	5515	5574	0
OP_ADDRESS	28	147	5577
OP_STOREP_FNC	5459	5577	0
OP_ADDRESS	28	182	5578
OP_LOAD_F	28	182	5579
OP_BITOR	5579	215	5580
OP_STOREP_F	5580	5578	0
OP_ADDRESS	28	182	5581
OP_LOAD_F	28	182	5582
OP_BITOR	5582	219	5583
OP_STOREP_F	5583	5581	0
OP_STORE_V	337	4	0
OP_STORE_V	337	7	0
OP_CALL2	477	0	0
OP_NOT_F	1	0	5584
OP_IFNOT	5584	10	0
OP_STORE_V	5585	4	0
OP_CALL1	470	0	0
OP_LOAD_V	28	105	5586
OP_STORE_V	5586	4	0
OP_CALL1	472	0	0
OP_STORE_V	1	4	0
OP_CALL1	470	0	0
OP_STORE_V	1814	4	0
OP_CALL1	470	0	0
OP_LOAD_S	28	196	5589
OP_IFNOT	5589	34	0
OP_ADDRESS	28	194	5590
OP_ADDRESS	28	418	5591
OP_LOAD_S	28	196	5592
OP_STORE_V	30	4	0
OP_STORE_V	197	7	0
OP_STORE_V	5592	10	0
OP_CALL3	463	0	0
OP_STOREP_ENT	1	5591	0
OP_STOREP_ENT	1	5590	0
OP_LOAD_ENT	28	418	5593
OP_NOT_ENT	5593	0	5594
OP_IFNOT	5594	10	0
OP_STORE_V	5539	4	0
OP_CALL1	470	0	0
OP_LOAD_V	28	105	5595
OP_STORE_V	5595	4	0
OP_CALL1	472	0	0
OP_STORE_V	1	4	0
OP_CALL1	470	0	0
OP_STORE_V	1814	4	0
OP_CALL1	470	0	0
OP_LOAD_ENT	28	418	5598
OP_LOAD_S	5598	129	5599
OP_EQ_S	5599	5545	5600
OP_IFNOT	5600	4	0
OP_LOAD_FNC	28	357	5601
OP_CALL0	5601	0	0
OP_GOTO	3	0	0
OP_ADDRESS	28	417	5602
OP_STOREP_F	5549	5602	0
OP_LOAD_FNC	28	356	5603
OP_CALL0	5603	0	0
OP_GOTO	5	0	0
OP_ADDRESS	28	417	5604
OP_STOREP_F	5549	5604	0
OP_LOAD_FNC	28	356	5605
OP_CALL0	5605	0	0
OP_DONE	0	0	0
voidTODO () flymonster_start_go =
{
    self.takedamage = 2.000;
    // *** UNPROCESSED OPCODE OP_MUL_V 5567 5505 5570
    self.ideal_yaw = ;
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10.000;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    // *** UNPROCESSED OPCODE OP_BITOR 5579 215 5580
    self.flags = ;
    // *** UNPROCESSED OPCODE OP_BITOR 5582 219 5583
    self.flags = ;
    
    if(!walkmove(0.000, 0.000))
    {
        dprint("IMMEDIATE");
        dprint(vtos(self.origin));
        dprint("IMMEDIATE");
    }
    
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        // *** UNPROCESSED OPCODE OP_NOT_ENT 5593 0 5594
        
        if()
        {
            dprint("IMMEDIATE");
            dprint(vtos(self.origin));
            dprint("IMMEDIATE");
        }
        
        // *** UNPROCESSED OPCODE OP_EQ_S 5599 5545 5600
        if()
        {
            func000000();
        }
        else        
        {
            self.pausetime = 100000000.000;
        }
        
        func000000();
    }
    else    
    {
        self.pausetime = 100000000.000;
        func000000();
    }
    
};

void() flymonster_start;
// flymonster_start
// function begins at statement 8628
OP_ADDRESS	28	150	5607
OP_LOAD_F	28	150	5608
OP_CALL0	452	0	0
OP_MUL_F	1	1491	5609
OP_ADD_F	5608	5609	5610
OP_STOREP_F	5610	5607	0
OP_ADDRESS	28	148	5611
OP_STOREP_FNC	5564	5611	0
OP_ADD_F	40	2256	5612
OP_STORE_F	5612	40	0
OP_DONE	0	0	0
voidTODO () flymonster_start =
{
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1491 5609
    self.nextthink = self.nextthink + ;
    self.think = flymonster_start_go;
    total_monsters = 0.000 + 1.000;
};

void() swimmonster_start_go;
// swimmonster_start_go
// function begins at statement 8639
OP_IFNOT	35	4	0
OP_STORE_V	28	4	0
OP_CALL1	460	0	0
OP_RETURN	0	0	0
OP_ADDRESS	28	163	5614
OP_STOREP_F	252	5614	0
OP_ADDRESS	28	191	5615
OP_LOAD_V	28	117	5616
OP_MUL_V	5616	5505	5619
OP_STOREP_F	5619	5615	0
OP_LOAD_F	28	192	5620
OP_NOT_F	5620	0	5621
OP_IFNOT	5621	3	0
OP_ADDRESS	28	192	5622
OP_STOREP_F	318	5622	0
OP_ADDRESS	28	166	5623
OP_STOREP_V	5626	5623	0
OP_ADDRESS	28	147	5629
OP_STOREP_FNC	5459	5629	0
OP_ADDRESS	28	182	5630
OP_LOAD_F	28	182	5631
OP_BITOR	5631	216	5632
OP_STOREP_F	5632	5630	0
OP_ADDRESS	28	182	5633
OP_LOAD_F	28	182	5634
OP_BITOR	5634	219	5635
OP_STOREP_F	5635	5633	0
OP_LOAD_S	28	196	5636
OP_IFNOT	5636	33	0
OP_ADDRESS	28	194	5637
OP_ADDRESS	28	418	5638
OP_LOAD_S	28	196	5639
OP_STORE_V	30	4	0
OP_STORE_V	197	7	0
OP_STORE_V	5639	10	0
OP_CALL3	463	0	0
OP_STOREP_ENT	1	5638	0
OP_STOREP_ENT	1	5637	0
OP_LOAD_ENT	28	418	5640
OP_NOT_ENT	5640	0	5641
OP_IFNOT	5641	10	0
OP_STORE_V	5539	4	0
OP_CALL1	470	0	0
OP_LOAD_V	28	105	5642
OP_STORE_V	5642	4	0
OP_CALL1	472	0	0
OP_STORE_V	1	4	0
OP_CALL1	470	0	0
OP_STORE_V	1814	4	0
OP_CALL1	470	0	0
OP_ADDRESS	28	191	5645
OP_LOAD_ENT	28	194	5646
OP_LOAD_V	5646	105	5647
OP_LOAD_V	28	105	5650
OP_SUB_V	5647	5650	5653
OP_STORE_V	5653	4	0
OP_CALL1	458	0	0
OP_STOREP_F	1	5645	0
OP_LOAD_FNC	28	357	5656
OP_CALL0	5656	0	0
OP_GOTO	5	0	0
OP_ADDRESS	28	417	5657
OP_STOREP_F	5549	5657	0
OP_LOAD_FNC	28	356	5658
OP_CALL0	5658	0	0
OP_ADDRESS	28	150	5659
OP_LOAD_F	28	150	5660
OP_CALL0	452	0	0
OP_MUL_F	1	1491	5661
OP_ADD_F	5660	5661	5662
OP_STOREP_F	5662	5659	0
OP_DONE	0	0	0
voidTODO () swimmonster_start_go =
{
    
    if(0.000)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    self.takedamage = 2.000;
    // *** UNPROCESSED OPCODE OP_MUL_V 5616 5505 5619
    self.ideal_yaw = ;
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10.000;
    }
    
    self.view_ofs = '0.000 0.000 10.000';
    self.use = monster_use;
    // *** UNPROCESSED OPCODE OP_BITOR 5631 216 5632
    self.flags = ;
    // *** UNPROCESSED OPCODE OP_BITOR 5634 219 5635
    self.flags = ;
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        // *** UNPROCESSED OPCODE OP_NOT_ENT 5640 0 5641
        
        if()
        {
            dprint("IMMEDIATE");
            dprint(vtos(self.origin));
            dprint("IMMEDIATE");
        }
        
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        func000000();
    }
    else    
    {
        self.pausetime = 100000000.000;
        func000000();
    }
    
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1491 5661
    self.nextthink = self.nextthink + ;
};

void() swimmonster_start;
// swimmonster_start
// function begins at statement 8711
OP_ADDRESS	28	150	5664
OP_LOAD_F	28	150	5665
OP_CALL0	452	0	0
OP_MUL_F	1	1491	5666
OP_ADD_F	5665	5666	5667
OP_STOREP_F	5667	5664	0
OP_ADDRESS	28	148	5668
OP_STOREP_FNC	5613	5668	0
OP_ADD_F	40	2256	5669
OP_STORE_F	5669	40	0
OP_DONE	0	0	0
voidTODO () swimmonster_start =
{
    // *** UNPROCESSED OPCODE OP_MUL_F 1 1491 5666
    self.nextthink = self.nextthink + ;
    self.think = swimmonster_start_go;
    total_monsters = 0.000 + 1.000;
};

