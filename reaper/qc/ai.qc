void () movetarget_f;
void () t_movetarget;
void () knight_walk1;
void () knight_bow6;
void () knight_bow1;
float current_yaw;
entity sight_entity;
float sight_entity_time;
// anglemod
// function begins at statement 1040, parm_start=1470
// OP_GE	1470	1471	1472
// OP_IFNOT	1472	4	0
// OP_SUB_F	1470	1471	1473
// OP_STORE_F	1473	1470	0
// OP_GOTO	-4	0	0
// OP_LT	1470	213	1474
// OP_IFNOT	1474	4	0
// OP_ADD_F	1470	1471	1475
// OP_STORE_F	1475	1470	0
// OP_GOTO	-4	0	0
// OP_RETURN	1470	0	0
// OP_DONE	0	0	0
float (float v) anglemod = 
{
    
    while(v >= 360)
    {
        v = v - 360;
    }
    
    
    while(v < FALSE)
    {
        v = v + 360;
    }
    
    return v;
};

// movetarget_f
// function begins at statement 1052, parm_start=1476
// OP_LOAD_S	28	197	1476
// OP_NOT_S	1476	0	1477
// OP_IFNOT	1477	3	0
// OP_STORE_V	1478	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	104	1479
// OP_STOREP_F	238	1479	0
// OP_ADDRESS	28	146	1480
// OP_STOREP_FNC	1463	1480	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1481	7	0
// OP_STORE_V	1484	10	0
// OP_CALL3	450	0	0
// OP_DONE	0	0	0
void () movetarget_f = 
{
    
    if(!self.targetname)
    {
        objerror("monster_movetarget: no targetname");
    }
    
    self.solid = SOLID_TRIGGER;
    self.touch = t_movetarget;
    setsize(self, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
};

// path_corner
// function begins at statement 1066, parm_start=1488
// OP_CALL0	1462	0	0
// OP_DONE	0	0	0
void () path_corner = 
{
    movetarget_f();
};

// t_movetarget
// function begins at statement 1068, parm_start=1488
// OP_LOAD_ENT	29	418	1489
// OP_NE_E	1489	28	1490
// OP_IFNOT	1490	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	181	1491
// OP_IFNOT	1491	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1488	0
// OP_STORE_ENT	29	28	0
// OP_STORE_ENT	1488	29	0
// OP_LOAD_S	28	129	1492
// OP_EQ_S	1492	1493	1494
// OP_IFNOT	1494	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1495	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	194	1496
// OP_ADDRESS	28	418	1497
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	29	196	1498
// OP_STORE_V	1498	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	1497	0
// OP_STOREP_ENT	1	1496	0
// OP_ADDRESS	28	191	1499
// OP_LOAD_ENT	28	194	1500
// OP_LOAD_V	1500	105	1501
// OP_LOAD_V	28	105	1504
// OP_SUB_V	1501	1504	1507
// OP_STORE_V	1507	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	1499	0
// OP_LOAD_ENT	28	418	1510
// OP_NOT_ENT	1510	0	1511
// OP_IFNOT	1511	7	0
// OP_ADDRESS	28	417	1512
// OP_ADD_F	31	1513	1514
// OP_STOREP_F	1514	1512	0
// OP_LOAD_FNC	28	356	1515
// OP_CALL0	1515	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () t_movetarget = 
{
    local entity temp;
    
    if(other.movetarget != self)
    {
        return;
    }
    
    
    if(other.enemy)
    {
        return;
    }
    
    temp = self;
    self = other;
    other = temp;
    
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", TRUE, ATTN_IDLE);
    }
    
    self.goalentity = self.movetarget = find(world, targetname, other.target);
    self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
    
    if(!self.movetarget)
    {
        self.pausetime = time + 999999;
        self.th_stand();
        return;
    }
    
};

// range
// function begins at statement 1114, parm_start=1516
// OP_LOAD_V	28	105	1524
// OP_LOAD_V	28	166	1527
// OP_ADD_V	1524	1527	1530
// OP_STORE_V	1530	1517	0
// OP_LOAD_V	1516	105	1533
// OP_LOAD_V	1516	166	1536
// OP_ADD_V	1533	1536	1539
// OP_STORE_V	1539	1520	0
// OP_SUB_V	1517	1520	1542
// OP_STORE_V	1542	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	1523	0
// OP_LT	1523	746	1545
// OP_IFNOT	1545	2	0
// OP_RETURN	242	0	0
// OP_LT	1523	1546	1547
// OP_IFNOT	1547	2	0
// OP_RETURN	243	0	0
// OP_LT	1523	1548	1549
// OP_IFNOT	1549	2	0
// OP_RETURN	244	0	0
// OP_RETURN	245	0	0
// OP_DONE	0	0	0
float (entity targ) range = 
{
    local vector spot1;
    local vector spot2;
    local float r;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    r = vlen(spot1 - spot2);
    
    if(r < 120)
    {
        return RANGE_MELEE;
    }
    
    
    if(r < 500)
    {
        return RANGE_NEAR;
    }
    
    
    if(r < 1000)
    {
        return RANGE_MID;
    }
    
    return RANGE_FAR;
};

// visible
// function begins at statement 1137, parm_start=1550
// OP_LOAD_V	28	105	1557
// OP_LOAD_V	28	166	1560
// OP_ADD_V	1557	1560	1563
// OP_STORE_V	1563	1551	0
// OP_LOAD_V	1550	105	1566
// OP_LOAD_V	1550	166	1569
// OP_ADD_V	1566	1569	1572
// OP_STORE_V	1572	1554	0
// OP_STORE_V	1551	4	0
// OP_STORE_V	1554	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1575
// OP_IFNOT	1575	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	70	214	1576
// OP_IFNOT	1576	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) visible = 
{
    local vector spot1;
    local vector spot2;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    return FALSE;
};

// infront
// function begins at statement 1158, parm_start=1577
// OP_LOAD_V	28	117	1582
// OP_STORE_V	1582	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	1577	105	1585
// OP_LOAD_V	28	105	1588
// OP_SUB_V	1585	1588	1591
// OP_STORE_V	1591	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	1578	0
// OP_MUL_V	1578	59	1594
// OP_STORE_F	1594	1581	0
// OP_GT	1581	1369	1595
// OP_IFNOT	1595	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) infront = 
{
    local vector vec;
    local float dot;
    makevectors(self.angles);
    vec = normalize(targ.origin - self.origin);
    dot = vec * v_forward;
    
    if(dot > 0.3)
    {
        return TRUE;
    }
    
    return FALSE;
};

// HuntTarget
// function begins at statement 1174, parm_start=1597
// OP_ADDRESS	28	194	1597
// OP_LOAD_ENT	28	181	1598
// OP_STOREP_ENT	1598	1597	0
// OP_ADDRESS	28	148	1599
// OP_LOAD_FNC	28	358	1600
// OP_STOREP_FNC	1600	1599	0
// OP_ADDRESS	28	191	1601
// OP_LOAD_ENT	28	181	1602
// OP_LOAD_V	1602	105	1603
// OP_LOAD_V	28	105	1606
// OP_SUB_V	1603	1606	1609
// OP_STORE_V	1609	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	1601	0
// OP_ADDRESS	28	150	1612
// OP_ADD_F	31	993	1613
// OP_STOREP_F	1613	1612	0
// OP_STORE_V	214	4	0
// OP_CALL1	1121	0	0
// OP_DONE	0	0	0
void () HuntTarget = 
{
    self.goalentity = self.enemy;
    self.think = self.th_run;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.nextthink = time + 0.1;
    SUB_AttackFinished(TRUE);
};

// SightSound
// function begins at statement 1194, parm_start=1615
// OP_LOAD_S	28	129	1616
// OP_EQ_S	1616	1493	1617
// OP_IFNOT	1617	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1618	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	152	0	0
// OP_LOAD_S	28	129	1619
// OP_EQ_S	1619	1213	1620
// OP_IFNOT	1620	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1621	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	142	0	0
// OP_LOAD_S	28	129	1622
// OP_EQ_S	1622	1623	1624
// OP_IFNOT	1624	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1625	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	132	0	0
// OP_LOAD_S	28	129	1626
// OP_EQ_S	1626	1627	1628
// OP_IFNOT	1628	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1629	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	122	0	0
// OP_LOAD_S	28	129	1630
// OP_EQ_S	1630	1631	1632
// OP_IFNOT	1632	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1633	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	112	0	0
// OP_LOAD_S	28	129	1634
// OP_EQ_S	1634	1635	1636
// OP_IFNOT	1636	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1637	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	102	0	0
// OP_LOAD_S	28	129	1638
// OP_EQ_S	1638	1639	1640
// OP_IFNOT	1640	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1641	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	92	0	0
// OP_LOAD_S	28	129	1642
// OP_EQ_S	1642	1643	1644
// OP_IFNOT	1644	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1645	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	82	0	0
// OP_LOAD_S	28	129	1646
// OP_EQ_S	1646	1647	1648
// OP_IFNOT	1648	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1649	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	72	0	0
// OP_LOAD_S	28	129	1650
// OP_EQ_S	1650	1651	1652
// OP_IFNOT	1652	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	62	0	0
// OP_LOAD_S	28	129	1654
// OP_EQ_S	1654	1655	1656
// OP_IFNOT	1656	40	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	228	1657
// OP_STORE_V	1657	4	0
// OP_CALL1	480	0	0
// OP_STORE_F	1	1615	0
// OP_EQ_F	1615	214	1658
// OP_IFNOT	1658	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	1615	216	1660
// OP_IFNOT	1660	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	1615	213	1662
// OP_IFNOT	1662	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1663	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1664	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	28	129	1665
// OP_EQ_S	1665	1666	1667
// OP_IFNOT	1667	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1668	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	129	1669
// OP_EQ_S	1669	1670	1671
// OP_IFNOT	1671	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1672	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () SightSound = 
{
    local float rsnd;
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogwake.wav", TRUE, ATTN_NORM);
    }
    else
    {
        if(self.classname == "monster_knight")
        {
            sound(self, CHAN_VOICE, "knight/ksight.wav", TRUE, ATTN_NORM);
        }
        else
        {
            if(self.classname == "monster_shambler")
            {
                sound(self, CHAN_VOICE, "shambler/ssight.wav", TRUE, ATTN_NORM);
            }
            else
            {
                if(self.classname == "monster_demon1")
                {
                    sound(self, CHAN_VOICE, "demon/sight2.wav", TRUE, ATTN_NORM);
                }
                else
                {
                    if(self.classname == "monster_wizard")
                    {
                        sound(self, CHAN_VOICE, "wizard/wsight.wav", TRUE, ATTN_NORM);
                    }
                    else
                    {
                        if(self.classname == "monster_zombie")
                        {
                            sound(self, CHAN_VOICE, "zombie/z_idle.wav", TRUE, ATTN_NORM);
                        }
                        else
                        {
                            if(self.classname == "monster_dog")
                            {
                                sound(self, CHAN_VOICE, "dog/dsight.wav", TRUE, ATTN_NORM);
                            }
                            else
                            {
                                if(self.classname == "monster_hell_knight")
                                {
                                    sound(self, CHAN_VOICE, "hknight/sight1.wav", TRUE, ATTN_NORM);
                                }
                                else
                                {
                                    if(self.classname == "monster_tarbaby")
                                    {
                                        sound(self, CHAN_VOICE, "blob/sight1.wav", TRUE, ATTN_NORM);
                                    }
                                    else
                                    {
                                        if(self.classname == "monster_vomit")
                                        {
                                            sound(self, CHAN_VOICE, "vomitus/v_sight1.wav", TRUE, ATTN_NORM);
                                        }
                                        else
                                        {
                                            if(self.classname == "monster_enforcer")
                                            {
                                                rsnd = rint(random() * MOVETYPE_WALK);
                                                if(rsnd == TRUE)
                                                {
                                                    sound(self, CHAN_VOICE, "enforcer/sight1.wav", TRUE, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    if(rsnd == FL_SWIM)
                                                    {
                                                        sound(self, CHAN_VOICE, "enforcer/sight2.wav", TRUE, ATTN_NORM);
                                                    }
                                                    else
                                                    {
                                                        if(rsnd == FALSE)
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight3.wav", TRUE, ATTN_NORM);
                                                        }
                                                        else
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight4.wav", TRUE, ATTN_NORM);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(self.classname == "monster_army")
                                                {
                                                    sound(self, CHAN_VOICE, "soldier/sight1.wav", TRUE, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    
                                                    if(self.classname == "monster_shalrath")
                                                    {
                                                        sound(self, CHAN_VOICE, "shalrath/sight.wav", TRUE, ATTN_NORM);
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// FoundTarget
// function begins at statement 1356, parm_start=1674
// OP_LOAD_ENT	28	181	1674
// OP_LOAD_S	1674	129	1675
// OP_EQ_S	1675	1102	1676
// OP_IFNOT	1676	3	0
// OP_STORE_ENT	28	1468	0
// OP_STORE_F	31	1469	0
// OP_ADDRESS	28	388	1677
// OP_ADD_F	31	214	1678
// OP_STOREP_F	1678	1677	0
// OP_CALL0	1614	0	0
// OP_CALL0	1596	0	0
// OP_DONE	0	0	0
void () FoundTarget = 
{
    
    if(self.enemy.classname == "player")
    {
        sight_entity = self;
        sight_entity_time = time;
    }
    
    self.show_hostile = time + TRUE;
    SightSound();
    HuntTarget();
};

// FindTarget
// function begins at statement 1368, parm_start=1680
// OP_SUB_F	31	993	1682
// OP_GE	1469	1682	1683
// OP_LOAD_F	28	195	1684
// OP_BITAND	1684	228	1685
// OP_NOT_F	1685	0	1686
// OP_AND	1683	1686	1687
// OP_IFNOT	1687	8	0
// OP_STORE_ENT	1468	1680	0
// OP_LOAD_ENT	1680	181	1688
// OP_LOAD_ENT	28	181	1689
// OP_EQ_E	1688	1689	1690
// OP_IFNOT	1690	2	0
// OP_RETURN	0	0	0
// OP_GOTO	6	0	0
// OP_CALL0	462	0	0
// OP_STORE_ENT	1	1680	0
// OP_NOT_ENT	1680	0	1691
// OP_IFNOT	1691	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1692
// OP_EQ_E	1680	1692	1693
// OP_IFNOT	1693	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	1680	182	1694
// OP_BITAND	1694	221	1695
// OP_IFNOT	1695	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	1680	162	1696
// OP_BITAND	1696	272	1697
// OP_IFNOT	1697	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	1680	4	0
// OP_CALL1	1246	0	0
// OP_STORE_F	1	1681	0
// OP_EQ_F	1681	245	1698
// OP_IFNOT	1698	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	1680	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	1699
// OP_IFNOT	1699	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1681	243	1700
// OP_IFNOT	1700	10	0
// OP_LOAD_F	1680	388	1701
// OP_LT	1701	31	1702
// OP_STORE_V	1680	4	0
// OP_CALL1	1245	0	0
// OP_NOT_F	1	0	1703
// OP_AND	1702	1703	1704
// OP_IFNOT	1704	2	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_EQ_F	1681	244	1705
// OP_IFNOT	1705	6	0
// OP_STORE_V	1680	4	0
// OP_CALL1	1245	0	0
// OP_NOT_F	1	0	1706
// OP_IFNOT	1706	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	181	1707
// OP_STOREP_ENT	1680	1707	0
// OP_LOAD_ENT	28	181	1708
// OP_LOAD_S	1708	129	1709
// OP_NE_S	1709	1102	1710
// OP_IFNOT	1710	12	0
// OP_ADDRESS	28	181	1711
// OP_LOAD_ENT	28	181	1712
// OP_LOAD_ENT	1712	181	1713
// OP_STOREP_ENT	1713	1711	0
// OP_LOAD_ENT	28	181	1714
// OP_LOAD_S	1714	129	1715
// OP_NE_S	1715	1102	1716
// OP_IFNOT	1716	4	0
// OP_ADDRESS	28	181	1717
// OP_STOREP_ENT	30	1717	0
// OP_RETURN	213	0	0
// OP_CALL0	1673	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () FindTarget = 
{
    local entity client;
    local float r;
    if((sight_entity_time >= (time - 0.1)) && (!(self.spawnflags & MOVETYPE_WALK)))
    {
        client = sight_entity;
        
        if(client.enemy == self.enemy)
        {
            return;
        }
        
    }
    else
    {
        client = checkclient();
        
        if(!client)
        {
            return FALSE;
        }
        
    }
    
    
    if(client == self.enemy)
    {
        return FALSE;
    }
    
    
    if(client.flags & FL_NOTARGET)
    {
        return FALSE;
    }
    
    
    if(client.items & IT_INVISIBILITY)
    {
        return FALSE;
    }
    
    r = range(client);
    
    if(r == RANGE_FAR)
    {
        return FALSE;
    }
    
    
    if(!visible(client))
    {
        return FALSE;
    }
    
    if(r == RANGE_NEAR)
    {
        
        if((client.show_hostile < time) && !infront(client))
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if(r == RANGE_MID)
        {
            
            if(!infront(client))
            {
                return FALSE;
            }
            
        }
        
    }
    
    self.enemy = client;
    
    if(self.enemy.classname != "player")
    {
        self.enemy = self.enemy.enemy;
        
        if(self.enemy.classname != "player")
        {
            self.enemy = world;
            return FALSE;
        }
        
    }
    
    FoundTarget();
    return TRUE;
};

// ai_forward
// function begins at statement 1448, parm_start=1719
// OP_LOAD_F	28	119	1720
// OP_STORE_V	1720	4	0
// OP_STORE_V	1719	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void (float dist) ai_forward = 
{
    walkmove(self.angles_y, dist);
};

// ai_back
// function begins at statement 1453, parm_start=1722
// OP_LOAD_F	28	119	1723
// OP_ADD_F	1723	1724	1725
// OP_STORE_V	1725	4	0
// OP_STORE_V	1722	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void (float dist) ai_back = 
{
    walkmove(self.angles_y + 180, dist);
};

// ai_pain
// function begins at statement 1459, parm_start=1727
// OP_STORE_V	1727	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void (float dist) ai_pain = 
{
    ai_back(dist);
};

// ai_painforward
// function begins at statement 1462, parm_start=1729
// OP_LOAD_F	28	191	1730
// OP_STORE_V	1730	4	0
// OP_STORE_V	1729	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void (float dist) ai_painforward = 
{
    walkmove(self.ideal_yaw, dist);
};

// ai_walk
// function begins at statement 1467, parm_start=1732
// OP_STORE_F	1732	341	0
// OP_LOAD_S	28	129	1736
// OP_EQ_S	1736	1737	1738
// OP_IFNOT	1738	4	0
// OP_STORE_V	1732	4	0
// OP_CALL1	501	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1679	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	1732	4	0
// OP_CALL1	501	0	0
// OP_DONE	0	0	0
void (float dist) ai_walk = 
{
    local vector mtemp;
    movedist = dist;
    
    if(self.classname == "monster_dragon")
    {
        movetogoal(dist);
        return;
    }
    
    
    if(FindTarget())
    {
        return;
    }
    
    movetogoal(dist);
};

// ai_stand
// function begins at statement 1480, parm_start=1740
// OP_CALL0	1679	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	417	1740
// OP_GT	31	1740	1741
// OP_IFNOT	1741	4	0
// OP_LOAD_FNC	28	357	1742
// OP_CALL0	1742	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ai_stand = 
{
    
    if(FindTarget())
    {
        return;
    }
    
    
    if(time > self.pausetime)
    {
        self.th_walk();
        return;
    }
    
};

// ai_turn
// function begins at statement 1490, parm_start=1744
// OP_CALL0	1679	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	491	0	0
// OP_DONE	0	0	0
void () ai_turn = 
{
    
    if(FindTarget())
    {
        return;
    }
    
    ChangeYaw();
};

// ChooseTurn
// function begins at statement 1495, parm_start=1744
// OP_LOAD_V	28	105	1753
// OP_SUB_V	1753	1744	1756
// OP_STORE_V	1756	1747	0
// OP_STORE_F	75	1750	0
// OP_SUB_F	213	74	1759
// OP_STORE_F	1759	1751	0
// OP_STORE_F	213	1752	0
// OP_MUL_V	1747	1750	1760
// OP_GT	1760	213	1761
// OP_IFNOT	1761	5	0
// OP_SUB_F	213	75	1762
// OP_STORE_F	1762	1747	0
// OP_STORE_F	74	1748	0
// OP_GOTO	4	0	0
// OP_STORE_F	75	1747	0
// OP_SUB_F	213	74	1763
// OP_STORE_F	1763	1748	0
// OP_STORE_F	213	1749	0
// OP_ADDRESS	28	191	1764
// OP_STORE_V	1747	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	1764	0
// OP_DONE	0	0	0
void (vector dest3) ChooseTurn = 
{
    local vector dir;
    local vector newdir;
    dir = self.origin - dest3;
    newdir_x = 0;
    newdir_y = FALSE - trace_plane_normal_x;
    newdir_z = FALSE;
    if((dir * newdir) > FALSE)
    {
        dir_x = FALSE - 0;
        dir_y = trace_plane_normal_x;
    }
    else
    {
        dir_x = 0;
        dir_y = FALSE - trace_plane_normal_x;
    }
    
    dir_z = FALSE;
    self.ideal_yaw = vectoyaw(dir);
};

// FacingIdeal
// function begins at statement 1518, parm_start=1766
// OP_LOAD_F	28	119	1767
// OP_LOAD_F	28	191	1768
// OP_SUB_F	1767	1768	1769
// OP_STORE_V	1769	4	0
// OP_CALL1	1137	0	0
// OP_STORE_F	1	1766	0
// OP_GT	1766	1770	1771
// OP_LT	1766	1772	1773
// OP_AND	1771	1773	1774
// OP_IFNOT	1774	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () FacingIdeal = 
{
    local float delta;
    delta = anglemod(self.angles_y - self.ideal_yaw);
    
    if((delta > 45) && (delta < 315))
    {
        return FALSE;
    }
    
    return TRUE;
};

// CheckAnyAttack
// function begins at statement 1531, parm_start=1776
// OP_NOT_F	1149	0	1776
// OP_IFNOT	1776	2	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckAnyAttack = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
};

// ai_run_melee
// function begins at statement 1535, parm_start=1778
// OP_ADDRESS	28	191	1778
// OP_STOREP_F	1152	1778	0
// OP_CALL0	491	0	0
// OP_CALL0	1765	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	360	1779
// OP_CALL0	1779	0	0
// OP_ADDRESS	28	367	1780
// OP_STOREP_F	368	1780	0
// OP_DONE	0	0	0
void () ai_run_melee = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.th_melee();
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_missile
// function begins at statement 1545, parm_start=1782
// OP_ADDRESS	28	191	1782
// OP_STOREP_F	1152	1782	0
// OP_CALL0	491	0	0
// OP_CALL0	1765	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	359	1783
// OP_CALL0	1783	0	0
// OP_ADDRESS	28	367	1784
// OP_STOREP_F	368	1784	0
// OP_DONE	0	0	0
void () ai_run_missile = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.th_missile();
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_slide
// function begins at statement 1555, parm_start=1786
// OP_ADDRESS	28	191	1787
// OP_STOREP_F	1152	1787	0
// OP_CALL0	491	0	0
// OP_LOAD_F	28	365	1788
// OP_IFNOT	1788	3	0
// OP_STORE_F	1789	1786	0
// OP_GOTO	2	0	0
// OP_STORE_F	1790	1786	0
// OP_LOAD_F	28	191	1791
// OP_ADD_F	1791	1786	1792
// OP_STORE_V	1792	4	0
// OP_STORE_V	341	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	365	1793
// OP_LOAD_F	28	365	1794
// OP_SUB_F	214	1794	1795
// OP_STOREP_F	1795	1793	0
// OP_LOAD_F	28	191	1796
// OP_SUB_F	1796	1786	1797
// OP_STORE_V	1797	4	0
// OP_STORE_V	341	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void () ai_run_slide = 
{
    local float ofs;
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    if(self.lefty)
    {
        ofs = 90;
    }
    else
    {
        ofs = -90;
    }
    
    
    if(walkmove(self.ideal_yaw + ofs, movedist))
    {
        return;
    }
    
    self.lefty = TRUE - self.lefty;
    walkmove(self.ideal_yaw - ofs, movedist);
};

// ai_run
// function begins at statement 1580, parm_start=1799
// OP_STORE_F	1799	341	0
// OP_LOAD_ENT	28	181	1808
// OP_LOAD_F	1808	152	1809
// OP_LE	1809	213	1810
// OP_IFNOT	1810	20	0
// OP_ADDRESS	28	181	1811
// OP_STOREP_ENT	30	1811	0
// OP_LOAD_ENT	28	363	1812
// OP_LOAD_F	1812	152	1813
// OP_GT	1813	213	1814
// OP_IFNOT	1814	6	0
// OP_ADDRESS	28	181	1815
// OP_LOAD_ENT	28	363	1816
// OP_STOREP_ENT	1816	1815	0
// OP_CALL0	1596	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	418	1817
// OP_IFNOT	1817	4	0
// OP_LOAD_FNC	28	357	1818
// OP_CALL0	1818	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	356	1819
// OP_CALL0	1819	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	388	1820
// OP_ADD_F	31	214	1821
// OP_STOREP_F	1821	1820	0
// OP_LOAD_ENT	28	181	1822
// OP_STORE_V	1822	4	0
// OP_CALL1	1127	0	0
// OP_STORE_F	1	1149	0
// OP_IFNOT	1149	4	0
// OP_ADDRESS	28	366	1823
// OP_ADD_F	31	230	1824
// OP_STOREP_F	1824	1823	0
// OP_OR	36	35	1825
// OP_LOAD_F	28	366	1826
// OP_LT	1826	31	1827
// OP_AND	1825	1827	1828
// OP_IFNOT	1828	4	0
// OP_CALL0	1679	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1829
// OP_STORE_V	1829	4	0
// OP_CALL1	1245	0	0
// OP_STORE_F	1	1150	0
// OP_LOAD_ENT	28	181	1830
// OP_STORE_V	1830	4	0
// OP_CALL1	1246	0	0
// OP_STORE_F	1	1151	0
// OP_LOAD_ENT	28	181	1831
// OP_LOAD_V	1831	105	1832
// OP_LOAD_V	28	105	1835
// OP_SUB_V	1832	1835	1838
// OP_STORE_V	1838	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	1152	0
// OP_LOAD_F	28	367	1841
// OP_EQ_F	1841	371	1842
// OP_IFNOT	1842	3	0
// OP_CALL0	1781	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	367	1843
// OP_EQ_F	1843	370	1844
// OP_IFNOT	1844	3	0
// OP_CALL0	1777	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1775	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	367	1845
// OP_EQ_F	1845	369	1846
// OP_IFNOT	1846	3	0
// OP_CALL0	1785	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	1799	4	0
// OP_CALL1	501	0	0
// OP_DONE	0	0	0
void (float dist) ai_run = 
{
    local vector delta;
    local float axis;
    local float direct;
    local float ang_rint;
    local float ang_floor;
    local float ang_ceil;
    movedist = dist;
    
    if(self.enemy.health <= FALSE)
    {
        self.enemy = world;
        if(self.oldenemy.health > FALSE)
        {
            self.enemy = self.oldenemy;
            HuntTarget();
        }
        else
        {
            if(self.movetarget)
            {
                self.th_walk();
            }
            else
            {
                self.th_stand();
            }
            
            return;
        }
        
    }
    
    self.show_hostile = time + TRUE;
    enemy_vis = visible(self.enemy);
    
    if(enemy_vis)
    {
        self.search_time = time + MOVETYPE_FLY;
    }
    
    
    if((coop || deathmatch) && (self.search_time < time))
    {
        
        if(FindTarget())
        {
            return;
        }
        
    }
    
    enemy_infront = infront(self.enemy);
    enemy_range = range(self.enemy);
    enemy_yaw = vectoyaw(self.enemy.origin - self.origin);
    
    if(self.attack_state == AS_MISSILE)
    {
        ai_run_missile();
        return;
    }
    
    
    if(self.attack_state == AS_MELEE)
    {
        ai_run_melee();
        return;
    }
    
    
    if(CheckAnyAttack())
    {
        return;
    }
    
    
    if(self.attack_state == AS_SLIDING)
    {
        ai_run_slide();
        return;
    }
    
    movetogoal(dist);
};

