float globaldef003511;
// func000598
// function begins at statement 16750, parm_start=11454
// OP_LOAD_S	29	129	11454
// OP_EQ_S	11454	5946	11455
// OP_IFNOT	11455	8	0
// OP_ADDRESS	29	113	11456
// OP_LOAD_F	28	369	11459
// OP_LOAD_V	28	202	11460
// OP_MUL_FV	11459	11460	11463
// OP_MUL_VF	11463	235	11466
// OP_STOREP_V	11466	11456	0
// OP_GOTO	49	0	0
// OP_LOAD_F	29	152	11469
// OP_GT	11469	213	11470
// OP_IFNOT	11470	46	0
// OP_ADDRESS	29	113	11471
// OP_LOAD_F	28	369	11474
// OP_LOAD_V	28	202	11475
// OP_MUL_FV	11474	11475	11478
// OP_MUL_VF	11478	235	11481
// OP_STOREP_V	11481	11471	0
// OP_LOAD_S	29	129	11484
// OP_EQ_S	11484	1236	11485
// OP_LOAD_S	29	129	11486
// OP_EQ_S	11486	1241	11487
// OP_OR	11485	11487	11488
// OP_IFNOT	11488	13	0
// OP_LOAD_F	29	391	11489
// OP_LT	11489	31	11490
// OP_IFNOT	11490	10	0
// OP_ADDRESS	29	391	11491
// OP_ADD_F	31	1825	11492
// OP_STOREP_F	11492	11491	0
// OP_STORE_V	29	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	11493	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	11494
// OP_EQ_S	11494	1241	11495
// OP_IFNOT	11495	19	0
// OP_LOAD_F	28	203	11496
// OP_LT	11496	3036	11497
// OP_LOAD_F	28	204	11498
// OP_LT	11498	3036	11499
// OP_AND	11497	11499	11500
// OP_IFNOT	11500	13	0
// OP_ADDRESS	29	114	11501
// OP_LOAD_F	29	114	11502
// OP_CALL0	5370	0	0
// OP_MUL_F	746	1	11503
// OP_ADD_F	11502	11503	11504
// OP_STOREP_F	11504	11501	0
// OP_ADDRESS	29	115	11505
// OP_LOAD_F	29	115	11506
// OP_CALL0	5370	0	0
// OP_MUL_F	746	1	11507
// OP_ADD_F	11506	11507	11508
// OP_STOREP_F	11508	11505	0
// OP_LOAD_F	28	195	11509
// OP_BITAND	11509	11452	11510
// OP_IFNOT	11510	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000598 = 
{
    if(other.classname == "grenade")
    {
        other.velocity = (self.speed * self.movedir) * MOVETYPE_BOUNCE;
    }
    else
    {
        
        if(other.health > FALSE)
        {
            other.velocity = (self.speed * self.movedir) * MOVETYPE_BOUNCE;
            
            if((other.classname == "player") || (other.classname == "bot"))
            {
                
                if(other.fly_sound < time)
                {
                    other.fly_sound = time + 1.5;
                    sound(other, CHAN_AUTO, "ambience/windfly.wav", TRUE, ATTN_NORM);
                }
                
            }
            
            
            if(other.classname == "bot")
            {
                
                if((self.movedir_x < 0.1) && (self.movedir_y < 0.1))
                {
                    other.velocity_x = other.velocity_x + (globaldef000729 * func000249());
                    other.velocity_y = other.velocity_y + (globaldef000729 * func000249());
                }
                
            }
            
        }
        
    }
    
    
    if(self.spawnflags & globaldef003511)
    {
        remove(self);
    }
    
};

