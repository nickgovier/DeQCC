void () bubble_bob;
// player_stand1
// function begins at statement 20974, parm_start=14677
// OP_STATE	1126	13492	0
// OP_ADDRESS	28	181	14677
// OP_STOREP_F	619	14677	0
// OP_LOAD_F	28	139	14678
// OP_LOAD_F	28	140	14679
// OP_OR	14678	14679	14680
// OP_IFNOT	14680	5	0
// OP_ADDRESS	28	421	14681
// OP_STOREP_F	619	14681	0
// OP_CALL0	2362	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	179	14682
// OP_EQ_F	14682	321	14683
// OP_IFNOT	14683	11	0
// OP_LOAD_F	28	421	14684
// OP_GE	14684	833	14685
// OP_IFNOT	14685	3	0
// OP_ADDRESS	28	421	14686
// OP_STOREP_F	619	14686	0
// OP_ADDRESS	28	156	14687
// OP_LOAD_F	28	421	14688
// OP_ADD_F	1126	14688	14689
// OP_STOREP_F	14689	14687	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	421	14690
// OP_GE	14690	813	14691
// OP_IFNOT	14691	3	0
// OP_ADDRESS	28	421	14692
// OP_STOREP_F	619	14692	0
// OP_ADDRESS	28	156	14693
// OP_LOAD_F	28	421	14694
// OP_ADD_F	833	14694	14695
// OP_STOREP_F	14695	14693	0
// OP_ADDRESS	28	421	14696
// OP_LOAD_F	28	421	14697
// OP_ADD_F	14697	677	14698
// OP_STOREP_F	14698	14696	0
// OP_DONE	0	0	0
void () player_stand1 = [17, player_stand1]
{
    self.weaponframe = 0;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = 0;
        player_run();
        return;
    }
    
    if(self.weapon == IT_WEP1)
    {
        
        if(self.walkframe >= 12)
        {
            self.walkframe = 0;
        }
        
        self.frame = 17 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe >= 5)
        {
            self.walkframe = 0;
        }
        
        self.frame = 12 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + 1;
};

// player_run
// function begins at statement 21012, parm_start=14699
// OP_STATE	816	2362	0
// OP_ADDRESS	28	181	14699
// OP_STOREP_F	619	14699	0
// OP_LOAD_F	28	139	14700
// OP_NOT_F	14700	0	14701
// OP_LOAD_F	28	140	14702
// OP_NOT_F	14702	0	14703
// OP_AND	14701	14703	14704
// OP_IFNOT	14704	5	0
// OP_ADDRESS	28	421	14705
// OP_STOREP_F	619	14705	0
// OP_CALL0	13492	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	179	14706
// OP_EQ_F	14706	321	14707
// OP_IFNOT	14707	11	0
// OP_LOAD_F	28	421	14708
// OP_EQ_F	14708	816	14709
// OP_IFNOT	14709	3	0
// OP_ADDRESS	28	421	14710
// OP_STOREP_F	619	14710	0
// OP_ADDRESS	28	156	14711
// OP_LOAD_F	28	421	14712
// OP_ADD_F	619	14712	14713
// OP_STOREP_F	14713	14711	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	421	14714
// OP_EQ_F	14714	816	14715
// OP_IFNOT	14715	3	0
// OP_ADDRESS	28	421	14716
// OP_STOREP_F	619	14716	0
// OP_ADDRESS	28	156	14717
// OP_LOAD_F	28	156	14718
// OP_LOAD_F	28	421	14719
// OP_ADD_F	14718	14719	14720
// OP_STOREP_F	14720	14717	0
// OP_ADDRESS	28	421	14721
// OP_LOAD_F	28	421	14722
// OP_ADD_F	14722	677	14723
// OP_STOREP_F	14723	14721	0
// OP_DONE	0	0	0
void () player_run = [6, player_run]
{
    self.weaponframe = 0;
    
    if(!self.velocity_x && !self.velocity_y)
    {
        self.walkframe = 0;
        player_stand1();
        return;
    }
    
    if(self.weapon == IT_WEP1)
    {
        
        if(self.walkframe == 6)
        {
            self.walkframe = 0;
        }
        
        self.frame = 0 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == 6)
        {
            self.walkframe = 0;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + 1;
};

// player_shot1
// function begins at statement 21053, parm_start=14725
// OP_STATE	14725	14726	0
// OP_ADDRESS	28	181	14727
// OP_STOREP_F	677	14727	0
// OP_ADDRESS	28	158	14728
// OP_LOAD_F	28	158	14729
// OP_BITOR	14729	383	14730
// OP_STOREP_F	14730	14728	0
// OP_DONE	0	0	0
void () player_shot1 = [113, player_shot2]
{
    self.weaponframe = 1;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_shot2
// function begins at statement 21061, parm_start=14731
// OP_STATE	14731	14732	0
// OP_ADDRESS	28	181	14733
// OP_STOREP_F	806	14733	0
// OP_DONE	0	0	0
void () player_shot2 = [114, player_shot3]
{
    self.weaponframe = 2;
};

// player_shot3
// function begins at statement 21065, parm_start=14734
// OP_STATE	14734	14735	0
// OP_ADDRESS	28	181	14736
// OP_STOREP_F	788	14736	0
// OP_DONE	0	0	0
void () player_shot3 = [115, player_shot4]
{
    self.weaponframe = 3;
};

// player_shot4
// function begins at statement 21069, parm_start=14737
// OP_STATE	14737	14738	0
// OP_ADDRESS	28	181	14739
// OP_STOREP_F	808	14739	0
// OP_DONE	0	0	0
void () player_shot4 = [116, player_shot5]
{
    self.weaponframe = 4;
};

// player_shot5
// function begins at statement 21073, parm_start=14740
// OP_STATE	14740	14741	0
// OP_ADDRESS	28	181	14742
// OP_STOREP_F	813	14742	0
// OP_DONE	0	0	0
void () player_shot5 = [117, player_shot6]
{
    self.weaponframe = 5;
};

// player_shot6
// function begins at statement 21077, parm_start=14743
// OP_STATE	14743	2362	0
// OP_ADDRESS	28	181	14744
// OP_STOREP_F	816	14744	0
// OP_DONE	0	0	0
void () player_shot6 = [118, player_run]
{
    self.weaponframe = 6;
};

// player_axe1
// function begins at statement 21081, parm_start=14746
// OP_STATE	14746	14747	0
// OP_ADDRESS	28	181	14748
// OP_STOREP_F	677	14748	0
// OP_DONE	0	0	0
void () player_axe1 = [119, player_axe2]
{
    self.weaponframe = 1;
};

// player_axe2
// function begins at statement 21085, parm_start=14749
// OP_STATE	2627	14749	0
// OP_ADDRESS	28	181	14750
// OP_STOREP_F	806	14750	0
// OP_DONE	0	0	0
void () player_axe2 = [120, player_axe3]
{
    self.weaponframe = 2;
};

// player_axe3
// function begins at statement 21089, parm_start=14751
// OP_STATE	14751	14752	0
// OP_ADDRESS	28	181	14753
// OP_STOREP_F	788	14753	0
// OP_DONE	0	0	0
void () player_axe3 = [121, player_axe4]
{
    self.weaponframe = 3;
};

// player_axe4
// function begins at statement 21093, parm_start=14754
// OP_STATE	14754	2362	0
// OP_ADDRESS	28	181	14755
// OP_STOREP_F	808	14755	0
// OP_DONE	0	0	0
void () player_axe4 = [122, player_run]
{
    self.weaponframe = 4;
};

// player_axeb1
// function begins at statement 21097, parm_start=14757
// OP_STATE	14757	14758	0
// OP_ADDRESS	28	181	14759
// OP_STOREP_F	813	14759	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, player_axeb2]
{
    self.weaponframe = 5;
};

// player_axeb2
// function begins at statement 21101, parm_start=14760
// OP_STATE	14760	14761	0
// OP_ADDRESS	28	181	14762
// OP_STOREP_F	816	14762	0
// OP_DONE	0	0	0
void () player_axeb2 = [126, player_axeb3]
{
    self.weaponframe = 6;
};

// player_axeb3
// function begins at statement 21105, parm_start=14763
// OP_STATE	14763	14764	0
// OP_ADDRESS	28	181	14765
// OP_STOREP_F	819	14765	0
// OP_DONE	0	0	0
void () player_axeb3 = [127, player_axeb4]
{
    self.weaponframe = 7;
};

// player_axeb4
// function begins at statement 21109, parm_start=14766
// OP_STATE	821	2362	0
// OP_ADDRESS	28	181	14766
// OP_STOREP_F	810	14766	0
// OP_DONE	0	0	0
void () player_axeb4 = [128, player_run]
{
    self.weaponframe = 8;
};

// player_axec1
// function begins at statement 21113, parm_start=14768
// OP_STATE	14768	14769	0
// OP_ADDRESS	28	181	14770
// OP_STOREP_F	677	14770	0
// OP_DONE	0	0	0
void () player_axec1 = [131, player_axec2]
{
    self.weaponframe = 1;
};

// player_axec2
// function begins at statement 21117, parm_start=14771
// OP_STATE	14771	14772	0
// OP_ADDRESS	28	181	14773
// OP_STOREP_F	806	14773	0
// OP_DONE	0	0	0
void () player_axec2 = [132, player_axec3]
{
    self.weaponframe = 2;
};

// player_axec3
// function begins at statement 21121, parm_start=14774
// OP_STATE	14774	14775	0
// OP_ADDRESS	28	181	14776
// OP_STOREP_F	788	14776	0
// OP_DONE	0	0	0
void () player_axec3 = [133, player_axec4]
{
    self.weaponframe = 3;
};

// player_axec4
// function begins at statement 21125, parm_start=14777
// OP_STATE	14777	2362	0
// OP_ADDRESS	28	181	14778
// OP_STOREP_F	808	14778	0
// OP_DONE	0	0	0
void () player_axec4 = [134, player_run]
{
    self.weaponframe = 4;
};

// player_axed1
// function begins at statement 21129, parm_start=14780
// OP_STATE	14780	14781	0
// OP_ADDRESS	28	181	14782
// OP_STOREP_F	813	14782	0
// OP_DONE	0	0	0
void () player_axed1 = [137, player_axed2]
{
    self.weaponframe = 5;
};

// player_axed2
// function begins at statement 21133, parm_start=14783
// OP_STATE	14783	14784	0
// OP_ADDRESS	28	181	14785
// OP_STOREP_F	816	14785	0
// OP_DONE	0	0	0
void () player_axed2 = [138, player_axed3]
{
    self.weaponframe = 6;
};

// player_axed3
// function begins at statement 21137, parm_start=14786
// OP_STATE	14786	14787	0
// OP_ADDRESS	28	181	14788
// OP_STOREP_F	819	14788	0
// OP_DONE	0	0	0
void () player_axed3 = [139, player_axed4]
{
    self.weaponframe = 7;
};

// player_axed4
// function begins at statement 21141, parm_start=14789
// OP_STATE	4932	2362	0
// OP_ADDRESS	28	181	14789
// OP_STOREP_F	810	14789	0
// OP_DONE	0	0	0
void () player_axed4 = [140, player_run]
{
    self.weaponframe = 8;
};

// player_nail1
// function begins at statement 21145, parm_start=14791
// OP_STATE	14791	14792	0
// OP_ADDRESS	28	158	14793
// OP_LOAD_F	28	158	14794
// OP_BITOR	14794	383	14795
// OP_STOREP_F	14795	14793	0
// OP_LOAD_F	28	195	14796
// OP_NOT_F	14796	0	14797
// OP_IFNOT	14797	3	0
// OP_CALL0	2362	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14798
// OP_LOAD_F	28	181	14799
// OP_ADD_F	14799	677	14800
// OP_STOREP_F	14800	14798	0
// OP_LOAD_F	28	181	14801
// OP_EQ_F	14801	824	14802
// OP_IFNOT	14802	3	0
// OP_ADDRESS	28	181	14803
// OP_STOREP_F	677	14803	0
// OP_CALL0	2364	0	0
// OP_ADDRESS	28	422	14804
// OP_ADD_F	31	1349	14805
// OP_STOREP_F	14805	14804	0
// OP_DONE	0	0	0
void () player_nail1 = [103, player_nail2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + 1;
    
    if(self.weaponframe == 9)
    {
        self.weaponframe = 1;
    }
    
    SuperDamageSound();
    self.attack_finished = time + 0.2;
};

// player_nail2
// function begins at statement 21169, parm_start=14806
// OP_STATE	2982	14790	0
// OP_ADDRESS	28	158	14806
// OP_LOAD_F	28	158	14807
// OP_BITOR	14807	383	14808
// OP_STOREP_F	14808	14806	0
// OP_LOAD_F	28	195	14809
// OP_NOT_F	14809	0	14810
// OP_IFNOT	14810	3	0
// OP_CALL0	2362	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14811
// OP_LOAD_F	28	181	14812
// OP_ADD_F	14812	677	14813
// OP_STOREP_F	14813	14811	0
// OP_LOAD_F	28	181	14814
// OP_EQ_F	14814	824	14815
// OP_IFNOT	14815	3	0
// OP_ADDRESS	28	181	14816
// OP_STOREP_F	677	14816	0
// OP_CALL0	2364	0	0
// OP_ADDRESS	28	422	14817
// OP_ADD_F	31	1349	14818
// OP_STOREP_F	14818	14817	0
// OP_DONE	0	0	0
void () player_nail2 = [104, player_nail1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + 1;
    
    if(self.weaponframe == 9)
    {
        self.weaponframe = 1;
    }
    
    SuperDamageSound();
    self.attack_finished = time + 0.2;
};

// player_light1
// function begins at statement 21193, parm_start=14820
// OP_STATE	3007	14820	0
// OP_ADDRESS	28	158	14821
// OP_LOAD_F	28	158	14822
// OP_BITOR	14822	383	14823
// OP_STOREP_F	14823	14821	0
// OP_LOAD_F	28	195	14824
// OP_NOT_F	14824	0	14825
// OP_IFNOT	14825	3	0
// OP_CALL0	2362	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14826
// OP_LOAD_F	28	181	14827
// OP_ADD_F	14827	677	14828
// OP_STOREP_F	14828	14826	0
// OP_LOAD_F	28	181	14829
// OP_EQ_F	14829	813	14830
// OP_IFNOT	14830	3	0
// OP_ADDRESS	28	181	14831
// OP_STOREP_F	677	14831	0
// OP_CALL0	2364	0	0
// OP_ADDRESS	28	422	14832
// OP_ADD_F	31	1349	14833
// OP_STOREP_F	14833	14832	0
// OP_DONE	0	0	0
void () player_light1 = [105, player_light2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + 1;
    
    if(self.weaponframe == 5)
    {
        self.weaponframe = 1;
    }
    
    SuperDamageSound();
    self.attack_finished = time + 0.2;
};

// player_light2
// function begins at statement 21217, parm_start=14834
// OP_STATE	14258	14819	0
// OP_ADDRESS	28	158	14834
// OP_LOAD_F	28	158	14835
// OP_BITOR	14835	383	14836
// OP_STOREP_F	14836	14834	0
// OP_LOAD_F	28	195	14837
// OP_NOT_F	14837	0	14838
// OP_IFNOT	14838	3	0
// OP_CALL0	2362	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14839
// OP_LOAD_F	28	181	14840
// OP_ADD_F	14840	677	14841
// OP_STOREP_F	14841	14839	0
// OP_LOAD_F	28	181	14842
// OP_EQ_F	14842	813	14843
// OP_IFNOT	14843	3	0
// OP_ADDRESS	28	181	14844
// OP_STOREP_F	677	14844	0
// OP_CALL0	2364	0	0
// OP_ADDRESS	28	422	14845
// OP_ADD_F	31	1349	14846
// OP_STOREP_F	14846	14845	0
// OP_DONE	0	0	0
void () player_light2 = [106, player_light1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + 1;
    
    if(self.weaponframe == 5)
    {
        self.weaponframe = 1;
    }
    
    SuperDamageSound();
    self.attack_finished = time + 0.2;
};

// player_rocket1
// function begins at statement 21241, parm_start=14848
// OP_STATE	14264	14848	0
// OP_ADDRESS	28	181	14849
// OP_STOREP_F	677	14849	0
// OP_ADDRESS	28	158	14850
// OP_LOAD_F	28	158	14851
// OP_BITOR	14851	383	14852
// OP_STOREP_F	14852	14850	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, player_rocket2]
{
    self.weaponframe = 1;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_rocket2
// function begins at statement 21249, parm_start=14853
// OP_STATE	14269	14853	0
// OP_ADDRESS	28	181	14854
// OP_STOREP_F	806	14854	0
// OP_DONE	0	0	0
void () player_rocket2 = [108, player_rocket3]
{
    self.weaponframe = 2;
};

// player_rocket3
// function begins at statement 21253, parm_start=14855
// OP_STATE	3019	14855	0
// OP_ADDRESS	28	181	14856
// OP_STOREP_F	788	14856	0
// OP_DONE	0	0	0
void () player_rocket3 = [109, player_rocket4]
{
    self.weaponframe = 3;
};

// player_rocket4
// function begins at statement 21257, parm_start=14857
// OP_STATE	3011	14857	0
// OP_ADDRESS	28	181	14858
// OP_STOREP_F	808	14858	0
// OP_DONE	0	0	0
void () player_rocket4 = [110, player_rocket5]
{
    self.weaponframe = 4;
};

// player_rocket5
// function begins at statement 21261, parm_start=14859
// OP_STATE	3015	14859	0
// OP_ADDRESS	28	181	14860
// OP_STOREP_F	813	14860	0
// OP_DONE	0	0	0
void () player_rocket5 = [111, player_rocket6]
{
    self.weaponframe = 5;
};

// player_rocket6
// function begins at statement 21265, parm_start=14861
// OP_STATE	14861	2362	0
// OP_ADDRESS	28	181	14862
// OP_STOREP_F	816	14862	0
// OP_DONE	0	0	0
void () player_rocket6 = [112, player_run]
{
    self.weaponframe = 6;
};

// PainSound
// function begins at statement 21269, parm_start=14864
// OP_LOAD_F	28	177	14865
// OP_LT	14865	619	14866
// OP_IFNOT	14866	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	396	154	14867
// OP_EQ_S	14867	14868	14869
// OP_IFNOT	14869	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12914	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	215	14870
// OP_EQ_F	14870	327	14871
// OP_LOAD_F	28	214	14872
// OP_EQ_F	14872	788	14873
// OP_AND	14871	14873	14874
// OP_IFNOT	14874	20	0
// OP_STORE_V	677	4	0
// OP_CALL1	6403	0	0
// OP_CALL0	501	0	0
// OP_GT	1	972	14875
// OP_IFNOT	14875	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14876	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14877	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	215	14878
// OP_EQ_F	14878	328	14879
// OP_IFNOT	14879	18	0
// OP_CALL0	501	0	0
// OP_GT	1	972	14880
// OP_IFNOT	14880	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14881	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14882	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	215	14883
// OP_EQ_F	14883	329	14884
// OP_IFNOT	14884	18	0
// OP_CALL0	501	0	0
// OP_GT	1	972	14885
// OP_IFNOT	14885	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14881	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14882	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	423	14886
// OP_GT	14886	31	14887
// OP_IFNOT	14887	4	0
// OP_ADDRESS	28	436	14888
// OP_STOREP_F	619	14888	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	423	14889
// OP_ADD_F	31	972	14890
// OP_STOREP_F	14890	14889	0
// OP_LOAD_F	28	436	14891
// OP_EQ_F	14891	677	14892
// OP_IFNOT	14892	10	0
// OP_ADDRESS	28	436	14893
// OP_STOREP_F	619	14893	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14894	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	813	14895
// OP_ADD_F	14895	677	14896
// OP_STORE_V	14896	4	0
// OP_CALL1	529	0	0
// OP_STORE_F	1	14864	0
// OP_ADDRESS	28	233	14897
// OP_STOREP_S	621	14897	0
// OP_EQ_F	14864	677	14898
// OP_IFNOT	14898	4	0
// OP_ADDRESS	28	233	14899
// OP_STOREP_S	12928	14899	0
// OP_GOTO	23	0	0
// OP_EQ_F	14864	806	14900
// OP_IFNOT	14900	4	0
// OP_ADDRESS	28	233	14901
// OP_STOREP_S	12929	14901	0
// OP_GOTO	18	0	0
// OP_EQ_F	14864	788	14902
// OP_IFNOT	14902	4	0
// OP_ADDRESS	28	233	14903
// OP_STOREP_S	12930	14903	0
// OP_GOTO	13	0	0
// OP_EQ_F	14864	808	14904
// OP_IFNOT	14904	4	0
// OP_ADDRESS	28	233	14905
// OP_STOREP_S	12931	14905	0
// OP_GOTO	8	0	0
// OP_EQ_F	14864	813	14906
// OP_IFNOT	14906	4	0
// OP_ADDRESS	28	233	14907
// OP_STOREP_S	12932	14907	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	233	14908
// OP_STOREP_S	12933	14908	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	14909
// OP_STORE_V	14909	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PainSound = 
{
    local float rs;
    
    if(self.health < 0)
    {
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", 1, ATTN_NONE);
        return;
    }
    
    
    if((self.watertype == CONTENT_WATER) && (self.waterlevel == 3))
    {
        DeathBubbles(1);
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/drown1.wav", 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/drown2.wav", 1, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_SLIME)
    {
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", 1, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_LAVA)
    {
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", 1, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        self.axhitme = 0;
        return;
    }
    
    self.pain_finished = time + 0.5;
    
    if(self.axhitme == 1)
    {
        self.axhitme = 0;
        sound(self, CHAN_VOICE, "player/axhit1.wav", 1, ATTN_NORM);
        return;
    }
    
    rs = rint((random() * 5) + 1);
    self.noise = "";
    if(rs == 1)
    {
        self.noise = "player/pain1.wav";
    }
    else
    {
        if(rs == 2)
        {
            self.noise = "player/pain2.wav";
        }
        else
        {
            if(rs == 3)
            {
                self.noise = "player/pain3.wav";
            }
            else
            {
                if(rs == 4)
                {
                    self.noise = "player/pain4.wav";
                }
                else
                {
                    if(rs == 5)
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
    
    sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    return;
};

// player_pain1
// function begins at statement 21413, parm_start=14911
// OP_STATE	1169	14911	0
// OP_CALL0	14863	0	0
// OP_ADDRESS	28	181	14912
// OP_STOREP_F	619	14912	0
// OP_DONE	0	0	0
void () player_pain1 = [35, player_pain2]
{
    PainSound();
    self.weaponframe = 0;
};

// player_pain2
// function begins at statement 21418, parm_start=14913
// OP_STATE	1172	14913	0
// OP_DONE	0	0	0
void () player_pain2 = [36, player_pain3]
{
};

// player_pain3
// function begins at statement 21420, parm_start=14914
// OP_STATE	1175	14914	0
// OP_DONE	0	0	0
void () player_pain3 = [37, player_pain4]
{
};

// player_pain4
// function begins at statement 21422, parm_start=14915
// OP_STATE	14915	14916	0
// OP_DONE	0	0	0
void () player_pain4 = [38, player_pain5]
{
};

// player_pain5
// function begins at statement 21424, parm_start=14917
// OP_STATE	14917	14918	0
// OP_DONE	0	0	0
void () player_pain5 = [39, player_pain6]
{
};

// player_pain6
// function begins at statement 21426, parm_start=14919
// OP_STATE	1155	2362	0
// OP_DONE	0	0	0
void () player_pain6 = [40, player_run]
{
};

// player_axpain1
// function begins at statement 21428, parm_start=14920
// OP_STATE	14920	14921	0
// OP_CALL0	14863	0	0
// OP_ADDRESS	28	181	14922
// OP_STOREP_F	619	14922	0
// OP_DONE	0	0	0
void () player_axpain1 = [29, player_axpain2]
{
    PainSound();
    self.weaponframe = 0;
};

// player_axpain2
// function begins at statement 21433, parm_start=14923
// OP_STATE	1130	14923	0
// OP_DONE	0	0	0
void () player_axpain2 = [30, player_axpain3]
{
};

// player_axpain3
// function begins at statement 21435, parm_start=14924
// OP_STATE	1158	14924	0
// OP_DONE	0	0	0
void () player_axpain3 = [31, player_axpain4]
{
};

// player_axpain4
// function begins at statement 21437, parm_start=14925
// OP_STATE	815	14925	0
// OP_DONE	0	0	0
void () player_axpain4 = [32, player_axpain5]
{
};

// player_axpain5
// function begins at statement 21439, parm_start=14926
// OP_STATE	1163	14926	0
// OP_DONE	0	0	0
void () player_axpain5 = [33, player_axpain6]
{
};

// player_axpain6
// function begins at statement 21441, parm_start=14927
// OP_STATE	1166	2362	0
// OP_DONE	0	0	0
void () player_axpain6 = [34, player_run]
{
};

// player_pain
// function begins at statement 21443, parm_start=14927
// OP_CALL0	14863	0	0
// OP_LOAD_S	28	155	14927
// OP_NE_S	14927	3774	14928
// OP_IFNOT	14928	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	181	14929
// OP_IFNOT	14929	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	425	14930
// OP_GT	14930	31	14931
// OP_IFNOT	14931	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	179	14932
// OP_EQ_F	14932	321	14933
// OP_IFNOT	14933	3	0
// OP_CALL0	14919	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14910	0	0
// OP_DONE	0	0	0
void () player_pain = 
{
    PainSound();
    
    if(self.model != "progs/player.mdl")
    {
        return;
    }
    
    
    if(self.weaponframe)
    {
        return;
    }
    
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    if(self.weapon == IT_WEP1)
    {
        player_axpain1();
    }
    else
    {
        player_pain1();
    }
    
};

void () player_diea1;
void () player_dieb1;
void () player_diec1;
void () player_died1;
void () player_diee1;
void () player_die_ax1;
// DeathBubblesSpawn
// function begins at statement 21462, parm_start=14941
// OP_LOAD_ENT	28	226	14942
// OP_LOAD_F	14942	214	14943
// OP_NE_F	14943	788	14944
// OP_IFNOT	14944	2	0
// OP_RETURN	0	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	14941	0
// OP_STORE_V	14941	4	0
// OP_STORE_V	12949	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	14941	4	0
// OP_LOAD_ENT	28	226	14945
// OP_LOAD_V	14945	130	14946
// OP_ADD_V	14946	4229	14949
// OP_STORE_V	14949	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	14941	128	14952
// OP_STOREP_F	287	14952	0
// OP_ADDRESS	14941	129	14953
// OP_STOREP_F	291	14953	0
// OP_ADDRESS	14941	138	14954
// OP_STOREP_V	14957	14954	0
// OP_ADDRESS	14941	175	14960
// OP_ADD_F	31	972	14961
// OP_STOREP_F	14961	14960	0
// OP_ADDRESS	14941	173	14962
// OP_STOREP_FNC	14676	14962	0
// OP_ADDRESS	14941	154	14963
// OP_STOREP_S	14964	14963	0
// OP_ADDRESS	14941	156	14965
// OP_STOREP_F	619	14965	0
// OP_ADDRESS	14941	470	14966
// OP_STOREP_F	619	14966	0
// OP_STORE_V	14941	4	0
// OP_STORE_V	1470	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	175	14967
// OP_ADD_F	31	655	14968
// OP_STOREP_F	14968	14967	0
// OP_ADDRESS	28	173	14969
// OP_STOREP_FNC	14940	14969	0
// OP_ADDRESS	28	440	14970
// OP_LOAD_F	28	440	14971
// OP_ADD_F	14971	677	14972
// OP_STOREP_F	14972	14970	0
// OP_LOAD_F	28	440	14973
// OP_LOAD_F	28	441	14974
// OP_GE	14973	14974	14975
// OP_IFNOT	14975	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () DeathBubblesSpawn = 
{
    local entity bubble;
    
    if(self.owner.waterlevel != 3)
    {
        return;
    }
    
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.owner.origin + '0 0 24');
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0 0 15';
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.classname = "bubble";
    bubble.frame = 0;
    bubble.cnt = 0;
    setsize(bubble, '-8 -8 -8', '8 8 8');
    self.nextthink = time + 0.1;
    self.think = DeathBubblesSpawn;
    self.air_finished = self.air_finished + 1;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};

// DeathBubbles
// function begins at statement 21515, parm_start=14976
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	14977	0
// OP_STORE_V	14977	4	0
// OP_LOAD_V	28	130	14978
// OP_STORE_V	14978	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	14977	128	14981
// OP_STOREP_F	281	14981	0
// OP_ADDRESS	14977	129	14982
// OP_STOREP_F	291	14982	0
// OP_ADDRESS	14977	175	14983
// OP_ADD_F	31	655	14984
// OP_STOREP_F	14984	14983	0
// OP_ADDRESS	14977	173	14985
// OP_STOREP_FNC	14940	14985	0
// OP_ADDRESS	14977	440	14986
// OP_STOREP_F	619	14986	0
// OP_ADDRESS	14977	226	14987
// OP_STOREP_ENT	28	14987	0
// OP_ADDRESS	14977	441	14988
// OP_STOREP_F	14976	14988	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float num_bubbles) DeathBubbles = 
{
    local entity bubble_spawner;
    bubble_spawner = spawn();
    setorigin(bubble_spawner, self.origin);
    bubble_spawner.movetype = MOVETYPE_NONE;
    bubble_spawner.solid = SOLID_NOT;
    bubble_spawner.nextthink = time + 0.1;
    bubble_spawner.think = DeathBubblesSpawn;
    bubble_spawner.air_finished = 0;
    bubble_spawner.owner = self;
    bubble_spawner.bubble_count = num_bubbles;
    return;
};

// DeathSound
// function begins at statement 21538, parm_start=14990
// OP_LOAD_F	28	214	14991
// OP_EQ_F	14991	788	14992
// OP_IFNOT	14992	10	0
// OP_STORE_V	1111	4	0
// OP_CALL1	6403	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	14993	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	808	14994
// OP_ADD_F	14994	677	14995
// OP_STORE_V	14995	4	0
// OP_CALL1	529	0	0
// OP_STORE_F	1	14990	0
// OP_EQ_F	14990	677	14996
// OP_IFNOT	14996	3	0
// OP_ADDRESS	28	233	14997
// OP_STOREP_S	12934	14997	0
// OP_EQ_F	14990	806	14998
// OP_IFNOT	14998	3	0
// OP_ADDRESS	28	233	14999
// OP_STOREP_S	12935	14999	0
// OP_EQ_F	14990	788	15000
// OP_IFNOT	15000	3	0
// OP_ADDRESS	28	233	15001
// OP_STOREP_S	12936	15001	0
// OP_EQ_F	14990	808	15002
// OP_IFNOT	15002	3	0
// OP_ADDRESS	28	233	15003
// OP_STOREP_S	12937	15003	0
// OP_EQ_F	14990	813	15004
// OP_IFNOT	15004	3	0
// OP_ADDRESS	28	233	15005
// OP_STOREP_S	12938	15005	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	15006
// OP_STORE_V	15006	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () DeathSound = 
{
    local float rs;
    
    if(self.waterlevel == 3)
    {
        DeathBubbles(20);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", 1, ATTN_NONE);
        return;
    }
    
    rs = rint((random() * 4) + 1);
    
    if(rs == 1)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(rs == 2)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(rs == 3)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(rs == 4)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(rs == 5)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, 1, ATTN_NONE);
    return;
};

// PlayerDead
// function begins at statement 21585, parm_start=15008
// OP_ADDRESS	28	175	15008
// OP_STOREP_F	689	15008	0
// OP_ADDRESS	28	190	15009
// OP_STOREP_F	302	15009	0
// OP_DONE	0	0	0
void () PlayerDead = 
{
    self.nextthink = -1;
    self.deadflag = DEAD_DEAD;
};

// VelocityForDamage
// function begins at statement 21590, parm_start=15011
// OP_CALL0	2383	0	0
// OP_MUL_F	2618	1	15015
// OP_STORE_F	15015	15012	0
// OP_CALL0	2383	0	0
// OP_MUL_F	2618	1	15016
// OP_STORE_F	15016	15013	0
// OP_CALL0	501	0	0
// OP_MUL_F	2618	1	15017
// OP_ADD_F	986	15017	15018
// OP_STORE_F	15018	15014	0
// OP_GT	15011	4395	15019
// OP_IFNOT	15019	4	0
// OP_MUL_VF	15012	2571	15020
// OP_STORE_V	15020	15012	0
// OP_GOTO	8	0	0
// OP_GT	15011	6193	15023
// OP_IFNOT	15023	4	0
// OP_MUL_VF	15012	806	15024
// OP_STORE_V	15024	15012	0
// OP_GOTO	3	0	0
// OP_MUL_VF	15012	827	15027
// OP_STORE_V	15027	15012	0
// OP_RETURN	15012	0	0
// OP_DONE	0	0	0
vector (float dm) VelocityForDamage = 
{
    local vector v;
    v_x = 100 * crandom();
    v_y = 100 * crandom();
    v_z = 200 + (100 * random());
    if(dm > -50)
    {
        v = v * 0.7;
    }
    else
    {
        if(dm > -200)
        {
            v = v * 2;
        }
        else
        {
            v = v * 10;
        }
        
    }
    
    return v;
};

// ThrowGib
// function begins at statement 21614, parm_start=15031
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	15033	0
// OP_ADDRESS	15033	130	15034
// OP_LOAD_V	28	130	15037
// OP_STOREP_V	15037	15034	0
// OP_STORE_V	15033	4	0
// OP_STORE_V	15031	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	15033	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	15033	138	15040
// OP_STORE_V	15032	4	0
// OP_CALL1	15010	0	0
// OP_STOREP_V	1	15040	0
// OP_ADDRESS	15033	128	15043
// OP_STOREP_F	289	15043	0
// OP_ADDRESS	15033	129	15044
// OP_STOREP_F	291	15044	0
// OP_ADDRESS	15033	147	15045
// OP_CALL0	501	0	0
// OP_MUL_F	1	4155	15046
// OP_STOREP_F	15046	15045	0
// OP_ADDRESS	15033	148	15047
// OP_CALL0	501	0	0
// OP_MUL_F	1	4155	15048
// OP_STOREP_F	15048	15047	0
// OP_ADDRESS	15033	149	15049
// OP_CALL0	501	0	0
// OP_MUL_F	1	4155	15050
// OP_STOREP_F	15050	15049	0
// OP_ADDRESS	15033	173	15051
// OP_STOREP_FNC	568	15051	0
// OP_ADDRESS	15033	127	15052
// OP_STOREP_F	31	15052	0
// OP_ADDRESS	15033	175	15053
// OP_ADD_F	31	827	15054
// OP_CALL0	501	0	0
// OP_MUL_F	1	827	15055
// OP_ADD_F	15054	15055	15056
// OP_STOREP_F	15056	15053	0
// OP_ADDRESS	15033	156	15057
// OP_STOREP_F	619	15057	0
// OP_ADDRESS	15033	207	15058
// OP_STOREP_F	619	15058	0
// OP_STORE_ENT	15033	394	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowGib = 
{
    local entity new;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, '0 0 0', '0 0 0');
    new.velocity = VelocityForDamage(dm);
    new.movetype = MOVETYPE_BOUNCE;
    new.solid = SOLID_NOT;
    new.avelocity_x = random() * 600;
    new.avelocity_y = random() * 600;
    new.avelocity_z = random() * 600;
    new.think = SUB_Remove;
    new.ltime = time;
    new.nextthink = (time + 10) + (random() * 10);
    new.frame = 0;
    new.flags = 0;
    newmis = new;
};

// ThrowHead
// function begins at statement 21662, parm_start=15060
// OP_STORE_V	28	4	0
// OP_STORE_V	15060	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	156	15062
// OP_STOREP_F	619	15062	0
// OP_ADDRESS	28	175	15063
// OP_STOREP_F	689	15063	0
// OP_ADDRESS	28	128	15064
// OP_STOREP_F	289	15064	0
// OP_ADDRESS	28	188	15065
// OP_STOREP_F	304	15065	0
// OP_ADDRESS	28	129	15066
// OP_STOREP_F	291	15066	0
// OP_ADDRESS	28	191	15067
// OP_STOREP_V	14361	15067	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15070	7	0
// OP_STORE_V	15073	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	138	15076
// OP_STORE_V	15061	4	0
// OP_CALL1	15010	0	0
// OP_STOREP_V	1	15076	0
// OP_ADDRESS	28	133	15079
// OP_LOAD_F	28	133	15080
// OP_SUB_F	15080	1142	15081
// OP_STOREP_F	15081	15079	0
// OP_ADDRESS	28	207	15082
// OP_LOAD_F	28	207	15083
// OP_LOAD_F	28	207	15084
// OP_BITAND	15084	277	15085
// OP_SUB_F	15083	15085	15086
// OP_STOREP_F	15086	15082	0
// OP_ADDRESS	28	146	15087
// OP_CALL0	2383	0	0
// OP_MUL_FV	1	15090	15093
// OP_STOREP_V	15093	15087	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead = 
{
    setmodel(self, gibname);
    self.frame = 0;
    self.nextthink = -1;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0 0 8';
    setsize(self, '-16 -16 0', '16 16 56');
    self.velocity = VelocityForDamage(dm);
    self.origin_z = self.origin_z - 24;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0 600 0';
};

// GibPlayer
// function begins at statement 21700, parm_start=15097
// OP_STORE_V	12945	4	0
// OP_LOAD_F	28	177	15097
// OP_STORE_V	15097	7	0
// OP_CALL2	15030	0	0
// OP_ADDRESS	394	146	15098
// OP_CALL0	2383	0	0
// OP_MUL_FV	1	15090	15101
// OP_STOREP_V	15101	15098	0
// OP_LOAD_ENT	28	206	15104
// OP_EQ_E	15104	28	15105
// OP_LOAD_ENT	28	206	15106
// OP_LOAD_F	15106	188	15107
// OP_EQ_F	15107	619	15108
// OP_OR	15105	15108	15109
// OP_IFNOT	15109	3	0
// OP_ADDRESS	28	206	15110
// OP_STOREP_ENT	394	15110	0
// OP_STORE_V	12946	4	0
// OP_LOAD_F	28	177	15111
// OP_STORE_V	15111	7	0
// OP_CALL2	15030	0	0
// OP_STORE_V	12947	4	0
// OP_LOAD_F	28	177	15112
// OP_STORE_V	15112	7	0
// OP_CALL2	15030	0	0
// OP_STORE_V	12948	4	0
// OP_LOAD_F	28	177	15113
// OP_STORE_V	15113	7	0
// OP_CALL2	15030	0	0
// OP_ADDRESS	28	190	15114
// OP_STOREP_F	302	15114	0
// OP_ADDRESS	28	128	15115
// OP_STOREP_F	281	15115	0
// OP_ADDRESS	28	138	15116
// OP_STOREP_V	607	15116	0
// OP_LOAD_S	396	154	15119
// OP_EQ_S	15119	14868	15120
// OP_IFNOT	15120	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12914	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	396	154	15121
// OP_EQ_S	15121	15122	15123
// OP_IFNOT	15123	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12914	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_LT	1	972	15124
// OP_IFNOT	15124	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12925	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12926	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () GibPlayer = 
{
    ThrowGib("progs/h_player.mdl", self.health);
    newmis.avelocity = crandom() * '0 600 0';
    
    if((self.enemy == self) || (self.enemy.takedamage == 0))
    {
        self.enemy = newmis;
    }
    
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
    self.deadflag = DEAD_DEAD;
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0 0 0';
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", 1, ATTN_NONE);
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath2")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", 1, ATTN_NONE);
        return;
    }
    
    if(random() < 0.5)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", 1, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NONE);
    }
    
};

// PlayerDie
// function begins at statement 21772, parm_start=15125
// OP_CALL0	15096	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	155	15126
// OP_EQ_S	15126	5219	15127
// OP_IFNOT	15127	4	0
// OP_ADDRESS	28	190	15128
// OP_STOREP_F	302	15128	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	187	15129
// OP_LOAD_F	28	187	15130
// OP_LOAD_F	28	187	15131
// OP_BITAND	15131	317	15132
// OP_SUB_F	15130	15132	15133
// OP_STOREP_F	15133	15129	0
// OP_ADDRESS	28	425	15134
// OP_STOREP_F	619	15134	0
// OP_ADDRESS	28	424	15135
// OP_STOREP_F	619	15135	0
// OP_ADDRESS	28	426	15136
// OP_STOREP_F	619	15136	0
// OP_ADDRESS	28	427	15137
// OP_STOREP_F	619	15137	0
// OP_ADDRESS	28	118	15138
// OP_STOREP_F	13496	15138	0
// OP_ADDRESS	28	180	15139
// OP_STOREP_S	621	15139	0
// OP_ADDRESS	28	191	15140
// OP_STOREP_V	15143	15140	0
// OP_ADDRESS	28	190	15146
// OP_STOREP_F	301	15146	0
// OP_ADDRESS	28	128	15147
// OP_STOREP_F	285	15147	0
// OP_ADDRESS	28	129	15148
// OP_STOREP_F	291	15148	0
// OP_ADDRESS	28	207	15149
// OP_LOAD_F	28	207	15150
// OP_LOAD_F	28	207	15151
// OP_BITAND	15151	277	15152
// OP_SUB_F	15150	15152	15153
// OP_STOREP_F	15153	15149	0
// OP_ADDRESS	28	128	15154
// OP_STOREP_F	285	15154	0
// OP_LOAD_F	28	141	15155
// OP_LT	15155	827	15156
// OP_IFNOT	15156	7	0
// OP_ADDRESS	28	141	15157
// OP_LOAD_F	28	141	15158
// OP_CALL0	501	0	0
// OP_MUL_F	1	4412	15159
// OP_ADD_F	15158	15159	15160
// OP_STOREP_F	15160	15157	0
// OP_LOAD_F	28	177	15161
// OP_LT	15161	15162	15163
// OP_IFNOT	15163	3	0
// OP_CALL0	15096	0	0
// OP_RETURN	0	0	0
// OP_CALL0	14989	0	0
// OP_ADDRESS	28	143	15164
// OP_STOREP_F	619	15164	0
// OP_ADDRESS	28	145	15165
// OP_STOREP_F	619	15165	0
// OP_LOAD_F	28	179	15166
// OP_EQ_F	15166	321	15167
// OP_IFNOT	15167	3	0
// OP_CALL0	14939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12972	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	15125	0
// OP_NOT_F	15125	0	15168
// OP_IFNOT	15168	7	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	816	15169
// OP_STORE_V	15169	4	0
// OP_CALL1	530	0	0
// OP_ADD_F	677	1	15170
// OP_STORE_F	15170	15125	0
// OP_EQ_F	15125	677	15171
// OP_IFNOT	15171	3	0
// OP_CALL0	14934	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	15125	806	15172
// OP_IFNOT	15172	3	0
// OP_CALL0	14935	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	15125	788	15173
// OP_IFNOT	15173	3	0
// OP_CALL0	14936	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	15125	808	15174
// OP_IFNOT	15174	3	0
// OP_CALL0	14937	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14938	0	0
// OP_DONE	0	0	0
void () PlayerDie = 
{
    local float i;
    GibPlayer();
    return;
    
    if(self.model == "progs/null.spr")
    {
        self.deadflag = DEAD_DEAD;
        return;
    }
    
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.modelindex = modelindex_player;
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.movetype = MOVETYPE_TOSS;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < 10)
    {
        self.velocity_z = self.velocity_z + (random() * 300);
    }
    
    
    if(self.health < -40)
    {
        GibPlayer();
        return;
    }
    
    DeathSound();
    self.angles_x = 0;
    self.angles_z = 0;
    
    if(self.weapon == IT_WEP1)
    {
        player_die_ax1();
        return;
    }
    
    i = cvar("temp1");
    
    if(!i)
    {
        i = 1 + (floor(random() * 6));
    }
    
    if(i == 1)
    {
        player_diea1();
    }
    else
    {
        if(i == 2)
        {
            player_dieb1();
        }
        else
        {
            if(i == 3)
            {
                player_diec1();
            }
            else
            {
                if(i == 4)
                {
                    player_died1();
                }
                else
                {
                    player_diee1();
                }
                
            }
            
        }
        
    }
    
};

// set_suicide_frame
// function begins at statement 21867, parm_start=15175
// OP_LOAD_S	28	155	15175
// OP_NE_S	15175	3774	15176
// OP_IFNOT	15176	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	15177
// OP_STOREP_F	1203	15177	0
// OP_ADDRESS	28	129	15178
// OP_STOREP_F	291	15178	0
// OP_ADDRESS	28	128	15179
// OP_STOREP_F	285	15179	0
// OP_ADDRESS	28	190	15180
// OP_STOREP_F	302	15180	0
// OP_ADDRESS	28	175	15181
// OP_STOREP_F	689	15181	0
// OP_DONE	0	0	0
void () set_suicide_frame = 
{
    
    if(self.model != "progs/player.mdl")
    {
        return;
    }
    
    self.frame = 60;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_TOSS;
    self.deadflag = DEAD_DEAD;
    self.nextthink = -1;
};

// player_diea1
// function begins at statement 21882, parm_start=15182
// OP_STATE	856	15182	0
// OP_DONE	0	0	0
void () player_diea1 = [50, player_diea2]
{
};

// player_diea2
// function begins at statement 21884, parm_start=15183
// OP_STATE	1206	15183	0
// OP_DONE	0	0	0
void () player_diea2 = [51, player_diea3]
{
};

// player_diea3
// function begins at statement 21886, parm_start=15184
// OP_STATE	1209	15184	0
// OP_DONE	0	0	0
void () player_diea3 = [52, player_diea4]
{
};

// player_diea4
// function begins at statement 21888, parm_start=15185
// OP_STATE	1212	15185	0
// OP_DONE	0	0	0
void () player_diea4 = [53, player_diea5]
{
};

// player_diea5
// function begins at statement 21890, parm_start=15186
// OP_STATE	1215	15186	0
// OP_DONE	0	0	0
void () player_diea5 = [54, player_diea6]
{
};

// player_diea6
// function begins at statement 21892, parm_start=15187
// OP_STATE	1218	15187	0
// OP_DONE	0	0	0
void () player_diea6 = [55, player_diea7]
{
};

// player_diea7
// function begins at statement 21894, parm_start=15188
// OP_STATE	1221	15188	0
// OP_DONE	0	0	0
void () player_diea7 = [56, player_diea8]
{
};

// player_diea8
// function begins at statement 21896, parm_start=15189
// OP_STATE	1224	15189	0
// OP_DONE	0	0	0
void () player_diea8 = [57, player_diea9]
{
};

// player_diea9
// function begins at statement 21898, parm_start=15190
// OP_STATE	15190	15191	0
// OP_DONE	0	0	0
void () player_diea9 = [58, player_diea10]
{
};

// player_diea10
// function begins at statement 21900, parm_start=15192
// OP_STATE	15192	15193	0
// OP_DONE	0	0	0
void () player_diea10 = [59, player_diea11]
{
};

// player_diea11
// function begins at statement 21902, parm_start=15194
// OP_STATE	1203	15193	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_diea11 = [60, player_diea11]
{
    PlayerDead();
};

// player_dieb1
// function begins at statement 21905, parm_start=15194
// OP_STATE	1231	15194	0
// OP_DONE	0	0	0
void () player_dieb1 = [61, player_dieb2]
{
};

// player_dieb2
// function begins at statement 21907, parm_start=15195
// OP_STATE	1234	15195	0
// OP_DONE	0	0	0
void () player_dieb2 = [62, player_dieb3]
{
};

// player_dieb3
// function begins at statement 21909, parm_start=15196
// OP_STATE	1237	15196	0
// OP_DONE	0	0	0
void () player_dieb3 = [63, player_dieb4]
{
};

// player_dieb4
// function begins at statement 21911, parm_start=15197
// OP_STATE	818	15197	0
// OP_DONE	0	0	0
void () player_dieb4 = [64, player_dieb5]
{
};

// player_dieb5
// function begins at statement 21913, parm_start=15198
// OP_STATE	1242	15198	0
// OP_DONE	0	0	0
void () player_dieb5 = [65, player_dieb6]
{
};

// player_dieb6
// function begins at statement 21915, parm_start=15199
// OP_STATE	1245	15199	0
// OP_DONE	0	0	0
void () player_dieb6 = [66, player_dieb7]
{
};

// player_dieb7
// function begins at statement 21917, parm_start=15200
// OP_STATE	1248	15200	0
// OP_DONE	0	0	0
void () player_dieb7 = [67, player_dieb8]
{
};

// player_dieb8
// function begins at statement 21919, parm_start=15201
// OP_STATE	15201	15202	0
// OP_DONE	0	0	0
void () player_dieb8 = [68, player_dieb9]
{
};

// player_dieb9
// function begins at statement 21921, parm_start=15203
// OP_STATE	15203	15202	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_dieb9 = [69, player_dieb9]
{
    PlayerDead();
};

// player_diec1
// function begins at statement 21924, parm_start=15204
// OP_STATE	1228	15204	0
// OP_DONE	0	0	0
void () player_diec1 = [70, player_diec2]
{
};

// player_diec2
// function begins at statement 21926, parm_start=15205
// OP_STATE	1255	15205	0
// OP_DONE	0	0	0
void () player_diec2 = [71, player_diec3]
{
};

// player_diec3
// function begins at statement 21928, parm_start=15206
// OP_STATE	1258	15206	0
// OP_DONE	0	0	0
void () player_diec3 = [72, player_diec4]
{
};

// player_diec4
// function begins at statement 21930, parm_start=15207
// OP_STATE	1261	15207	0
// OP_DONE	0	0	0
void () player_diec4 = [73, player_diec5]
{
};

// player_diec5
// function begins at statement 21932, parm_start=15208
// OP_STATE	1264	15208	0
// OP_DONE	0	0	0
void () player_diec5 = [74, player_diec6]
{
};

// player_diec6
// function begins at statement 21934, parm_start=15209
// OP_STATE	5009	15209	0
// OP_DONE	0	0	0
void () player_diec6 = [75, player_diec7]
{
};

// player_diec7
// function begins at statement 21936, parm_start=15210
// OP_STATE	15210	15211	0
// OP_DONE	0	0	0
void () player_diec7 = [76, player_diec8]
{
};

// player_diec8
// function begins at statement 21938, parm_start=15212
// OP_STATE	15212	15213	0
// OP_DONE	0	0	0
void () player_diec8 = [77, player_diec9]
{
};

// player_diec9
// function begins at statement 21940, parm_start=15214
// OP_STATE	15214	15215	0
// OP_DONE	0	0	0
void () player_diec9 = [78, player_diec10]
{
};

// player_diec10
// function begins at statement 21942, parm_start=15216
// OP_STATE	15216	15217	0
// OP_DONE	0	0	0
void () player_diec10 = [79, player_diec11]
{
};

// player_diec11
// function begins at statement 21944, parm_start=15218
// OP_STATE	1252	15218	0
// OP_DONE	0	0	0
void () player_diec11 = [80, player_diec12]
{
};

// player_diec12
// function begins at statement 21946, parm_start=15219
// OP_STATE	1271	15219	0
// OP_DONE	0	0	0
void () player_diec12 = [81, player_diec13]
{
};

// player_diec13
// function begins at statement 21948, parm_start=15220
// OP_STATE	1274	15220	0
// OP_DONE	0	0	0
void () player_diec13 = [82, player_diec14]
{
};

// player_diec14
// function begins at statement 21950, parm_start=15221
// OP_STATE	1277	15221	0
// OP_DONE	0	0	0
void () player_diec14 = [83, player_diec15]
{
};

// player_diec15
// function begins at statement 21952, parm_start=15222
// OP_STATE	1280	15221	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_diec15 = [84, player_diec15]
{
    PlayerDead();
};

// player_died1
// function begins at statement 21955, parm_start=15222
// OP_STATE	1283	15222	0
// OP_DONE	0	0	0
void () player_died1 = [85, player_died2]
{
};

// player_died2
// function begins at statement 21957, parm_start=15223
// OP_STATE	1286	15223	0
// OP_DONE	0	0	0
void () player_died2 = [86, player_died3]
{
};

// player_died3
// function begins at statement 21959, parm_start=15224
// OP_STATE	1289	15224	0
// OP_DONE	0	0	0
void () player_died3 = [87, player_died4]
{
};

// player_died4
// function begins at statement 21961, parm_start=15225
// OP_STATE	15225	15226	0
// OP_DONE	0	0	0
void () player_died4 = [88, player_died5]
{
};

// player_died5
// function begins at statement 21963, parm_start=15227
// OP_STATE	15227	15228	0
// OP_DONE	0	0	0
void () player_died5 = [89, player_died6]
{
};

// player_died6
// function begins at statement 21965, parm_start=15229
// OP_STATE	1268	15229	0
// OP_DONE	0	0	0
void () player_died6 = [90, player_died7]
{
};

// player_died7
// function begins at statement 21967, parm_start=15230
// OP_STATE	15230	15231	0
// OP_DONE	0	0	0
void () player_died7 = [91, player_died8]
{
};

// player_died8
// function begins at statement 21969, parm_start=15232
// OP_STATE	15232	15233	0
// OP_DONE	0	0	0
void () player_died8 = [92, player_died9]
{
};

// player_died9
// function begins at statement 21971, parm_start=15234
// OP_STATE	15234	15233	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_died9 = [93, player_died9]
{
    PlayerDead();
};

// player_diee1
// function begins at statement 21974, parm_start=15235
// OP_STATE	15235	15236	0
// OP_DONE	0	0	0
void () player_diee1 = [94, player_diee2]
{
};

// player_diee2
// function begins at statement 21976, parm_start=15237
// OP_STATE	15237	15238	0
// OP_DONE	0	0	0
void () player_diee2 = [95, player_diee3]
{
};

// player_diee3
// function begins at statement 21978, parm_start=15239
// OP_STATE	15239	15240	0
// OP_DONE	0	0	0
void () player_diee3 = [96, player_diee4]
{
};

// player_diee4
// function begins at statement 21980, parm_start=15241
// OP_STATE	15241	15242	0
// OP_DONE	0	0	0
void () player_diee4 = [97, player_diee5]
{
};

// player_diee5
// function begins at statement 21982, parm_start=15243
// OP_STATE	15243	15244	0
// OP_DONE	0	0	0
void () player_diee5 = [98, player_diee6]
{
};

// player_diee6
// function begins at statement 21984, parm_start=15245
// OP_STATE	13347	15245	0
// OP_DONE	0	0	0
void () player_diee6 = [99, player_diee7]
{
};

// player_diee7
// function begins at statement 21986, parm_start=15246
// OP_STATE	2618	15246	0
// OP_DONE	0	0	0
void () player_diee7 = [100, player_diee8]
{
};

// player_diee8
// function begins at statement 21988, parm_start=15247
// OP_STATE	15247	15248	0
// OP_DONE	0	0	0
void () player_diee8 = [101, player_diee9]
{
};

// player_diee9
// function begins at statement 21990, parm_start=15249
// OP_STATE	15249	15248	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_diee9 = [102, player_diee9]
{
    PlayerDead();
};

// player_die_ax1
// function begins at statement 21993, parm_start=15250
// OP_STATE	1181	15250	0
// OP_DONE	0	0	0
void () player_die_ax1 = [41, player_die_ax2]
{
};

// player_die_ax2
// function begins at statement 21995, parm_start=15251
// OP_STATE	1184	15251	0
// OP_DONE	0	0	0
void () player_die_ax2 = [42, player_die_ax3]
{
};

// player_die_ax3
// function begins at statement 21997, parm_start=15252
// OP_STATE	1187	15252	0
// OP_DONE	0	0	0
void () player_die_ax3 = [43, player_die_ax4]
{
};

// player_die_ax4
// function begins at statement 21999, parm_start=15253
// OP_STATE	1190	15253	0
// OP_DONE	0	0	0
void () player_die_ax4 = [44, player_die_ax5]
{
};

// player_die_ax5
// function begins at statement 22001, parm_start=15254
// OP_STATE	1193	15254	0
// OP_DONE	0	0	0
void () player_die_ax5 = [45, player_die_ax6]
{
};

// player_die_ax6
// function begins at statement 22003, parm_start=15255
// OP_STATE	1196	15255	0
// OP_DONE	0	0	0
void () player_die_ax6 = [46, player_die_ax7]
{
};

// player_die_ax7
// function begins at statement 22005, parm_start=15256
// OP_STATE	1199	15256	0
// OP_DONE	0	0	0
void () player_die_ax7 = [47, player_die_ax8]
{
};

// player_die_ax8
// function begins at statement 22007, parm_start=15257
// OP_STATE	15257	15258	0
// OP_DONE	0	0	0
void () player_die_ax8 = [48, player_die_ax9]
{
};

// player_die_ax9
// function begins at statement 22009, parm_start=15259
// OP_STATE	15259	15258	0
// OP_CALL0	15007	0	0
// OP_DONE	0	0	0
void () player_die_ax9 = [49, player_die_ax9]
{
    PlayerDead();
};

