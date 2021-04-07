void (entity node, entity targ, float len, entity item) cacheRoute;
void () W_SetCurrentAmmo;
void () bot_toucheditem;
// SUB_regen
// function begins at statement 2055, parm_start=2172
// OP_ADDRESS	28	130	2172
// OP_LOAD_S	28	394	2173
// OP_STOREP_S	2173	2172	0
// OP_ADDRESS	28	104	2174
// OP_STOREP_F	238	2174	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2175	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	2176
// OP_STORE_V	2176	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () SUB_regen = 
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", TRUE, ATTN_NORM);
    setorigin(self, self.origin);
};

// noclass
// function begins at statement 2071, parm_start=2180
// OP_STORE_V	2180	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	2181
// OP_STORE_V	2181	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () noclass = 
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};

// PlaceItem
// function begins at statement 2083, parm_start=2186
// OP_ADDRESS	28	394	2187
// OP_LOAD_S	28	130	2188
// OP_STOREP_S	2188	2187	0
// OP_ADDRESS	28	182	2189
// OP_STOREP_F	222	2189	0
// OP_ADDRESS	28	104	2190
// OP_STOREP_F	238	2190	0
// OP_ADDRESS	28	103	2191
// OP_STOREP_F	231	2191	0
// OP_ADDRESS	28	113	2192
// OP_STOREP_V	286	2192	0
// OP_ADDRESS	28	108	2195
// OP_LOAD_F	28	108	2196
// OP_ADD_F	2196	231	2197
// OP_STOREP_F	2197	2195	0
// OP_LOAD_F	28	108	2198
// OP_STORE_F	2198	2186	0
// OP_CALL0	478	0	0
// OP_NOT_F	1	0	2199
// OP_IFNOT	2199	13	0
// OP_STORE_V	2200	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	2201
// OP_STORE_V	2201	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PlaceItem = 
{
    local float oldz;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_TOSS;
    self.velocity = VEC_ORIGIN;
    self.origin_z = self.origin_z + MOVETYPE_TOSS;
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
// function begins at statement 2116, parm_start=2205
// OP_ADDRESS	28	150	2205
// OP_ADD_F	31	1226	2206
// OP_STOREP_F	2206	2205	0
// OP_ADDRESS	28	148	2207
// OP_STOREP_FNC	2185	2207	0
// OP_DONE	0	0	0
void () StartItem = 
{
    self.nextthink = time + 0.2;
    self.think = PlaceItem;
};

// T_Heal
// function begins at statement 2122, parm_start=2208
// OP_LOAD_F	2208	152	2211
// OP_LE	2211	213	2212
// OP_IFNOT	2212	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	2210	0	2213
// OP_LOAD_F	2208	152	2214
// OP_LOAD_F	29	185	2215
// OP_GE	2214	2215	2216
// OP_AND	2213	2216	2217
// OP_IFNOT	2217	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	2209	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	1	2209	0
// OP_ADDRESS	2208	152	2218
// OP_LOAD_F	2208	152	2219
// OP_ADD_F	2219	2209	2220
// OP_STOREP_F	2220	2218	0
// OP_NOT_F	2210	0	2221
// OP_LOAD_F	2208	152	2222
// OP_LOAD_F	29	185	2223
// OP_GE	2222	2223	2224
// OP_AND	2221	2224	2225
// OP_IFNOT	2225	4	0
// OP_ADDRESS	2208	152	2226
// OP_LOAD_F	29	185	2227
// OP_STOREP_F	2227	2226	0
// OP_LOAD_F	2208	152	2228
// OP_GT	2228	2229	2230
// OP_IFNOT	2230	3	0
// OP_ADDRESS	2208	152	2231
// OP_STOREP_F	2229	2231	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity e, float healamount, float ignore) T_Heal = 
{
    
    if(e.health <= FALSE)
    {
        return FALSE;
    }
    
    
    if(!ignore && (e.health >= other.max_health))
    {
        return FALSE;
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
    
    return TRUE;
};

float H_ROTTEN = 1;
float H_MEGA = 2;
.float healamount;
void () health_touch;
void () item_megahealth_rot;
// item_health
// function begins at statement 2156, parm_start=2238
// OP_ADDRESS	28	146	2238
// OP_STOREP_FNC	2235	2238	0
// OP_ADDRESS	28	523	2239
// OP_STOREP_FNC	726	2239	0
// OP_LOAD_F	28	195	2240
// OP_BITAND	2240	2232	2241
// OP_IFNOT	2241	15	0
// OP_STORE_V	2242	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2243	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2242	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	2244
// OP_STOREP_S	2243	2244	0
// OP_ADDRESS	28	2234	2245
// OP_STOREP_F	2246	2245	0
// OP_ADDRESS	28	527	2247
// OP_STOREP_F	213	2247	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	195	2248
// OP_BITAND	2248	2233	2249
// OP_IFNOT	2249	19	0
// OP_STORE_V	2250	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2251	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2250	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	2252
// OP_STOREP_S	2251	2252	0
// OP_ADDRESS	28	2234	2253
// OP_STOREP_F	574	2253	0
// OP_ADDRESS	28	527	2254
// OP_STOREP_F	216	2254	0
// OP_ADDRESS	28	524	2255
// OP_STOREP_FNC	866	2255	0
// OP_ADDRESS	28	525	2256
// OP_STOREP_FNC	901	2256	0
// OP_GOTO	14	0	0
// OP_STORE_V	2257	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2258	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2257	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	2259
// OP_STOREP_S	2258	2259	0
// OP_ADDRESS	28	2234	2260
// OP_STOREP_F	2261	2260	0
// OP_ADDRESS	28	527	2262
// OP_STOREP_F	214	2262	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_health = 
{
    self.touch = health_touch;
    self.th_weight = healthweight;
    if(self.spawnflags & H_ROTTEN)
    {
        precache_model("maps/b_bh10.bsp");
        precache_sound("items/r_item1.wav");
        setmodel(self, "maps/b_bh10.bsp");
        self.noise = "items/r_item1.wav";
        self.healamount = 15;
        self.healtype = FALSE;
    }
    else
    {
        if(self.spawnflags & H_MEGA)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = MUST_HAVE;
            self.healtype = FL_SWIM;
            self.th_cache = cachepowerup;
            self.th_update = updatepowerup;
        }
        else
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = 25;
            self.healtype = TRUE;
        }
        
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    StartItem();
};

// health_touch
// function begins at statement 2217, parm_start=2266
// OP_LOAD_S	29	129	2268
// OP_NE_S	2268	1102	2269
// OP_IFNOT	2269	5	0
// OP_LOAD_S	29	129	2270
// OP_NE_S	2270	2056	2271
// OP_IFNOT	2271	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	527	2272
// OP_EQ_F	2272	216	2273
// OP_IFNOT	2273	14	0
// OP_LOAD_F	29	152	2274
// OP_GE	2274	2229	2275
// OP_IFNOT	2275	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	2234	2276
// OP_STORE_V	2276	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	521	0	0
// OP_NOT_F	1	0	2277
// OP_IFNOT	2277	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	2234	2278
// OP_STORE_V	2278	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	521	0	0
// OP_NOT_F	1	0	2279
// OP_IFNOT	2279	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2280
// OP_EQ_S	2280	2056	2281
// OP_IFNOT	2281	2	0
// OP_CALL0	2170	0	0
// OP_LOAD_S	29	129	2282
// OP_EQ_S	2282	1102	2283
// OP_IFNOT	2283	14	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2284	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	2234	2285
// OP_STORE_V	2285	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2267	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2267	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2286	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	2287
// OP_STORE_V	2287	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2288
// OP_EQ_S	2288	1102	2289
// OP_IFNOT	2289	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	130	2291
// OP_STOREP_S	343	2291	0
// OP_ADDRESS	28	104	2292
// OP_STOREP_F	237	2292	0
// OP_LOAD_F	28	527	2293
// OP_EQ_F	2293	216	2294
// OP_IFNOT	2294	24	0
// OP_ADDRESS	29	162	2295
// OP_LOAD_F	29	162	2296
// OP_BITOR	2296	269	2297
// OP_STOREP_F	2297	2295	0
// OP_ADDRESS	28	150	2298
// OP_ADD_F	31	230	2299
// OP_STOREP_F	2299	2298	0
// OP_ADDRESS	28	148	2300
// OP_STOREP_FNC	2236	2300	0
// OP_ADDRESS	28	201	2301
// OP_STOREP_ENT	29	2301	0
// OP_LOAD_ENT	29	418	2302
// OP_LOAD_ENT	2302	418	2303
// OP_IFNOT	2303	9	0
// OP_LOAD_ENT	29	418	2304
// OP_STORE_V	2304	4	0
// OP_LOAD_ENT	29	418	2305
// OP_LOAD_ENT	2305	418	2306
// OP_STORE_V	2306	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_GOTO	9	0	0
// OP_NE_F	35	216	2307
// OP_IFNOT	2307	7	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	2308
// OP_ADD_F	31	576	2309
// OP_STOREP_F	2309	2308	0
// OP_ADDRESS	28	148	2310
// OP_STOREP_FNC	2171	2310	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () health_touch = 
{
    local float amount;
    local string s;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    if(self.healtype == FL_SWIM)
    {
        
        if(other.health >= 250)
        {
            return;
        }
        
        
        if(!T_Heal(other, self.healamount, TRUE))
        {
            return;
        }
        
    }
    else
    {
        
        if(!T_Heal(other, self.healamount, FALSE))
        {
            return;
        }
        
    }
    
    
    if(other.classname == "dmbot")
    {
        bot_toucheditem();
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You receive ");
        s = ftos(self.healamount);
        sprint(other, s);
        sprint(other, " health\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == FL_SWIM)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + MOVETYPE_FLY;
        self.think = item_megahealth_rot;
        self.owner = other;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
    }
    else
    {
        
        if(deathmatch != FL_SWIM)
        {
            
            if(deathmatch)
            {
                self.nextthink = time + KINDA_WANT;
            }
            
            self.think = SUB_regen;
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_megahealth_rot
// function begins at statement 2322, parm_start=2311
// OP_LOAD_ENT	28	201	2311
// OP_STORE_ENT	2311	29	0
// OP_LOAD_F	29	152	2312
// OP_LOAD_F	29	185	2313
// OP_GT	2312	2313	2314
// OP_IFNOT	2314	9	0
// OP_ADDRESS	29	152	2315
// OP_LOAD_F	29	152	2316
// OP_SUB_F	2316	214	2317
// OP_STOREP_F	2317	2315	0
// OP_ADDRESS	28	150	2318
// OP_ADD_F	31	214	2319
// OP_STOREP_F	2319	2318	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	2320
// OP_LOAD_F	29	162	2321
// OP_LOAD_F	29	162	2322
// OP_BITAND	2322	269	2323
// OP_SUB_F	2321	2323	2324
// OP_STOREP_F	2324	2320	0
// OP_EQ_F	35	214	2325
// OP_IFNOT	2325	6	0
// OP_ADDRESS	28	150	2326
// OP_ADD_F	31	576	2327
// OP_STOREP_F	2327	2326	0
// OP_ADDRESS	28	148	2328
// OP_STOREP_FNC	2171	2328	0
// OP_DONE	0	0	0
void () item_megahealth_rot = 
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
        self.nextthink = time + KINDA_WANT;
        self.think = SUB_regen;
    }
    
};

// armor_touch
// function begins at statement 2350, parm_start=2330
// OP_LOAD_F	29	152	2333
// OP_LE	2333	213	2334
// OP_IFNOT	2334	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2335
// OP_NE_S	2335	1102	2336
// OP_IFNOT	2336	5	0
// OP_LOAD_S	29	129	2337
// OP_NE_S	2337	2056	2338
// OP_IFNOT	2338	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	2339
// OP_EQ_S	2339	2340	2341
// OP_IFNOT	2341	4	0
// OP_STORE_F	1369	2330	0
// OP_STORE_F	574	2331	0
// OP_STORE_F	266	2332	0
// OP_LOAD_S	28	129	2342
// OP_EQ_S	2342	2343	2344
// OP_IFNOT	2344	15	0
// OP_STORE_F	2345	2330	0
// OP_STORE_F	2346	2331	0
// OP_STORE_F	267	2332	0
// OP_LOAD_ENT	29	418	2347
// OP_LOAD_ENT	2347	418	2348
// OP_IFNOT	2348	9	0
// OP_LOAD_ENT	29	418	2349
// OP_STORE_V	2349	4	0
// OP_LOAD_ENT	29	418	2350
// OP_LOAD_ENT	2350	418	2351
// OP_STORE_V	2351	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_LOAD_S	28	129	2352
// OP_EQ_S	2352	2353	2354
// OP_IFNOT	2354	15	0
// OP_STORE_F	2355	2330	0
// OP_STORE_F	2356	2331	0
// OP_STORE_F	268	2332	0
// OP_LOAD_ENT	29	418	2357
// OP_LOAD_ENT	2357	418	2358
// OP_IFNOT	2358	9	0
// OP_LOAD_ENT	29	418	2359
// OP_STORE_V	2359	4	0
// OP_LOAD_ENT	29	418	2360
// OP_LOAD_ENT	2360	418	2361
// OP_STORE_V	2361	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_LOAD_F	29	187	2362
// OP_LOAD_F	29	188	2363
// OP_MUL_F	2362	2363	2364
// OP_MUL_F	2330	2331	2365
// OP_GE	2364	2365	2366
// OP_IFNOT	2366	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	2367
// OP_STOREP_F	2330	2367	0
// OP_ADDRESS	29	188	2368
// OP_STOREP_F	2331	2368	0
// OP_ADDRESS	29	162	2369
// OP_LOAD_F	29	162	2370
// OP_LOAD_F	29	162	2371
// OP_BITOR	266	267	2372
// OP_BITOR	2372	268	2373
// OP_BITAND	2371	2373	2374
// OP_SUB_F	2370	2374	2375
// OP_ADD_F	2375	2332	2376
// OP_STOREP_F	2376	2369	0
// OP_ADDRESS	28	104	2377
// OP_STOREP_F	237	2377	0
// OP_ADDRESS	28	130	2378
// OP_STOREP_S	343	2378	0
// OP_EQ_F	35	214	2379
// OP_IFNOT	2379	4	0
// OP_ADDRESS	28	150	2380
// OP_ADD_F	31	576	2381
// OP_STOREP_F	2381	2380	0
// OP_ADDRESS	28	148	2382
// OP_STOREP_FNC	2171	2382	0
// OP_LOAD_S	29	129	2383
// OP_EQ_S	2383	2056	2384
// OP_IFNOT	2384	2	0
// OP_CALL0	2170	0	0
// OP_LOAD_S	29	129	2385
// OP_EQ_S	2385	1102	2386
// OP_IFNOT	2386	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2387	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2388	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2389
// OP_EQ_S	2389	1102	2390
// OP_IFNOT	2390	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () armor_touch = 
{
    local float type;
    local float value;
    local float bit;
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(self.classname == "item_armor1")
    {
        type = 0.3;
        value = MUST_HAVE;
        bit = IT_ARMOR1;
    }
    
    
    if(self.classname == "item_armor2")
    {
        type = 0.6;
        value = 150;
        bit = IT_ARMOR2;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
    }
    
    
    if(self.classname == "item_armorInv")
    {
        type = 0.8;
        value = 200;
        bit = IT_ARMOR3;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
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
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + KINDA_WANT;
    }
    
    self.think = SUB_regen;
    
    if(other.classname == "dmbot")
    {
        bot_toucheditem();
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got armor\n");
    }
    
    sound(other, CHAN_ITEM, "items/armor1.wav", TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_armor1
// function begins at statement 2457, parm_start=2392
// OP_ADDRESS	28	146	2392
// OP_STOREP_FNC	2329	2392	0
// OP_STORE_V	2393	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2393	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	2394
// OP_STOREP_F	213	2394	0
// OP_ADDRESS	28	188	2395
// OP_STOREP_F	574	2395	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2402
// OP_STOREP_FNC	803	2402	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_armor1 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FALSE;
    self.armorvalue = MUST_HAVE;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = armorweight;
    StartItem();
};

// item_armor2
// function begins at statement 2476, parm_start=2404
// OP_ADDRESS	28	146	2404
// OP_STOREP_FNC	2329	2404	0
// OP_STORE_V	2393	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2393	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	2405
// OP_STOREP_F	214	2405	0
// OP_ADDRESS	28	188	2406
// OP_STOREP_F	2346	2406	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2407
// OP_STOREP_FNC	803	2407	0
// OP_ADDRESS	28	524	2408
// OP_STOREP_FNC	836	2408	0
// OP_ADDRESS	28	525	2409
// OP_STOREP_FNC	896	2409	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_armor2 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = TRUE;
    self.armorvalue = 150;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = armorweight;
    self.th_cache = cachearmor;
    self.th_update = updatearmor;
    StartItem();
};

// item_armorInv
// function begins at statement 2499, parm_start=2411
// OP_ADDRESS	28	146	2411
// OP_STOREP_FNC	2329	2411	0
// OP_STORE_V	2393	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2393	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	2412
// OP_STOREP_F	216	2412	0
// OP_ADDRESS	28	188	2413
// OP_STOREP_F	2356	2413	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2414
// OP_STOREP_FNC	803	2414	0
// OP_ADDRESS	28	524	2415
// OP_STOREP_FNC	836	2415	0
// OP_ADDRESS	28	525	2416
// OP_STOREP_FNC	896	2416	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_armorInv = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FL_SWIM;
    self.armorvalue = 200;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = armorweight;
    self.th_cache = cachearmor;
    self.th_update = updatearmor;
    StartItem();
};

// bound_other_ammo
// function begins at statement 2522, parm_start=2418
// OP_LOAD_F	29	158	2418
// OP_GT	2418	574	2419
// OP_IFNOT	2419	3	0
// OP_ADDRESS	29	158	2420
// OP_STOREP_F	574	2420	0
// OP_LOAD_F	29	159	2421
// OP_GT	2421	2356	2422
// OP_IFNOT	2422	3	0
// OP_ADDRESS	29	159	2423
// OP_STOREP_F	2356	2423	0
// OP_LOAD_F	29	160	2424
// OP_GT	2424	574	2425
// OP_IFNOT	2425	3	0
// OP_ADDRESS	29	160	2426
// OP_STOREP_F	574	2426	0
// OP_LOAD_F	29	161	2427
// OP_GT	2427	574	2428
// OP_IFNOT	2428	3	0
// OP_ADDRESS	29	161	2429
// OP_STOREP_F	574	2429	0
// OP_DONE	0	0	0
void () bound_other_ammo = 
{
    
    if(other.ammo_shells > MUST_HAVE)
    {
        other.ammo_shells = MUST_HAVE;
    }
    
    
    if(other.ammo_nails > 200)
    {
        other.ammo_nails = 200;
    }
    
    
    if(other.ammo_rockets > MUST_HAVE)
    {
        other.ammo_rockets = MUST_HAVE;
    }
    
    
    if(other.ammo_cells > MUST_HAVE)
    {
        other.ammo_cells = MUST_HAVE;
    }
    
};

// RankForWeapon
// function begins at statement 2543, parm_start=2431
// OP_EQ_F	2431	260	2432
// OP_IFNOT	2432	2	0
// OP_RETURN	214	0	0
// OP_EQ_F	2431	259	2433
// OP_IFNOT	2433	2	0
// OP_RETURN	216	0	0
// OP_EQ_F	2431	257	2434
// OP_IFNOT	2434	2	0
// OP_RETURN	228	0	0
// OP_EQ_F	2431	258	2435
// OP_IFNOT	2435	2	0
// OP_RETURN	229	0	0
// OP_EQ_F	2431	255	2436
// OP_IFNOT	2436	2	0
// OP_RETURN	230	0	0
// OP_EQ_F	2431	256	2437
// OP_IFNOT	2437	2	0
// OP_RETURN	231	0	0
// OP_RETURN	232	0	0
// OP_DONE	0	0	0
float (float w) RankForWeapon = 
{
    
    if(w == IT_LIGHTNING)
    {
        return TRUE;
    }
    
    
    if(w == IT_ROCKET_LAUNCHER)
    {
        return FL_SWIM;
    }
    
    
    if(w == IT_SUPER_NAILGUN)
    {
        return MOVETYPE_WALK;
    }
    
    
    if(w == IT_GRENADE_LAUNCHER)
    {
        return MOVETYPE_STEP;
    }
    
    
    if(w == IT_SUPER_SHOTGUN)
    {
        return MOVETYPE_FLY;
    }
    
    
    if(w == IT_NAILGUN)
    {
        return MOVETYPE_TOSS;
    }
    
    return MOVETYPE_PUSH;
};

// Deathmatch_Weapon
// function begins at statement 2563, parm_start=2439
// OP_LOAD_F	28	154	2443
// OP_STORE_V	2443	4	0
// OP_CALL1	2430	0	0
// OP_STORE_F	1	2441	0
// OP_STORE_V	2440	4	0
// OP_CALL1	2430	0	0
// OP_STORE_F	1	2442	0
// OP_LT	2442	2441	2444
// OP_IFNOT	2444	3	0
// OP_ADDRESS	28	154	2445
// OP_STOREP_F	2440	2445	0
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
// function begins at statement 2575, parm_start=2448
// OP_LOAD_S	29	129	2454
// OP_EQ_S	2454	2455	2456
// OP_IFNOT	2456	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	182	2457
// OP_BITAND	2457	217	2458
// OP_NOT_F	2458	0	2459
// OP_IFNOT	2459	5	0
// OP_LOAD_S	29	129	2460
// OP_NE_S	2460	2056	2461
// OP_IFNOT	2461	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2452	0
// OP_STORE_ENT	29	28	0
// OP_LOAD_S	28	129	2462
// OP_EQ_S	2462	1102	2463
// OP_IFNOT	2463	3	0
// OP_CALL0	2446	0	0
// OP_STORE_F	1	2449	0
// OP_STORE_ENT	2452	28	0
// OP_EQ_F	35	216	2464
// OP_OR	2464	36	2465
// OP_IFNOT	2465	3	0
// OP_STORE_F	214	2453	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	2453	0
// OP_LOAD_S	28	129	2466
// OP_EQ_S	2466	2467	2468
// OP_IFNOT	2468	14	0
// OP_LOAD_F	29	162	2469
// OP_BITAND	2469	256	2470
// OP_AND	2453	2470	2471
// OP_IFNOT	2471	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	159	2472
// OP_STORE_F	2472	2448	0
// OP_STORE_F	256	2450	0
// OP_ADDRESS	29	159	2473
// OP_LOAD_F	29	159	2474
// OP_ADD_F	2474	304	2475
// OP_STOREP_F	2475	2473	0
// OP_GOTO	127	0	0
// OP_LOAD_S	28	129	2476
// OP_EQ_S	2476	2477	2478
// OP_IFNOT	2478	25	0
// OP_LOAD_F	29	162	2479
// OP_BITAND	2479	257	2480
// OP_AND	2453	2480	2481
// OP_IFNOT	2481	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2482
// OP_STORE_F	2482	2448	0
// OP_STORE_F	257	2450	0
// OP_ADDRESS	29	159	2483
// OP_LOAD_F	29	159	2484
// OP_ADD_F	2484	304	2485
// OP_STOREP_F	2485	2483	0
// OP_LOAD_ENT	29	418	2486
// OP_LOAD_ENT	2486	418	2487
// OP_IFNOT	2487	9	0
// OP_LOAD_ENT	29	418	2488
// OP_STORE_V	2488	4	0
// OP_LOAD_ENT	29	418	2489
// OP_LOAD_ENT	2489	418	2490
// OP_STORE_V	2490	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_GOTO	100	0	0
// OP_LOAD_S	28	129	2491
// OP_EQ_S	2491	2492	2493
// OP_IFNOT	2493	14	0
// OP_LOAD_F	29	162	2494
// OP_BITAND	2494	255	2495
// OP_AND	2453	2495	2496
// OP_IFNOT	2496	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2497
// OP_STORE_F	2497	2448	0
// OP_STORE_F	255	2450	0
// OP_ADDRESS	29	158	2498
// OP_LOAD_F	29	158	2499
// OP_ADD_F	2499	230	2500
// OP_STOREP_F	2500	2498	0
// OP_GOTO	84	0	0
// OP_LOAD_S	28	129	2501
// OP_EQ_S	2501	2502	2503
// OP_IFNOT	2503	25	0
// OP_LOAD_F	29	162	2504
// OP_BITAND	2504	259	2505
// OP_AND	2453	2505	2506
// OP_IFNOT	2506	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2507
// OP_STORE_F	2507	2448	0
// OP_STORE_F	259	2450	0
// OP_ADDRESS	29	160	2508
// OP_LOAD_F	29	160	2509
// OP_ADD_F	2509	230	2510
// OP_STOREP_F	2510	2508	0
// OP_LOAD_ENT	29	418	2511
// OP_LOAD_ENT	2511	418	2512
// OP_IFNOT	2512	9	0
// OP_LOAD_ENT	29	418	2513
// OP_STORE_V	2513	4	0
// OP_LOAD_ENT	29	418	2514
// OP_LOAD_ENT	2514	418	2515
// OP_STORE_V	2515	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_GOTO	57	0	0
// OP_LOAD_S	28	129	2516
// OP_EQ_S	2516	2517	2518
// OP_IFNOT	2518	25	0
// OP_LOAD_F	29	162	2519
// OP_BITAND	2519	258	2520
// OP_AND	2453	2520	2521
// OP_IFNOT	2521	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2522
// OP_STORE_F	2522	2448	0
// OP_STORE_F	258	2450	0
// OP_ADDRESS	29	160	2523
// OP_LOAD_F	29	160	2524
// OP_ADD_F	2524	230	2525
// OP_STOREP_F	2525	2523	0
// OP_LOAD_ENT	29	418	2526
// OP_LOAD_ENT	2526	418	2527
// OP_IFNOT	2527	9	0
// OP_LOAD_ENT	29	418	2528
// OP_STORE_V	2528	4	0
// OP_LOAD_ENT	29	418	2529
// OP_LOAD_ENT	2529	418	2530
// OP_STORE_V	2530	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_GOTO	30	0	0
// OP_LOAD_S	28	129	2531
// OP_EQ_S	2531	2532	2533
// OP_IFNOT	2533	25	0
// OP_LOAD_F	29	162	2534
// OP_BITAND	2534	260	2535
// OP_AND	2453	2535	2536
// OP_IFNOT	2536	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2537
// OP_STORE_F	2537	2448	0
// OP_STORE_F	260	2450	0
// OP_ADDRESS	29	161	2538
// OP_LOAD_F	29	161	2539
// OP_ADD_F	2539	2246	2540
// OP_STOREP_F	2540	2538	0
// OP_LOAD_ENT	29	418	2541
// OP_LOAD_ENT	2541	418	2542
// OP_IFNOT	2542	9	0
// OP_LOAD_ENT	29	418	2543
// OP_STORE_V	2543	4	0
// OP_LOAD_ENT	29	418	2544
// OP_LOAD_ENT	2544	418	2545
// OP_STORE_V	2545	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	2546	4	0
// OP_CALL1	456	0	0
// OP_LOAD_S	29	129	2547
// OP_EQ_S	2547	1102	2548
// OP_IFNOT	2548	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2549	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2550
// OP_STORE_V	2550	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2551	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2552
// OP_EQ_S	2552	1102	2553
// OP_IFNOT	2553	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_CALL0	2417	0	0
// OP_LOAD_F	29	162	2554
// OP_STORE_F	2554	2451	0
// OP_ADDRESS	29	162	2555
// OP_LOAD_F	29	162	2556
// OP_BITOR	2556	2450	2557
// OP_STOREP_F	2557	2555	0
// OP_STORE_ENT	28	2452	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	2558
// OP_IFNOT	2558	4	0
// OP_ADDRESS	28	154	2559
// OP_STOREP_F	2450	2559	0
// OP_GOTO	4	0	0
// OP_STORE_V	2451	4	0
// OP_STORE_V	2450	7	0
// OP_CALL2	2438	0	0
// OP_CALL0	2169	0	0
// OP_STORE_ENT	2452	28	0
// OP_IFNOT	2453	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	2560
// OP_STOREP_S	343	2560	0
// OP_ADDRESS	28	104	2561
// OP_STOREP_F	237	2561	0
// OP_EQ_F	35	214	2562
// OP_IFNOT	2562	4	0
// OP_ADDRESS	28	150	2563
// OP_ADD_F	31	304	2564
// OP_STOREP_F	2564	2563	0
// OP_ADDRESS	28	148	2565
// OP_STOREP_FNC	2171	2565	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () weapon_touch = 
{
    local float hadammo;
    local float best;
    local float new;
    local float old;
    local entity stemp;
    local float leave;
    
    if(other.classname == "peeper")
    {
        return;
    }
    
    
    if(!(other.flags & FL_CLIENT))
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    stemp = self;
    self = other;
    
    if(self.classname == "player")
    {
        best = W_BestWeapon();
    }
    
    self = stemp;
    if((deathmatch == FL_SWIM) || coop)
    {
        leave = TRUE;
    }
    else
    {
        leave = FALSE;
    }
    
    if(self.classname == "weapon_nailgun")
    {
        
        if(leave && (other.items & IT_NAILGUN))
        {
            return;
        }
        
        hadammo = other.ammo_nails;
        new = IT_NAILGUN;
        other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
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
            other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
            
            if(other.movetarget.movetarget)
            {
                cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
            }
            
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
                other.ammo_shells = other.ammo_shells + MOVETYPE_FLY;
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
                    other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                    
                    if(other.movetarget.movetarget)
                    {
                        cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
                    }
                    
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
                        other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                        
                        if(other.movetarget.movetarget)
                        {
                            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
                        }
                        
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
                            
                            if(other.movetarget.movetarget)
                            {
                                cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
                            }
                            
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
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/pkup.wav", TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
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
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

// weapon_supershotgun
// function begins at statement 2803, parm_start=2567
// OP_STORE_V	2567	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2567	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2568
// OP_STOREP_F	255	2568	0
// OP_ADDRESS	28	180	2569
// OP_STOREP_S	2570	2569	0
// OP_ADDRESS	28	146	2571
// OP_STOREP_FNC	2447	2571	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2572
// OP_STOREP_FNC	801	2572	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_supershotgun = 
{
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = ssgweight;
    StartItem();
};

// weapon_nailgun
// function begins at statement 2822, parm_start=2574
// OP_STORE_V	2574	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2574	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2575
// OP_STOREP_F	256	2575	0
// OP_ADDRESS	28	180	2576
// OP_STOREP_S	2577	2576	0
// OP_ADDRESS	28	146	2578
// OP_STOREP_FNC	2447	2578	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2579
// OP_STOREP_FNC	791	2579	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_nailgun = 
{
    precache_model("progs/g_nail.mdl");
    setmodel(self, "progs/g_nail.mdl");
    self.weapon = IT_NAILGUN;
    self.netname = "nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = nailgunweight;
    StartItem();
};

// weapon_supernailgun
// function begins at statement 2841, parm_start=2581
// OP_STORE_V	2581	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2581	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2582
// OP_STOREP_F	257	2582	0
// OP_ADDRESS	28	180	2583
// OP_STOREP_S	2584	2583	0
// OP_ADDRESS	28	146	2585
// OP_STOREP_FNC	2447	2585	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2586
// OP_STOREP_FNC	793	2586	0
// OP_ADDRESS	28	524	2587
// OP_STOREP_FNC	846	2587	0
// OP_ADDRESS	28	525	2588
// OP_STOREP_FNC	906	2588	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_supernailgun = 
{
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = supernailweight;
    self.th_cache = cachenail;
    self.th_update = updatenail;
    StartItem();
};

// weapon_grenadelauncher
// function begins at statement 2864, parm_start=2590
// OP_STORE_V	2590	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2590	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2591
// OP_STOREP_F	228	2591	0
// OP_ADDRESS	28	180	2592
// OP_STOREP_S	2593	2592	0
// OP_ADDRESS	28	146	2594
// OP_STOREP_FNC	2447	2594	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2595
// OP_STOREP_FNC	783	2595	0
// OP_ADDRESS	28	524	2596
// OP_STOREP_FNC	856	2596	0
// OP_ADDRESS	28	525	2597
// OP_STOREP_FNC	911	2597	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_grenadelauncher = 
{
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Grenade Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = glauncherweight;
    self.th_cache = cachegrenade;
    self.th_update = updategrenade;
    StartItem();
};

// weapon_rocketlauncher
// function begins at statement 2887, parm_start=2599
// OP_STORE_V	2599	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2599	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2600
// OP_STOREP_F	228	2600	0
// OP_ADDRESS	28	180	2601
// OP_STOREP_S	2602	2601	0
// OP_ADDRESS	28	146	2603
// OP_STOREP_FNC	2447	2603	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2604
// OP_STOREP_FNC	769	2604	0
// OP_ADDRESS	28	524	2605
// OP_STOREP_FNC	816	2605	0
// OP_ADDRESS	28	525	2606
// OP_STOREP_FNC	886	2606	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_rocketlauncher = 
{
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Rocket Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = rlauncherweight;
    self.th_cache = cacherocket;
    self.th_update = updaterocket;
    StartItem();
};

// weapon_lightning
// function begins at statement 2910, parm_start=2608
// OP_STORE_V	2608	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2608	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2609
// OP_STOREP_F	228	2609	0
// OP_ADDRESS	28	180	2610
// OP_STOREP_S	2611	2610	0
// OP_ADDRESS	28	146	2612
// OP_STOREP_FNC	2447	2612	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2613
// OP_STOREP_FNC	776	2613	0
// OP_ADDRESS	28	524	2614
// OP_STOREP_FNC	826	2614	0
// OP_ADDRESS	28	525	2615
// OP_STOREP_FNC	891	2615	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () weapon_lightning = 
{
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Thunderbolt";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.th_weight = lightningweight;
    self.th_cache = cachelightning;
    self.th_update = updatelightning;
    StartItem();
};

// ammo_touch
// function begins at statement 2933, parm_start=2617
// OP_LOAD_S	29	129	2619
// OP_NE_S	2619	1102	2620
// OP_IFNOT	2620	5	0
// OP_LOAD_S	29	129	2621
// OP_NE_S	2621	2056	2622
// OP_IFNOT	2622	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2623
// OP_LE	2623	213	2624
// OP_IFNOT	2624	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2617	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2446	0	0
// OP_STORE_F	1	2618	0
// OP_STORE_ENT	2617	28	0
// OP_LOAD_F	28	154	2625
// OP_EQ_F	2625	214	2626
// OP_IFNOT	2626	10	0
// OP_LOAD_F	29	158	2627
// OP_GE	2627	574	2628
// OP_IFNOT	2628	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	158	2629
// OP_LOAD_F	29	158	2630
// OP_LOAD_F	28	419	2631
// OP_ADD_F	2630	2631	2632
// OP_STOREP_F	2632	2629	0
// OP_LOAD_F	28	154	2633
// OP_EQ_F	2633	216	2634
// OP_IFNOT	2634	10	0
// OP_LOAD_F	29	159	2635
// OP_GE	2635	2356	2636
// OP_IFNOT	2636	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	159	2637
// OP_LOAD_F	29	159	2638
// OP_LOAD_F	28	419	2639
// OP_ADD_F	2638	2639	2640
// OP_STOREP_F	2640	2637	0
// OP_LOAD_F	28	154	2641
// OP_EQ_F	2641	228	2642
// OP_IFNOT	2642	10	0
// OP_LOAD_F	29	160	2643
// OP_GE	2643	574	2644
// OP_IFNOT	2644	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	160	2645
// OP_LOAD_F	29	160	2646
// OP_LOAD_F	28	419	2647
// OP_ADD_F	2646	2647	2648
// OP_STOREP_F	2648	2645	0
// OP_LOAD_F	28	154	2649
// OP_EQ_F	2649	229	2650
// OP_IFNOT	2650	10	0
// OP_LOAD_F	29	161	2651
// OP_GE	2651	2356	2652
// OP_IFNOT	2652	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	161	2653
// OP_LOAD_F	29	161	2654
// OP_LOAD_F	28	419	2655
// OP_ADD_F	2654	2655	2656
// OP_STOREP_F	2656	2653	0
// OP_LOAD_S	29	129	2657
// OP_EQ_S	2657	2056	2658
// OP_IFNOT	2658	2	0
// OP_CALL0	2170	0	0
// OP_CALL0	2417	0	0
// OP_LOAD_S	29	129	2659
// OP_EQ_S	2659	1102	2660
// OP_IFNOT	2660	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2549	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2661
// OP_STORE_V	2661	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2662	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2663
// OP_EQ_S	2663	1102	2664
// OP_IFNOT	2664	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	29	154	2665
// OP_EQ_F	2665	2618	2666
// OP_IFNOT	2666	8	0
// OP_STORE_ENT	28	2617	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	2667
// OP_CALL0	2446	0	0
// OP_STOREP_F	1	2667	0
// OP_CALL0	2169	0	0
// OP_STORE_ENT	2617	28	0
// OP_STORE_ENT	28	2617	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2169	0	0
// OP_STORE_ENT	2617	28	0
// OP_ADDRESS	28	130	2668
// OP_STOREP_S	343	2668	0
// OP_ADDRESS	28	104	2669
// OP_STOREP_F	237	2669	0
// OP_EQ_F	35	214	2670
// OP_IFNOT	2670	4	0
// OP_ADDRESS	28	150	2671
// OP_ADD_F	31	304	2672
// OP_STOREP_F	2672	2671	0
// OP_ADDRESS	28	148	2673
// OP_STOREP_FNC	2171	2673	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () ammo_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(self.weapon == TRUE)
    {
        
        if(other.ammo_shells >= MUST_HAVE)
        {
            return;
        }
        
        other.ammo_shells = other.ammo_shells + self.aflag;
    }
    
    
    if(self.weapon == FL_SWIM)
    {
        
        if(other.ammo_nails >= 200)
        {
            return;
        }
        
        other.ammo_nails = other.ammo_nails + self.aflag;
    }
    
    
    if(self.weapon == MOVETYPE_WALK)
    {
        
        if(other.ammo_rockets >= MUST_HAVE)
        {
            return;
        }
        
        other.ammo_rockets = other.ammo_rockets + self.aflag;
    }
    
    
    if(self.weapon == MOVETYPE_STEP)
    {
        
        if(other.ammo_cells >= 200)
        {
            return;
        }
        
        other.ammo_cells = other.ammo_cells + self.aflag;
    }
    
    
    if(other.classname == "dmbot")
    {
        bot_toucheditem();
    }
    
    bound_other_ammo();
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/lock4.wav", TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    
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
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

float WEAPON_BIG2 = 1;
// item_shells
// function begins at statement 3055, parm_start=2676
// OP_ADDRESS	28	146	2676
// OP_STOREP_FNC	2616	2676	0
// OP_LOAD_F	28	195	2677
// OP_BITAND	2677	2674	2678
// OP_IFNOT	2678	9	0
// OP_STORE_V	2679	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2679	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2680
// OP_STOREP_F	2101	2680	0
// OP_GOTO	8	0	0
// OP_STORE_V	2681	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2681	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2682
// OP_STOREP_F	576	2682	0
// OP_ADDRESS	28	154	2683
// OP_STOREP_F	214	2683	0
// OP_ADDRESS	28	180	2684
// OP_STOREP_S	2685	2684	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2686
// OP_STOREP_FNC	749	2686	0
// OP_CALL0	2204	0	0
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
        self.aflag = KINDA_WANT;
    }
    
    self.weapon = TRUE;
    self.netname = "shells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.th_weight = shellweight;
    StartItem();
};

// item_spikes
// function begins at statement 3087, parm_start=2688
// OP_ADDRESS	28	146	2688
// OP_STOREP_FNC	2616	2688	0
// OP_LOAD_F	28	195	2689
// OP_BITAND	2689	2674	2690
// OP_IFNOT	2690	9	0
// OP_STORE_V	2691	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2691	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2692
// OP_STOREP_F	756	2692	0
// OP_GOTO	8	0	0
// OP_STORE_V	2693	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2693	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2694
// OP_STOREP_F	2261	2694	0
// OP_ADDRESS	28	154	2695
// OP_STOREP_F	216	2695	0
// OP_ADDRESS	28	180	2696
// OP_STOREP_S	2697	2696	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2698
// OP_STOREP_FNC	738	2698	0
// OP_CALL0	2204	0	0
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
    
    self.weapon = FL_SWIM;
    self.netname = "nails";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.th_weight = nailweight;
    StartItem();
};

// item_rockets
// function begins at statement 3119, parm_start=2700
// OP_ADDRESS	28	146	2700
// OP_STOREP_FNC	2616	2700	0
// OP_LOAD_F	28	195	2701
// OP_BITAND	2701	2674	2702
// OP_IFNOT	2702	9	0
// OP_STORE_V	2703	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2703	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2704
// OP_STOREP_F	235	2704	0
// OP_GOTO	8	0	0
// OP_STORE_V	2705	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2705	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2706
// OP_STOREP_F	230	2706	0
// OP_ADDRESS	28	154	2707
// OP_STOREP_F	228	2707	0
// OP_ADDRESS	28	180	2708
// OP_STOREP_S	2709	2708	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2710
// OP_STOREP_FNC	764	2710	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_rockets = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = MOVETYPE_BOUNCE;
    }
    else
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = MOVETYPE_FLY;
    }
    
    self.weapon = MOVETYPE_WALK;
    self.netname = "rockets";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.th_weight = rocketweight;
    StartItem();
};

// item_cells
// function begins at statement 3151, parm_start=2712
// OP_ADDRESS	28	146	2712
// OP_STOREP_FNC	2616	2712	0
// OP_LOAD_F	28	195	2713
// OP_BITAND	2713	2674	2714
// OP_IFNOT	2714	9	0
// OP_STORE_V	2715	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2715	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2716
// OP_STOREP_F	2717	2716	0
// OP_GOTO	8	0	0
// OP_STORE_V	2718	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2718	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2719
// OP_STOREP_F	231	2719	0
// OP_ADDRESS	28	154	2720
// OP_STOREP_F	229	2720	0
// OP_ADDRESS	28	180	2721
// OP_STOREP_S	2722	2721	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2723
// OP_STOREP_FNC	759	2723	0
// OP_CALL0	2204	0	0
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
        self.aflag = MOVETYPE_TOSS;
    }
    
    self.weapon = MOVETYPE_STEP;
    self.netname = "cells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.th_weight = cellweight;
    StartItem();
};

float WEAPON_SHOTGUN = 1;
float WEAPON_ROCKET = 2;
float WEAPON_SPIKES = 4;
float WEAPON_BIG = 8;
// item_weapon
// function begins at statement 3183, parm_start=2729
// OP_ADDRESS	28	146	2729
// OP_STOREP_FNC	2616	2729	0
// OP_LOAD_F	28	195	2730
// OP_BITAND	2730	2724	2731
// OP_IFNOT	2731	23	0
// OP_LOAD_F	28	195	2732
// OP_BITAND	2732	2727	2733
// OP_IFNOT	2733	9	0
// OP_STORE_V	2679	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2679	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2734
// OP_STOREP_F	2101	2734	0
// OP_GOTO	8	0	0
// OP_STORE_V	2681	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2681	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2735
// OP_STOREP_F	576	2735	0
// OP_ADDRESS	28	154	2736
// OP_STOREP_F	214	2736	0
// OP_ADDRESS	28	180	2737
// OP_STOREP_S	2685	2737	0
// OP_LOAD_F	28	195	2738
// OP_BITAND	2738	2726	2739
// OP_IFNOT	2739	23	0
// OP_LOAD_F	28	195	2740
// OP_BITAND	2740	2727	2741
// OP_IFNOT	2741	9	0
// OP_STORE_V	2691	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2691	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2742
// OP_STOREP_F	2101	2742	0
// OP_GOTO	8	0	0
// OP_STORE_V	2693	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2693	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2743
// OP_STOREP_F	576	2743	0
// OP_ADDRESS	28	154	2744
// OP_STOREP_F	216	2744	0
// OP_ADDRESS	28	180	2745
// OP_STOREP_S	2746	2745	0
// OP_LOAD_F	28	195	2747
// OP_BITAND	2747	2725	2748
// OP_IFNOT	2748	23	0
// OP_LOAD_F	28	195	2749
// OP_BITAND	2749	2727	2750
// OP_IFNOT	2750	9	0
// OP_STORE_V	2703	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2703	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2751
// OP_STOREP_F	235	2751	0
// OP_GOTO	8	0	0
// OP_STORE_V	2705	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2705	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2752
// OP_STOREP_F	230	2752	0
// OP_ADDRESS	28	154	2753
// OP_STOREP_F	228	2753	0
// OP_ADDRESS	28	180	2754
// OP_STOREP_S	2709	2754	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2263	10	0
// OP_CALL3	450	0	0
// OP_CALL0	2204	0	0
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
            self.aflag = KINDA_WANT;
        }
        
        self.weapon = TRUE;
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
            self.aflag = KINDA_WANT;
        }
        
        self.weapon = FL_SWIM;
        self.netname = "spikes";
    }
    
    
    if(self.spawnflags & WEAPON_ROCKET)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_rock1.bsp");
            setmodel(self, "maps/b_rock1.bsp");
            self.aflag = MOVETYPE_BOUNCE;
        }
        else
        {
            precache_model("maps/b_rock0.bsp");
            setmodel(self, "maps/b_rock0.bsp");
            self.aflag = MOVETYPE_FLY;
        }
        
        self.weapon = MOVETYPE_WALK;
        self.netname = "rockets";
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    StartItem();
};

// key_touch
// function begins at statement 3266, parm_start=2756
// OP_LOAD_S	29	129	2758
// OP_NE_S	2758	1102	2759
// OP_IFNOT	2759	5	0
// OP_LOAD_S	29	129	2760
// OP_NE_S	2760	2056	2761
// OP_IFNOT	2761	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2762
// OP_LE	2762	213	2763
// OP_IFNOT	2763	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	2764
// OP_LOAD_F	28	162	2765
// OP_BITAND	2764	2765	2766
// OP_IFNOT	2766	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2767
// OP_EQ_S	2767	1102	2768
// OP_IFNOT	2768	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2549	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2769
// OP_STORE_V	2769	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	2770
// OP_STORE_V	2770	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2771
// OP_EQ_S	2771	1102	2772
// OP_IFNOT	2772	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	29	162	2773
// OP_LOAD_F	29	162	2774
// OP_LOAD_F	28	162	2775
// OP_BITOR	2774	2775	2776
// OP_STOREP_F	2776	2773	0
// OP_NOT_F	36	0	2777
// OP_IFNOT	2777	5	0
// OP_ADDRESS	28	104	2778
// OP_STOREP_F	237	2778	0
// OP_ADDRESS	28	130	2779
// OP_STOREP_S	343	2779	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () key_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.items & self.items)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
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
// function begins at statement 3322, parm_start=2781
// OP_LOAD_F	30	352	2781
// OP_EQ_F	2781	213	2782
// OP_IFNOT	2782	5	0
// OP_STORE_V	2783	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2784
// OP_STOREP_S	2783	2784	0
// OP_LOAD_F	30	352	2785
// OP_EQ_F	2785	214	2786
// OP_IFNOT	2786	5	0
// OP_STORE_V	2787	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2788
// OP_STOREP_S	2787	2788	0
// OP_LOAD_F	30	352	2789
// OP_EQ_F	2789	216	2790
// OP_IFNOT	2790	5	0
// OP_STORE_V	2791	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	208	2792
// OP_STOREP_S	2791	2792	0
// OP_DONE	0	0	0
void () key_setsounds = 
{
    
    if(world.worldtype == FALSE)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    
    
    if(world.worldtype == TRUE)
    {
        precache_sound("misc/runekey.wav");
        self.noise = "misc/runekey.wav";
    }
    
    
    if(world.worldtype == FL_SWIM)
    {
        precache_sound2("misc/basekey.wav");
        self.noise = "misc/basekey.wav";
    }
    
};

// item_key1
// function begins at statement 3344, parm_start=2794
// OP_LOAD_F	30	352	2794
// OP_EQ_F	2794	213	2795
// OP_IFNOT	2795	9	0
// OP_STORE_V	2796	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2796	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2797
// OP_STOREP_S	2798	2797	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	352	2799
// OP_EQ_F	2799	214	2800
// OP_IFNOT	2800	9	0
// OP_STORE_V	2801	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2801	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2802
// OP_STOREP_S	2803	2802	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	352	2804
// OP_EQ_F	2804	216	2805
// OP_IFNOT	2805	8	0
// OP_STORE_V	2806	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2806	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2807
// OP_STOREP_S	2808	2807	0
// OP_CALL0	2780	0	0
// OP_ADDRESS	28	146	2809
// OP_STOREP_FNC	2755	2809	0
// OP_ADDRESS	28	162	2810
// OP_STOREP_F	270	2810	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_key1 = 
{
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
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
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

// item_key2
// function begins at statement 3387, parm_start=2812
// OP_LOAD_F	30	352	2812
// OP_EQ_F	2812	213	2813
// OP_IFNOT	2813	8	0
// OP_STORE_V	2814	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2814	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2815
// OP_STOREP_S	2816	2815	0
// OP_LOAD_F	30	352	2817
// OP_EQ_F	2817	214	2818
// OP_IFNOT	2818	8	0
// OP_STORE_V	2819	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2819	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2820
// OP_STOREP_S	2821	2820	0
// OP_LOAD_F	30	352	2822
// OP_EQ_F	2822	216	2823
// OP_IFNOT	2823	8	0
// OP_STORE_V	2824	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2824	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2825
// OP_STOREP_S	2826	2825	0
// OP_CALL0	2780	0	0
// OP_ADDRESS	28	146	2827
// OP_STOREP_FNC	2755	2827	0
// OP_ADDRESS	28	162	2828
// OP_STOREP_F	271	2828	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_key2 = 
{
    
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    
    
    if(world.worldtype == TRUE)
    {
        precache_model("progs/m_g_key.mdl");
        setmodel(self, "progs/m_g_key.mdl");
        self.netname = "gold runekey";
    }
    
    
    if(world.worldtype == FL_SWIM)
    {
        precache_model2("progs/b_g_key.mdl");
        setmodel(self, "progs/b_g_key.mdl");
        self.netname = "gold keycard";
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY2;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

// sigil_touch
// function begins at statement 3428, parm_start=2830
// OP_LOAD_S	29	129	2832
// OP_NE_S	2832	1102	2833
// OP_IFNOT	2833	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2834
// OP_LE	2834	213	2835
// OP_IFNOT	2835	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2836	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	2837
// OP_STORE_V	2837	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	104	2838
// OP_STOREP_F	237	2838	0
// OP_ADDRESS	28	130	2839
// OP_STOREP_S	343	2839	0
// OP_LOAD_F	28	195	2840
// OP_BITAND	2840	2246	2841
// OP_BITOR	38	2841	2842
// OP_STORE_F	2842	38	0
// OP_ADDRESS	28	129	2843
// OP_STOREP_S	959	2843	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () sigil_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    centerprint(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & 15);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};

// item_sigil
// function begins at statement 3462, parm_start=2845
// OP_LOAD_F	28	195	2845
// OP_NOT_F	2845	0	2846
// OP_IFNOT	2846	3	0
// OP_STORE_V	2847	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	2787	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2848
// OP_STOREP_S	2787	2848	0
// OP_LOAD_F	28	195	2849
// OP_BITAND	2849	214	2850
// OP_IFNOT	2850	6	0
// OP_STORE_V	2851	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2851	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2852
// OP_BITAND	2852	216	2853
// OP_IFNOT	2853	6	0
// OP_STORE_V	2854	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2854	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2855
// OP_BITAND	2855	229	2856
// OP_IFNOT	2856	6	0
// OP_STORE_V	2857	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2857	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2858
// OP_BITAND	2858	217	2859
// OP_IFNOT	2859	6	0
// OP_STORE_V	2860	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2860	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	146	2861
// OP_STOREP_FNC	2829	2861	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	2204	0	0
// OP_DONE	0	0	0
void () item_sigil = 
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & TRUE)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & FL_SWIM)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & MOVETYPE_STEP)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & FL_CLIENT)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = sigil_touch;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

// powerup_touch
// function begins at statement 3511, parm_start=2863
// OP_LOAD_S	29	129	2865
// OP_NE_S	2865	1102	2866
// OP_IFNOT	2866	5	0
// OP_LOAD_S	29	129	2867
// OP_NE_S	2867	2056	2868
// OP_IFNOT	2868	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2869
// OP_LE	2869	213	2870
// OP_IFNOT	2870	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2871
// OP_EQ_S	2871	1102	2872
// OP_IFNOT	2872	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2549	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	2873
// OP_STORE_V	2873	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	394	2874
// OP_LOAD_S	28	130	2875
// OP_STOREP_S	2875	2874	0
// OP_LOAD_S	28	129	2876
// OP_EQ_S	2876	2877	2878
// OP_LOAD_S	28	129	2879
// OP_EQ_S	2879	2880	2881
// OP_OR	2878	2881	2882
// OP_IFNOT	2882	6	0
// OP_ADDRESS	28	150	2883
// OP_MUL_F	730	230	2884
// OP_ADD_F	31	2884	2885
// OP_STOREP_F	2885	2883	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	2886
// OP_ADD_F	31	730	2887
// OP_STOREP_F	2887	2886	0
// OP_ADDRESS	28	148	2888
// OP_STOREP_FNC	2171	2888	0
// OP_STORE_V	29	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	2889
// OP_STORE_V	2889	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	2890
// OP_EQ_S	2890	1102	2891
// OP_IFNOT	2891	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	104	2892
// OP_STOREP_F	237	2892	0
// OP_ADDRESS	29	162	2893
// OP_LOAD_F	29	162	2894
// OP_LOAD_F	28	162	2895
// OP_BITOR	2894	2895	2896
// OP_STOREP_F	2896	2893	0
// OP_ADDRESS	28	130	2897
// OP_STOREP_S	343	2897	0
// OP_LOAD_S	28	129	2898
// OP_EQ_S	2898	814	2899
// OP_IFNOT	2899	6	0
// OP_ADDRESS	29	385	2900
// OP_STOREP_F	214	2900	0
// OP_ADDRESS	29	378	2901
// OP_ADD_F	31	304	2902
// OP_STOREP_F	2902	2901	0
// OP_LOAD_S	28	129	2903
// OP_EQ_S	2903	2877	2904
// OP_IFNOT	2904	17	0
// OP_ADDRESS	29	379	2905
// OP_STOREP_F	214	2905	0
// OP_ADDRESS	29	375	2906
// OP_ADD_F	31	304	2907
// OP_STOREP_F	2907	2906	0
// OP_LOAD_ENT	29	418	2908
// OP_LOAD_ENT	2908	418	2909
// OP_IFNOT	2909	9	0
// OP_LOAD_ENT	29	418	2910
// OP_STORE_V	2910	4	0
// OP_LOAD_ENT	29	418	2911
// OP_LOAD_ENT	2911	418	2912
// OP_STORE_V	2912	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_LOAD_S	28	129	2913
// OP_EQ_S	2913	2880	2914
// OP_IFNOT	2914	17	0
// OP_ADDRESS	29	381	2915
// OP_STOREP_F	214	2915	0
// OP_ADDRESS	29	376	2916
// OP_ADD_F	31	304	2917
// OP_STOREP_F	2917	2916	0
// OP_LOAD_ENT	29	418	2918
// OP_LOAD_ENT	2918	418	2919
// OP_IFNOT	2919	9	0
// OP_LOAD_ENT	29	418	2920
// OP_STORE_V	2920	4	0
// OP_LOAD_ENT	29	418	2921
// OP_LOAD_ENT	2921	418	2922
// OP_STORE_V	2922	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_LOAD_S	28	129	2923
// OP_EQ_S	2923	2924	2925
// OP_IFNOT	2925	17	0
// OP_ADDRESS	29	383	2926
// OP_STOREP_F	214	2926	0
// OP_ADDRESS	29	377	2927
// OP_ADD_F	31	304	2928
// OP_STOREP_F	2928	2927	0
// OP_LOAD_ENT	29	418	2929
// OP_LOAD_ENT	2929	418	2930
// OP_IFNOT	2930	9	0
// OP_LOAD_ENT	29	418	2931
// OP_STORE_V	2931	4	0
// OP_LOAD_ENT	29	418	2932
// OP_LOAD_ENT	2932	418	2933
// OP_STORE_V	2933	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2168	0	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () powerup_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60 * MOVETYPE_FLY);
        }
        else
        {
            self.nextthink = time + 60;
        }
        
        self.think = SUB_regen;
    }
    
    sound(other, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = TRUE;
        other.radsuit_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = TRUE;
        other.invincible_finished = time + SVC_INTERMISSION;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = TRUE;
        other.invisible_finished = time + SVC_INTERMISSION;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = TRUE;
        other.super_damage_finished = time + SVC_INTERMISSION;
        
        if(other.movetarget.movetarget)
        {
            cacheRoute(other.movetarget, other.movetarget.movetarget, FALSE, self);
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_artifact_invulnerability
// function begins at statement 3645, parm_start=2935
// OP_ADDRESS	28	146	2935
// OP_STOREP_FNC	2862	2935	0
// OP_STORE_V	2936	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2937	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2938	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2039	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2939
// OP_STOREP_S	2937	2939	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2936	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2940
// OP_STOREP_S	2941	2940	0
// OP_ADDRESS	28	162	2942
// OP_STOREP_F	273	2942	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2943
// OP_STOREP_FNC	809	2943	0
// OP_ADDRESS	28	524	2944
// OP_STOREP_FNC	866	2944	0
// OP_ADDRESS	28	525	2945
// OP_STOREP_FNC	901	2945	0
// OP_CALL0	2204	0	0
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
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.th_weight = artifactweight;
    self.th_cache = cachepowerup;
    self.th_update = updatepowerup;
    StartItem();
};

// item_artifact_envirosuit
// function begins at statement 3676, parm_start=2947
// OP_ADDRESS	28	146	2947
// OP_STOREP_FNC	2862	2947	0
// OP_STORE_V	2948	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2949	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2950	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2951
// OP_STOREP_S	2949	2951	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2948	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2952
// OP_STOREP_S	2953	2952	0
// OP_ADDRESS	28	162	2954
// OP_STOREP_F	274	2954	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2955
// OP_STOREP_FNC	809	2955	0
// OP_CALL0	2204	0	0
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
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.th_weight = artifactweight;
    StartItem();
};

// item_artifact_invisibility
// function begins at statement 3701, parm_start=2957
// OP_ADDRESS	28	146	2957
// OP_STOREP_FNC	2862	2957	0
// OP_STORE_V	2958	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2959	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2960	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2961	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2962
// OP_STOREP_S	2959	2962	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2958	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2963
// OP_STOREP_S	2964	2963	0
// OP_ADDRESS	28	162	2965
// OP_STOREP_F	272	2965	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2966
// OP_STOREP_FNC	809	2966	0
// OP_ADDRESS	28	524	2967
// OP_STOREP_FNC	866	2967	0
// OP_ADDRESS	28	525	2968
// OP_STOREP_FNC	901	2968	0
// OP_CALL0	2204	0	0
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
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.th_weight = artifactweight;
    self.th_cache = cachepowerup;
    self.th_update = updatepowerup;
    StartItem();
};

// item_artifact_super_damage
// function begins at statement 3732, parm_start=2970
// OP_ADDRESS	28	146	2970
// OP_STOREP_FNC	2862	2970	0
// OP_STORE_V	2971	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2972	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2973	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2974	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2975
// OP_STOREP_S	2972	2975	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2971	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2976
// OP_STOREP_S	2977	2976	0
// OP_ADDRESS	28	162	2978
// OP_STOREP_F	275	2978	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	2979
// OP_STOREP_FNC	809	2979	0
// OP_ADDRESS	28	524	2980
// OP_STOREP_FNC	866	2980	0
// OP_ADDRESS	28	525	2981
// OP_STOREP_FNC	901	2981	0
// OP_CALL0	2204	0	0
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
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.th_weight = artifactweight;
    self.th_cache = cachepowerup;
    self.th_update = updatepowerup;
    StartItem();
};

// BackpackTouch
// function begins at statement 3763, parm_start=2983
// OP_LOAD_S	29	129	2986
// OP_NE_S	2986	1102	2987
// OP_IFNOT	2987	5	0
// OP_LOAD_S	29	129	2988
// OP_NE_S	2988	2056	2989
// OP_IFNOT	2989	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	2990
// OP_EQ_S	2990	2056	2991
// OP_IFNOT	2991	2	0
// OP_CALL0	2170	0	0
// OP_LOAD_F	29	152	2992
// OP_LE	2992	213	2993
// OP_IFNOT	2993	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2985	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2446	0	0
// OP_STORE_F	1	2984	0
// OP_STORE_ENT	2985	28	0
// OP_ADDRESS	29	158	2994
// OP_LOAD_F	29	158	2995
// OP_LOAD_F	28	158	2996
// OP_ADD_F	2995	2996	2997
// OP_STOREP_F	2997	2994	0
// OP_ADDRESS	29	159	2998
// OP_LOAD_F	29	159	2999
// OP_LOAD_F	28	159	3000
// OP_ADD_F	2999	3000	3001
// OP_STOREP_F	3001	2998	0
// OP_ADDRESS	29	160	3002
// OP_LOAD_F	29	160	3003
// OP_LOAD_F	28	160	3004
// OP_ADD_F	3003	3004	3005
// OP_STOREP_F	3005	3002	0
// OP_ADDRESS	29	161	3006
// OP_LOAD_F	29	161	3007
// OP_LOAD_F	28	161	3008
// OP_ADD_F	3007	3008	3009
// OP_STOREP_F	3009	3006	0
// OP_ADDRESS	29	162	3010
// OP_LOAD_F	29	162	3011
// OP_LOAD_F	28	162	3012
// OP_BITOR	3011	3012	3013
// OP_STOREP_F	3013	3010	0
// OP_CALL0	2417	0	0
// OP_LOAD_S	29	129	3014
// OP_EQ_S	3014	1102	3015
// OP_IFNOT	3015	55	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3016	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	158	3017
// OP_IFNOT	3017	11	0
// OP_LOAD_F	28	158	3018
// OP_STORE_V	3018	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2983	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2983	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3019	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	159	3020
// OP_IFNOT	3020	11	0
// OP_LOAD_F	28	159	3021
// OP_STORE_V	3021	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2983	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2983	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3022	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	160	3023
// OP_IFNOT	3023	11	0
// OP_LOAD_F	28	160	3024
// OP_STORE_V	3024	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2983	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2983	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3025	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	161	3026
// OP_IFNOT	3026	11	0
// OP_LOAD_F	28	161	3027
// OP_STORE_V	3027	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2983	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2983	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3028	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2184	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2662	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	29	129	3029
// OP_EQ_S	3029	1102	3030
// OP_IFNOT	3030	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	29	154	3031
// OP_EQ_F	3031	2984	3032
// OP_IFNOT	3032	7	0
// OP_STORE_ENT	28	2985	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	3033
// OP_CALL0	2446	0	0
// OP_STOREP_F	1	3033	0
// OP_STORE_ENT	2985	28	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2169	0	0
// OP_DONE	0	0	0
void () BackpackTouch = 
{
    local string s;
    local float best;
    local entity stemp;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(other.classname == "dmbot")
    {
        bot_toucheditem();
    }
    
    
    if(other.health <= FALSE)
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
    other.items = other.items | self.items;
    bound_other_ammo();
    
    if(other.classname == "player")
    {
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
    }
    
    sound(other, CHAN_ITEM, "weapons/lock4.wav", TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    
    if(other.weapon == best)
    {
        stemp = self;
        self = other;
        self.weapon = W_BestWeapon();
        self = stemp;
    }
    
    remove(self);
    self = other;
    W_SetCurrentAmmo();
};

// DropBackpack
// function begins at statement 3892, parm_start=3035
// OP_LOAD_F	28	158	3036
// OP_LOAD_F	28	159	3037
// OP_ADD_F	3036	3037	3038
// OP_LOAD_F	28	160	3039
// OP_ADD_F	3038	3039	3040
// OP_LOAD_F	28	161	3041
// OP_ADD_F	3040	3041	3042
// OP_NOT_F	3042	0	3043
// OP_IFNOT	3043	2	0
// OP_RETURN	0	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	3035	0
// OP_ADDRESS	3035	105	3044
// OP_LOAD_V	28	105	3047
// OP_SUB_V	3047	3050	3053
// OP_STOREP_V	3053	3044	0
// OP_ADDRESS	3035	129	3056
// OP_STOREP_S	3057	3056	0
// OP_ADDRESS	3035	162	3058
// OP_LOAD_F	28	154	3059
// OP_STOREP_F	3059	3058	0
// OP_ADDRESS	3035	523	3060
// OP_STOREP_FNC	706	3060	0
// OP_ADDRESS	3035	158	3061
// OP_LOAD_F	28	158	3062
// OP_STOREP_F	3062	3061	0
// OP_ADDRESS	3035	159	3063
// OP_LOAD_F	28	159	3064
// OP_STOREP_F	3064	3063	0
// OP_ADDRESS	3035	160	3065
// OP_LOAD_F	28	160	3066
// OP_STOREP_F	3066	3065	0
// OP_ADDRESS	3035	161	3067
// OP_LOAD_F	28	161	3068
// OP_STOREP_F	3068	3067	0
// OP_ADDRESS	3035	116	3069
// OP_STOREP_F	3070	3069	0
// OP_ADDRESS	3035	114	3071
// OP_CALL0	452	0	0
// OP_MUL_F	1	2356	3073
// OP_ADD_F	3072	3073	3074
// OP_STOREP_F	3074	3071	0
// OP_ADDRESS	3035	115	3075
// OP_CALL0	452	0	0
// OP_MUL_F	1	2356	3076
// OP_ADD_F	3072	3076	3077
// OP_STOREP_F	3077	3075	0
// OP_ADDRESS	3035	182	3078
// OP_STOREP_F	222	3078	0
// OP_ADDRESS	3035	104	3079
// OP_STOREP_F	238	3079	0
// OP_ADDRESS	3035	103	3080
// OP_STOREP_F	231	3080	0
// OP_STORE_V	3035	4	0
// OP_STORE_V	3081	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3035	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	3035	146	3082
// OP_STOREP_FNC	2982	3082	0
// OP_ADDRESS	3035	150	3083
// OP_ADD_F	31	746	3084
// OP_STOREP_F	3084	3083	0
// OP_ADDRESS	3035	148	3085
// OP_STOREP_FNC	519	3085	0
// OP_DONE	0	0	0
void () DropBackpack = 
{
    local entity item;
    
    if(!(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells))
    {
        return;
    }
    
    item = spawn();
    item.origin = self.origin - '0 0 24';
    item.classname = "Backpack";
    item.items = self.weapon;
    item.th_weight = backpackweight;
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
    setsize(item, '-16 -16 0', '16 16 56');
    item.touch = BackpackTouch;
    item.nextthink = time + 120;
    item.think = SUB_Remove;
};

