void () Demon_JumpTouch;
// demon1_stand1
// function begins at statement 13360, parm_start=8651
// OP_STATE	650	8651	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand1 = [0, demon1_stand2]
{
    ai_stand();
};

// demon1_stand2
// function begins at statement 13363, parm_start=8652
// OP_STATE	708	8652	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand2 = [1, demon1_stand3]
{
    ai_stand();
};

// demon1_stand3
// function begins at statement 13366, parm_start=8653
// OP_STATE	929	8653	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand3 = [2, demon1_stand4]
{
    ai_stand();
};

// demon1_stand4
// function begins at statement 13369, parm_start=8654
// OP_STATE	819	8654	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand4 = [3, demon1_stand5]
{
    ai_stand();
};

// demon1_stand5
// function begins at statement 13372, parm_start=8655
// OP_STATE	1835	8655	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand5 = [4, demon1_stand6]
{
    ai_stand();
};

// demon1_stand6
// function begins at statement 13375, parm_start=8656
// OP_STATE	1660	8656	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand6 = [5, demon1_stand7]
{
    ai_stand();
};

// demon1_stand7
// function begins at statement 13378, parm_start=8657
// OP_STATE	2107	8657	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand7 = [6, demon1_stand8]
{
    ai_stand();
};

// demon1_stand8
// function begins at statement 13381, parm_start=8658
// OP_STATE	2307	8658	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand8 = [7, demon1_stand9]
{
    ai_stand();
};

// demon1_stand9
// function begins at statement 13384, parm_start=8659
// OP_STATE	1502	8659	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand9 = [8, demon1_stand10]
{
    ai_stand();
};

// demon1_stand10
// function begins at statement 13387, parm_start=8660
// OP_STATE	3556	8660	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand10 = [9, demon1_stand11]
{
    ai_stand();
};

// demon1_stand11
// function begins at statement 13390, parm_start=8661
// OP_STATE	1931	8661	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand11 = [10, demon1_stand12]
{
    ai_stand();
};

// demon1_stand12
// function begins at statement 13393, parm_start=8662
// OP_STATE	3931	8662	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand12 = [11, demon1_stand13]
{
    ai_stand();
};

// demon1_stand13
// function begins at statement 13396, parm_start=8663
// OP_STATE	2532	8650	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () demon1_stand13 = [12, demon1_stand1]
{
    ai_stand();
};

// demon1_walk1
// function begins at statement 13399, parm_start=8664
// OP_STATE	8427	8664	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk1 = [13, demon1_walk2]
{
    ai_walk(8);
};

// demon1_walk2
// function begins at statement 13403, parm_start=8665
// OP_STATE	3153	8665	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk2 = [14, demon1_walk3]
{
    ai_walk(6);
};

// demon1_walk3
// function begins at statement 13407, parm_start=8666
// OP_STATE	2157	8666	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk3 = [15, demon1_walk4]
{
    ai_walk(6);
};

// demon1_walk4
// function begins at statement 13411, parm_start=8667
// OP_STATE	3273	8667	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk4 = [16, demon1_walk5]
{
    ai_walk(7);
};

// demon1_walk5
// function begins at statement 13415, parm_start=8668
// OP_STATE	5588	8668	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk5 = [17, demon1_walk6]
{
    ai_walk(4);
};

// demon1_walk6
// function begins at statement 13419, parm_start=8669
// OP_STATE	3576	8669	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk6 = [18, demon1_walk7]
{
    ai_walk(6);
};

// demon1_walk7
// function begins at statement 13423, parm_start=8670
// OP_STATE	8435	8670	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk7 = [19, demon1_walk8]
{
    ai_walk(10);
};

// demon1_walk8
// function begins at statement 13427, parm_start=8671
// OP_STATE	1017	8663	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () demon1_walk8 = [20, demon1_walk1]
{
    ai_walk(10);
};

// demon1_run1
// function begins at statement 13431, parm_start=8672
// OP_STATE	8438	8672	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run1 = [21, demon1_run2]
{
    ai_run(20);
};

// demon1_run2
// function begins at statement 13435, parm_start=8673
// OP_STATE	8440	8673	0
// OP_STORE_V	2157	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run2 = [22, demon1_run3]
{
    ai_run(15);
};

// demon1_run3
// function begins at statement 13439, parm_start=8674
// OP_STATE	8442	8674	0
// OP_STORE_V	5820	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run3 = [23, demon1_run4]
{
    ai_run(36);
};

// demon1_run4
// function begins at statement 13443, parm_start=8675
// OP_STATE	4969	8675	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run4 = [24, demon1_run5]
{
    ai_run(20);
};

// demon1_run5
// function begins at statement 13447, parm_start=8676
// OP_STATE	2171	8676	0
// OP_STORE_V	2157	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run5 = [25, demon1_run6]
{
    ai_run(15);
};

// demon1_run6
// function begins at statement 13451, parm_start=8677
// OP_STATE	8446	8671	0
// OP_STORE_V	5820	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () demon1_run6 = [26, demon1_run1]
{
    ai_run(36);
};

// demon1_jump1
// function begins at statement 13455, parm_start=8678
// OP_STATE	8448	8678	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () demon1_jump1 = [27, demon1_jump2]
{
    ai_face();
};

// demon1_jump2
// function begins at statement 13458, parm_start=8679
// OP_STATE	8450	8679	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () demon1_jump2 = [28, demon1_jump3]
{
    ai_face();
};

// demon1_jump3
// function begins at statement 13461, parm_start=8680
// OP_STATE	5829	8680	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () demon1_jump3 = [29, demon1_jump4]
{
    ai_face();
};

// demon1_jump4
// function begins at statement 13464, parm_start=8681
// OP_STATE	1004	8681	0
// OP_CALL0	844	0	0
// OP_ADDRESS	28	146	8682
// OP_STOREP_FNC	8649	8682	0
// OP_LOAD_V	28	117	8683
// OP_STORE_V	8683	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	28	108	8686
// OP_LOAD_F	28	108	8687
// OP_ADD_F	8687	708	8688
// OP_STOREP_F	8688	8686	0
// OP_ADDRESS	28	113	8689
// OP_MUL_VF	59	2246	8692
// OP_ADD_V	8692	8695	8698
// OP_STOREP_V	8698	8689	0
// OP_LOAD_F	28	182	8701
// OP_BITAND	8701	223	8702
// OP_IFNOT	8702	5	0
// OP_ADDRESS	28	182	8703
// OP_LOAD_F	28	182	8704
// OP_SUB_F	8704	223	8705
// OP_STOREP_F	8705	8703	0
// OP_DONE	0	0	0
void () demon1_jump4 = [30, demon1_jump5]
{
    ai_face();
    self.touch = Demon_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + 1;
    self.velocity = (v_forward * 200) + '0 0 250';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};

// demon1_jump5
// function begins at statement 13487, parm_start=8706
// OP_STATE	3950	8706	0
// OP_DONE	0	0	0
void () demon1_jump5 = [31, demon1_jump6]
{
};

// demon1_jump6
// function begins at statement 13489, parm_start=8707
// OP_STATE	959	8707	0
// OP_DONE	0	0	0
void () demon1_jump6 = [32, demon1_jump7]
{
};

// demon1_jump7
// function begins at statement 13491, parm_start=8708
// OP_STATE	5835	8708	0
// OP_DONE	0	0	0
void () demon1_jump7 = [33, demon1_jump8]
{
};

// demon1_jump8
// function begins at statement 13493, parm_start=8709
// OP_STATE	5837	8709	0
// OP_DONE	0	0	0
void () demon1_jump8 = [34, demon1_jump9]
{
};

// demon1_jump9
// function begins at statement 13495, parm_start=8710
// OP_STATE	3325	8710	0
// OP_DONE	0	0	0
void () demon1_jump9 = [35, demon1_jump10]
{
};

// demon1_jump10
// function begins at statement 13497, parm_start=8711
// OP_STATE	5820	8677	0
// OP_ADDRESS	28	150	8711
// OP_ADD_F	31	819	8712
// OP_STOREP_F	8712	8711	0
// OP_DONE	0	0	0
void () demon1_jump10 = [36, demon1_jump1]
{
    self.nextthink = time + 3;
};

// demon1_jump11
// function begins at statement 13502, parm_start=8714
// OP_STATE	5822	8714	0
// OP_DONE	0	0	0
void () demon1_jump11 = [37, demon1_jump12]
{
};

// demon1_jump12
// function begins at statement 13504, parm_start=8715
// OP_STATE	5824	8671	0
// OP_DONE	0	0	0
void () demon1_jump12 = [38, demon1_run1]
{
};

// demon1_atta1
// function begins at statement 13506, parm_start=8716
// OP_STATE	6074	8716	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta1 = [54, demon1_atta2]
{
    ai_charge(4);
};

// demon1_atta2
// function begins at statement 13510, parm_start=8717
// OP_STATE	6076	8717	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta2 = [55, demon1_atta3]
{
    ai_charge(0);
};

// demon1_atta3
// function begins at statement 13514, parm_start=8718
// OP_STATE	6078	8718	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta3 = [56, demon1_atta4]
{
    ai_charge(0);
};

// demon1_atta4
// function begins at statement 13518, parm_start=8719
// OP_STATE	6080	8719	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta4 = [57, demon1_atta5]
{
    ai_charge(1);
};

// demon1_atta5
// function begins at statement 13522, parm_start=8720
// OP_STATE	6082	8720	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	2246	4	0
// OP_CALL1	842	0	0
// OP_DONE	0	0	0
void () demon1_atta5 = [58, demon1_atta6]
{
    ai_charge(2);
    Demon_Melee(200);
};

// demon1_atta6
// function begins at statement 13528, parm_start=8721
// OP_STATE	6084	8721	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta6 = [59, demon1_atta7]
{
    ai_charge(1);
};

// demon1_atta7
// function begins at statement 13532, parm_start=8722
// OP_STATE	1035	8722	0
// OP_STORE_V	2107	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta7 = [60, demon1_atta8]
{
    ai_charge(6);
};

// demon1_atta8
// function begins at statement 13536, parm_start=8723
// OP_STATE	6086	8723	0
// OP_STORE_V	1502	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta8 = [61, demon1_atta9]
{
    ai_charge(8);
};

// demon1_atta9
// function begins at statement 13540, parm_start=8724
// OP_STATE	6088	8724	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta9 = [62, demon1_atta10]
{
    ai_charge(4);
};

// demon1_atta10
// function begins at statement 13544, parm_start=8725
// OP_STATE	4345	8725	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta10 = [63, demon1_atta11]
{
    ai_charge(2);
};

// demon1_atta11
// function begins at statement 13548, parm_start=8726
// OP_STATE	1684	8726	0
// OP_STORE_V	5931	4	0
// OP_CALL1	842	0	0
// OP_DONE	0	0	0
void () demon1_atta11 = [64, demon1_atta12]
{
    Demon_Melee(-200);
};

// demon1_atta12
// function begins at statement 13552, parm_start=8727
// OP_STATE	6092	8727	0
// OP_STORE_V	1660	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta12 = [65, demon1_atta13]
{
    ai_charge(5);
};

// demon1_atta13
// function begins at statement 13556, parm_start=8728
// OP_STATE	6094	8728	0
// OP_STORE_V	1502	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta13 = [66, demon1_atta14]
{
    ai_charge(8);
};

// demon1_atta14
// function begins at statement 13560, parm_start=8729
// OP_STATE	6096	8729	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta14 = [67, demon1_atta15]
{
    ai_charge(4);
};

// demon1_atta15
// function begins at statement 13564, parm_start=8730
// OP_STATE	6098	8671	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () demon1_atta15 = [68, demon1_run1]
{
    ai_charge(4);
};

// demon1_pain1
// function begins at statement 13568, parm_start=8731
// OP_STATE	5826	8731	0
// OP_DONE	0	0	0
void () demon1_pain1 = [39, demon1_pain2]
{
};

// demon1_pain2
// function begins at statement 13570, parm_start=8732
// OP_STATE	2007	8732	0
// OP_DONE	0	0	0
void () demon1_pain2 = [40, demon1_pain3]
{
};

// demon1_pain3
// function begins at statement 13572, parm_start=8733
// OP_STATE	6160	8733	0
// OP_DONE	0	0	0
void () demon1_pain3 = [41, demon1_pain4]
{
};

// demon1_pain4
// function begins at statement 13574, parm_start=8734
// OP_STATE	6162	8734	0
// OP_DONE	0	0	0
void () demon1_pain4 = [42, demon1_pain5]
{
};

// demon1_pain5
// function begins at statement 13576, parm_start=8735
// OP_STATE	6164	8735	0
// OP_DONE	0	0	0
void () demon1_pain5 = [43, demon1_pain6]
{
};

// demon1_pain6
// function begins at statement 13578, parm_start=8736
// OP_STATE	6166	8671	0
// OP_DONE	0	0	0
void () demon1_pain6 = [44, demon1_run1]
{
};

// demon1_pain
// function begins at statement 13580, parm_start=8737
// OP_LOAD_FNC	28	146	8739
// OP_EQ_FNC	8739	8649	8740
// OP_IFNOT	8740	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	375	8741
// OP_GT	8741	31	8742
// OP_IFNOT	8742	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	375	8743
// OP_ADD_F	31	708	8744
// OP_STOREP_F	8744	8743	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8745	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	8730	0	0
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
    
    self.pain_finished = time + 1;
    sound(self, CHAN_VOICE, "demon/dpain1.wav", 1, ATTN_NORM);
    demon1_pain1();
};

// demon1_die1
// function begins at statement 13599, parm_start=8747
// OP_STATE	1572	8747	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8748	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () demon1_die1 = [45, demon1_die2]
{
    sound(self, CHAN_VOICE, "demon/ddeath.wav", 1, ATTN_NORM);
};

// demon1_die2
// function begins at statement 13607, parm_start=8749
// OP_STATE	6169	8749	0
// OP_DONE	0	0	0
void () demon1_die2 = [46, demon1_die3]
{
};

// demon1_die3
// function begins at statement 13609, parm_start=8750
// OP_STATE	6171	8750	0
// OP_DONE	0	0	0
void () demon1_die3 = [47, demon1_die4]
{
};

// demon1_die4
// function begins at statement 13611, parm_start=8751
// OP_STATE	6173	8751	0
// OP_DONE	0	0	0
void () demon1_die4 = [48, demon1_die5]
{
};

// demon1_die5
// function begins at statement 13613, parm_start=8752
// OP_STATE	6175	8752	0
// OP_DONE	0	0	0
void () demon1_die5 = [49, demon1_die6]
{
};

// demon1_die6
// function begins at statement 13615, parm_start=8753
// OP_STATE	2509	8753	0
// OP_ADDRESS	28	104	8754
// OP_STOREP_F	238	8754	0
// OP_DONE	0	0	0
void () demon1_die6 = [50, demon1_die7]
{
    self.solid = SOLID_NOT;
};

// demon1_die7
// function begins at statement 13619, parm_start=8755
// OP_STATE	6068	8755	0
// OP_DONE	0	0	0
void () demon1_die7 = [51, demon1_die8]
{
};

// demon1_die8
// function begins at statement 13621, parm_start=8756
// OP_STATE	6070	8756	0
// OP_DONE	0	0	0
void () demon1_die8 = [52, demon1_die9]
{
};

// demon1_die9
// function begins at statement 13623, parm_start=8757
// OP_STATE	6072	8756	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () demon1_die9 = [53, demon1_die9]
{
    SUB_Remove();
};

// demon_die
// function begins at statement 13626, parm_start=8758
// OP_LOAD_F	28	152	8758
// OP_LT	8758	8623	8759
// OP_IFNOT	8759	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	8760	4	0
// OP_LOAD_F	28	152	8761
// OP_STORE_V	8761	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	8762
// OP_STORE_V	8762	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	8763
// OP_STORE_V	8763	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	8764
// OP_STORE_V	8764	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_CALL0	8746	0	0
// OP_DONE	0	0	0
void () demon_die = 
{
    
    if(self.health < -80)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_demon.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        return;
    }
    
    demon1_die1();
};

// Demon_MeleeAttack
// function begins at statement 13654, parm_start=8766
// OP_CALL0	8715	0	0
// OP_DONE	0	0	0
void () Demon_MeleeAttack = 
{
    demon1_atta1();
};

// monster_demon1
// function begins at statement 13656, parm_start=8767
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8767	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	8760	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	8748	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8768	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8769	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8745	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8770	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1340	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	8771
// OP_STOREP_F	241	8771	0
// OP_ADDRESS	28	103	8772
// OP_STOREP_F	230	8772	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8767	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	296	7	0
// OP_STORE_V	299	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	8773
// OP_STOREP_F	2845	8773	0
// OP_ADDRESS	28	357	8774
// OP_STOREP_FNC	8650	8774	0
// OP_ADDRESS	28	358	8775
// OP_STOREP_FNC	8663	8775	0
// OP_ADDRESS	28	359	8776
// OP_STOREP_FNC	8671	8776	0
// OP_ADDRESS	28	363	8777
// OP_STOREP_FNC	8757	8777	0
// OP_ADDRESS	28	361	8778
// OP_STOREP_FNC	8765	8778	0
// OP_ADDRESS	28	360	8779
// OP_STOREP_FNC	8677	8779	0
// OP_ADDRESS	28	362	8780
// OP_STOREP_FNC	8736	8780	0
// OP_CALL0	6238	0	0
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
    self.health = 300;
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
// function begins at statement 13705, parm_start=8782
// OP_EQ_F	847	243	8782
// OP_LOAD_V	28	105	8783
// OP_LOAD_ENT	28	181	8786
// OP_LOAD_V	8786	105	8787
// OP_SUB_V	8783	8787	8790
// OP_STORE_V	8790	4	0
// OP_CALL1	458	0	0
// OP_LT	1	959	8793
// OP_AND	8782	8793	8794
// OP_IFNOT	8794	4	0
// OP_ADDRESS	28	368	8795
// OP_STOREP_F	371	8795	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDemonMelee = 
{
    
    if((enemy_range == RANGE_MELEE) && ((vlen(self.origin - self.enemy.origin)) < 32))
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};

// CheckDemonJump
// function begins at statement 13720, parm_start=8797
// OP_LOAD_F	28	108	8801
// OP_LOAD_F	28	137	8802
// OP_ADD_F	8801	8802	8803
// OP_LOAD_ENT	28	181	8804
// OP_LOAD_F	8804	108	8805
// OP_LOAD_ENT	28	181	8806
// OP_LOAD_F	8806	137	8807
// OP_ADD_F	8805	8807	8808
// OP_LOAD_ENT	28	181	8809
// OP_LOAD_F	8809	145	8810
// OP_MUL_F	3721	8810	8811
// OP_ADD_F	8808	8811	8812
// OP_GT	8803	8812	8813
// OP_IFNOT	8813	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	8814
// OP_LOAD_F	28	141	8815
// OP_ADD_F	8814	8815	8816
// OP_LOAD_ENT	28	181	8817
// OP_LOAD_F	8817	108	8818
// OP_LOAD_ENT	28	181	8819
// OP_LOAD_F	8819	137	8820
// OP_ADD_F	8818	8820	8821
// OP_LOAD_ENT	28	181	8822
// OP_LOAD_F	8822	145	8823
// OP_MUL_F	3718	8823	8824
// OP_ADD_F	8821	8824	8825
// OP_LT	8816	8825	8826
// OP_IFNOT	8826	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	8827
// OP_LOAD_V	8827	105	8828
// OP_LOAD_V	28	105	8831
// OP_SUB_V	8828	8831	8834
// OP_STORE_V	8834	8797	0
// OP_STORE_F	650	8799	0
// OP_STORE_V	8797	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	8800	0
// OP_LT	8800	959	8837
// OP_IFNOT	8837	2	0
// OP_RETURN	213	0	0
// OP_GT	8800	2246	8838
// OP_IFNOT	8838	5	0
// OP_CALL0	453	0	0
// OP_LT	1	918	8839
// OP_IFNOT	8839	2	0
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
    dist_z = 0;
    d = vlen(dist);
    
    if(d < 32)
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
// function begins at statement 13770, parm_start=8840
// OP_CALL0	8781	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	368	8843
// OP_STOREP_F	371	8843	0
// OP_RETURN	214	0	0
// OP_CALL0	8796	0	0
// OP_IFNOT	1	10	0
// OP_ADDRESS	28	368	8844
// OP_STOREP_F	372	8844	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8769	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
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
        sound(self, CHAN_VOICE, "demon/djump.wav", 1, ATTN_NORM);
        return TRUE;
    }
    
    return FALSE;
};

// Demon_Melee
// function begins at statement 13788, parm_start=8845
// OP_CALL0	844	0	0
// OP_LOAD_F	28	191	8850
// OP_STORE_V	8850	4	0
// OP_STORE_V	2532	7	0
// OP_CALL2	478	0	0
// OP_LOAD_ENT	28	181	8851
// OP_LOAD_V	8851	105	8852
// OP_LOAD_V	28	105	8855
// OP_SUB_V	8852	8855	8858
// OP_STORE_V	8858	8847	0
// OP_STORE_V	8847	4	0
// OP_CALL1	458	0	0
// OP_GT	1	2165	8861
// OP_IFNOT	8861	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	8862
// OP_STORE_V	8862	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_NOT_F	1	0	8863
// OP_IFNOT	8863	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8768	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1660	1	8864
// OP_ADD_F	1931	8864	8865
// OP_STORE_F	8865	8846	0
// OP_LOAD_ENT	28	181	8866
// OP_STORE_V	8866	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8846	13	0
// OP_CALL4	521	0	0
// OP_LOAD_V	28	117	8867
// OP_STORE_V	8867	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	8870
// OP_MUL_VF	59	3273	8873
// OP_ADD_V	8870	8873	8876
// OP_STORE_V	8876	4	0
// OP_MUL_FV	8845	65	8879
// OP_STORE_V	8879	7	0
// OP_CALL2	2945	0	0
// OP_DONE	0	0	0
void (float side) Demon_Melee = 
{
    local float ldmg;
    local vector delta;
    ai_face();
    walkmove(self.ideal_yaw, 12);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 100)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    sound(self, CHAN_WEAPON, "demon/dhit2.wav", 1, ATTN_NORM);
    ldmg = 10 + (5 * random());
    T_Damage(self.enemy, self, self, ldmg);
    makevectors(self.angles);
    SpawnMeatSpray(self.origin + (v_forward * 16), side * v_right);
};

// Demon_JumpTouch
// function begins at statement 13837, parm_start=8882
// OP_LOAD_F	28	152	8883
// OP_LE	8883	650	8884
// OP_IFNOT	8884	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	8885
// OP_IFNOT	8885	15	0
// OP_LOAD_V	28	113	8886
// OP_STORE_V	8886	4	0
// OP_CALL1	458	0	0
// OP_GT	1	3289	8889
// OP_IFNOT	8889	10	0
// OP_CALL0	453	0	0
// OP_MUL_F	1931	1	8890
// OP_ADD_F	2007	8890	8891
// OP_STORE_F	8891	8882	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8882	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	484	0	0
// OP_NOT_F	1	0	8892
// OP_IFNOT	8892	12	0
// OP_LOAD_F	28	182	8893
// OP_BITAND	8893	223	8894
// OP_IFNOT	8894	8	0
// OP_ADDRESS	28	146	8895
// OP_STOREP_FNC	518	8895	0
// OP_ADDRESS	28	148	8896
// OP_STOREP_FNC	8677	8896	0
// OP_ADDRESS	28	150	8897
// OP_ADD_F	31	686	8898
// OP_STOREP_F	8898	8897	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8899
// OP_STOREP_FNC	518	8899	0
// OP_ADDRESS	28	148	8900
// OP_STOREP_FNC	8713	8900	0
// OP_ADDRESS	28	150	8901
// OP_ADD_F	31	686	8902
// OP_STOREP_F	8902	8901	0
// OP_DONE	0	0	0
void () Demon_JumpTouch = 
{
    local float ldmg;
    
    if(self.health <= 0)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 400)
        {
            ldmg = 40 + (10 * random());
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

