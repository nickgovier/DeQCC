void () AC_Fall;
void () fire_touch;
// cammy_think
// function begins at statement 6613, parm_start=5193
// OP_LOAD_ENT	28	226	5193
// OP_LOAD_ENT	5193	412	5194
// OP_NE_E	5194	28	5195
// OP_IFNOT	5195	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	5196
// OP_STOREP_FNC	5192	5196	0
// OP_ADDRESS	28	175	5197
// OP_ADD_F	31	677	5198
// OP_STOREP_F	5198	5197	0
// OP_DONE	0	0	0
void () cammy_think = 
{
    
    if(self.owner.oldenemy != self)
    {
        remove(self);
        return;
    }
    
    self.think = cammy_think;
    self.nextthink = time + 1.000;
};

// target_think
// function begins at statement 6626, parm_start=5200
// OP_LOAD_ENT	28	226	5200
// OP_LOAD_ENT	5200	464	5201
// OP_NE_E	5201	28	5202
// OP_IFNOT	5202	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	5203
// OP_STOREP_FNC	5199	5203	0
// OP_ADDRESS	28	175	5204
// OP_ADD_F	31	677	5205
// OP_STOREP_F	5205	5204	0
// OP_DONE	0	0	0
void () target_think = 
{
    
    if(self.owner.trigger_field != self)
    {
        remove(self);
        return;
    }
    
    self.think = target_think;
    self.nextthink = time + 1.000;
};

// vehicle_think
// function begins at statement 6639, parm_start=5207
// OP_LOAD_ENT	28	226	5207
// OP_LOAD_ENT	5207	206	5208
// OP_NE_E	5208	28	5209
// OP_IFNOT	5209	14	0
// OP_LOAD_ENT	28	412	5210
// OP_IFNOT	5210	4	0
// OP_LOAD_ENT	28	412	5211
// OP_STORE_V	5211	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	28	467	5212
// OP_IFNOT	5212	4	0
// OP_LOAD_ENT	28	467	5213
// OP_STORE_V	5213	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	5214
// OP_STOREP_FNC	5206	5214	0
// OP_ADDRESS	28	175	5215
// OP_ADD_F	31	677	5216
// OP_STOREP_F	5216	5215	0
// OP_DONE	0	0	0
void () vehicle_think = 
{
    
    if(self.owner.enemy != self)
    {
        
        if(self.oldenemy)
        {
            remove(self.oldenemy);
        }
        
        
        if(self.movetarget)
        {
            remove(self.movetarget);
        }
        
        remove(self);
        return;
    }
    
    self.think = vehicle_think;
    self.nextthink = time + 1.000;
};

// Create_chasecam
// function begins at statement 6662, parm_start=5218
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	5218	0
// OP_STORE_V	5218	4	0
// OP_STORE_V	5219	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	5218	4	0
// OP_LOAD_V	28	130	5220
// OP_STORE_V	5220	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	191	5223
// OP_STOREP_V	582	5223	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	387	4	0
// OP_STORE_V	813	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	5218	7	0
// OP_CALL2	549	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	827	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_ENT	28	206	5226
// OP_LOAD_F	5226	143	5227
// OP_STORE_V	5227	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_ENT	28	206	5228
// OP_LOAD_F	5228	144	5229
// OP_STORE_V	5229	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_ENT	28	206	5230
// OP_LOAD_F	5230	145	5231
// OP_STORE_V	5231	7	0
// OP_CALL2	547	0	0
// OP_ADDRESS	5218	238	5232
// OP_STOREP_F	619	5232	0
// OP_ADDRESS	5218	404	5233
// OP_STOREP_F	815	5233	0
// OP_ADDRESS	5218	226	5234
// OP_STOREP_ENT	28	5234	0
// OP_ADDRESS	28	412	5235
// OP_STOREP_ENT	5218	5235	0
// OP_ADDRESS	5218	173	5236
// OP_STOREP_FNC	5192	5236	0
// OP_ADDRESS	5218	175	5237
// OP_ADD_F	31	677	5238
// OP_STOREP_F	5238	5237	0
// OP_DONE	0	0	0
void () Create_chasecam = 
{
    local entity e;
    e = spawn();
    setmodel(e, "progs/null.spr");
    setorigin(e, self.origin);
    self.view_ofs = '0.000 0.000 1.000';
    msg_entity = self;
    WriteByte(MSG_ONE, 5.000);
    WriteEntity(MSG_ONE, e);
    WriteByte(MSG_ONE, 10.000);
    WriteAngle(MSG_ONE, self.enemy.angles_x);
    WriteAngle(MSG_ONE, self.enemy.angles_y);
    WriteAngle(MSG_ONE, self.enemy.angles_z);
    e.toyview = 0.000;
    e.style = 32.000;
    e.owner = self;
    self.oldenemy = e;
    e.think = cammy_think;
    e.nextthink = time + 1.000;
};

// Check_minsmaxs
// function begins at statement 6712, parm_start=5240
// OP_NE_V	94	607	5241
// OP_IFNOT	5241	16	0
// OP_LOAD_F	5240	131	5242
// OP_LT	5242	94	5243
// OP_IFNOT	5243	3	0
// OP_ADDRESS	5240	131	5244
// OP_STOREP_F	94	5244	0
// OP_LOAD_F	5240	132	5245
// OP_LT	5245	95	5246
// OP_IFNOT	5246	3	0
// OP_ADDRESS	5240	132	5247
// OP_STOREP_F	95	5247	0
// OP_LOAD_F	5240	133	5248
// OP_LT	5248	96	5249
// OP_IFNOT	5249	3	0
// OP_ADDRESS	5240	133	5250
// OP_STOREP_F	96	5250	0
// OP_NE_V	97	607	5251
// OP_IFNOT	5251	16	0
// OP_LOAD_F	5240	131	5252
// OP_GT	5252	97	5253
// OP_IFNOT	5253	3	0
// OP_ADDRESS	5240	131	5254
// OP_STOREP_F	97	5254	0
// OP_LOAD_F	5240	132	5255
// OP_GT	5255	98	5256
// OP_IFNOT	5256	3	0
// OP_ADDRESS	5240	132	5257
// OP_STOREP_F	98	5257	0
// OP_LOAD_F	5240	133	5258
// OP_GT	5258	99	5259
// OP_IFNOT	5259	3	0
// OP_ADDRESS	5240	133	5260
// OP_STOREP_F	99	5260	0
// OP_DONE	0	0	0
void (entity e) Check_minsmaxs = 
{
    
    if(minims != '0.000 0.000 0.000')
    {
        
        if(e.origin_x < minims_x)
        {
            e.origin_x = minims;
        }
        
        
        if(e.origin_y < 0.000)
        {
            e.origin_y = 0.000;
        }
        
        
        if(e.origin_z < 0.000)
        {
            e.origin_z = 0.000;
        }
        
    }
    
    
    if(maxims != '0.000 0.000 0.000')
    {
        
        if(e.origin_x > maxims_x)
        {
            e.origin_x = maxims;
        }
        
        
        if(e.origin_y > 0.000)
        {
            e.origin_y = 0.000;
        }
        
        
        if(e.origin_z > 0.000)
        {
            e.origin_z = 0.000;
        }
        
    }
    
};

// Throw_ACgib
// function begins at statement 6747, parm_start=5262
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	129	5262
// OP_STOREP_F	292	5262	0
// OP_ADDRESS	394	128	5263
// OP_STOREP_F	285	5263	0
// OP_ADDRESS	394	139	5264
// OP_CALL0	501	0	0
// OP_MUL_F	1	4412	5265
// OP_SUB_F	5265	3338	5266
// OP_STOREP_F	5266	5264	0
// OP_ADDRESS	394	140	5267
// OP_CALL0	501	0	0
// OP_MUL_F	1	4412	5268
// OP_SUB_F	5268	3338	5269
// OP_STOREP_F	5269	5267	0
// OP_ADDRESS	394	141	5270
// OP_CALL0	501	0	0
// OP_MUL_F	1	3338	5271
// OP_ADD_F	5271	3338	5272
// OP_STOREP_F	5272	5270	0
// OP_ADDRESS	394	154	5273
// OP_STOREP_S	5274	5273	0
// OP_STORE_V	394	4	0
// OP_STORE_V	5169	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_LOAD_V	28	130	5275
// OP_STORE_V	5275	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	175	5278
// OP_ADD_F	31	813	5279
// OP_STOREP_F	5279	5278	0
// OP_ADDRESS	394	173	5280
// OP_STOREP_FNC	568	5280	0
// OP_ADDRESS	394	171	5281
// OP_STOREP_FNC	5191	5281	0
// OP_DONE	0	0	0
void () Throw_ACgib = 
{
    newmis = spawn();
    newmis.solid = SOLID_TRIGGER;
    newmis.movetype = MOVETYPE_TOSS;
    newmis.velocity_x = (random() * 300.000) - 150.000;
    newmis.velocity_y = (random() * 300.000) - 150.000;
    newmis.velocity_z = (random() * 150.000) + 150.000;
    newmis.classname = "fireball";
    setmodel(newmis, "progs/lavaball.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(newmis, self.origin);
    newmis.nextthink = time + 5.000;
    newmis.think = SUB_Remove;
    newmis.touch = fire_touch;
};

// AC_Explode
// function begins at statement 6789, parm_start=5282
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	5005	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	5282
// OP_STORE_V	5282	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	5283
// OP_STORE_V	5283	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	5284
// OP_STORE_V	5284	7	0
// OP_CALL2	546	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_NOT_F	35	0	5285
// OP_IFNOT	5285	4	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () AC_Explode = 
{
    T_RadiusDamage(self, self, 160.000, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    Throw_ACgib();
    Throw_ACgib();
    
    if(!deathmatch)
    {
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    BecomeExplosion();
};

// AC_Obituary
// function begins at statement 6821, parm_start=5286
// OP_LOAD_ENT	5287	226	5290
// OP_LOAD_S	5290	154	5291
// OP_EQ_S	5291	766	5292
// OP_IFNOT	5292	3	0
// OP_LOAD_ENT	5287	226	5293
// OP_STORE_ENT	5293	5287	0
// OP_LOAD_S	5287	154	5294
// OP_EQ_S	5294	766	5295
// OP_IFNOT	5295	66	0
// OP_LOAD_ENT	5286	226	5296
// OP_EQ_E	5296	5287	5297
// OP_IFNOT	5297	21	0
// OP_ADDRESS	5287	178	5298
// OP_LOAD_F	5287	178	5299
// OP_SUB_F	5299	677	5300
// OP_STOREP_F	5300	5298	0
// OP_LOAD_ENT	5286	226	5301
// OP_LOAD_S	5301	205	5302
// OP_STORE_V	5302	4	0
// OP_CALL1	517	0	0
// OP_LOAD_V	5286	130	5303
// OP_STORE_V	5303	4	0
// OP_CALL1	533	0	0
// OP_LT	1	325	5306
// OP_IFNOT	5306	4	0
// OP_STORE_V	5307	4	0
// OP_CALL1	517	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5308	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_GOTO	42	0	0
// OP_EQ_F	37	806	5309
// OP_LOAD_ENT	5286	226	5310
// OP_LOAD_F	5310	209	5311
// OP_GT	5311	619	5312
// OP_AND	5309	5312	5313
// OP_LOAD_ENT	5286	226	5314
// OP_LOAD_F	5314	209	5315
// OP_LOAD_F	5287	209	5316
// OP_EQ_F	5315	5316	5317
// OP_AND	5313	5317	5318
// OP_IFNOT	5318	13	0
// OP_ADDRESS	5287	178	5319
// OP_LOAD_F	5287	178	5320
// OP_SUB_F	5320	806	5321
// OP_STOREP_F	5321	5319	0
// OP_STORE_S	5322	5288	0
// OP_LOAD_S	5287	205	5323
// OP_STORE_V	5323	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5288	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_GOTO	19	0	0
// OP_ADDRESS	5287	178	5324
// OP_LOAD_F	5287	178	5325
// OP_ADD_F	5325	788	5326
// OP_STOREP_F	5326	5324	0
// OP_STORE_S	5327	5288	0
// OP_STORE_S	2073	5289	0
// OP_LOAD_ENT	5286	226	5328
// OP_LOAD_S	5328	205	5329
// OP_STORE_V	5329	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5288	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	205	5330
// OP_STORE_V	5330	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5289	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_GOTO	86	0	0
// OP_LOAD_ENT	5286	226	5331
// OP_LOAD_S	5331	205	5332
// OP_STORE_V	5332	4	0
// OP_CALL1	517	0	0
// OP_LOAD_F	5287	207	5333
// OP_BITAND	5333	273	5334
// OP_IFNOT	5334	42	0
// OP_LOAD_S	5287	154	5335
// OP_EQ_S	5335	2100	5336
// OP_IFNOT	5336	3	0
// OP_STORE_V	5337	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5338
// OP_EQ_S	5338	5339	5340
// OP_IFNOT	5340	3	0
// OP_STORE_V	5341	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5342
// OP_EQ_S	5342	5343	5344
// OP_IFNOT	5344	3	0
// OP_STORE_V	5345	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5346
// OP_EQ_S	5346	5347	5348
// OP_IFNOT	5348	3	0
// OP_STORE_V	5349	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5350
// OP_EQ_S	5350	5351	5352
// OP_IFNOT	5352	3	0
// OP_STORE_V	5353	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5354
// OP_EQ_S	5354	5355	5356
// OP_IFNOT	5356	3	0
// OP_STORE_V	5357	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5358
// OP_EQ_S	5358	5359	5360
// OP_IFNOT	5360	3	0
// OP_STORE_V	5361	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	5287	154	5362
// OP_EQ_S	5362	5363	5364
// OP_IFNOT	5364	3	0
// OP_STORE_V	5365	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5287	154	5366
// OP_EQ_S	5366	5367	5368
// OP_IFNOT	5368	4	0
// OP_STORE_V	5369	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5287	129	5370
// OP_EQ_F	5370	295	5371
// OP_NE_E	5287	30	5372
// OP_AND	5371	5372	5373
// OP_IFNOT	5373	4	0
// OP_STORE_V	5374	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5287	154	5375
// OP_EQ_S	5375	5376	5377
// OP_LOAD_S	5287	154	5378
// OP_EQ_S	5378	5379	5380
// OP_OR	5377	5380	5381
// OP_IFNOT	5381	4	0
// OP_STORE_V	5382	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5287	154	5383
// OP_EQ_S	5383	5274	5384
// OP_IFNOT	5384	4	0
// OP_STORE_V	5385	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5287	154	5386
// OP_EQ_S	5386	5387	5388
// OP_IFNOT	5388	4	0
// OP_STORE_V	5389	4	0
// OP_CALL1	517	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	5390	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) AC_Obituary = 
{
    local string deathstring;
    local string deathstring2;
    
    if(attacker.owner.classname == "player")
    {
        attacker = attacker.owner;
    }
    
    if(attacker.classname == "player")
    {
        if(targ.owner == attacker)
        {
            attacker.frags = attacker.frags - 1.000;
            bprint(targ.owner.netname);
            if(pointcontents(targ.origin) < CONTENT_EMPTY)
            {
                bprint(" goes for a swim\n");
            }
            else
            {
                bprint(" commits self-destruction\n");
            }
            
            return;
        }
        else
        {
            if(((teamplay == 2.000) && (targ.owner.team > 0.000)) && (targ.owner.team == attacker.team))
            {
                attacker.frags = attacker.frags - 2.000;
                deathstring = " has some target practise\n";
                bprint(attacker.netname);
                bprint(deathstring);
                return;
            }
            else
            {
                attacker.frags = attacker.frags + 3.000;
                deathstring = " is destroyed by ";
                deathstring2 = "\n";
                bprint(targ.owner.netname);
                bprint(deathstring);
                bprint(attacker.netname);
                bprint(deathstring2);
                return;
            }
            
        }
        
    }
    else
    {
        bprint(targ.owner.netname);
        
        if(attacker.flags & FL_MONSTER)
        {
            
            if(attacker.classname == "monster_drone")
            {
                bprint(" was destroyed by a drone!\n");
            }
            
            
            if(attacker.classname == "monster_helo")
            {
                bprint(" was destroyed by a Chopper\n");
            }
            
            
            if(attacker.classname == "monster_sam")
            {
                bprint(" was shot by a SAM launcher\n");
            }
            
            
            if(attacker.classname == "monster_aag")
            {
                bprint(" was shot by an Anti-aircraft gun\n");
            }
            
            
            if(attacker.classname == "monster_amg")
            {
                bprint(" was shot by a machine gun turret\n");
            }
            
            
            if(attacker.classname == "monster_etank")
            {
                bprint(" was destroyed by a tank\n");
            }
            
            
            if(attacker.classname == "monster_emsam")
            {
                bprint(" was shot by a mobile SAM\n");
            }
            
            
            if(attacker.classname == "monster_ehmmv")
            {
                bprint(" was outgunned by an armoured car\n");
            }
            
            return;
        }
        
        
        if(attacker.classname == "explo_box")
        {
            bprint(" blew up\n");
            return;
        }
        
        
        if((attacker.solid == SOLID_BSP) && (attacker != world))
        {
            bprint(" was squished\n");
            return;
        }
        
        
        if((attacker.classname == "trap_shooter") || (attacker.classname == "trap_spikeshooter"))
        {
            bprint(" was spiked\n");
            return;
        }
        
        
        if(attacker.classname == "fireball")
        {
            bprint(" ate a lavaball\n");
            return;
        }
        
        
        if(attacker.classname == "trigger_changelevel")
        {
            bprint(" tried to leave\n");
            return;
        }
        
        bprint(" exploded\n");
    }
    
};

// AC_aim
// function begins at statement 6981, parm_start=5391
// OP_STORE_F	5391	5398	0
// OP_STORE_F	619	5397	0
// OP_LT	5392	619	5408
// OP_IFNOT	5408	5	0
// OP_ADD_F	5397	677	5409
// OP_STORE_F	5409	5397	0
// OP_SUB_F	619	5392	5410
// OP_STORE_F	5410	5392	0
// OP_STORE_ENT	30	5394	0
// OP_LOAD_ENT	28	206	5411
// OP_LOAD_V	5411	142	5412
// OP_STORE_V	5412	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	5399	0
// OP_SUB_F	619	5401	5415
// OP_STORE_F	5415	5401	0
// OP_LOAD_ENT	28	206	5416
// OP_LOAD_V	5416	130	5417
// OP_STORE_V	5417	4	0
// OP_STORE_V	5392	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	5393	0
// OP_IFNOT	5393	111	0
// OP_LOAD_V	5393	130	5420
// OP_LOAD_V	5393	159	5423
// OP_LOAD_V	5393	163	5426
// OP_ADD_V	5423	5426	5429
// OP_MUL_VF	5429	972	5432
// OP_ADD_V	5420	5432	5435
// OP_STORE_V	5435	5405	0
// OP_LOAD_F	5393	188	5438
// OP_GT	5438	677	5439
// OP_LOAD_F	5393	128	5440
// OP_NE_F	5440	284	5441
// OP_BITAND	5397	677	5442
// OP_EQ_F	5442	619	5443
// OP_OR	5441	5443	5444
// OP_AND	5439	5444	5445
// OP_IFNOT	5445	92	0
// OP_STORE_V	5405	4	0
// OP_LOAD_ENT	28	206	5446
// OP_LOAD_V	5446	130	5447
// OP_STORE_V	5447	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	5393	155	5450
// OP_EQ_S	5450	1802	5451
// OP_IFNOT	5451	8	0
// OP_LOAD_F	5393	157	5452
// OP_EQ_F	5452	677	5453
// OP_CALL0	501	0	0
// OP_LT	1	972	5454
// OP_AND	5453	5454	5455
// OP_IFNOT	5455	2	0
// OP_STORE_F	619	70	0
// OP_IFNOT	37	22	0
// OP_BITAND	112	810	5456
// OP_GT	5456	619	5457
// OP_LOAD_S	5393	243	5458
// OP_LOAD_S	28	243	5459
// OP_EQ_S	5458	5459	5460
// OP_AND	5457	5460	5461
// OP_IFNOT	5461	3	0
// OP_STORE_F	619	70	0
// OP_GOTO	12	0	0
// OP_LOAD_S	5393	243	5462
// OP_LOAD_S	28	243	5463
// OP_EQ_S	5462	5463	5464
// OP_LOAD_S	5394	243	5465
// OP_LOAD_S	28	243	5466
// OP_NE_S	5465	5466	5467
// OP_AND	5464	5467	5468
// OP_NE_E	5394	30	5469
// OP_AND	5468	5469	5470
// OP_IFNOT	5470	2	0
// OP_STORE_F	619	70	0
// OP_GOTO	7	0	0
// OP_IFNOT	35	6	0
// OP_LOAD_ENT	5393	226	5471
// OP_LOAD_S	5471	154	5472
// OP_NE_S	5472	766	5473
// OP_IFNOT	5473	2	0
// OP_STORE_F	619	70	0
// OP_EQ_F	70	677	5474
// OP_IFNOT	5474	21	0
// OP_AND	79	80	5475
// OP_IFNOT	5475	3	0
// OP_STORE_F	619	70	0
// OP_GOTO	17	0	0
// OP_LOAD_F	5393	129	5476
// OP_EQ_F	5476	295	5477
// OP_IFNOT	5477	14	0
// OP_LOAD_ENT	28	206	5478
// OP_LOAD_V	5478	130	5479
// OP_SUB_V	5405	5479	5482
// OP_STORE_V	5482	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	5395	0
// OP_LOAD_V	5393	167	5485
// OP_STORE_V	5485	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	5396	0
// OP_GT	5396	5395	5488
// OP_IFNOT	5488	2	0
// OP_STORE_F	619	70	0
// OP_EQ_F	70	677	5489
// OP_IFNOT	5489	23	0
// OP_LOAD_ENT	28	206	5490
// OP_LOAD_V	5490	130	5491
// OP_SUB_V	5405	5491	5494
// OP_STORE_V	5494	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	5402	0
// OP_MUL_V	5399	5402	5497
// OP_STORE_F	5497	5395	0
// OP_GT	5395	5391	5498
// OP_IFNOT	5498	13	0
// OP_GT	5395	5398	5499
// OP_LOAD_S	5394	243	5500
// OP_LOAD_S	28	243	5501
// OP_EQ_S	5500	5501	5502
// OP_LOAD_S	5393	243	5503
// OP_LOAD_S	28	243	5504
// OP_NE_S	5503	5504	5505
// OP_AND	5502	5505	5506
// OP_OR	5499	5506	5507
// OP_IFNOT	5507	3	0
// OP_STORE_F	5395	5398	0
// OP_STORE_ENT	5393	5394	0
// OP_LOAD_ENT	5393	189	5508
// OP_STORE_ENT	5508	5393	0
// OP_GOTO	-110	0	0
// OP_NE_E	5394	30	5509
// OP_IFNOT	5509	14	0
// OP_LOAD_V	5394	130	5510
// OP_LOAD_V	5394	159	5513
// OP_LOAD_V	5394	163	5516
// OP_ADD_V	5513	5516	5519
// OP_MUL_VF	5519	972	5522
// OP_ADD_V	5510	5522	5525
// OP_STORE_V	5525	5405	0
// OP_LOAD_ENT	28	206	5528
// OP_LOAD_V	5528	130	5529
// OP_SUB_V	5405	5529	5532
// OP_STORE_V	5532	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	5399	0
// OP_LOAD_ENT	28	206	5535
// OP_ADDRESS	5535	464	5536
// OP_STOREP_ENT	5394	5536	0
// OP_RETURN	5399	0	0
// OP_DONE	0	0	0
vector (float minim, float maxdist) AC_aim = 
{
    local entity e;
    local entity re;
    local float f1;
    local float f2;
    local float flg;
    local float min;
    local vector v1;
    local vector v2;
    local vector org;
    min = minim;
    flg = 0.000;
    
    if(maxdist < 0.000)
    {
        flg = flg + 1.000;
        maxdist = 0.000 - maxdist;
    }
    
    re = world;
    makevectors(self.enemy.angles);
    v1 = v_forward;
    v1_z = 0.000 - 0.000;
    e = findradius(self.enemy.origin, maxdist);
    
    while(e)
    {
        org = e.origin + ((e.mins + e.maxs) * 0.500);
        
        if((e.takedamage > 1.000) && ((e.movetype != MOVETYPE_FLY) || ((flg & 1.000) == 0.000)))
        {
            traceline(org, self.enemy.origin, TRUE, world);
            
            if(e.model == "progs/plane3.mdl")
            {
                
                if((e.skin == 1.000) && (random() < 0.500))
                {
                    trace_fraction = 0.000;
                }
                
            }
            
            if(teamplay)
            {
                if(((temp1 & 8.000) > 0.000) && (e.ts == self.ts))
                {
                    trace_fraction = 0.000;
                }
                else
                {
                    
                    if(((e.ts == self.ts) && (re.ts != self.ts)) && (re != world))
                    {
                        trace_fraction = 0.000;
                    }
                    
                }
                
            }
            else
            {
                
                if(deathmatch)
                {
                    
                    if(e.owner.classname != "player")
                    {
                        trace_fraction = 0.000;
                    }
                    
                }
                
            }
            
            
            if(trace_fraction == 1.000)
            {
                if(trace_inopen && trace_inwater)
                {
                    trace_fraction = 0.000;
                }
                else
                {
                    
                    if(e.solid == SOLID_BSP)
                    {
                        f1 = vlen(org - self.enemy.origin);
                        f2 = vlen(e.size);
                        
                        if(f2 > f1)
                        {
                            trace_fraction = 0.000;
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(trace_fraction == 1.000)
            {
                v2 = normalize(org - self.enemy.origin);
                f1 = v1 * v2;
                
                if(f1 > minim)
                {
                    
                    if((f1 > min) || ((re.ts == self.ts) && (e.ts != self.ts)))
                    {
                        min = f1;
                        re = e;
                    }
                    
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    
    if(re != world)
    {
        org = re.origin + ((re.mins + re.maxs) * 0.500);
        v1 = normalize(org - self.enemy.origin);
    }
    
    self.enemy.trigger_field = re;
    return v1;
};

// AC_aim2
// function begins at statement 7134, parm_start=5538
// OP_STORE_F	5538	5545	0
// OP_STORE_F	619	5544	0
// OP_LT	5539	619	5555
// OP_IFNOT	5555	5	0
// OP_ADD_F	5544	677	5556
// OP_STORE_F	5556	5544	0
// OP_SUB_F	619	5539	5557
// OP_STORE_F	5557	5539	0
// OP_STORE_ENT	30	5541	0
// OP_LOAD_V	28	200	5558
// OP_STORE_V	5558	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	5546	0
// OP_LOAD_ENT	28	206	5561
// OP_LOAD_V	5561	130	5562
// OP_STORE_V	5562	4	0
// OP_STORE_V	5539	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	5540	0
// OP_IFNOT	5540	116	0
// OP_LOAD_V	5540	130	5565
// OP_LOAD_V	5540	159	5568
// OP_LOAD_V	5540	163	5571
// OP_ADD_V	5568	5571	5574
// OP_MUL_VF	5574	972	5577
// OP_ADD_V	5565	5577	5580
// OP_STORE_V	5580	5552	0
// OP_NE_E	5540	28	5583
// OP_LOAD_ENT	28	206	5584
// OP_NE_E	5540	5584	5585
// OP_AND	5583	5585	5586
// OP_IFNOT	5586	101	0
// OP_LOAD_F	5540	188	5587
// OP_GT	5587	677	5588
// OP_LOAD_F	5540	128	5589
// OP_NE_F	5589	284	5590
// OP_BITAND	5544	677	5591
// OP_EQ_F	5591	619	5592
// OP_OR	5590	5592	5593
// OP_AND	5588	5593	5594
// OP_IFNOT	5594	92	0
// OP_STORE_V	5552	4	0
// OP_LOAD_ENT	28	412	5595
// OP_LOAD_V	5595	130	5596
// OP_STORE_V	5596	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	5540	155	5599
// OP_EQ_S	5599	1802	5600
// OP_IFNOT	5600	8	0
// OP_LOAD_F	5540	157	5601
// OP_EQ_F	5601	677	5602
// OP_CALL0	501	0	0
// OP_LT	1	972	5603
// OP_AND	5602	5603	5604
// OP_IFNOT	5604	2	0
// OP_STORE_F	619	70	0
// OP_IFNOT	37	22	0
// OP_BITAND	112	810	5605
// OP_GT	5605	619	5606
// OP_LOAD_S	5540	243	5607
// OP_LOAD_S	28	243	5608
// OP_EQ_S	5607	5608	5609
// OP_AND	5606	5609	5610
// OP_IFNOT	5610	3	0
// OP_STORE_F	619	70	0
// OP_GOTO	12	0	0
// OP_LOAD_S	5540	243	5611
// OP_LOAD_S	28	243	5612
// OP_EQ_S	5611	5612	5613
// OP_LOAD_S	5541	243	5614
// OP_LOAD_S	28	243	5615
// OP_NE_S	5614	5615	5616
// OP_AND	5613	5616	5617
// OP_NE_E	5541	30	5618
// OP_AND	5617	5618	5619
// OP_IFNOT	5619	2	0
// OP_STORE_F	619	70	0
// OP_GOTO	7	0	0
// OP_IFNOT	35	6	0
// OP_LOAD_ENT	5540	226	5620
// OP_LOAD_S	5620	154	5621
// OP_NE_S	5621	766	5622
// OP_IFNOT	5622	2	0
// OP_STORE_F	619	70	0
// OP_EQ_F	70	677	5623
// OP_IFNOT	5623	21	0
// OP_AND	79	80	5624
// OP_IFNOT	5624	3	0
// OP_STORE_F	619	70	0
// OP_GOTO	17	0	0
// OP_LOAD_F	5540	129	5625
// OP_EQ_F	5625	295	5626
// OP_IFNOT	5626	14	0
// OP_LOAD_ENT	28	206	5627
// OP_LOAD_V	5627	130	5628
// OP_SUB_V	5552	5628	5631
// OP_STORE_V	5631	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	5542	0
// OP_LOAD_V	5540	167	5634
// OP_STORE_V	5634	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	5543	0
// OP_GT	5543	5542	5637
// OP_IFNOT	5637	2	0
// OP_STORE_F	619	70	0
// OP_EQ_F	70	677	5638
// OP_IFNOT	5638	23	0
// OP_LOAD_ENT	28	412	5639
// OP_LOAD_V	5639	130	5640
// OP_SUB_V	5552	5640	5643
// OP_STORE_V	5643	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	5549	0
// OP_MUL_V	5546	5549	5646
// OP_STORE_F	5646	5542	0
// OP_GT	5542	5538	5647
// OP_IFNOT	5647	13	0
// OP_GT	5542	5545	5648
// OP_LOAD_S	5541	243	5649
// OP_LOAD_S	28	243	5650
// OP_EQ_S	5649	5650	5651
// OP_LOAD_S	5540	243	5652
// OP_LOAD_S	28	243	5653
// OP_NE_S	5652	5653	5654
// OP_AND	5651	5654	5655
// OP_OR	5648	5655	5656
// OP_IFNOT	5656	3	0
// OP_STORE_F	5542	5545	0
// OP_STORE_ENT	5540	5541	0
// OP_LOAD_ENT	5540	189	5657
// OP_STORE_ENT	5657	5540	0
// OP_GOTO	-115	0	0
// OP_NE_E	5541	30	5658
// OP_IFNOT	5658	14	0
// OP_LOAD_V	5541	130	5659
// OP_LOAD_V	5541	159	5662
// OP_LOAD_V	5541	163	5665
// OP_ADD_V	5662	5665	5668
// OP_MUL_VF	5668	972	5671
// OP_ADD_V	5659	5671	5674
// OP_STORE_V	5674	5552	0
// OP_LOAD_ENT	28	206	5677
// OP_LOAD_V	5677	130	5678
// OP_SUB_V	5552	5678	5681
// OP_STORE_V	5681	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	5546	0
// OP_LOAD_ENT	28	206	5684
// OP_ADDRESS	5684	464	5685
// OP_STOREP_ENT	5541	5685	0
// OP_RETURN	5546	0	0
// OP_DONE	0	0	0
vector (float minim, float maxdist) AC_aim2 = 
{
    local entity e;
    local entity re;
    local float f1;
    local float f2;
    local float flg;
    local float min;
    local vector v1;
    local vector v2;
    local vector org;
    min = minim;
    flg = 0.000;
    
    if(maxdist < 0.000)
    {
        flg = flg + 1.000;
        maxdist = 0.000 - maxdist;
    }
    
    re = world;
    makevectors(self.v_angle);
    v1 = v_forward;
    e = findradius(self.enemy.origin, maxdist);
    
    while(e)
    {
        org = e.origin + ((e.mins + e.maxs) * 0.500);
        
        if((e != self) && (e != self.enemy))
        {
            
            if((e.takedamage > 1.000) && ((e.movetype != MOVETYPE_FLY) || ((flg & 1.000) == 0.000)))
            {
                traceline(org, self.oldenemy.origin, TRUE, world);
                
                if(e.model == "progs/plane3.mdl")
                {
                    
                    if((e.skin == 1.000) && (random() < 0.500))
                    {
                        trace_fraction = 0.000;
                    }
                    
                }
                
                if(teamplay)
                {
                    if(((temp1 & 8.000) > 0.000) && (e.ts == self.ts))
                    {
                        trace_fraction = 0.000;
                    }
                    else
                    {
                        
                        if(((e.ts == self.ts) && (re.ts != self.ts)) && (re != world))
                        {
                            trace_fraction = 0.000;
                        }
                        
                    }
                    
                }
                else
                {
                    
                    if(deathmatch)
                    {
                        
                        if(e.owner.classname != "player")
                        {
                            trace_fraction = 0.000;
                        }
                        
                    }
                    
                }
                
                
                if(trace_fraction == 1.000)
                {
                    if(trace_inopen && trace_inwater)
                    {
                        trace_fraction = 0.000;
                    }
                    else
                    {
                        
                        if(e.solid == SOLID_BSP)
                        {
                            f1 = vlen(org - self.enemy.origin);
                            f2 = vlen(e.size);
                            
                            if(f2 > f1)
                            {
                                trace_fraction = 0.000;
                            }
                            
                        }
                        
                    }
                    
                }
                
                
                if(trace_fraction == 1.000)
                {
                    v2 = normalize(org - self.oldenemy.origin);
                    f1 = v1 * v2;
                    
                    if(f1 > minim)
                    {
                        
                        if((f1 > min) || ((re.ts == self.ts) && (e.ts != self.ts)))
                        {
                            min = f1;
                            re = e;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    
    if(re != world)
    {
        org = re.origin + ((re.mins + re.maxs) * 0.500);
        v1 = normalize(org - self.enemy.origin);
    }
    
    self.enemy.trigger_field = re;
    return v1;
};

// T_ACTouch
// function begins at statement 7289, parm_start=5686
// OP_LOAD_F	29	129	5690
// OP_EQ_F	5690	292	5691
// OP_IFNOT	5691	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	226	5692
// OP_EQ_E	29	5692	5693
// OP_LOAD_ENT	29	226	5694
// OP_LOAD_ENT	28	226	5695
// OP_EQ_E	5694	5695	5696
// OP_OR	5693	5696	5697
// OP_IFNOT	5697	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	226	5698
// OP_LOAD_F	5698	207	5699
// OP_BITAND	5699	274	5700
// OP_IFNOT	5700	2	0
// OP_RETURN	0	0	0
// OP_NE_E	29	30	5701
// OP_IFNOT	5701	8	0
// OP_LOAD_F	29	188	5702
// OP_NOT_F	5702	0	5703
// OP_LOAD_F	29	129	5704
// OP_LT	5704	806	5705
// OP_AND	5703	5705	5706
// OP_IFNOT	5706	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	154	5707
// OP_EQ_S	5707	5708	5709
// OP_LOAD_F	28	177	5710
// OP_GT	5710	619	5711
// OP_AND	5709	5711	5712
// OP_IFNOT	5712	61	0
// OP_LOAD_ENT	28	176	5713
// OP_EQ_E	29	5713	5714
// OP_LOAD_F	28	241	5715
// OP_GT	5715	619	5716
// OP_AND	5714	5716	5717
// OP_IFNOT	5717	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	143	5718
// OP_STORE_V	5718	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1111	5719
// OP_LOAD_F	28	145	5720
// OP_STORE_V	5720	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1111	5721
// OP_AND	5719	5721	5722
// OP_IFNOT	5722	44	0
// OP_LOAD_V	28	130	5723
// OP_STORE_V	5723	4	0
// OP_LOAD_V	28	130	5726
// OP_ADD_V	5726	5729	5732
// OP_STORE_V	5732	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	78	154	5735
// OP_EQ_S	5735	5708	5736
// OP_IFNOT	5736	33	0
// OP_LOAD_F	28	241	5737
// OP_NOT_F	5737	0	5738
// OP_IFNOT	5738	11	0
// OP_LOAD_ENT	28	226	5739
// OP_STORE_V	5739	4	0
// OP_STORE_V	5740	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	5741	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	241	5742
// OP_STOREP_F	677	5742	0
// OP_ADDRESS	28	176	5743
// OP_STOREP_ENT	29	5743	0
// OP_ADDRESS	28	143	5744
// OP_STOREP_F	619	5744	0
// OP_ADDRESS	28	145	5745
// OP_STOREP_F	619	5745	0
// OP_ADDRESS	28	146	5746
// OP_STOREP_V	607	5746	0
// OP_ADDRESS	28	141	5749
// OP_STOREP_F	619	5749	0
// OP_ADDRESS	28	133	5750
// OP_LOAD_F	29	133	5751
// OP_LOAD_F	29	166	5752
// OP_ADD_F	5751	5752	5753
// OP_ADD_F	5753	812	5754
// OP_STOREP_F	5754	5750	0
// OP_RETURN	0	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	5755
// OP_STORE_V	5755	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	5756
// OP_STORE_V	5756	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	5757
// OP_STORE_V	5757	7	0
// OP_CALL2	546	0	0
// OP_LOAD_ENT	28	226	5758
// OP_LOAD_F	5758	178	5759
// OP_STORE_F	5759	5687	0
// OP_EQ_E	29	30	5760
// OP_LOAD_F	29	177	5761
// OP_GT	5761	619	5762
// OP_OR	5760	5762	5763
// OP_LOAD_F	28	177	5764
// OP_LT	5764	677	5765
// OP_LOAD_F	28	423	5766
// OP_GT	31	5766	5767
// OP_AND	5765	5767	5768
// OP_OR	5763	5768	5769
// OP_IFNOT	5769	80	0
// OP_ADDRESS	28	130	5770
// OP_LOAD_V	28	130	5773
// OP_LOAD_V	28	138	5776
// OP_STORE_V	5776	4	0
// OP_CALL1	503	0	0
// OP_MUL_VF	1	810	5779
// OP_SUB_V	5773	5779	5782
// OP_STOREP_V	5782	5770	0
// OP_LOAD_ENT	28	226	5785
// OP_STORE_V	5785	4	0
// OP_LOAD_V	28	130	5786
// OP_STORE_V	5786	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	5005	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_LOAD_F	28	177	5789
// OP_GT	5789	619	5790
// OP_IFNOT	5790	37	0
// OP_LOAD_ENT	28	226	5791
// OP_ADDRESS	5791	178	5792
// OP_SUB_F	5687	677	5793
// OP_STOREP_F	5793	5792	0
// OP_LOAD_ENT	28	226	5794
// OP_LOAD_S	5794	205	5795
// OP_STORE_V	5795	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5796	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	5797
// OP_IFNOT	5797	21	0
// OP_LOAD_S	29	205	5798
// OP_IFNOT	5798	5	0
// OP_LOAD_S	29	205	5799
// OP_STORE_V	5799	4	0
// OP_CALL1	517	0	0
// OP_GOTO	12	0	0
// OP_LOAD_S	29	154	5800
// OP_EQ_S	5800	5801	5802
// OP_IFNOT	5802	4	0
// OP_STORE_V	5803	4	0
// OP_CALL1	517	0	0
// OP_GOTO	6	0	0
// OP_LOAD_S	29	154	5804
// OP_EQ_S	5804	5708	5805
// OP_IFNOT	5805	3	0
// OP_STORE_V	5806	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5807	4	0
// OP_CALL1	517	0	0
// OP_ADDRESS	28	177	5808
// OP_STOREP_F	619	5808	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_LOAD_ENT	28	226	5809
// OP_STORE_V	5809	4	0
// OP_LOAD_ENT	28	226	5810
// OP_STORE_V	5810	7	0
// OP_LOAD_ENT	28	226	5811
// OP_STORE_V	5811	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	171	5812
// OP_STOREP_FNC	566	5812	0
// OP_ADDRESS	28	188	5813
// OP_STOREP_F	619	5813	0
// OP_ADDRESS	28	173	5814
// OP_STOREP_FNC	2603	5814	0
// OP_ADDRESS	28	175	5815
// OP_ADD_F	31	655	5816
// OP_STOREP_F	5816	5815	0
// OP_GOTO	50	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	986	13	0
// OP_CALL4	569	0	0
// OP_LOAD_F	28	177	5817
// OP_GT	5817	619	5818
// OP_IFNOT	5818	35	0
// OP_ADDRESS	28	423	5819
// OP_ADD_F	31	1687	5820
// OP_STOREP_F	5820	5819	0
// OP_LOAD_ENT	28	226	5821
// OP_ADDRESS	5821	178	5822
// OP_SUB_F	5687	677	5823
// OP_STOREP_F	5823	5822	0
// OP_LOAD_ENT	28	226	5824
// OP_LOAD_S	5824	205	5825
// OP_STORE_V	5825	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5796	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	5826
// OP_IFNOT	5826	20	0
// OP_LOAD_S	29	205	5827
// OP_IFNOT	5827	5	0
// OP_LOAD_S	29	205	5828
// OP_STORE_V	5828	4	0
// OP_CALL1	517	0	0
// OP_GOTO	12	0	0
// OP_LOAD_S	29	154	5829
// OP_EQ_S	5829	5801	5830
// OP_IFNOT	5830	4	0
// OP_STORE_V	5803	4	0
// OP_CALL1	517	0	0
// OP_GOTO	6	0	0
// OP_LOAD_S	29	154	5831
// OP_EQ_S	5831	5708	5832
// OP_IFNOT	5832	3	0
// OP_STORE_V	5806	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_ADDRESS	28	177	5833
// OP_STOREP_F	619	5833	0
// OP_ADDRESS	28	411	5834
// OP_STOREP_FNC	566	5834	0
// OP_ADDRESS	28	171	5835
// OP_STOREP_FNC	2368	5835	0
// OP_CALL0	5190	0	0
// OP_DONE	0	0	0
void () T_ACTouch = 
{
    local float damg;
    local float temp;
    local entity stemp;
    local entity stemp2;
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if((other == self.owner) || (other.owner == self.owner))
    {
        return;
    }
    
    
    if(self.owner.flags & FL_GODMODE)
    {
        return;
    }
    
    
    if(other != world)
    {
        
        if(!other.takedamage && (other.solid < 2.000))
        {
            return;
        }
        
    }
    
    
    if((other.classname == "func_runway") && (self.health > 0.000))
    {
        
        if((other == self.groundentity) && (self.landed > 0.000))
        {
            return;
        }
        
        
        if((fabs(self.angles_x) < 20.000) && (fabs(self.angles_z) < 20.000))
        {
            traceline(self.origin, self.origin + '0.000 0.000 -32.000', FALSE, self);
            
            if(trace_ent.classname == "func_runway")
            {
                
                if(!self.landed)
                {
                    sprint(self.owner, "Landed.\n");
                    sound(self, CHAN_VOICE, "touchdwn.wav", 1.000, ATTN_NORM);
                }
                
                self.landed = 1.000;
                self.groundentity = other;
                self.angles_x = 0.000;
                self.angles_z = 0.000;
                self.avelocity = '0.000 0.000 0.000';
                self.velocity_z = 0.000;
                self.origin_z = (other.origin_z + other.maxs_z) + 16.000;
                return;
            }
            
        }
        
    }
    
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    temp = self.owner.frags;
    if(((other == world) || (other.health > 0.000)) || ((self.health < 1.000) && (time > self.pain_finished)))
    {
        self.origin = self.origin - (normalize(self.velocity) * 8.000);
        setorigin(self.owner, self.origin);
        T_RadiusDamage(self, self, 160.000, self);
        
        if(self.health > 0.000)
        {
            self.owner.frags = temp - 1.000;
            bprint(self.owner.netname);
            bprint(" crashed into ");
            if(other != world)
            {
                if(other.netname)
                {
                    bprint(other.netname);
                }
                else
                {
                    if(other.classname == "func_xwall")
                    {
                        bprint("a building");
                    }
                    else
                    {
                        
                        if(other.classname == "func_runway")
                        {
                            bprint("a runway");
                        }
                        
                    }
                    
                }
                
                bprint("\n");
            }
            else
            {
                bprint("the ground\n");
            }
            
            self.health = 0.000;
        }
        
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        T_Damage(self.owner, self.owner, self.owner, 1000.000);
        self.touch = SUB_Null;
        self.takedamage = 0.000;
        self.think = BecomeExplosion;
        self.nextthink = time + 0.100;
    }
    else
    {
        T_Damage(other, self, self, 200.000);
        
        if(self.health > 0.000)
        {
            self.pain_finished = time + 0.300;
            self.owner.frags = temp - 1.000;
            bprint(self.owner.netname);
            bprint(" crashed into ");
            
            if(other != world)
            {
                if(other.netname)
                {
                    bprint(other.netname);
                }
                else
                {
                    if(other.classname == "func_xwall")
                    {
                        bprint("a building");
                    }
                    else
                    {
                        
                        if(other.classname == "func_runway")
                        {
                            bprint("a runway");
                        }
                        
                    }
                    
                }
                
                bprint("\n");
            }
            
        }
        
        self.health = 0.000;
        self.th_die = SUB_Null;
        self.touch = T_ACTouch;
        AC_Fall();
    }
    
};

// AC_Fall
// function begins at statement 7542, parm_start=5836
// OP_STORE_V	607	5836	0
// OP_LOAD_F	28	143	5846
// OP_SUB_F	5845	5846	5847
// OP_STORE_F	5847	5836	0
// OP_STORE_V	5848	5839	0
// OP_LT	5836	619	5851
// OP_IFNOT	5851	2	0
// OP_STORE_F	5852	5839	0
// OP_STORE_V	5836	4	0
// OP_CALL1	534	0	0
// OP_LT	1	806	5853
// OP_IFNOT	5853	4	0
// OP_STORE_F	619	5839	0
// OP_ADDRESS	28	143	5854
// OP_STOREP_F	5845	5854	0
// OP_ADDRESS	28	146	5855
// OP_STOREP_V	5839	5855	0
// OP_LOAD_V	28	142	5858
// OP_STORE_V	5858	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	5842	0
// OP_SUB_F	619	5844	5861
// OP_STORE_F	5861	5844	0
// OP_ADDRESS	28	138	5862
// OP_MUL_VF	5842	4412	5865
// OP_STOREP_V	5865	5862	0
// OP_LOAD_F	28	207	5868
// OP_BITAND	5868	277	5869
// OP_IFNOT	5869	5	0
// OP_ADDRESS	28	207	5870
// OP_LOAD_F	28	207	5871
// OP_SUB_F	5871	277	5872
// OP_STOREP_F	5872	5870	0
// OP_ADDRESS	28	173	5873
// OP_STOREP_FNC	5190	5873	0
// OP_ADDRESS	28	175	5874
// OP_ADD_F	31	655	5875
// OP_STOREP_F	5875	5874	0
// OP_DONE	0	0	0
void () AC_Fall = 
{
    local vector v1;
    local vector v2;
    local vector v3;
    v1 = '0.000 0.000 0.000';
    v1_x = -70.000 - self.angles_x;
    v2 = '0.000 0.000 360.000';
    
    if(v1_x < 0.000)
    {
        v2_x = -20.000;
    }
    
    
    if(fabs(v1_x) < 2.000)
    {
        v2_x = 0.000;
        self.angles_x = -70.000;
    }
    
    self.avelocity = v2;
    makevectors(self.angles);
    v3 = v_forward;
    v3_z = 0.000 - 0.000;
    self.velocity = v3 * 300.000;
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
    self.think = AC_Fall;
    self.nextthink = time + 0.100;
};

// AC_Die
// function begins at statement 7581, parm_start=5876
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	5876
// OP_STORE_V	5876	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	5877
// OP_STORE_V	5877	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	5878
// OP_STORE_V	5878	7	0
// OP_CALL2	546	0	0
// OP_ADDRESS	28	423	5879
// OP_ADD_F	31	1687	5880
// OP_STOREP_F	5880	5879	0
// OP_ADDRESS	28	171	5881
// OP_STOREP_FNC	2368	5881	0
// OP_CALL0	5190	0	0
// OP_DONE	0	0	0
void () AC_Die = 
{
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.pain_finished = time + 0.300;
    self.touch = T_ACTouch;
    AC_Fall();
};

