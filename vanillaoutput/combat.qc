void() T_MissileTouch;
void() info_player_start;
void() ClientObituary;
void() monster_death_use;
entity targ;
// CanDamage
// function begins at statement 1308
OP_LOAD_F	1484	103	1486
OP_EQ_F	1486	232	1487
OP_IFNOT	1487	18	0
OP_LOAD_V	1485	105	1488
OP_LOAD_V	1484	94	1492
OP_LOAD_V	1484	98	1495
OP_ADD_V	1492	1495	1498
OP_MUL_FV	1491	1498	1501
OP_STORE_V	1488	4	0
OP_STORE_V	1501	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1504
OP_IFNOT	1504	2	0
OP_RETURN	214	0	0
OP_EQ_E	78	1484	1505
OP_IFNOT	1505	2	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_LOAD_V	1485	105	1506
OP_LOAD_V	1484	105	1509
OP_STORE_V	1506	4	0
OP_STORE_V	1509	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1512
OP_IFNOT	1512	2	0
OP_RETURN	214	0	0
OP_LOAD_V	1485	105	1513
OP_LOAD_V	1484	105	1516
OP_ADD_V	1516	1519	1522
OP_STORE_V	1513	4	0
OP_STORE_V	1522	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1525
OP_IFNOT	1525	2	0
OP_RETURN	214	0	0
OP_LOAD_V	1485	105	1526
OP_LOAD_V	1484	105	1529
OP_ADD_V	1529	1532	1535
OP_STORE_V	1526	4	0
OP_STORE_V	1535	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1538
OP_IFNOT	1538	2	0
OP_RETURN	214	0	0
OP_LOAD_V	1485	105	1539
OP_LOAD_V	1484	105	1542
OP_ADD_V	1542	1545	1548
OP_STORE_V	1539	4	0
OP_STORE_V	1548	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1551
OP_IFNOT	1551	2	0
OP_RETURN	214	0	0
OP_LOAD_V	1485	105	1552
OP_LOAD_V	1484	105	1555
OP_ADD_V	1555	1558	1561
OP_STORE_V	1552	4	0
OP_STORE_V	1561	7	0
OP_STORE_V	214	10	0
OP_STORE_V	28	13	0
OP_CALL4	461	0	0
OP_EQ_F	70	368	1564
OP_IFNOT	1564	2	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_DONE	0	0	0
voidTODO (entity targ, entity inflictor) CanDamage =
{
    
    if(targ.movetype == 7.000)
    {
        // *** UNPROCESSED OPCODE OP_ADD_V 1492 1495 1498
        // *** UNPROCESSED OPCODE OP_MUL_FV 1491 1498 1501
        traceline(inflictor.origin, , 1.000, self);
        
        if(0.000 == 1.000)
        {
            return; /* TODO retvalue? */
        }
        
        // *** UNPROCESSED OPCODE OP_EQ_E 78 1484 1505
        
        if()
        {
            return; /* TODO retvalue? */
        }
        
        return; /* TODO retvalue? */
    }
    
    traceline(inflictor.origin, targ.origin, 1.000, self);
    
    if(0.000 == 1.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_ADD_V 1516 1519 1522
    traceline(inflictor.origin, , 1.000, self);
    
    if(0.000 == 1.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_ADD_V 1529 1532 1535
    traceline(inflictor.origin, , 1.000, self);
    
    if(0.000 == 1.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_ADD_V 1542 1545 1548
    traceline(inflictor.origin, , 1.000, self);
    
    if(0.000 == 1.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_ADD_V 1555 1558 1561
    traceline(inflictor.origin, , 1.000, self);
    
    if(0.000 == 1.000)
    {
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

void() Killed;
entity targ;
// Killed
// function begins at statement 1384
OP_STORE_ENT	28	1568	0
OP_STORE_ENT	1566	28	0
OP_LOAD_F	28	152	1569
OP_LT	1569	1570	1571
OP_IFNOT	1571	3	0
OP_ADDRESS	28	152	1572
OP_STOREP_F	1570	1572	0
OP_LOAD_F	28	103	1573
OP_EQ_F	1573	232	1574
OP_LOAD_F	28	103	1575
OP_EQ_F	1575	227	1576
OP_OR	1574	1576	1577
OP_IFNOT	1577	5	0
OP_LOAD_FNC	28	362	1578
OP_CALL0	1578	0	0
OP_STORE_ENT	1568	28	0
OP_RETURN	0	0	0
OP_ADDRESS	28	181	1579
OP_STOREP_ENT	1567	1579	0
OP_LOAD_F	28	182	1580
OP_BITAND	1580	219	1581
OP_IFNOT	1581	6	0
OP_ADD_F	42	368	1582
OP_STORE_F	1582	42	0
OP_STORE_V	339	4	0
OP_STORE_V	302	7	0
OP_CALL2	493	0	0
OP_STORE_V	28	4	0
OP_STORE_V	1567	7	0
OP_CALL2	1482	0	0
OP_ADDRESS	28	163	1583
OP_STOREP_F	250	1583	0
OP_ADDRESS	28	146	1584
OP_STOREP_FNC	517	1584	0
OP_CALL0	1483	0	0
OP_LOAD_FNC	28	362	1585
OP_CALL0	1585	0	0
OP_STORE_ENT	1568	28	0
OP_DONE	0	0	0
voidTODO (entity targ, entity attacker) Killed =
{
    local entity oself;
    oself = self;
    self = targ;
    
    if(self.health < (-99.000))
    {
        self.health = -99.000;
    }
    
    
    if((self.movetype == 7.000) || (self.movetype == 0.000))
    {
        func000000();
        self = oself;
        return; /* TODO retvalue? */
    }
    
    self.enemy = attacker;
    
    if(self.flags & 32.000)
    {
        killed_monsters = 0.000 + 1.000;
        WriteByte(2.000, 27.000);
    }
    
    ClientObituary(self, attacker);
    self.takedamage = 0.000;
    self.touch = SUB_Null;
    monster_death_use();
    func000000();
    self = oself;
};

entity targ;
// T_Damage
// function begins at statement 1423
OP_LOAD_F	1586	163	1596
OP_NOT_F	1596	0	1597
OP_IFNOT	1597	2	0
OP_RETURN	0	0	0
OP_STORE_ENT	1588	347	0
OP_LOAD_F	1588	377	1598
OP_GT	1598	31	1599
OP_IFNOT	1599	3	0
OP_MUL_F	1589	371	1600
OP_STORE_F	1600	1589	0
OP_LOAD_F	1586	187	1601
OP_MUL_F	1601	1589	1602
OP_STORE_V	1602	4	0
OP_CALL1	482	0	0
OP_STORE_F	1	1594	0
OP_LOAD_F	1586	188	1603
OP_GE	1594	1603	1604
OP_IFNOT	1604	13	0
OP_LOAD_F	1586	188	1605
OP_STORE_F	1605	1594	0
OP_ADDRESS	1586	187	1606
OP_STOREP_F	337	1606	0
OP_ADDRESS	1586	162	1607
OP_LOAD_F	1586	162	1608
OP_LOAD_F	1586	162	1609
OP_BITOR	266	267	1610
OP_BITOR	1610	268	1611
OP_BITAND	1609	1611	1612
OP_SUB_F	1608	1612	1613
OP_STOREP_F	1613	1607	0
OP_ADDRESS	1586	188	1614
OP_LOAD_F	1586	188	1615
OP_SUB_F	1615	1594	1616
OP_STOREP_F	1616	1614	0
OP_SUB_F	1589	1594	1617
OP_STORE_V	1617	4	0
OP_CALL1	482	0	0
OP_STORE_F	1	1595	0
OP_LOAD_F	1586	182	1618
OP_BITAND	1618	217	1619
OP_IFNOT	1619	11	0
OP_ADDRESS	1586	198	1620
OP_LOAD_F	1586	198	1621
OP_ADD_F	1621	1595	1622
OP_STOREP_F	1622	1620	0
OP_ADDRESS	1586	199	1623
OP_LOAD_F	1586	199	1624
OP_ADD_F	1624	1594	1625
OP_STOREP_F	1625	1623	0
OP_ADDRESS	1586	200	1626
OP_STOREP_ENT	1587	1626	0
OP_NE_E	1587	30	1627
OP_LOAD_F	1586	103	1628
OP_EQ_F	1628	228	1629
OP_AND	1627	1629	1630
OP_IFNOT	1630	17	0
OP_LOAD_V	1586	105	1631
OP_LOAD_V	1587	94	1634
OP_LOAD_V	1587	98	1637
OP_ADD_V	1634	1637	1640
OP_MUL_VF	1640	1491	1643
OP_SUB_V	1631	1643	1646
OP_STORE_V	1646	1590	0
OP_STORE_V	1590	4	0
OP_CALL1	454	0	0
OP_STORE_V	1	1590	0
OP_ADDRESS	1586	113	1649
OP_LOAD_V	1586	113	1652
OP_MUL_VF	1590	1589	1655
OP_MUL_VF	1655	336	1658
OP_ADD_V	1652	1658	1661
OP_STOREP_V	1661	1649	0
OP_LOAD_F	1586	182	1664
OP_BITAND	1664	220	1665
OP_IFNOT	1665	2	0
OP_RETURN	0	0	0
OP_LOAD_F	1586	375	1666
OP_GE	1666	31	1667
OP_IFNOT	1667	14	0
OP_LOAD_F	28	380	1668
OP_LT	1668	31	1669
OP_IFNOT	1669	10	0
OP_STORE_V	1586	4	0
OP_STORE_V	323	7	0
OP_STORE_V	1670	10	0
OP_STORE_V	368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	380	1671
OP_ADD_F	31	369	1672
OP_STOREP_F	1672	1671	0
OP_RETURN	0	0	0
OP_EQ_F	37	368	1673
OP_LOAD_F	1586	184	1674
OP_GT	1674	337	1675
OP_AND	1673	1675	1676
OP_LOAD_F	1586	184	1677
OP_LOAD_F	1588	184	1678
OP_EQ_F	1677	1678	1679
OP_AND	1676	1679	1680
OP_NE_E	1586	1588	1681
OP_AND	1680	1681	1682
OP_LOAD_S	1588	129	1683
OP_EQ_S	1683	712	1684
OP_AND	1682	1684	1685
OP_LOAD_S	1587	129	1686
OP_NE_S	1686	1687	1688
OP_AND	1685	1688	1689
OP_IFNOT	1689	2	0
OP_RETURN	0	0	0
OP_ADDRESS	1586	152	1690
OP_LOAD_F	1586	152	1691
OP_SUB_F	1691	1595	1692
OP_STOREP_F	1692	1690	0
OP_LOAD_F	1586	152	1693
OP_LE	1693	337	1694
OP_IFNOT	1694	5	0
OP_STORE_V	1586	4	0
OP_STORE_V	1588	7	0
OP_CALL2	1565	0	0
OP_RETURN	0	0	0
OP_STORE_ENT	28	1593	0
OP_STORE_ENT	1586	28	0
OP_LOAD_F	28	182	1695
OP_BITAND	1695	219	1696
OP_NE_E	1588	30	1697
OP_AND	1696	1697	1698
OP_IFNOT	1698	23	0
OP_NE_E	28	1588	1699
OP_LOAD_ENT	28	181	1700
OP_NE_E	1588	1700	1701
OP_AND	1699	1701	1702
OP_IFNOT	1702	18	0
OP_LOAD_S	28	129	1703
OP_LOAD_S	1588	129	1704
OP_NE_S	1703	1704	1705
OP_LOAD_S	28	129	1706
OP_EQ_S	1706	1286	1707
OP_OR	1705	1707	1708
OP_IFNOT	1708	11	0
OP_LOAD_ENT	28	181	1709
OP_LOAD_S	1709	129	1710
OP_EQ_S	1710	712	1711
OP_IFNOT	1711	4	0
OP_ADDRESS	28	363	1712
OP_LOAD_ENT	28	181	1713
OP_STOREP_ENT	1713	1712	0
OP_ADDRESS	28	181	1714
OP_STOREP_ENT	1588	1714	0
OP_CALL0	1293	0	0
OP_LOAD_FNC	28	361	1715
OP_IFNOT	1715	10	0
OP_LOAD_FNC	28	361	1716
OP_STORE_V	1588	4	0
OP_STORE_V	1595	7	0
OP_CALL2	1716	0	0
OP_EQ_F	349	370	1717
OP_IFNOT	1717	4	0
OP_ADDRESS	28	374	1718
OP_ADD_F	31	313	1719
OP_STOREP_F	1719	1718	0
OP_STORE_ENT	1593	28	0
OP_DONE	0	0	0
voidTODO (entity targ, entity inflictor, entity attacker, float damage) T_Damage =
{
    local vector dir;
    local entity oldself;
    local float save;
    local float take;
    
    if(!targ.takedamage)
    {
        return; /* TODO retvalue? */
    }
    
    damage_attacker = attacker;
    // *** UNPROCESSED OPCODE OP_GT 1598 31 1599
    
    if()
    {
        // *** UNPROCESSED OPCODE OP_MUL_F 1589 371 1600
        damage = ;
    }
    
    // *** UNPROCESSED OPCODE OP_MUL_F 1601 1589 1602
    save = ceil();
    // *** UNPROCESSED OPCODE OP_GE 1594 1603 1604
    
    if()
    {
        save = targ.armorvalue;
        targ.armortype = 0.000;
        // *** UNPROCESSED OPCODE OP_BITOR 266 267 1610
        // *** UNPROCESSED OPCODE OP_BITOR 1610 268 1611
        // *** UNPROCESSED OPCODE OP_SUB_F 1608 1612 1613
        targ.items = ;
    }
    
    // *** UNPROCESSED OPCODE OP_SUB_F 1615 1594 1616
    targ.armorvalue = ;
    // *** UNPROCESSED OPCODE OP_SUB_F 1589 1594 1617
    take = ceil();
    
    if(targ.flags & 8.000)
    {
        targ.dmg_take = targ.dmg_take + take;
        targ.dmg_save = targ.dmg_save + save;
        targ.dmg_inflictor = inflictor;
    }
    
    
    if((inflictor != world) && (targ.movetype == 3.000))
    {
        // *** UNPROCESSED OPCODE OP_ADD_V 1634 1637 1640
        dir = targ.origin - ( * );
        dir = normalize(dir);
        // *** UNPROCESSED OPCODE OP_ADD_V 1652 1658 1661
        targ.velocity = ;
    }
    
    
    if(targ.flags & 64.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GE 1666 31 1667
    
    if()
    {
        
        if(self.invincible_sound < 0.000)
        {
            sound(targ, 3.000, "IMMEDIATE", 1.000, 1.000);
            self.invincible_sound = 0.000 + 2.000;
        }
        
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GT 1674 337 1675
    // *** UNPROCESSED OPCODE OP_EQ_S 1683 712 1684
    // *** UNPROCESSED OPCODE OP_NE_S 1686 1687 1688
    
    if((((((0.000 == 1.000) && ) && (targ.team == attacker.team)) && (targ != attacker)) && ) && )
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_SUB_F 1691 1595 1692
    targ.health = ;
    
    if(targ.health <= 0.000)
    {
        Killed(targ, attacker);
        return; /* TODO retvalue? */
    }
    
    oldself = self;
    self = targ;
    
    if((self.flags & 32.000) && (attacker != world))
    {
        
        if((self != attacker) && (attacker != self.enemy))
        {
            // *** UNPROCESSED OPCODE OP_NE_S 1703 1704 1705
            // *** UNPROCESSED OPCODE OP_EQ_S 1706 1286 1707
            
            if( || )
            {
                // *** UNPROCESSED OPCODE OP_EQ_S 1710 712 1711
                
                if()
                {
                    self.oldenemy = self.enemy;
                }
                
                self.enemy = attacker;
                FoundTarget();
            }
            
        }
        
    }
    
    
    if(self.th_pain)
    {
        func000000(attacker, take);
        
        if(0.000 == 3.000)
        {
            self.pain_finished = 0.000 + 5.000;
        }
        
    }
    
    self = oldself;
};

void() T_RadiusDamage;
entity inflictor;
// T_RadiusDamage
// function begins at statement 1586
OP_LOAD_V	1721	105	1730
OP_ADD_F	1723	1733	1734
OP_STORE_V	1730	4	0
OP_STORE_V	1734	7	0
OP_CALL2	467	0	0
OP_STORE_ENT	1	1726	0
OP_IFNOT	1726	51	0
OP_NE_E	1726	1724	1735
OP_IFNOT	1735	46	0
OP_LOAD_F	1726	163	1736
OP_IFNOT	1736	44	0
OP_LOAD_V	1726	105	1737
OP_LOAD_V	1726	134	1740
OP_LOAD_V	1726	138	1743
OP_ADD_V	1740	1743	1746
OP_MUL_VF	1746	1491	1749
OP_ADD_V	1737	1749	1752
OP_STORE_V	1752	1727	0
OP_LOAD_V	1721	105	1755
OP_SUB_V	1755	1727	1758
OP_STORE_V	1758	4	0
OP_CALL1	457	0	0
OP_MUL_F	1491	1	1761
OP_STORE_F	1761	1725	0
OP_LT	1725	337	1762
OP_IFNOT	1762	2	0
OP_STORE_F	337	1725	0
OP_SUB_F	1723	1725	1763
OP_STORE_F	1763	1725	0
OP_EQ_E	1726	1722	1764
OP_IFNOT	1764	3	0
OP_MUL_F	1725	1491	1765
OP_STORE_F	1765	1725	0
OP_GT	1725	337	1766
OP_IFNOT	1766	20	0
OP_STORE_V	1726	4	0
OP_STORE_V	1721	7	0
OP_CALL2	522	0	0
OP_IFNOT	1	16	0
OP_LOAD_S	1726	129	1767
OP_EQ_S	1767	1243	1768
OP_IFNOT	1768	8	0
OP_MUL_F	1725	1491	1769
OP_STORE_V	1726	4	0
OP_STORE_V	1721	7	0
OP_STORE_V	1722	10	0
OP_STORE_V	1769	13	0
OP_CALL4	520	0	0
OP_GOTO	6	0	0
OP_STORE_V	1726	4	0
OP_STORE_V	1721	7	0
OP_STORE_V	1722	10	0
OP_STORE_V	1725	13	0
OP_CALL4	520	0	0
OP_LOAD_ENT	1726	164	1770
OP_STORE_ENT	1770	1726	0
OP_GOTO	-50	0	0
OP_DONE	0	0	0
voidTODO (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage =
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + 40.000);
    
    if(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                // *** UNPROCESSED OPCODE OP_ADD_V 1740 1743 1746
                // *** UNPROCESSED OPCODE OP_ADD_V 1737 1749 1752
                org = ;
                vlen(inflictor.origin - org);
                // *** UNPROCESSED OPCODE OP_MUL_F 1491 1 1761
                points = ;
                
                if(points < 0.000)
                {
                    points = 0.000;
                }
                
                // *** UNPROCESSED OPCODE OP_SUB_F 1723 1725 1763
                points = ;
                // *** UNPROCESSED OPCODE OP_EQ_E 1726 1722 1764
                
                if()
                {
                    // *** UNPROCESSED OPCODE OP_MUL_F 1725 1491 1765
                    points = ;
                }
                
                // *** UNPROCESSED OPCODE OP_GT 1725 337 1766
                
                if()
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        // *** UNPROCESSED OPCODE OP_EQ_S 1767 1243 1768
                        if()
                        {
                            // *** UNPROCESSED OPCODE OP_MUL_F 1725 1491 1769
                            T_Damage(head, inflictor, attacker, );
                        }
                        else                        
                        {
                            T_Damage(head, inflictor, attacker, points);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
}

};

/* ERROR INDENTATION */
void() T_BeamDamage;
entity attacker;
// T_BeamDamage
// function begins at statement 1644
OP_LOAD_V	1772	105	1776
OP_ADD_F	1773	1733	1779
OP_STORE_V	1776	4	0
OP_STORE_V	1779	7	0
OP_CALL2	467	0	0
OP_STORE_ENT	1	1775	0
OP_IFNOT	1775	43	0
OP_LOAD_F	1775	163	1780
OP_IFNOT	1780	38	0
OP_LOAD_V	1772	105	1781
OP_LOAD_V	1775	105	1784
OP_SUB_V	1781	1784	1787
OP_STORE_V	1787	4	0
OP_CALL1	457	0	0
OP_MUL_F	1491	1	1790
OP_STORE_F	1790	1774	0
OP_LT	1774	337	1791
OP_IFNOT	1791	2	0
OP_STORE_F	337	1774	0
OP_SUB_F	1773	1774	1792
OP_STORE_F	1792	1774	0
OP_EQ_E	1775	1772	1793
OP_IFNOT	1793	3	0
OP_MUL_F	1774	1491	1794
OP_STORE_F	1794	1774	0
OP_GT	1774	337	1795
OP_IFNOT	1795	20	0
OP_STORE_V	1775	4	0
OP_STORE_V	1772	7	0
OP_CALL2	522	0	0
OP_IFNOT	1	16	0
OP_LOAD_S	1775	129	1796
OP_EQ_S	1796	1243	1797
OP_IFNOT	1797	8	0
OP_MUL_F	1774	1491	1798
OP_STORE_V	1775	4	0
OP_STORE_V	1772	7	0
OP_STORE_V	1772	10	0
OP_STORE_V	1798	13	0
OP_CALL4	520	0	0
OP_GOTO	6	0	0
OP_STORE_V	1775	4	0
OP_STORE_V	1772	7	0
OP_STORE_V	1772	10	0
OP_STORE_V	1774	13	0
OP_CALL4	520	0	0
OP_LOAD_ENT	1775	164	1799
OP_STORE_ENT	1799	1775	0
OP_GOTO	-42	0	0
OP_DONE	0	0	0
voidTODO (entity attacker, float damage) T_BeamDamage =
{
    local float points;
    local entity head;
    head = findradius(attacker.origin, damage + 40.000);
    
    if(head)
    {
        
        if(head.takedamage)
        {
            vlen(attacker.origin - head.origin);
            // *** UNPROCESSED OPCODE OP_MUL_F 1491 1 1790
            points = ;
            
            if(points < 0.000)
            {
                points = 0.000;
            }
            
            // *** UNPROCESSED OPCODE OP_SUB_F 1773 1774 1792
            points = ;
            // *** UNPROCESSED OPCODE OP_EQ_E 1775 1772 1793
            
            if()
            {
                // *** UNPROCESSED OPCODE OP_MUL_F 1774 1491 1794
                points = ;
            }
            
            // *** UNPROCESSED OPCODE OP_GT 1774 337 1795
            
            if()
            {
                
                if(CanDamage(head, attacker))
                {
                    // *** UNPROCESSED OPCODE OP_EQ_S 1796 1243 1797
                    if()
                    {
                        // *** UNPROCESSED OPCODE OP_MUL_F 1774 1491 1798
                        T_Damage(head, attacker, attacker, );
                    }
                    else                    
                    {
                        T_Damage(head, attacker, attacker, points);
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
}

};

/* ERROR INDENTATION */
