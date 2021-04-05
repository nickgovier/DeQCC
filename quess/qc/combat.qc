void () T_MissileTouch;
void () info_player_start;
void (entity targ, entity attacker) ClientObituary;
void () monster_death_use;
// CanDamage
// function begins at statement 1463, parm_start=1720
// OP_LOAD_F	1720	103	1722
// OP_EQ_F	1722	233	1723
// OP_IFNOT	1723	18	0
// OP_LOAD_V	1721	105	1724
// OP_STORE_V	1724	4	0
// OP_LOAD_V	1720	94	1728
// OP_LOAD_V	1720	98	1731
// OP_ADD_V	1728	1731	1734
// OP_MUL_FV	1727	1734	1737
// OP_STORE_V	1737	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1740
// OP_IFNOT	1740	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	1720	1741
// OP_IFNOT	1741	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_LOAD_V	1721	105	1742
// OP_STORE_V	1742	4	0
// OP_LOAD_V	1720	105	1745
// OP_STORE_V	1745	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1748
// OP_IFNOT	1748	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1721	105	1749
// OP_STORE_V	1749	4	0
// OP_LOAD_V	1720	105	1752
// OP_ADD_V	1752	1755	1758
// OP_STORE_V	1758	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1761
// OP_IFNOT	1761	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1721	105	1762
// OP_STORE_V	1762	4	0
// OP_LOAD_V	1720	105	1765
// OP_ADD_V	1765	1768	1771
// OP_STORE_V	1771	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1774
// OP_IFNOT	1774	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1721	105	1775
// OP_STORE_V	1775	4	0
// OP_LOAD_V	1720	105	1778
// OP_ADD_V	1778	1781	1784
// OP_STORE_V	1784	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1787
// OP_IFNOT	1787	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1721	105	1788
// OP_STORE_V	1788	4	0
// OP_LOAD_V	1720	105	1791
// OP_ADD_V	1791	1794	1797
// OP_STORE_V	1797	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	1800
// OP_IFNOT	1800	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ, entity inflictor) CanDamage = 
{
    
    if(targ.movetype == MOVETYPE_PUSH)
    {
        traceline(inflictor.origin, 0.5 * (targ.absmin + targ.absmax), TRUE, self);
        
        if(trace_fraction == 1)
        {
            return TRUE;
        }
        
        
        if(trace_ent == targ)
        {
            return TRUE;
        }
        
        return FALSE;
    }
    
    traceline(inflictor.origin, targ.origin, TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Killed
// function begins at statement 1539, parm_start=1802
// OP_STORE_ENT	28	1804	0
// OP_STORE_ENT	1802	28	0
// OP_LOAD_F	28	152	1805
// OP_LT	1805	1806	1807
// OP_IFNOT	1807	3	0
// OP_ADDRESS	28	152	1808
// OP_STOREP_F	1806	1808	0
// OP_ADDRESS	28	181	1809
// OP_STOREP_ENT	1803	1809	0
// OP_LOAD_F	28	182	1810
// OP_BITAND	1810	219	1811
// OP_IFNOT	1811	6	0
// OP_ADD_F	42	708	1812
// OP_STORE_F	1812	42	0
// OP_STORE_V	340	4	0
// OP_STORE_V	303	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1803	7	0
// OP_CALL2	1718	0	0
// OP_ADDRESS	28	163	1813
// OP_STOREP_F	251	1813	0
// OP_ADDRESS	28	146	1814
// OP_STOREP_FNC	518	1814	0
// OP_CALL0	1719	0	0
// OP_LOAD_FNC	28	363	1815
// OP_CALL0	1815	0	0
// OP_STORE_ENT	1804	28	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) Killed = 
{
    local entity oself;
    oself = self;
    self = targ;
    
    if(self.health < -99)
    {
        self.health = -99;
    }
    
    self.enemy = attacker;
    
    if(self.flags & FL_MONSTER)
    {
        killed_monsters = killed_monsters + 1;
        WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    }
    
    ClientObituary(self, attacker);
    self.takedamage = DAMAGE_NO;
    self.touch = SUB_Null;
    monster_death_use();
    self.th_die();
    self = oself;
};

// T_Damage
// function begins at statement 1568, parm_start=1816
// OP_LOAD_F	1816	163	1832
// OP_NOT_F	1832	0	1833
// OP_IFNOT	1833	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	1818	348	0
// OP_NOT_F	539	0	1834
// OP_IFNOT	1834	7	0
// OP_MUL_F	1819	1835	1836
// OP_STORE_F	1836	1819	0
// OP_LOAD_ENT	526	181	1837
// OP_NE_E	1816	1837	1838
// OP_IFNOT	1838	2	0
// OP_STORE_F	650	1819	0
// OP_LOAD_F	1816	187	1839
// OP_MUL_F	1839	1819	1840
// OP_STORE_V	1840	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	1824	0
// OP_LOAD_F	1816	188	1841
// OP_GE	1824	1841	1842
// OP_IFNOT	1842	13	0
// OP_LOAD_F	1816	188	1843
// OP_STORE_F	1843	1824	0
// OP_ADDRESS	1816	187	1844
// OP_STOREP_F	650	1844	0
// OP_ADDRESS	1816	162	1845
// OP_LOAD_F	1816	162	1846
// OP_LOAD_F	1816	162	1847
// OP_BITOR	267	268	1848
// OP_BITOR	1848	269	1849
// OP_BITAND	1847	1849	1850
// OP_SUB_F	1846	1850	1851
// OP_STOREP_F	1851	1845	0
// OP_ADDRESS	1816	188	1852
// OP_LOAD_F	1816	188	1853
// OP_SUB_F	1853	1824	1854
// OP_STOREP_F	1854	1852	0
// OP_SUB_F	1819	1824	1855
// OP_STORE_V	1855	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	1825	0
// OP_LOAD_F	1816	182	1856
// OP_BITAND	1856	217	1857
// OP_IFNOT	1857	11	0
// OP_ADDRESS	1816	198	1858
// OP_LOAD_F	1816	198	1859
// OP_ADD_F	1859	1825	1860
// OP_STOREP_F	1860	1858	0
// OP_ADDRESS	1816	199	1861
// OP_LOAD_F	1816	199	1862
// OP_ADD_F	1862	1824	1863
// OP_STOREP_F	1863	1861	0
// OP_ADDRESS	1816	200	1864
// OP_STOREP_ENT	1817	1864	0
// OP_NE_E	1817	30	1865
// OP_LOAD_F	1816	103	1866
// OP_EQ_F	1866	229	1867
// OP_AND	1865	1867	1868
// OP_IFNOT	1868	17	0
// OP_LOAD_V	1816	105	1869
// OP_LOAD_V	1817	94	1872
// OP_LOAD_V	1817	98	1875
// OP_ADD_V	1872	1875	1878
// OP_MUL_VF	1878	1727	1881
// OP_SUB_V	1869	1881	1884
// OP_STORE_V	1884	1820	0
// OP_STORE_V	1820	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	1820	0
// OP_ADDRESS	1816	113	1887
// OP_LOAD_V	1816	113	1890
// OP_MUL_VF	1820	1819	1893
// OP_MUL_VF	1893	1502	1896
// OP_ADD_V	1890	1896	1899
// OP_STOREP_V	1899	1887	0
// OP_LOAD_F	1816	182	1902
// OP_BITAND	1902	220	1903
// OP_IFNOT	1903	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	1816	376	1904
// OP_GE	1904	31	1905
// OP_IFNOT	1905	14	0
// OP_LOAD_F	28	381	1906
// OP_LT	1906	31	1907
// OP_IFNOT	1907	10	0
// OP_STORE_V	1816	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	1908	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	381	1909
// OP_ADD_F	31	929	1910
// OP_STOREP_F	1910	1909	0
// OP_RETURN	0	0	0
// OP_EQ_F	37	708	1911
// OP_LOAD_F	1816	184	1912
// OP_GT	1912	650	1913
// OP_AND	1911	1913	1914
// OP_LOAD_F	1816	184	1915
// OP_LOAD_F	1818	184	1916
// OP_EQ_F	1915	1916	1917
// OP_AND	1914	1917	1918
// OP_IFNOT	1918	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	526	181	1919
// OP_EQ_E	1816	1919	1920
// OP_OR	1920	539	1921
// OP_IFNOT	1921	28	0
// OP_ADDRESS	1816	152	1922
// OP_LOAD_F	1816	152	1923
// OP_SUB_F	1923	1825	1924
// OP_STOREP_F	1924	1922	0
// OP_CALL0	453	0	0
// OP_MUL_VF	1925	1	1928
// OP_MUL_VF	1928	1931	1932
// OP_ADD_V	1820	1932	1935
// OP_CALL0	453	0	0
// OP_MUL_VF	1938	1	1941
// OP_MUL_VF	1941	1931	1944
// OP_ADD_V	1935	1944	1947
// OP_CALL0	453	0	0
// OP_MUL_VF	613	1	1950
// OP_MUL_VF	1950	1931	1953
// OP_ADD_V	1947	1953	1956
// OP_STORE_V	1956	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	1826	0
// OP_MUL_VF	1826	1660	1959
// OP_STORE_V	1959	1826	0
// OP_LOAD_V	1816	105	1962
// OP_STORE_V	1962	1829	0
// OP_STORE_V	1829	4	0
// OP_STORE_V	1826	7	0
// OP_STORE_V	1825	10	0
// OP_CALL3	586	0	0
// OP_LOAD_F	1816	152	1965
// OP_LE	1965	650	1966
// OP_IFNOT	1966	15	0
// OP_STORE_V	1816	4	0
// OP_STORE_V	1818	7	0
// OP_CALL2	1801	0	0
// OP_NOT_F	539	0	1967
// OP_IFNOT	1967	9	0
// OP_STORE_V	524	4	0
// OP_CALL1	585	0	0
// OP_ADDRESS	524	153	1968
// OP_LOAD_F	524	153	1969
// OP_ADD_F	1969	708	1970
// OP_STOREP_F	1970	1968	0
// OP_ADDRESS	526	181	1971
// OP_STOREP_ENT	30	1971	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1823	0
// OP_STORE_ENT	1816	28	0
// OP_IFNOT	539	25	0
// OP_LOAD_F	28	182	1972
// OP_BITAND	1972	219	1973
// OP_NE_E	1818	30	1974
// OP_AND	1973	1974	1975
// OP_IFNOT	1975	20	0
// OP_NE_E	28	1818	1976
// OP_LOAD_ENT	28	181	1977
// OP_NE_E	1818	1977	1978
// OP_AND	1976	1978	1979
// OP_IFNOT	1979	15	0
// OP_LOAD_ENT	28	201	1980
// OP_LOAD_ENT	1818	201	1981
// OP_NE_E	1980	1981	1982
// OP_IFNOT	1982	11	0
// OP_LOAD_ENT	28	181	1983
// OP_LOAD_S	1983	129	1984
// OP_EQ_S	1984	797	1985
// OP_IFNOT	1985	4	0
// OP_ADDRESS	28	364	1986
// OP_LOAD_ENT	28	181	1987
// OP_STOREP_ENT	1987	1986	0
// OP_ADDRESS	28	181	1988
// OP_STOREP_ENT	1818	1988	0
// OP_CALL0	1384	0	0
// OP_LOAD_FNC	28	362	1989
// OP_IFNOT	1989	10	0
// OP_NE_E	28	526	1990
// OP_IFNOT	1990	8	0
// OP_ADDRESS	28	375	1991
// OP_ADD_F	31	1660	1992
// OP_STOREP_F	1992	1991	0
// OP_LOAD_FNC	28	362	1993
// OP_STORE_V	1818	4	0
// OP_STORE_V	1825	7	0
// OP_CALL2	1993	0	0
// OP_STORE_ENT	1823	28	0
// OP_DONE	0	0	0
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage = 
{
    local vector dir;
    local entity oldself;
    local float save;
    local float take;
    local vector vel;
    local vector org;
    
    if(!targ.takedamage)
    {
        return;
    }
    
    damage_attacker = attacker;
    
    if(!king_dead)
    {
        damage = damage * 4;
        
        if(targ != current_selected.enemy)
        {
            damage = 0;
        }
        
    }
    
    save = ceil(targ.armortype * damage);
    
    if(save >= targ.armorvalue)
    {
        save = targ.armorvalue;
        targ.armortype = 0;
        targ.items = targ.items - (targ.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3));
    }
    
    targ.armorvalue = targ.armorvalue - save;
    take = ceil(damage - save);
    
    if(targ.flags & FL_CLIENT)
    {
        targ.dmg_take = targ.dmg_take + take;
        targ.dmg_save = targ.dmg_save + save;
        targ.dmg_inflictor = inflictor;
    }
    
    
    if((inflictor != world) && (targ.movetype == MOVETYPE_WALK))
    {
        dir = targ.origin - ((inflictor.absmin + inflictor.absmax) * 0.5);
        dir = normalize(dir);
        targ.velocity = targ.velocity + ((dir * damage) * 8);
    }
    
    
    if(targ.flags & FL_GODMODE)
    {
        return;
    }
    
    
    if(targ.invincible_finished >= time)
    {
        
        if(self.invincible_sound < time)
        {
            sound(targ, CHAN_ITEM, "items/protect3.wav", 1, ATTN_NORM);
            self.invincible_sound = time + 2;
        }
        
        return;
    }
    
    
    if(((teamplay == 1) && (targ.team > 0)) && (targ.team == attacker.team))
    {
        return;
    }
    
    
    if((targ == current_selected.enemy) || king_dead)
    {
        targ.health = targ.health - take;
        vel = normalize(((dir + (('1.000 0.000 0.000' * random()) * 10)) + (('0.000 1.000 0.000' * random()) * 10)) + (('0.000 0.000 1.000' * random()) * 10));
        vel = vel * 5;
        org = targ.origin;
        SpawnBlood(org, vel, take);
    }
    
    
    if(targ.health <= 0)
    {
        Killed(targ, attacker);
        
        if(!king_dead)
        {
            WalkToDest(current_turn);
            current_turn.frags = current_turn.frags + 1;
            current_selected.enemy = world;
        }
        
        return;
    }
    
    oldself = self;
    self = targ;
    
    if(king_dead)
    {
        
        if((self.flags & FL_MONSTER) && (attacker != world))
        {
            
            if((self != attacker) && (attacker != self.enemy))
            {
                
                if(self.owner != attacker.owner)
                {
                    
                    if(self.enemy.classname == "player")
                    {
                        self.oldenemy = self.enemy;
                    }
                    
                    self.enemy = attacker;
                    FoundTarget();
                }
                
            }
            
        }
        
    }
    
    
    if(self.th_pain)
    {
        
        if(self != current_selected)
        {
            self.pain_finished = time + 5;
            self.th_pain(attacker, take);
        }
        
    }
    
    self = oldself;
};

// T_RadiusDamage
// function begins at statement 1761, parm_start=1995
// OP_LOAD_V	1995	105	2004
// OP_STORE_V	2004	4	0
// OP_ADD_F	1997	2007	2008
// OP_STORE_V	2008	7	0
// OP_CALL2	468	0	0
// OP_STORE_ENT	1	2000	0
// OP_IFNOT	2000	57	0
// OP_NE_E	2000	1998	2009
// OP_IFNOT	2009	52	0
// OP_LOAD_F	2000	163	2010
// OP_NOT_F	539	0	2011
// OP_LOAD_ENT	526	181	2012
// OP_EQ_E	2000	2012	2013
// OP_AND	2011	2013	2014
// OP_OR	2014	539	2015
// OP_AND	2010	2015	2016
// OP_IFNOT	2016	44	0
// OP_LOAD_V	2000	105	2017
// OP_LOAD_V	2000	134	2020
// OP_LOAD_V	2000	138	2023
// OP_ADD_V	2020	2023	2026
// OP_MUL_VF	2026	1727	2029
// OP_ADD_V	2017	2029	2032
// OP_STORE_V	2032	2001	0
// OP_LOAD_V	1995	105	2035
// OP_SUB_V	2035	2001	2038
// OP_STORE_V	2038	4	0
// OP_CALL1	458	0	0
// OP_MUL_F	1727	1	2041
// OP_STORE_F	2041	1999	0
// OP_LT	1999	650	2042
// OP_IFNOT	2042	2	0
// OP_STORE_F	650	1999	0
// OP_SUB_F	1997	1999	2043
// OP_STORE_F	2043	1999	0
// OP_EQ_E	2000	1996	2044
// OP_IFNOT	2044	3	0
// OP_MUL_F	1999	1727	2045
// OP_STORE_F	2045	1999	0
// OP_GT	1999	650	2046
// OP_IFNOT	2046	20	0
// OP_STORE_V	2000	4	0
// OP_STORE_V	1995	7	0
// OP_CALL2	523	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	2000	129	2047
// OP_EQ_S	2047	1334	2048
// OP_IFNOT	2048	8	0
// OP_STORE_V	2000	4	0
// OP_STORE_V	1995	7	0
// OP_STORE_V	1996	10	0
// OP_MUL_F	1999	1727	2049
// OP_STORE_V	2049	13	0
// OP_CALL4	521	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	2000	4	0
// OP_STORE_V	1995	7	0
// OP_STORE_V	1996	10	0
// OP_STORE_V	1999	13	0
// OP_CALL4	521	0	0
// OP_LOAD_ENT	2000	164	2050
// OP_STORE_ENT	2050	2000	0
// OP_GOTO	-56	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + 40);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage && ((!king_dead && (head == current_selected.enemy)) || king_dead))
            {
                org = head.origin + ((head.mins + head.maxs) * 0.5);
                points = 0.5 * (vlen(inflictor.origin - org));
                
                if(points < 0)
                {
                    points = 0;
                }
                
                points = damage - points;
                
                if(head == attacker)
                {
                    points = points * 0.5;
                }
                
                
                if(points > 0)
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        if(head.classname == "monster_shambler")
                        {
                            T_Damage(head, inflictor, attacker, points * 0.5);
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
    
};

// T_BeamDamage
// function begins at statement 1825, parm_start=2052
// OP_LOAD_V	2052	105	2056
// OP_STORE_V	2056	4	0
// OP_ADD_F	2053	2007	2059
// OP_STORE_V	2059	7	0
// OP_CALL2	468	0	0
// OP_STORE_ENT	1	2055	0
// OP_IFNOT	2055	43	0
// OP_LOAD_F	2055	163	2060
// OP_IFNOT	2060	38	0
// OP_LOAD_V	2052	105	2061
// OP_LOAD_V	2055	105	2064
// OP_SUB_V	2061	2064	2067
// OP_STORE_V	2067	4	0
// OP_CALL1	458	0	0
// OP_MUL_F	1727	1	2070
// OP_STORE_F	2070	2054	0
// OP_LT	2054	650	2071
// OP_IFNOT	2071	2	0
// OP_STORE_F	650	2054	0
// OP_SUB_F	2053	2054	2072
// OP_STORE_F	2072	2054	0
// OP_EQ_E	2055	2052	2073
// OP_IFNOT	2073	3	0
// OP_MUL_F	2054	1727	2074
// OP_STORE_F	2074	2054	0
// OP_GT	2054	650	2075
// OP_IFNOT	2075	20	0
// OP_STORE_V	2055	4	0
// OP_STORE_V	2052	7	0
// OP_CALL2	523	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	2055	129	2076
// OP_EQ_S	2076	1334	2077
// OP_IFNOT	2077	8	0
// OP_STORE_V	2055	4	0
// OP_STORE_V	2052	7	0
// OP_STORE_V	2052	10	0
// OP_MUL_F	2054	1727	2078
// OP_STORE_V	2078	13	0
// OP_CALL4	521	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	2055	4	0
// OP_STORE_V	2052	7	0
// OP_STORE_V	2052	10	0
// OP_STORE_V	2054	13	0
// OP_CALL4	521	0	0
// OP_LOAD_ENT	2055	164	2079
// OP_STORE_ENT	2079	2055	0
// OP_GOTO	-42	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) T_BeamDamage = 
{
    local float points;
    local entity head;
    head = findradius(attacker.origin, damage + 40);
    
    while(head)
    {
        
        if(head.takedamage)
        {
            points = 0.5 * (vlen(attacker.origin - head.origin));
            
            if(points < 0)
            {
                points = 0;
            }
            
            points = damage - points;
            
            if(head == attacker)
            {
                points = points * 0.5;
            }
            
            
            if(points > 0)
            {
                
                if(CanDamage(head, attacker))
                {
                    if(head.classname == "monster_shambler")
                    {
                        T_Damage(head, attacker, attacker, points * 0.5);
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
    
};

