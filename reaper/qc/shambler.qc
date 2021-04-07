// sham_stand1
// function begins at statement 13519, parm_start=8651
// OP_STATE	213	8651	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand1 = [0, sham_stand2]
{
    ai_stand();
};

// sham_stand2
// function begins at statement 13522, parm_start=8652
// OP_STATE	214	8652	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand2 = [1, sham_stand3]
{
    ai_stand();
};

// sham_stand3
// function begins at statement 13525, parm_start=8653
// OP_STATE	216	8653	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand3 = [2, sham_stand4]
{
    ai_stand();
};

// sham_stand4
// function begins at statement 13528, parm_start=8654
// OP_STATE	228	8654	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand4 = [3, sham_stand5]
{
    ai_stand();
};

// sham_stand5
// function begins at statement 13531, parm_start=8655
// OP_STATE	229	8655	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand5 = [4, sham_stand6]
{
    ai_stand();
};

// sham_stand6
// function begins at statement 13534, parm_start=8656
// OP_STATE	230	8656	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand6 = [5, sham_stand7]
{
    ai_stand();
};

// sham_stand7
// function begins at statement 13537, parm_start=8657
// OP_STATE	231	8657	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand7 = [6, sham_stand8]
{
    ai_stand();
};

// sham_stand8
// function begins at statement 13540, parm_start=8658
// OP_STATE	232	8658	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand8 = [7, sham_stand9]
{
    ai_stand();
};

// sham_stand9
// function begins at statement 13543, parm_start=8659
// OP_STATE	217	8659	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand9 = [8, sham_stand10]
{
    ai_stand();
};

// sham_stand10
// function begins at statement 13546, parm_start=8660
// OP_STATE	234	8660	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand10 = [9, sham_stand11]
{
    ai_stand();
};

// sham_stand11
// function begins at statement 13549, parm_start=8661
// OP_STATE	235	8661	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand11 = [10, sham_stand12]
{
    ai_stand();
};

// sham_stand12
// function begins at statement 13552, parm_start=8662
// OP_STATE	236	8662	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand12 = [11, sham_stand13]
{
    ai_stand();
};

// sham_stand13
// function begins at statement 13555, parm_start=8663
// OP_STATE	2717	8663	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand13 = [12, sham_stand14]
{
    ai_stand();
};

// sham_stand14
// function begins at statement 13558, parm_start=8664
// OP_STATE	8413	8664	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand14 = [13, sham_stand15]
{
    ai_stand();
};

// sham_stand15
// function begins at statement 13561, parm_start=8665
// OP_STATE	3382	8665	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand15 = [14, sham_stand16]
{
    ai_stand();
};

// sham_stand16
// function begins at statement 13564, parm_start=8666
// OP_STATE	2246	8666	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand16 = [15, sham_stand17]
{
    ai_stand();
};

// sham_stand17
// function begins at statement 13567, parm_start=8667
// OP_STATE	218	8650	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () sham_stand17 = [16, sham_stand1]
{
    ai_stand();
};

// sham_walk1
// function begins at statement 13570, parm_start=8668
// OP_STATE	5450	8668	0
// OP_STORE_V	235	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk1 = [17, sham_walk2]
{
    ai_walk(MOVETYPE_BOUNCE);
};

// sham_walk2
// function begins at statement 13574, parm_start=8669
// OP_STATE	3866	8669	0
// OP_STORE_V	234	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk2 = [18, sham_walk3]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};

// sham_walk3
// function begins at statement 13578, parm_start=8670
// OP_STATE	8422	8670	0
// OP_STORE_V	234	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk3 = [19, sham_walk4]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};

// sham_walk4
// function begins at statement 13582, parm_start=8671
// OP_STATE	576	8671	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk4 = [20, sham_walk5]
{
    ai_walk(MOVETYPE_FLY);
};

// sham_walk5
// function begins at statement 13586, parm_start=8672
// OP_STATE	8425	8672	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk5 = [21, sham_walk6]
{
    ai_walk(MOVETYPE_TOSS);
};

// sham_walk6
// function begins at statement 13590, parm_start=8673
// OP_STATE	8428	8673	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk6 = [22, sham_walk7]
{
    ai_walk(12);
};

// sham_walk7
// function begins at statement 13594, parm_start=8674
// OP_STATE	301	8674	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk7 = [23, sham_walk8]
{
    ai_walk(FL_CLIENT);
};

// sham_walk8
// function begins at statement 13598, parm_start=8675
// OP_STATE	5005	8675	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk8 = [24, sham_walk9]
{
    ai_walk(MOVETYPE_WALK);
};

// sham_walk9
// function begins at statement 13602, parm_start=8676
// OP_STATE	2261	8676	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk9 = [25, sham_walk10]
{
    ai_walk(13);
};

// sham_walk10
// function begins at statement 13606, parm_start=8677
// OP_STATE	8433	8677	0
// OP_STORE_V	234	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk10 = [26, sham_walk11]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};

// sham_walk11
// function begins at statement 13610, parm_start=8678
// OP_STATE	302	8678	0
// OP_STORE_V	232	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () sham_walk11 = [27, sham_walk12]
{
    ai_walk(MOVETYPE_PUSH);
};

// sham_walk12
// function begins at statement 13614, parm_start=8679
// OP_STATE	303	8667	0
// OP_STORE_V	232	4	0
// OP_CALL1	1731	0	0
// OP_CALL0	452	0	0
// OP_GT	1	2355	8679
// OP_IFNOT	8679	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () sham_walk12 = [28, sham_walk1]
{
    ai_walk(MOVETYPE_PUSH);
    
    if(random() > 0.8)
    {
        sound(self, CHAN_VOICE, "shambler/sidle.wav", TRUE, ATTN_IDLE);
    }
    
};

// sham_run1
// function begins at statement 13627, parm_start=8682
// OP_STATE	5692	8682	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () sham_run1 = [29, sham_run2]
{
    ai_run(KINDA_WANT);
};

// sham_run2
// function begins at statement 13631, parm_start=8683
// OP_STATE	304	8683	0
// OP_STORE_V	5005	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () sham_run2 = [30, sham_run3]
{
    ai_run(24);
};

// sham_run3
// function begins at statement 13635, parm_start=8684
// OP_STATE	305	8684	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () sham_run3 = [31, sham_run4]
{
    ai_run(KINDA_WANT);
};

// sham_run4
// function begins at statement 13639, parm_start=8685
// OP_STATE	219	8685	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () sham_run4 = [32, sham_run5]
{
    ai_run(KINDA_WANT);
};

// sham_run5
// function begins at statement 13643, parm_start=8686
// OP_STATE	307	8686	0
// OP_STORE_V	5005	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () sham_run5 = [33, sham_run6]
{
    ai_run(24);
};

// sham_run6
// function begins at statement 13647, parm_start=8687
// OP_STATE	5699	8681	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_CALL0	452	0	0
// OP_GT	1	2355	8687
// OP_IFNOT	8687	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () sham_run6 = [34, sham_run1]
{
    ai_run(KINDA_WANT);
    
    if(random() > 0.8)
    {
        sound(self, CHAN_VOICE, "shambler/sidle.wav", TRUE, ATTN_IDLE);
    }
    
};

// sham_smash1
// function begins at statement 13660, parm_start=8688
// OP_STATE	575	8688	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8689	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash1 = [35, sham_smash2]
{
    sound(self, CHAN_VOICE, "shambler/melee1.wav", TRUE, ATTN_NORM);
    ai_charge(FL_SWIM);
};

// sham_smash2
// function begins at statement 13670, parm_start=8690
// OP_STATE	5683	8690	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash2 = [36, sham_smash3]
{
    ai_charge(MOVETYPE_TOSS);
};

// sham_smash3
// function begins at statement 13674, parm_start=8691
// OP_STATE	5685	8691	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash3 = [37, sham_smash4]
{
    ai_charge(MOVETYPE_TOSS);
};

// sham_smash4
// function begins at statement 13678, parm_start=8692
// OP_STATE	5687	8692	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash4 = [38, sham_smash5]
{
    ai_charge(MOVETYPE_FLY);
};

// sham_smash5
// function begins at statement 13682, parm_start=8693
// OP_STATE	5689	8693	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash5 = [39, sham_smash6]
{
    ai_charge(MOVETYPE_STEP);
};

// sham_smash6
// function begins at statement 13686, parm_start=8694
// OP_STATE	2101	8694	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash6 = [40, sham_smash7]
{
    ai_charge(TRUE);
};

// sham_smash7
// function begins at statement 13690, parm_start=8695
// OP_STATE	6042	8695	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash7 = [41, sham_smash8]
{
    ai_charge(FALSE);
};

// sham_smash8
// function begins at statement 13694, parm_start=8696
// OP_STATE	6044	8696	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash8 = [42, sham_smash9]
{
    ai_charge(FALSE);
};

// sham_smash9
// function begins at statement 13698, parm_start=8697
// OP_STATE	6046	8697	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash9 = [43, sham_smash10]
{
    ai_charge(FALSE);
};

// sham_smash10
// function begins at statement 13702, parm_start=8698
// OP_STATE	6048	8698	0
// OP_LOAD_ENT	28	181	8703
// OP_NOT_ENT	8703	0	8704
// OP_IFNOT	8704	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_LOAD_ENT	28	181	8705
// OP_LOAD_V	8705	105	8706
// OP_LOAD_V	28	105	8709
// OP_SUB_V	8706	8709	8712
// OP_STORE_V	8712	8699	0
// OP_STORE_V	8699	4	0
// OP_CALL1	457	0	0
// OP_GT	1	574	8715
// OP_IFNOT	8715	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	8716
// OP_STORE_V	8716	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	8717
// OP_IFNOT	8717	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1	8718
// OP_CALL0	452	0	0
// OP_ADD_F	8718	1	8719
// OP_MUL_F	8719	2101	8720
// OP_STORE_F	8720	8702	0
// OP_LOAD_ENT	28	181	8721
// OP_STORE_V	8721	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8702	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8722	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	8723
// OP_MUL_VF	59	218	8726
// OP_ADD_V	8723	8726	8729
// OP_STORE_V	8729	4	0
// OP_CALL0	3103	0	0
// OP_MUL_F	1	574	8732
// OP_MUL_FV	8732	65	8733
// OP_STORE_V	8733	7	0
// OP_CALL2	3173	0	0
// OP_LOAD_V	28	105	8736
// OP_MUL_VF	59	218	8739
// OP_ADD_V	8736	8739	8742
// OP_STORE_V	8742	4	0
// OP_CALL0	3103	0	0
// OP_MUL_F	1	574	8745
// OP_MUL_FV	8745	65	8746
// OP_STORE_V	8746	7	0
// OP_CALL2	3173	0	0
// OP_DONE	0	0	0
void () sham_smash10 = [44, sham_smash11]
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(FALSE);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > MUST_HAVE)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 40;
    T_Damage(self.enemy, self, self, ldmg);
    sound(self, CHAN_VOICE, "shambler/smack.wav", TRUE, ATTN_NORM);
    SpawnMeatSpray(self.origin + (v_forward * FL_INWATER), (crandom() * MUST_HAVE) * v_right);
    SpawnMeatSpray(self.origin + (v_forward * FL_INWATER), (crandom() * MUST_HAVE) * v_right);
};

// sham_smash11
// function begins at statement 13764, parm_start=8749
// OP_STATE	1770	8749	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash11 = [45, sham_smash12]
{
    ai_charge(MOVETYPE_FLY);
};

// sham_smash12
// function begins at statement 13768, parm_start=8750
// OP_STATE	6051	8681	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_smash12 = [46, sham_run1]
{
    ai_charge(MOVETYPE_STEP);
};

// ShamClaw
// function begins at statement 13772, parm_start=8751
// OP_LOAD_ENT	28	181	8756
// OP_NOT_ENT	8756	0	8757
// OP_IFNOT	8757	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_LOAD_ENT	28	181	8758
// OP_LOAD_V	8758	105	8759
// OP_LOAD_V	28	105	8762
// OP_SUB_V	8759	8762	8765
// OP_STORE_V	8765	8752	0
// OP_STORE_V	8752	4	0
// OP_CALL1	457	0	0
// OP_GT	1	574	8768
// OP_IFNOT	8768	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1	8769
// OP_CALL0	452	0	0
// OP_ADD_F	8769	1	8770
// OP_MUL_F	8770	576	8771
// OP_STORE_F	8771	8755	0
// OP_LOAD_ENT	28	181	8772
// OP_STORE_V	8772	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8755	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8722	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_IFNOT	8751	11	0
// OP_LOAD_V	28	117	8773
// OP_STORE_V	8773	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	8776
// OP_MUL_VF	59	218	8779
// OP_ADD_V	8776	8779	8782
// OP_STORE_V	8782	4	0
// OP_MUL_FV	8751	65	8785
// OP_STORE_V	8785	7	0
// OP_CALL2	3173	0	0
// OP_DONE	0	0	0
void (float side) ShamClaw = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(MOVETYPE_BOUNCE);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > MUST_HAVE)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * KINDA_WANT;
    T_Damage(self.enemy, self, self, ldmg);
    sound(self, CHAN_VOICE, "shambler/smack.wav", TRUE, ATTN_NORM);
    
    if(side)
    {
        makevectors(self.angles);
        SpawnMeatSpray(self.origin + (v_forward * FL_INWATER), side * v_right);
    }
    
};

// sham_swingl1
// function begins at statement 13819, parm_start=8788
// OP_STATE	5961	8788	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8789	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl1 = [56, sham_swingl2]
{
    sound(self, CHAN_VOICE, "shambler/melee2.wav", TRUE, ATTN_NORM);
    ai_charge(MOVETYPE_FLY);
};

// sham_swingl2
// function begins at statement 13829, parm_start=8790
// OP_STATE	5963	8790	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl2 = [57, sham_swingl3]
{
    ai_charge(MOVETYPE_WALK);
};

// sham_swingl3
// function begins at statement 13833, parm_start=8791
// OP_STATE	5965	8791	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl3 = [58, sham_swingl4]
{
    ai_charge(MOVETYPE_PUSH);
};

// sham_swingl4
// function begins at statement 13837, parm_start=8792
// OP_STATE	5967	8792	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl4 = [59, sham_swingl5]
{
    ai_charge(MOVETYPE_WALK);
};

// sham_swingl5
// function begins at statement 13841, parm_start=8793
// OP_STATE	730	8793	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl5 = [60, sham_swingl6]
{
    ai_charge(MOVETYPE_PUSH);
};

// sham_swingl6
// function begins at statement 13845, parm_start=8794
// OP_STATE	5969	8794	0
// OP_STORE_V	234	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl6 = [61, sham_swingl7]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};

// sham_swingl7
// function begins at statement 13849, parm_start=8795
// OP_STATE	5971	8795	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_STORE_V	2229	4	0
// OP_CALL1	8750	0	0
// OP_DONE	0	0	0
void () sham_swingl7 = [62, sham_swingl8]
{
    ai_charge(MOVETYPE_FLY);
    ShamClaw(250);
};

// sham_swingl8
// function begins at statement 13855, parm_start=8796
// OP_STATE	4366	8796	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingl8 = [63, sham_swingl9]
{
    ai_charge(MOVETYPE_STEP);
};

// sham_swingl9
// function begins at statement 13859, parm_start=8797
// OP_STATE	220	8681	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	8797
// OP_IFNOT	8797	3	0
// OP_ADDRESS	28	148	8798
// OP_STOREP_FNC	1143	8798	0
// OP_DONE	0	0	0
void () sham_swingl9 = [64, sham_run1]
{
    ai_charge(FL_CLIENT);
    
    if(random() < 0.5)
    {
        self.think = sham_swingr1;
    }
    
};

// sham_swingr1
// function begins at statement 13868, parm_start=8799
// OP_STATE	6053	8799	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8689	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr1 = [47, sham_swingr2]
{
    sound(self, CHAN_VOICE, "shambler/melee1.wav", TRUE, ATTN_NORM);
    ai_charge(TRUE);
};

// sham_swingr2
// function begins at statement 13878, parm_start=8800
// OP_STATE	6055	8800	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr2 = [48, sham_swingr3]
{
    ai_charge(FL_CLIENT);
};

// sham_swingr3
// function begins at statement 13882, parm_start=8801
// OP_STATE	6057	8801	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr3 = [49, sham_swingr4]
{
    ai_charge(14);
};

// sham_swingr4
// function begins at statement 13886, parm_start=8802
// OP_STATE	756	8802	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr4 = [50, sham_swingr5]
{
    ai_charge(MOVETYPE_PUSH);
};

// sham_swingr5
// function begins at statement 13890, parm_start=8803
// OP_STATE	5951	8803	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr5 = [51, sham_swingr6]
{
    ai_charge(MOVETYPE_WALK);
};

// sham_swingr6
// function begins at statement 13894, parm_start=8804
// OP_STATE	5953	8804	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr6 = [52, sham_swingr7]
{
    ai_charge(MOVETYPE_TOSS);
};

// sham_swingr7
// function begins at statement 13898, parm_start=8805
// OP_STATE	5955	8805	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_STORE_V	8806	4	0
// OP_CALL1	8750	0	0
// OP_DONE	0	0	0
void () sham_swingr7 = [53, sham_swingr8]
{
    ai_charge(MOVETYPE_TOSS);
    ShamClaw(-250);
};

// sham_swingr8
// function begins at statement 13904, parm_start=8807
// OP_STATE	5957	8807	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () sham_swingr8 = [54, sham_swingr9]
{
    ai_charge(MOVETYPE_WALK);
};

// sham_swingr9
// function begins at statement 13908, parm_start=8808
// OP_STATE	5959	8681	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	8808
// OP_IFNOT	8808	3	0
// OP_ADDRESS	28	148	8809
// OP_STOREP_FNC	1144	8809	0
// OP_DONE	0	0	0
void () sham_swingr9 = [55, sham_run1]
{
    ai_charge(TRUE);
    ai_charge(MOVETYPE_BOUNCE);
    
    if(random() < 0.5)
    {
        self.think = sham_swingl1;
    }
    
};

// sham_melee
// function begins at statement 13919, parm_start=8811
// OP_CALL0	452	0	0
// OP_STORE_F	1	8811	0
// OP_GT	8811	2345	8812
// OP_LOAD_F	28	152	8813
// OP_EQ_F	8813	580	8814
// OP_OR	8812	8814	8815
// OP_IFNOT	8815	3	0
// OP_CALL0	1142	0	0
// OP_GOTO	6	0	0
// OP_GT	8811	1369	8816
// OP_IFNOT	8816	3	0
// OP_CALL0	1143	0	0
// OP_GOTO	2	0	0
// OP_CALL0	1144	0	0
// OP_DONE	0	0	0
void () sham_melee = 
{
    local float chance;
    chance = random();
    if((chance > 0.6) || (self.health == SEARCH_RADIUS))
    {
        sham_smash1();
    }
    else
    {
        if(chance > 0.3)
        {
            sham_swingr1();
        }
        else
        {
            sham_swingl1();
        }
        
    }
    
};

// CastLightning
// function begins at statement 13934, parm_start=8818
// OP_ADDRESS	28	133	8824
// OP_LOAD_F	28	133	8825
// OP_BITOR	8825	334	8826
// OP_STOREP_F	8826	8824	0
// OP_CALL0	1148	0	0
// OP_LOAD_V	28	105	8827
// OP_ADD_V	8827	8830	8833
// OP_STORE_V	8833	8818	0
// OP_LOAD_ENT	28	181	8836
// OP_LOAD_V	8836	105	8837
// OP_ADD_V	8837	3119	8840
// OP_SUB_V	8840	8818	8843
// OP_STORE_V	8843	8821	0
// OP_STORE_V	8821	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	8821	0
// OP_STORE_V	8818	4	0
// OP_LOAD_V	28	105	8846
// OP_MUL_VF	8821	580	8849
// OP_ADD_V	8846	8849	8852
// OP_STORE_V	8852	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	313	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	8818	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	8819	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	8820	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	8818	4	0
// OP_STORE_V	71	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	3504	0	0
// OP_DONE	0	0	0
void () CastLightning = 
{
    local vector org;
    local vector dir;
    self.effects = self.effects | EF_MUZZLEFLASH;
    ai_face();
    org = self.origin + '0 0 40';
    dir = (self.enemy.origin + '0 0 16') - org;
    dir = normalize(dir);
    traceline(org, self.origin + (dir * SEARCH_RADIUS), TRUE, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING1);
    WriteEntity(MSG_BROADCAST, self);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, org_y);
    WriteCoord(MSG_BROADCAST, org_z);
    WriteCoord(MSG_BROADCAST, trace_endpos_x);
    WriteCoord(MSG_BROADCAST, trace_endpos_y);
    WriteCoord(MSG_BROADCAST, trace_endpos_z);
    LightningDamage(org, trace_endpos, self, MOVETYPE_BOUNCE);
};

// sham_magic1
// function begins at statement 13991, parm_start=8856
// OP_STATE	5975	8856	0
// OP_CALL0	1148	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8857	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () sham_magic1 = [65, sham_magic2]
{
    ai_face();
    sound(self, CHAN_WEAPON, "shambler/sattck1.wav", TRUE, ATTN_NORM);
};

// sham_magic2
// function begins at statement 14000, parm_start=8858
// OP_STATE	5977	8858	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () sham_magic2 = [66, sham_magic3]
{
    ai_face();
};

// sham_magic3
// function begins at statement 14003, parm_start=8859
// OP_STATE	5979	8859	0
// OP_CALL0	1148	0	0
// OP_ADDRESS	28	150	8860
// OP_LOAD_F	28	150	8861
// OP_ADD_F	8861	1226	8862
// OP_STOREP_F	8862	8860	0
// OP_ADDRESS	28	133	8864
// OP_LOAD_F	28	133	8865
// OP_BITOR	8865	334	8866
// OP_STOREP_F	8866	8864	0
// OP_CALL0	1148	0	0
// OP_ADDRESS	28	201	8867
// OP_CALL0	459	0	0
// OP_STOREP_ENT	1	8867	0
// OP_LOAD_ENT	28	201	8868
// OP_STORE_ENT	8868	8863	0
// OP_STORE_V	8863	4	0
// OP_STORE_V	8869	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	8863	4	0
// OP_LOAD_V	28	105	8870
// OP_STORE_V	8870	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	8863	117	8873
// OP_LOAD_V	28	117	8876
// OP_STOREP_V	8876	8873	0
// OP_ADDRESS	8863	150	8879
// OP_ADD_F	31	3328	8880
// OP_STOREP_F	8880	8879	0
// OP_ADDRESS	8863	148	8881
// OP_STOREP_FNC	519	8881	0
// OP_DONE	0	0	0
void () sham_magic3 = [67, sham_magic4]
{
    local entity o;
    ai_face();
    self.nextthink = self.nextthink + 0.2;
    self.effects = self.effects | EF_MUZZLEFLASH;
    ai_face();
    self.owner = spawn();
    o = self.owner;
    setmodel(o, "progs/s_light.mdl");
    setorigin(o, self.origin);
    o.angles = self.angles;
    o.nextthink = time + 0.7;
    o.think = SUB_Remove;
};

// sham_magic4
// function begins at statement 14035, parm_start=8882
// OP_STATE	5981	8882	0
// OP_ADDRESS	28	133	8883
// OP_LOAD_F	28	133	8884
// OP_BITOR	8884	334	8885
// OP_STOREP_F	8885	8883	0
// OP_LOAD_ENT	28	201	8886
// OP_ADDRESS	8886	131	8887
// OP_STOREP_F	214	8887	0
// OP_DONE	0	0	0
void () sham_magic4 = [68, sham_magic5]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.owner.frame = TRUE;
};

// sham_magic5
// function begins at statement 14044, parm_start=8888
// OP_STATE	5983	8888	0
// OP_ADDRESS	28	133	8889
// OP_LOAD_F	28	133	8890
// OP_BITOR	8890	334	8891
// OP_STOREP_F	8891	8889	0
// OP_LOAD_ENT	28	201	8892
// OP_ADDRESS	8892	131	8893
// OP_STOREP_F	216	8893	0
// OP_DONE	0	0	0
void () sham_magic5 = [69, sham_magic6]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.owner.frame = FL_SWIM;
};

// sham_magic6
// function begins at statement 14053, parm_start=8894
// OP_STATE	5984	8894	0
// OP_LOAD_ENT	28	201	8895
// OP_STORE_V	8895	4	0
// OP_CALL1	460	0	0
// OP_CALL0	8817	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8896	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () sham_magic6 = [70, sham_magic9]
{
    remove(self.owner);
    CastLightning();
    sound(self, CHAN_WEAPON, "shambler/sboom.wav", TRUE, ATTN_NORM);
};

// sham_magic9
// function begins at statement 14065, parm_start=8897
// OP_STATE	3216	8897	0
// OP_CALL0	8817	0	0
// OP_DONE	0	0	0
void () sham_magic9 = [73, sham_magic10]
{
    CastLightning();
};

// sham_magic10
// function begins at statement 14068, parm_start=8898
// OP_STATE	5991	8898	0
// OP_CALL0	8817	0	0
// OP_DONE	0	0	0
void () sham_magic10 = [74, sham_magic11]
{
    CastLightning();
};

// sham_magic11
// function begins at statement 14071, parm_start=8899
// OP_STATE	5993	8899	0
// OP_EQ_F	349	228	8900
// OP_IFNOT	8900	2	0
// OP_CALL0	8817	0	0
// OP_DONE	0	0	0
void () sham_magic11 = [75, sham_magic12]
{
    
    if(skill == MOVETYPE_WALK)
    {
        CastLightning();
    }
    
};

// sham_magic12
// function begins at statement 14076, parm_start=8901
// OP_STATE	5995	8681	0
// OP_DONE	0	0	0
void () sham_magic12 = [76, sham_run1]
{
};

// sham_pain1
// function begins at statement 14078, parm_start=8902
// OP_STATE	5997	8902	0
// OP_DONE	0	0	0
void () sham_pain1 = [77, sham_pain2]
{
};

// sham_pain2
// function begins at statement 14080, parm_start=8903
// OP_STATE	5999	8903	0
// OP_DONE	0	0	0
void () sham_pain2 = [78, sham_pain3]
{
};

// sham_pain3
// function begins at statement 14082, parm_start=8904
// OP_STATE	6001	8904	0
// OP_DONE	0	0	0
void () sham_pain3 = [79, sham_pain4]
{
};

// sham_pain4
// function begins at statement 14084, parm_start=8905
// OP_STATE	1178	8905	0
// OP_DONE	0	0	0
void () sham_pain4 = [80, sham_pain5]
{
};

// sham_pain5
// function begins at statement 14086, parm_start=8906
// OP_STATE	6004	8906	0
// OP_DONE	0	0	0
void () sham_pain5 = [81, sham_pain6]
{
};

// sham_pain6
// function begins at statement 14088, parm_start=8907
// OP_STATE	6006	8681	0
// OP_DONE	0	0	0
void () sham_pain6 = [82, sham_run1]
{
};

// sham_pain
// function begins at statement 14090, parm_start=8908
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8910	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	8911
// OP_LE	8911	213	8912
// OP_IFNOT	8912	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	3543	8913
// OP_GT	8913	8909	8914
// OP_IFNOT	8914	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	8915
// OP_GT	8915	31	8916
// OP_IFNOT	8916	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	8917
// OP_ADD_F	31	216	8918
// OP_STOREP_F	8918	8917	0
// OP_CALL0	8901	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) sham_pain = 
{
    sound(self, CHAN_VOICE, "shambler/shurt2.wav", TRUE, ATTN_NORM);
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if((random() * 400) > damage)
    {
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    self.pain_finished = time + FL_SWIM;
    sham_pain1();
};

// sham_death1
// function begins at statement 14114, parm_start=8920
// OP_STATE	6008	8920	0
// OP_DONE	0	0	0
void () sham_death1 = [83, sham_death2]
{
};

// sham_death2
// function begins at statement 14116, parm_start=8921
// OP_STATE	6010	8921	0
// OP_DONE	0	0	0
void () sham_death2 = [84, sham_death3]
{
};

// sham_death3
// function begins at statement 14118, parm_start=8922
// OP_STATE	6011	8922	0
// OP_ADDRESS	28	104	8923
// OP_STOREP_F	237	8923	0
// OP_DONE	0	0	0
void () sham_death3 = [85, sham_death4]
{
    self.solid = SOLID_NOT;
};

// sham_death4
// function begins at statement 14122, parm_start=8924
// OP_STATE	6013	8924	0
// OP_DONE	0	0	0
void () sham_death4 = [86, sham_death5]
{
};

// sham_death5
// function begins at statement 14124, parm_start=8925
// OP_STATE	6015	8925	0
// OP_DONE	0	0	0
void () sham_death5 = [87, sham_death6]
{
};

// sham_death6
// function begins at statement 14126, parm_start=8926
// OP_STATE	6017	8926	0
// OP_DONE	0	0	0
void () sham_death6 = [88, sham_death7]
{
};

// sham_death7
// function begins at statement 14128, parm_start=8927
// OP_STATE	6019	8927	0
// OP_DONE	0	0	0
void () sham_death7 = [89, sham_death8]
{
};

// sham_death8
// function begins at statement 14130, parm_start=8928
// OP_STATE	1789	8928	0
// OP_DONE	0	0	0
void () sham_death8 = [90, sham_death9]
{
};

// sham_death9
// function begins at statement 14132, parm_start=8929
// OP_STATE	6022	8929	0
// OP_DONE	0	0	0
void () sham_death9 = [91, sham_death10]
{
};

// sham_death10
// function begins at statement 14134, parm_start=8930
// OP_STATE	6024	8930	0
// OP_DONE	0	0	0
void () sham_death10 = [92, sham_death11]
{
};

// sham_death11
// function begins at statement 14136, parm_start=8931
// OP_STATE	6026	8930	0
// OP_DONE	0	0	0
void () sham_death11 = [93, sham_death11]
{
};

// sham_die
// function begins at statement 14138, parm_start=8932
// OP_LOAD_F	28	152	8932
// OP_LT	8932	8933	8934
// OP_IFNOT	8934	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	8935	4	0
// OP_LOAD_F	28	152	8936
// OP_STORE_V	8936	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	8937
// OP_STORE_V	8937	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	8938
// OP_STORE_V	8938	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	8939
// OP_STORE_V	8939	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8940	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	8919	0	0
// OP_DONE	0	0	0
void () sham_die = 
{
    
    if(self.health < -60)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_shams.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "shambler/sdeath.wav", TRUE, ATTN_NORM);
    sham_death1();
};

// monster_shambler
// function begins at statement 14172, parm_start=8942
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8942	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8869	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8935	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4350	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8857	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8896	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8940	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8910	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8680	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1625	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8689	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8789	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8722	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	8943
// OP_STOREP_F	240	8943	0
// OP_ADDRESS	28	103	8944
// OP_STOREP_F	229	8944	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8942	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	8945
// OP_STOREP_F	580	8945	0
// OP_ADDRESS	28	356	8946
// OP_STOREP_FNC	8650	8946	0
// OP_ADDRESS	28	357	8947
// OP_STOREP_FNC	8667	8947	0
// OP_ADDRESS	28	358	8948
// OP_STOREP_FNC	8681	8948	0
// OP_ADDRESS	28	362	8949
// OP_STOREP_FNC	8931	8949	0
// OP_ADDRESS	28	360	8950
// OP_STOREP_FNC	8810	8950	0
// OP_ADDRESS	28	359	8951
// OP_STOREP_FNC	8855	8951	0
// OP_ADDRESS	28	361	8952
// OP_STOREP_FNC	8907	8952	0
// OP_CALL0	6156	0	0
// OP_DONE	0	0	0
void () monster_shambler = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/shambler.mdl");
    precache_model("progs/s_light.mdl");
    precache_model("progs/h_shams.mdl");
    precache_model("progs/bolt.mdl");
    precache_sound("shambler/sattck1.wav");
    precache_sound("shambler/sboom.wav");
    precache_sound("shambler/sdeath.wav");
    precache_sound("shambler/shurt2.wav");
    precache_sound("shambler/sidle.wav");
    precache_sound("shambler/ssight.wav");
    precache_sound("shambler/melee1.wav");
    precache_sound("shambler/melee2.wav");
    precache_sound("shambler/smack.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shambler.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = SEARCH_RADIUS;
    self.th_stand = sham_stand1;
    self.th_walk = sham_walk1;
    self.th_run = sham_run1;
    self.th_die = sham_die;
    self.th_melee = sham_melee;
    self.th_missile = sham_magic1;
    self.th_pain = sham_pain;
    walkmonster_start();
};

