
// func002526
// function begins at statement 44578, parm_start=25663
// OP_STATE	9473	25663	0
// OP_ADDRESS	28	156	25664
// OP_STOREP_F	214	25664	0
// OP_ADDRESS	28	133	25665
// OP_LOAD_F	28	133	25666
// OP_BITOR	25666	339	25667
// OP_STOREP_F	25667	25665	0
// OP_STORE_V	3263	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002526 = [113, func002527]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    func002410(0.9);
};


// func002527
// function begins at statement 44588, parm_start=25668
// OP_STATE	9479	25668	0
// OP_ADDRESS	28	156	25669
// OP_STOREP_F	216	25669	0
// OP_STORE_V	3263	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002527 = [114, func002528]
{
    self.weaponframe = FL_SWIM;
    func002410(0.9);
};


// func002528
// function begins at statement 44594, parm_start=25670
// OP_STATE	9482	25670	0
// OP_ADDRESS	28	156	25671
// OP_STOREP_F	228	25671	0
// OP_STORE_V	213	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002528 = [115, func002529]
{
    self.weaponframe = MOVETYPE_WALK;
    func002410(FALSE);
};


// func002529
// function begins at statement 44600, parm_start=25672
// OP_STATE	9485	25672	0
// OP_ADDRESS	28	156	25673
// OP_STOREP_F	229	25673	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002529 = [116, func002530]
{
    self.weaponframe = MOVETYPE_STEP;
    func002410(CONTENT_EMPTY);
};


// func002530
// function begins at statement 44606, parm_start=25674
// OP_STATE	9488	25674	0
// OP_ADDRESS	28	156	25675
// OP_STOREP_F	230	25675	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002530 = [117, func002531]
{
    self.weaponframe = MOVETYPE_FLY;
    func002410(CONTENT_EMPTY);
};


// func002531
// function begins at statement 44612, parm_start=25676
// OP_STATE	9491	1167	0
// OP_ADDRESS	28	156	25676
// OP_STOREP_F	231	25676	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002531 = [118, func002525]
{
    self.weaponframe = MOVETYPE_TOSS;
    func002410(CONTENT_EMPTY);
};


// func002532
// function begins at statement 44618, parm_start=25677
// OP_STATE	9493	25677	0
// OP_ADDRESS	28	156	25678
// OP_STOREP_F	214	25678	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002532 = [119, func002533]
{
    self.weaponframe = TRUE;
    func002410(CONTENT_EMPTY);
};


// func002533
// function begins at statement 44624, parm_start=25679
// OP_STATE	3584	25679	0
// OP_ADDRESS	28	156	25680
// OP_STOREP_F	216	25680	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002533 = [120, func002534]
{
    self.weaponframe = FL_SWIM;
    func002410(CONTENT_EMPTY);
};


// func002534
// function begins at statement 44630, parm_start=25681
// OP_STATE	9498	25681	0
// OP_ADDRESS	28	156	25682
// OP_STOREP_F	228	25682	0
// OP_LOAD_V	28	175	25683
// OP_STORE_V	25683	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5379	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002534 = [121, func002535]
{
    self.weaponframe = MOVETYPE_WALK;
    makevectors(self.v_angle);
    W_FireAxe();
    func002410(CONTENT_EMPTY);
};


// func002535
// function begins at statement 44640, parm_start=25686
// OP_STATE	9501	1167	0
// OP_ADDRESS	28	156	25686
// OP_STOREP_F	229	25686	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002535 = [122, func002525]
{
    self.weaponframe = MOVETYPE_STEP;
    func002410(CONTENT_EMPTY);
};


// func002536
// function begins at statement 44646, parm_start=25687
// OP_STATE	9503	25687	0
// OP_ADDRESS	28	156	25688
// OP_STOREP_F	230	25688	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002536 = [125, func002537]
{
    self.weaponframe = MOVETYPE_FLY;
    func002410(CONTENT_EMPTY);
};


// func002537
// function begins at statement 44652, parm_start=25689
// OP_STATE	9506	25689	0
// OP_ADDRESS	28	156	25690
// OP_STOREP_F	231	25690	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002537 = [126, func002538]
{
    self.weaponframe = MOVETYPE_TOSS;
    func002410(CONTENT_EMPTY);
};


// func002538
// function begins at statement 44658, parm_start=25691
// OP_STATE	9509	25691	0
// OP_ADDRESS	28	156	25692
// OP_STOREP_F	232	25692	0
// OP_LOAD_V	28	175	25693
// OP_STORE_V	25693	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5379	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002538 = [127, func002539]
{
    self.weaponframe = MOVETYPE_PUSH;
    makevectors(self.v_angle);
    W_FireAxe();
    func002410(CONTENT_EMPTY);
};


// func002539
// function begins at statement 44668, parm_start=25696
// OP_STATE	221	1167	0
// OP_ADDRESS	28	156	25696
// OP_STOREP_F	217	25696	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002539 = [128, func002525]
{
    self.weaponframe = FL_CLIENT;
    func002410(CONTENT_EMPTY);
};


// func002540
// function begins at statement 44674, parm_start=25697
// OP_STATE	9513	25697	0
// OP_ADDRESS	28	156	25698
// OP_STOREP_F	214	25698	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002540 = [131, func002541]
{
    self.weaponframe = TRUE;
    func002410(CONTENT_EMPTY);
};


// func002541
// function begins at statement 44680, parm_start=25699
// OP_STATE	9516	25699	0
// OP_ADDRESS	28	156	25700
// OP_STOREP_F	216	25700	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002541 = [132, func002542]
{
    self.weaponframe = FL_SWIM;
    func002410(CONTENT_EMPTY);
};


// func002542
// function begins at statement 44686, parm_start=25701
// OP_STATE	9519	25701	0
// OP_ADDRESS	28	156	25702
// OP_STOREP_F	228	25702	0
// OP_LOAD_V	28	175	25703
// OP_STORE_V	25703	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5379	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002542 = [133, func002543]
{
    self.weaponframe = MOVETYPE_WALK;
    makevectors(self.v_angle);
    W_FireAxe();
    func002410(CONTENT_EMPTY);
};


// func002543
// function begins at statement 44696, parm_start=25706
// OP_STATE	9522	1167	0
// OP_ADDRESS	28	156	25706
// OP_STOREP_F	229	25706	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002543 = [134, func002525]
{
    self.weaponframe = MOVETYPE_STEP;
    func002410(CONTENT_EMPTY);
};


// func002544
// function begins at statement 44702, parm_start=25707
// OP_STATE	9524	25707	0
// OP_ADDRESS	28	156	25708
// OP_STOREP_F	230	25708	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002544 = [137, func002545]
{
    self.weaponframe = MOVETYPE_FLY;
    func002410(CONTENT_EMPTY);
};


// func002545
// function begins at statement 44708, parm_start=25709
// OP_STATE	9527	25709	0
// OP_ADDRESS	28	156	25710
// OP_STOREP_F	231	25710	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002545 = [138, func002546]
{
    self.weaponframe = MOVETYPE_TOSS;
    func002410(CONTENT_EMPTY);
};


// func002546
// function begins at statement 44714, parm_start=25711
// OP_STATE	9530	25711	0
// OP_ADDRESS	28	156	25712
// OP_STOREP_F	232	25712	0
// OP_LOAD_V	28	175	25713
// OP_STORE_V	25713	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5379	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002546 = [139, func002547]
{
    self.weaponframe = MOVETYPE_PUSH;
    makevectors(self.v_angle);
    W_FireAxe();
    func002410(CONTENT_EMPTY);
};


// func002547
// function begins at statement 44724, parm_start=25716
// OP_STATE	9533	1167	0
// OP_ADDRESS	28	156	25716
// OP_STOREP_F	217	25716	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002547 = [140, func002525]
{
    self.weaponframe = FL_CLIENT;
    func002410(CONTENT_EMPTY);
};


// func002548
// function begins at statement 44730, parm_start=25717
// OP_STATE	8111	25717	0
// OP_ADDRESS	28	133	25718
// OP_LOAD_F	28	133	25719
// OP_BITOR	25719	339	25720
// OP_STOREP_F	25720	25718	0
// OP_ADDRESS	28	156	25721
// OP_LOAD_F	28	156	25722
// OP_ADD_F	25722	214	25723
// OP_STOREP_F	25723	25721	0
// OP_LOAD_F	28	156	25724
// OP_EQ_F	25724	234	25725
// OP_IFNOT	25725	3	0
// OP_ADDRESS	28	156	25726
// OP_STOREP_F	214	25726	0
// OP_CALL0	5356	0	0
// OP_LOAD_V	28	175	25727
// OP_STORE_V	25727	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	6065	0	0
// OP_ADDRESS	28	378	25730
// OP_LOAD_F	28	150	25731
// OP_SUB_F	25731	5500	25732
// OP_STOREP_F	25732	25730	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002548 = [103, func002549]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    makevectors(self.v_angle);
    W_FireSpikes(MOVETYPE_STEP);
    self.attack_finished = self.nextthink - 0.01;
    func002410(CONTENT_EMPTY);
};


// func002549
// function begins at statement 44757, parm_start=25733
// OP_STATE	8114	1167	0
// OP_ADDRESS	28	133	25733
// OP_LOAD_F	28	133	25734
// OP_BITOR	25734	339	25735
// OP_STOREP_F	25735	25733	0
// OP_ADDRESS	28	156	25736
// OP_LOAD_F	28	156	25737
// OP_ADD_F	25737	214	25738
// OP_STOREP_F	25738	25736	0
// OP_LOAD_F	28	156	25739
// OP_EQ_F	25739	234	25740
// OP_IFNOT	25740	3	0
// OP_ADDRESS	28	156	25741
// OP_STOREP_F	214	25741	0
// OP_CALL0	5356	0	0
// OP_LOAD_V	28	175	25742
// OP_STORE_V	25742	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	279	4	0
// OP_CALL1	6065	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002549 = [104, func002525]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    makevectors(self.v_angle);
    W_FireSpikes(CONTENT_SLIME);
    func002410(CONTENT_EMPTY);
};


// func002550
// function begins at statement 44780, parm_start=25745
// OP_STATE	9562	25745	0
// OP_ADDRESS	28	133	25746
// OP_LOAD_F	28	133	25747
// OP_BITOR	25747	339	25748
// OP_STOREP_F	25748	25746	0
// OP_ADDRESS	28	156	25749
// OP_LOAD_F	28	156	25750
// OP_ADD_F	25750	214	25751
// OP_STOREP_F	25751	25749	0
// OP_LOAD_F	28	156	25752
// OP_EQ_F	25752	230	25753
// OP_IFNOT	25753	3	0
// OP_ADDRESS	28	156	25754
// OP_STOREP_F	214	25754	0
// OP_CALL0	5356	0	0
// OP_LOAD_V	28	175	25755
// OP_STORE_V	25755	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5864	0	0
// OP_ADDRESS	28	378	25758
// OP_LOAD_F	28	150	25759
// OP_SUB_F	25759	5500	25760
// OP_STOREP_F	25760	25758	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002550 = [105, func002551]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    makevectors(self.v_angle);
    W_FireLightning();
    self.attack_finished = self.nextthink - 0.01;
    func002410(CONTENT_EMPTY);
};


// func002551
// function begins at statement 44806, parm_start=25761
// OP_STATE	9577	1167	0
// OP_ADDRESS	28	133	25761
// OP_LOAD_F	28	133	25762
// OP_BITOR	25762	339	25763
// OP_STOREP_F	25763	25761	0
// OP_ADDRESS	28	156	25764
// OP_LOAD_F	28	156	25765
// OP_ADD_F	25765	214	25766
// OP_STOREP_F	25766	25764	0
// OP_LOAD_F	28	156	25767
// OP_EQ_F	25767	230	25768
// OP_IFNOT	25768	3	0
// OP_ADDRESS	28	156	25769
// OP_STOREP_F	214	25769	0
// OP_CALL0	5356	0	0
// OP_LOAD_V	28	175	25770
// OP_STORE_V	25770	4	0
// OP_CALL1	452	0	0
// OP_CALL0	5864	0	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002551 = [106, func002525]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    makevectors(self.v_angle);
    W_FireLightning();
    func002410(CONTENT_EMPTY);
};


// func002552
// function begins at statement 44828, parm_start=25773
// OP_STATE	9591	25773	0
// OP_ADDRESS	28	156	25774
// OP_STOREP_F	214	25774	0
// OP_ADDRESS	28	133	25775
// OP_LOAD_F	28	133	25776
// OP_BITOR	25776	339	25777
// OP_STOREP_F	25777	25775	0
// OP_STORE_V	216	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002552 = [107, func002553]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    func002410(FL_SWIM);
};


// func002553
// function begins at statement 44838, parm_start=25778
// OP_STATE	9597	25778	0
// OP_ADDRESS	28	156	25779
// OP_STOREP_F	216	25779	0
// OP_STORE_V	216	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002553 = [108, func002554]
{
    self.weaponframe = FL_SWIM;
    func002410(FL_SWIM);
};


// func002554
// function begins at statement 44844, parm_start=25780
// OP_STATE	9600	25780	0
// OP_ADDRESS	28	156	25781
// OP_STOREP_F	228	25781	0
// OP_STORE_V	214	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002554 = [109, func002555]
{
    self.weaponframe = MOVETYPE_WALK;
    func002410(TRUE);
};


// func002555
// function begins at statement 44850, parm_start=25782
// OP_STATE	9603	25782	0
// OP_ADDRESS	28	156	25783
// OP_STOREP_F	229	25783	0
// OP_STORE_V	214	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002555 = [110, func002556]
{
    self.weaponframe = MOVETYPE_STEP;
    func002410(TRUE);
};


// func002556
// function begins at statement 44856, parm_start=25784
// OP_STATE	2224	25784	0
// OP_ADDRESS	28	156	25785
// OP_STOREP_F	230	25785	0
// OP_STORE_V	213	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002556 = [111, func002557]
{
    self.weaponframe = MOVETYPE_FLY;
    func002410(FALSE);
};


// func002557
// function begins at statement 44862, parm_start=25786
// OP_STATE	9608	1167	0
// OP_ADDRESS	28	156	25786
// OP_STOREP_F	231	25786	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002557 = [112, func002525]
{
    self.weaponframe = MOVETYPE_TOSS;
    func002410(CONTENT_EMPTY);
};


// func002558
// function begins at statement 44868, parm_start=25788
// OP_LOAD_F	28	152	25789
// OP_LT	25789	213	25790
// OP_IFNOT	25790	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	352	129	25791
// OP_EQ_S	25791	9182	25792
// OP_IFNOT	25792	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	25793
// OP_EQ_F	25793	278	25794
// OP_LOAD_F	28	189	25795
// OP_EQ_F	25795	228	25796
// OP_AND	25794	25796	25797
// OP_IFNOT	25797	20	0
// OP_STORE_V	214	4	0
// OP_CALL1	9610	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	25798
// OP_IFNOT	25798	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6648	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6649	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	25799
// OP_EQ_F	25799	279	25800
// OP_IFNOT	25800	18	0
// OP_CALL0	457	0	0
// OP_GT	1	539	25801
// OP_IFNOT	25801	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6681	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	25802
// OP_EQ_F	25802	280	25803
// OP_IFNOT	25803	18	0
// OP_CALL0	457	0	0
// OP_GT	1	539	25804
// OP_IFNOT	25804	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6681	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	379	25805
// OP_GT	25805	31	25806
// OP_IFNOT	25806	4	0
// OP_ADDRESS	28	392	25807
// OP_STOREP_F	213	25807	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	25808
// OP_ADD_F	31	539	25809
// OP_STOREP_F	25809	25808	0
// OP_LOAD_F	28	392	25810
// OP_EQ_F	25810	214	25811
// OP_IFNOT	25811	10	0
// OP_ADDRESS	28	392	25812
// OP_STOREP_F	213	25812	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6674	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	25813
// OP_ADD_F	25813	214	25814
// OP_STORE_V	25814	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	25788	0
// OP_ADDRESS	28	208	25815
// OP_STOREP_S	3002	25815	0
// OP_EQ_F	25788	214	25816
// OP_IFNOT	25816	4	0
// OP_ADDRESS	28	208	25817
// OP_STOREP_S	6663	25817	0
// OP_GOTO	23	0	0
// OP_EQ_F	25788	216	25818
// OP_IFNOT	25818	4	0
// OP_ADDRESS	28	208	25819
// OP_STOREP_S	6664	25819	0
// OP_GOTO	18	0	0
// OP_EQ_F	25788	228	25820
// OP_IFNOT	25820	4	0
// OP_ADDRESS	28	208	25821
// OP_STOREP_S	6665	25821	0
// OP_GOTO	13	0	0
// OP_EQ_F	25788	229	25822
// OP_IFNOT	25822	4	0
// OP_ADDRESS	28	208	25823
// OP_STOREP_S	6666	25823	0
// OP_GOTO	8	0	0
// OP_EQ_F	25788	230	25824
// OP_IFNOT	25824	4	0
// OP_ADDRESS	28	208	25825
// OP_STOREP_S	6667	25825	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	25826
// OP_STOREP_S	6668	25826	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	25827
// OP_STORE_V	25827	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func002558 = 
{
    local float globaldef008176;
    
    if(self.health < FALSE)
    {
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    
    if((self.watertype == CONTENT_WATER) && (self.waterlevel == MOVETYPE_WALK))
    {
        DeathBubbles(TRUE);
        if(random() > RA_PLAYERSTATTIME)
        {
            sound(self, CHAN_VOICE, "player/drown1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/drown2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_SLIME)
    {
        if(random() > RA_PLAYERSTATTIME)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_LAVA)
    {
        if(random() > RA_PLAYERSTATTIME)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        self.axhitme = FALSE;
        return;
    }
    
    self.pain_finished = time + RA_PLAYERSTATTIME;
    
    if(self.axhitme == TRUE)
    {
        self.axhitme = FALSE;
        sound(self, CHAN_VOICE, "player/axhit1.wav", TRUE, ATTN_NORM);
        return;
    }
    
    globaldef008176 = rint((random() * MOVETYPE_FLY) + TRUE);
    self.noise = "";
    if(globaldef008176 == TRUE)
    {
        self.noise = "player/pain1.wav";
    }
    else
    {
        if(globaldef008176 == FL_SWIM)
        {
            self.noise = "player/pain2.wav";
        }
        else
        {
            if(globaldef008176 == MOVETYPE_WALK)
            {
                self.noise = "player/pain3.wav";
            }
            else
            {
                if(globaldef008176 == MOVETYPE_STEP)
                {
                    self.noise = "player/pain4.wav";
                }
                else
                {
                    if(globaldef008176 == MOVETYPE_FLY)
                    {
                        self.noise = "player/pain5.wav";
                    }
                    else
                    {
                        self.noise = "player/pain6.wav";
                    }
                    
                }
                
            }
            
        }
        
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    return;
};


// func002559
// function begins at statement 45012, parm_start=25829
// OP_STATE	5878	25829	0
// OP_CALL0	25787	0	0
// OP_ADDRESS	28	156	25830
// OP_STOREP_F	213	25830	0
// OP_DONE	0	0	0
void () func002559 = [35, func002560]
{
    func002558();
    self.weaponframe = FALSE;
};


// func002560
// function begins at statement 45017, parm_start=25831
// OP_STATE	9655	25831	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002560 = [36, func002561]
{
    func002410(CONTENT_EMPTY);
};


// func002561
// function begins at statement 45021, parm_start=25832
// OP_STATE	9657	25832	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002561 = [37, func002562]
{
    func002410(CONTENT_EMPTY);
};


// func002562
// function begins at statement 45025, parm_start=25833
// OP_STATE	9659	25833	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002562 = [38, func002563]
{
    func002410(CONTENT_EMPTY);
};


// func002563
// function begins at statement 45029, parm_start=25834
// OP_STATE	9661	25834	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002563 = [39, func002564]
{
    func002410(CONTENT_EMPTY);
};


// func002564
// function begins at statement 45033, parm_start=25835
// OP_STATE	746	1167	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002564 = [40, func002525]
{
    func002410(CONTENT_EMPTY);
};


// func002565
// function begins at statement 45037, parm_start=25836
// OP_STATE	9664	25836	0
// OP_CALL0	25787	0	0
// OP_ADDRESS	28	156	25837
// OP_STOREP_F	213	25837	0
// OP_DONE	0	0	0
void () func002565 = [29, func002566]
{
    func002558();
    self.weaponframe = FALSE;
};


// func002566
// function begins at statement 45042, parm_start=25838
// OP_STATE	309	25838	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002566 = [30, func002567]
{
    func002410(CONTENT_EMPTY);
};


// func002567
// function begins at statement 45046, parm_start=25839
// OP_STATE	310	25839	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002567 = [31, func002568]
{
    func002410(CONTENT_EMPTY);
};


// func002568
// function begins at statement 45050, parm_start=25840
// OP_STATE	219	25840	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002568 = [32, func002569]
{
    func002410(CONTENT_EMPTY);
};


// func002569
// function begins at statement 45054, parm_start=25841
// OP_STATE	312	25841	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002569 = [33, func002570]
{
    func002410(CONTENT_EMPTY);
};


// func002570
// function begins at statement 45058, parm_start=25842
// OP_STATE	9671	1167	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002570 = [34, func002525]
{
    func002410(CONTENT_EMPTY);
};


// func002571
// function begins at statement 45062, parm_start=25842
// OP_ADDRESS	28	589	25844
// OP_STOREP_ENT	25842	25844	0
// OP_LOAD_F	28	156	25845
// OP_IFNOT	25845	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	381	25846
// OP_GT	25846	31	25847
// OP_IFNOT	25847	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	25848
// OP_EQ_F	25848	253	25849
// OP_IFNOT	25849	9	0
// OP_LOAD_FNC	28	148	25850
// OP_EQ_FNC	25850	16476	25851
// OP_IFNOT	25851	4	0
// OP_ADDRESS	28	553	25852
// OP_STOREP_FNC	25835	25852	0
// OP_GOTO	2	0	0
// OP_CALL0	25835	0	0
// OP_GOTO	8	0	0
// OP_LOAD_FNC	28	148	25853
// OP_EQ_FNC	25853	16476	25854
// OP_IFNOT	25854	4	0
// OP_ADDRESS	28	553	25855
// OP_STOREP_FNC	25828	25855	0
// OP_GOTO	2	0	0
// OP_CALL0	25828	0	0
// OP_DONE	0	0	0
void (entity globaldef008189, float globaldef008190) func002571 = 
{
    self.field000266 = globaldef008189;
    
    if(self.weaponframe)
    {
        return;
    }
    
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        if(self.think == func002276)
        {
            self.field000230 = func002565;
        }
        else
        {
            func002565();
        }
        
    }
    else
    {
        if(self.think == func002276)
        {
            self.field000230 = func002559;
        }
        else
        {
            func002559();
        }
        
    }
    
};


// func002572
// function begins at statement 45090, parm_start=25857
// OP_ADDRESS	28	148	25857
// OP_STOREP_FNC	25856	25857	0
// OP_ADDRESS	28	150	25858
// OP_ADD_F	31	3036	25859
// OP_STOREP_F	25859	25858	0
// OP_LOAD_F	28	422	25860
// OP_LT	25860	31	25861
// OP_IFNOT	25861	5	0
// OP_ADDRESS	28	148	25862
// OP_STOREP_FNC	1101	25862	0
// OP_STORE_V	28	4	0
// OP_CALL1	1077	0	0
// OP_DONE	0	0	0
void () func002572 = 
{
    self.think = func002572;
    self.nextthink = time + 0.1;
    
    if(self.pausetime < time)
    {
        self.think = func002421;
        func002375(self);
    }
    
};


// func002573
// function begins at statement 45103, parm_start=25864
// OP_ADDRESS	28	165	25864
// OP_STOREP_F	248	25864	0
// OP_STORE_V	28	4	0
// OP_CALL1	1080	0	0
// OP_IFNOT	1	3	0
// OP_CALL0	25856	0	0
// OP_GOTO	9	0	0
// OP_ADDRESS	28	150	25865
// OP_ADD_F	31	539	25866
// OP_CALL0	457	0	0
// OP_MUL_F	1	216	25867
// OP_ADD_F	25866	25867	25868
// OP_STOREP_F	25868	25865	0
// OP_ADDRESS	28	148	25869
// OP_STOREP_FNC	1101	25869	0
// OP_DONE	0	0	0
void () func002573 = 
{
    self.deadflag = DEAD_DEAD;
    if(func002377(self))
    {
        func002572();
    }
    else
    {
        self.nextthink = (time + RA_PLAYERSTATTIME) + (random() * FL_SWIM);
        self.think = func002421;
    }
    
};


// func002574
// function begins at statement 45119, parm_start=25871
// OP_STATE	1470	25871	0
// OP_DONE	0	0	0
void () func002574 = [50, func002575]
{
};


// func002575
// function begins at statement 45121, parm_start=25872
// OP_STATE	9911	25872	0
// OP_DONE	0	0	0
void () func002575 = [51, func002576]
{
};


// func002576
// function begins at statement 45123, parm_start=25873
// OP_STATE	9913	25873	0
// OP_DONE	0	0	0
void () func002576 = [52, func002577]
{
};


// func002577
// function begins at statement 45125, parm_start=25874
// OP_STATE	9915	25874	0
// OP_DONE	0	0	0
void () func002577 = [53, func002578]
{
};


// func002578
// function begins at statement 45127, parm_start=25875
// OP_STATE	9917	25875	0
// OP_DONE	0	0	0
void () func002578 = [54, func002579]
{
};


// func002579
// function begins at statement 45129, parm_start=25876
// OP_STATE	9919	25876	0
// OP_DONE	0	0	0
void () func002579 = [55, func002580]
{
};


// func002580
// function begins at statement 45131, parm_start=25877
// OP_STATE	9921	25877	0
// OP_DONE	0	0	0
void () func002580 = [56, func002581]
{
};


// func002581
// function begins at statement 45133, parm_start=25878
// OP_STATE	9923	25878	0
// OP_DONE	0	0	0
void () func002581 = [57, func002582]
{
};


// func002582
// function begins at statement 45135, parm_start=25879
// OP_STATE	9925	25879	0
// OP_DONE	0	0	0
void () func002582 = [58, func002583]
{
};


// func002583
// function begins at statement 45137, parm_start=25880
// OP_STATE	2783	25880	0
// OP_DONE	0	0	0
void () func002583 = [59, func002584]
{
};


// func002584
// function begins at statement 45139, parm_start=25881
// OP_STATE	2019	25880	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002584 = [60, func002584]
{
    func002573();
};


// func002585
// function begins at statement 45142, parm_start=25882
// OP_STATE	9928	25882	0
// OP_DONE	0	0	0
void () func002585 = [61, func002586]
{
};


// func002586
// function begins at statement 45144, parm_start=25883
// OP_STATE	9930	25883	0
// OP_DONE	0	0	0
void () func002586 = [62, func002587]
{
};


// func002587
// function begins at statement 45146, parm_start=25884
// OP_STATE	6707	25884	0
// OP_DONE	0	0	0
void () func002587 = [63, func002588]
{
};


// func002588
// function begins at statement 45148, parm_start=25885
// OP_STATE	220	25885	0
// OP_DONE	0	0	0
void () func002588 = [64, func002589]
{
};


// func002589
// function begins at statement 45150, parm_start=25886
// OP_STATE	9934	25886	0
// OP_DONE	0	0	0
void () func002589 = [65, func002590]
{
};


// func002590
// function begins at statement 45152, parm_start=25887
// OP_STATE	9936	25887	0
// OP_DONE	0	0	0
void () func002590 = [66, func002591]
{
};


// func002591
// function begins at statement 45154, parm_start=25888
// OP_STATE	9938	25888	0
// OP_DONE	0	0	0
void () func002591 = [67, func002592]
{
};


// func002592
// function begins at statement 45156, parm_start=25889
// OP_STATE	8193	25889	0
// OP_DONE	0	0	0
void () func002592 = [68, func002593]
{
};


// func002593
// function begins at statement 45158, parm_start=25890
// OP_STATE	8196	25889	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002593 = [69, func002593]
{
    func002573();
};


// func002594
// function begins at statement 45161, parm_start=25891
// OP_STATE	1536	25891	0
// OP_DONE	0	0	0
void () func002594 = [70, func002595]
{
};


// func002595
// function begins at statement 45163, parm_start=25892
// OP_STATE	8201	25892	0
// OP_DONE	0	0	0
void () func002595 = [71, func002596]
{
};


// func002596
// function begins at statement 45165, parm_start=25893
// OP_STATE	9943	25893	0
// OP_DONE	0	0	0
void () func002596 = [72, func002597]
{
};


// func002597
// function begins at statement 45167, parm_start=25894
// OP_STATE	5487	25894	0
// OP_DONE	0	0	0
void () func002597 = [73, func002598]
{
};


// func002598
// function begins at statement 45169, parm_start=25895
// OP_STATE	9946	25895	0
// OP_DONE	0	0	0
void () func002598 = [74, func002599]
{
};


// func002599
// function begins at statement 45171, parm_start=25896
// OP_STATE	9173	25896	0
// OP_DONE	0	0	0
void () func002599 = [75, func002600]
{
};


// func002600
// function begins at statement 45173, parm_start=25897
// OP_STATE	9949	25897	0
// OP_DONE	0	0	0
void () func002600 = [76, func002601]
{
};


// func002601
// function begins at statement 45175, parm_start=25898
// OP_STATE	9951	25898	0
// OP_DONE	0	0	0
void () func002601 = [77, func002602]
{
};


// func002602
// function begins at statement 45177, parm_start=25899
// OP_STATE	9953	25899	0
// OP_DONE	0	0	0
void () func002602 = [78, func002603]
{
};


// func002603
// function begins at statement 45179, parm_start=25900
// OP_STATE	9955	25900	0
// OP_DONE	0	0	0
void () func002603 = [79, func002604]
{
};


// func002604
// function begins at statement 45181, parm_start=25901
// OP_STATE	2805	25901	0
// OP_DONE	0	0	0
void () func002604 = [80, func002605]
{
};


// func002605
// function begins at statement 45183, parm_start=25902
// OP_STATE	8204	25902	0
// OP_DONE	0	0	0
void () func002605 = [81, func002606]
{
};


// func002606
// function begins at statement 45185, parm_start=25903
// OP_STATE	9959	25903	0
// OP_DONE	0	0	0
void () func002606 = [82, func002607]
{
};


// func002607
// function begins at statement 45187, parm_start=25904
// OP_STATE	9961	25904	0
// OP_DONE	0	0	0
void () func002607 = [83, func002608]
{
};


// func002608
// function begins at statement 45189, parm_start=25905
// OP_STATE	7694	25904	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002608 = [84, func002608]
{
    func002573();
};


// func002609
// function begins at statement 45192, parm_start=25906
// OP_STATE	9963	25906	0
// OP_DONE	0	0	0
void () func002609 = [85, func002610]
{
};


// func002610
// function begins at statement 45194, parm_start=25907
// OP_STATE	9965	25907	0
// OP_DONE	0	0	0
void () func002610 = [86, func002611]
{
};


// func002611
// function begins at statement 45196, parm_start=25908
// OP_STATE	9967	25908	0
// OP_DONE	0	0	0
void () func002611 = [87, func002612]
{
};


// func002612
// function begins at statement 45198, parm_start=25909
// OP_STATE	9969	25909	0
// OP_DONE	0	0	0
void () func002612 = [88, func002613]
{
};


// func002613
// function begins at statement 45200, parm_start=25910
// OP_STATE	9971	25910	0
// OP_DONE	0	0	0
void () func002613 = [89, func002614]
{
};


// func002614
// function begins at statement 45202, parm_start=25911
// OP_STATE	2658	25911	0
// OP_DONE	0	0	0
void () func002614 = [90, func002615]
{
};


// func002615
// function begins at statement 45204, parm_start=25912
// OP_STATE	9974	25912	0
// OP_DONE	0	0	0
void () func002615 = [91, func002616]
{
};


// func002616
// function begins at statement 45206, parm_start=25913
// OP_STATE	9976	25913	0
// OP_DONE	0	0	0
void () func002616 = [92, func002617]
{
};


// func002617
// function begins at statement 45208, parm_start=25914
// OP_STATE	9978	25913	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002617 = [93, func002617]
{
    func002573();
};


// func002618
// function begins at statement 45211, parm_start=25915
// OP_STATE	9979	25915	0
// OP_DONE	0	0	0
void () func002618 = [94, func002619]
{
};


// func002619
// function begins at statement 45213, parm_start=25916
// OP_STATE	9981	25916	0
// OP_DONE	0	0	0
void () func002619 = [95, func002620]
{
};


// func002620
// function begins at statement 45215, parm_start=25917
// OP_STATE	9983	25917	0
// OP_DONE	0	0	0
void () func002620 = [96, func002621]
{
};


// func002621
// function begins at statement 45217, parm_start=25918
// OP_STATE	9985	25918	0
// OP_DONE	0	0	0
void () func002621 = [97, func002622]
{
};


// func002622
// function begins at statement 45219, parm_start=25919
// OP_STATE	9987	25919	0
// OP_DONE	0	0	0
void () func002622 = [98, func002623]
{
};


// func002623
// function begins at statement 45221, parm_start=25920
// OP_STATE	9989	25920	0
// OP_DONE	0	0	0
void () func002623 = [99, func002624]
{
};


// func002624
// function begins at statement 45223, parm_start=25921
// OP_STATE	1997	25921	0
// OP_DONE	0	0	0
void () func002624 = [100, func002625]
{
};


// func002625
// function begins at statement 45225, parm_start=25922
// OP_STATE	8107	25922	0
// OP_DONE	0	0	0
void () func002625 = [101, func002626]
{
};


// func002626
// function begins at statement 45227, parm_start=25923
// OP_STATE	8109	25922	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002626 = [102, func002626]
{
    func002573();
};


// func002627
// function begins at statement 45230, parm_start=25924
// OP_STATE	9993	25924	0
// OP_DONE	0	0	0
void () func002627 = [41, func002628]
{
};


// func002628
// function begins at statement 45232, parm_start=25925
// OP_STATE	9995	25925	0
// OP_DONE	0	0	0
void () func002628 = [42, func002629]
{
};


// func002629
// function begins at statement 45234, parm_start=25926
// OP_STATE	9997	25926	0
// OP_DONE	0	0	0
void () func002629 = [43, func002630]
{
};


// func002630
// function begins at statement 45236, parm_start=25927
// OP_STATE	9999	25927	0
// OP_DONE	0	0	0
void () func002630 = [44, func002631]
{
};


// func002631
// function begins at statement 45238, parm_start=25928
// OP_STATE	2598	25928	0
// OP_DONE	0	0	0
void () func002631 = [45, func002632]
{
};


// func002632
// function begins at statement 45240, parm_start=25929
// OP_STATE	10002	25929	0
// OP_DONE	0	0	0
void () func002632 = [46, func002633]
{
};


// func002633
// function begins at statement 45242, parm_start=25930
// OP_STATE	10004	25930	0
// OP_DONE	0	0	0
void () func002633 = [47, func002634]
{
};


// func002634
// function begins at statement 45244, parm_start=25931
// OP_STATE	10006	25931	0
// OP_DONE	0	0	0
void () func002634 = [48, func002635]
{
};


// func002635
// function begins at statement 45246, parm_start=25932
// OP_STATE	10008	25931	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () func002635 = [49, func002635]
{
    func002573();
};

