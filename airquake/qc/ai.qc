void () movetarget_f;
void () t_movetarget;
float current_yaw;
entity sight_entity;
float sight_entity_time;
// anglemod
// function begins at statement 1121, parm_start=1458
// OP_GE	1458	1459	1460
// OP_IFNOT	1460	4	0
// OP_SUB_F	1458	1459	1461
// OP_STORE_F	1461	1458	0
// OP_GOTO	-4	0	0
// OP_LT	1458	619	1462
// OP_IFNOT	1462	4	0
// OP_ADD_F	1458	1459	1463
// OP_STORE_F	1463	1458	0
// OP_GOTO	-4	0	0
// OP_RETURN	1458	0	0
// OP_DONE	0	0	0
float (float v) anglemod = 
{
    
    while(v >= 360.000)
    {
        v = v - 360.000;
    }
    
    
    while(v < 0.000)
    {
        v = v + 360.000;
    }
    
    return v;
};

// movetarget_f
// function begins at statement 1133, parm_start=1464
// OP_LOAD_S	28	222	1464
// OP_NOT_S	1464	0	1465
// OP_IFNOT	1465	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	219	1466
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	1467
// OP_STORE_V	1467	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	1466	0
// OP_ADDRESS	28	129	1468
// OP_STOREP_F	292	1468	0
// OP_ADDRESS	28	171	1469
// OP_STOREP_FNC	1454	1469	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1470	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_DONE	0	0	0
void () movetarget_f = 
{
    
    if(!self.targetname)
    {
        remove(self);
        return;
    }
    
    self.goalentity = find(world, targetname, self.target);
    self.solid = SOLID_TRIGGER;
    self.touch = t_movetarget;
    setsize(self, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
};

// path_corner
// function begins at statement 1155, parm_start=1477
// OP_ADDRESS	28	173	1477
// OP_STOREP_FNC	1453	1477	0
// OP_ADDRESS	28	175	1478
// OP_ADD_F	31	1349	1479
// OP_STOREP_F	1479	1478	0
// OP_DONE	0	0	0
void () path_corner = 
{
    self.think = movetarget_f;
    self.nextthink = time + 0.200;
};

// t_movetarget
// function begins at statement 1161, parm_start=1480
// OP_LOAD_ENT	29	467	1489
// OP_NE_E	1489	28	1490
// OP_IFNOT	1490	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	206	1491
// OP_NE_E	1491	30	1492
// OP_LOAD_S	29	154	1493
// OP_EQ_S	1493	1494	1495
// OP_AND	1492	1495	1496
// OP_IFNOT	1496	52	0
// OP_LOAD_ENT	29	206	1497
// OP_LOAD_V	1497	130	1498
// OP_LOAD_ENT	29	206	1501
// OP_LOAD_V	1501	159	1502
// OP_LOAD_ENT	29	206	1505
// OP_LOAD_V	1505	163	1506
// OP_ADD_V	1502	1506	1509
// OP_MUL_VF	1509	972	1512
// OP_ADD_V	1498	1512	1515
// OP_LOAD_V	29	130	1518
// OP_SUB_V	1515	1518	1521
// OP_STORE_V	1521	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	1486	0
// OP_STORE_V	30	4	0
// OP_STORE_V	233	7	0
// OP_LOAD_S	29	233	1524
// OP_STORE_V	1524	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	1480	0
// OP_STORE_F	619	1482	0
// OP_IFNOT	1480	27	0
// OP_LOAD_S	1480	154	1525
// OP_EQ_S	1525	1526	1527
// OP_IFNOT	1527	17	0
// OP_LOAD_V	1480	130	1528
// OP_LOAD_V	29	130	1531
// OP_SUB_V	1528	1531	1534
// OP_STORE_V	1534	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	1483	0
// OP_MUL_V	1483	1486	1537
// OP_STORE_F	1537	1481	0
// OP_GT	1481	1482	1538
// OP_IFNOT	1538	7	0
// OP_STORE_V	1480	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	29	467	1539
// OP_STOREP_ENT	1480	1539	0
// OP_STORE_F	1481	1482	0
// OP_STORE_V	1480	4	0
// OP_STORE_V	233	7	0
// OP_LOAD_S	29	233	1540
// OP_STORE_V	1540	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	1480	0
// OP_GOTO	-26	0	0
// OP_ADDRESS	29	464	1541
// OP_STOREP_ENT	28	1541	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	128	1542
// OP_NE_F	1542	283	1543
// OP_IFNOT	1543	6	0
// OP_LOAD_ENT	29	206	1544
// OP_NE_E	1544	30	1545
// OP_IFNOT	1545	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	29	206	1546
// OP_NE_E	1546	30	1547
// OP_LOAD_ENT	29	206	1548
// OP_LOAD_S	1548	154	1549
// OP_EQ_S	1549	1550	1551
// OP_AND	1547	1551	1552
// OP_IFNOT	1552	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	464	1553
// OP_STOREP_ENT	28	1553	0
// OP_STORE_ENT	28	1480	0
// OP_STORE_ENT	29	28	0
// OP_STORE_ENT	1480	29	0
// OP_ADDRESS	28	219	1554
// OP_ADDRESS	28	467	1555
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	29	221	1556
// OP_STORE_V	1556	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	1555	0
// OP_STOREP_ENT	1	1554	0
// OP_ADDRESS	28	216	1557
// OP_LOAD_ENT	28	219	1558
// OP_LOAD_V	1558	130	1559
// OP_LOAD_V	28	130	1562
// OP_SUB_V	1559	1562	1565
// OP_STORE_V	1565	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	1557	0
// OP_LOAD_ENT	28	467	1568
// OP_NOT_ENT	1568	0	1569
// OP_IFNOT	1569	7	0
// OP_ADDRESS	28	466	1570
// OP_ADD_F	31	1571	1572
// OP_STOREP_F	1572	1570	0
// OP_LOAD_FNC	28	405	1573
// OP_CALL0	1573	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	1480	28	0
// OP_DONE	0	0	0
void () t_movetarget = 
{
    local entity temp;
    local float r;
    local float mr;
    local vector v1;
    local vector v2;
    
    if(other.movetarget != self)
    {
        return;
    }
    
    
    if((other.enemy != world) && (other.classname == "monster_drone2"))
    {
        v2 = normalize((other.enemy.origin + ((other.enemy.mins + other.enemy.maxs) * 0.500)) - other.origin);
        temp = find(world, noise, other.noise);
        mr = 0.000;
        
        while(temp)
        {
            
            if(temp.classname == "path_corner")
            {
                v1 = normalize(temp.origin - other.origin);
                r = v1 * v2;
                
                if(r > mr)
                {
                    
                    if(visible(temp))
                    {
                        other.movetarget = temp;
                        mr = r;
                    }
                    
                }
                
            }
            
            temp = find(temp, noise, other.noise);
        }
        
        other.trigger_field = self;
        return;
    }
    
    if(other.movetype != MOVETYPE_STEP)
    {
        
        if(other.enemy != world)
        {
            return;
        }
        
    }
    else
    {
        
        if((other.enemy != world) && (other.enemy.classname == "tank"))
        {
            return;
        }
        
    }
    
    other.trigger_field = self;
    temp = self;
    self = other;
    other = temp;
    self.movetarget = find(world, targetname, other.target);
    self.goalentity = find(world, targetname, other.target);
    self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
    
    if(!self.movetarget)
    {
        self.pausetime = time + 999999.000;
        self.th_stand();
        return;
    }
    
    self = temp;
};

// range
// function begins at statement 1271, parm_start=1574
// OP_LOAD_V	28	130	1582
// OP_LOAD_V	28	191	1585
// OP_ADD_V	1582	1585	1588
// OP_STORE_V	1588	1575	0
// OP_LOAD_V	1574	130	1591
// OP_LOAD_V	1574	159	1594
// OP_LOAD_V	1574	163	1597
// OP_ADD_V	1594	1597	1600
// OP_MUL_VF	1600	972	1603
// OP_ADD_V	1591	1603	1606
// OP_LOAD_V	1574	191	1609
// OP_ADD_V	1606	1609	1612
// OP_STORE_V	1612	1578	0
// OP_SUB_V	1575	1578	1615
// OP_STORE_V	1615	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	1581	0
// OP_LT	1581	1618	1619
// OP_IFNOT	1619	2	0
// OP_RETURN	296	0	0
// OP_LT	1581	1620	1621
// OP_IFNOT	1621	2	0
// OP_RETURN	297	0	0
// OP_LT	1581	1622	1623
// OP_IFNOT	1623	2	0
// OP_RETURN	298	0	0
// OP_LT	1581	1624	1625
// OP_IFNOT	1625	3	0
// OP_RETURN	299	0	0
// OP_GOTO	2	0	0
// OP_RETURN	808	0	0
// OP_DONE	0	0	0
float (entity targ) range = 
{
    local vector spot1;
    local vector spot2;
    local float r;
    spot1 = self.origin + self.view_ofs;
    spot2 = (targ.origin + ((targ.mins + targ.maxs) * 0.500)) + targ.view_ofs;
    r = vlen(spot1 - spot2);
    
    if(r < 250.000)
    {
        return RANGE_MELEE;
    }
    
    
    if(r < 500.000)
    {
        return RANGE_NEAR;
    }
    
    
    if(r < 1000.000)
    {
        return RANGE_MID;
    }
    
    if(r < 3000.000)
    {
        return RANGE_FAR;
    }
    else
    {
        return 4.000;
    }
    
};

// visible
// function begins at statement 1303, parm_start=1626
// OP_LOAD_V	28	130	1633
// OP_LOAD_V	28	191	1636
// OP_ADD_V	1633	1636	1639
// OP_STORE_V	1639	1627	0
// OP_LOAD_V	1626	130	1642
// OP_LOAD_V	1626	159	1645
// OP_LOAD_V	1626	163	1648
// OP_ADD_V	1645	1648	1651
// OP_MUL_VF	1651	972	1654
// OP_ADD_V	1642	1654	1657
// OP_LOAD_V	1626	191	1660
// OP_ADD_V	1657	1660	1663
// OP_STORE_V	1663	1630	0
// OP_STORE_V	1627	4	0
// OP_STORE_V	1630	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_AND	79	80	1666
// OP_IFNOT	1666	2	0
// OP_RETURN	267	0	0
// OP_EQ_E	78	1626	1667
// OP_IFNOT	1667	2	0
// OP_RETURN	268	0	0
// OP_EQ_F	70	677	1668
// OP_IFNOT	1668	2	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float (entity targ) visible = 
{
    local vector spot1;
    local vector spot2;
    spot1 = self.origin + self.view_ofs;
    spot2 = (targ.origin + ((targ.mins + targ.maxs) * 0.500)) + targ.view_ofs;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent == targ)
    {
        return TRUE;
    }
    
    
    if(trace_fraction == 1.000)
    {
        return TRUE;
    }
    
    return FALSE;
};

// infront
// function begins at statement 1332, parm_start=1669
// OP_LOAD_V	28	142	1674
// OP_STORE_V	1674	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	1669	130	1677
// OP_LOAD_V	28	130	1680
// OP_SUB_V	1677	1680	1683
// OP_STORE_V	1683	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	1670	0
// OP_MUL_V	1670	59	1686
// OP_STORE_F	1686	1673	0
// OP_GT	1673	1687	1688
// OP_IFNOT	1688	2	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float (entity targ) infront = 
{
    local vector vec;
    local float dot;
    makevectors(self.angles);
    vec = normalize(targ.origin - self.origin);
    dot = vec * v_forward;
    
    if(dot > 0.300)
    {
        return TRUE;
    }
    
    return FALSE;
};

// HuntTarget
// function begins at statement 1348, parm_start=1690
// OP_ADDRESS	28	219	1690
// OP_LOAD_ENT	28	206	1691
// OP_STOREP_ENT	1691	1690	0
// OP_ADDRESS	28	173	1692
// OP_LOAD_FNC	28	407	1693
// OP_STOREP_FNC	1693	1692	0
// OP_ADDRESS	28	216	1694
// OP_LOAD_ENT	28	206	1695
// OP_LOAD_V	1695	130	1696
// OP_LOAD_V	28	130	1699
// OP_SUB_V	1696	1699	1702
// OP_STORE_V	1702	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	1694	0
// OP_ADDRESS	28	175	1705
// OP_ADD_F	31	655	1706
// OP_STOREP_F	1706	1705	0
// OP_STORE_V	677	4	0
// OP_CALL1	785	0	0
// OP_DONE	0	0	0
void () HuntTarget = 
{
    self.goalentity = self.enemy;
    self.think = self.th_run;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.nextthink = time + 0.100;
    SUB_AttackFinished(1.000);
};

// SightSound
// function begins at statement 1368, parm_start=1708
// OP_DONE	0	0	0
void () SightSound = 
{
    local float rsnd;
};

// FoundTarget
// function begins at statement 1369, parm_start=1710
// OP_LOAD_ENT	28	206	1710
// OP_LOAD_ENT	1710	226	1711
// OP_LOAD_S	1711	154	1712
// OP_EQ_S	1712	766	1713
// OP_IFNOT	1713	3	0
// OP_STORE_ENT	28	1456	0
// OP_STORE_F	31	1457	0
// OP_ADDRESS	28	437	1714
// OP_ADD_F	31	677	1715
// OP_STOREP_F	1715	1714	0
// OP_CALL0	1707	0	0
// OP_CALL0	1689	0	0
// OP_DONE	0	0	0
void () FoundTarget = 
{
    
    if(self.enemy.owner.classname == "player")
    {
        sight_entity = self;
        sight_entity_time = time;
    }
    
    self.show_hostile = time + 1.000;
    SightSound();
    HuntTarget();
};

// FindTarget
// function begins at statement 1382, parm_start=1717
// OP_LOAD_S	28	243	1726
// OP_EQ_S	1726	101	1727
// OP_IFNOT	1727	3	0
// OP_STORE_S	102	1725	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	243	1728
// OP_EQ_S	1728	102	1729
// OP_IFNOT	1729	6	0
// OP_IFNOT	35	3	0
// OP_STORE_S	103	1725	0
// OP_GOTO	2	0	0
// OP_STORE_S	101	1725	0
// OP_GOTO	2	0	0
// OP_STORE_S	102	1725	0
// OP_SUB_F	31	655	1730
// OP_GE	1457	1730	1731
// OP_LOAD_F	28	220	1732
// OP_BITAND	1732	677	1733
// OP_NOT_F	1733	0	1734
// OP_AND	1731	1734	1735
// OP_IFNOT	1735	14	0
// OP_STORE_ENT	1456	1718	0
// OP_LOAD_ENT	1718	206	1736
// OP_LOAD_ENT	28	206	1737
// OP_EQ_E	1736	1737	1738
// OP_IFNOT	1738	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	1718	243	1739
// OP_LOAD_S	28	243	1740
// OP_EQ_S	1739	1740	1741
// OP_IFNOT	1741	3	0
// OP_LOAD_ENT	1718	206	1742
// OP_STORE_ENT	1742	1718	0
// OP_GOTO	40	0	0
// OP_STORE_F	1743	1721	0
// OP_LOAD_ENT	28	206	1744
// OP_IFNOT	1744	12	0
// OP_LOAD_ENT	28	206	1745
// OP_STORE_V	1745	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_ENT	28	206	1746
// OP_LOAD_V	1746	130	1747
// OP_LOAD_V	28	130	1750
// OP_SUB_V	1747	1750	1753
// OP_STORE_V	1753	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	1721	0
// OP_STORE_ENT	30	1718	0
// OP_STORE_V	1725	4	0
// OP_CALL1	845	0	0
// OP_STORE_ENT	1	1717	0
// OP_LOAD_V	1717	130	1756
// OP_LOAD_V	1717	159	1759
// OP_LOAD_V	1717	163	1762
// OP_ADD_V	1759	1762	1765
// OP_MUL_VF	1765	972	1768
// OP_ADD_V	1756	1768	1771
// OP_STORE_V	1771	1722	0
// OP_LOAD_V	28	130	1774
// OP_SUB_V	1722	1774	1777
// OP_STORE_V	1777	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	1720	0
// OP_LT	1720	1721	1780
// OP_IFNOT	1780	5	0
// OP_STORE_V	1717	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	2	0
// OP_STORE_ENT	1717	1718	0
// OP_EQ_E	1718	30	1781
// OP_IFNOT	1781	2	0
// OP_RETURN	267	0	0
// OP_LOAD_ENT	28	206	1782
// OP_EQ_E	1718	1782	1783
// OP_IFNOT	1783	2	0
// OP_RETURN	267	0	0
// OP_LOAD_ENT	1718	226	1784
// OP_LOAD_S	1784	154	1785
// OP_EQ_S	1785	766	1786
// OP_IFNOT	1786	6	0
// OP_LOAD_ENT	1718	226	1787
// OP_LOAD_F	1787	207	1788
// OP_BITAND	1788	275	1789
// OP_IFNOT	1789	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	1718	187	1790
// OP_BITAND	1790	317	1791
// OP_IFNOT	1791	2	0
// OP_RETURN	267	0	0
// OP_STORE_V	1718	4	0
// OP_CALL1	1369	0	0
// OP_STORE_F	1	1720	0
// OP_LOAD_S	28	154	1792
// OP_EQ_S	1792	1793	1794
// OP_IFNOT	1794	26	0
// OP_STORE_V	1718	4	0
// OP_CALL1	1368	0	0
// OP_NOT_F	1	0	1795
// OP_IFNOT	1795	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	1718	239	1796
// OP_LOAD_F	1718	177	1797
// OP_MUL_F	1797	1798	1799
// OP_GT	1796	1799	1800
// OP_IFNOT	1800	2	0
// OP_RETURN	267	0	0
// OP_LOAD_S	1718	155	1801
// OP_EQ_S	1801	1802	1803
// OP_LOAD_S	1718	155	1804
// OP_EQ_S	1804	1805	1806
// OP_OR	1803	1806	1807
// OP_IFNOT	1807	5	0
// OP_LOAD_F	1718	255	1808
// OP_LT	1808	31	1809
// OP_IFNOT	1809	2	0
// OP_RETURN	267	0	0
// OP_EQ_F	1720	808	1810
// OP_IFNOT	1810	2	0
// OP_RETURN	267	0	0
// OP_GOTO	27	0	0
// OP_EQ_F	1720	299	1811
// OP_IFNOT	1811	2	0
// OP_RETURN	267	0	0
// OP_STORE_V	1718	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	1812
// OP_IFNOT	1812	2	0
// OP_RETURN	267	0	0
// OP_EQ_F	1720	297	1813
// OP_IFNOT	1813	10	0
// OP_LOAD_F	1718	437	1814
// OP_LT	1814	31	1815
// OP_STORE_V	1718	4	0
// OP_CALL1	1368	0	0
// OP_NOT_F	1	0	1816
// OP_AND	1815	1816	1817
// OP_IFNOT	1817	2	0
// OP_RETURN	267	0	0
// OP_GOTO	8	0	0
// OP_EQ_F	1720	298	1818
// OP_IFNOT	1818	6	0
// OP_STORE_V	1718	4	0
// OP_CALL1	1368	0	0
// OP_NOT_F	1	0	1819
// OP_IFNOT	1819	2	0
// OP_RETURN	267	0	0
// OP_ADDRESS	28	206	1820
// OP_STOREP_ENT	1718	1820	0
// OP_CALL0	1709	0	0
// OP_RETURN	268	0	0
// OP_DONE	0	0	0
float () FindTarget = 
{
    local entity e;
    local entity client;
    local entity e2;
    local float r;
    local float mr;
    local vector org;
    local string teststr;
    if(self.ts == T0)
    {
        teststr = T1;
    }
    else
    {
        if(self.ts == T1)
        {
            if(deathmatch)
            {
                teststr = T2;
            }
            else
            {
                teststr = T0;
            }
            
        }
        else
        {
            teststr = T1;
        }
        
    }
    
    if((sight_entity_time >= (time - 0.100)) && (!(self.spawnflags & 1.000)))
    {
        client = sight_entity;
        
        if(client.enemy == self.enemy)
        {
            return;
        }
        
        
        if(client.ts == self.ts)
        {
            client = client.enemy;
        }
        
    }
    else
    {
        mr = 10000.000;
        
        if(self.enemy)
        {
            
            if(visible(self.enemy))
            {
                mr = vlen(self.enemy.origin - self.origin);
            }
            
        }
        
        client = world;
        e = checkcli(teststr);
        org = e.origin + ((e.mins + e.maxs) * 0.500);
        r = vlen(org - self.origin);
        
        if(r < mr)
        {
            
            if(visible(e))
            {
                client = e;
            }
            
        }
        
        
        if(client == world)
        {
            return FALSE;
        }
        
    }
    
    
    if(client == self.enemy)
    {
        return FALSE;
    }
    
    
    if(client.owner.classname == "player")
    {
        
        if(client.owner.flags & FL_NOTARGET)
        {
            return FALSE;
        }
        
    }
    
    
    if(client.items & IT_INVISIBILITY)
    {
        return FALSE;
    }
    
    r = range(client);
    if(self.classname == "monster_rad")
    {
        
        if(!infront(client))
        {
            return FALSE;
        }
        
        
        if(client.pdmg > (client.health * 1.500))
        {
            return FALSE;
        }
        
        
        if((client.model == "progs/plane3.mdl") || (client.model == "progs/plane3b.mdl"))
        {
            
            if(client.unstealth_finished < time)
            {
                return FALSE;
            }
            
        }
        
        
        if(r == 4.000)
        {
            return FALSE;
        }
        
    }
    else
    {
        
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
        
    }
    
    self.enemy = client;
    FoundTarget();
    return TRUE;
};

// ai_forward
// function begins at statement 1534, parm_start=1822
// OP_LOAD_F	28	144	1823
// OP_STORE_V	1823	4	0
// OP_STORE_V	1822	7	0
// OP_CALL2	526	0	0
// OP_DONE	0	0	0
void (float dist) ai_forward = 
{
    walkmove(self.angles_y, dist);
};

// ai_back
// function begins at statement 1539, parm_start=1825
// OP_LOAD_F	28	144	1826
// OP_ADD_F	1826	1827	1828
// OP_STORE_V	1828	4	0
// OP_STORE_V	1825	7	0
// OP_CALL2	526	0	0
// OP_DONE	0	0	0
void (float dist) ai_back = 
{
    walkmove(self.angles_y + 180.000, dist);
};

// ai_pain
// function begins at statement 1545, parm_start=1830
// OP_STORE_V	1830	4	0
// OP_CALL1	1824	0	0
// OP_DONE	0	0	0
void (float dist) ai_pain = 
{
    ai_back(dist);
};

// ai_painforward
// function begins at statement 1548, parm_start=1832
// OP_LOAD_F	28	216	1833
// OP_STORE_V	1833	4	0
// OP_STORE_V	1832	7	0
// OP_CALL2	526	0	0
// OP_DONE	0	0	0
void (float dist) ai_painforward = 
{
    walkmove(self.ideal_yaw, dist);
};

// ai_walk
// function begins at statement 1553, parm_start=1835
// OP_STORE_F	1835	390	0
// OP_LOAD_S	28	154	1839
// OP_EQ_S	1839	1840	1841
// OP_IFNOT	1841	4	0
// OP_STORE_V	1835	4	0
// OP_CALL1	550	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	1835	4	0
// OP_CALL1	550	0	0
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
// function begins at statement 1566, parm_start=1843
// OP_CALL0	1716	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	466	1843
// OP_GT	31	1843	1844
// OP_IFNOT	1844	4	0
// OP_LOAD_FNC	28	406	1845
// OP_CALL0	1845	0	0
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
// function begins at statement 1576, parm_start=1847
// OP_CALL0	1716	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	540	0	0
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
// function begins at statement 1581, parm_start=1847
// OP_LOAD_V	28	130	1856
// OP_SUB_V	1856	1847	1859
// OP_STORE_V	1859	1850	0
// OP_STORE_F	75	1853	0
// OP_SUB_F	619	74	1862
// OP_STORE_F	1862	1854	0
// OP_STORE_F	619	1855	0
// OP_MUL_V	1850	1853	1863
// OP_GT	1863	619	1864
// OP_IFNOT	1864	5	0
// OP_SUB_F	619	75	1865
// OP_STORE_F	1865	1850	0
// OP_STORE_F	74	1851	0
// OP_GOTO	4	0	0
// OP_STORE_F	75	1850	0
// OP_SUB_F	619	74	1866
// OP_STORE_F	1866	1851	0
// OP_STORE_F	619	1852	0
// OP_ADDRESS	28	216	1867
// OP_STORE_V	1850	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	1867	0
// OP_DONE	0	0	0
void (vector dest3) ChooseTurn = 
{
    local vector dir;
    local vector newdir;
    dir = self.origin - dest3;
    newdir_x = trace_plane_normal_y;
    newdir_y = 0.000 - trace_plane_normal_x;
    newdir_z = 0.000;
    if((dir * newdir) > 0.000)
    {
        dir_x = 0.000 - trace_plane_normal_y;
        dir_y = trace_plane_normal_x;
    }
    else
    {
        dir_x = trace_plane_normal_y;
        dir_y = 0.000 - trace_plane_normal_x;
    }
    
    dir_z = 0.000;
    self.ideal_yaw = vectoyaw(dir);
};

// FacingIdeal
// function begins at statement 1604, parm_start=1869
// OP_LOAD_F	28	144	1870
// OP_LOAD_F	28	216	1871
// OP_SUB_F	1870	1871	1872
// OP_STORE_V	1872	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	1869	0
// OP_GT	1869	1193	1873
// OP_LT	1869	1874	1875
// OP_AND	1873	1875	1876
// OP_IFNOT	1876	2	0
// OP_RETURN	267	0	0
// OP_RETURN	268	0	0
// OP_DONE	0	0	0
float () FacingIdeal = 
{
    local float delta;
    delta = anglemod(self.angles_y - self.ideal_yaw);
    
    if((delta > 45.000) && (delta < 315.000))
    {
        return FALSE;
    }
    
    return TRUE;
};

// CheckAnyAttack
// function begins at statement 1617, parm_start=1878
// OP_NOT_F	1302	0	1878
// OP_IFNOT	1878	2	0
// OP_RETURN	0	0	0
// OP_CALL0	1306	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
void () CheckAnyAttack = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    return CheckAttack();
};

// ai_run_melee
// function begins at statement 1623, parm_start=1880
// OP_ADDRESS	28	216	1880
// OP_STOREP_F	1305	1880	0
// OP_CALL0	540	0	0
// OP_CALL0	1868	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	409	1881
// OP_CALL0	1881	0	0
// OP_ADDRESS	28	416	1882
// OP_STOREP_F	417	1882	0
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
// function begins at statement 1633, parm_start=1884
// OP_ADDRESS	28	216	1884
// OP_STOREP_F	1305	1884	0
// OP_CALL0	540	0	0
// OP_CALL0	1868	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	408	1885
// OP_CALL0	1885	0	0
// OP_ADDRESS	28	416	1886
// OP_STOREP_F	417	1886	0
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
// function begins at statement 1643, parm_start=1888
// OP_ADDRESS	28	216	1889
// OP_STOREP_F	1305	1889	0
// OP_CALL0	540	0	0
// OP_LOAD_F	28	414	1890
// OP_IFNOT	1890	3	0
// OP_STORE_F	1268	1888	0
// OP_GOTO	2	0	0
// OP_STORE_F	1891	1888	0
// OP_LOAD_F	28	216	1892
// OP_ADD_F	1892	1888	1893
// OP_STORE_V	1893	4	0
// OP_STORE_V	390	7	0
// OP_CALL2	526	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	414	1894
// OP_LOAD_F	28	414	1895
// OP_SUB_F	677	1895	1896
// OP_STOREP_F	1896	1894	0
// OP_LOAD_F	28	216	1897
// OP_SUB_F	1897	1888	1898
// OP_STORE_V	1898	4	0
// OP_STORE_V	390	7	0
// OP_CALL2	526	0	0
// OP_DONE	0	0	0
void () ai_run_slide = 
{
    local float ofs;
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    if(self.lefty)
    {
        ofs = 90.000;
    }
    else
    {
        ofs = -90.000;
    }
    
    
    if(walkmove(self.ideal_yaw + ofs, movedist))
    {
        return;
    }
    
    self.lefty = 1.000 - self.lefty;
    walkmove(self.ideal_yaw - ofs, movedist);
};

// ai_run
// function begins at statement 1668, parm_start=1900
// OP_STORE_F	1900	390	0
// OP_LOAD_ENT	28	206	1909
// OP_LOAD_F	1909	177	1910
// OP_LE	1910	619	1911
// OP_IFNOT	1911	20	0
// OP_ADDRESS	28	206	1912
// OP_STOREP_ENT	30	1912	0
// OP_LOAD_ENT	28	412	1913
// OP_LOAD_F	1913	177	1914
// OP_GT	1914	619	1915
// OP_IFNOT	1915	6	0
// OP_ADDRESS	28	206	1916
// OP_LOAD_ENT	28	412	1917
// OP_STOREP_ENT	1917	1916	0
// OP_CALL0	1689	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	467	1918
// OP_IFNOT	1918	4	0
// OP_LOAD_FNC	28	406	1919
// OP_CALL0	1919	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	405	1920
// OP_CALL0	1920	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	437	1921
// OP_ADD_F	31	677	1922
// OP_STOREP_F	1922	1921	0
// OP_LOAD_ENT	28	206	1923
// OP_STORE_V	1923	4	0
// OP_CALL1	792	0	0
// OP_STORE_F	1	1302	0
// OP_IFNOT	1302	4	0
// OP_ADDRESS	28	415	1924
// OP_ADD_F	31	813	1925
// OP_STOREP_F	1925	1924	0
// OP_LOAD_F	28	415	1926
// OP_LT	1926	31	1927
// OP_AND	36	1927	1928
// OP_IFNOT	1928	4	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	1929
// OP_STORE_V	1929	4	0
// OP_CALL1	1368	0	0
// OP_STORE_F	1	1303	0
// OP_LOAD_ENT	28	206	1930
// OP_STORE_V	1930	4	0
// OP_CALL1	1369	0	0
// OP_STORE_F	1	1304	0
// OP_LOAD_ENT	28	206	1931
// OP_LOAD_V	1931	130	1932
// OP_LOAD_V	28	130	1935
// OP_SUB_V	1932	1935	1938
// OP_STORE_V	1938	4	0
// OP_CALL1	507	0	0
// OP_STORE_F	1	1305	0
// OP_LOAD_F	28	416	1941
// OP_EQ_F	1941	420	1942
// OP_IFNOT	1942	3	0
// OP_CALL0	1883	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	416	1943
// OP_EQ_F	1943	419	1944
// OP_IFNOT	1944	3	0
// OP_CALL0	1879	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1877	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	416	1945
// OP_EQ_F	1945	418	1946
// OP_IFNOT	1946	3	0
// OP_CALL0	1887	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	1900	4	0
// OP_CALL1	550	0	0
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
    
    if(self.enemy.health <= 0.000)
    {
        self.enemy = world;
        if(self.oldenemy.health > 0.000)
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
    
    self.show_hostile = time + 1.000;
    enemy_vis = visible(self.enemy);
    
    if(enemy_vis)
    {
        self.search_time = time + 5.000;
    }
    
    
    if(coop && (self.search_time < time))
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

