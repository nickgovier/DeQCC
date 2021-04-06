// func000387
// function begins at statement 11529, parm_start=8374
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7689	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_IFNOT	8374	2	0
// OP_RETURN	8374	0	0
// OP_IFNOT	36	17	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8376	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_EQ_E	6621	30	8377
// OP_IFNOT	8377	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_NE_E	6621	30	8378
// OP_IFNOT	8378	2	0
// OP_RETURN	6621	0	0
// OP_GOTO	33	0	0
// OP_IFNOT	35	32	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	8375	0
// OP_GT	8375	8380	8381
// OP_IFNOT	8381	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_GT	8375	8382	8383
// OP_IFNOT	8383	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_EQ_E	6621	30	8384
// OP_IFNOT	8384	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_NE_E	6621	30	8385
// OP_IFNOT	8385	2	0
// OP_RETURN	6621	0	0
// OP_BITAND	38	765	8386
// OP_IFNOT	8386	8	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8387	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_IFNOT	8374	2	0
// OP_RETURN	8374	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_NOT_ENT	8374	0	8388
// OP_IFNOT	8388	3	0
// OP_STORE_V	8389	4	0
// OP_CALL1	460	0	0
// OP_RETURN	8374	0	0
// OP_DONE	0	0	0
entity () func000387 = 
{
    local entity globaldef002899;
    local float globaldef002900;
    globaldef002899 = find(world, classname, "testplayerstart");
    
    if(globaldef002899)
    {
        return globaldef002899;
    }
    
    if(coop)
    {
        globaldef002375 = find(globaldef002375, classname, "info_player_coop");
        
        if(globaldef002375 == world)
        {
            globaldef002375 = find(globaldef002375, classname, "info_player_start");
        }
        
        
        if(globaldef002375 != world)
        {
            return globaldef002375;
        }
        
    }
    else
    {
        
        if(deathmatch)
        {
            globaldef002375 = find(globaldef002375, classname, "info_player_deathmatch");
            globaldef002900 = random();
            
            if(globaldef002900 > 0.33)
            {
                globaldef002375 = find(globaldef002375, classname, "info_player_deathmatch");
            }
            
            
            if(globaldef002900 > 0.66)
            {
                globaldef002375 = find(globaldef002375, classname, "info_player_deathmatch");
            }
            
            
            if(globaldef002375 == world)
            {
                globaldef002375 = find(globaldef002375, classname, "info_player_deathmatch");
            }
            
            
            if(globaldef002375 != world)
            {
                return globaldef002375;
            }
            
        }
        
    }
    
    
    if(serverflags & globaldef000748)
    {
        globaldef002899 = find(world, classname, "info_player_start2");
        
        if(globaldef002899)
        {
            return globaldef002899;
        }
        
    }
    
    globaldef002899 = find(world, classname, "info_player_start");
    
    if(!globaldef002899)
    {
        error("PutClientInServer: no info_player_start on level");
    }
    
    return globaldef002899;
};

// func000388
// function begins at statement 11605, parm_start=8391
// OP_ADDRESS	8391	152	8392
// OP_STOREP_F	738	8392	0
// OP_ADDRESS	8391	188	8393
// OP_STOREP_F	2044	8393	0
// OP_ADDRESS	8391	187	8394
// OP_STOREP_F	4478	8394	0
// OP_ADDRESS	8391	158	8395
// OP_STOREP_F	1997	8395	0
// OP_ADDRESS	8391	159	8396
// OP_STOREP_F	2044	8396	0
// OP_ADDRESS	8391	160	8397
// OP_STOREP_F	1997	8397	0
// OP_ADDRESS	8391	161	8398
// OP_STOREP_F	1997	8398	0
// OP_ADDRESS	8391	162	8399
// OP_LOAD_F	8391	162	8400
// OP_BITOR	8400	253	8401
// OP_BITOR	8401	254	8402
// OP_BITOR	8402	255	8403
// OP_BITOR	8403	256	8404
// OP_BITOR	8404	257	8405
// OP_BITOR	8405	258	8406
// OP_BITOR	8406	259	8407
// OP_BITOR	8407	260	8408
// OP_BITOR	8408	268	8409
// OP_BITOR	8409	273	8410
// OP_STOREP_F	8410	8399	0
// OP_ADDRESS	8391	154	8411
// OP_STOREP_F	260	8411	0
// OP_ADDRESS	8391	384	8412
// OP_ADD_F	31	214	8413
// OP_STOREP_F	8413	8412	0
// OP_ADDRESS	8391	380	8414
// OP_ADD_F	31	228	8415
// OP_STOREP_F	8415	8414	0
// OP_DONE	0	0	0
void (entity globaldef002908) func000388 = 
{
    globaldef002908.health = globaldef000721;
    globaldef002908.armorvalue = 200;
    globaldef002908.armortype = 0.8;
    globaldef002908.ammo_shells = 100;
    globaldef002908.ammo_nails = 200;
    globaldef002908.ammo_rockets = 100;
    globaldef002908.ammo_cells = 100;
    globaldef002908.items = (((((((((globaldef002908.items | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_ARMOR3) | IT_INVULNERABILITY;
    globaldef002908.weapon = IT_LIGHTNING;
    globaldef002908.invincible_time = time + TRUE;
    globaldef002908.invincible_finished = time + MOVETYPE_WALK;
};

