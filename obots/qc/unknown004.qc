// func000176
// function begins at statement 3121, parm_start=3527
// OP_LOAD_ENT	29	423	3528
// OP_NE_E	3528	28	3529
// OP_IFNOT	3529	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	181	3530
// OP_IFNOT	3530	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	3527	0
// OP_STORE_ENT	29	28	0
// OP_STORE_ENT	3527	29	0
// OP_LOAD_S	28	129	3531
// OP_EQ_S	3531	3532	3533
// OP_IFNOT	3533	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3534	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	194	3535
// OP_ADDRESS	28	423	3536
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	29	196	3537
// OP_STORE_V	3537	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	3536	0
// OP_STOREP_ENT	1	3535	0
// OP_ADDRESS	28	191	3538
// OP_LOAD_ENT	28	194	3539
// OP_LOAD_V	3539	105	3540
// OP_LOAD_V	28	105	3543
// OP_SUB_V	3540	3543	3546
// OP_STORE_V	3546	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	3538	0
// OP_LOAD_ENT	28	423	3549
// OP_NOT_ENT	3549	0	3550
// OP_IFNOT	3550	7	0
// OP_ADDRESS	28	422	3551
// OP_ADD_F	31	3552	3553
// OP_STOREP_F	3553	3551	0
// OP_LOAD_FNC	28	361	3554
// OP_CALL0	3554	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000176 = 
{
    local entity globaldef001624;
    
    if(other.movetarget != self)
    {
        return;
    }
    
    
    if(other.enemy)
    {
        return;
    }
    
    globaldef001624 = self;
    self = other;
    other = globaldef001624;
    
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", TRUE, ATTN_IDLE);
    }
    
    self.goalentity = self.movetarget = find(world, targetname, other.target);
    self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
    
    if(!self.movetarget)
    {
        self.pausetime = time + 999999;
        self.th_stand();
        return;
    }
    
};

// func000177
// function begins at statement 3167, parm_start=3555
// OP_LOAD_V	28	105	3563
// OP_LOAD_V	28	166	3566
// OP_ADD_V	3563	3566	3569
// OP_STORE_V	3569	3556	0
// OP_LOAD_V	3555	105	3572
// OP_LOAD_V	3555	166	3575
// OP_ADD_V	3572	3575	3578
// OP_STORE_V	3578	3559	0
// OP_SUB_V	3556	3559	3581
// OP_STORE_V	3581	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	3562	0
// OP_LT	3562	3584	3585
// OP_IFNOT	3585	2	0
// OP_RETURN	242	0	0
// OP_LT	3562	745	3586
// OP_IFNOT	3586	2	0
// OP_RETURN	243	0	0
// OP_LT	3562	1663	3587
// OP_IFNOT	3587	2	0
// OP_RETURN	244	0	0
// OP_RETURN	245	0	0
// OP_DONE	0	0	0
float (entity globaldef001628) func000177 = 
{
    local vector globaldef001629;
    local vector globaldef001633;
    local float globaldef001637;
    globaldef001629 = self.origin + self.view_ofs;
    globaldef001633 = globaldef001628.origin + globaldef001628.view_ofs;
    globaldef001637 = vlen(globaldef001629 - globaldef001633);
    
    if(globaldef001637 < 120)
    {
        return RANGE_MELEE;
    }
    
    
    if(globaldef001637 < globaldef000728)
    {
        return RANGE_NEAR;
    }
    
    
    if(globaldef001637 < 1000)
    {
        return RANGE_MID;
    }
    
    return RANGE_FAR;
};

// func000179
// function begins at statement 3211, parm_start=3615
// OP_LOAD_V	28	117	3620
// OP_STORE_V	3620	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	3615	105	3623
// OP_LOAD_V	28	105	3626
// OP_SUB_V	3623	3626	3629
// OP_STORE_V	3629	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	3616	0
// OP_MUL_V	3616	59	3632
// OP_STORE_F	3632	3619	0
// OP_GT	3619	3409	3633
// OP_IFNOT	3633	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef001648) func000179 = 
{
    local vector globaldef001649;
    local float globaldef001653;
    makevectors(self.angles);
    globaldef001649 = normalize(globaldef001648.origin - self.origin);
    globaldef001653 = globaldef001649 * v_forward;
    
    if(globaldef001653 > 0.3)
    {
        return TRUE;
    }
    
    return FALSE;
};

// func000180
// function begins at statement 3227, parm_start=3635
// OP_ADDRESS	28	194	3635
// OP_LOAD_ENT	28	181	3636
// OP_STOREP_ENT	3636	3635	0
// OP_ADDRESS	28	148	3637
// OP_LOAD_FNC	28	363	3638
// OP_STOREP_FNC	3638	3637	0
// OP_ADDRESS	28	191	3639
// OP_LOAD_ENT	28	181	3640
// OP_LOAD_V	3640	105	3641
// OP_LOAD_V	28	105	3644
// OP_SUB_V	3641	3644	3647
// OP_STORE_V	3647	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	3639	0
// OP_ADDRESS	28	150	3650
// OP_ADD_F	31	3036	3651
// OP_STOREP_F	3651	3650	0
// OP_STORE_V	214	4	0
// OP_CALL1	3163	0	0
// OP_DONE	0	0	0
void () func000180 = 
{
    self.goalentity = self.enemy;
    self.think = self.th_run;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.nextthink = time + 0.1;
    SUB_AttackFinished(TRUE);
};

// func000181
// function begins at statement 3247, parm_start=3653
// OP_LOAD_S	28	129	3654
// OP_EQ_S	3654	3532	3655
// OP_IFNOT	3655	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3656	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	152	0	0
// OP_LOAD_S	28	129	3657
// OP_EQ_S	3657	3254	3658
// OP_IFNOT	3658	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	142	0	0
// OP_LOAD_S	28	129	3660
// OP_EQ_S	3660	3661	3662
// OP_IFNOT	3662	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3663	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	132	0	0
// OP_LOAD_S	28	129	3664
// OP_EQ_S	3664	3665	3666
// OP_IFNOT	3666	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3667	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	122	0	0
// OP_LOAD_S	28	129	3668
// OP_EQ_S	3668	3669	3670
// OP_IFNOT	3670	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3671	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	112	0	0
// OP_LOAD_S	28	129	3672
// OP_EQ_S	3672	3673	3674
// OP_IFNOT	3674	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	102	0	0
// OP_LOAD_S	28	129	3676
// OP_EQ_S	3676	3677	3678
// OP_IFNOT	3678	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3679	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	92	0	0
// OP_LOAD_S	28	129	3680
// OP_EQ_S	3680	3681	3682
// OP_IFNOT	3682	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3683	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	82	0	0
// OP_LOAD_S	28	129	3684
// OP_EQ_S	3684	3685	3686
// OP_IFNOT	3686	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3687	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	72	0	0
// OP_LOAD_S	28	129	3688
// OP_EQ_S	3688	3689	3690
// OP_IFNOT	3690	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3691	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	62	0	0
// OP_LOAD_S	28	129	3692
// OP_EQ_S	3692	3693	3694
// OP_IFNOT	3694	40	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	228	3695
// OP_STORE_V	3695	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	3653	0
// OP_EQ_F	3653	214	3696
// OP_IFNOT	3696	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3697	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	3653	216	3698
// OP_IFNOT	3698	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3699	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	3653	213	3700
// OP_IFNOT	3700	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3701	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3702	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	28	129	3703
// OP_EQ_S	3703	3704	3705
// OP_IFNOT	3705	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3706	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	129	3707
// OP_EQ_S	3707	3708	3709
// OP_IFNOT	3709	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3710	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000181 = 
{
    local float globaldef001656;
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogwake.wav", TRUE, ATTN_NORM);
    }
    else
    {
        if(self.classname == "monster_knight")
        {
            sound(self, CHAN_VOICE, "knight/ksight.wav", TRUE, ATTN_NORM);
        }
        else
        {
            if(self.classname == "monster_shambler")
            {
                sound(self, CHAN_VOICE, "shambler/ssight.wav", TRUE, ATTN_NORM);
            }
            else
            {
                if(self.classname == "monster_demon1")
                {
                    sound(self, CHAN_VOICE, "demon/sight2.wav", TRUE, ATTN_NORM);
                }
                else
                {
                    if(self.classname == "monster_wizard")
                    {
                        sound(self, CHAN_VOICE, "wizard/wsight.wav", TRUE, ATTN_NORM);
                    }
                    else
                    {
                        if(self.classname == "monster_zombie")
                        {
                            sound(self, CHAN_VOICE, "zombie/z_idle.wav", TRUE, ATTN_NORM);
                        }
                        else
                        {
                            if(self.classname == "monster_dog")
                            {
                                sound(self, CHAN_VOICE, "dog/dsight.wav", TRUE, ATTN_NORM);
                            }
                            else
                            {
                                if(self.classname == "monster_hell_knight")
                                {
                                    sound(self, CHAN_VOICE, "hknight/sight1.wav", TRUE, ATTN_NORM);
                                }
                                else
                                {
                                    if(self.classname == "monster_tarbaby")
                                    {
                                        sound(self, CHAN_VOICE, "blob/sight1.wav", TRUE, ATTN_NORM);
                                    }
                                    else
                                    {
                                        if(self.classname == "monster_vomit")
                                        {
                                            sound(self, CHAN_VOICE, "vomitus/v_sight1.wav", TRUE, ATTN_NORM);
                                        }
                                        else
                                        {
                                            if(self.classname == "monster_enforcer")
                                            {
                                                globaldef001656 = rint(random() * MOVETYPE_WALK);
                                                if(globaldef001656 == TRUE)
                                                {
                                                    sound(self, CHAN_VOICE, "enforcer/sight1.wav", TRUE, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    if(globaldef001656 == FL_SWIM)
                                                    {
                                                        sound(self, CHAN_VOICE, "enforcer/sight2.wav", TRUE, ATTN_NORM);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef001656 == FALSE)
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight3.wav", TRUE, ATTN_NORM);
                                                        }
                                                        else
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight4.wav", TRUE, ATTN_NORM);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(self.classname == "monster_army")
                                                {
                                                    sound(self, CHAN_VOICE, "soldier/sight1.wav", TRUE, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    
                                                    if(self.classname == "monster_shalrath")
                                                    {
                                                        sound(self, CHAN_VOICE, "shalrath/sight.wav", TRUE, ATTN_NORM);
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// func000182
// function begins at statement 3409, parm_start=3712
// OP_LOAD_ENT	28	181	3712
// OP_LOAD_S	3712	129	3713
// OP_EQ_S	3713	1236	3714
// OP_IFNOT	3714	3	0
// OP_STORE_ENT	28	3508	0
// OP_STORE_F	31	3509	0
// OP_ADDRESS	28	393	3715
// OP_ADD_F	31	214	3716
// OP_STOREP_F	3716	3715	0
// OP_CALL0	3652	0	0
// OP_CALL0	3634	0	0
// OP_DONE	0	0	0
void () func000182 = 
{
    
    if(self.enemy.classname == "player")
    {
        globaldef001617 = self;
        globaldef001618 = time;
    }
    
    self.show_hostile = time + TRUE;
    func000181();
    func000180();
};

// func000183
// function begins at statement 3421, parm_start=3718
// OP_STORE_ENT	30	3721	0
// OP_STORE_F	3722	3719	0
// OP_STORE_ENT	834	3720	0
// OP_IFNOT	3720	20	0
// OP_LOAD_V	28	105	3723
// OP_LOAD_V	3720	105	3726
// OP_SUB_V	3723	3726	3729
// OP_STORE_V	3729	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	3718	0
// OP_LT	3718	3719	3732
// OP_IFNOT	3732	9	0
// OP_STORE_V	3720	4	0
// OP_CALL1	3169	0	0
// OP_IFNOT	1	6	0
// OP_STORE_V	3720	4	0
// OP_CALL1	3285	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	3718	3719	0
// OP_STORE_ENT	3720	3721	0
// OP_LOAD_ENT	3720	620	3733
// OP_STORE_ENT	3733	3720	0
// OP_GOTO	-19	0	0
// OP_RETURN	3721	0	0
// OP_DONE	0	0	0
entity () func000183 = 
{
    local float globaldef001686;
    local float globaldef001687;
    local entity globaldef001688;
    local entity globaldef001689;
    globaldef001689 = world;
    globaldef001687 = 9999;
    globaldef001688 = globaldef000817;
    
    while(globaldef001688)
    {
        globaldef001686 = vlen(self.origin - globaldef001688.origin);
        
        if(globaldef001686 < globaldef001687)
        {
            
            if(visible(globaldef001688))
            {
                
                if(func000179(globaldef001688))
                {
                    globaldef001687 = globaldef001686;
                    globaldef001689 = globaldef001688;
                }
                
            }
            
        }
        
        globaldef001688 = globaldef001688.field000297;
    }
    
    return globaldef001689;
};

// func000184
// function begins at statement 3446, parm_start=3735
// OP_SUB_F	31	3036	3737
// OP_GE	3509	3737	3738
// OP_LOAD_F	28	195	3739
// OP_BITAND	3739	228	3740
// OP_NOT_F	3740	0	3741
// OP_AND	3738	3741	3742
// OP_IFNOT	3742	8	0
// OP_STORE_ENT	3508	3735	0
// OP_LOAD_ENT	3735	181	3743
// OP_LOAD_ENT	28	181	3744
// OP_EQ_E	3743	3744	3745
// OP_IFNOT	3745	2	0
// OP_RETURN	0	0	0
// OP_GOTO	10	0	0
// OP_CALL0	3717	0	0
// OP_STORE_ENT	1	3735	0
// OP_NOT_ENT	3735	0	3746
// OP_IFNOT	3746	3	0
// OP_CALL0	467	0	0
// OP_STORE_ENT	1	3735	0
// OP_NOT_ENT	3735	0	3747
// OP_IFNOT	3747	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	3748
// OP_EQ_E	3735	3748	3749
// OP_IFNOT	3749	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	3735	182	3750
// OP_BITAND	3750	221	3751
// OP_IFNOT	3751	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	3735	162	3752
// OP_BITAND	3752	272	3753
// OP_IFNOT	3753	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	3735	4	0
// OP_CALL1	3286	0	0
// OP_STORE_F	1	3736	0
// OP_EQ_F	3736	245	3754
// OP_IFNOT	3754	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	3735	4	0
// OP_CALL1	3169	0	0
// OP_NOT_F	1	0	3755
// OP_IFNOT	3755	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	3736	243	3756
// OP_IFNOT	3756	10	0
// OP_LOAD_F	3735	393	3757
// OP_LT	3757	31	3758
// OP_STORE_V	3735	4	0
// OP_CALL1	3285	0	0
// OP_NOT_F	1	0	3759
// OP_AND	3758	3759	3760
// OP_IFNOT	3760	2	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_EQ_F	3736	244	3761
// OP_IFNOT	3761	6	0
// OP_STORE_V	3735	4	0
// OP_CALL1	3285	0	0
// OP_NOT_F	1	0	3762
// OP_IFNOT	3762	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	181	3763
// OP_STOREP_ENT	3735	3763	0
// OP_LOAD_ENT	28	181	3764
// OP_LOAD_S	3764	129	3765
// OP_NE_S	3765	1236	3766
// OP_LOAD_ENT	28	181	3767
// OP_LOAD_S	3767	129	3768
// OP_NE_S	3768	1241	3769
// OP_AND	3766	3769	3770
// OP_IFNOT	3770	16	0
// OP_ADDRESS	28	181	3771
// OP_LOAD_ENT	28	181	3772
// OP_LOAD_ENT	3772	181	3773
// OP_STOREP_ENT	3773	3771	0
// OP_LOAD_ENT	28	181	3774
// OP_LOAD_S	3774	129	3775
// OP_NE_S	3775	1236	3776
// OP_LOAD_ENT	28	181	3777
// OP_LOAD_S	3777	129	3778
// OP_NE_S	3778	1241	3779
// OP_AND	3776	3779	3780
// OP_IFNOT	3780	4	0
// OP_ADDRESS	28	181	3781
// OP_STOREP_ENT	30	3781	0
// OP_RETURN	213	0	0
// OP_CALL0	3711	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () func000184 = 
{
    local entity globaldef001692;
    local float globaldef001693;
    if((globaldef001618 >= (time - 0.1)) && (!(self.spawnflags & MOVETYPE_WALK)))
    {
        globaldef001692 = globaldef001617;
        
        if(globaldef001692.enemy == self.enemy)
        {
            return;
        }
        
    }
    else
    {
        globaldef001692 = func000183();
        
        if(!globaldef001692)
        {
            globaldef001692 = checkclient();
        }
        
        
        if(!globaldef001692)
        {
            return FALSE;
        }
        
    }
    
    
    if(globaldef001692 == self.enemy)
    {
        return FALSE;
    }
    
    
    if(globaldef001692.flags & FL_NOTARGET)
    {
        return FALSE;
    }
    
    
    if(globaldef001692.items & IT_INVISIBILITY)
    {
        return FALSE;
    }
    
    globaldef001693 = func000177(globaldef001692);
    
    if(globaldef001693 == RANGE_FAR)
    {
        return FALSE;
    }
    
    
    if(!visible(globaldef001692))
    {
        return FALSE;
    }
    
    if(globaldef001693 == RANGE_NEAR)
    {
        
        if((globaldef001692.show_hostile < time) && !func000179(globaldef001692))
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if(globaldef001693 == RANGE_MID)
        {
            
            if(!func000179(globaldef001692))
            {
                return FALSE;
            }
            
        }
        
    }
    
    self.enemy = globaldef001692;
    
    if((self.enemy.classname != "player") && (self.enemy.classname != "bot"))
    {
        self.enemy = self.enemy.enemy;
        
        if((self.enemy.classname != "player") && (self.enemy.classname != "bot"))
        {
            self.enemy = world;
            return FALSE;
        }
        
    }
    
    func000182();
    return TRUE;
};

// func000185
// function begins at statement 3538, parm_start=3783
// OP_LOAD_F	28	119	3784
// OP_STORE_V	3784	4	0
// OP_STORE_V	3783	7	0
// OP_CALL2	480	0	0
// OP_DONE	0	0	0
void (float globaldef001695) func000185 = 
{
    walkmove(self.angles_y, globaldef001695);
};

// func000186
// function begins at statement 3543, parm_start=3786
// OP_LOAD_F	28	119	3787
// OP_ADD_F	3787	1296	3788
// OP_STORE_V	3788	4	0
// OP_STORE_V	3786	7	0
// OP_CALL2	480	0	0
// OP_DONE	0	0	0
void (float globaldef001697) func000186 = 
{
    walkmove(self.angles_y + 180, globaldef001697);
};

// func000187
// function begins at statement 3549, parm_start=3790
// OP_STORE_V	3790	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void (float globaldef001699) func000187 = 
{
    func000186(globaldef001699);
};

// func000188
// function begins at statement 3552, parm_start=3792
// OP_LOAD_F	28	191	3793
// OP_STORE_V	3793	4	0
// OP_STORE_V	3792	7	0
// OP_CALL2	480	0	0
// OP_DONE	0	0	0
void (float globaldef001701) func000188 = 
{
    walkmove(self.ideal_yaw, globaldef001701);
};

// func000189
// function begins at statement 3557, parm_start=3795
// OP_STORE_F	3795	346	0
// OP_LOAD_S	28	129	3799
// OP_EQ_S	3799	3800	3801
// OP_IFNOT	3801	4	0
// OP_STORE_V	3795	4	0
// OP_CALL1	504	0	0
// OP_RETURN	0	0	0
// OP_CALL0	3734	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	3795	4	0
// OP_CALL1	504	0	0
// OP_DONE	0	0	0
void (float globaldef001703) func000189 = 
{
    local vector globaldef001704;
    movedist = globaldef001703;
    
    if(self.classname == "monster_dragon")
    {
        movetogoal(globaldef001703);
        return;
    }
    
    
    if(func000184())
    {
        return;
    }
    
    movetogoal(globaldef001703);
};

// func000190
// function begins at statement 3570, parm_start=3803
// OP_CALL0	3734	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	3803
// OP_GT	31	3803	3804
// OP_IFNOT	3804	4	0
// OP_LOAD_FNC	28	362	3805
// OP_CALL0	3805	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000190 = 
{
    
    if(func000184())
    {
        return;
    }
    
    
    if(time > self.pausetime)
    {
        self.th_walk();
        return;
    }
    
};

// func000191
// function begins at statement 3580, parm_start=3807
// OP_CALL0	3734	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	494	0	0
// OP_DONE	0	0	0
void () func000191 = 
{
    
    if(func000184())
    {
        return;
    }
    
    ChangeYaw();
};

