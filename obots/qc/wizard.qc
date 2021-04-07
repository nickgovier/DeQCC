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

// monster_boss
// function begins at statement 23921, parm_start=14839
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14823	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6694	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14603	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14605	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	6659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14815	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14839	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14712	4	0
// OP_CALL1	469	0	0
// OP_ADD_F	40	214	14840
// OP_STORE_F	14840	40	0
// OP_ADDRESS	28	147	14841
// OP_STOREP_FNC	14819	14841	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/boss.mdl");
    precache_model("progs/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + TRUE;
    self.use = func001676;
};

entity globaldef004954;
entity globaldef004955;
float globaldef004956;
// func001678
// function begins at statement 23948, parm_start=14846
// OP_GE	31	14844	14852
// OP_IFNOT	14852	6	0
// OP_STORE_ENT	14842	28	0
// OP_CALL0	10226	0	0
// OP_STORE_ENT	14843	28	0
// OP_CALL0	10226	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	14842	134	14853
// OP_LOAD_V	14842	138	14856
// OP_ADD_V	14853	14856	14859
// OP_MUL_VF	14859	539	14862
// OP_STORE_V	14862	14846	0
// OP_LOAD_F	14842	97	14865
// OP_SUB_F	14865	218	14866
// OP_STORE_F	14866	14848	0
// OP_LOAD_V	14843	134	14867
// OP_LOAD_V	14843	138	14870
// OP_ADD_V	14867	14870	14873
// OP_MUL_VF	14873	539	14876
// OP_STORE_V	14876	14849	0
// OP_LOAD_F	14843	97	14879
// OP_SUB_F	14879	218	14880
// OP_STORE_F	14880	14851	0
// OP_SUB_V	14849	14846	14881
// OP_STORE_V	14881	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	1	1997	14884
// OP_SUB_V	14849	14884	14887
// OP_STORE_V	14887	14849	0
// OP_ADDRESS	28	150	14890
// OP_ADD_F	31	3036	14891
// OP_STOREP_F	14891	14890	0
// OP_ADDRESS	28	148	14892
// OP_STOREP_FNC	14845	14892	0
// OP_STORE_V	344	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	322	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14846	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14847	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14848	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14849	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14850	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14851	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () func001678 = 
{
    local vector globaldef004958;
    local vector globaldef004962;
    
    if(time >= globaldef004956)
    {
        self = globaldef004954;
        func000539();
        self = globaldef004955;
        func000539();
        return;
    }
    
    globaldef004958 = (globaldef004954.mins + globaldef004954.maxs) * globaldef000522;
    globaldef004958_z = globaldef004954.absmin_z - FL_INWATER;
    globaldef004962 = (globaldef004955.mins + globaldef004955.maxs) * globaldef000522;
    globaldef004962_z = globaldef004955.absmin_z - FL_INWATER;
    globaldef004962 = globaldef004962 - ((normalize(globaldef004962 - globaldef004958)) * 100);
    self.nextthink = time + 0.1;
    self.think = func001678;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, globaldef004958_x);
    WriteCoord(MSG_ALL, globaldef004958_y);
    WriteCoord(MSG_ALL, globaldef004958_z);
    WriteCoord(MSG_ALL, globaldef004962_x);
    WriteCoord(MSG_ALL, globaldef004962_y);
    WriteCoord(MSG_ALL, globaldef004962_z);
};

// func001679
// function begins at statement 24010, parm_start=14894
// OP_ADD_F	31	214	14894
// OP_GE	14844	14894	14895
// OP_IFNOT	14895	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14842	0
// OP_STORE_V	14842	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14843	0
// OP_NOT_ENT	14842	0	14897
// OP_NOT_ENT	14843	0	14898
// OP_OR	14897	14898	14899
// OP_IFNOT	14899	4	0
// OP_STORE_V	14900	4	0
// OP_CALL1	473	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	14842	438	14901
// OP_NE_F	14901	282	14902
// OP_LOAD_F	14842	438	14903
// OP_NE_F	14903	283	14904
// OP_AND	14902	14904	14905
// OP_LOAD_F	14843	438	14906
// OP_NE_F	14906	282	14907
// OP_LOAD_F	14843	438	14908
// OP_NE_F	14908	283	14909
// OP_AND	14907	14909	14910
// OP_OR	14905	14910	14911
// OP_LOAD_F	14842	438	14912
// OP_LOAD_F	14843	438	14913
// OP_NE_F	14912	14913	14914
// OP_OR	14911	14914	14915
// OP_IFNOT	14915	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	14842	150	14916
// OP_STOREP_F	276	14916	0
// OP_ADDRESS	14843	150	14917
// OP_STOREP_F	276	14917	0
// OP_ADD_F	31	214	14918
// OP_STORE_F	14918	14844	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	14845	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	14919	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	14920
// OP_IFNOT	14920	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14921
// OP_STOREP_ENT	351	14921	0
// OP_LOAD_F	14842	438	14922
// OP_EQ_F	14922	282	14923
// OP_LOAD_F	28	152	14924
// OP_GT	14924	213	14925
// OP_AND	14923	14925	14926
// OP_IFNOT	14926	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14839	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	152	14927
// OP_LOAD_F	28	152	14928
// OP_SUB_F	14928	214	14929
// OP_STOREP_F	14929	14927	0
// OP_LOAD_F	28	152	14930
// OP_GE	14930	216	14931
// OP_IFNOT	14931	3	0
// OP_CALL0	14680	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	14932
// OP_EQ_F	14932	214	14933
// OP_IFNOT	14933	3	0
// OP_CALL0	14690	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	14934
// OP_EQ_F	14934	213	14935
// OP_IFNOT	14935	2	0
// OP_CALL0	14700	0	0
// OP_DONE	0	0	0
void () func001679 = 
{
    
    if(globaldef004956 >= (time + TRUE))
    {
        return;
    }
    
    globaldef004954 = find(world, target, "lightning");
    globaldef004955 = find(globaldef004954, target, "lightning");
    
    if(!globaldef004954 || !globaldef004955)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((globaldef004954.state != STATE_TOP) && (globaldef004954.state != STATE_BOTTOM)) || ((globaldef004955.state != STATE_TOP) && (globaldef004955.state != STATE_BOTTOM))) || (globaldef004954.state != globaldef004955.state))
    {
        return;
    }
    
    globaldef004954.nextthink = CONTENT_EMPTY;
    globaldef004955.nextthink = CONTENT_EMPTY;
    globaldef004956 = time + TRUE;
    sound(self, CHAN_VOICE, "misc/power.wav", TRUE, ATTN_NORM);
    func001678();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((globaldef004954.state == STATE_TOP) && (self.health > FALSE))
    {
        sound(self, CHAN_VOICE, "boss1/pain.wav", TRUE, ATTN_NORM);
        self.health = self.health - TRUE;
        if(self.health >= FL_SWIM)
        {
            func001635();
        }
        else
        {
            if(self.health == TRUE)
            {
                func001645();
            }
            else
            {
                
                if(self.health == FALSE)
                {
                    func001655();
                }
                
            }
            
        }
        
    }
    
};

// event_lightning
// function begins at statement 24102, parm_start=14937
// OP_ADDRESS	28	147	14937
// OP_STOREP_FNC	14893	14937	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = func001679;
};

// hknight_magica1
// function begins at statement 24854, parm_start=15255
// OP_STATE	9955	15255	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magica1 = [79, func001815]
{
    func000165();
};

// func001815
// function begins at statement 24857, parm_start=15256
// OP_STATE	2805	15256	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001815 = [80, func001816]
{
    func000165();
};

// func001816
// function begins at statement 24860, parm_start=15257
// OP_STATE	8204	15257	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001816 = [81, func001817]
{
    func000165();
};

// func001817
// function begins at statement 24863, parm_start=15258
// OP_STATE	9959	15258	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001817 = [82, func001818]
{
    func000165();
};

// func001818
// function begins at statement 24866, parm_start=15259
// OP_STATE	9961	15259	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001818 = [83, func001819]
{
    func000165();
};

// func001819
// function begins at statement 24869, parm_start=15260
// OP_STATE	7694	15260	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001819 = [84, func001820]
{
    func000165();
};

// func001820
// function begins at statement 24872, parm_start=15261
// OP_STATE	9963	15261	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001820 = [85, func001821]
{
    func001747(CONTENT_SOLID);
};

// func001821
// function begins at statement 24876, parm_start=15262
// OP_STATE	9965	15262	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001821 = [86, func001822]
{
    func001747(CONTENT_EMPTY);
};

// func001822
// function begins at statement 24880, parm_start=15263
// OP_STATE	9967	15263	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001822 = [87, func001823]
{
    func001747(FALSE);
};

// func001823
// function begins at statement 24884, parm_start=15264
// OP_STATE	9969	15264	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001823 = [88, func001824]
{
    func001747(TRUE);
};

// func001824
// function begins at statement 24888, parm_start=15265
// OP_STATE	9971	15265	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001824 = [89, func001825]
{
    func001747(FL_SWIM);
};

// func001825
// function begins at statement 24892, parm_start=15266
// OP_STATE	2658	15266	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001825 = [90, func001826]
{
    func001747(MOVETYPE_WALK);
};

// func001826
// function begins at statement 24896, parm_start=15267
// OP_STATE	9974	15267	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001826 = [91, func001827]
{
    func000165();
};

// func001827
// function begins at statement 24899, parm_start=15268
// OP_STATE	9976	15093	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001827 = [92, func001779]
{
    func000165();
};

// hknight_magicb1
// function begins at statement 24902, parm_start=15269
// OP_STATE	9978	15269	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 = [93, func001829]
{
    func000165();
};

// func001829
// function begins at statement 24905, parm_start=15270
// OP_STATE	9979	15270	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001829 = [94, func001830]
{
    func000165();
};

// func001830
// function begins at statement 24908, parm_start=15271
// OP_STATE	9981	15271	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001830 = [95, func001831]
{
    func000165();
};

// func001831
// function begins at statement 24911, parm_start=15272
// OP_STATE	9983	15272	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001831 = [96, func001832]
{
    func000165();
};

// func001832
// function begins at statement 24914, parm_start=15273
// OP_STATE	9985	15273	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001832 = [97, func001833]
{
    func000165();
};

// func001833
// function begins at statement 24917, parm_start=15274
// OP_STATE	9987	15274	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001833 = [98, func001834]
{
    func000165();
};

// func001834
// function begins at statement 24920, parm_start=15275
// OP_STATE	9989	15275	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001834 = [99, func001835]
{
    func001747(CONTENT_SOLID);
};

// func001835
// function begins at statement 24924, parm_start=15276
// OP_STATE	1997	15276	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001835 = [100, func001836]
{
    func001747(CONTENT_EMPTY);
};

// func001836
// function begins at statement 24928, parm_start=15277
// OP_STATE	8107	15277	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001836 = [101, func001837]
{
    func001747(FALSE);
};

// func001837
// function begins at statement 24932, parm_start=15278
// OP_STATE	8109	15278	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001837 = [102, func001838]
{
    func001747(TRUE);
};

// func001838
// function begins at statement 24936, parm_start=15279
// OP_STATE	8111	15279	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001838 = [103, func001839]
{
    func001747(FL_SWIM);
};

// func001839
// function begins at statement 24940, parm_start=15280
// OP_STATE	8114	15280	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001839 = [104, func001840]
{
    func001747(MOVETYPE_WALK);
};

// func001840
// function begins at statement 24944, parm_start=15281
// OP_STATE	9562	15093	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001840 = [105, func001779]
{
    func000165();
};

// func001841
// function begins at statement 24947, parm_start=15282
// OP_STATE	14471	15282	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001841 = [155, func001842]
{
    func000165();
};

// func001842
// function begins at statement 24950, parm_start=15283
// OP_STATE	14473	15283	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001842 = [156, func001843]
{
    func000165();
};

// func001843
// function begins at statement 24953, parm_start=15284
// OP_STATE	14475	15284	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001843 = [157, func001844]
{
    func000165();
};

// func001844
// function begins at statement 24956, parm_start=15285
// OP_STATE	14477	15285	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001844 = [158, func001845]
{
    func000165();
};

// func001845
// function begins at statement 24959, parm_start=15286
// OP_STATE	14479	15286	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001845 = [159, func001846]
{
    func000165();
};

// func001846
// function begins at statement 24962, parm_start=15287
// OP_STATE	12014	15287	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001846 = [160, func001847]
{
    func001747(CONTENT_SOLID);
};

// func001847
// function begins at statement 24966, parm_start=15288
// OP_STATE	2155	15288	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001847 = [161, func001848]
{
    func001747(CONTENT_EMPTY);
};

// func001848
// function begins at statement 24970, parm_start=15289
// OP_STATE	14483	15289	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001848 = [162, func001849]
{
    func001747(FALSE);
};

// func001849
// function begins at statement 24974, parm_start=15290
// OP_STATE	14486	15290	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001849 = [163, func001850]
{
    func001747(TRUE);
};

// func001850
// function begins at statement 24978, parm_start=15291
// OP_STATE	14488	15291	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001850 = [164, func001851]
{
    func001747(FL_SWIM);
};

// func001851
// function begins at statement 24982, parm_start=15292
// OP_STATE	14490	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001851 = [165, func001779]
{
    func001747(MOVETYPE_WALK);
};

// func001852
// function begins at statement 24986, parm_start=15292
// OP_STATE	6707	15292	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001852 = [63, func001853]
{
    func000166(20);
};

// func001853
// function begins at statement 24990, parm_start=15293
// OP_STATE	220	15293	0
// OP_STORE_V	305	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001853 = [64, func001854]
{
    func000166(SVC_SIGNONNUM);
};

// func001854
// function begins at statement 24994, parm_start=15294
// OP_STATE	9934	15294	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001854 = [65, func001855]
{
    func000166(18);
};

// func001855
// function begins at statement 24998, parm_start=15295
// OP_STATE	9936	15295	0
// OP_STORE_V	218	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001855 = [66, func001856]
{
    func000166(FL_INWATER);
};

// func001856
// function begins at statement 25002, parm_start=15296
// OP_STATE	9938	15296	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001856 = [67, func001857]
{
    func000166(14);
};

// func001857
// function begins at statement 25006, parm_start=15297
// OP_STATE	8193	15297	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001857 = [68, func001858]
{
    func000166(20);
    func000168();
};

// func001858
// function begins at statement 25011, parm_start=15298
// OP_STATE	8196	15298	0
// OP_STORE_V	12465	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001858 = [69, func001859]
{
    func000166(21);
    func000168();
};

// func001859
// function begins at statement 25016, parm_start=15299
// OP_STATE	1536	15299	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001859 = [70, func001860]
{
    func000166(globaldef000775);
    func000168();
};

// func001860
// function begins at statement 25021, parm_start=15300
// OP_STATE	8201	15300	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001860 = [71, func001861]
{
    func000166(20);
    func000168();
};

// func001861
// function begins at statement 25026, parm_start=15301
// OP_STATE	9943	15301	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001861 = [72, func001862]
{
    func000166(20);
    func000168();
};

// func001862
// function begins at statement 25031, parm_start=15302
// OP_STATE	5487	15302	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001862 = [73, func001863]
{
    func000166(18);
    func000168();
};

// func001863
// function begins at statement 25036, parm_start=15303
// OP_STATE	9946	15303	0
// OP_STORE_V	218	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001863 = [74, func001864]
{
    func000166(FL_INWATER);
};

// func001864
// function begins at statement 25040, parm_start=15304
// OP_STATE	9173	15304	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001864 = [75, func001865]
{
    func000166(14);
};

// func001865
// function begins at statement 25044, parm_start=15305
// OP_STATE	9949	15305	0
// OP_STORE_V	305	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001865 = [76, func001866]
{
    func000166(SVC_SIGNONNUM);
};

// func001866
// function begins at statement 25048, parm_start=15306
// OP_STATE	9951	15306	0
// OP_STORE_V	12465	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001866 = [77, func001867]
{
    func000166(21);
};

// func001867
// function begins at statement 25052, parm_start=15307
// OP_STATE	9953	15093	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001867 = [78, func001779]
{
    func000166(globaldef000775);
};

// func001868
// function begins at statement 25056, parm_start=15308
// OP_STATE	9577	15308	0
// OP_CALL0	15175	0	0
// OP_STORE_V	304	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001868 = [106, func001869]
{
    func001749();
    func000166(SVC_TEMPENTITY);
    func000168();
};

// func001869
// function begins at statement 25062, parm_start=15309
// OP_STATE	9591	15309	0
// OP_STORE_V	6892	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001869 = [107, func001870]
{
    func000166(17);
    func000168();
};

// func001870
// function begins at statement 25067, parm_start=15310
// OP_STATE	9597	15310	0
// OP_STORE_V	791	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001870 = [108, func001871]
{
    func000166(globaldef000774);
    func000168();
};

// func001871
// function begins at statement 25072, parm_start=15311
// OP_STATE	9600	15311	0
// OP_STORE_V	12467	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001871 = [109, func001872]
{
    func000166(22);
    func000168();
};

// func001872
// function begins at statement 25077, parm_start=15312
// OP_STATE	9603	15312	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001872 = [110, func001873]
{
    func000166(18);
    func000168();
};

// func001873
// function begins at statement 25082, parm_start=15313
// OP_STATE	2224	15307	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001873 = [111, func001868]
{
    func000166(FL_CLIENT);
    func000168();
};

// func001874
// function begins at statement 25087, parm_start=15314
// OP_STATE	9608	15314	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001874 = [112, func001875]
{
    func000166(MOVETYPE_FLYMISSILE);
};

// func001875
// function begins at statement 25091, parm_start=15315
// OP_STATE	9473	15315	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001875 = [113, func001876]
{
    func000166(MOVETYPE_TOSS);
};

// func001876
// function begins at statement 25095, parm_start=15316
// OP_STATE	9479	15316	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001876 = [114, func001877]
{
    func000166(globaldef000775);
};

// func001877
// function begins at statement 25099, parm_start=15317
// OP_STATE	9482	15317	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001877 = [115, func001878]
{
    func000166(MOVETYPE_STEP);
};

// func001878
// function begins at statement 25103, parm_start=15318
// OP_STATE	9485	15318	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001878 = [116, func001879]
{
    func000166(MOVETYPE_PUSH);
    func000168();
};

// func001879
// function begins at statement 25108, parm_start=15319
// OP_STATE	9488	15319	0
// OP_STORE_V	765	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001879 = [117, func001880]
{
    func000166(globaldef000748);
    func000168();
};

// func001880
// function begins at statement 25113, parm_start=15320
// OP_STATE	9491	15320	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001880 = [118, func001881]
{
    func000166(FL_CLIENT);
    func000168();
};

// func001881
// function begins at statement 25118, parm_start=15321
// OP_STATE	9493	15321	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001881 = [119, func001882]
{
    func000166(FL_SWIM);
    func000168();
};

// func001882
// function begins at statement 25123, parm_start=15322
// OP_STATE	3584	15322	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001882 = [120, func001883]
{
    func000168();
};

// func001883
// function begins at statement 25126, parm_start=15323
// OP_STATE	9498	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001883 = [121, func001779]
{
    func000166(MOVETYPE_WALK);
};

// func001884
// function begins at statement 25130, parm_start=15324
// OP_STATE	9501	15324	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001884 = [122, func001885]
{
    func000166(TRUE);
};

// func001885
// function begins at statement 25134, parm_start=15325
// OP_STATE	12627	15325	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001885 = [123, func001886]
{
    func000166(globaldef000775);
};

// func001886
// function begins at statement 25138, parm_start=15326
// OP_STATE	12629	15326	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001886 = [124, func001887]
{
    func000166(MOVETYPE_FLYMISSILE);
};

// func001887
// function begins at statement 25142, parm_start=15327
// OP_STATE	9503	15327	0
// OP_STORE_V	236	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001887 = [125, func001888]
{
    func000166(MOVETYPE_BOUNCEMISSILE);
};

// func001888
// function begins at statement 25146, parm_start=15328
// OP_STATE	9506	15328	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001888 = [126, func001889]
{
    func000166(MOVETYPE_BOUNCE);
    func000168();
};

// func001889
// function begins at statement 25151, parm_start=15329
// OP_STATE	9509	15329	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001889 = [127, func001890]
{
    func000166(MOVETYPE_PUSH);
    func000168();
};

// func001890
// function begins at statement 25156, parm_start=15330
// OP_STATE	221	15330	0
// OP_STORE_V	791	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001890 = [128, func001891]
{
    func000166(globaldef000774);
    func000168();
};

// func001891
// function begins at statement 25161, parm_start=15331
// OP_STATE	12637	15331	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001891 = [129, func001892]
{
    func000166(FL_SWIM);
    func000168();
};

// func001892
// function begins at statement 25166, parm_start=15332
// OP_STATE	12639	15332	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001892 = [130, func001893]
{
    func000166(MOVETYPE_WALK);
    func000168();
};

// func001893
// function begins at statement 25171, parm_start=15333
// OP_STATE	9513	15333	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001893 = [131, func001894]
{
    func000166(FALSE);
};

// func001894
// function begins at statement 25175, parm_start=15334
// OP_STATE	9516	15093	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001894 = [132, func001779]
{
    func000166(FALSE);
};

// func001895
// function begins at statement 25179, parm_start=15335
// OP_STATE	9519	15335	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001895 = [133, func001896]
{
    func000166(FL_SWIM);
};

// func001896
// function begins at statement 25183, parm_start=15336
// OP_STATE	9522	15336	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001896 = [134, func001897]
{
    func000166(FALSE);
};

// func001897
// function begins at statement 25187, parm_start=15337
// OP_STATE	12645	15337	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001897 = [135, func001898]
{
    func000166(FALSE);
};

// func001898
// function begins at statement 25191, parm_start=15338
// OP_STATE	14438	15338	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001898 = [136, func001899]
{
    func000168();
};

// func001899
// function begins at statement 25194, parm_start=15339
// OP_STATE	9524	15339	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001899 = [137, func001900]
{
    func000168();
};

// func001900
// function begins at statement 25197, parm_start=15340
// OP_STATE	9527	15340	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001900 = [138, func001901]
{
    func000168();
};

// func001901
// function begins at statement 25200, parm_start=15341
// OP_STATE	9530	15341	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001901 = [139, func001902]
{
    func000166(TRUE);
};

// func001902
// function begins at statement 25204, parm_start=15342
// OP_STATE	9533	15342	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001902 = [140, func001903]
{
    func000166(MOVETYPE_STEP);
};

// func001903
// function begins at statement 25208, parm_start=15343
// OP_STATE	14444	15343	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001903 = [141, func001904]
{
    func000166(MOVETYPE_FLY);
};

// func001904
// function begins at statement 25212, parm_start=15344
// OP_STATE	14446	15344	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001904 = [142, func001905]
{
    func000166(MOVETYPE_WALK);
    func000168();
};

// func001905
// function begins at statement 25217, parm_start=15345
// OP_STATE	14448	15345	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001905 = [143, func001906]
{
    func000166(FL_SWIM);
    func000168();
};

// func001906
// function begins at statement 25222, parm_start=15346
// OP_STATE	14450	15346	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001906 = [144, func001907]
{
    func000166(FL_SWIM);
    func000168();
};

// func001907
// function begins at statement 25227, parm_start=15347
// OP_STATE	14452	15347	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001907 = [145, func001908]
{
    func000166(FALSE);
};

// func001908
// function begins at statement 25231, parm_start=15348
// OP_STATE	14454	15348	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001908 = [146, func001909]
{
    func000166(FALSE);
};

// func001909
// function begins at statement 25235, parm_start=15349
// OP_STATE	14456	15349	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001909 = [147, func001910]
{
    func000166(FALSE);
};

// func001910
// function begins at statement 25239, parm_start=15350
// OP_STATE	14458	15350	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001910 = [148, func001911]
{
    func000166(TRUE);
};

// func001911
// function begins at statement 25243, parm_start=15351
// OP_STATE	14460	15351	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001911 = [149, func001912]
{
    func000166(TRUE);
    func000168();
};

// func001912
// function begins at statement 25248, parm_start=15352
// OP_STATE	2003	15352	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001912 = [150, func001913]
{
    func000166(MOVETYPE_WALK);
    func000168();
};

// func001913
// function begins at statement 25253, parm_start=15353
// OP_STATE	14463	15353	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001913 = [151, func001914]
{
    func000166(MOVETYPE_STEP);
    func000168();
};

// func001914
// function begins at statement 25258, parm_start=15354
// OP_STATE	14465	15354	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001914 = [152, func001915]
{
    func000166(MOVETYPE_TOSS);
};

// func001915
// function begins at statement 25262, parm_start=15355
// OP_STATE	14467	15355	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001915 = [153, func001916]
{
    func000166(MOVETYPE_PUSH);
};

// func001916
// function begins at statement 25266, parm_start=15356
// OP_STATE	14469	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001916 = [154, func001779]
{
    func000166(MOVETYPE_WALK);
};

// func001917
// function begins at statement 25270, parm_start=15356
// OP_CALL0	457	0	0
// OP_LT	1	3267	15356
// OP_IFNOT	15356	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15357	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001917 = 
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "hknight/idle.wav", TRUE, ATTN_NORM);
    }
    
};

// func001918
// function begins at statement 25280, parm_start=15359
// OP_LOAD_F	28	379	15361
// OP_GT	15361	31	15362
// OP_IFNOT	15362	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15217	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	379	15363
// OP_SUB_F	31	15363	15364
// OP_GT	15364	230	15365
// OP_IFNOT	15365	6	0
// OP_CALL0	15215	0	0
// OP_ADDRESS	28	379	15366
// OP_ADD_F	31	214	15367
// OP_STOREP_F	15367	15366	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	309	15368
// OP_GT	15368	15360	15369
// OP_IFNOT	15369	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	15370
// OP_ADD_F	31	214	15371
// OP_STOREP_F	15371	15370	0
// OP_CALL0	15215	0	0
// OP_DONE	0	0	0
void (entity globaldef005233, float globaldef005234) func001918 = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/pain1.wav", TRUE, ATTN_NORM);
    
    if((time - self.pain_finished) > MOVETYPE_FLY)
    {
        func001787();
        self.pain_finished = time + TRUE;
        return;
    }
    
    
    if((random() * SVC_INTERMISSION) > globaldef005234)
    {
        return;
    }
    
    self.pain_finished = time + TRUE;
    func001787();
};

float globaldef005235;
// func001919
// function begins at statement 25309, parm_start=15374
// OP_ADD_F	15372	214	15374
// OP_STORE_F	15374	15372	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	15375	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_EQ_F	15372	214	15376
// OP_IFNOT	15376	3	0
// OP_CALL0	15313	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	15372	216	15377
// OP_IFNOT	15377	3	0
// OP_CALL0	15323	0	0
// OP_GOTO	5	0	0
// OP_EQ_F	15372	228	15378
// OP_IFNOT	15378	3	0
// OP_CALL0	15334	0	0
// OP_STORE_F	213	15372	0
// OP_DONE	0	0	0
void () func001919 = 
{
    globaldef005235 = globaldef005235 + TRUE;
    sound(self, CHAN_WEAPON, "hknight/slash1.wav", TRUE, ATTN_NORM);
    if(globaldef005235 == TRUE)
    {
        func001874();
    }
    else
    {
        if(globaldef005235 == FL_SWIM)
        {
            func001884();
        }
        else
        {
            
            if(globaldef005235 == MOVETYPE_WALK)
            {
                func001895();
                globaldef005235 = FALSE;
            }
            
        }
        
    }
    
};

// monster_hell_knight
// function begins at statement 25330, parm_start=15380
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15380	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15147	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15247	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15154	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15252	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15217	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3683	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15381	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	15375	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15357	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15382	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	13255	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13254	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	15383
// OP_STOREP_F	240	15383	0
// OP_ADDRESS	28	103	15384
// OP_STOREP_F	229	15384	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15380	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15385
// OP_STOREP_F	738	15385	0
// OP_ADDRESS	28	361	15386
// OP_STOREP_FNC	15179	15386	0
// OP_ADDRESS	28	362	15387
// OP_STOREP_FNC	15188	15387	0
// OP_ADDRESS	28	363	15388
// OP_STOREP_FNC	15093	15388	0
// OP_ADDRESS	28	365	15389
// OP_STOREP_FNC	15373	15389	0
// OP_ADDRESS	28	364	15390
// OP_STOREP_FNC	15281	15390	0
// OP_ADDRESS	28	366	15391
// OP_STOREP_FNC	15358	15391	0
// OP_ADDRESS	28	367	15392
// OP_STOREP_FNC	15244	15392	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_hell_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/hknight.mdl");
    precache_model2("progs/k_spike.mdl");
    precache_model2("progs/h_hellkn.mdl");
    precache_sound2("hknight/attack1.wav");
    precache_sound2("hknight/death1.wav");
    precache_sound2("hknight/pain1.wav");
    precache_sound2("hknight/sight1.wav");
    precache_sound("hknight/hit.wav");
    precache_sound2("hknight/slash1.wav");
    precache_sound2("hknight/idle.wav");
    precache_sound2("hknight/grunt.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/hknight.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = globaldef000721;
    self.th_stand = func001750;
    self.th_walk = func001759;
    self.th_run = func001779;
    self.th_melee = func001919;
    self.th_missile = func001841;
    self.th_pain = func001918;
    self.th_die = func001813;
    func000531();
};

