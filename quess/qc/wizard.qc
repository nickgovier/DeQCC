// LaunchMissile
// function begins at statement 15556, parm_start=9529
// OP_LOAD_V	28	117	9539
// OP_STORE_V	9539	4	0
// OP_CALL1	448	0	0
// OP_LOAD_ENT	28	181	9542
// OP_LOAD_V	9542	105	9543
// OP_LOAD_ENT	28	181	9546
// OP_LOAD_V	9546	134	9547
// OP_ADD_V	9543	9547	9550
// OP_LOAD_ENT	28	181	9553
// OP_LOAD_V	9553	142	9554
// OP_MUL_VF	9554	3100	9557
// OP_ADD_V	9550	9557	9560
// OP_LOAD_V	9529	105	9563
// OP_SUB_V	9560	9563	9566
// OP_STORE_V	9566	9532	0
// OP_STORE_V	9532	4	0
// OP_CALL1	458	0	0
// OP_DIV_F	1	9530	9569
// OP_STORE_F	9569	9538	0
// OP_LOAD_ENT	28	181	9570
// OP_LOAD_V	9570	113	9571
// OP_STORE_V	9571	9535	0
// OP_STORE_F	650	9537	0
// OP_MUL_VF	9535	9538	9574
// OP_ADD_V	9532	9574	9577
// OP_STORE_V	9577	9532	0
// OP_STORE_V	9532	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	9532	0
// OP_MUL_FV	9531	62	9580
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	9583
// OP_MUL_VF	9580	9583	9584
// OP_ADD_V	9532	9584	9587
// OP_MUL_FV	9531	65	9590
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	9593
// OP_MUL_VF	9590	9593	9594
// OP_ADD_V	9587	9594	9597
// OP_STORE_V	9597	9532	0
// OP_ADDRESS	9529	113	9600
// OP_MUL_VF	9532	9530	9603
// OP_STOREP_V	9603	9600	0
// OP_ADDRESS	9529	117	9606
// OP_STOREP_V	638	9606	0
// OP_ADDRESS	9529	119	9609
// OP_LOAD_V	9529	113	9610
// OP_STORE_V	9610	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	9609	0
// OP_ADDRESS	9529	150	9613
// OP_ADD_F	31	1660	9614
// OP_STOREP_F	9614	9613	0
// OP_ADDRESS	9529	148	9615
// OP_STOREP_FNC	520	9615	0
// OP_DONE	0	0	0
void (entity missile, float mspeed, float accuracy) LaunchMissile = 
{
    local vector vec;
    local vector move;
    local float fly;
    makevectors(self.angles);
    vec = ((self.enemy.origin + self.enemy.mins) + (self.enemy.size * 0.7)) - missile.origin;
    fly = vlen(vec) / mspeed;
    move = self.enemy.velocity;
    move_z = 0;
    vec = vec + (move * fly);
    vec = normalize(vec);
    vec = (vec + ((accuracy * v_up) * (random() - 0.5))) + ((accuracy * v_right) * (random() - 0.5));
    missile.velocity = vec * mspeed;
    missile.angles = '0.000 0.000 0.000';
    missile.angles_y = vectoyaw(missile.velocity);
    missile.nextthink = time + 5;
    missile.think = SUB_Remove;
};

void () wiz_run1;
void () wiz_side1;
// WizardCheckAttack
// function begins at statement 15612, parm_start=9618
// OP_LOAD_F	28	374	9626
// OP_LT	31	9626	9627
// OP_IFNOT	9627	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	845	0	9628
// OP_IFNOT	9628	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	246	9629
// OP_IFNOT	9629	8	0
// OP_LOAD_F	28	368	9630
// OP_NE_F	9630	369	9631
// OP_IFNOT	9631	4	0
// OP_ADDRESS	28	368	9632
// OP_STOREP_F	369	9632	0
// OP_CALL0	9616	0	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	9633
// OP_STORE_ENT	9633	9624	0
// OP_LOAD_V	28	105	9634
// OP_LOAD_V	28	166	9637
// OP_ADD_V	9634	9637	9640
// OP_STORE_V	9640	9618	0
// OP_LOAD_V	9624	105	9643
// OP_LOAD_V	9624	166	9646
// OP_ADD_V	9643	9646	9649
// OP_STORE_V	9649	9621	0
// OP_STORE_V	9618	4	0
// OP_STORE_V	9621	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_NE_E	78	9624	9652
// OP_IFNOT	9652	8	0
// OP_LOAD_F	28	368	9653
// OP_NE_F	9653	369	9654
// OP_IFNOT	9654	4	0
// OP_ADDRESS	28	368	9655
// OP_STOREP_F	369	9655	0
// OP_CALL0	9616	0	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	243	9656
// OP_IFNOT	9656	3	0
// OP_STORE_F	918	9625	0
// OP_GOTO	10	0	0
// OP_EQ_F	847	244	9657
// OP_IFNOT	9657	3	0
// OP_STORE_F	2240	9625	0
// OP_GOTO	6	0	0
// OP_EQ_F	847	245	9658
// OP_IFNOT	9658	3	0
// OP_STORE_F	922	9625	0
// OP_GOTO	2	0	0
// OP_STORE_F	650	9625	0
// OP_CALL0	453	0	0
// OP_LT	1	9625	9659
// OP_IFNOT	9659	4	0
// OP_ADDRESS	28	368	9660
// OP_STOREP_F	372	9660	0
// OP_RETURN	214	0	0
// OP_EQ_F	847	245	9661
// OP_IFNOT	9661	8	0
// OP_LOAD_F	28	368	9662
// OP_NE_F	9662	369	9663
// OP_IFNOT	9663	4	0
// OP_ADDRESS	28	368	9664
// OP_STOREP_F	369	9664	0
// OP_CALL0	9616	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	368	9665
// OP_NE_F	9665	370	9666
// OP_IFNOT	9666	4	0
// OP_ADDRESS	28	368	9667
// OP_STOREP_F	370	9667	0
// OP_CALL0	9617	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () WizardCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_ent != targ)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
        return FALSE;
    }
    
    if(enemy_range == RANGE_MELEE)
    {
        chance = 0.9;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.6;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.2;
            }
            else
            {
                chance = 0;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    if(enemy_range == RANGE_MID)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
    }
    else
    {
        
        if(self.attack_state != AS_SLIDING)
        {
            self.attack_state = AS_SLIDING;
            wiz_side1();
        }
        
    }
    
    return FALSE;
};

// WizardAttackFinished
// function begins at statement 15688, parm_start=9669
// OP_GE	847	245	9669
// OP_NOT_F	845	0	9670
// OP_OR	9669	9670	9671
// OP_IFNOT	9671	6	0
// OP_ADDRESS	28	368	9672
// OP_STOREP_F	369	9672	0
// OP_ADDRESS	28	148	9673
// OP_STOREP_FNC	9616	9673	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	368	9674
// OP_STOREP_F	370	9674	0
// OP_ADDRESS	28	148	9675
// OP_STOREP_FNC	9617	9675	0
// OP_DONE	0	0	0
void () WizardAttackFinished = 
{
    if((enemy_range >= RANGE_MID) || !enemy_vis)
    {
        self.attack_state = AS_STRAIGHT;
        self.think = wiz_run1;
    }
    else
    {
        self.attack_state = AS_SLIDING;
        self.think = wiz_side1;
    }
    
};

// Wiz_FastFire
// function begins at statement 15702, parm_start=9677
// OP_LOAD_ENT	28	201	9683
// OP_LOAD_F	9683	152	9684
// OP_GT	9684	650	9685
// OP_IFNOT	9685	47	0
// OP_LOAD_ENT	28	201	9686
// OP_ADDRESS	9686	133	9687
// OP_LOAD_ENT	28	201	9688
// OP_LOAD_F	9688	133	9689
// OP_BITOR	9689	335	9690
// OP_STOREP_F	9690	9687	0
// OP_LOAD_ENT	28	181	9691
// OP_LOAD_V	9691	117	9692
// OP_STORE_V	9692	4	0
// OP_CALL1	448	0	0
// OP_LOAD_ENT	28	181	9695
// OP_LOAD_V	9695	105	9696
// OP_LOAD_V	28	202	9699
// OP_MUL_FV	8427	9699	9702
// OP_SUB_V	9696	9702	9705
// OP_STORE_V	9705	9680	0
// OP_LOAD_V	28	105	9708
// OP_SUB_V	9680	9708	9711
// OP_STORE_V	9711	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	9677	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9714	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	105	9715
// OP_STORE_V	9715	4	0
// OP_STORE_V	9677	7	0
// OP_CALL2	3460	0	0
// OP_ADDRESS	346	113	9718
// OP_MUL_VF	9677	3343	9721
// OP_STOREP_V	9721	9718	0
// OP_ADDRESS	346	201	9724
// OP_LOAD_ENT	28	201	9725
// OP_STOREP_ENT	9725	9724	0
// OP_ADDRESS	346	129	9726
// OP_STOREP_S	3558	9726	0
// OP_STORE_V	346	4	0
// OP_STORE_V	9727	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () Wiz_FastFire = 
{
    local vector vec;
    local vector dst;
    
    if(self.owner.health > 0)
    {
        self.owner.effects = self.owner.effects | EF_MUZZLEFLASH;
        makevectors(self.enemy.angles);
        dst = self.enemy.origin - (13 * self.movedir);
        vec = normalize(dst - self.origin);
        sound(self, CHAN_WEAPON, "wizard/wattack.wav", 1, ATTN_NORM);
        launch_spike(self.origin, vec);
        newmis.velocity = vec * 600;
        newmis.owner = self.owner;
        newmis.classname = "wizspike";
        setmodel(newmis, "progs/w_spike.mdl");
        setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    }
    
    remove(self);
};

// Wiz_StartFast
// function begins at statement 15755, parm_start=9729
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9714	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	175	9730
// OP_LOAD_V	28	117	9733
// OP_STOREP_V	9733	9730	0
// OP_LOAD_V	28	117	9736
// OP_STORE_V	9736	4	0
// OP_CALL1	448	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	9729	0
// OP_ADDRESS	9729	201	9739
// OP_STOREP_ENT	28	9739	0
// OP_ADDRESS	9729	150	9740
// OP_ADD_F	31	2240	9741
// OP_STOREP_F	9741	9740	0
// OP_STORE_V	9729	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	9729	4	0
// OP_LOAD_V	28	105	9742
// OP_ADD_V	9742	9745	9748
// OP_MUL_VF	59	3153	9751
// OP_ADD_V	9748	9751	9754
// OP_MUL_VF	65	3153	9757
// OP_ADD_V	9754	9757	9760
// OP_STORE_V	9760	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	9729	181	9763
// OP_LOAD_ENT	28	181	9764
// OP_STOREP_ENT	9764	9763	0
// OP_ADDRESS	9729	150	9765
// OP_ADD_F	31	2245	9766
// OP_STOREP_F	9766	9765	0
// OP_ADDRESS	9729	148	9767
// OP_STOREP_FNC	9676	9767	0
// OP_ADDRESS	9729	202	9768
// OP_STOREP_V	65	9768	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	9729	0
// OP_ADDRESS	9729	201	9771
// OP_STOREP_ENT	28	9771	0
// OP_ADDRESS	9729	150	9772
// OP_ADD_F	31	708	9773
// OP_STOREP_F	9773	9772	0
// OP_STORE_V	9729	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	9729	4	0
// OP_LOAD_V	28	105	9774
// OP_ADD_V	9774	9745	9777
// OP_MUL_VF	59	3153	9780
// OP_ADD_V	9777	9780	9783
// OP_MUL_VF	65	9786	9787
// OP_ADD_V	9783	9787	9790
// OP_STORE_V	9790	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	9729	181	9793
// OP_LOAD_ENT	28	181	9794
// OP_STOREP_ENT	9794	9793	0
// OP_ADDRESS	9729	150	9795
// OP_ADD_F	31	1104	9796
// OP_STOREP_F	9796	9795	0
// OP_ADDRESS	9729	148	9797
// OP_STOREP_FNC	9676	9797	0
// OP_ADDRESS	9729	202	9798
// OP_SUB_V	287	65	9801
// OP_STOREP_V	9801	9798	0
// OP_DONE	0	0	0
void () Wiz_StartFast = 
{
    local entity missile;
    sound(self, CHAN_WEAPON, "wizard/wattack.wav", 1, ATTN_NORM);
    self.v_angle = self.angles;
    makevectors(self.angles);
    missile = spawn();
    missile.owner = self;
    missile.nextthink = time + 0.6;
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, ((self.origin + '0.000 0.000 30.000') + (v_forward * 14)) + (v_right * 14));
    missile.enemy = self.enemy;
    missile.nextthink = time + 0.8;
    missile.think = Wiz_FastFire;
    missile.movedir = v_right;
    missile = spawn();
    missile.owner = self;
    missile.nextthink = time + 1;
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, ((self.origin + '0.000 0.000 30.000') + (v_forward * 14)) + (v_right * -14));
    missile.enemy = self.enemy;
    missile.nextthink = time + 0.3;
    missile.think = Wiz_FastFire;
    missile.movedir = VEC_ORIGIN - v_right;
};

// Wiz_idlesound
// function begins at statement 15829, parm_start=9805
// OP_CALL0	453	0	0
// OP_MUL_F	1	1660	9806
// OP_STORE_F	9806	9805	0
// OP_LOAD_F	28	444	9807
// OP_LT	9807	31	9808
// OP_IFNOT	9808	20	0
// OP_ADDRESS	28	444	9809
// OP_ADD_F	31	929	9810
// OP_STOREP_F	9810	9809	0
// OP_GT	9805	9811	9812
// OP_IFNOT	9812	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9813	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_LT	9805	7506	9814
// OP_IFNOT	9814	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9815	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () Wiz_idlesound = 
{
    local float wr;
    wr = random() * 5;
    
    if(self.waitmin < time)
    {
        self.waitmin = time + 2;
        
        if(wr > 4.5)
        {
            sound(self, CHAN_VOICE, "wizard/widle1.wav", 1, ATTN_IDLE);
        }
        
        
        if(wr < 1.5)
        {
            sound(self, CHAN_VOICE, "wizard/widle2.wav", 1, ATTN_IDLE);
        }
        
    }
    
    return;
};

// wiz_stand1
// function begins at statement 15856, parm_start=9817
// OP_STATE	650	9817	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand1 = [0, wiz_stand2]
{
    ai_stand();
};

// wiz_stand2
// function begins at statement 15859, parm_start=9818
// OP_STATE	708	9818	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand2 = [1, wiz_stand3]
{
    ai_stand();
};

// wiz_stand3
// function begins at statement 15862, parm_start=9819
// OP_STATE	929	9819	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand3 = [2, wiz_stand4]
{
    ai_stand();
};

// wiz_stand4
// function begins at statement 15865, parm_start=9820
// OP_STATE	819	9820	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand4 = [3, wiz_stand5]
{
    ai_stand();
};

// wiz_stand5
// function begins at statement 15868, parm_start=9821
// OP_STATE	1835	9821	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand5 = [4, wiz_stand6]
{
    ai_stand();
};

// wiz_stand6
// function begins at statement 15871, parm_start=9822
// OP_STATE	1660	9822	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand6 = [5, wiz_stand7]
{
    ai_stand();
};

// wiz_stand7
// function begins at statement 15874, parm_start=9823
// OP_STATE	2107	9823	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand7 = [6, wiz_stand8]
{
    ai_stand();
};

// wiz_stand8
// function begins at statement 15877, parm_start=9824
// OP_STATE	2307	9816	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () wiz_stand8 = [7, wiz_stand1]
{
    ai_stand();
};

// wiz_walk1
// function begins at statement 15880, parm_start=9825
// OP_STATE	650	9825	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_CALL0	9804	0	0
// OP_DONE	0	0	0
void () wiz_walk1 = [0, wiz_walk2]
{
    ai_walk(8);
    Wiz_idlesound();
};

// wiz_walk2
// function begins at statement 15885, parm_start=9826
// OP_STATE	708	9826	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk2 = [1, wiz_walk3]
{
    ai_walk(8);
};

// wiz_walk3
// function begins at statement 15889, parm_start=9827
// OP_STATE	929	9827	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk3 = [2, wiz_walk4]
{
    ai_walk(8);
};

// wiz_walk4
// function begins at statement 15893, parm_start=9828
// OP_STATE	819	9828	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk4 = [3, wiz_walk5]
{
    ai_walk(8);
};

// wiz_walk5
// function begins at statement 15897, parm_start=9829
// OP_STATE	1835	9829	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk5 = [4, wiz_walk6]
{
    ai_walk(8);
};

// wiz_walk6
// function begins at statement 15901, parm_start=9830
// OP_STATE	1660	9830	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk6 = [5, wiz_walk7]
{
    ai_walk(8);
};

// wiz_walk7
// function begins at statement 15905, parm_start=9831
// OP_STATE	2107	9831	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk7 = [6, wiz_walk8]
{
    ai_walk(8);
};

// wiz_walk8
// function begins at statement 15909, parm_start=9832
// OP_STATE	2307	9824	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () wiz_walk8 = [7, wiz_walk1]
{
    ai_walk(8);
};

// wiz_side1
// function begins at statement 15913, parm_start=9832
// OP_STATE	650	9832	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_CALL0	9804	0	0
// OP_DONE	0	0	0
void () wiz_side1 = [0, wiz_side2]
{
    ai_run(8);
    Wiz_idlesound();
};

// wiz_side2
// function begins at statement 15918, parm_start=9833
// OP_STATE	708	9833	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side2 = [1, wiz_side3]
{
    ai_run(8);
};

// wiz_side3
// function begins at statement 15922, parm_start=9834
// OP_STATE	929	9834	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side3 = [2, wiz_side4]
{
    ai_run(8);
};

// wiz_side4
// function begins at statement 15926, parm_start=9835
// OP_STATE	819	9835	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side4 = [3, wiz_side5]
{
    ai_run(8);
};

// wiz_side5
// function begins at statement 15930, parm_start=9836
// OP_STATE	1835	9836	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side5 = [4, wiz_side6]
{
    ai_run(8);
};

// wiz_side6
// function begins at statement 15934, parm_start=9837
// OP_STATE	1660	9837	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side6 = [5, wiz_side7]
{
    ai_run(8);
};

// wiz_side7
// function begins at statement 15938, parm_start=9838
// OP_STATE	2107	9838	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side7 = [6, wiz_side8]
{
    ai_run(8);
};

// wiz_side8
// function begins at statement 15942, parm_start=9839
// OP_STATE	2307	9617	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_side8 = [7, wiz_side1]
{
    ai_run(8);
};

// wiz_run1
// function begins at statement 15946, parm_start=9839
// OP_STATE	2157	9839	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_CALL0	9804	0	0
// OP_DONE	0	0	0
void () wiz_run1 = [15, wiz_run2]
{
    ai_run(16);
    Wiz_idlesound();
};

// wiz_run2
// function begins at statement 15951, parm_start=9840
// OP_STATE	3273	9840	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run2 = [16, wiz_run3]
{
    ai_run(16);
};

// wiz_run3
// function begins at statement 15955, parm_start=9841
// OP_STATE	5588	9841	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run3 = [17, wiz_run4]
{
    ai_run(16);
};

// wiz_run4
// function begins at statement 15959, parm_start=9842
// OP_STATE	3576	9842	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run4 = [18, wiz_run5]
{
    ai_run(16);
};

// wiz_run5
// function begins at statement 15963, parm_start=9843
// OP_STATE	8435	9843	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run5 = [19, wiz_run6]
{
    ai_run(16);
};

// wiz_run6
// function begins at statement 15967, parm_start=9844
// OP_STATE	1017	9844	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run6 = [20, wiz_run7]
{
    ai_run(16);
};

// wiz_run7
// function begins at statement 15971, parm_start=9845
// OP_STATE	8438	9845	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run7 = [21, wiz_run8]
{
    ai_run(16);
};

// wiz_run8
// function begins at statement 15975, parm_start=9846
// OP_STATE	8440	9846	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run8 = [22, wiz_run9]
{
    ai_run(16);
};

// wiz_run9
// function begins at statement 15979, parm_start=9847
// OP_STATE	8442	9847	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run9 = [23, wiz_run10]
{
    ai_run(16);
};

// wiz_run10
// function begins at statement 15983, parm_start=9848
// OP_STATE	4969	9848	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run10 = [24, wiz_run11]
{
    ai_run(16);
};

// wiz_run11
// function begins at statement 15987, parm_start=9849
// OP_STATE	2171	9849	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run11 = [25, wiz_run12]
{
    ai_run(16);
};

// wiz_run12
// function begins at statement 15991, parm_start=9850
// OP_STATE	8446	9850	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run12 = [26, wiz_run13]
{
    ai_run(16);
};

// wiz_run13
// function begins at statement 15995, parm_start=9851
// OP_STATE	8448	9851	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run13 = [27, wiz_run14]
{
    ai_run(16);
};

// wiz_run14
// function begins at statement 15999, parm_start=9852
// OP_STATE	8450	9616	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () wiz_run14 = [28, wiz_run1]
{
    ai_run(16);
};

// wiz_fast1
// function begins at statement 16003, parm_start=9853
// OP_STATE	5829	9853	0
// OP_CALL0	844	0	0
// OP_CALL0	9728	0	0
// OP_DONE	0	0	0
void () wiz_fast1 = [29, wiz_fast2]
{
    ai_face();
    Wiz_StartFast();
};

// wiz_fast2
// function begins at statement 16007, parm_start=9854
// OP_STATE	1004	9854	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast2 = [30, wiz_fast3]
{
    ai_face();
};

// wiz_fast3
// function begins at statement 16010, parm_start=9855
// OP_STATE	3950	9855	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast3 = [31, wiz_fast4]
{
    ai_face();
};

// wiz_fast4
// function begins at statement 16013, parm_start=9856
// OP_STATE	959	9856	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast4 = [32, wiz_fast5]
{
    ai_face();
};

// wiz_fast5
// function begins at statement 16016, parm_start=9857
// OP_STATE	5835	9857	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast5 = [33, wiz_fast6]
{
    ai_face();
};

// wiz_fast6
// function begins at statement 16019, parm_start=9858
// OP_STATE	5837	9858	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast6 = [34, wiz_fast7]
{
    ai_face();
};

// wiz_fast7
// function begins at statement 16022, parm_start=9859
// OP_STATE	5835	9859	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast7 = [33, wiz_fast8]
{
    ai_face();
};

// wiz_fast8
// function begins at statement 16025, parm_start=9860
// OP_STATE	959	9860	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast8 = [32, wiz_fast9]
{
    ai_face();
};

// wiz_fast9
// function begins at statement 16028, parm_start=9861
// OP_STATE	3950	9861	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () wiz_fast9 = [31, wiz_fast10]
{
    ai_face();
};

// wiz_fast10
// function begins at statement 16031, parm_start=9862
// OP_STATE	1004	9616	0
// OP_CALL0	844	0	0
// OP_STORE_V	929	4	0
// OP_CALL1	816	0	0
// OP_CALL0	9668	0	0
// OP_DONE	0	0	0
void () wiz_fast10 = [30, wiz_run1]
{
    ai_face();
    SUB_AttackFinished(2);
    WizardAttackFinished();
};

// wiz_pain1
// function begins at statement 16037, parm_start=9863
// OP_STATE	6162	9863	0
// OP_DONE	0	0	0
void () wiz_pain1 = [42, wiz_pain2]
{
};

// wiz_pain2
// function begins at statement 16039, parm_start=9864
// OP_STATE	6164	9864	0
// OP_DONE	0	0	0
void () wiz_pain2 = [43, wiz_pain3]
{
};

// wiz_pain3
// function begins at statement 16041, parm_start=9865
// OP_STATE	6166	9865	0
// OP_DONE	0	0	0
void () wiz_pain3 = [44, wiz_pain4]
{
};

// wiz_pain4
// function begins at statement 16043, parm_start=9866
// OP_STATE	1572	9616	0
// OP_DONE	0	0	0
void () wiz_pain4 = [45, wiz_run1]
{
};

// wiz_death1
// function begins at statement 16045, parm_start=9867
// OP_STATE	6169	9867	0
// OP_ADDRESS	28	114	9868
// OP_CALL0	453	0	0
// OP_MUL_F	3289	1	9869
// OP_ADD_F	5931	9869	9870
// OP_STOREP_F	9870	9868	0
// OP_ADDRESS	28	115	9871
// OP_CALL0	453	0	0
// OP_MUL_F	3289	1	9872
// OP_ADD_F	5931	9872	9873
// OP_STOREP_F	9873	9871	0
// OP_ADDRESS	28	116	9874
// OP_CALL0	453	0	0
// OP_MUL_F	2165	1	9875
// OP_ADD_F	2165	9875	9876
// OP_STOREP_F	9876	9874	0
// OP_ADDRESS	28	182	9877
// OP_LOAD_F	28	182	9878
// OP_LOAD_F	28	182	9879
// OP_BITAND	9879	223	9880
// OP_SUB_F	9878	9880	9881
// OP_STOREP_F	9881	9877	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9882	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () wiz_death1 = [46, wiz_death2]
{
    self.velocity_x = -200 + (400 * random());
    self.velocity_y = -200 + (400 * random());
    self.velocity_z = 100 + (100 * random());
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    sound(self, CHAN_VOICE, "wizard/wdeath.wav", 1, ATTN_NORM);
};

// wiz_death2
// function begins at statement 16074, parm_start=9883
// OP_STATE	6171	9883	0
// OP_DONE	0	0	0
void () wiz_death2 = [47, wiz_death3]
{
};

// wiz_death3
// function begins at statement 16076, parm_start=9884
// OP_STATE	6173	9884	0
// OP_ADDRESS	28	104	9885
// OP_STOREP_F	238	9885	0
// OP_DONE	0	0	0
void () wiz_death3 = [48, wiz_death4]
{
    self.solid = SOLID_NOT;
};

// wiz_death4
// function begins at statement 16080, parm_start=9886
// OP_STATE	6175	9886	0
// OP_DONE	0	0	0
void () wiz_death4 = [49, wiz_death5]
{
};

// wiz_death5
// function begins at statement 16082, parm_start=9887
// OP_STATE	2509	9887	0
// OP_DONE	0	0	0
void () wiz_death5 = [50, wiz_death6]
{
};

// wiz_death6
// function begins at statement 16084, parm_start=9888
// OP_STATE	6068	9888	0
// OP_DONE	0	0	0
void () wiz_death6 = [51, wiz_death7]
{
};

// wiz_death7
// function begins at statement 16086, parm_start=9889
// OP_STATE	6070	9889	0
// OP_DONE	0	0	0
void () wiz_death7 = [52, wiz_death8]
{
};

// wiz_death8
// function begins at statement 16088, parm_start=9890
// OP_STATE	6072	9889	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () wiz_death8 = [53, wiz_death8]
{
    SUB_Remove();
};

// wiz_die
// function begins at statement 16091, parm_start=9891
// OP_LOAD_F	28	152	9891
// OP_LT	9891	5465	9892
// OP_IFNOT	9892	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	9893	4	0
// OP_LOAD_F	28	152	9894
// OP_STORE_V	9894	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	9895
// OP_STORE_V	9895	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	9896
// OP_STORE_V	9896	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	9897
// OP_STORE_V	9897	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9866	0	0
// OP_DONE	0	0	0
void () wiz_die = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_wizard.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        return;
    }
    
    wiz_death1();
};

// Wiz_Pain
// function begins at statement 16119, parm_start=9899
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9901	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	6101	9902
// OP_GT	9902	9900	9903
// OP_IFNOT	9903	2	0
// OP_RETURN	0	0	0
// OP_CALL0	9862	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) Wiz_Pain = 
{
    sound(self, CHAN_VOICE, "wizard/wpain.wav", 1, ATTN_NORM);
    
    if((random() * 70) > damage)
    {
        return;
    }
    
    wiz_pain1();
};

// Wiz_Missile
// function begins at statement 16132, parm_start=9905
// OP_CALL0	9852	0	0
// OP_DONE	0	0	0
void () Wiz_Missile = 
{
    wiz_fast1();
};

// monster_wizard
// function begins at statement 16134, parm_start=9906
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9906	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9893	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9727	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9907	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9714	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9882	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9813	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9815	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9901	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1344	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	9908
// OP_STOREP_F	241	9908	0
// OP_ADDRESS	28	103	9909
// OP_STOREP_F	230	9909	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9906	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	9910
// OP_STOREP_F	874	9910	0
// OP_ADDRESS	28	357	9911
// OP_STOREP_FNC	9816	9911	0
// OP_ADDRESS	28	358	9912
// OP_STOREP_FNC	9824	9912	0
// OP_ADDRESS	28	359	9913
// OP_STOREP_FNC	9616	9913	0
// OP_ADDRESS	28	360	9914
// OP_STOREP_FNC	9904	9914	0
// OP_ADDRESS	28	362	9915
// OP_STOREP_FNC	9898	9915	0
// OP_ADDRESS	28	363	9916
// OP_STOREP_FNC	9890	9916	0
// OP_CALL0	6272	0	0
// OP_DONE	0	0	0
void () monster_wizard = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/wizard.mdl");
    precache_model("progs/h_wizard.mdl");
    precache_model("progs/w_spike.mdl");
    precache_sound("wizard/hit.wav");
    precache_sound("wizard/wattack.wav");
    precache_sound("wizard/wdeath.wav");
    precache_sound("wizard/widle1.wav");
    precache_sound("wizard/widle2.wav");
    precache_sound("wizard/wpain.wav");
    precache_sound("wizard/wsight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/wizard.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 80;
    self.th_stand = wiz_stand1;
    self.th_walk = wiz_walk1;
    self.th_run = wiz_run1;
    self.th_missile = Wiz_Missile;
    self.th_pain = Wiz_Pain;
    self.th_die = wiz_die;
    flymonster_start();
};

