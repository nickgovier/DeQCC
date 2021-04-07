void () T_MissileTouch;
void () info_player_start;
void (entity targ, entity attacker) AC_Obituary;
void () monster_death_use;
// CanDamage
// function begins at statement 1746, parm_start=1951
// OP_LOAD_F	1951	128	1953
// OP_EQ_F	1953	286	1954
// OP_IFNOT	1954	18	0
// OP_LOAD_V	1952	130	1955
// OP_STORE_V	1955	4	0
// OP_LOAD_V	1951	119	1958
// OP_LOAD_V	1951	123	1961
// OP_ADD_V	1958	1961	1964
// OP_MUL_FV	972	1964	1967
// OP_STORE_V	1967	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	1970
// OP_IFNOT	1970	2	0
// OP_RETURN	268	0	0
// OP_EQ_E	78	1951	1971
// OP_IFNOT	1971	2	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
// OP_LOAD_V	1952	130	1972
// OP_STORE_V	1972	4	0
// OP_LOAD_V	1951	130	1975
// OP_STORE_V	1975	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	1978
// OP_IFNOT	1978	2	0
// OP_RETURN	268	0	0
// OP_LOAD_V	1952	130	1979
// OP_STORE_V	1979	4	0
// OP_LOAD_V	1951	130	1982
// OP_ADD_V	1982	1985	1988
// OP_STORE_V	1988	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	1991
// OP_IFNOT	1991	2	0
// OP_RETURN	268	0	0
// OP_LOAD_V	1952	130	1992
// OP_STORE_V	1992	4	0
// OP_LOAD_V	1951	130	1995
// OP_ADD_V	1995	1998	2001
// OP_STORE_V	2001	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	2004
// OP_IFNOT	2004	2	0
// OP_RETURN	268	0	0
// OP_LOAD_V	1952	130	2005
// OP_STORE_V	2005	4	0
// OP_LOAD_V	1951	130	2008
// OP_ADD_V	2008	2011	2014
// OP_STORE_V	2014	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	2017
// OP_IFNOT	2017	2	0
// OP_RETURN	268	0	0
// OP_LOAD_V	1952	130	2018
// OP_STORE_V	2018	4	0
// OP_LOAD_V	1951	130	2021
// OP_ADD_V	2021	2024	2027
// OP_STORE_V	2027	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	2030
// OP_IFNOT	2030	2	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
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
    
    traceline(inflictor.origin, targ.origin + '15 15 0', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15 -15 0', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15 15 0', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15 -15 0', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Killed
// function begins at statement 1822, parm_start=2032
// OP_STORE_ENT	28	2034	0
// OP_STORE_ENT	2032	28	0
// OP_LOAD_F	28	177	2035
// OP_LT	2035	2036	2037
// OP_IFNOT	2037	3	0
// OP_ADDRESS	28	177	2038
// OP_STOREP_F	2036	2038	0
// OP_LOAD_S	28	154	2039
// OP_EQ_S	2039	766	2040
// OP_IFNOT	2040	15	0
// OP_LOAD_ENT	28	464	2041
// OP_IFNOT	2041	4	0
// OP_LOAD_ENT	28	464	2042
// OP_STORE_V	2042	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	206	2043
// OP_LOAD_ENT	28	206	2044
// OP_LOAD_ENT	2044	206	2045
// OP_STOREP_ENT	2045	2043	0
// OP_ADDRESS	28	464	2046
// OP_STOREP_ENT	30	2046	0
// OP_ADDRESS	28	423	2047
// OP_ADD_F	31	677	2048
// OP_STOREP_F	2048	2047	0
// OP_LOAD_F	28	242	2049
// OP_GT	2049	619	2050
// OP_LOAD_S	28	154	2051
// OP_NE_S	2051	766	2052
// OP_AND	2050	2052	2053
// OP_IFNOT	2053	50	0
// OP_NOT_F	35	0	2054
// OP_IFNOT	2054	12	0
// OP_LOAD_S	28	243	2055
// OP_NE_S	2055	102	2056
// OP_IFNOT	2056	5	0
// OP_LOAD_F	28	242	2057
// OP_ADD_F	100	2057	2058
// OP_STORE_F	2058	100	0
// OP_GOTO	4	0	0
// OP_LOAD_F	28	242	2059
// OP_SUB_F	100	2059	2060
// OP_STORE_F	2060	100	0
// OP_GOTO	37	0	0
// OP_GT	37	619	2061
// OP_LOAD_S	28	243	2062
// OP_NE_S	2062	101	2063
// OP_AND	2061	2063	2064
// OP_IFNOT	2064	32	0
// OP_LOAD_S	2033	205	2065
// OP_STORE_V	2065	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	28	243	2066
// OP_LOAD_S	2033	243	2067
// OP_NE_S	2066	2067	2068
// OP_IFNOT	2068	18	0
// OP_STORE_V	2033	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_F	28	242	2069
// OP_STORE_V	2069	10	0
// OP_CALL3	903	0	0
// OP_STORE_V	2033	4	0
// OP_LOAD_F	28	242	2070
// OP_STORE_V	2070	7	0
// OP_CALL2	912	0	0
// OP_STORE_V	2071	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	28	205	2072
// OP_STORE_V	2072	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	2033	178	2074
// OP_LOAD_F	2033	178	2075
// OP_LOAD_F	28	242	2076
// OP_SUB_F	2075	2076	2077
// OP_STOREP_F	2077	2074	0
// OP_STORE_V	2078	4	0
// OP_CALL1	517	0	0
// OP_LOAD_F	28	128	2079
// OP_EQ_F	2079	286	2080
// OP_LOAD_F	28	128	2081
// OP_EQ_F	2081	281	2082
// OP_OR	2080	2082	2083
// OP_IFNOT	2083	5	0
// OP_LOAD_FNC	28	411	2084
// OP_CALL0	2084	0	0
// OP_STORE_ENT	2034	28	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	154	2085
// OP_NE_S	2085	766	2086
// OP_LOAD_S	2033	154	2087
// OP_NE_S	2087	766	2088
// OP_AND	2086	2088	2089
// OP_IFNOT	2089	3	0
// OP_ADDRESS	28	206	2090
// OP_STOREP_ENT	2033	2090	0
// OP_LOAD_F	28	207	2091
// OP_BITAND	2091	273	2092
// OP_NOT_F	35	0	2093
// OP_AND	2092	2093	2094
// OP_IFNOT	2094	6	0
// OP_ADD_F	42	677	2095
// OP_STORE_F	2095	42	0
// OP_STORE_V	388	4	0
// OP_STORE_V	351	7	0
// OP_CALL2	542	0	0
// OP_LOAD_S	28	154	2096
// OP_NE_S	2096	2097	2098
// OP_LOAD_S	28	154	2099
// OP_NE_S	2099	2100	2101
// OP_AND	2098	2101	2102
// OP_IFNOT	2102	6	0
// OP_ADDRESS	28	188	2103
// OP_STOREP_F	304	2103	0
// OP_ADDRESS	28	171	2104
// OP_STOREP_FNC	566	2104	0
// OP_CALL0	1950	0	0
// OP_LOAD_ENT	28	226	2105
// OP_LOAD_S	2105	154	2106
// OP_EQ_S	2106	766	2107
// OP_LOAD_ENT	28	226	2108
// OP_LOAD_ENT	2108	206	2109
// OP_EQ_E	28	2109	2110
// OP_AND	2107	2110	2111
// OP_IFNOT	2111	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2033	7	0
// OP_CALL2	1949	0	0
// OP_LOAD_FNC	28	411	2112
// OP_IFNOT	2112	3	0
// OP_LOAD_FNC	28	411	2113
// OP_CALL0	2113	0	0
// OP_STORE_ENT	2034	28	0
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
    
    
    if(self.classname == "player")
    {
        
        if(self.trigger_field)
        {
            remove(self.trigger_field);
        }
        
        self.enemy = self.enemy.enemy;
        self.trigger_field = world;
        self.pain_finished = time + 1;
    }
    
    
    if((self.value > 0) && (self.classname != "player"))
    {
        if(!deathmatch)
        {
            if(self.ts != T1)
            {
                killedvalues = killedvalues + self.value;
            }
            else
            {
                killedvalues = killedvalues - self.value;
            }
            
        }
        else
        {
            
            if((teamplay > 0) && (self.ts != T0))
            {
                bprint(attacker.netname);
                if(self.ts != attacker.ts)
                {
                    givefrags(attacker, self, self.value);
                    giveteamfrags(attacker, self.value);
                    bprint(" destroys enemy ");
                    bprint(self.netname);
                    bprint("\n");
                }
                else
                {
                    attacker.frags = attacker.frags - self.value;
                    bprint(" has fun bombing friendly forces\n");
                }
                
            }
            
        }
        
    }
    
    
    if((self.movetype == MOVETYPE_PUSH) || (self.movetype == MOVETYPE_NONE))
    {
        self.th_die();
        self = oself;
        return;
    }
    
    
    if((self.classname != "player") && (attacker.classname != "player"))
    {
        self.enemy = attacker;
    }
    
    
    if((self.flags & FL_MONSTER) && !deathmatch)
    {
        killed_monsters = killed_monsters + 1;
        WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    }
    
    
    if((self.classname != "plane") && (self.classname != "monster_drone"))
    {
        self.takedamage = DAMAGE_NO;
        self.touch = SUB_Null;
        monster_death_use();
    }
    
    
    if((self.owner.classname == "player") && (self == self.owner.enemy))
    {
        AC_Obituary(self, attacker);
    }
    
    
    if(self.th_die)
    {
        self.th_die();
    }
    
    self = oself;
};

// T_Damage
// function begins at statement 1957, parm_start=2114
// OP_LOAD_F	2114	188	2124
// OP_NOT_F	2124	0	2125
// OP_IFNOT	2125	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	2114	177	2126
// OP_LT	2126	677	2127
// OP_IFNOT	2127	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	2114	154	2128
// OP_EQ_S	2128	766	2129
// OP_NE_E	2116	2114	2130
// OP_AND	2129	2130	2131
// OP_IFNOT	2131	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	2116	226	2132
// OP_LOAD_S	2132	154	2133
// OP_EQ_S	2133	766	2134
// OP_LOAD_ENT	2116	226	2135
// OP_LOAD_ENT	2135	206	2136
// OP_EQ_E	2136	2116	2137
// OP_AND	2134	2137	2138
// OP_IFNOT	2138	3	0
// OP_LOAD_ENT	2116	226	2139
// OP_STORE_ENT	2139	2116	0
// OP_STORE_ENT	2116	396	0
// OP_LOAD_F	2116	426	2140
// OP_GT	2140	31	2141
// OP_IFNOT	2141	3	0
// OP_MUL_F	2117	808	2142
// OP_STORE_F	2142	2117	0
// OP_LOAD_F	2114	213	2143
// OP_STORE_F	2143	2122	0
// OP_SUB_F	2117	2122	2144
// OP_STORE_V	2144	4	0
// OP_CALL1	531	0	0
// OP_STORE_F	1	2123	0
// OP_LT	2123	619	2145
// OP_IFNOT	2145	2	0
// OP_STORE_F	619	2123	0
// OP_LOAD_F	2114	207	2146
// OP_BITAND	2146	271	2147
// OP_IFNOT	2147	11	0
// OP_ADDRESS	2114	223	2148
// OP_LOAD_F	2114	223	2149
// OP_ADD_F	2149	2123	2150
// OP_STOREP_F	2150	2148	0
// OP_ADDRESS	2114	224	2151
// OP_LOAD_F	2114	224	2152
// OP_ADD_F	2152	2122	2153
// OP_STOREP_F	2153	2151	0
// OP_ADDRESS	2114	225	2154
// OP_STOREP_ENT	2115	2154	0
// OP_LOAD_F	2114	207	2155
// OP_BITAND	2155	274	2156
// OP_IFNOT	2156	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	2114	226	2157
// OP_LOAD_ENT	2157	206	2158
// OP_EQ_E	2158	2114	2159
// OP_IFNOT	2159	6	0
// OP_LOAD_ENT	2114	226	2160
// OP_LOAD_F	2160	207	2161
// OP_BITAND	2161	274	2162
// OP_IFNOT	2162	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	2114	424	2163
// OP_GE	2163	31	2164
// OP_IFNOT	2164	14	0
// OP_LOAD_F	28	429	2165
// OP_LT	2165	31	2166
// OP_IFNOT	2166	10	0
// OP_STORE_V	2114	4	0
// OP_STORE_V	372	7	0
// OP_STORE_V	2167	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	429	2168
// OP_ADD_F	31	806	2169
// OP_STOREP_F	2169	2168	0
// OP_RETURN	0	0	0
// OP_ADDRESS	2114	177	2170
// OP_LOAD_F	2114	177	2171
// OP_SUB_F	2171	2123	2172
// OP_STOREP_F	2172	2170	0
// OP_LOAD_F	2114	177	2173
// OP_LE	2173	619	2174
// OP_IFNOT	2174	5	0
// OP_STORE_V	2114	4	0
// OP_STORE_V	2116	7	0
// OP_CALL2	2031	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2121	0
// OP_STORE_ENT	2114	28	0
// OP_LOAD_F	28	207	2175
// OP_BITAND	2175	273	2176
// OP_NE_E	2116	30	2177
// OP_AND	2176	2177	2178
// OP_LOAD_S	28	154	2179
// OP_NE_S	2179	2100	2180
// OP_AND	2178	2180	2181
// OP_IFNOT	2181	30	0
// OP_NE_E	28	2116	2182
// OP_LOAD_ENT	28	206	2183
// OP_NE_E	2116	2183	2184
// OP_AND	2182	2184	2185
// OP_IFNOT	2185	25	0
// OP_LOAD_S	28	243	2186
// OP_LOAD_S	2116	243	2187
// OP_NE_S	2186	2187	2188
// OP_IFNOT	2188	21	0
// OP_LOAD_S	2116	154	2189
// OP_EQ_S	2189	766	2190
// OP_IFNOT	2190	13	0
// OP_LOAD_ENT	2116	206	2191
// OP_LOAD_ENT	2191	226	2192
// OP_EQ_E	2192	2116	2193
// OP_LOAD_ENT	2116	206	2194
// OP_LOAD_F	2194	177	2195
// OP_GT	2195	619	2196
// OP_AND	2193	2196	2197
// OP_IFNOT	2197	4	0
// OP_ADDRESS	28	206	2198
// OP_LOAD_ENT	2116	206	2199
// OP_STOREP_ENT	2199	2198	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	206	2200
// OP_STOREP_ENT	2116	2200	0
// OP_LOAD_ENT	28	206	2201
// OP_IFNOT	2201	2	0
// OP_CALL0	1709	0	0
// OP_LOAD_ENT	28	226	2202
// OP_LOAD_S	2202	154	2203
// OP_EQ_S	2203	766	2204
// OP_LOAD_F	2116	188	2205
// OP_GT	2205	619	2206
// OP_LOAD_S	2116	154	2207
// OP_EQ_S	2207	766	2208
// OP_OR	2206	2208	2209
// OP_AND	2204	2209	2210
// OP_IFNOT	2210	23	0
// OP_NE_E	28	2116	2211
// OP_LOAD_ENT	28	226	2212
// OP_NE_E	2212	2116	2213
// OP_AND	2211	2213	2214
// OP_IFNOT	2214	18	0
// OP_LOAD_S	2116	154	2215
// OP_EQ_S	2215	766	2216
// OP_IFNOT	2216	13	0
// OP_LOAD_ENT	2116	206	2217
// OP_LOAD_F	2217	177	2218
// OP_GT	2218	619	2219
// OP_LOAD_ENT	2116	206	2220
// OP_LOAD_ENT	2220	226	2221
// OP_EQ_E	2221	2116	2222
// OP_AND	2219	2222	2223
// OP_IFNOT	2223	4	0
// OP_ADDRESS	28	206	2224
// OP_LOAD_ENT	2116	206	2225
// OP_STOREP_ENT	2225	2224	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	206	2226
// OP_STOREP_ENT	2116	2226	0
// OP_LOAD_FNC	28	410	2227
// OP_IFNOT	2227	10	0
// OP_LOAD_FNC	28	410	2228
// OP_STORE_V	2116	4	0
// OP_STORE_V	2123	7	0
// OP_CALL2	2228	0	0
// OP_EQ_F	398	788	2229
// OP_IFNOT	2229	4	0
// OP_ADDRESS	28	423	2230
// OP_ADD_F	31	813	2231
// OP_STOREP_F	2231	2230	0
// OP_STORE_ENT	2121	28	0
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
    
    
    if(targ.health < 1)
    {
        return;
    }
    
    
    if((targ.classname == "player") && (attacker != targ))
    {
        return;
    }
    
    
    if((attacker.owner.classname == "player") && (attacker.owner.enemy == attacker))
    {
        attacker = attacker.owner;
    }
    
    damage_attacker = attacker;
    
    if(attacker.super_damage_finished > time)
    {
        damage = damage * 4;
    }
    
    save = targ.armorvalue;
    take = ceil(damage - save);
    
    if(take < 0)
    {
        take = 0;
    }
    
    
    if(targ.flags & FL_CLIENT)
    {
        targ.dmg_take = targ.dmg_take + take;
        targ.dmg_save = targ.dmg_save + save;
        targ.dmg_inflictor = inflictor;
    }
    
    
    if(targ.flags & FL_GODMODE)
    {
        return;
    }
    
    
    if(targ.owner.enemy == targ)
    {
        
        if(targ.owner.flags & FL_GODMODE)
        {
            return;
        }
        
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
    
    targ.health = targ.health - take;
    
    if(targ.health <= 0)
    {
        Killed(targ, attacker);
        return;
    }
    
    oldself = self;
    self = targ;
    
    if(((self.flags & FL_MONSTER) && (attacker != world)) && (self.classname != "monster_drone"))
    {
        
        if((self != attacker) && (attacker != self.enemy))
        {
            
            if(self.ts != attacker.ts)
            {
                if(attacker.classname == "player")
                {
                    
                    if((attacker.enemy.owner == attacker) && (attacker.enemy.health > 0))
                    {
                        self.enemy = attacker.enemy;
                    }
                    
                }
                else
                {
                    self.enemy = attacker;
                }
                
                
                if(self.enemy)
                {
                    FoundTarget();
                }
                
            }
            
        }
        
    }
    
    
    if((self.owner.classname == "player") && ((attacker.takedamage > 0) || (attacker.classname == "player")))
    {
        
        if((self != attacker) && (self.owner != attacker))
        {
            if(attacker.classname == "player")
            {
                
                if((attacker.enemy.health > 0) && (attacker.enemy.owner == attacker))
                {
                    self.enemy = attacker.enemy;
                }
                
            }
            else
            {
                self.enemy = attacker;
            }
            
        }
        
    }
    
    
    if(self.th_pain)
    {
        self.th_pain(attacker, take);
        
        if(skill == 3)
        {
            self.pain_finished = time + 5;
        }
        
    }
    
    self = oldself;
};

// T_RadiusDamage
// function begins at statement 2133, parm_start=2233
// OP_LOAD_V	2233	130	2243
// OP_STORE_V	2243	4	0
// OP_ADD_F	2235	1155	2246
// OP_STORE_V	2246	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	2238	0
// OP_IFNOT	2238	79	0
// OP_NE_E	2238	2236	2247
// OP_IFNOT	2247	74	0
// OP_LOAD_F	2238	188	2248
// OP_IFNOT	2248	72	0
// OP_LOAD_V	2238	130	2249
// OP_LOAD_V	2238	159	2252
// OP_LOAD_V	2238	163	2255
// OP_ADD_V	2252	2255	2258
// OP_MUL_VF	2258	972	2261
// OP_ADD_V	2249	2261	2264
// OP_STORE_V	2264	2239	0
// OP_LOAD_V	2233	130	2267
// OP_SUB_V	2267	2239	2270
// OP_STORE_V	2270	4	0
// OP_CALL1	506	0	0
// OP_MUL_F	1	972	2273
// OP_STORE_F	2273	2237	0
// OP_LT	2237	619	2274
// OP_IFNOT	2274	2	0
// OP_STORE_F	619	2237	0
// OP_SUB_F	2235	2237	2275
// OP_STORE_F	2275	2237	0
// OP_GT	2237	619	2276
// OP_IFNOT	2276	52	0
// OP_STORE_V	2238	4	0
// OP_STORE_V	2233	7	0
// OP_CALL2	570	0	0
// OP_IFNOT	1	48	0
// OP_STORE_V	2238	4	0
// OP_STORE_V	2233	7	0
// OP_STORE_V	2234	10	0
// OP_STORE_V	2237	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	2238	226	2277
// OP_LOAD_S	2277	154	2278
// OP_EQ_S	2278	766	2279
// OP_LOAD_ENT	2238	226	2280
// OP_LOAD_ENT	2280	206	2281
// OP_EQ_E	2238	2281	2282
// OP_AND	2279	2282	2283
// OP_IFNOT	2283	35	0
// OP_LOAD_ENT	2238	226	2284
// OP_LOAD_F	2284	404	2285
// OP_GT	2285	816	2286
// OP_IFNOT	2286	31	0
// OP_LOAD_ENT	2238	226	2287
// OP_ADDRESS	2287	138	2288
// OP_LOAD_ENT	2238	226	2291
// OP_LOAD_V	2291	138	2292
// OP_LOAD_V	2233	130	2295
// OP_SUB_V	2239	2295	2298
// OP_STORE_V	2298	4	0
// OP_CALL1	503	0	0
// OP_MUL_VF	1	2237	2301
// OP_ADD_V	2292	2301	2304
// OP_STOREP_V	2304	2288	0
// OP_LOAD_ENT	2238	226	2307
// OP_ADDRESS	2307	138	2308
// OP_LOAD_ENT	2238	226	2311
// OP_LOAD_V	2311	138	2312
// OP_MUL_VF	582	2237	2315
// OP_ADD_V	2312	2315	2318
// OP_STOREP_V	2318	2308	0
// OP_LOAD_ENT	2238	226	2321
// OP_ADDRESS	2321	207	2322
// OP_LOAD_ENT	2238	226	2323
// OP_LOAD_F	2323	207	2324
// OP_LOAD_ENT	2238	226	2325
// OP_LOAD_F	2325	207	2326
// OP_BITAND	2326	277	2327
// OP_SUB_F	2324	2327	2328
// OP_STOREP_F	2328	2322	0
// OP_LOAD_ENT	2238	226	2329
// OP_ADDRESS	2329	265	2330
// OP_STOREP_ENT	2234	2330	0
// OP_LOAD_ENT	2238	189	2331
// OP_STORE_ENT	2331	2238	0
// OP_GOTO	-78	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    local string persereika;
    head = findradius(inflictor.origin, damage + 40);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                org = head.origin + ((head.mins + head.maxs) * 0.5);
                points = (vlen(inflictor.origin - org)) * 0.5;
                
                if(points < 0)
                {
                    points = 0;
                }
                
                points = damage - points;
                
                if(points > 0)
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        T_Damage(head, inflictor, attacker, points);
                        
                        if((head.owner.classname == "player") && (head == head.owner.enemy))
                        {
                            
                            if(head.owner.style > 6)
                            {
                                head.owner.velocity = head.owner.velocity + ((normalize(org - inflictor.origin)) * points);
                                head.owner.velocity = head.owner.velocity + ('0 0 1' * points);
                                head.owner.flags = head.owner.flags - (head.owner.flags & FL_ONGROUND);
                                head.owner.radiuskiller = attacker;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};

// T_BeamDamage
// function begins at statement 2219, parm_start=2333
// OP_LOAD_V	2333	130	2337
// OP_STORE_V	2337	4	0
// OP_ADD_F	2334	1155	2340
// OP_STORE_V	2340	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	2336	0
// OP_IFNOT	2336	43	0
// OP_LOAD_F	2336	188	2341
// OP_IFNOT	2341	38	0
// OP_LOAD_V	2333	130	2342
// OP_LOAD_V	2336	130	2345
// OP_SUB_V	2342	2345	2348
// OP_STORE_V	2348	4	0
// OP_CALL1	506	0	0
// OP_MUL_F	972	1	2351
// OP_STORE_F	2351	2335	0
// OP_LT	2335	619	2352
// OP_IFNOT	2352	2	0
// OP_STORE_F	619	2335	0
// OP_SUB_F	2334	2335	2353
// OP_STORE_F	2353	2335	0
// OP_EQ_E	2336	2333	2354
// OP_IFNOT	2354	3	0
// OP_MUL_F	2335	972	2355
// OP_STORE_F	2355	2335	0
// OP_GT	2335	619	2356
// OP_IFNOT	2356	20	0
// OP_STORE_V	2336	4	0
// OP_STORE_V	2333	7	0
// OP_CALL2	570	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	2336	154	2357
// OP_EQ_S	2357	2358	2359
// OP_IFNOT	2359	8	0
// OP_STORE_V	2336	4	0
// OP_STORE_V	2333	7	0
// OP_STORE_V	2333	10	0
// OP_MUL_F	2335	972	2360
// OP_STORE_V	2360	13	0
// OP_CALL4	569	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	2336	4	0
// OP_STORE_V	2333	7	0
// OP_STORE_V	2333	10	0
// OP_STORE_V	2335	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	2336	189	2361
// OP_STORE_ENT	2361	2336	0
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

