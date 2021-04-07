// LaunchMissile
// function begins at statement 21321, parm_start=13537
// OP_LOAD_V	28	117	13547
// OP_STORE_V	13547	4	0
// OP_CALL1	452	0	0
// OP_LOAD_ENT	28	181	13550
// OP_LOAD_V	13550	105	13551
// OP_LOAD_ENT	28	181	13554
// OP_LOAD_V	13554	134	13555
// OP_ADD_V	13551	13555	13558
// OP_LOAD_ENT	28	181	13561
// OP_LOAD_V	13561	142	13562
// OP_MUL_VF	13562	5599	13565
// OP_ADD_V	13558	13565	13568
// OP_LOAD_V	13537	105	13571
// OP_SUB_V	13568	13571	13574
// OP_STORE_V	13574	13540	0
// OP_STORE_V	13540	4	0
// OP_CALL1	462	0	0
// OP_DIV_F	1	13538	13577
// OP_STORE_F	13577	13546	0
// OP_LOAD_ENT	28	181	13578
// OP_LOAD_V	13578	113	13579
// OP_STORE_V	13579	13543	0
// OP_STORE_F	213	13545	0
// OP_MUL_VF	13543	13546	13582
// OP_ADD_V	13540	13582	13585
// OP_STORE_V	13585	13540	0
// OP_STORE_V	13540	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	13540	0
// OP_MUL_FV	13539	62	13588
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	13591
// OP_MUL_VF	13588	13591	13592
// OP_ADD_V	13540	13592	13595
// OP_MUL_FV	13539	65	13598
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	13601
// OP_MUL_VF	13598	13601	13602
// OP_ADD_V	13595	13602	13605
// OP_STORE_V	13605	13540	0
// OP_ADDRESS	13537	113	13608
// OP_MUL_VF	13540	13538	13611
// OP_STOREP_V	13611	13608	0
// OP_ADDRESS	13537	117	13614
// OP_STOREP_V	286	13614	0
// OP_ADDRESS	13537	119	13617
// OP_LOAD_V	13537	113	13618
// OP_STORE_V	13618	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	13617	0
// OP_ADDRESS	13537	150	13621
// OP_ADD_F	31	230	13622
// OP_STOREP_F	13622	13621	0
// OP_ADDRESS	13537	148	13623
// OP_STOREP_FNC	521	13623	0
// OP_DONE	0	0	0
void (entity globaldef004294, float globaldef004295, float globaldef004296) LaunchMissile = 
{
    local vector globaldef004297;
    local vector globaldef004301;
    local float globaldef004305;
    makevectors(self.angles);
    globaldef004297 = ((self.enemy.origin + self.enemy.mins) + (self.enemy.size * 0.7)) - globaldef004294.origin;
    globaldef004305 = vlen(globaldef004297) / globaldef004295;
    globaldef004301 = self.enemy.velocity;
    globaldef004301_z = FALSE;
    globaldef004297 = globaldef004297 + (globaldef004301 * globaldef004305);
    globaldef004297 = normalize(globaldef004297);
    globaldef004297 = (globaldef004297 + ((globaldef004296 * v_up) * (random() - globaldef000522))) + ((globaldef004296 * v_right) * (random() - globaldef000522));
    globaldef004294.velocity = globaldef004297 * globaldef004295;
    globaldef004294.angles = VEC_ORIGIN;
    globaldef004294.angles_y = vectoyaw(globaldef004294.velocity);
    globaldef004294.nextthink = time + MOVETYPE_FLY;
    globaldef004294.think = SUB_Remove;
};

void () func001225;
void () func001217;
// func001196
// function begins at statement 21377, parm_start=13626
// OP_LOAD_F	28	378	13634
// OP_LT	31	13634	13635
// OP_IFNOT	13635	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	3191	0	13636
// OP_IFNOT	13636	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	3193	245	13637
// OP_IFNOT	13637	8	0
// OP_LOAD_F	28	372	13638
// OP_NE_F	13638	373	13639
// OP_IFNOT	13639	4	0
// OP_ADDRESS	28	372	13640
// OP_STOREP_F	373	13640	0
// OP_CALL0	13624	0	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	13641
// OP_STORE_ENT	13641	13632	0
// OP_LOAD_V	28	105	13642
// OP_LOAD_V	28	166	13645
// OP_ADD_V	13642	13645	13648
// OP_STORE_V	13648	13626	0
// OP_LOAD_V	13632	105	13651
// OP_LOAD_V	13632	166	13654
// OP_ADD_V	13651	13654	13657
// OP_STORE_V	13657	13629	0
// OP_STORE_V	13626	4	0
// OP_STORE_V	13629	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_E	78	13632	13660
// OP_IFNOT	13660	8	0
// OP_LOAD_F	28	372	13661
// OP_NE_F	13661	373	13662
// OP_IFNOT	13662	4	0
// OP_ADDRESS	28	372	13663
// OP_STOREP_F	373	13663	0
// OP_CALL0	13624	0	0
// OP_RETURN	213	0	0
// OP_EQ_F	3193	242	13664
// OP_IFNOT	13664	3	0
// OP_STORE_F	3263	13633	0
// OP_GOTO	10	0	0
// OP_EQ_F	3193	243	13665
// OP_IFNOT	13665	3	0
// OP_STORE_F	4474	13633	0
// OP_GOTO	6	0	0
// OP_EQ_F	3193	244	13666
// OP_IFNOT	13666	3	0
// OP_STORE_F	3267	13633	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	13633	0
// OP_CALL0	457	0	0
// OP_LT	1	13633	13667
// OP_IFNOT	13667	4	0
// OP_ADDRESS	28	372	13668
// OP_STOREP_F	376	13668	0
// OP_RETURN	214	0	0
// OP_EQ_F	3193	244	13669
// OP_IFNOT	13669	8	0
// OP_LOAD_F	28	372	13670
// OP_NE_F	13670	373	13671
// OP_IFNOT	13671	4	0
// OP_ADDRESS	28	372	13672
// OP_STOREP_F	373	13672	0
// OP_CALL0	13624	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	372	13673
// OP_NE_F	13673	374	13674
// OP_IFNOT	13674	4	0
// OP_ADDRESS	28	372	13675
// OP_STOREP_F	374	13675	0
// OP_CALL0	13625	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () func001196 = 
{
    local vector globaldef004308;
    local vector globaldef004312;
    local entity globaldef004316;
    local float globaldef004317;
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!globaldef001534)
    {
        return FALSE;
    }
    
    
    if(globaldef001536 == RANGE_FAR)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            func001225();
        }
        
        return FALSE;
    }
    
    globaldef004316 = self.enemy;
    globaldef004308 = self.origin + self.view_ofs;
    globaldef004312 = globaldef004316.origin + globaldef004316.view_ofs;
    traceline(globaldef004308, globaldef004312, FALSE, self);
    
    if(trace_ent != globaldef004316)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            func001225();
        }
        
        return FALSE;
    }
    
    if(globaldef001536 == RANGE_MELEE)
    {
        globaldef004317 = 0.9;
    }
    else
    {
        if(globaldef001536 == RANGE_NEAR)
        {
            globaldef004317 = 0.6;
        }
        else
        {
            if(globaldef001536 == RANGE_MID)
            {
                globaldef004317 = 0.2;
            }
            else
            {
                globaldef004317 = FALSE;
            }
            
        }
        
    }
    
    
    if(random() < globaldef004317)
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    if(globaldef001536 == RANGE_MID)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            func001225();
        }
        
    }
    else
    {
        
        if(self.attack_state != AS_SLIDING)
        {
            self.attack_state = AS_SLIDING;
            func001217();
        }
        
    }
    
    return FALSE;
};

// func001197
// function begins at statement 21453, parm_start=13677
// OP_GE	3193	244	13677
// OP_NOT_F	3191	0	13678
// OP_OR	13677	13678	13679
// OP_IFNOT	13679	6	0
// OP_ADDRESS	28	372	13680
// OP_STOREP_F	373	13680	0
// OP_ADDRESS	28	148	13681
// OP_STOREP_FNC	13624	13681	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	372	13682
// OP_STOREP_F	374	13682	0
// OP_ADDRESS	28	148	13683
// OP_STOREP_FNC	13625	13683	0
// OP_DONE	0	0	0
void () func001197 = 
{
    if((globaldef001536 >= RANGE_MID) || !globaldef001534)
    {
        self.attack_state = AS_STRAIGHT;
        self.think = func001225;
    }
    else
    {
        self.attack_state = AS_SLIDING;
        self.think = func001217;
    }
    
};

// func001198
// function begins at statement 21467, parm_start=13685
// OP_LOAD_ENT	28	201	13691
// OP_LOAD_F	13691	152	13692
// OP_GT	13692	213	13693
// OP_IFNOT	13693	47	0
// OP_LOAD_ENT	28	201	13694
// OP_ADDRESS	13694	133	13695
// OP_LOAD_ENT	28	201	13696
// OP_LOAD_F	13696	133	13697
// OP_BITOR	13697	339	13698
// OP_STOREP_F	13698	13695	0
// OP_LOAD_ENT	28	181	13699
// OP_LOAD_V	13699	117	13700
// OP_STORE_V	13700	4	0
// OP_CALL1	452	0	0
// OP_LOAD_ENT	28	181	13703
// OP_LOAD_V	13703	105	13704
// OP_LOAD_V	28	202	13707
// OP_MUL_FV	792	13707	13710
// OP_SUB_V	13704	13710	13713
// OP_STORE_V	13713	13688	0
// OP_LOAD_V	28	105	13716
// OP_SUB_V	13688	13716	13719
// OP_STORE_V	13719	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	13685	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13722	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	13723
// OP_STORE_V	13723	4	0
// OP_STORE_V	13685	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	350	113	13726
// OP_MUL_VF	13685	740	13729
// OP_STOREP_V	13729	13726	0
// OP_ADDRESS	350	201	13732
// OP_LOAD_ENT	28	201	13733
// OP_STOREP_ENT	13733	13732	0
// OP_ADDRESS	350	129	13734
// OP_STOREP_S	6115	13734	0
// OP_STORE_V	350	4	0
// OP_STORE_V	13735	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func001198 = 
{
    local vector globaldef004320;
    local vector globaldef004324;
    
    if(self.owner.health > FALSE)
    {
        self.owner.effects = self.owner.effects | EF_MUZZLEFLASH;
        makevectors(self.enemy.angles);
        globaldef004324 = self.enemy.origin - (globaldef000775 * self.movedir);
        globaldef004320 = normalize(globaldef004324 - self.origin);
        sound(self, CHAN_WEAPON, "wizard/wattack.wav", TRUE, ATTN_NORM);
        func000278(self.origin, globaldef004320);
        newmis.velocity = globaldef004320 * globaldef000723;
        newmis.owner = self.owner;
        newmis.classname = "wizspike";
        setmodel(newmis, "progs/w_spike.mdl");
        setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    }
    
    remove(self);
};

// func001199
// function begins at statement 21520, parm_start=13737
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13722	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	175	13738
// OP_LOAD_V	28	117	13741
// OP_STOREP_V	13741	13738	0
// OP_LOAD_V	28	117	13744
// OP_STORE_V	13744	4	0
// OP_CALL1	452	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	13737	0
// OP_ADDRESS	13737	201	13747
// OP_STOREP_ENT	28	13747	0
// OP_ADDRESS	13737	150	13748
// OP_ADD_F	31	4474	13749
// OP_STOREP_F	13749	13748	0
// OP_STORE_V	13737	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	13737	4	0
// OP_LOAD_V	28	105	13750
// OP_ADD_V	13750	13753	13756
// OP_MUL_VF	59	5693	13759
// OP_ADD_V	13756	13759	13762
// OP_MUL_VF	65	5693	13765
// OP_ADD_V	13762	13765	13768
// OP_STORE_V	13768	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	13737	181	13771
// OP_LOAD_ENT	28	181	13772
// OP_STOREP_ENT	13772	13771	0
// OP_ADDRESS	13737	150	13773
// OP_ADD_F	31	4478	13774
// OP_STOREP_F	13774	13773	0
// OP_ADDRESS	13737	148	13775
// OP_STOREP_FNC	13684	13775	0
// OP_ADDRESS	13737	202	13776
// OP_STOREP_V	65	13776	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	13737	0
// OP_ADDRESS	13737	201	13779
// OP_STOREP_ENT	28	13779	0
// OP_ADDRESS	13737	150	13780
// OP_ADD_F	31	214	13781
// OP_STOREP_F	13781	13780	0
// OP_STORE_V	13737	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	13737	4	0
// OP_LOAD_V	28	105	13782
// OP_ADD_V	13782	13753	13785
// OP_MUL_VF	59	5693	13788
// OP_ADD_V	13785	13788	13791
// OP_MUL_VF	65	13794	13795
// OP_ADD_V	13791	13795	13798
// OP_STORE_V	13798	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	13737	181	13801
// OP_LOAD_ENT	28	181	13802
// OP_STOREP_ENT	13802	13801	0
// OP_ADDRESS	13737	150	13803
// OP_ADD_F	31	3409	13804
// OP_STOREP_F	13804	13803	0
// OP_ADDRESS	13737	148	13805
// OP_STOREP_FNC	13684	13805	0
// OP_ADDRESS	13737	202	13806
// OP_SUB_V	286	65	13809
// OP_STOREP_V	13809	13806	0
// OP_DONE	0	0	0
void () func001199 = 
{
    local entity globaldef004331;
    sound(self, CHAN_WEAPON, "wizard/wattack.wav", TRUE, ATTN_NORM);
    self.v_angle = self.angles;
    makevectors(self.angles);
    globaldef004331 = spawn();
    globaldef004331.owner = self;
    globaldef004331.nextthink = time + 0.6;
    setsize(globaldef004331, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef004331, ((self.origin + '0 0 30') + (v_forward * 14)) + (v_right * 14));
    globaldef004331.enemy = self.enemy;
    globaldef004331.nextthink = time + 0.8;
    globaldef004331.think = func001198;
    globaldef004331.movedir = v_right;
    globaldef004331 = spawn();
    globaldef004331.owner = self;
    globaldef004331.nextthink = time + TRUE;
    setsize(globaldef004331, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef004331, ((self.origin + '0 0 30') + (v_forward * 14)) + (v_right * -14));
    globaldef004331.enemy = self.enemy;
    globaldef004331.nextthink = time + 0.3;
    globaldef004331.think = func001198;
    globaldef004331.movedir = VEC_ORIGIN - v_right;
};

// func001200
// function begins at statement 21594, parm_start=13813
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	13814
// OP_STORE_F	13814	13813	0
// OP_LOAD_F	28	448	13815
// OP_LT	13815	31	13816
// OP_IFNOT	13816	20	0
// OP_ADDRESS	28	448	13817
// OP_ADD_F	31	216	13818
// OP_STOREP_F	13818	13817	0
// OP_GT	13813	13819	13820
// OP_IFNOT	13820	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13821	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_LT	13813	1825	13822
// OP_IFNOT	13822	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13823	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func001200 = 
{
    local float globaldef004335;
    globaldef004335 = random() * MOVETYPE_FLY;
    
    if(self.waitmin < time)
    {
        self.waitmin = time + FL_SWIM;
        
        if(globaldef004335 > 4.5)
        {
            sound(self, CHAN_VOICE, "wizard/widle1.wav", TRUE, ATTN_IDLE);
        }
        
        
        if(globaldef004335 < 1.5)
        {
            sound(self, CHAN_VOICE, "wizard/widle2.wav", TRUE, ATTN_IDLE);
        }
        
    }
    
    return;
};

// func001201
// function begins at statement 21621, parm_start=13825
// OP_STATE	213	13825	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001201 = [0, func001202]
{
    func000190();
};

// func001202
// function begins at statement 21624, parm_start=13826
// OP_STATE	214	13826	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001202 = [1, func001203]
{
    func000190();
};

// func001203
// function begins at statement 21627, parm_start=13827
// OP_STATE	216	13827	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001203 = [2, func001204]
{
    func000190();
};

// func001204
// function begins at statement 21630, parm_start=13828
// OP_STATE	228	13828	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001204 = [3, func001205]
{
    func000190();
};

// func001205
// function begins at statement 21633, parm_start=13829
// OP_STATE	229	13829	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001205 = [4, func001206]
{
    func000190();
};

// func001206
// function begins at statement 21636, parm_start=13830
// OP_STATE	230	13830	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001206 = [5, func001207]
{
    func000190();
};

// func001207
// function begins at statement 21639, parm_start=13831
// OP_STATE	231	13831	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001207 = [6, func001208]
{
    func000190();
};

// func001208
// function begins at statement 21642, parm_start=13832
// OP_STATE	232	13824	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001208 = [7, func001201]
{
    func000190();
};

// func001209
// function begins at statement 21645, parm_start=13833
// OP_STATE	213	13833	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_CALL0	13812	0	0
// OP_DONE	0	0	0
void () func001209 = [0, func001210]
{
    func000189(FL_CLIENT);
    func001200();
};

// func001210
// function begins at statement 21650, parm_start=13834
// OP_STATE	214	13834	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001210 = [1, func001211]
{
    func000189(FL_CLIENT);
};

// func001211
// function begins at statement 21654, parm_start=13835
// OP_STATE	216	13835	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001211 = [2, func001212]
{
    func000189(FL_CLIENT);
};

// func001212
// function begins at statement 21658, parm_start=13836
// OP_STATE	228	13836	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001212 = [3, func001213]
{
    func000189(FL_CLIENT);
};

// func001213
// function begins at statement 21662, parm_start=13837
// OP_STATE	229	13837	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001213 = [4, func001214]
{
    func000189(FL_CLIENT);
};

// func001214
// function begins at statement 21666, parm_start=13838
// OP_STATE	230	13838	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001214 = [5, func001215]
{
    func000189(FL_CLIENT);
};

// func001215
// function begins at statement 21670, parm_start=13839
// OP_STATE	231	13839	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001215 = [6, func001216]
{
    func000189(FL_CLIENT);
};

// func001216
// function begins at statement 21674, parm_start=13840
// OP_STATE	232	13832	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001216 = [7, func001209]
{
    func000189(FL_CLIENT);
};

// func001217
// function begins at statement 21678, parm_start=13840
// OP_STATE	213	13840	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	13812	0	0
// OP_DONE	0	0	0
void () func001217 = [0, func001218]
{
    func000198(FL_CLIENT);
    func001200();
};

// func001218
// function begins at statement 21683, parm_start=13841
// OP_STATE	214	13841	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001218 = [1, func001219]
{
    func000198(FL_CLIENT);
};

// func001219
// function begins at statement 21687, parm_start=13842
// OP_STATE	216	13842	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001219 = [2, func001220]
{
    func000198(FL_CLIENT);
};

// func001220
// function begins at statement 21691, parm_start=13843
// OP_STATE	228	13843	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001220 = [3, func001221]
{
    func000198(FL_CLIENT);
};

// func001221
// function begins at statement 21695, parm_start=13844
// OP_STATE	229	13844	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001221 = [4, func001222]
{
    func000198(FL_CLIENT);
};

// func001222
// function begins at statement 21699, parm_start=13845
// OP_STATE	230	13845	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001222 = [5, func001223]
{
    func000198(FL_CLIENT);
};

// func001223
// function begins at statement 21703, parm_start=13846
// OP_STATE	231	13846	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001223 = [6, func001224]
{
    func000198(FL_CLIENT);
};

// func001224
// function begins at statement 21707, parm_start=13847
// OP_STATE	232	13625	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001224 = [7, func001217]
{
    func000198(FL_CLIENT);
};

// func001225
// function begins at statement 21711, parm_start=13847
// OP_STATE	765	13847	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	13812	0	0
// OP_DONE	0	0	0
void () func001225 = [15, func001226]
{
    func000198(FL_INWATER);
    func001200();
};

// func001226
// function begins at statement 21716, parm_start=13848
// OP_STATE	218	13848	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001226 = [16, func001227]
{
    func000198(FL_INWATER);
};

// func001227
// function begins at statement 21720, parm_start=13849
// OP_STATE	6892	13849	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001227 = [17, func001228]
{
    func000198(FL_INWATER);
};

// func001228
// function begins at statement 21724, parm_start=13850
// OP_STATE	6133	13850	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001228 = [18, func001229]
{
    func000198(FL_INWATER);
};

// func001229
// function begins at statement 21728, parm_start=13851
// OP_STATE	6895	13851	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001229 = [19, func001230]
{
    func000198(FL_INWATER);
};

// func001230
// function begins at statement 21732, parm_start=13852
// OP_STATE	2323	13852	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001230 = [20, func001231]
{
    func000198(FL_INWATER);
};

// func001231
// function begins at statement 21736, parm_start=13853
// OP_STATE	12465	13853	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001231 = [21, func001232]
{
    func000198(FL_INWATER);
};

// func001232
// function begins at statement 21740, parm_start=13854
// OP_STATE	12467	13854	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001232 = [22, func001233]
{
    func000198(FL_INWATER);
};

// func001233
// function begins at statement 21744, parm_start=13855
// OP_STATE	304	13855	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001233 = [23, func001234]
{
    func000198(FL_INWATER);
};

// func001234
// function begins at statement 21748, parm_start=13856
// OP_STATE	736	13856	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001234 = [24, func001235]
{
    func000198(FL_INWATER);
};

// func001235
// function begins at statement 21752, parm_start=13857
// OP_STATE	305	13857	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001235 = [25, func001236]
{
    func000198(FL_INWATER);
};

// func001236
// function begins at statement 21756, parm_start=13858
// OP_STATE	306	13858	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001236 = [26, func001237]
{
    func000198(FL_INWATER);
};

// func001237
// function begins at statement 21760, parm_start=13859
// OP_STATE	307	13859	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001237 = [27, func001238]
{
    func000198(FL_INWATER);
};

// func001238
// function begins at statement 21764, parm_start=13860
// OP_STATE	308	13624	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001238 = [28, func001225]
{
    func000198(FL_INWATER);
};

// func001239
// function begins at statement 21768, parm_start=13861
// OP_STATE	9664	13861	0
// OP_CALL0	3190	0	0
// OP_CALL0	13736	0	0
// OP_DONE	0	0	0
void () func001239 = [29, func001240]
{
    func000165();
    func001199();
};

// func001240
// function begins at statement 21772, parm_start=13862
// OP_STATE	309	13862	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001240 = [30, func001241]
{
    func000165();
};

// func001241
// function begins at statement 21775, parm_start=13863
// OP_STATE	310	13863	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001241 = [31, func001242]
{
    func000165();
};

// func001242
// function begins at statement 21778, parm_start=13864
// OP_STATE	219	13864	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001242 = [32, func001243]
{
    func000165();
};

// func001243
// function begins at statement 21781, parm_start=13865
// OP_STATE	312	13865	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001243 = [33, func001244]
{
    func000165();
};

// func001244
// function begins at statement 21784, parm_start=13866
// OP_STATE	9671	13866	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001244 = [34, func001245]
{
    func000165();
};

// func001245
// function begins at statement 21787, parm_start=13867
// OP_STATE	312	13867	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001245 = [33, func001246]
{
    func000165();
};

// func001246
// function begins at statement 21790, parm_start=13868
// OP_STATE	219	13868	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001246 = [32, func001247]
{
    func000165();
};

// func001247
// function begins at statement 21793, parm_start=13869
// OP_STATE	310	13869	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001247 = [31, func001248]
{
    func000165();
};

// func001248
// function begins at statement 21796, parm_start=13870
// OP_STATE	309	13624	0
// OP_CALL0	3190	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	3163	0	0
// OP_CALL0	13676	0	0
// OP_DONE	0	0	0
void () func001248 = [30, func001225]
{
    func000165();
    SUB_AttackFinished(FL_SWIM);
    func001197();
};

// func001249
// function begins at statement 21802, parm_start=13871
// OP_STATE	9995	13871	0
// OP_DONE	0	0	0
void () func001249 = [42, func001250]
{
};

// func001250
// function begins at statement 21804, parm_start=13872
// OP_STATE	9997	13872	0
// OP_DONE	0	0	0
void () func001250 = [43, func001251]
{
};

// func001251
// function begins at statement 21806, parm_start=13873
// OP_STATE	9999	13873	0
// OP_DONE	0	0	0
void () func001251 = [44, func001252]
{
};

// func001252
// function begins at statement 21808, parm_start=13874
// OP_STATE	2598	13624	0
// OP_DONE	0	0	0
void () func001252 = [45, func001225]
{
};

// func001253
// function begins at statement 21810, parm_start=13875
// OP_STATE	10002	13875	0
// OP_ADDRESS	28	114	13876
// OP_CALL0	457	0	0
// OP_MUL_F	5347	1	13877
// OP_ADD_F	9761	13877	13878
// OP_STOREP_F	13878	13876	0
// OP_ADDRESS	28	115	13879
// OP_CALL0	457	0	0
// OP_MUL_F	5347	1	13880
// OP_ADD_F	9761	13880	13881
// OP_STOREP_F	13881	13879	0
// OP_ADDRESS	28	116	13882
// OP_CALL0	457	0	0
// OP_MUL_F	1997	1	13883
// OP_ADD_F	1997	13883	13884
// OP_STOREP_F	13884	13882	0
// OP_ADDRESS	28	182	13885
// OP_LOAD_F	28	182	13886
// OP_LOAD_F	28	182	13887
// OP_BITAND	13887	223	13888
// OP_SUB_F	13886	13888	13889
// OP_STOREP_F	13889	13885	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13890	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001253 = [46, func001254]
{
    self.velocity_x = -200 + (400 * random());
    self.velocity_y = -200 + (400 * random());
    self.velocity_z = 100 + (100 * random());
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    sound(self, CHAN_VOICE, "wizard/wdeath.wav", TRUE, ATTN_NORM);
};

// func001254
// function begins at statement 21839, parm_start=13891
// OP_STATE	10004	13891	0
// OP_DONE	0	0	0
void () func001254 = [47, func001255]
{
};

// func001255
// function begins at statement 21841, parm_start=13892
// OP_STATE	10006	13892	0
// OP_ADDRESS	28	104	13893
// OP_STOREP_F	237	13893	0
// OP_DONE	0	0	0
void () func001255 = [48, func001256]
{
    self.solid = SOLID_NOT;
};

// func001256
// function begins at statement 21845, parm_start=13894
// OP_STATE	10008	13894	0
// OP_DONE	0	0	0
void () func001256 = [49, func001257]
{
};

// func001257
// function begins at statement 21847, parm_start=13895
// OP_STATE	1470	13895	0
// OP_DONE	0	0	0
void () func001257 = [50, func001258]
{
};

// func001258
// function begins at statement 21849, parm_start=13896
// OP_STATE	9911	13896	0
// OP_DONE	0	0	0
void () func001258 = [51, func001259]
{
};

// func001259
// function begins at statement 21851, parm_start=13897
// OP_STATE	9913	13897	0
// OP_DONE	0	0	0
void () func001259 = [52, func001260]
{
};

// func001260
// function begins at statement 21853, parm_start=13898
// OP_STATE	9915	13897	0
// OP_DONE	0	0	0
void () func001260 = [53, func001260]
{
};

// func001261
// function begins at statement 21855, parm_start=13899
// OP_LOAD_F	28	152	13899
// OP_LT	13899	9236	13900
// OP_IFNOT	13900	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	13901	4	0
// OP_LOAD_F	28	152	13902
// OP_STORE_V	13902	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13903
// OP_STORE_V	13903	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13904
// OP_STORE_V	13904	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13905
// OP_STORE_V	13905	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_CALL0	13874	0	0
// OP_DONE	0	0	0
void () func001261 = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_wizard.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        return;
    }
    
    func001253();
};

// func001262
// function begins at statement 21883, parm_start=13907
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13909	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	1536	13910
// OP_GT	13910	13908	13911
// OP_IFNOT	13911	2	0
// OP_RETURN	0	0	0
// OP_CALL0	13870	0	0
// OP_DONE	0	0	0
void (entity globaldef004401, float globaldef004402) func001262 = 
{
    sound(self, CHAN_VOICE, "wizard/wpain.wav", TRUE, ATTN_NORM);
    
    if((random() * 70) > globaldef004402)
    {
        return;
    }
    
    func001249();
};

// func001263
// function begins at statement 21896, parm_start=13913
// OP_CALL0	13860	0	0
// OP_DONE	0	0	0
void () func001263 = 
{
    func001239();
};

// monster_wizard
// function begins at statement 21898, parm_start=13914
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13914	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13901	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13735	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13915	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13722	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13890	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13821	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13823	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13909	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3671	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13916
// OP_STOREP_F	240	13916	0
// OP_ADDRESS	28	103	13917
// OP_STOREP_F	229	13917	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13914	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13918
// OP_STOREP_F	2805	13918	0
// OP_ADDRESS	28	361	13919
// OP_STOREP_FNC	13824	13919	0
// OP_ADDRESS	28	362	13920
// OP_STOREP_FNC	13832	13920	0
// OP_ADDRESS	28	363	13921
// OP_STOREP_FNC	13624	13921	0
// OP_ADDRESS	28	364	13922
// OP_STOREP_FNC	13912	13922	0
// OP_ADDRESS	28	366	13923
// OP_STOREP_FNC	13906	13923	0
// OP_ADDRESS	28	367	13924
// OP_STOREP_FNC	13898	13924	0
// OP_CALL0	10156	0	0
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
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = func001201;
    self.th_walk = func001209;
    self.th_run = func001225;
    self.th_missile = func001263;
    self.th_pain = func001262;
    self.th_die = func001261;
    func000533();
};

