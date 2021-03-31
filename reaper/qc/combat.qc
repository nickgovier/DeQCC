void () T_MissileTouch;
void () info_player_start;
void (entity targ, entity attacker) ClientObituary;
float () BotFoundTarget;
void (entity en2) secondEnemy;
void () endEnemy;
void () monster_death_use;
// CanDamage
// function begins at statement 1659, parm_start=1854
// OP_LOAD_F	1854	103	1856
// OP_EQ_F	1856	232	1857
// OP_IFNOT	1857	18	0
// OP_LOAD_V	1855	105	1858
// OP_STORE_V	1858	4	0
// OP_LOAD_V	1854	94	1861
// OP_LOAD_V	1854	98	1864
// OP_ADD_V	1861	1864	1867
// OP_MUL_FV	677	1867	1870
// OP_STORE_V	1870	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1873
// OP_IFNOT	1873	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	1854	1874
// OP_IFNOT	1874	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_LOAD_V	1855	105	1875
// OP_STORE_V	1875	4	0
// OP_LOAD_V	1854	105	1878
// OP_STORE_V	1878	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1881
// OP_IFNOT	1881	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1855	105	1882
// OP_STORE_V	1882	4	0
// OP_LOAD_V	1854	105	1885
// OP_ADD_V	1885	1888	1891
// OP_STORE_V	1891	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1894
// OP_IFNOT	1894	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1855	105	1895
// OP_STORE_V	1895	4	0
// OP_LOAD_V	1854	105	1898
// OP_ADD_V	1898	1901	1904
// OP_STORE_V	1904	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1907
// OP_IFNOT	1907	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1855	105	1908
// OP_STORE_V	1908	4	0
// OP_LOAD_V	1854	105	1911
// OP_ADD_V	1911	1914	1917
// OP_STORE_V	1917	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1920
// OP_IFNOT	1920	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1855	105	1921
// OP_STORE_V	1921	4	0
// OP_LOAD_V	1854	105	1924
// OP_ADD_V	1924	1927	1930
// OP_STORE_V	1930	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	1933
// OP_IFNOT	1933	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ, entity inflictor) CanDamage = 
{
    
    if(targ.movetype == MOVETYPE_PUSH)
    {
        traceline(inflictor.origin, 0.500 * (targ.absmin + targ.absmax), TRUE, self);
        
        if(trace_fraction == TRUE)
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
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Killed
// function begins at statement 1735, parm_start=1935
// OP_STORE_ENT	28	1937	0
// OP_STORE_ENT	1935	28	0
// OP_LOAD_F	28	152	1938
// OP_LT	1938	1939	1940
// OP_IFNOT	1940	3	0
// OP_ADDRESS	28	152	1941
// OP_STOREP_F	1939	1941	0
// OP_LOAD_F	28	103	1942
// OP_EQ_F	1942	232	1943
// OP_LOAD_F	28	103	1944
// OP_EQ_F	1944	227	1945
// OP_OR	1943	1945	1946
// OP_IFNOT	1946	5	0
// OP_LOAD_FNC	28	362	1947
// OP_CALL0	1947	0	0
// OP_STORE_ENT	1937	28	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	1948
// OP_STOREP_ENT	1936	1948	0
// OP_LOAD_F	28	182	1949
// OP_BITAND	1949	219	1950
// OP_IFNOT	1950	6	0
// OP_ADD_F	42	214	1951
// OP_STORE_F	1951	42	0
// OP_STORE_V	339	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1936	7	0
// OP_CALL2	1849	0	0
// OP_ADDRESS	28	163	1952
// OP_STOREP_F	250	1952	0
// OP_ADDRESS	28	146	1953
// OP_STOREP_FNC	517	1953	0
// OP_CALL0	1853	0	0
// OP_LOAD_FNC	28	362	1954
// OP_CALL0	1954	0	0
// OP_STORE_ENT	1937	28	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) Killed = 
{
    local entity oself;
    oself = self;
    self = targ;
    
    if(self.health < -99.000)
    {
        self.health = -99.000;
    }
    
    
    if((self.movetype == MOVETYPE_PUSH) || (self.movetype == MOVETYPE_NONE))
    {
        self.th_die();
        self = oself;
        return;
    }
    
    self.enemy = attacker;
    
    if(self.flags & FL_MONSTER)
    {
        killed_monsters = killed_monsters + TRUE;
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
// function begins at statement 1774, parm_start=1955
// OP_LOAD_F	1955	163	1965
// OP_NOT_F	1965	0	1966
// OP_IFNOT	1966	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	1957	347	0
// OP_LOAD_F	1957	377	1967
// OP_GT	1967	31	1968
// OP_IFNOT	1968	3	0
// OP_MUL_F	1958	229	1969
// OP_STORE_F	1969	1958	0
// OP_LOAD_F	1955	187	1970
// OP_MUL_F	1970	1958	1971
// OP_STORE_V	1971	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	1	1963	0
// OP_LOAD_F	1955	188	1972
// OP_GE	1963	1972	1973
// OP_IFNOT	1973	13	0
// OP_LOAD_F	1955	188	1974
// OP_STORE_F	1974	1963	0
// OP_ADDRESS	1955	187	1975
// OP_STOREP_F	213	1975	0
// OP_ADDRESS	1955	162	1976
// OP_LOAD_F	1955	162	1977
// OP_LOAD_F	1955	162	1978
// OP_BITOR	266	267	1979
// OP_BITOR	1979	268	1980
// OP_BITAND	1978	1980	1981
// OP_SUB_F	1977	1981	1982
// OP_STOREP_F	1982	1976	0
// OP_ADDRESS	1955	188	1983
// OP_LOAD_F	1955	188	1984
// OP_SUB_F	1984	1963	1985
// OP_STOREP_F	1985	1983	0
// OP_SUB_F	1958	1963	1986
// OP_STORE_V	1986	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	1	1964	0
// OP_LOAD_F	1955	182	1987
// OP_BITAND	1987	217	1988
// OP_IFNOT	1988	11	0
// OP_ADDRESS	1955	198	1989
// OP_LOAD_F	1955	198	1990
// OP_ADD_F	1990	1964	1991
// OP_STOREP_F	1991	1989	0
// OP_ADDRESS	1955	199	1992
// OP_LOAD_F	1955	199	1993
// OP_ADD_F	1993	1963	1994
// OP_STOREP_F	1994	1992	0
// OP_ADDRESS	1955	200	1995
// OP_STOREP_ENT	1956	1995	0
// OP_NE_E	1956	30	1996
// OP_LOAD_F	1955	103	1997
// OP_EQ_F	1997	228	1998
// OP_AND	1996	1998	1999
// OP_IFNOT	1999	17	0
// OP_LOAD_V	1955	105	2000
// OP_LOAD_V	1956	94	2003
// OP_LOAD_V	1956	98	2006
// OP_ADD_V	2003	2006	2009
// OP_MUL_VF	2009	677	2012
// OP_SUB_V	2000	2012	2015
// OP_STORE_V	2015	1959	0
// OP_STORE_V	1959	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	1959	0
// OP_ADDRESS	1955	113	2018
// OP_LOAD_V	1955	113	2021
// OP_MUL_VF	1959	1958	2024
// OP_MUL_VF	2024	217	2027
// OP_ADD_V	2021	2027	2030
// OP_STOREP_V	2030	2018	0
// OP_LOAD_F	1955	182	2033
// OP_BITAND	2033	220	2034
// OP_IFNOT	2034	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	1955	375	2035
// OP_GE	2035	31	2036
// OP_IFNOT	2036	14	0
// OP_LOAD_F	28	380	2037
// OP_LT	2037	31	2038
// OP_IFNOT	2038	10	0
// OP_STORE_V	1955	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2039	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	380	2040
// OP_ADD_F	31	216	2041
// OP_STOREP_F	2041	2040	0
// OP_RETURN	0	0	0
// OP_EQ_F	37	214	2042
// OP_LOAD_F	1955	184	2043
// OP_GT	2043	213	2044
// OP_AND	2042	2044	2045
// OP_LOAD_F	1955	184	2046
// OP_LOAD_F	1957	184	2047
// OP_EQ_F	2046	2047	2048
// OP_AND	2045	2048	2049
// OP_IFNOT	2049	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	1955	152	2050
// OP_LOAD_F	1955	152	2051
// OP_SUB_F	2051	1964	2052
// OP_STOREP_F	2052	2050	0
// OP_LOAD_F	1955	152	2053
// OP_LE	2053	213	2054
// OP_IFNOT	2054	5	0
// OP_STORE_V	1955	4	0
// OP_STORE_V	1957	7	0
// OP_CALL2	1934	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1962	0
// OP_STORE_ENT	1955	28	0
// OP_LOAD_S	28	129	2055
// OP_EQ_S	2055	2056	2057
// OP_IFNOT	2057	16	0
// OP_NE_E	1957	30	2058
// OP_IFNOT	2058	13	0
// OP_NE_E	1956	30	2059
// OP_IFNOT	2059	11	0
// OP_NE_E	1957	28	2060
// OP_IFNOT	2060	9	0
// OP_LOAD_ENT	28	181	2061
// OP_IFNOT	2061	4	0
// OP_STORE_V	1957	4	0
// OP_CALL1	1851	0	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	181	2062
// OP_STOREP_ENT	1957	2062	0
// OP_CALL0	1850	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	182	2063
// OP_BITAND	2063	219	2064
// OP_NE_E	1957	30	2065
// OP_AND	2064	2065	2066
// OP_IFNOT	2066	23	0
// OP_NE_E	28	1957	2067
// OP_LOAD_ENT	28	181	2068
// OP_NE_E	1957	2068	2069
// OP_AND	2067	2069	2070
// OP_IFNOT	2070	18	0
// OP_LOAD_S	28	129	2071
// OP_LOAD_S	1957	129	2072
// OP_NE_S	2071	2072	2073
// OP_LOAD_S	28	129	2074
// OP_EQ_S	2074	1666	2075
// OP_OR	2073	2075	2076
// OP_IFNOT	2076	11	0
// OP_LOAD_ENT	28	181	2077
// OP_LOAD_S	2077	129	2078
// OP_EQ_S	2078	1102	2079
// OP_IFNOT	2079	4	0
// OP_ADDRESS	28	363	2080
// OP_LOAD_ENT	28	181	2081
// OP_STOREP_ENT	2081	2080	0
// OP_ADDRESS	28	181	2082
// OP_STOREP_ENT	1957	2082	0
// OP_CALL0	1673	0	0
// OP_LOAD_FNC	28	361	2083
// OP_IFNOT	2083	10	0
// OP_LOAD_FNC	28	361	2084
// OP_STORE_V	1957	4	0
// OP_STORE_V	1964	7	0
// OP_CALL2	2084	0	0
// OP_EQ_F	349	228	2085
// OP_IFNOT	2085	4	0
// OP_ADDRESS	28	374	2086
// OP_ADD_F	31	230	2087
// OP_STOREP_F	2087	2086	0
// OP_STORE_ENT	1962	28	0
// OP_DONE	0	0	0
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage = 
{
    local vector dir;
    local entity oldself;
    local float save;
    local float take;
    
    if(!targ.takedamage)
    {
        return;
    }
    
    damage_attacker = attacker;
    
    if(attacker.super_damage_finished > time)
    {
        damage = damage * MOVETYPE_STEP;
    }
    
    save = ceil(targ.armortype * damage);
    
    if(save >= targ.armorvalue)
    {
        save = targ.armorvalue;
        targ.armortype = FALSE;
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
        dir = targ.origin - ((inflictor.absmin + inflictor.absmax) * 0.500);
        dir = normalize(dir);
        targ.velocity = targ.velocity + ((dir * damage) * FL_CLIENT);
    }
    
    
    if(targ.flags & FL_GODMODE)
    {
        return;
    }
    
    
    if(targ.invincible_finished >= time)
    {
        
        if(self.invincible_sound < time)
        {
            sound(targ, CHAN_ITEM, "items/protect3.wav", TRUE, ATTN_NORM);
            self.invincible_sound = time + FL_SWIM;
        }
        
        return;
    }
    
    
    if(((teamplay == TRUE) && (targ.team > FALSE)) && (targ.team == attacker.team))
    {
        return;
    }
    
    targ.health = targ.health - take;
    
    if(targ.health <= FALSE)
    {
        Killed(targ, attacker);
        return;
    }
    
    oldself = self;
    self = targ;
    if(self.classname == "dmbot")
    {
        
        if(attacker != world)
        {
            
            if(inflictor != world)
            {
                
                if(attacker != self)
                {
                    if(self.enemy)
                    {
                        secondEnemy(attacker);
                    }
                    else
                    {
                        self.enemy = attacker;
                        BotFoundTarget();
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        
        if((self.flags & FL_MONSTER) && (attacker != world))
        {
            
            if((self != attacker) && (attacker != self.enemy))
            {
                
                if((self.classname != attacker.classname) || (self.classname == "monster_army"))
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
        self.th_pain(attacker, take);
        
        if(skill == MOVETYPE_WALK)
        {
            self.pain_finished = time + MOVETYPE_FLY;
        }
        
    }
    
    self = oldself;
};

// T_RadiusDamage
// function begins at statement 1947, parm_start=2089
// OP_LOAD_V	2089	105	2098
// OP_STORE_V	2098	4	0
// OP_ADD_F	2091	2101	2102
// OP_STORE_V	2102	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	2094	0
// OP_IFNOT	2094	51	0
// OP_NE_E	2094	2092	2103
// OP_IFNOT	2103	46	0
// OP_LOAD_F	2094	163	2104
// OP_IFNOT	2104	44	0
// OP_LOAD_V	2094	105	2105
// OP_LOAD_V	2094	134	2108
// OP_LOAD_V	2094	138	2111
// OP_ADD_V	2108	2111	2114
// OP_MUL_VF	2114	677	2117
// OP_ADD_V	2105	2117	2120
// OP_STORE_V	2120	2095	0
// OP_LOAD_V	2089	105	2123
// OP_SUB_V	2123	2095	2126
// OP_STORE_V	2126	4	0
// OP_CALL1	457	0	0
// OP_MUL_F	677	1	2129
// OP_STORE_F	2129	2093	0
// OP_LT	2093	213	2130
// OP_IFNOT	2130	2	0
// OP_STORE_F	213	2093	0
// OP_SUB_F	2091	2093	2131
// OP_STORE_F	2131	2093	0
// OP_EQ_E	2094	2090	2132
// OP_IFNOT	2132	3	0
// OP_MUL_F	2093	677	2133
// OP_STORE_F	2133	2093	0
// OP_GT	2093	213	2134
// OP_IFNOT	2134	20	0
// OP_STORE_V	2094	4	0
// OP_STORE_V	2089	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	2094	129	2135
// OP_EQ_S	2135	1623	2136
// OP_IFNOT	2136	8	0
// OP_STORE_V	2094	4	0
// OP_STORE_V	2089	7	0
// OP_STORE_V	2090	10	0
// OP_MUL_F	2093	677	2137
// OP_STORE_V	2137	13	0
// OP_CALL4	520	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	2094	4	0
// OP_STORE_V	2089	7	0
// OP_STORE_V	2090	10	0
// OP_STORE_V	2093	13	0
// OP_CALL4	520	0	0
// OP_LOAD_ENT	2094	164	2138
// OP_STORE_ENT	2138	2094	0
// OP_GOTO	-50	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + 40.000);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                org = head.origin + ((head.mins + head.maxs) * 0.500);
                points = 0.500 * (vlen(inflictor.origin - org));
                
                if(points < FALSE)
                {
                    points = FALSE;
                }
                
                points = damage - points;
                
                if(head == attacker)
                {
                    points = points * 0.500;
                }
                
                
                if(points > FALSE)
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        if(head.classname == "monster_shambler")
                        {
                            T_Damage(head, inflictor, attacker, points * 0.500);
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
// function begins at statement 2005, parm_start=2140
// OP_LOAD_V	2140	105	2144
// OP_STORE_V	2144	4	0
// OP_ADD_F	2141	2101	2147
// OP_STORE_V	2147	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	2143	0
// OP_IFNOT	2143	43	0
// OP_LOAD_F	2143	163	2148
// OP_IFNOT	2148	38	0
// OP_LOAD_V	2140	105	2149
// OP_LOAD_V	2143	105	2152
// OP_SUB_V	2149	2152	2155
// OP_STORE_V	2155	4	0
// OP_CALL1	457	0	0
// OP_MUL_F	677	1	2158
// OP_STORE_F	2158	2142	0
// OP_LT	2142	213	2159
// OP_IFNOT	2159	2	0
// OP_STORE_F	213	2142	0
// OP_SUB_F	2141	2142	2160
// OP_STORE_F	2160	2142	0
// OP_EQ_E	2143	2140	2161
// OP_IFNOT	2161	3	0
// OP_MUL_F	2142	677	2162
// OP_STORE_F	2162	2142	0
// OP_GT	2142	213	2163
// OP_IFNOT	2163	20	0
// OP_STORE_V	2143	4	0
// OP_STORE_V	2140	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	2143	129	2164
// OP_EQ_S	2164	1623	2165
// OP_IFNOT	2165	8	0
// OP_STORE_V	2143	4	0
// OP_STORE_V	2140	7	0
// OP_STORE_V	2140	10	0
// OP_MUL_F	2142	677	2166
// OP_STORE_V	2166	13	0
// OP_CALL4	520	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	2143	4	0
// OP_STORE_V	2140	7	0
// OP_STORE_V	2140	10	0
// OP_STORE_V	2142	13	0
// OP_CALL4	520	0	0
// OP_LOAD_ENT	2143	164	2167
// OP_STORE_ENT	2167	2143	0
// OP_GOTO	-42	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) T_BeamDamage = 
{
    local float points;
    local entity head;
    head = findradius(attacker.origin, damage + 40.000);
    
    while(head)
    {
        
        if(head.takedamage)
        {
            points = 0.500 * (vlen(attacker.origin - head.origin));
            
            if(points < FALSE)
            {
                points = FALSE;
            }
            
            points = damage - points;
            
            if(head == attacker)
            {
                points = points * 0.500;
            }
            
            
            if(points > FALSE)
            {
                
                if(CanDamage(head, attacker))
                {
                    if(head.classname == "monster_shambler")
                    {
                        T_Damage(head, attacker, attacker, points * 0.500);
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

