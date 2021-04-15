
// func002287
// function begins at statement 34000, parm_start=18428
// OP_NE_F	35	228	18430
// OP_NE_F	35	216	18431
// OP_AND	18430	18431	18432
// OP_IFNOT	18432	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18428	162	18433
// OP_BITAND	18433	18429	18434
// OP_IFNOT	18434	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef006496, float globaldef006497) func002287 = 
{
    
    if((deathmatch != MOVETYPE_WALK) && (deathmatch != FL_SWIM))
    {
        return FALSE;
    }
    
    
    if(globaldef006496.items & globaldef006497)
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002288
// function begins at statement 34011, parm_start=18436
// OP_LOAD_ENT	18437	662	18439
// OP_EQ_E	18439	18436	18440
// OP_IFNOT	18440	6	0
// OP_LOAD_F	18437	663	18441
// OP_SUB_F	31	18438	18442
// OP_GT	18441	18442	18443
// OP_IFNOT	18443	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef006499, entity globaldef006500, float globaldef006501) func002288 = 
{
    
    if(globaldef006500.field000339 == globaldef006499)
    {
        
        if(globaldef006500.field000340 > (time - globaldef006501))
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};


// goalweight_door
// function begins at statement 34021, parm_start=18444
// OP_STORE_V	18444	4	0
// OP_STORE_V	18445	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	25	0	0
// OP_LOAD_ENT	18445	201	18446
// OP_LOAD_S	18446	197	18447
// OP_IFNOT	18447	3	0
// OP_RETURN	213	0	0
// OP_GOTO	20	0	0
// OP_STORE_V	18444	4	0
// OP_STORE_V	18445	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18448
// OP_IFNOT	18448	3	0
// OP_RETURN	213	0	0
// OP_GOTO	13	0	0
// OP_LOAD_F	18445	438	18449
// OP_EQ_F	18449	282	18450
// OP_IFNOT	18450	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	18445	438	18451
// OP_EQ_F	18451	284	18452
// OP_IFNOT	18452	3	0
// OP_RETURN	2323	0	0
// OP_GOTO	3	0	0
// OP_SUB_F	2323	214	18453
// OP_RETURN	18453	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_door = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(e.owner.targetname)
        {
            return FALSE;
        }
        else
        {
            if(!Visible(bot, e))
            {
                return FALSE;
            }
            else
            {
                if(e.state == STATE_TOP)
                {
                    return FALSE;
                }
                else
                {
                    if(e.state == STATE_UP)
                    {
                        return 20;
                    }
                    else
                    {
                        return 20 - TRUE;
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// goalweight_secretdoor
// function begins at statement 34053, parm_start=18454
// OP_STORE_V	18454	4	0
// OP_STORE_V	18455	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	14	0	0
// OP_STORE_V	18454	4	0
// OP_STORE_V	18455	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18456
// OP_IFNOT	18456	3	0
// OP_RETURN	213	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	18455	163	18457
// OP_EQ_F	18457	251	18458
// OP_IFNOT	18458	3	0
// OP_RETURN	2323	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_secretdoor = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(!Visible(bot, e))
        {
            return FALSE;
        }
        else
        {
            if(e.takedamage == DAMAGE_YES)
            {
                return 20;
            }
            else
            {
                return FALSE;
            }
            
        }
        
    }
    
};


// goalweight_button
// function begins at statement 34074, parm_start=18459
// OP_STORE_V	18459	4	0
// OP_STORE_V	18460	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	18460	438	18461
// OP_EQ_F	18461	283	18462
// OP_IFNOT	18462	7	0
// OP_STORE_V	18459	4	0
// OP_STORE_V	18460	7	0
// OP_CALL2	1110	0	0
// OP_IFNOT	1	3	0
// OP_ADD_F	2323	214	18463
// OP_RETURN	18463	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_button = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        
        if(e.state == STATE_BOTTOM)
        {
            
            if(Visible(bot, e))
            {
                return 20 + TRUE;
            }
            
        }
        
    }
    
    return FALSE;
};


// goalweight_plat
// function begins at statement 34092, parm_start=18464
// OP_STORE_V	18464	4	0
// OP_STORE_V	18465	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	13	0	0
// OP_STORE_V	18464	4	0
// OP_STORE_V	18465	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18466
// OP_IFNOT	18466	3	0
// OP_RETURN	213	0	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	18465	622	18467
// OP_IFNOT	18467	3	0
// OP_RETURN	213	0	0
// OP_GOTO	2	0	0
// OP_RETURN	2323	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_plat = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(!Visible(bot, e))
        {
            return FALSE;
        }
        else
        {
            if(e.path0)
            {
                return FALSE;
            }
            else
            {
                return 20;
            }
            
        }
        
    }
    
};


// goalweight_train
// function begins at statement 34112, parm_start=18468
// OP_STORE_V	18468	4	0
// OP_STORE_V	18469	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	18469	101	18470
// OP_LOAD_F	18468	108	18471
// OP_LOAD_F	18468	137	18472
// OP_ADD_F	18471	18472	18473
// OP_ADD_F	18473	793	18474
// OP_GT	18470	18474	18475
// OP_IFNOT	18475	3	0
// OP_RETURN	213	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	18468	4	0
// OP_STORE_V	18469	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18476
// OP_IFNOT	18476	3	0
// OP_RETURN	213	0	0
// OP_GOTO	2	0	0
// OP_RETURN	2323	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_train = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(e.absmax_z > ((bot.origin_z + bot.mins_z) + globaldef000776))
        {
            return FALSE;
        }
        else
        {
            if(!Visible(bot, e))
            {
                return FALSE;
            }
            else
            {
                return 20;
            }
            
        }
        
    }
    
};


// goalweight_teleporter
// function begins at statement 34137, parm_start=18477
// OP_STORE_V	18477	4	0
// OP_STORE_V	18478	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	13	0	0
// OP_STORE_V	18477	4	0
// OP_STORE_V	18478	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18479
// OP_IFNOT	18479	3	0
// OP_RETURN	213	0	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	18478	622	18480
// OP_IFNOT	18480	3	0
// OP_RETURN	235	0	0
// OP_GOTO	2	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_teleporter = 
{
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(!Visible(bot, e))
        {
            return FALSE;
        }
        else
        {
            if(e.path0)
            {
                return MOVETYPE_BOUNCE;
            }
            else
            {
                return 35;
            }
            
        }
        
    }
    
};


// goalweight_triggerpush
// function begins at statement 34157, parm_start=18481
// OP_STORE_V	18481	4	0
// OP_STORE_V	18482	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	18482	94	18489
// OP_LOAD_V	18482	98	18492
// OP_ADD_V	18489	18492	18495
// OP_MUL_VF	18495	539	18498
// OP_STORE_V	18498	18486	0
// OP_LOAD_F	18482	97	18501
// OP_ADD_F	18501	214	18502
// OP_STORE_F	18502	18488	0
// OP_STORE_V	18486	18483	0
// OP_LOAD_F	18481	108	18503
// OP_STORE_F	18503	18485	0
// OP_LOAD_V	18481	105	18504
// OP_STORE_V	18504	4	0
// OP_STORE_V	18483	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	18507
// OP_IFNOT	18507	24	0
// OP_STORE_V	18483	4	0
// OP_STORE_V	18486	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	18508
// OP_IFNOT	18508	17	0
// OP_STORE_V	18486	4	0
// OP_CALL1	1111	0	0
// OP_STORE_F	1	18485	0
// OP_LOAD_F	28	97	18509
// OP_GT	18509	18485	18510
// OP_IFNOT	18510	3	0
// OP_LOAD_F	18481	97	18511
// OP_STORE_F	18511	18485	0
// OP_LOAD_F	18481	141	18512
// OP_LOAD_F	18481	137	18513
// OP_SUB_F	18512	18513	18514
// OP_ADD_F	18514	18485	18515
// OP_ADD_F	18515	793	18516
// OP_LT	18488	18516	18517
// OP_IFNOT	18517	2	0
// OP_RETURN	2323	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_triggerpush = 
{
    local vector vec1;
    local vector vec2;
    
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    
    vec2 = (e.absmin + e.absmax) * RA_PLAYERSTATTIME;
    vec2_z = e.absmin_z + TRUE;
    vec1 = vec2;
    vec1_z = bot.origin_z;
    traceline(bot.origin, vec1, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        traceline(vec1, vec2, TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            vec1_z = AbsFloorHeight(vec2);
            
            if(self.absmin_z > vec1_z)
            {
                vec1_z = bot.absmin_z;
            }
            
            
            if(vec2_z < (((bot.maxs_z - bot.mins_z) + vec1_z) + globaldef000776))
            {
                return 20;
            }
            
        }
        
    }
    
    return FALSE;
};


// goalweight_trigger
// function begins at statement 34207, parm_start=18518
// OP_LOAD_F	18519	163	18520
// OP_NE_F	18520	251	18521
// OP_IFNOT	18521	13	0
// OP_LOAD_F	18519	104	18522
// OP_NE_F	18522	238	18523
// OP_IFNOT	18523	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18519	101	18524
// OP_LOAD_F	18518	108	18525
// OP_LOAD_F	18518	137	18526
// OP_ADD_F	18525	18526	18527
// OP_ADD_F	18527	793	18528
// OP_GT	18524	18528	18529
// OP_IFNOT	18529	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	18518	4	0
// OP_STORE_V	18519	7	0
// OP_STORE_V	791	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	15	0	0
// OP_STORE_V	18518	4	0
// OP_STORE_V	18519	7	0
// OP_CALL2	1110	0	0
// OP_NOT_F	1	0	18530
// OP_IFNOT	18530	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_CALL0	457	0	0
// OP_LT	1	6277	18531
// OP_IFNOT	18531	3	0
// OP_RETURN	5878	0	0
// OP_GOTO	3	0	0
// OP_SUB_F	2323	216	18532
// OP_RETURN	18532	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_trigger = 
{
    
    if(e.takedamage != DAMAGE_YES)
    {
        
        if(e.solid != SOLID_TRIGGER)
        {
            return FALSE;
        }
        
        
        if(e.absmax_z > ((bot.origin_z + bot.mins_z) + globaldef000776))
        {
            return FALSE;
        }
        
    }
    
    if(func002288(bot, e, BOTSHIRTPANTS_12))
    {
        return FALSE;
    }
    else
    {
        if(!Visible(bot, e))
        {
            return FALSE;
        }
        else
        {
            if(random() < 0.25)
            {
                return 35;
            }
            else
            {
                return 20 - FL_SWIM;
            }
            
        }
        
    }
    
};


// goalweight_backpack
// function begins at statement 34244, parm_start=18533
// OP_LOAD_F	18533	162	18535
// OP_BITAND	18535	259	18536
// OP_NOT_F	18536	0	18537
// OP_LOAD_F	18534	162	18538
// OP_BITAND	18538	259	18539
// OP_AND	18537	18539	18540
// OP_IFNOT	18540	2	0
// OP_RETURN	9989	0	0
// OP_LOAD_F	18533	162	18541
// OP_BITAND	18541	260	18542
// OP_NOT_F	18542	0	18543
// OP_LOAD_F	18534	162	18544
// OP_BITAND	18544	260	18545
// OP_AND	18543	18545	18546
// OP_IFNOT	18546	2	0
// OP_RETURN	9987	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_backpack = 
{
    
    if((!(bot.items & IT_ROCKET_LAUNCHER)) && (e.items & IT_ROCKET_LAUNCHER))
    {
        return 99;
    }
    
    
    if((!(bot.items & IT_LIGHTNING)) && (e.items & IT_LIGHTNING))
    {
        return 98;
    }
    
    return 35;
};


// goalweight_megahealth
// function begins at statement 34262, parm_start=18547
// OP_RETURN	1997	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_megahealth = 
{
    return 100;
};


// goalweight_health15
// function begins at statement 34264, parm_start=18549
// OP_LOAD_F	18549	152	18551
// OP_LT	18551	2019	18552
// OP_IFNOT	18552	3	0
// OP_RETURN	9974	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	18549	152	18553
// OP_LT	18553	1997	18554
// OP_IFNOT	18554	3	0
// OP_RETURN	9671	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_health15 = 
{
    if(bot.health < 60)
    {
        return 91;
    }
    else
    {
        if(bot.health < 100)
        {
            return 34;
        }
        else
        {
            return FALSE;
        }
        
    }
    
};


// goalweight_health25
// function begins at statement 34276, parm_start=18555
// OP_LOAD_F	18555	152	18557
// OP_LT	18557	2019	18558
// OP_IFNOT	18558	3	0
// OP_RETURN	9976	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	18555	152	18559
// OP_LT	18559	1997	18560
// OP_IFNOT	18560	3	0
// OP_RETURN	5878	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_health25 = 
{
    if(bot.health < 60)
    {
        return 92;
    }
    else
    {
        if(bot.health < 100)
        {
            return 35;
        }
        else
        {
            return FALSE;
        }
        
    }
    
};


// goalweight_nails
// function begins at statement 34288, parm_start=18561
// OP_LOAD_F	18561	159	18563
// OP_GE	18563	2044	18564
// OP_IFNOT	18564	3	0
// OP_RETURN	213	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	18561	159	18565
// OP_GT	18565	3584	18566
// OP_IFNOT	18566	3	0
// OP_RETURN	6133	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9671	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_nails = 
{
    if(bot.ammo_nails >= 200)
    {
        return FALSE;
    }
    else
    {
        if(bot.ammo_nails > 120)
        {
            return 18;
        }
        else
        {
            return 34;
        }
        
    }
    
};


// goalweight_shells
// function begins at statement 34300, parm_start=18567
// OP_LOAD_F	18567	158	18569
// OP_GE	18569	1997	18570
// OP_IFNOT	18570	3	0
// OP_RETURN	213	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	18567	158	18571
// OP_GT	18571	1470	18572
// OP_IFNOT	18572	3	0
// OP_RETURN	6133	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9671	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_shells = 
{
    if(bot.ammo_shells >= 100)
    {
        return FALSE;
    }
    else
    {
        if(bot.ammo_shells > 50)
        {
            return 18;
        }
        else
        {
            return 34;
        }
        
    }
    
};


// goalweight_cells
// function begins at statement 34312, parm_start=18573
// OP_LOAD_F	18573	161	18575
// OP_GE	18575	1997	18576
// OP_IFNOT	18576	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	18573	162	18577
// OP_BITAND	18577	260	18578
// OP_LOAD_F	18573	161	18579
// OP_LT	18579	309	18580
// OP_AND	18578	18580	18581
// OP_IFNOT	18581	3	0
// OP_RETURN	2598	0	0
// OP_GOTO	2	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_cells = 
{
    if(bot.ammo_cells >= 100)
    {
        return FALSE;
    }
    else
    {
        if((bot.items & IT_LIGHTNING) && (bot.ammo_cells < SVC_INTERMISSION))
        {
            return 45;
        }
        else
        {
            return 35;
        }
        
    }
    
};


// goalweight_rockets
// function begins at statement 34327, parm_start=18582
// OP_LOAD_F	18582	160	18584
// OP_GE	18584	1997	18585
// OP_IFNOT	18585	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	18582	162	18586
// OP_BITAND	18586	259	18587
// OP_LOAD_F	18582	160	18588
// OP_LT	18588	2323	18589
// OP_AND	18587	18589	18590
// OP_IFNOT	18590	3	0
// OP_RETURN	1470	0	0
// OP_GOTO	2	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_rockets = 
{
    if(bot.ammo_rockets >= 100)
    {
        return FALSE;
    }
    else
    {
        if((bot.items & IT_ROCKET_LAUNCHER) && (bot.ammo_rockets < 20))
        {
            return 50;
        }
        else
        {
            return 35;
        }
        
    }
    
};


// goalweight_rocketlauncher
// function begins at statement 34342, parm_start=18591
// OP_STORE_V	18591	4	0
// OP_STORE_V	259	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	18591	162	18593
// OP_BITAND	18593	259	18594
// OP_NOT_F	18594	0	18595
// OP_IFNOT	18595	3	0
// OP_RETURN	1997	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9657	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_rocketlauncher = 
{
    if(func002287(bot, IT_ROCKET_LAUNCHER))
    {
        return FALSE;
    }
    else
    {
        if(!(bot.items & IT_ROCKET_LAUNCHER))
        {
            return 100;
        }
        else
        {
            return 37;
        }
        
    }
    
};


// goalweight_lightning
// function begins at statement 34356, parm_start=18596
// OP_STORE_V	18596	4	0
// OP_STORE_V	260	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	18596	162	18598
// OP_BITAND	18598	260	18599
// OP_NOT_F	18599	0	18600
// OP_IFNOT	18600	3	0
// OP_RETURN	9981	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9657	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_lightning = 
{
    if(func002287(bot, IT_LIGHTNING))
    {
        return FALSE;
    }
    else
    {
        if(!(bot.items & IT_LIGHTNING))
        {
            return 95;
        }
        else
        {
            return 37;
        }
        
    }
    
};


// goalweight_grenadelauncher
// function begins at statement 34370, parm_start=18601
// OP_STORE_V	18601	4	0
// OP_STORE_V	258	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	18601	162	18603
// OP_BITAND	18603	258	18604
// OP_NOT_F	18604	0	18605
// OP_IFNOT	18605	3	0
// OP_RETURN	2658	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9655	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_grenadelauncher = 
{
    if(func002287(bot, IT_GRENADE_LAUNCHER))
    {
        return FALSE;
    }
    else
    {
        if(!(bot.items & IT_GRENADE_LAUNCHER))
        {
            return 90;
        }
        else
        {
            return 36;
        }
        
    }
    
};


// goalweight_nailgun
// function begins at statement 34384, parm_start=18606
// OP_STORE_V	18606	4	0
// OP_STORE_V	256	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	2	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_nailgun = 
{
    if(func002287(bot, IT_NAILGUN))
    {
        return FALSE;
    }
    else
    {
        return 35;
    }
    
};


// goalweight_supernailgun
// function begins at statement 34392, parm_start=18608
// OP_STORE_V	18608	4	0
// OP_STORE_V	257	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	18608	162	18610
// OP_BITAND	18610	257	18611
// OP_NOT_F	18611	0	18612
// OP_IFNOT	18612	3	0
// OP_RETURN	9963	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9655	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_supernailgun = 
{
    if(func002287(bot, IT_SUPER_NAILGUN))
    {
        return FALSE;
    }
    else
    {
        if(!(bot.items & IT_SUPER_NAILGUN))
        {
            return 85;
        }
        else
        {
            return 36;
        }
        
    }
    
};


// goalweight_supershotgun
// function begins at statement 34406, parm_start=18613
// OP_STORE_V	18613	4	0
// OP_STORE_V	255	7	0
// OP_CALL2	18427	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	213	0	0
// OP_GOTO	2	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_supershotgun = 
{
    if(func002287(bot, IT_SUPER_SHOTGUN))
    {
        return FALSE;
    }
    else
    {
        return 35;
    }
    
};


// goalweight_greenarmor
// function begins at statement 34414, parm_start=18615
// OP_LOAD_F	18616	188	18618
// OP_MUL_F	18618	3409	18619
// OP_LOAD_F	18615	188	18620
// OP_LOAD_F	18615	187	18621
// OP_MUL_F	18620	18621	18622
// OP_SUB_F	18619	18622	18623
// OP_MUL_F	216	18623	18624
// OP_STORE_F	18624	18617	0
// OP_LT	18617	213	18625
// OP_IFNOT	18625	2	0
// OP_STORE_F	213	18617	0
// OP_RETURN	18617	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_greenarmor = 
{
    local float compare;
    compare = FL_SWIM * ((e.armorvalue * 0.3) - (bot.armorvalue * bot.armortype));
    
    if(compare < FALSE)
    {
        compare = FALSE;
    }
    
    return compare;
};


// goalweight_yellowarmor
// function begins at statement 34427, parm_start=18626
// OP_LOAD_F	18627	188	18629
// OP_MUL_F	18629	4474	18630
// OP_LOAD_F	18626	188	18631
// OP_LOAD_F	18626	187	18632
// OP_MUL_F	18631	18632	18633
// OP_SUB_F	18630	18633	18634
// OP_MUL_F	216	18634	18635
// OP_STORE_F	18635	18628	0
// OP_LT	18628	213	18636
// OP_IFNOT	18636	2	0
// OP_STORE_F	213	18628	0
// OP_RETURN	18628	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_yellowarmor = 
{
    local float compare;
    compare = FL_SWIM * ((e.armorvalue * 0.6) - (bot.armorvalue * bot.armortype));
    
    if(compare < FALSE)
    {
        compare = FALSE;
    }
    
    return compare;
};


// goalweight_redarmor
// function begins at statement 34440, parm_start=18637
// OP_LOAD_F	18638	188	18640
// OP_MUL_F	18640	4478	18641
// OP_LOAD_F	18637	188	18642
// OP_LOAD_F	18637	187	18643
// OP_MUL_F	18642	18643	18644
// OP_SUB_F	18641	18644	18645
// OP_MUL_F	216	18645	18646
// OP_STORE_F	18646	18639	0
// OP_LT	18639	213	18647
// OP_IFNOT	18647	2	0
// OP_STORE_F	213	18639	0
// OP_RETURN	18639	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_redarmor = 
{
    local float compare;
    compare = FL_SWIM * ((e.armorvalue * 0.8) - (bot.armorvalue * bot.armortype));
    
    if(compare < FALSE)
    {
        compare = FALSE;
    }
    
    return compare;
};


// goalweight_envirosuit
// function begins at statement 34453, parm_start=18648
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_envirosuit = 
{
    return 35;
};


// goalweight_invisibility
// function begins at statement 34455, parm_start=18650
// OP_ADD_F	1997	228	18652
// OP_RETURN	18652	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_invisibility = 
{
    return 100 + MOVETYPE_WALK;
};


// goalweight_quad
// function begins at statement 34458, parm_start=18653
// OP_ADD_F	1997	230	18655
// OP_RETURN	18655	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_quad = 
{
    return 100 + MOVETYPE_FLY;
};


// goalweight_invulnerability
// function begins at statement 34461, parm_start=18656
// OP_ADD_F	1997	231	18658
// OP_RETURN	18658	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) goalweight_invulnerability = 
{
    return 100 + MOVETYPE_TOSS;
};


// walkaboutweight_megahealth
// function begins at statement 34464, parm_start=18659
// OP_RETURN	9951	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_megahealth = 
{
    return 77;
};


// walkaboutweight_supershotgun
// function begins at statement 34466, parm_start=18661
// OP_RETURN	9919	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_supershotgun = 
{
    return 55;
};


// walkaboutweight_nailgun
// function begins at statement 34468, parm_start=18663
// OP_RETURN	1470	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_nailgun = 
{
    return 50;
};


// walkaboutweight_supernailgun
// function begins at statement 34470, parm_start=18665
// OP_RETURN	1536	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_supernailgun = 
{
    return 70;
};


// walkaboutweight_grenadelauncher
// function begins at statement 34472, parm_start=18667
// OP_RETURN	2805	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_grenadelauncher = 
{
    return 80;
};


// walkaboutweight_rocketlauncher
// function begins at statement 34474, parm_start=18669
// OP_RETURN	1997	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_rocketlauncher = 
{
    return 100;
};


// walkaboutweight_lightning
// function begins at statement 34476, parm_start=18671
// OP_RETURN	9173	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_lightning = 
{
    return 75;
};


// walkaboutweight_yellowarmor
// function begins at statement 34478, parm_start=18673
// OP_RETURN	2658	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_yellowarmor = 
{
    return 90;
};


// walkaboutweight_redarmor
// function begins at statement 34480, parm_start=18675
// OP_RETURN	9987	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_redarmor = 
{
    return 98;
};


// walkaboutweight_invisibility
// function begins at statement 34482, parm_start=18677
// OP_LOAD_F	18678	150	18679
// OP_ADD_F	31	235	18680
// OP_LT	18679	18680	18681
// OP_IFNOT	18681	2	0
// OP_RETURN	5487	0	0
// OP_RETURN	235	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_invisibility = 
{
    
    if(e.nextthink < (time + MOVETYPE_BOUNCE))
    {
        return 73;
    }
    
    return MOVETYPE_BOUNCE;
};


// walkaboutweight_quad
// function begins at statement 34489, parm_start=18682
// OP_LOAD_F	18683	150	18684
// OP_ADD_F	31	235	18685
// OP_LT	18684	18685	18686
// OP_IFNOT	18686	2	0
// OP_RETURN	9961	0	0
// OP_RETURN	765	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_quad = 
{
    
    if(e.nextthink < (time + MOVETYPE_BOUNCE))
    {
        return 83;
    }
    
    return GLOBALDEF748_15;
};


// walkaboutweight_invulnerability
// function begins at statement 34496, parm_start=18687
// OP_LOAD_F	18688	150	18689
// OP_ADD_F	31	235	18690
// OP_LT	18689	18690	18691
// OP_IFNOT	18691	2	0
// OP_RETURN	9978	0	0
// OP_RETURN	2323	0	0
// OP_DONE	0	0	0
float (entity bot, entity e) walkaboutweight_invulnerability = 
{
    
    if(e.nextthink < (time + MOVETYPE_BOUNCE))
    {
        return 93;
    }
    
    return 20;
};


// fuzzy_lightning_weight
// function begins at statement 34503, parm_start=18693
// OP_LOAD_F	18693	162	18695
// OP_BITAND	18695	260	18696
// OP_NOT_F	18696	0	18697
// OP_IFNOT	18697	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18693	161	18698
// OP_LT	18698	214	18699
// OP_IFNOT	18699	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18693	162	18700
// OP_BITAND	18700	273	18701
// OP_NOT_F	18701	0	18702
// OP_IFNOT	18702	5	0
// OP_LOAD_F	18693	189	18703
// OP_GE	18703	216	18704
// OP_IFNOT	18704	2	0
// OP_RETURN	235	0	0
// OP_LOAD_ENT	18693	181	18705
// OP_LOAD_V	18705	105	18706
// OP_LOAD_V	18693	105	18709
// OP_SUB_V	18706	18709	18712
// OP_STORE_V	18712	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	18694	0
// OP_LT	18694	740	18715
// OP_IFNOT	18715	26	0
// OP_LOAD_ENT	18693	181	18716
// OP_LOAD_F	18716	108	18717
// OP_LOAD_F	18693	108	18718
// OP_ADD_F	18718	2805	18719
// OP_GT	18717	18719	18720
// OP_IFNOT	18720	19	0
// OP_BITAND	821	767	18721
// OP_IFNOT	18721	5	0
// OP_LOAD_F	18693	588	18722
// OP_GT	18722	216	18723
// OP_IFNOT	18723	2	0
// OP_RETURN	8204	0	0
// OP_LOAD_F	18693	154	18724
// OP_NE_F	18724	260	18725
// OP_IFNOT	18725	6	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	216	18726
// OP_ADD_F	2805	18726	18727
// OP_RETURN	18727	0	0
// OP_GOTO	5	0	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	216	18728
// OP_ADD_F	8204	18728	18729
// OP_RETURN	18729	0	0
// OP_RETURN	1536	0	0
// OP_RETURN	746	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_lightning_weight = 
{
    local float dist;
    
    if(!(bot.items & IT_LIGHTNING))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_cells < TRUE)
    {
        return FALSE;
    }
    
    
    if(!(bot.items & IT_INVULNERABILITY))
    {
        
        if(bot.waterlevel >= FL_SWIM)
        {
            return MOVETYPE_BOUNCE;
        }
        
    }
    
    dist = vlen(bot.enemy.origin - bot.origin);
    
    if(dist < GLOBALDEF723_600)
    {
        
        if(bot.enemy.origin_z > (bot.origin_z + 80))
        {
            
            if(obot_game_option_bitflags & OBOT_ROCKETARENA)
            {
                
                if(bot.field000265 > FL_SWIM)
                {
                    return 81;
                }
                
            }
            
            if(bot.weapon != IT_LIGHTNING)
            {
                return 80 + (crandom() * FL_SWIM);
            }
            else
            {
                return 81 + (crandom() * FL_SWIM);
            }
            
        }
        
        return 70;
    }
    
    return GLOBALDEF729_40;
};


// fuzzy_rocketlauncher_weight
// function begins at statement 34556, parm_start=18731
// OP_LOAD_F	18731	162	18734
// OP_BITAND	18734	259	18735
// OP_NOT_F	18735	0	18736
// OP_IFNOT	18736	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18731	160	18737
// OP_LT	18737	214	18738
// OP_IFNOT	18738	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18731	152	18739
// OP_MUL_F	18739	539	18740
// OP_SUB_F	1296	18740	18741
// OP_LOAD_F	18731	188	18742
// OP_LOAD_F	18731	187	18743
// OP_MUL_F	18742	18743	18744
// OP_SUB_F	18741	18744	18745
// OP_STORE_F	18745	18732	0
// OP_LOAD_F	18731	162	18746
// OP_BITAND	18746	275	18747
// OP_IFNOT	18747	3	0
// OP_MUL_F	18732	216	18748
// OP_STORE_F	18748	18732	0
// OP_LOAD_ENT	18731	181	18749
// OP_LOAD_V	18749	105	18750
// OP_LOAD_V	18731	105	18753
// OP_SUB_V	18750	18753	18756
// OP_STORE_V	18756	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	18733	0
// OP_LT	18733	18732	18759
// OP_IFNOT	18759	2	0
// OP_RETURN	309	0	0
// OP_RETURN	2805	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_rocketlauncher_weight = 
{
    local float condition;
    local float dist;
    
    if(!(bot.items & IT_ROCKET_LAUNCHER))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_rockets < TRUE)
    {
        return FALSE;
    }
    
    condition = (180 - (bot.health * RA_PLAYERSTATTIME)) - (bot.armorvalue * bot.armortype);
    
    if(bot.items & IT_QUAD)
    {
        condition = condition * FL_SWIM;
    }
    
    dist = vlen(bot.enemy.origin - bot.origin);
    
    if(dist < condition)
    {
        return SVC_INTERMISSION;
    }
    
    return 80;
};


// fuzzy_grenadelauncher_weight
// function begins at statement 34590, parm_start=18761
// OP_LOAD_F	18761	162	18763
// OP_BITAND	18763	258	18764
// OP_NOT_F	18764	0	18765
// OP_IFNOT	18765	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18761	160	18766
// OP_LT	18766	214	18767
// OP_IFNOT	18767	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18761	181	18768
// OP_LOAD_F	18768	108	18769
// OP_LOAD_F	18761	108	18770
// OP_ADD_F	18770	14518	18771
// OP_GT	18769	18771	18772
// OP_IFNOT	18772	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18761	181	18773
// OP_LOAD_V	18773	105	18774
// OP_LOAD_V	18761	105	18777
// OP_SUB_V	18774	18777	18780
// OP_STORE_V	18780	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	18762	0
// OP_GT	18762	740	18783
// OP_IFNOT	18783	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18761	181	18784
// OP_LOAD_F	18784	108	18785
// OP_LOAD_F	18761	108	18786
// OP_SUB_F	18786	2044	18787
// OP_LT	18785	18787	18788
// OP_IFNOT	18788	5	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	236	18789
// OP_ADD_F	1536	18789	18790
// OP_RETURN	18790	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_grenadelauncher_weight = 
{
    local float dist;
    
    if(!(bot.items & IT_GRENADE_LAUNCHER))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_rockets < TRUE)
    {
        return FALSE;
    }
    
    
    if(bot.enemy.origin_z > (bot.origin_z + 175))
    {
        return FALSE;
    }
    
    dist = vlen(bot.enemy.origin - bot.origin);
    
    if(dist > GLOBALDEF723_600)
    {
        return FALSE;
    }
    
    
    if(bot.enemy.origin_z < (bot.origin_z - 200))
    {
        return 70 + (crandom() * MOVETYPE_BOUNCEMISSILE);
    }
    
    return 35;
};


// fuzzy_supernailgun_weight
// function begins at statement 34628, parm_start=18792
// OP_LOAD_F	18792	162	18793
// OP_BITAND	18793	257	18794
// OP_NOT_F	18794	0	18795
// OP_IFNOT	18795	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18792	159	18796
// OP_LT	18796	216	18797
// OP_IFNOT	18797	2	0
// OP_RETURN	213	0	0
// OP_RETURN	9934	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_supernailgun_weight = 
{
    
    if(!(bot.items & IT_SUPER_NAILGUN))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_nails < FL_SWIM)
    {
        return FALSE;
    }
    
    return 65;
};


// fuzzy_nailgun_weight
// function begins at statement 34639, parm_start=18799
// OP_LOAD_F	18799	162	18800
// OP_BITAND	18800	256	18801
// OP_NOT_F	18801	0	18802
// OP_IFNOT	18802	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18799	159	18803
// OP_LT	18803	214	18804
// OP_IFNOT	18804	2	0
// OP_RETURN	213	0	0
// OP_RETURN	1470	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_nailgun_weight = 
{
    
    if(!(bot.items & IT_NAILGUN))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_nails < TRUE)
    {
        return FALSE;
    }
    
    return 50;
};


// fuzzy_supershotgun_weight
// function begins at statement 34650, parm_start=18806
// OP_LOAD_F	18806	162	18808
// OP_BITAND	18808	255	18809
// OP_NOT_F	18809	0	18810
// OP_IFNOT	18810	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18806	158	18811
// OP_LT	18811	216	18812
// OP_IFNOT	18812	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18806	181	18813
// OP_LOAD_V	18813	105	18814
// OP_LOAD_V	18806	105	18817
// OP_SUB_V	18814	18817	18820
// OP_STORE_V	18820	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	18807	0
// OP_GT	18807	740	18823
// OP_IFNOT	18823	3	0
// OP_RETURN	305	0	0
// OP_GOTO	2	0	0
// OP_RETURN	9919	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_supershotgun_weight = 
{
    local float dist;
    
    if(!(bot.items & IT_SUPER_SHOTGUN))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_shells < FL_SWIM)
    {
        return FALSE;
    }
    
    dist = vlen(bot.enemy.origin - bot.origin);
    if(dist > GLOBALDEF723_600)
    {
        return SVC_SIGNONNUM;
    }
    else
    {
        return 55;
    }
    
};


// fuzzy_shotgun_weight
// function begins at statement 34672, parm_start=18825
// OP_LOAD_F	18825	162	18826
// OP_BITAND	18826	254	18827
// OP_NOT_F	18827	0	18828
// OP_IFNOT	18828	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	18825	158	18829
// OP_LT	18829	214	18830
// OP_IFNOT	18830	2	0
// OP_RETURN	213	0	0
// OP_RETURN	5878	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_shotgun_weight = 
{
    
    if(!(bot.items & IT_SHOTGUN))
    {
        return FALSE;
    }
    
    
    if(bot.ammo_shells < TRUE)
    {
        return FALSE;
    }
    
    return 35;
};


// fuzzy_axe_weight
// function begins at statement 34683, parm_start=18832
// OP_LOAD_F	18832	162	18834
// OP_BITAND	18834	253	18835
// OP_NOT_F	18835	0	18836
// OP_IFNOT	18836	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18832	181	18837
// OP_LOAD_V	18837	105	18838
// OP_LOAD_V	18832	105	18841
// OP_SUB_V	18838	18841	18844
// OP_STORE_V	18844	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	18833	0
// OP_LT	18833	1997	18847
// OP_IFNOT	18847	3	0
// OP_RETURN	2323	0	0
// OP_GOTO	2	0	0
// OP_RETURN	230	0	0
// OP_DONE	0	0	0
float (entity bot) fuzzy_axe_weight = 
{
    local float dist;
    
    if(!(bot.items & IT_AXE))
    {
        return FALSE;
    }
    
    dist = vlen(bot.enemy.origin - bot.origin);
    if(dist < 100)
    {
        return 20;
    }
    else
    {
        return MOVETYPE_FLY;
    }
    
};


// BotSetBestRangeWeapon
// function begins at statement 34701, parm_start=18848
// OP_STORE_F	213	18849	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18692	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18852
// OP_IFNOT	18852	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	260	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18730	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18853
// OP_IFNOT	18853	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	259	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18760	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18854
// OP_IFNOT	18854	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	258	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18791	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18855
// OP_IFNOT	18855	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	257	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18798	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18856
// OP_IFNOT	18856	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	256	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18805	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18857
// OP_IFNOT	18857	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	255	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18824	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18858
// OP_IFNOT	18858	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	254	18851	0
// OP_STORE_V	18848	4	0
// OP_CALL1	18831	0	0
// OP_STORE_F	1	18850	0
// OP_GT	18850	18849	18859
// OP_IFNOT	18859	3	0
// OP_STORE_F	18850	18849	0
// OP_STORE_F	253	18851	0
// OP_ADDRESS	18848	154	18860
// OP_STOREP_F	18851	18860	0
// OP_DONE	0	0	0
void (entity bot) BotSetBestRangeWeapon = 
{
    local float best;
    local float weight;
    local float weap;
    best = FALSE;
    weight = fuzzy_lightning_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_LIGHTNING;
    }
    
    weight = fuzzy_rocketlauncher_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_ROCKET_LAUNCHER;
    }
    
    weight = fuzzy_grenadelauncher_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_GRENADE_LAUNCHER;
    }
    
    weight = fuzzy_supernailgun_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_SUPER_NAILGUN;
    }
    
    weight = fuzzy_nailgun_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_NAILGUN;
    }
    
    weight = fuzzy_supershotgun_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_SUPER_SHOTGUN;
    }
    
    weight = fuzzy_shotgun_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_SHOTGUN;
    }
    
    weight = fuzzy_axe_weight(bot);
    
    if(weight > best)
    {
        best = weight;
        weap = IT_AXE;
    }
    
    bot.weapon = weap;
};


// BestBotWeapon
// function begins at statement 34761, parm_start=18861
// OP_LOAD_F	18861	160	18862
// OP_GE	18862	214	18863
// OP_LOAD_F	18861	162	18864
// OP_BITAND	18864	259	18865
// OP_AND	18863	18865	18866
// OP_IFNOT	18866	2	0
// OP_RETURN	259	0	0
// OP_LOAD_F	18861	161	18867
// OP_GE	18867	214	18868
// OP_LOAD_F	18861	162	18869
// OP_BITAND	18869	260	18870
// OP_AND	18868	18870	18871
// OP_IFNOT	18871	9	0
// OP_LOAD_F	18861	189	18872
// OP_LT	18872	216	18873
// OP_IFNOT	18873	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	18861	162	18874
// OP_BITAND	18874	273	18875
// OP_IFNOT	18875	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	18861	159	18876
// OP_GE	18876	216	18877
// OP_LOAD_F	18861	162	18878
// OP_BITAND	18878	257	18879
// OP_AND	18877	18879	18880
// OP_IFNOT	18880	2	0
// OP_RETURN	257	0	0
// OP_LOAD_F	18861	160	18881
// OP_GE	18881	214	18882
// OP_LOAD_F	18861	162	18883
// OP_BITAND	18883	258	18884
// OP_AND	18882	18884	18885
// OP_IFNOT	18885	2	0
// OP_RETURN	258	0	0
// OP_LOAD_F	18861	158	18886
// OP_GE	18886	216	18887
// OP_LOAD_F	18861	162	18888
// OP_BITAND	18888	255	18889
// OP_AND	18887	18889	18890
// OP_IFNOT	18890	2	0
// OP_RETURN	255	0	0
// OP_LOAD_F	18861	159	18891
// OP_GE	18891	214	18892
// OP_LOAD_F	18861	162	18893
// OP_BITAND	18893	256	18894
// OP_AND	18892	18894	18895
// OP_IFNOT	18895	2	0
// OP_RETURN	256	0	0
// OP_LOAD_F	18861	158	18896
// OP_GE	18896	214	18897
// OP_LOAD_F	18861	162	18898
// OP_BITAND	18898	254	18899
// OP_AND	18897	18899	18900
// OP_IFNOT	18900	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float (entity bot) BestBotWeapon = 
{
    
    if((bot.ammo_rockets >= TRUE) && (bot.items & IT_ROCKET_LAUNCHER))
    {
        return IT_ROCKET_LAUNCHER;
    }
    
    
    if((bot.ammo_cells >= TRUE) && (bot.items & IT_LIGHTNING))
    {
        
        if(bot.waterlevel < FL_SWIM)
        {
            return IT_LIGHTNING;
        }
        
        
        if(bot.items & IT_INVULNERABILITY)
        {
            return IT_LIGHTNING;
        }
        
    }
    
    
    if((bot.ammo_nails >= FL_SWIM) && (bot.items & IT_SUPER_NAILGUN))
    {
        return IT_SUPER_NAILGUN;
    }
    
    
    if((bot.ammo_rockets >= TRUE) && (bot.items & IT_GRENADE_LAUNCHER))
    {
        return IT_GRENADE_LAUNCHER;
    }
    
    
    if((bot.ammo_shells >= FL_SWIM) && (bot.items & IT_SUPER_SHOTGUN))
    {
        return IT_SUPER_SHOTGUN;
    }
    
    
    if((bot.ammo_nails >= TRUE) && (bot.items & IT_NAILGUN))
    {
        return IT_NAILGUN;
    }
    
    
    if((bot.ammo_shells >= TRUE) && (bot.items & IT_SHOTGUN))
    {
        return IT_SHOTGUN;
    }
    
    return IT_AXE;
};


// BotWantsToRetreat
// function begins at statement 34819, parm_start=18901
// OP_LOAD_F	18901	162	18903
// OP_BITAND	18903	273	18904
// OP_IFNOT	18904	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18901	181	18905
// OP_LOAD_F	18905	162	18906
// OP_BITAND	18906	273	18907
// OP_IFNOT	18907	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	18901	181	18908
// OP_LOAD_F	18908	162	18909
// OP_BITAND	18909	275	18910
// OP_IFNOT	18910	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	18901	152	18911
// OP_LT	18911	1536	18912
// OP_IFNOT	18912	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	18901	162	18913
// OP_BITAND	18913	275	18914
// OP_IFNOT	18914	9	0
// OP_LOAD_F	18901	152	18915
// OP_LOAD_F	18901	188	18916
// OP_LOAD_F	18901	187	18917
// OP_MUL_F	18916	18917	18918
// OP_ADD_F	18915	18918	18919
// OP_GT	18919	1536	18920
// OP_IFNOT	18920	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	18901	181	18921
// OP_STORE_V	18921	4	0
// OP_CALL1	1041	0	0
// OP_STORE_F	1	18902	0
// OP_LOAD_F	18901	154	18922
// OP_ADD_F	260	259	18923
// OP_BITAND	18922	18923	18924
// OP_NOT_F	18924	0	18925
// OP_IFNOT	18925	5	0
// OP_ADD_F	260	259	18926
// OP_BITAND	18902	18926	18927
// OP_IFNOT	18927	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	18901	154	18928
// OP_ADD_F	260	259	18929
// OP_ADD_F	18929	258	18930
// OP_ADD_F	18930	257	18931
// OP_BITAND	18928	18931	18932
// OP_NOT_F	18932	0	18933
// OP_IFNOT	18933	7	0
// OP_ADD_F	260	259	18934
// OP_ADD_F	18934	258	18935
// OP_ADD_F	18935	257	18936
// OP_BITAND	18902	18936	18937
// OP_IFNOT	18937	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	18901	154	18938
// OP_BITAND	18938	259	18939
// OP_IFNOT	18939	2	0
// OP_RETURN	213	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot) BotWantsToRetreat = 
{
    local float enemybestweapon;
    
    if(bot.items & IT_INVULNERABILITY)
    {
        return FALSE;
    }
    
    
    if(bot.enemy.items & IT_INVULNERABILITY)
    {
        return TRUE;
    }
    
    
    if(bot.enemy.items & IT_QUAD)
    {
        return TRUE;
    }
    
    
    if(bot.health < 70)
    {
        return TRUE;
    }
    
    
    if(bot.items & IT_QUAD)
    {
        
        if((bot.health + (bot.armorvalue * bot.armortype)) > 70)
        {
            return FALSE;
        }
        
    }
    
    enemybestweapon = BestBotWeapon(bot.enemy);
    
    if(!(bot.weapon & (IT_LIGHTNING + IT_ROCKET_LAUNCHER)))
    {
        
        if(enemybestweapon & (IT_LIGHTNING + IT_ROCKET_LAUNCHER))
        {
            return TRUE;
        }
        
    }
    
    
    if(!(bot.weapon & (((IT_LIGHTNING + IT_ROCKET_LAUNCHER) + IT_GRENADE_LAUNCHER) + IT_SUPER_NAILGUN)))
    {
        
        if(enemybestweapon & (((IT_LIGHTNING + IT_ROCKET_LAUNCHER) + IT_GRENADE_LAUNCHER) + IT_SUPER_NAILGUN))
        {
            return TRUE;
        }
        
    }
    
    
    if(bot.weapon & IT_ROCKET_LAUNCHER)
    {
        return FALSE;
    }
    
    return FALSE;
};


// BotWantsToFight
// function begins at statement 34880, parm_start=18940
// OP_STORE_V	18940	4	0
// OP_CALL1	1042	0	0
// OP_NOT_F	1	0	18941
// OP_RETURN	18941	0	0
// OP_DONE	0	0	0
float (entity bot) BotWantsToFight = 
{
    return !BotWantsToRetreat(bot);
};


// BotWantsToChase
// function begins at statement 34885, parm_start=18942
// OP_LOAD_ENT	18942	181	18943
// OP_LOAD_F	18943	162	18944
// OP_BITAND	18944	272	18945
// OP_IFNOT	18945	5	0
// OP_LOAD_F	18942	588	18946
// OP_LT	18946	228	18947
// OP_IFNOT	18947	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot) BotWantsToChase = 
{
    
    if(bot.enemy.items & IT_INVISIBILITY)
    {
        
        if(bot.field000265 < MOVETYPE_WALK)
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};

