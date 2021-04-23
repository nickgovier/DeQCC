void () Demon_JumpTouch;

// demon1_stand1
// function begins at statement 19095, parm_start=12675
// OP_STATE	213	12675	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand1 = [0, demon1_stand2]
{
    ai_stand();
};


// demon1_stand2
// function begins at statement 19098, parm_start=12676
// OP_STATE	214	12676	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand2 = [1, demon1_stand3]
{
    ai_stand();
};


// demon1_stand3
// function begins at statement 19101, parm_start=12677
// OP_STATE	216	12677	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand3 = [2, demon1_stand4]
{
    ai_stand();
};


// demon1_stand4
// function begins at statement 19104, parm_start=12678
// OP_STATE	228	12678	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand4 = [3, demon1_stand5]
{
    ai_stand();
};


// demon1_stand5
// function begins at statement 19107, parm_start=12679
// OP_STATE	229	12679	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand5 = [4, demon1_stand6]
{
    ai_stand();
};


// demon1_stand6
// function begins at statement 19110, parm_start=12680
// OP_STATE	230	12680	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand6 = [5, demon1_stand7]
{
    ai_stand();
};


// demon1_stand7
// function begins at statement 19113, parm_start=12681
// OP_STATE	231	12681	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand7 = [6, demon1_stand8]
{
    ai_stand();
};


// demon1_stand8
// function begins at statement 19116, parm_start=12682
// OP_STATE	232	12682	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand8 = [7, demon1_stand9]
{
    ai_stand();
};


// demon1_stand9
// function begins at statement 19119, parm_start=12683
// OP_STATE	217	12683	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand9 = [8, demon1_stand10]
{
    ai_stand();
};


// demon1_stand10
// function begins at statement 19122, parm_start=12684
// OP_STATE	234	12684	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand10 = [9, demon1_stand11]
{
    ai_stand();
};


// demon1_stand11
// function begins at statement 19125, parm_start=12685
// OP_STATE	235	12685	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand11 = [10, demon1_stand12]
{
    ai_stand();
};


// demon1_stand12
// function begins at statement 19128, parm_start=12686
// OP_STATE	236	12686	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand12 = [11, demon1_stand13]
{
    ai_stand();
};


// demon1_stand13
// function begins at statement 19131, parm_start=12687
// OP_STATE	791	12674	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () demon1_stand13 = [12, demon1_stand1]
{
    ai_stand();
};


// demon1_walk1
// function begins at statement 19134, parm_start=12688
// OP_STATE	792	12688	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	12689
// OP_IFNOT	12689	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12690	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk1 = [13, demon1_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "demon/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_CLIENT);
};


// demon1_walk2
// function begins at statement 19147, parm_start=12691
// OP_STATE	5693	12691	0
// OP_STORE_V	231	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk2 = [14, demon1_walk3]
{
    ai_walk(MOVETYPE_TOSS);
};


// demon1_walk3
// function begins at statement 19151, parm_start=12692
// OP_STATE	765	12692	0
// OP_STORE_V	231	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk3 = [15, demon1_walk4]
{
    ai_walk(MOVETYPE_TOSS);
};


// demon1_walk4
// function begins at statement 19155, parm_start=12693
// OP_STATE	218	12693	0
// OP_STORE_V	232	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk4 = [16, demon1_walk5]
{
    ai_walk(MOVETYPE_PUSH);
};


// demon1_walk5
// function begins at statement 19159, parm_start=12694
// OP_STATE	6892	12694	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk5 = [17, demon1_walk6]
{
    ai_walk(MOVETYPE_STEP);
};


// demon1_walk6
// function begins at statement 19163, parm_start=12695
// OP_STATE	6133	12695	0
// OP_STORE_V	231	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk6 = [18, demon1_walk7]
{
    ai_walk(MOVETYPE_TOSS);
};


// demon1_walk7
// function begins at statement 19167, parm_start=12696
// OP_STATE	6895	12696	0
// OP_STORE_V	235	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk7 = [19, demon1_walk8]
{
    ai_walk(MOVETYPE_BOUNCE);
};


// demon1_walk8
// function begins at statement 19171, parm_start=12697
// OP_STATE	2323	12687	0
// OP_STORE_V	235	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () demon1_walk8 = [20, demon1_walk1]
{
    ai_walk(MOVETYPE_BOUNCE);
};


// demon1_run1
// function begins at statement 19175, parm_start=12698
// OP_STATE	12465	12698	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	12699
// OP_IFNOT	12699	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12690	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run1 = [21, demon1_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "demon/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(20);
};


// demon1_run2
// function begins at statement 19188, parm_start=12700
// OP_STATE	12467	12700	0
// OP_STORE_V	765	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run2 = [22, demon1_run3]
{
    ai_run(GLOBALDEF748_15);
};


// demon1_run3
// function begins at statement 19192, parm_start=12701
// OP_STATE	304	12701	0
// OP_STORE_V	9655	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run3 = [23, demon1_run4]
{
    ai_run(36);
};


// demon1_run4
// function begins at statement 19196, parm_start=12702
// OP_STATE	736	12702	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run4 = [24, demon1_run5]
{
    ai_run(20);
};


// demon1_run5
// function begins at statement 19200, parm_start=12703
// OP_STATE	305	12703	0
// OP_STORE_V	765	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run5 = [25, demon1_run6]
{
    ai_run(GLOBALDEF748_15);
};


// demon1_run6
// function begins at statement 19204, parm_start=12704
// OP_STATE	306	12697	0
// OP_STORE_V	9655	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () demon1_run6 = [26, demon1_run1]
{
    ai_run(36);
};


// demon1_jump1
// function begins at statement 19208, parm_start=12705
// OP_STATE	307	12705	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () demon1_jump1 = [27, demon1_jump2]
{
    ai_face();
};


// demon1_jump2
// function begins at statement 19211, parm_start=12706
// OP_STATE	308	12706	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () demon1_jump2 = [28, demon1_jump3]
{
    ai_face();
};


// demon1_jump3
// function begins at statement 19214, parm_start=12707
// OP_STATE	9664	12707	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () demon1_jump3 = [29, demon1_jump4]
{
    ai_face();
};


// demon1_jump4
// function begins at statement 19217, parm_start=12708
// OP_STATE	309	12708	0
// OP_CALL0	3190	0	0
// OP_ADDRESS	28	146	12709
// OP_STOREP_FNC	12673	12709	0
// OP_LOAD_V	28	117	12710
// OP_STORE_V	12710	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	108	12713
// OP_LOAD_F	28	108	12714
// OP_ADD_F	12714	214	12715
// OP_STOREP_F	12715	12713	0
// OP_ADDRESS	28	113	12716
// OP_MUL_VF	59	740	12719
// OP_ADD_V	12719	12722	12725
// OP_STOREP_V	12725	12716	0
// OP_LOAD_F	28	182	12728
// OP_BITAND	12728	223	12729
// OP_IFNOT	12729	5	0
// OP_ADDRESS	28	182	12730
// OP_LOAD_F	28	182	12731
// OP_SUB_F	12731	223	12732
// OP_STOREP_F	12732	12730	0
// OP_DONE	0	0	0
void () demon1_jump4 = [30, demon1_jump5]
{
    ai_face();
    self.touch = Demon_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + TRUE;
    self.velocity = (v_forward * GLOBALDEF723_600) + '0 0 250';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};


// demon1_jump5
// function begins at statement 19240, parm_start=12733
// OP_STATE	310	12733	0
// OP_DONE	0	0	0
void () demon1_jump5 = [31, demon1_jump6]
{
};


// demon1_jump6
// function begins at statement 19242, parm_start=12734
// OP_STATE	219	12734	0
// OP_DONE	0	0	0
void () demon1_jump6 = [32, demon1_jump7]
{
};


// demon1_jump7
// function begins at statement 19244, parm_start=12735
// OP_STATE	312	12735	0
// OP_DONE	0	0	0
void () demon1_jump7 = [33, demon1_jump8]
{
};


// demon1_jump8
// function begins at statement 19246, parm_start=12736
// OP_STATE	9671	12736	0
// OP_DONE	0	0	0
void () demon1_jump8 = [34, demon1_jump9]
{
};


// demon1_jump9
// function begins at statement 19248, parm_start=12737
// OP_STATE	5878	12737	0
// OP_DONE	0	0	0
void () demon1_jump9 = [35, demon1_jump10]
{
};


// demon1_jump10
// function begins at statement 19250, parm_start=12738
// OP_STATE	9655	12704	0
// OP_ADDRESS	28	150	12738
// OP_ADD_F	31	228	12739
// OP_STOREP_F	12739	12738	0
// OP_DONE	0	0	0
void () demon1_jump10 = [36, demon1_jump1]
{
    self.nextthink = time + MOVETYPE_WALK;
};


// demon1_jump11
// function begins at statement 19255, parm_start=12741
// OP_STATE	9657	12741	0
// OP_DONE	0	0	0
void () demon1_jump11 = [37, demon1_jump12]
{
};


// demon1_jump12
// function begins at statement 19257, parm_start=12742
// OP_STATE	9659	12697	0
// OP_DONE	0	0	0
void () demon1_jump12 = [38, demon1_run1]
{
};


// demon1_atta1
// function begins at statement 19259, parm_start=12743
// OP_STATE	9917	12743	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta1 = [54, demon1_atta2]
{
    ai_charge(MOVETYPE_STEP);
};


// demon1_atta2
// function begins at statement 19263, parm_start=12744
// OP_STATE	9919	12744	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta2 = [55, demon1_atta3]
{
    ai_charge(FALSE);
};


// demon1_atta3
// function begins at statement 19267, parm_start=12745
// OP_STATE	9921	12745	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta3 = [56, demon1_atta4]
{
    ai_charge(FALSE);
};


// demon1_atta4
// function begins at statement 19271, parm_start=12746
// OP_STATE	9923	12746	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta4 = [57, demon1_atta5]
{
    ai_charge(TRUE);
};


// demon1_atta5
// function begins at statement 19275, parm_start=12747
// OP_STATE	9925	12747	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	2044	4	0
// OP_CALL1	3188	0	0
// OP_DONE	0	0	0
void () demon1_atta5 = [58, demon1_atta6]
{
    ai_charge(FL_SWIM);
    Demon_Melee(200);
};


// demon1_atta6
// function begins at statement 19281, parm_start=12748
// OP_STATE	2783	12748	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta6 = [59, demon1_atta7]
{
    ai_charge(TRUE);
};


// demon1_atta7
// function begins at statement 19285, parm_start=12749
// OP_STATE	2019	12749	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta7 = [60, demon1_atta8]
{
    ai_charge(MOVETYPE_TOSS);
};


// demon1_atta8
// function begins at statement 19289, parm_start=12750
// OP_STATE	9928	12750	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta8 = [61, demon1_atta9]
{
    ai_charge(FL_CLIENT);
};


// demon1_atta9
// function begins at statement 19293, parm_start=12751
// OP_STATE	9930	12751	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta9 = [62, demon1_atta10]
{
    ai_charge(MOVETYPE_STEP);
};


// demon1_atta10
// function begins at statement 19297, parm_start=12752
// OP_STATE	6707	12752	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta10 = [63, demon1_atta11]
{
    ai_charge(FL_SWIM);
};


// demon1_atta11
// function begins at statement 19301, parm_start=12753
// OP_STATE	220	12753	0
// OP_STORE_V	9761	4	0
// OP_CALL1	3188	0	0
// OP_DONE	0	0	0
void () demon1_atta11 = [64, demon1_atta12]
{
    Demon_Melee(-200);
};


// demon1_atta12
// function begins at statement 19305, parm_start=12754
// OP_STATE	9934	12754	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta12 = [65, demon1_atta13]
{
    ai_charge(MOVETYPE_FLY);
};


// demon1_atta13
// function begins at statement 19309, parm_start=12755
// OP_STATE	9936	12755	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta13 = [66, demon1_atta14]
{
    ai_charge(FL_CLIENT);
};


// demon1_atta14
// function begins at statement 19313, parm_start=12756
// OP_STATE	9938	12756	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta14 = [67, demon1_atta15]
{
    ai_charge(MOVETYPE_STEP);
};


// demon1_atta15
// function begins at statement 19317, parm_start=12757
// OP_STATE	8193	12697	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () demon1_atta15 = [68, demon1_run1]
{
    ai_charge(MOVETYPE_STEP);
};


// demon1_pain1
// function begins at statement 19321, parm_start=12758
// OP_STATE	9661	12758	0
// OP_DONE	0	0	0
void () demon1_pain1 = [39, demon1_pain2]
{
};


// demon1_pain2
// function begins at statement 19323, parm_start=12759
// OP_STATE	746	12759	0
// OP_DONE	0	0	0
void () demon1_pain2 = [40, demon1_pain3]
{
};


// demon1_pain3
// function begins at statement 19325, parm_start=12760
// OP_STATE	9993	12760	0
// OP_DONE	0	0	0
void () demon1_pain3 = [41, demon1_pain4]
{
};


// demon1_pain4
// function begins at statement 19327, parm_start=12761
// OP_STATE	9995	12761	0
// OP_DONE	0	0	0
void () demon1_pain4 = [42, demon1_pain5]
{
};


// demon1_pain5
// function begins at statement 19329, parm_start=12762
// OP_STATE	9997	12762	0
// OP_DONE	0	0	0
void () demon1_pain5 = [43, demon1_pain6]
{
};


// demon1_pain6
// function begins at statement 19331, parm_start=12763
// OP_STATE	9999	12697	0
// OP_DONE	0	0	0
void () demon1_pain6 = [44, demon1_run1]
{
};


// demon1_pain
// function begins at statement 19333, parm_start=12764
// OP_LOAD_FNC	28	146	12766
// OP_EQ_FNC	12766	12673	12767
// OP_IFNOT	12767	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	379	12768
// OP_GT	12768	31	12769
// OP_IFNOT	12769	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	12770
// OP_ADD_F	31	214	12771
// OP_STOREP_F	12771	12770	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12772	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	2044	12773
// OP_GT	12773	12765	12774
// OP_IFNOT	12774	2	0
// OP_RETURN	0	0	0
// OP_CALL0	12757	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) demon1_pain = 
{
    
    if(self.touch == Demon_JumpTouch)
    {
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    self.pain_finished = time + TRUE;
    sound(self, CHAN_VOICE, "demon/dpain1.wav", TRUE, ATTN_NORM);
    
    if((random() * 200) > damage)
    {
        return;
    }
    
    demon1_pain1();
};


// demon1_die1
// function begins at statement 19357, parm_start=12776
// OP_STATE	2598	12776	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12777	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () demon1_die1 = [45, demon1_die2]
{
    sound(self, CHAN_VOICE, "demon/ddeath.wav", TRUE, ATTN_NORM);
};


// demon1_die2
// function begins at statement 19365, parm_start=12778
// OP_STATE	10002	12778	0
// OP_DONE	0	0	0
void () demon1_die2 = [46, demon1_die3]
{
};


// demon1_die3
// function begins at statement 19367, parm_start=12779
// OP_STATE	10004	12779	0
// OP_DONE	0	0	0
void () demon1_die3 = [47, demon1_die4]
{
};


// demon1_die4
// function begins at statement 19369, parm_start=12780
// OP_STATE	10006	12780	0
// OP_DONE	0	0	0
void () demon1_die4 = [48, demon1_die5]
{
};


// demon1_die5
// function begins at statement 19371, parm_start=12781
// OP_STATE	10008	12781	0
// OP_DONE	0	0	0
void () demon1_die5 = [49, demon1_die6]
{
};


// demon1_die6
// function begins at statement 19373, parm_start=12782
// OP_STATE	1470	12782	0
// OP_ADDRESS	28	104	12783
// OP_STOREP_F	237	12783	0
// OP_DONE	0	0	0
void () demon1_die6 = [50, demon1_die7]
{
    self.solid = SOLID_NOT;
};


// demon1_die7
// function begins at statement 19377, parm_start=12784
// OP_STATE	9911	12784	0
// OP_DONE	0	0	0
void () demon1_die7 = [51, demon1_die8]
{
};


// demon1_die8
// function begins at statement 19379, parm_start=12785
// OP_STATE	9913	12785	0
// OP_DONE	0	0	0
void () demon1_die8 = [52, demon1_die9]
{
};


// demon1_die9
// function begins at statement 19381, parm_start=12786
// OP_STATE	9915	12785	0
// OP_DONE	0	0	0
void () demon1_die9 = [53, demon1_die9]
{
};


// demon_die
// function begins at statement 19383, parm_start=12787
// OP_LOAD_F	28	152	12787
// OP_LT	12787	12648	12788
// OP_IFNOT	12788	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	12789	4	0
// OP_LOAD_F	28	152	12790
// OP_STORE_V	12790	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	12791
// OP_STORE_V	12791	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	12792
// OP_STORE_V	12792	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	12793
// OP_STORE_V	12793	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_CALL0	12775	0	0
// OP_DONE	0	0	0
void () demon_die = 
{
    
    if(self.health < -80)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_demon.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        return;
    }
    
    demon1_die1();
};


// Demon_MeleeAttack
// function begins at statement 19411, parm_start=12795
// OP_CALL0	12742	0	0
// OP_DONE	0	0	0
void () Demon_MeleeAttack = 
{
    demon1_atta1();
};


// monster_demon1
// function begins at statement 19413, parm_start=12796
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12789	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12777	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12797	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12798	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12772	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12690	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3667	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	12799
// OP_STOREP_F	240	12799	0
// OP_ADDRESS	28	103	12800
// OP_STOREP_F	229	12800	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12796	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	12801
// OP_STOREP_F	540	12801	0
// OP_ADDRESS	28	361	12802
// OP_STOREP_FNC	12674	12802	0
// OP_ADDRESS	28	362	12803
// OP_STOREP_FNC	12687	12803	0
// OP_ADDRESS	28	363	12804
// OP_STOREP_FNC	12697	12804	0
// OP_ADDRESS	28	367	12805
// OP_STOREP_FNC	12786	12805	0
// OP_ADDRESS	28	365	12806
// OP_STOREP_FNC	12794	12806	0
// OP_ADDRESS	28	364	12807
// OP_STOREP_FNC	12704	12807	0
// OP_ADDRESS	28	366	12808
// OP_STOREP_FNC	12763	12808	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_demon1 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/demon.mdl");
    precache_model("progs/h_demon.mdl");
    precache_sound("demon/ddeath.wav");
    precache_sound("demon/dhit2.wav");
    precache_sound("demon/djump.wav");
    precache_sound("demon/dpain1.wav");
    precache_sound("demon/idle1.wav");
    precache_sound("demon/sight2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/demon.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = RA_MAXIDLETIME;
    self.th_stand = demon1_stand1;
    self.th_walk = demon1_walk1;
    self.th_run = demon1_run1;
    self.th_die = demon_die;
    self.th_melee = Demon_MeleeAttack;
    self.th_missile = demon1_jump1;
    self.th_pain = demon1_pain;
    walkmonster_start();
};


// CheckDemonMelee
// function begins at statement 19462, parm_start=12810
// OP_EQ_F	3193	242	12810
// OP_IFNOT	12810	4	0
// OP_ADDRESS	28	372	12811
// OP_STOREP_F	375	12811	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDemonMelee = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};


// CheckDemonJump
// function begins at statement 19469, parm_start=12813
// OP_LOAD_F	28	108	12817
// OP_LOAD_F	28	137	12818
// OP_ADD_F	12817	12818	12819
// OP_LOAD_ENT	28	181	12820
// OP_LOAD_F	12820	108	12821
// OP_LOAD_ENT	28	181	12822
// OP_LOAD_F	12822	137	12823
// OP_ADD_F	12821	12823	12824
// OP_LOAD_ENT	28	181	12825
// OP_LOAD_F	12825	145	12826
// OP_MUL_F	6280	12826	12827
// OP_ADD_F	12824	12827	12828
// OP_GT	12819	12828	12829
// OP_IFNOT	12829	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	12830
// OP_LOAD_F	28	141	12831
// OP_ADD_F	12830	12831	12832
// OP_LOAD_ENT	28	181	12833
// OP_LOAD_F	12833	108	12834
// OP_LOAD_ENT	28	181	12835
// OP_LOAD_F	12835	137	12836
// OP_ADD_F	12834	12836	12837
// OP_LOAD_ENT	28	181	12838
// OP_LOAD_F	12838	145	12839
// OP_MUL_F	6277	12839	12840
// OP_ADD_F	12837	12840	12841
// OP_LT	12832	12841	12842
// OP_IFNOT	12842	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	12843
// OP_LOAD_V	12843	105	12844
// OP_LOAD_V	28	105	12847
// OP_SUB_V	12844	12847	12850
// OP_STORE_V	12850	12813	0
// OP_STORE_F	213	12815	0
// OP_STORE_V	12813	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	12816	0
// OP_LT	12816	1997	12853
// OP_IFNOT	12853	2	0
// OP_RETURN	213	0	0
// OP_GT	12816	2044	12854
// OP_IFNOT	12854	5	0
// OP_CALL0	457	0	0
// OP_LT	1	3263	12855
// OP_IFNOT	12855	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckDemonJump = 
{
    local vector dist;
    local float d;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    dist = self.enemy.origin - self.origin;
    dist_z = FALSE;
    d = vlen(dist);
    
    if(d < 100)
    {
        return FALSE;
    }
    
    
    if(d > 200)
    {
        
        if(random() < 0.9)
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};


// DemonCheckAttack
// function begins at statement 19519, parm_start=12856
// OP_CALL0	12809	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	372	12859
// OP_STOREP_F	375	12859	0
// OP_RETURN	214	0	0
// OP_CALL0	12812	0	0
// OP_IFNOT	1	10	0
// OP_ADDRESS	28	372	12860
// OP_STOREP_F	376	12860	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12798	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DemonCheckAttack = 
{
    local vector vec;
    
    if(CheckDemonMelee())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(CheckDemonJump())
    {
        self.attack_state = AS_MISSILE;
        sound(self, CHAN_VOICE, "demon/djump.wav", TRUE, ATTN_NORM);
        return TRUE;
    }
    
    return FALSE;
};


// Demon_Melee
// function begins at statement 19537, parm_start=12861
// OP_CALL0	3190	0	0
// OP_LOAD_F	28	191	12866
// OP_STORE_V	12866	4	0
// OP_STORE_V	791	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	181	12867
// OP_LOAD_V	12867	105	12868
// OP_LOAD_V	28	105	12871
// OP_SUB_V	12868	12871	12874
// OP_STORE_V	12874	12863	0
// OP_STORE_V	12863	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	12877
// OP_IFNOT	12877	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	12878
// OP_STORE_V	12878	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	524	0	0
// OP_NOT_F	1	0	12879
// OP_IFNOT	12879	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12797	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	230	1	12880
// OP_ADD_F	235	12880	12881
// OP_STORE_F	12881	12862	0
// OP_LOAD_ENT	28	181	12882
// OP_STORE_V	12882	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12862	13	0
// OP_CALL4	522	0	0
// OP_LOAD_V	28	117	12883
// OP_STORE_V	12883	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	12886
// OP_MUL_VF	59	218	12889
// OP_ADD_V	12886	12889	12892
// OP_STORE_V	12892	4	0
// OP_MUL_FV	12861	65	12895
// OP_STORE_V	12895	7	0
// OP_CALL2	5444	0	0
// OP_DONE	0	0	0
void (float side) Demon_Melee = 
{
    local float ldmg;
    local vector delta;
    ai_face();
    walkmove(self.ideal_yaw, BOTSHIRTPANTS_12);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 100)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    sound(self, CHAN_WEAPON, "demon/dhit2.wav", TRUE, ATTN_NORM);
    ldmg = MOVETYPE_BOUNCE + (MOVETYPE_FLY * random());
    T_Damage(self.enemy, self, self, ldmg);
    makevectors(self.angles);
    SpawnMeatSpray(self.origin + (v_forward * FL_INWATER), side * v_right);
};


// Demon_JumpTouch
// function begins at statement 19586, parm_start=12898
// OP_LOAD_F	28	152	12899
// OP_LE	12899	213	12900
// OP_IFNOT	12900	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	12901
// OP_IFNOT	12901	15	0
// OP_LOAD_V	28	113	12902
// OP_STORE_V	12902	4	0
// OP_CALL1	462	0	0
// OP_GT	1	5347	12905
// OP_IFNOT	12905	10	0
// OP_CALL0	457	0	0
// OP_MUL_F	235	1	12906
// OP_ADD_F	746	12906	12907
// OP_STORE_F	12907	12898	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12898	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	486	0	0
// OP_NOT_F	1	0	12908
// OP_IFNOT	12908	12	0
// OP_LOAD_F	28	182	12909
// OP_BITAND	12909	223	12910
// OP_IFNOT	12910	8	0
// OP_ADDRESS	28	146	12911
// OP_STOREP_FNC	519	12911	0
// OP_ADDRESS	28	148	12912
// OP_STOREP_FNC	12704	12912	0
// OP_ADDRESS	28	150	12913
// OP_ADD_F	31	3036	12914
// OP_STOREP_F	12914	12913	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	12915
// OP_STOREP_FNC	519	12915	0
// OP_ADDRESS	28	148	12916
// OP_STOREP_FNC	12740	12916	0
// OP_ADDRESS	28	150	12917
// OP_ADD_F	31	3036	12918
// OP_STOREP_F	12918	12917	0
// OP_DONE	0	0	0
void () Demon_JumpTouch = 
{
    local float ldmg;
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 400)
        {
            ldmg = GLOBALDEF729_40 + (MOVETYPE_BOUNCE * random());
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = demon1_jump1;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = demon1_jump11;
    self.nextthink = time + 0.1;
};

