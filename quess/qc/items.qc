void () W_SetCurrentAmmo;
// SUB_regen
// function begins at statement 1875, parm_start=2082
// OP_ADDRESS	28	130	2082
// OP_LOAD_S	28	395	2083
// OP_STOREP_S	2083	2082	0
// OP_ADDRESS	28	104	2084
// OP_STOREP_F	239	2084	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2085	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	2086
// OP_STORE_V	2086	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () SUB_regen = 
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", 1, ATTN_NORM);
    setorigin(self, self.origin);
};

// noclass
// function begins at statement 1891, parm_start=2090
// OP_STORE_V	2090	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	2091
// OP_STORE_V	2091	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () noclass = 
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};

// PlaceItem
// function begins at statement 1903, parm_start=2096
// OP_ADDRESS	28	395	2097
// OP_LOAD_S	28	130	2098
// OP_STOREP_S	2098	2097	0
// OP_ADDRESS	28	182	2099
// OP_STOREP_F	222	2099	0
// OP_ADDRESS	28	104	2100
// OP_STOREP_F	239	2100	0
// OP_ADDRESS	28	103	2101
// OP_STOREP_F	232	2101	0
// OP_ADDRESS	28	113	2102
// OP_STOREP_V	638	2102	0
// OP_ADDRESS	28	108	2105
// OP_LOAD_F	28	108	2106
// OP_ADD_F	2106	2107	2108
// OP_STOREP_F	2108	2105	0
// OP_LOAD_F	28	108	2109
// OP_STORE_F	2109	2096	0
// OP_CALL0	479	0	0
// OP_NOT_F	1	0	2110
// OP_IFNOT	2110	13	0
// OP_STORE_V	2111	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	2112
// OP_STORE_V	2112	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PlaceItem = 
{
    local float oldz;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_TOSS;
    self.velocity = '0.000 0.000 0.000';
    self.origin_z = self.origin_z + 6;
    oldz = self.origin_z;
    
    if(!droptofloor())
    {
        dprint("Bonus item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
        return;
    }
    
};

// StartItem
// function begins at statement 1936, parm_start=2116
// OP_ADDRESS	28	150	2116
// OP_ADD_F	31	922	2117
// OP_STOREP_F	2117	2116	0
// OP_ADDRESS	28	148	2118
// OP_STOREP_FNC	2095	2118	0
// OP_DONE	0	0	0
void () StartItem = 
{
    self.nextthink = time + 0.2;
    self.think = PlaceItem;
};

// T_Heal
// function begins at statement 1942, parm_start=2119
// OP_LOAD_F	2119	152	2122
// OP_LE	2122	650	2123
// OP_IFNOT	2123	2	0
// OP_RETURN	650	0	0
// OP_NOT_F	2121	0	2124
// OP_LOAD_F	2119	152	2125
// OP_LOAD_F	29	185	2126
// OP_GE	2125	2126	2127
// OP_AND	2124	2127	2128
// OP_IFNOT	2128	2	0
// OP_RETURN	650	0	0
// OP_STORE_V	2120	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	2120	0
// OP_ADDRESS	2119	152	2129
// OP_LOAD_F	2119	152	2130
// OP_ADD_F	2130	2120	2131
// OP_STOREP_F	2131	2129	0
// OP_NOT_F	2121	0	2132
// OP_LOAD_F	2119	152	2133
// OP_LOAD_F	29	185	2134
// OP_GE	2133	2134	2135
// OP_AND	2132	2135	2136
// OP_IFNOT	2136	4	0
// OP_ADDRESS	2119	152	2137
// OP_LOAD_F	29	185	2138
// OP_STOREP_F	2138	2137	0
// OP_LOAD_F	2119	152	2139
// OP_GT	2139	2140	2141
// OP_IFNOT	2141	3	0
// OP_ADDRESS	2119	152	2142
// OP_STOREP_F	2140	2142	0
// OP_RETURN	708	0	0
// OP_DONE	0	0	0
float (entity e, float healamount, float ignore) T_Heal = 
{
    
    if(e.health <= 0)
    {
        return 0;
    }
    
    
    if(!ignore && (e.health >= other.max_health))
    {
        return 0;
    }
    
    healamount = ceil(healamount);
    e.health = e.health + healamount;
    
    if(!ignore && (e.health >= other.max_health))
    {
        e.health = other.max_health;
    }
    
    
    if(e.health > 250)
    {
        e.health = 250;
    }
    
    return 1;
};

float H_ROTTEN = 1;
float H_MEGA = 2;
.float healamount;
.float healtype;
void () health_touch;
void () item_megahealth_rot;
// item_health
// function begins at statement 1976, parm_start=2150
// OP_ADDRESS	28	146	2150
// OP_STOREP_FNC	2147	2150	0
// OP_LOAD_F	28	195	2151
// OP_BITAND	2151	2143	2152
// OP_IFNOT	2152	15	0
// OP_STORE_V	2153	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2154	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2153	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	208	2155
// OP_STOREP_S	2154	2155	0
// OP_ADDRESS	28	2145	2156
// OP_STOREP_F	2157	2156	0
// OP_ADDRESS	28	2146	2158
// OP_STOREP_F	650	2158	0
// OP_GOTO	31	0	0
// OP_LOAD_F	28	195	2159
// OP_BITAND	2159	2144	2160
// OP_IFNOT	2160	15	0
// OP_STORE_V	2161	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2162	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2161	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	208	2163
// OP_STOREP_S	2162	2163	0
// OP_ADDRESS	28	2145	2164
// OP_STOREP_F	2165	2164	0
// OP_ADDRESS	28	2146	2166
// OP_STOREP_F	929	2166	0
// OP_GOTO	14	0	0
// OP_STORE_V	2167	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2168	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2167	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	208	2169
// OP_STOREP_S	2168	2169	0
// OP_ADDRESS	28	2145	2170
// OP_STOREP_F	2171	2170	0
// OP_ADDRESS	28	2146	2172
// OP_STOREP_F	708	2172	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_health = 
{
    self.touch = health_touch;
    if(self.spawnflags & H_ROTTEN)
    {
        precache_model("maps/b_bh10.bsp");
        precache_sound("items/r_item1.wav");
        setmodel(self, "maps/b_bh10.bsp");
        self.noise = "items/r_item1.wav";
        self.healamount = 15;
        self.healtype = 0;
    }
    else
    {
        if(self.spawnflags & H_MEGA)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = 100;
            self.healtype = 2;
        }
        else
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = 25;
            self.healtype = 1;
        }
        
    }
    
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// health_touch
// function begins at statement 2031, parm_start=2176
// OP_LOAD_S	29	129	2178
// OP_NE_S	2178	797	2179
// OP_IFNOT	2179	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	2146	2180
// OP_EQ_F	2180	929	2181
// OP_IFNOT	2181	14	0
// OP_LOAD_F	29	152	2182
// OP_GE	2182	2140	2183
// OP_IFNOT	2183	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	2145	2184
// OP_STORE_V	2184	7	0
// OP_STORE_V	708	10	0
// OP_CALL3	522	0	0
// OP_NOT_F	1	0	2185
// OP_IFNOT	2185	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	2145	2186
// OP_STORE_V	2186	7	0
// OP_STORE_V	650	10	0
// OP_CALL3	522	0	0
// OP_NOT_F	1	0	2187
// OP_IFNOT	2187	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2188	7	0
// OP_CALL2	470	0	0
// OP_LOAD_F	28	2145	2189
// OP_STORE_V	2189	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	2177	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2177	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2190	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_LOAD_S	28	208	2191
// OP_STORE_V	2191	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_ADDRESS	28	130	2193
// OP_STOREP_S	344	2193	0
// OP_ADDRESS	28	104	2194
// OP_STOREP_F	238	2194	0
// OP_LOAD_F	28	2146	2195
// OP_EQ_F	2195	929	2196
// OP_IFNOT	2196	13	0
// OP_ADDRESS	29	162	2197
// OP_LOAD_F	29	162	2198
// OP_BITOR	2198	270	2199
// OP_STOREP_F	2199	2197	0
// OP_ADDRESS	28	150	2200
// OP_ADD_F	31	1660	2201
// OP_STOREP_F	2201	2200	0
// OP_ADDRESS	28	148	2202
// OP_STOREP_FNC	2148	2202	0
// OP_ADDRESS	28	201	2203
// OP_STOREP_ENT	29	2203	0
// OP_GOTO	9	0	0
// OP_NE_F	35	929	2204
// OP_IFNOT	2204	7	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	2205
// OP_ADD_F	31	1017	2206
// OP_STOREP_F	2206	2205	0
// OP_ADDRESS	28	148	2207
// OP_STOREP_FNC	2081	2207	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () health_touch = 
{
    local float amount;
    local string s;
    
    if(other.classname != "player")
    {
        return;
    }
    
    if(self.healtype == 2)
    {
        
        if(other.health >= 250)
        {
            return;
        }
        
        
        if(!T_Heal(other, self.healamount, 1))
        {
            return;
        }
        
    }
    else
    {
        
        if(!T_Heal(other, self.healamount, 0))
        {
            return;
        }
        
    }
    
    sprint(other, "You receive ");
    s = ftos(self.healamount);
    sprint(other, s);
    sprint(other, " health\n");
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == 2)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + 5;
        self.think = item_megahealth_rot;
        self.owner = other;
    }
    else
    {
        
        if(deathmatch != 2)
        {
            
            if(deathmatch)
            {
                self.nextthink = time + 20;
            }
            
            self.think = SUB_regen;
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_megahealth_rot
// function begins at statement 2112, parm_start=2208
// OP_LOAD_ENT	28	201	2208
// OP_STORE_ENT	2208	29	0
// OP_LOAD_F	29	152	2209
// OP_LOAD_F	29	185	2210
// OP_GT	2209	2210	2211
// OP_IFNOT	2211	9	0
// OP_ADDRESS	29	152	2212
// OP_LOAD_F	29	152	2213
// OP_SUB_F	2213	708	2214
// OP_STOREP_F	2214	2212	0
// OP_ADDRESS	28	150	2215
// OP_ADD_F	31	708	2216
// OP_STOREP_F	2216	2215	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	2217
// OP_LOAD_F	29	162	2218
// OP_LOAD_F	29	162	2219
// OP_BITAND	2219	270	2220
// OP_SUB_F	2218	2220	2221
// OP_STOREP_F	2221	2217	0
// OP_EQ_F	35	708	2222
// OP_IFNOT	2222	6	0
// OP_ADDRESS	28	150	2223
// OP_ADD_F	31	1017	2224
// OP_STOREP_F	2224	2223	0
// OP_ADDRESS	28	148	2225
// OP_STOREP_FNC	2081	2225	0
// OP_DONE	0	0	0
void () item_megahealth_rot = 
{
    other = self.owner;
    
    if(other.health > other.max_health)
    {
        other.health = other.health - 1;
        self.nextthink = time + 1;
        return;
    }
    
    other.items = other.items - (other.items & IT_SUPERHEALTH);
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 20;
        self.think = SUB_regen;
    }
    
};

// armor_touch
// function begins at statement 2140, parm_start=2227
// OP_LOAD_F	29	152	2230
// OP_LE	2230	650	2231
// OP_IFNOT	2231	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2232
// OP_NE_S	2232	797	2233
// OP_IFNOT	2233	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	2234
// OP_EQ_S	2234	2235	2236
// OP_IFNOT	2236	4	0
// OP_STORE_F	1104	2227	0
// OP_STORE_F	2165	2228	0
// OP_STORE_F	267	2229	0
// OP_LOAD_S	28	129	2237
// OP_EQ_S	2237	2238	2239
// OP_IFNOT	2239	4	0
// OP_STORE_F	2240	2227	0
// OP_STORE_F	2241	2228	0
// OP_STORE_F	268	2229	0
// OP_LOAD_S	28	129	2242
// OP_EQ_S	2242	2243	2244
// OP_IFNOT	2244	4	0
// OP_STORE_F	2245	2227	0
// OP_STORE_F	2246	2228	0
// OP_STORE_F	269	2229	0
// OP_LOAD_F	29	187	2247
// OP_LOAD_F	29	188	2248
// OP_MUL_F	2247	2248	2249
// OP_MUL_F	2227	2228	2250
// OP_GE	2249	2250	2251
// OP_IFNOT	2251	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	2252
// OP_STOREP_F	2227	2252	0
// OP_ADDRESS	29	188	2253
// OP_STOREP_F	2228	2253	0
// OP_ADDRESS	29	162	2254
// OP_LOAD_F	29	162	2255
// OP_LOAD_F	29	162	2256
// OP_BITOR	267	268	2257
// OP_BITOR	2257	269	2258
// OP_BITAND	2256	2258	2259
// OP_SUB_F	2255	2259	2260
// OP_ADD_F	2260	2229	2261
// OP_STOREP_F	2261	2254	0
// OP_ADDRESS	28	104	2262
// OP_STOREP_F	238	2262	0
// OP_ADDRESS	28	130	2263
// OP_STOREP_S	344	2263	0
// OP_EQ_F	35	708	2264
// OP_IFNOT	2264	4	0
// OP_ADDRESS	28	150	2265
// OP_ADD_F	31	1017	2266
// OP_STOREP_F	2266	2265	0
// OP_ADDRESS	28	148	2267
// OP_STOREP_FNC	2081	2267	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2268	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2269	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () armor_touch = 
{
    local float type;
    local float value;
    local float bit;
    
    if(other.health <= 0)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.classname == "item_armor1")
    {
        type = 0.3;
        value = 100;
        bit = IT_ARMOR1;
    }
    
    
    if(self.classname == "item_armor2")
    {
        type = 0.6;
        value = 150;
        bit = IT_ARMOR2;
    }
    
    
    if(self.classname == "item_armorInv")
    {
        type = 0.8;
        value = 200;
        bit = IT_ARMOR3;
    }
    
    
    if((other.armortype * other.armorvalue) >= (type * value))
    {
        return;
    }
    
    other.armortype = type;
    other.armorvalue = value;
    other.items = (other.items - (other.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + bit;
    self.solid = SOLID_NOT;
    self.model = string_null;
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 20;
    }
    
    self.think = SUB_regen;
    sprint(other, "You got armor\n");
    sound(other, CHAN_ITEM, "items/armor1.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    activator = other;
    SUB_UseTargets();
};

// item_armor1
// function begins at statement 2212, parm_start=2271
// OP_ADDRESS	28	146	2271
// OP_STOREP_FNC	2226	2271	0
// OP_STORE_V	2272	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2272	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	132	2273
// OP_STOREP_F	650	2273	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_armor1 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 0;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// item_armor2
// function begins at statement 2227, parm_start=2281
// OP_ADDRESS	28	146	2281
// OP_STOREP_FNC	2226	2281	0
// OP_STORE_V	2272	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2272	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	132	2282
// OP_STOREP_F	708	2282	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_armor2 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 1;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// item_armorInv
// function begins at statement 2242, parm_start=2284
// OP_ADDRESS	28	146	2284
// OP_STOREP_FNC	2226	2284	0
// OP_STORE_V	2272	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2272	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	132	2285
// OP_STOREP_F	929	2285	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_armorInv = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 2;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// bound_other_ammo
// function begins at statement 2257, parm_start=2287
// OP_LOAD_F	29	158	2287
// OP_GT	2287	2165	2288
// OP_IFNOT	2288	3	0
// OP_ADDRESS	29	158	2289
// OP_STOREP_F	2165	2289	0
// OP_LOAD_F	29	159	2290
// OP_GT	2290	2246	2291
// OP_IFNOT	2291	3	0
// OP_ADDRESS	29	159	2292
// OP_STOREP_F	2246	2292	0
// OP_LOAD_F	29	160	2293
// OP_GT	2293	2165	2294
// OP_IFNOT	2294	3	0
// OP_ADDRESS	29	160	2295
// OP_STOREP_F	2165	2295	0
// OP_LOAD_F	29	161	2296
// OP_GT	2296	2165	2297
// OP_IFNOT	2297	3	0
// OP_ADDRESS	29	161	2298
// OP_STOREP_F	2165	2298	0
// OP_DONE	0	0	0
void () bound_other_ammo = 
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

// RankForWeapon
// function begins at statement 2278, parm_start=2300
// OP_EQ_F	2300	261	2301
// OP_IFNOT	2301	2	0
// OP_RETURN	708	0	0
// OP_EQ_F	2300	260	2302
// OP_IFNOT	2302	2	0
// OP_RETURN	929	0	0
// OP_EQ_F	2300	258	2303
// OP_IFNOT	2303	2	0
// OP_RETURN	819	0	0
// OP_EQ_F	2300	259	2304
// OP_IFNOT	2304	2	0
// OP_RETURN	1835	0	0
// OP_EQ_F	2300	256	2305
// OP_IFNOT	2305	2	0
// OP_RETURN	1660	0	0
// OP_EQ_F	2300	257	2306
// OP_IFNOT	2306	2	0
// OP_RETURN	2107	0	0
// OP_RETURN	2307	0	0
// OP_DONE	0	0	0
float (float w) RankForWeapon = 
{
    
    if(w == IT_LIGHTNING)
    {
        return 1;
    }
    
    
    if(w == IT_ROCKET_LAUNCHER)
    {
        return 2;
    }
    
    
    if(w == IT_SUPER_NAILGUN)
    {
        return 3;
    }
    
    
    if(w == IT_GRENADE_LAUNCHER)
    {
        return 4;
    }
    
    
    if(w == IT_SUPER_SHOTGUN)
    {
        return 5;
    }
    
    
    if(w == IT_NAILGUN)
    {
        return 6;
    }
    
    return 7;
};

// Deathmatch_Weapon
// function begins at statement 2298, parm_start=2309
// OP_LOAD_F	28	154	2313
// OP_STORE_V	2313	4	0
// OP_CALL1	2299	0	0
// OP_STORE_F	1	2311	0
// OP_STORE_V	2310	4	0
// OP_CALL1	2299	0	0
// OP_STORE_F	1	2312	0
// OP_LT	2312	2311	2314
// OP_IFNOT	2314	3	0
// OP_ADDRESS	28	154	2315
// OP_STOREP_F	2310	2315	0
// OP_DONE	0	0	0
void (float old, float new) Deathmatch_Weapon = 
{
    local float or;
    local float nr;
    or = RankForWeapon(self.weapon);
    nr = RankForWeapon(new);
    
    if(nr < or)
    {
        self.weapon = new;
    }
    
};

float () W_BestWeapon;
// weapon_touch
// function begins at statement 2310, parm_start=2318
// OP_LOAD_F	29	182	2324
// OP_BITAND	2324	217	2325
// OP_NOT_F	2325	0	2326
// OP_IFNOT	2326	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2322	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2316	0	0
// OP_STORE_F	1	2319	0
// OP_STORE_ENT	2322	28	0
// OP_EQ_F	35	929	2327
// OP_OR	2327	36	2328
// OP_IFNOT	2328	3	0
// OP_STORE_F	708	2323	0
// OP_GOTO	2	0	0
// OP_STORE_F	650	2323	0
// OP_LOAD_S	28	129	2329
// OP_EQ_S	2329	2330	2331
// OP_IFNOT	2331	14	0
// OP_LOAD_F	29	162	2332
// OP_BITAND	2332	257	2333
// OP_AND	2323	2333	2334
// OP_IFNOT	2334	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	159	2335
// OP_STORE_F	2335	2318	0
// OP_STORE_F	257	2320	0
// OP_ADDRESS	29	159	2336
// OP_LOAD_F	29	159	2337
// OP_ADD_F	2337	1004	2338
// OP_STOREP_F	2338	2336	0
// OP_GOTO	83	0	0
// OP_LOAD_S	28	129	2339
// OP_EQ_S	2339	2340	2341
// OP_IFNOT	2341	14	0
// OP_LOAD_F	29	162	2342
// OP_BITAND	2342	258	2343
// OP_AND	2323	2343	2344
// OP_IFNOT	2344	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2345
// OP_STORE_F	2345	2318	0
// OP_STORE_F	258	2320	0
// OP_ADDRESS	29	159	2346
// OP_LOAD_F	29	159	2347
// OP_ADD_F	2347	1004	2348
// OP_STOREP_F	2348	2346	0
// OP_GOTO	67	0	0
// OP_LOAD_S	28	129	2349
// OP_EQ_S	2349	2350	2351
// OP_IFNOT	2351	14	0
// OP_LOAD_F	29	162	2352
// OP_BITAND	2352	256	2353
// OP_AND	2323	2353	2354
// OP_IFNOT	2354	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2355
// OP_STORE_F	2355	2318	0
// OP_STORE_F	256	2320	0
// OP_ADDRESS	29	158	2356
// OP_LOAD_F	29	158	2357
// OP_ADD_F	2357	1660	2358
// OP_STOREP_F	2358	2356	0
// OP_GOTO	51	0	0
// OP_LOAD_S	28	129	2359
// OP_EQ_S	2359	2360	2361
// OP_IFNOT	2361	14	0
// OP_LOAD_F	29	162	2362
// OP_BITAND	2362	260	2363
// OP_AND	2323	2363	2364
// OP_IFNOT	2364	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2365
// OP_STORE_F	2365	2318	0
// OP_STORE_F	260	2320	0
// OP_ADDRESS	29	160	2366
// OP_LOAD_F	29	160	2367
// OP_ADD_F	2367	1660	2368
// OP_STOREP_F	2368	2366	0
// OP_GOTO	35	0	0
// OP_LOAD_S	28	129	2369
// OP_EQ_S	2369	2370	2371
// OP_IFNOT	2371	14	0
// OP_LOAD_F	29	162	2372
// OP_BITAND	2372	259	2373
// OP_AND	2323	2373	2374
// OP_IFNOT	2374	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2375
// OP_STORE_F	2375	2318	0
// OP_STORE_F	259	2320	0
// OP_ADDRESS	29	160	2376
// OP_LOAD_F	29	160	2377
// OP_ADD_F	2377	1660	2378
// OP_STOREP_F	2378	2376	0
// OP_GOTO	19	0	0
// OP_LOAD_S	28	129	2379
// OP_EQ_S	2379	2380	2381
// OP_IFNOT	2381	14	0
// OP_LOAD_F	29	162	2382
// OP_BITAND	2382	261	2383
// OP_AND	2323	2383	2384
// OP_IFNOT	2384	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2385
// OP_STORE_F	2385	2318	0
// OP_STORE_F	261	2320	0
// OP_ADDRESS	29	161	2386
// OP_LOAD_F	29	161	2387
// OP_ADD_F	2387	2157	2388
// OP_STOREP_F	2388	2386	0
// OP_GOTO	3	0	0
// OP_STORE_V	2389	4	0
// OP_CALL1	457	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2390	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2391
// OP_STORE_V	2391	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2094	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2392	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_CALL0	2286	0	0
// OP_LOAD_F	29	162	2393
// OP_STORE_F	2393	2321	0
// OP_ADDRESS	29	162	2394
// OP_LOAD_F	29	162	2395
// OP_BITOR	2395	2320	2396
// OP_STOREP_F	2396	2394	0
// OP_STORE_ENT	28	2322	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	2397
// OP_IFNOT	2397	4	0
// OP_ADDRESS	28	154	2398
// OP_STOREP_F	2320	2398	0
// OP_GOTO	4	0	0
// OP_STORE_V	2321	4	0
// OP_STORE_V	2320	7	0
// OP_CALL2	2308	0	0
// OP_CALL0	2080	0	0
// OP_STORE_ENT	2322	28	0
// OP_IFNOT	2323	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	2399
// OP_STOREP_S	344	2399	0
// OP_ADDRESS	28	104	2400
// OP_STOREP_F	238	2400	0
// OP_EQ_F	35	708	2401
// OP_IFNOT	2401	4	0
// OP_ADDRESS	28	150	2402
// OP_ADD_F	31	1004	2403
// OP_STOREP_F	2403	2402	0
// OP_ADDRESS	28	148	2404
// OP_STOREP_FNC	2081	2404	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () weapon_touch = 
{
    local float hadammo;
    local float best;
    local float new;
    local float old;
    local entity stemp;
    local float leave;
    
    if(!(other.flags & FL_CLIENT))
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    if((deathmatch == 2) || coop)
    {
        leave = 1;
    }
    else
    {
        leave = 0;
    }
    
    if(self.classname == "weapon_nailgun")
    {
        
        if(leave && (other.items & IT_NAILGUN))
        {
            return;
        }
        
        hadammo = other.ammo_nails;
        new = IT_NAILGUN;
        other.ammo_nails = other.ammo_nails + 30;
    }
    else
    {
        if(self.classname == "weapon_supernailgun")
        {
            
            if(leave && (other.items & IT_SUPER_NAILGUN))
            {
                return;
            }
            
            hadammo = other.ammo_rockets;
            new = IT_SUPER_NAILGUN;
            other.ammo_nails = other.ammo_nails + 30;
        }
        else
        {
            if(self.classname == "weapon_supershotgun")
            {
                
                if(leave && (other.items & IT_SUPER_SHOTGUN))
                {
                    return;
                }
                
                hadammo = other.ammo_rockets;
                new = IT_SUPER_SHOTGUN;
                other.ammo_shells = other.ammo_shells + 5;
            }
            else
            {
                if(self.classname == "weapon_rocketlauncher")
                {
                    
                    if(leave && (other.items & IT_ROCKET_LAUNCHER))
                    {
                        return;
                    }
                    
                    hadammo = other.ammo_rockets;
                    new = IT_ROCKET_LAUNCHER;
                    other.ammo_rockets = other.ammo_rockets + 5;
                }
                else
                {
                    if(self.classname == "weapon_grenadelauncher")
                    {
                        
                        if(leave && (other.items & IT_GRENADE_LAUNCHER))
                        {
                            return;
                        }
                        
                        hadammo = other.ammo_rockets;
                        new = IT_GRENADE_LAUNCHER;
                        other.ammo_rockets = other.ammo_rockets + 5;
                    }
                    else
                    {
                        if(self.classname == "weapon_lightning")
                        {
                            
                            if(leave && (other.items & IT_LIGHTNING))
                            {
                                return;
                            }
                            
                            hadammo = other.ammo_rockets;
                            new = IT_LIGHTNING;
                            other.ammo_cells = other.ammo_cells + 15;
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
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/pkup.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    bound_other_ammo();
    old = other.items;
    other.items = other.items | new;
    stemp = self;
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
    self = stemp;
    
    if(leave)
    {
        return;
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 30;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

// weapon_supershotgun
// function begins at statement 2478, parm_start=2406
// OP_STORE_V	2406	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2406	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2407
// OP_STOREP_F	256	2407	0
// OP_ADDRESS	28	180	2408
// OP_STOREP_S	2409	2408	0
// OP_ADDRESS	28	146	2410
// OP_STOREP_FNC	2317	2410	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_supershotgun = 
{
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_nailgun
// function begins at statement 2495, parm_start=2412
// OP_STORE_V	2412	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2412	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2413
// OP_STOREP_F	257	2413	0
// OP_ADDRESS	28	180	2414
// OP_STOREP_S	2415	2414	0
// OP_ADDRESS	28	146	2416
// OP_STOREP_FNC	2317	2416	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_nailgun = 
{
    precache_model("progs/g_nail.mdl");
    setmodel(self, "progs/g_nail.mdl");
    self.weapon = IT_NAILGUN;
    self.netname = "nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_supernailgun
// function begins at statement 2512, parm_start=2418
// OP_STORE_V	2418	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2418	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2419
// OP_STOREP_F	258	2419	0
// OP_ADDRESS	28	180	2420
// OP_STOREP_S	2421	2420	0
// OP_ADDRESS	28	146	2422
// OP_STOREP_FNC	2317	2422	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_supernailgun = 
{
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_grenadelauncher
// function begins at statement 2529, parm_start=2424
// OP_STORE_V	2424	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2424	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2425
// OP_STOREP_F	819	2425	0
// OP_ADDRESS	28	180	2426
// OP_STOREP_S	2427	2426	0
// OP_ADDRESS	28	146	2428
// OP_STOREP_FNC	2317	2428	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_grenadelauncher = 
{
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = 3;
    self.netname = "Grenade Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_rocketlauncher
// function begins at statement 2546, parm_start=2430
// OP_STORE_V	2430	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2430	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2431
// OP_STOREP_F	819	2431	0
// OP_ADDRESS	28	180	2432
// OP_STOREP_S	2433	2432	0
// OP_ADDRESS	28	146	2434
// OP_STOREP_FNC	2317	2434	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_rocketlauncher = 
{
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = 3;
    self.netname = "Rocket Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_lightning
// function begins at statement 2563, parm_start=2436
// OP_STORE_V	2436	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2436	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	154	2437
// OP_STOREP_F	819	2437	0
// OP_ADDRESS	28	180	2438
// OP_STOREP_S	2439	2438	0
// OP_ADDRESS	28	146	2440
// OP_STOREP_FNC	2317	2440	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () weapon_lightning = 
{
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = 3;
    self.netname = "Thunderbolt";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// ammo_touch
// function begins at statement 2580, parm_start=2442
// OP_LOAD_S	29	129	2444
// OP_NE_S	2444	797	2445
// OP_IFNOT	2445	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2446
// OP_LE	2446	650	2447
// OP_IFNOT	2447	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2442	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2316	0	0
// OP_STORE_F	1	2443	0
// OP_STORE_ENT	2442	28	0
// OP_LOAD_F	28	154	2448
// OP_EQ_F	2448	708	2449
// OP_IFNOT	2449	10	0
// OP_LOAD_F	29	158	2450
// OP_GE	2450	2165	2451
// OP_IFNOT	2451	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	158	2452
// OP_LOAD_F	29	158	2453
// OP_LOAD_F	28	420	2454
// OP_ADD_F	2453	2454	2455
// OP_STOREP_F	2455	2452	0
// OP_LOAD_F	28	154	2456
// OP_EQ_F	2456	929	2457
// OP_IFNOT	2457	10	0
// OP_LOAD_F	29	159	2458
// OP_GE	2458	2246	2459
// OP_IFNOT	2459	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	159	2460
// OP_LOAD_F	29	159	2461
// OP_LOAD_F	28	420	2462
// OP_ADD_F	2461	2462	2463
// OP_STOREP_F	2463	2460	0
// OP_LOAD_F	28	154	2464
// OP_EQ_F	2464	819	2465
// OP_IFNOT	2465	10	0
// OP_LOAD_F	29	160	2466
// OP_GE	2466	2165	2467
// OP_IFNOT	2467	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	160	2468
// OP_LOAD_F	29	160	2469
// OP_LOAD_F	28	420	2470
// OP_ADD_F	2469	2470	2471
// OP_STOREP_F	2471	2468	0
// OP_LOAD_F	28	154	2472
// OP_EQ_F	2472	1835	2473
// OP_IFNOT	2473	10	0
// OP_LOAD_F	29	161	2474
// OP_GE	2474	2165	2475
// OP_IFNOT	2475	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	161	2476
// OP_LOAD_F	29	161	2477
// OP_LOAD_F	28	420	2478
// OP_ADD_F	2477	2478	2479
// OP_STOREP_F	2479	2476	0
// OP_CALL0	2286	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2390	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2480
// OP_STORE_V	2480	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2094	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2481	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	29	154	2482
// OP_EQ_F	2482	2443	2483
// OP_IFNOT	2483	8	0
// OP_STORE_ENT	28	2442	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	2484
// OP_CALL0	2316	0	0
// OP_STOREP_F	1	2484	0
// OP_CALL0	2080	0	0
// OP_STORE_ENT	2442	28	0
// OP_STORE_ENT	28	2442	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2080	0	0
// OP_STORE_ENT	2442	28	0
// OP_ADDRESS	28	130	2485
// OP_STOREP_S	344	2485	0
// OP_ADDRESS	28	104	2486
// OP_STOREP_F	238	2486	0
// OP_EQ_F	35	708	2487
// OP_IFNOT	2487	4	0
// OP_ADDRESS	28	150	2488
// OP_ADD_F	31	1004	2489
// OP_STOREP_F	2489	2488	0
// OP_ADDRESS	28	148	2490
// OP_STOREP_FNC	2081	2490	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () ammo_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(self.weapon == 1)
    {
        
        if(other.ammo_shells >= 100)
        {
            return;
        }
        
        other.ammo_shells = other.ammo_shells + self.aflag;
    }
    
    
    if(self.weapon == 2)
    {
        
        if(other.ammo_nails >= 200)
        {
            return;
        }
        
        other.ammo_nails = other.ammo_nails + self.aflag;
    }
    
    
    if(self.weapon == 3)
    {
        
        if(other.ammo_rockets >= 100)
        {
            return;
        }
        
        other.ammo_rockets = other.ammo_rockets + self.aflag;
    }
    
    
    if(self.weapon == 4)
    {
        
        if(other.ammo_cells >= 100)
        {
            return;
        }
        
        other.ammo_cells = other.ammo_cells + self.aflag;
    }
    
    bound_other_ammo();
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/lock4.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    
    if(other.weapon == best)
    {
        stemp = self;
        self = other;
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        self = stemp;
    }
    
    stemp = self;
    self = other;
    W_SetCurrentAmmo();
    self = stemp;
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 30;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

float WEAPON_BIG2 = 1;
// item_shells
// function begins at statement 2689, parm_start=2493
// OP_ADDRESS	28	146	2493
// OP_STOREP_FNC	2441	2493	0
// OP_LOAD_F	28	195	2494
// OP_BITAND	2494	2491	2495
// OP_IFNOT	2495	9	0
// OP_STORE_V	2496	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2496	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2497
// OP_STOREP_F	2007	2497	0
// OP_GOTO	8	0	0
// OP_STORE_V	2498	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2498	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2499
// OP_STOREP_F	1017	2499	0
// OP_ADDRESS	28	154	2500
// OP_STOREP_F	708	2500	0
// OP_ADDRESS	28	180	2501
// OP_STOREP_S	2502	2501	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_shells = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_shell1.bsp");
        setmodel(self, "maps/b_shell1.bsp");
        self.aflag = 40;
    }
    else
    {
        precache_model("maps/b_shell0.bsp");
        setmodel(self, "maps/b_shell0.bsp");
        self.aflag = 20;
    }
    
    self.weapon = 1;
    self.netname = "shells";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_spikes
// function begins at statement 2719, parm_start=2504
// OP_ADDRESS	28	146	2504
// OP_STOREP_FNC	2441	2504	0
// OP_LOAD_F	28	195	2505
// OP_BITAND	2505	2491	2506
// OP_IFNOT	2506	9	0
// OP_STORE_V	2507	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2507	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2508
// OP_STOREP_F	2509	2508	0
// OP_GOTO	8	0	0
// OP_STORE_V	2510	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2510	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2511
// OP_STOREP_F	2171	2511	0
// OP_ADDRESS	28	154	2512
// OP_STOREP_F	929	2512	0
// OP_ADDRESS	28	180	2513
// OP_STOREP_S	2514	2513	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_spikes = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_nail1.bsp");
        setmodel(self, "maps/b_nail1.bsp");
        self.aflag = 50;
    }
    else
    {
        precache_model("maps/b_nail0.bsp");
        setmodel(self, "maps/b_nail0.bsp");
        self.aflag = 25;
    }
    
    self.weapon = 2;
    self.netname = "nails";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_rockets
// function begins at statement 2749, parm_start=2516
// OP_ADDRESS	28	146	2516
// OP_STOREP_FNC	2441	2516	0
// OP_LOAD_F	28	195	2517
// OP_BITAND	2517	2491	2518
// OP_IFNOT	2518	9	0
// OP_STORE_V	2519	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2519	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2520
// OP_STOREP_F	1931	2520	0
// OP_GOTO	8	0	0
// OP_STORE_V	2521	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2522
// OP_STOREP_F	1660	2522	0
// OP_ADDRESS	28	154	2523
// OP_STOREP_F	819	2523	0
// OP_ADDRESS	28	180	2524
// OP_STOREP_S	2525	2524	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_rockets = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = 10;
    }
    else
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = 5;
    }
    
    self.weapon = 3;
    self.netname = "rockets";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_cells
// function begins at statement 2779, parm_start=2527
// OP_ADDRESS	28	146	2527
// OP_STOREP_FNC	2441	2527	0
// OP_LOAD_F	28	195	2528
// OP_BITAND	2528	2491	2529
// OP_IFNOT	2529	9	0
// OP_STORE_V	2530	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2530	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2531
// OP_STOREP_F	2532	2531	0
// OP_GOTO	8	0	0
// OP_STORE_V	2533	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2533	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2534
// OP_STOREP_F	2107	2534	0
// OP_ADDRESS	28	154	2535
// OP_STOREP_F	1835	2535	0
// OP_ADDRESS	28	180	2536
// OP_STOREP_S	2537	2536	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_cells = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_batt1.bsp");
        setmodel(self, "maps/b_batt1.bsp");
        self.aflag = 12;
    }
    else
    {
        precache_model("maps/b_batt0.bsp");
        setmodel(self, "maps/b_batt0.bsp");
        self.aflag = 6;
    }
    
    self.weapon = 4;
    self.netname = "cells";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

float WEAPON_SHOTGUN = 1;
float WEAPON_ROCKET = 2;
float WEAPON_SPIKES = 4;
float WEAPON_BIG = 8;
// item_weapon
// function begins at statement 2809, parm_start=2543
// OP_ADDRESS	28	146	2543
// OP_STOREP_FNC	2441	2543	0
// OP_LOAD_F	28	195	2544
// OP_BITAND	2544	2538	2545
// OP_IFNOT	2545	23	0
// OP_LOAD_F	28	195	2546
// OP_BITAND	2546	2541	2547
// OP_IFNOT	2547	9	0
// OP_STORE_V	2496	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2496	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2548
// OP_STOREP_F	2007	2548	0
// OP_GOTO	8	0	0
// OP_STORE_V	2498	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2498	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2549
// OP_STOREP_F	1017	2549	0
// OP_ADDRESS	28	154	2550
// OP_STOREP_F	708	2550	0
// OP_ADDRESS	28	180	2551
// OP_STOREP_S	2502	2551	0
// OP_LOAD_F	28	195	2552
// OP_BITAND	2552	2540	2553
// OP_IFNOT	2553	23	0
// OP_LOAD_F	28	195	2554
// OP_BITAND	2554	2541	2555
// OP_IFNOT	2555	9	0
// OP_STORE_V	2507	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2507	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2556
// OP_STOREP_F	2007	2556	0
// OP_GOTO	8	0	0
// OP_STORE_V	2510	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2510	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2557
// OP_STOREP_F	1017	2557	0
// OP_ADDRESS	28	154	2558
// OP_STOREP_F	929	2558	0
// OP_ADDRESS	28	180	2559
// OP_STOREP_S	2560	2559	0
// OP_LOAD_F	28	195	2561
// OP_BITAND	2561	2539	2562
// OP_IFNOT	2562	23	0
// OP_LOAD_F	28	195	2563
// OP_BITAND	2563	2541	2564
// OP_IFNOT	2564	9	0
// OP_STORE_V	2519	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2519	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2565
// OP_STOREP_F	1931	2565	0
// OP_GOTO	8	0	0
// OP_STORE_V	2521	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	420	2566
// OP_STOREP_F	1660	2566	0
// OP_ADDRESS	28	154	2567
// OP_STOREP_F	819	2567	0
// OP_ADDRESS	28	180	2568
// OP_STOREP_S	2525	2568	0
// OP_STORE_V	28	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	2173	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_weapon = 
{
    self.touch = ammo_touch;
    
    if(self.spawnflags & WEAPON_SHOTGUN)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_shell1.bsp");
            setmodel(self, "maps/b_shell1.bsp");
            self.aflag = 40;
        }
        else
        {
            precache_model("maps/b_shell0.bsp");
            setmodel(self, "maps/b_shell0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = 1;
        self.netname = "shells";
    }
    
    
    if(self.spawnflags & WEAPON_SPIKES)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_nail1.bsp");
            setmodel(self, "maps/b_nail1.bsp");
            self.aflag = 40;
        }
        else
        {
            precache_model("maps/b_nail0.bsp");
            setmodel(self, "maps/b_nail0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = 2;
        self.netname = "spikes";
    }
    
    
    if(self.spawnflags & WEAPON_ROCKET)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_rock1.bsp");
            setmodel(self, "maps/b_rock1.bsp");
            self.aflag = 10;
        }
        else
        {
            precache_model("maps/b_rock0.bsp");
            setmodel(self, "maps/b_rock0.bsp");
            self.aflag = 5;
        }
        
        self.weapon = 3;
        self.netname = "rockets";
    }
    
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// key_touch
// function begins at statement 2892, parm_start=2570
// OP_LOAD_S	29	129	2572
// OP_NE_S	2572	797	2573
// OP_IFNOT	2573	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2574
// OP_LE	2574	650	2575
// OP_IFNOT	2575	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	2576
// OP_LOAD_F	28	162	2577
// OP_BITAND	2576	2577	2578
// OP_IFNOT	2578	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2390	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2579
// OP_STORE_V	2579	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2094	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_LOAD_S	28	208	2580
// OP_STORE_V	2580	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_ADDRESS	29	162	2581
// OP_LOAD_F	29	162	2582
// OP_LOAD_F	28	162	2583
// OP_BITOR	2582	2583	2584
// OP_STOREP_F	2584	2581	0
// OP_NOT_F	36	0	2585
// OP_IFNOT	2585	5	0
// OP_ADDRESS	28	104	2586
// OP_STOREP_F	238	2586	0
// OP_ADDRESS	28	130	2587
// OP_STOREP_S	344	2587	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () key_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    
    if(other.items & self.items)
    {
        return;
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    other.items = other.items | self.items;
    
    if(!coop)
    {
        self.solid = SOLID_NOT;
        self.model = string_null;
    }
    
    activator = other;
    SUB_UseTargets();
};

// key_setsounds
// function begins at statement 2939, parm_start=2589
// OP_LOAD_F	30	353	2589
// OP_EQ_F	2589	650	2590
// OP_IFNOT	2590	5	0
// OP_STORE_V	2591	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2592
// OP_STOREP_S	2591	2592	0
// OP_LOAD_F	30	353	2593
// OP_EQ_F	2593	708	2594
// OP_IFNOT	2594	5	0
// OP_STORE_V	2595	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2596
// OP_STOREP_S	2595	2596	0
// OP_LOAD_F	30	353	2597
// OP_EQ_F	2597	929	2598
// OP_IFNOT	2598	5	0
// OP_STORE_V	2599	4	0
// OP_CALL1	510	0	0
// OP_ADDRESS	28	208	2600
// OP_STOREP_S	2599	2600	0
// OP_DONE	0	0	0
void () key_setsounds = 
{
    
    if(world.worldtype == 0)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    
    
    if(world.worldtype == 1)
    {
        precache_sound("misc/runekey.wav");
        self.noise = "misc/runekey.wav";
    }
    
    
    if(world.worldtype == 2)
    {
        precache_sound2("misc/basekey.wav");
        self.noise = "misc/basekey.wav";
    }
    
};

// item_key1
// function begins at statement 2961, parm_start=2602
// OP_LOAD_F	30	353	2602
// OP_EQ_F	2602	650	2603
// OP_IFNOT	2603	9	0
// OP_STORE_V	2604	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2604	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2605
// OP_STOREP_S	2606	2605	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	353	2607
// OP_EQ_F	2607	708	2608
// OP_IFNOT	2608	9	0
// OP_STORE_V	2609	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2609	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2610
// OP_STOREP_S	2611	2610	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	353	2612
// OP_EQ_F	2612	929	2613
// OP_IFNOT	2613	8	0
// OP_STORE_V	2614	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2614	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2615
// OP_STOREP_S	2616	2615	0
// OP_CALL0	2588	0	0
// OP_ADDRESS	28	146	2617
// OP_STOREP_FNC	2569	2617	0
// OP_ADDRESS	28	162	2618
// OP_STOREP_F	271	2618	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_key1 = 
{
    if(world.worldtype == 0)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else
    {
        if(world.worldtype == 1)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else
        {
            
            if(world.worldtype == 2)
            {
                precache_model2("progs/b_s_key.mdl");
                setmodel(self, "progs/b_s_key.mdl");
                self.netname = "silver keycard";
            }
            
        }
        
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY1;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_key2
// function begins at statement 3004, parm_start=2626
// OP_LOAD_F	30	353	2626
// OP_EQ_F	2626	650	2627
// OP_IFNOT	2627	8	0
// OP_STORE_V	2628	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2628	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2629
// OP_STOREP_S	2630	2629	0
// OP_LOAD_F	30	353	2631
// OP_EQ_F	2631	708	2632
// OP_IFNOT	2632	8	0
// OP_STORE_V	2633	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2633	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2634
// OP_STOREP_S	2635	2634	0
// OP_LOAD_F	30	353	2636
// OP_EQ_F	2636	929	2637
// OP_IFNOT	2637	8	0
// OP_STORE_V	2638	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2638	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2639
// OP_STOREP_S	2640	2639	0
// OP_CALL0	2588	0	0
// OP_ADDRESS	28	146	2641
// OP_STOREP_FNC	2569	2641	0
// OP_ADDRESS	28	162	2642
// OP_STOREP_F	272	2642	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_key2 = 
{
    
    if(world.worldtype == 0)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    
    
    if(world.worldtype == 1)
    {
        precache_model("progs/m_g_key.mdl");
        setmodel(self, "progs/m_g_key.mdl");
        self.netname = "gold runekey";
    }
    
    
    if(world.worldtype == 2)
    {
        precache_model2("progs/b_g_key.mdl");
        setmodel(self, "progs/b_g_key.mdl");
        self.netname = "gold keycard";
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY2;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// sigil_touch
// function begins at statement 3045, parm_start=2644
// OP_LOAD_S	29	129	2646
// OP_NE_S	2646	797	2647
// OP_IFNOT	2647	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2648
// OP_LE	2648	650	2649
// OP_IFNOT	2649	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2650	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_LOAD_S	28	208	2651
// OP_STORE_V	2651	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_ADDRESS	28	104	2652
// OP_STOREP_F	238	2652	0
// OP_ADDRESS	28	130	2653
// OP_STOREP_S	344	2653	0
// OP_LOAD_F	28	195	2654
// OP_BITAND	2654	2157	2655
// OP_BITOR	38	2655	2656
// OP_STORE_F	2656	38	0
// OP_ADDRESS	28	129	2657
// OP_STOREP_S	652	2657	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () sigil_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    centerprint(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & 15);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};

// item_sigil
// function begins at statement 3079, parm_start=2659
// OP_LOAD_F	28	195	2659
// OP_NOT_F	2659	0	2660
// OP_IFNOT	2660	3	0
// OP_STORE_V	2661	4	0
// OP_CALL1	457	0	0
// OP_STORE_V	2595	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2662
// OP_STOREP_S	2595	2662	0
// OP_LOAD_F	28	195	2663
// OP_BITAND	2663	708	2664
// OP_IFNOT	2664	6	0
// OP_STORE_V	2665	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2665	7	0
// OP_CALL2	450	0	0
// OP_LOAD_F	28	195	2666
// OP_BITAND	2666	929	2667
// OP_IFNOT	2667	6	0
// OP_STORE_V	2668	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2668	7	0
// OP_CALL2	450	0	0
// OP_LOAD_F	28	195	2669
// OP_BITAND	2669	1835	2670
// OP_IFNOT	2670	6	0
// OP_STORE_V	2671	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2671	7	0
// OP_CALL2	450	0	0
// OP_LOAD_F	28	195	2672
// OP_BITAND	2672	1502	2673
// OP_IFNOT	2673	6	0
// OP_STORE_V	2674	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2674	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	146	2675
// OP_STOREP_FNC	2643	2675	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_sigil = 
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & 1)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & 2)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & 4)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & 8)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = sigil_touch;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// powerup_touch
// function begins at statement 3128, parm_start=2677
// OP_LOAD_S	29	129	2679
// OP_NE_S	2679	797	2680
// OP_IFNOT	2680	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2681
// OP_LE	2681	650	2682
// OP_IFNOT	2682	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2390	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2683
// OP_STORE_V	2683	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2094	7	0
// OP_CALL2	470	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	395	2684
// OP_LOAD_S	28	130	2685
// OP_STOREP_S	2685	2684	0
// OP_LOAD_S	28	129	2686
// OP_EQ_S	2686	2687	2688
// OP_LOAD_S	28	129	2689
// OP_EQ_S	2689	2690	2691
// OP_OR	2688	2691	2692
// OP_IFNOT	2692	6	0
// OP_ADDRESS	28	150	2693
// OP_MUL_F	1035	1660	2694
// OP_ADD_F	31	2694	2695
// OP_STOREP_F	2695	2693	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	2696
// OP_ADD_F	31	1035	2697
// OP_STOREP_F	2697	2696	0
// OP_ADDRESS	28	148	2698
// OP_STOREP_FNC	2081	2698	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	2699
// OP_STORE_V	2699	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_ADDRESS	28	104	2700
// OP_STOREP_F	238	2700	0
// OP_ADDRESS	29	162	2701
// OP_LOAD_F	29	162	2702
// OP_LOAD_F	28	162	2703
// OP_BITOR	2702	2703	2704
// OP_STOREP_F	2704	2701	0
// OP_ADDRESS	28	130	2705
// OP_STOREP_S	344	2705	0
// OP_LOAD_S	28	129	2706
// OP_EQ_S	2706	2707	2708
// OP_IFNOT	2708	6	0
// OP_ADDRESS	29	386	2709
// OP_STOREP_F	708	2709	0
// OP_ADDRESS	29	379	2710
// OP_ADD_F	31	1004	2711
// OP_STOREP_F	2711	2710	0
// OP_LOAD_S	28	129	2712
// OP_EQ_S	2712	2687	2713
// OP_IFNOT	2713	6	0
// OP_ADDRESS	29	380	2714
// OP_STOREP_F	708	2714	0
// OP_ADDRESS	29	376	2715
// OP_ADD_F	31	1004	2716
// OP_STOREP_F	2716	2715	0
// OP_LOAD_S	28	129	2717
// OP_EQ_S	2717	2690	2718
// OP_IFNOT	2718	6	0
// OP_ADDRESS	29	382	2719
// OP_STOREP_F	708	2719	0
// OP_ADDRESS	29	377	2720
// OP_ADD_F	31	1004	2721
// OP_STOREP_F	2721	2720	0
// OP_LOAD_S	28	129	2722
// OP_EQ_S	2722	2723	2724
// OP_IFNOT	2724	6	0
// OP_ADDRESS	29	384	2725
// OP_STOREP_F	708	2725	0
// OP_ADDRESS	29	378	2726
// OP_ADD_F	31	1004	2727
// OP_STOREP_F	2727	2726	0
// OP_STORE_ENT	29	347	0
// OP_CALL0	519	0	0
// OP_DONE	0	0	0
void () powerup_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60 * 5);
        }
        else
        {
            self.nextthink = time + 60;
        }
        
        self.think = SUB_regen;
    }
    
    sound(other, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = 1;
        other.radsuit_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = 1;
        other.invincible_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = 1;
        other.invisible_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = 1;
        other.super_damage_finished = time + 30;
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_artifact_invulnerability
// function begins at statement 3220, parm_start=2729
// OP_ADDRESS	28	146	2729
// OP_STOREP_FNC	2676	2729	0
// OP_STORE_V	2730	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2731	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2732	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1908	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2733
// OP_STOREP_S	2731	2733	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2730	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2734
// OP_STOREP_S	2735	2734	0
// OP_ADDRESS	28	162	2736
// OP_STOREP_F	274	2736	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_artifact_invulnerability = 
{
    self.touch = powerup_touch;
    precache_model("progs/invulner.mdl");
    precache_sound("items/protect.wav");
    precache_sound("items/protect2.wav");
    precache_sound("items/protect3.wav");
    self.noise = "items/protect.wav";
    setmodel(self, "progs/invulner.mdl");
    self.netname = "Pentagram of Protection";
    self.items = IT_INVULNERABILITY;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_envirosuit
// function begins at statement 3245, parm_start=2738
// OP_ADDRESS	28	146	2738
// OP_STOREP_FNC	2676	2738	0
// OP_STORE_V	2739	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2740	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2741	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2742
// OP_STOREP_S	2740	2742	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2739	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2743
// OP_STOREP_S	2744	2743	0
// OP_ADDRESS	28	162	2745
// OP_STOREP_F	275	2745	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_artifact_envirosuit = 
{
    self.touch = powerup_touch;
    precache_model("progs/suit.mdl");
    precache_sound("items/suit.wav");
    precache_sound("items/suit2.wav");
    self.noise = "items/suit.wav";
    setmodel(self, "progs/suit.mdl");
    self.netname = "Biosuit";
    self.items = IT_SUIT;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_invisibility
// function begins at statement 3268, parm_start=2747
// OP_ADDRESS	28	146	2747
// OP_STOREP_FNC	2676	2747	0
// OP_STORE_V	2748	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2749	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2750	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2751	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2752
// OP_STOREP_S	2749	2752	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2748	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2753
// OP_STOREP_S	2754	2753	0
// OP_ADDRESS	28	162	2755
// OP_STOREP_F	273	2755	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_artifact_invisibility = 
{
    self.touch = powerup_touch;
    precache_model("progs/invisibl.mdl");
    precache_sound("items/inv1.wav");
    precache_sound("items/inv2.wav");
    precache_sound("items/inv3.wav");
    self.noise = "items/inv1.wav";
    setmodel(self, "progs/invisibl.mdl");
    self.netname = "Ring of Shadows";
    self.items = IT_INVISIBILITY;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_super_damage
// function begins at statement 3293, parm_start=2757
// OP_ADDRESS	28	146	2757
// OP_STOREP_FNC	2676	2757	0
// OP_STORE_V	2758	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2759	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2760	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2761	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	2762
// OP_STOREP_S	2759	2762	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2758	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	180	2763
// OP_STOREP_S	2764	2763	0
// OP_ADDRESS	28	162	2765
// OP_STOREP_F	276	2765	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	2622	10	0
// OP_CALL3	451	0	0
// OP_CALL0	2115	0	0
// OP_DONE	0	0	0
void () item_artifact_super_damage = 
{
    self.touch = powerup_touch;
    precache_model("progs/quaddama.mdl");
    precache_sound("items/damage.wav");
    precache_sound("items/damage2.wav");
    precache_sound("items/damage3.wav");
    self.noise = "items/damage.wav";
    setmodel(self, "progs/quaddama.mdl");
    self.netname = "Quad Damage";
    self.items = IT_QUAD;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// BackpackTouch
// function begins at statement 3318, parm_start=2767
// OP_LOAD_S	29	129	2772
// OP_NE_S	2772	797	2773
// OP_IFNOT	2773	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2774
// OP_LE	2774	650	2775
// OP_IFNOT	2775	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2771	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2316	0	0
// OP_STORE_F	1	2768	0
// OP_STORE_ENT	2771	28	0
// OP_ADDRESS	29	158	2776
// OP_LOAD_F	29	158	2777
// OP_LOAD_F	28	158	2778
// OP_ADD_F	2777	2778	2779
// OP_STOREP_F	2779	2776	0
// OP_ADDRESS	29	159	2780
// OP_LOAD_F	29	159	2781
// OP_LOAD_F	28	159	2782
// OP_ADD_F	2781	2782	2783
// OP_STOREP_F	2783	2780	0
// OP_ADDRESS	29	160	2784
// OP_LOAD_F	29	160	2785
// OP_LOAD_F	28	160	2786
// OP_ADD_F	2785	2786	2787
// OP_STOREP_F	2787	2784	0
// OP_ADDRESS	29	161	2788
// OP_LOAD_F	29	161	2789
// OP_LOAD_F	28	161	2790
// OP_ADD_F	2789	2790	2791
// OP_STOREP_F	2791	2788	0
// OP_LOAD_F	29	162	2792
// OP_STORE_F	2792	2769	0
// OP_LOAD_F	28	162	2793
// OP_STORE_F	2793	2770	0
// OP_ADDRESS	29	162	2794
// OP_LOAD_F	29	162	2795
// OP_BITOR	2795	2770	2796
// OP_STOREP_F	2796	2794	0
// OP_CALL0	2286	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2797	7	0
// OP_CALL2	470	0	0
// OP_LOAD_F	28	158	2798
// OP_IFNOT	2798	11	0
// OP_LOAD_F	28	158	2799
// OP_STORE_V	2799	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	2767	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2767	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2800	7	0
// OP_CALL2	470	0	0
// OP_LOAD_F	28	159	2801
// OP_IFNOT	2801	11	0
// OP_LOAD_F	28	159	2802
// OP_STORE_V	2802	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	2767	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2767	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2803	7	0
// OP_CALL2	470	0	0
// OP_LOAD_F	28	160	2804
// OP_IFNOT	2804	11	0
// OP_LOAD_F	28	160	2805
// OP_STORE_V	2805	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	2767	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2767	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2806	7	0
// OP_CALL2	470	0	0
// OP_LOAD_F	28	161	2807
// OP_IFNOT	2807	11	0
// OP_LOAD_F	28	161	2808
// OP_STORE_V	2808	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	2767	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2767	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2809	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2094	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2481	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	2810
// OP_IFNOT	2810	4	0
// OP_ADDRESS	28	154	2811
// OP_STOREP_F	2770	2811	0
// OP_GOTO	4	0	0
// OP_STORE_V	2769	4	0
// OP_STORE_V	2770	7	0
// OP_CALL2	2308	0	0
// OP_CALL0	2080	0	0
// OP_DONE	0	0	0
void () BackpackTouch = 
{
    local string s;
    local float best;
    local float old;
    local float new;
    local entity stemp;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    other.ammo_shells = other.ammo_shells + self.ammo_shells;
    other.ammo_nails = other.ammo_nails + self.ammo_nails;
    other.ammo_rockets = other.ammo_rockets + self.ammo_rockets;
    other.ammo_cells = other.ammo_cells + self.ammo_cells;
    old = other.items;
    new = self.items;
    other.items = other.items | new;
    bound_other_ammo();
    sprint(other, "You get ");
    
    if(self.ammo_shells)
    {
        s = ftos(self.ammo_shells);
        sprint(other, s);
        sprint(other, " shells  ");
    }
    
    
    if(self.ammo_nails)
    {
        s = ftos(self.ammo_nails);
        sprint(other, s);
        sprint(other, " nails ");
    }
    
    
    if(self.ammo_rockets)
    {
        s = ftos(self.ammo_rockets);
        sprint(other, s);
        sprint(other, " rockets  ");
    }
    
    
    if(self.ammo_cells)
    {
        s = ftos(self.ammo_cells);
        sprint(other, s);
        sprint(other, " cells  ");
    }
    
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/lock4.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    remove(self);
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
};

// DropBackpack
// function begins at statement 3436, parm_start=2813
// OP_LOAD_F	28	158	2814
// OP_LOAD_F	28	159	2815
// OP_ADD_F	2814	2815	2816
// OP_LOAD_F	28	160	2817
// OP_ADD_F	2816	2817	2818
// OP_LOAD_F	28	161	2819
// OP_ADD_F	2818	2819	2820
// OP_NOT_F	2820	0	2821
// OP_IFNOT	2821	2	0
// OP_RETURN	0	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	2813	0
// OP_ADDRESS	2813	105	2822
// OP_LOAD_V	28	105	2825
// OP_SUB_V	2825	2828	2831
// OP_STOREP_V	2831	2822	0
// OP_ADDRESS	2813	162	2834
// OP_LOAD_F	28	154	2835
// OP_STOREP_F	2835	2834	0
// OP_ADDRESS	2813	158	2836
// OP_LOAD_F	28	158	2837
// OP_STOREP_F	2837	2836	0
// OP_ADDRESS	2813	159	2838
// OP_LOAD_F	28	159	2839
// OP_STOREP_F	2839	2838	0
// OP_ADDRESS	2813	160	2840
// OP_LOAD_F	28	160	2841
// OP_STOREP_F	2841	2840	0
// OP_ADDRESS	2813	161	2842
// OP_LOAD_F	28	161	2843
// OP_STOREP_F	2843	2842	0
// OP_ADDRESS	2813	116	2844
// OP_STOREP_F	2845	2844	0
// OP_ADDRESS	2813	114	2846
// OP_CALL0	453	0	0
// OP_MUL_F	1	2246	2848
// OP_ADD_F	2847	2848	2849
// OP_STOREP_F	2849	2846	0
// OP_ADDRESS	2813	115	2850
// OP_CALL0	453	0	0
// OP_MUL_F	1	2246	2851
// OP_ADD_F	2847	2851	2852
// OP_STOREP_F	2852	2850	0
// OP_ADDRESS	2813	182	2853
// OP_STOREP_F	222	2853	0
// OP_ADDRESS	2813	104	2854
// OP_STOREP_F	239	2854	0
// OP_ADDRESS	2813	103	2855
// OP_STOREP_F	232	2855	0
// OP_STORE_V	2813	4	0
// OP_STORE_V	2856	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	2813	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	2813	146	2857
// OP_STOREP_FNC	2766	2857	0
// OP_ADDRESS	2813	150	2858
// OP_ADD_F	31	1255	2859
// OP_STOREP_F	2859	2858	0
// OP_ADDRESS	2813	148	2860
// OP_STOREP_FNC	520	2860	0
// OP_DONE	0	0	0
void () DropBackpack = 
{
    local entity item;
    
    if(!(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells))
    {
        return;
    }
    
    item = spawn();
    item.origin = self.origin - '0.000 0.000 24.000';
    item.items = self.weapon;
    item.ammo_shells = self.ammo_shells;
    item.ammo_nails = self.ammo_nails;
    item.ammo_rockets = self.ammo_rockets;
    item.ammo_cells = self.ammo_cells;
    item.velocity_z = 300;
    item.velocity_x = -100 + (random() * 200);
    item.velocity_y = -100 + (random() * 200);
    item.flags = FL_ITEM;
    item.solid = SOLID_TRIGGER;
    item.movetype = MOVETYPE_TOSS;
    setmodel(item, "progs/backpack.mdl");
    setsize(item, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    item.touch = BackpackTouch;
    item.nextthink = time + 120;
    item.think = SUB_Remove;
};

