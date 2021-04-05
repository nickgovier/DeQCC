void () bubble_bob;
// player_stand1
// function begins at statement 8090, parm_start=5588
// OP_STATE	5588	4410	0
// OP_ADDRESS	28	156	5589
// OP_STOREP_F	650	5589	0
// OP_LOAD_F	28	114	5590
// OP_LOAD_F	28	115	5591
// OP_OR	5590	5591	5592
// OP_IFNOT	5592	5	0
// OP_ADDRESS	28	373	5593
// OP_STOREP_F	650	5593	0
// OP_CALL0	2861	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5594
// OP_EQ_F	5594	254	5595
// OP_IFNOT	5595	11	0
// OP_LOAD_F	28	373	5596
// OP_GE	5596	2532	5597
// OP_IFNOT	5597	3	0
// OP_ADDRESS	28	373	5598
// OP_STOREP_F	650	5598	0
// OP_ADDRESS	28	131	5599
// OP_LOAD_F	28	373	5600
// OP_ADD_F	5588	5600	5601
// OP_STOREP_F	5601	5599	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	373	5602
// OP_GE	5602	1660	5603
// OP_IFNOT	5603	3	0
// OP_ADDRESS	28	373	5604
// OP_STOREP_F	650	5604	0
// OP_ADDRESS	28	131	5605
// OP_LOAD_F	28	373	5606
// OP_ADD_F	2532	5606	5607
// OP_STOREP_F	5607	5605	0
// OP_ADDRESS	28	373	5608
// OP_LOAD_F	28	373	5609
// OP_ADD_F	5609	708	5610
// OP_STOREP_F	5610	5608	0
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
    
    if(self.weapon == IT_AXE)
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
// function begins at statement 8128, parm_start=5611
// OP_STATE	2107	2861	0
// OP_ADDRESS	28	156	5611
// OP_STOREP_F	650	5611	0
// OP_LOAD_F	28	114	5612
// OP_NOT_F	5612	0	5613
// OP_LOAD_F	28	115	5614
// OP_NOT_F	5614	0	5615
// OP_AND	5613	5615	5616
// OP_IFNOT	5616	5	0
// OP_ADDRESS	28	373	5617
// OP_STOREP_F	650	5617	0
// OP_CALL0	4410	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5618
// OP_EQ_F	5618	254	5619
// OP_IFNOT	5619	11	0
// OP_LOAD_F	28	373	5620
// OP_EQ_F	5620	2107	5621
// OP_IFNOT	5621	3	0
// OP_ADDRESS	28	373	5622
// OP_STOREP_F	650	5622	0
// OP_ADDRESS	28	131	5623
// OP_LOAD_F	28	373	5624
// OP_ADD_F	650	5624	5625
// OP_STOREP_F	5625	5623	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	373	5626
// OP_EQ_F	5626	2107	5627
// OP_IFNOT	5627	3	0
// OP_ADDRESS	28	373	5628
// OP_STOREP_F	650	5628	0
// OP_ADDRESS	28	131	5629
// OP_LOAD_F	28	131	5630
// OP_LOAD_F	28	373	5631
// OP_ADD_F	5630	5631	5632
// OP_STOREP_F	5632	5629	0
// OP_ADDRESS	28	373	5633
// OP_LOAD_F	28	373	5634
// OP_ADD_F	5634	708	5635
// OP_STOREP_F	5635	5633	0
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
    
    if(self.weapon == IT_AXE)
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
// function begins at statement 8169, parm_start=5636
// OP_STATE	5636	5637	0
// OP_ADDRESS	28	156	5638
// OP_STOREP_F	708	5638	0
// OP_ADDRESS	28	133	5639
// OP_LOAD_F	28	133	5640
// OP_BITOR	5640	335	5641
// OP_STOREP_F	5641	5639	0
// OP_DONE	0	0	0
void () player_shot1 = [113, player_shot2]
{
    self.weaponframe = 1;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_shot2
// function begins at statement 8177, parm_start=5642
// OP_STATE	5642	5643	0
// OP_ADDRESS	28	156	5644
// OP_STOREP_F	929	5644	0
// OP_DONE	0	0	0
void () player_shot2 = [114, player_shot3]
{
    self.weaponframe = 2;
};

// player_shot3
// function begins at statement 8181, parm_start=5645
// OP_STATE	5645	5646	0
// OP_ADDRESS	28	156	5647
// OP_STOREP_F	819	5647	0
// OP_DONE	0	0	0
void () player_shot3 = [115, player_shot4]
{
    self.weaponframe = 3;
};

// player_shot4
// function begins at statement 8185, parm_start=5648
// OP_STATE	5648	5649	0
// OP_ADDRESS	28	156	5650
// OP_STOREP_F	1835	5650	0
// OP_DONE	0	0	0
void () player_shot4 = [116, player_shot5]
{
    self.weaponframe = 4;
};

// player_shot5
// function begins at statement 8189, parm_start=5651
// OP_STATE	5651	5652	0
// OP_ADDRESS	28	156	5653
// OP_STOREP_F	1660	5653	0
// OP_DONE	0	0	0
void () player_shot5 = [117, player_shot6]
{
    self.weaponframe = 5;
};

// player_shot6
// function begins at statement 8193, parm_start=5654
// OP_STATE	5654	2861	0
// OP_ADDRESS	28	156	5655
// OP_STOREP_F	2107	5655	0
// OP_DONE	0	0	0
void () player_shot6 = [118, player_run]
{
    self.weaponframe = 6;
};

// player_axe1
// function begins at statement 8197, parm_start=5656
// OP_STATE	5656	5657	0
// OP_ADDRESS	28	156	5658
// OP_STOREP_F	708	5658	0
// OP_DONE	0	0	0
void () player_axe1 = [119, player_axe2]
{
    self.weaponframe = 1;
};

// player_axe2
// function begins at statement 8201, parm_start=5659
// OP_STATE	1255	5659	0
// OP_ADDRESS	28	156	5660
// OP_STOREP_F	929	5660	0
// OP_DONE	0	0	0
void () player_axe2 = [120, player_axe3]
{
    self.weaponframe = 2;
};

// player_axe3
// function begins at statement 8205, parm_start=5661
// OP_STATE	5661	5662	0
// OP_ADDRESS	28	156	5663
// OP_STOREP_F	819	5663	0
// OP_CALL0	2880	0	0
// OP_DONE	0	0	0
void () player_axe3 = [121, player_axe4]
{
    self.weaponframe = 3;
    W_FireAxe();
};

// player_axe4
// function begins at statement 8210, parm_start=5664
// OP_STATE	5664	2861	0
// OP_ADDRESS	28	156	5665
// OP_STOREP_F	1835	5665	0
// OP_DONE	0	0	0
void () player_axe4 = [122, player_run]
{
    self.weaponframe = 4;
};

// player_axeb1
// function begins at statement 8214, parm_start=5666
// OP_STATE	5666	5667	0
// OP_ADDRESS	28	156	5668
// OP_STOREP_F	1660	5668	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, player_axeb2]
{
    self.weaponframe = 5;
};

// player_axeb2
// function begins at statement 8218, parm_start=5669
// OP_STATE	5669	5670	0
// OP_ADDRESS	28	156	5671
// OP_STOREP_F	2107	5671	0
// OP_DONE	0	0	0
void () player_axeb2 = [126, player_axeb3]
{
    self.weaponframe = 6;
};

// player_axeb3
// function begins at statement 8222, parm_start=5672
// OP_STATE	5672	5673	0
// OP_ADDRESS	28	156	5674
// OP_STOREP_F	2307	5674	0
// OP_CALL0	2880	0	0
// OP_DONE	0	0	0
void () player_axeb3 = [127, player_axeb4]
{
    self.weaponframe = 7;
    W_FireAxe();
};

// player_axeb4
// function begins at statement 8227, parm_start=5675
// OP_STATE	5675	2861	0
// OP_ADDRESS	28	156	5676
// OP_STOREP_F	1502	5676	0
// OP_DONE	0	0	0
void () player_axeb4 = [128, player_run]
{
    self.weaponframe = 8;
};

// player_axec1
// function begins at statement 8231, parm_start=5677
// OP_STATE	5677	5678	0
// OP_ADDRESS	28	156	5679
// OP_STOREP_F	708	5679	0
// OP_DONE	0	0	0
void () player_axec1 = [131, player_axec2]
{
    self.weaponframe = 1;
};

// player_axec2
// function begins at statement 8235, parm_start=5680
// OP_STATE	5680	5681	0
// OP_ADDRESS	28	156	5682
// OP_STOREP_F	929	5682	0
// OP_DONE	0	0	0
void () player_axec2 = [132, player_axec3]
{
    self.weaponframe = 2;
};

// player_axec3
// function begins at statement 8239, parm_start=5683
// OP_STATE	5683	5684	0
// OP_ADDRESS	28	156	5685
// OP_STOREP_F	819	5685	0
// OP_CALL0	2880	0	0
// OP_DONE	0	0	0
void () player_axec3 = [133, player_axec4]
{
    self.weaponframe = 3;
    W_FireAxe();
};

// player_axec4
// function begins at statement 8244, parm_start=5686
// OP_STATE	5686	2861	0
// OP_ADDRESS	28	156	5687
// OP_STOREP_F	1835	5687	0
// OP_DONE	0	0	0
void () player_axec4 = [134, player_run]
{
    self.weaponframe = 4;
};

// player_axed1
// function begins at statement 8248, parm_start=5688
// OP_STATE	5688	5689	0
// OP_ADDRESS	28	156	5690
// OP_STOREP_F	1660	5690	0
// OP_DONE	0	0	0
void () player_axed1 = [137, player_axed2]
{
    self.weaponframe = 5;
};

// player_axed2
// function begins at statement 8252, parm_start=5691
// OP_STATE	5691	5692	0
// OP_ADDRESS	28	156	5693
// OP_STOREP_F	2107	5693	0
// OP_DONE	0	0	0
void () player_axed2 = [138, player_axed3]
{
    self.weaponframe = 6;
};

// player_axed3
// function begins at statement 8256, parm_start=5694
// OP_STATE	5694	5695	0
// OP_ADDRESS	28	156	5696
// OP_STOREP_F	2307	5696	0
// OP_CALL0	2880	0	0
// OP_DONE	0	0	0
void () player_axed3 = [139, player_axed4]
{
    self.weaponframe = 7;
    W_FireAxe();
};

// player_axed4
// function begins at statement 8261, parm_start=5697
// OP_STATE	5697	2861	0
// OP_ADDRESS	28	156	5698
// OP_STOREP_F	1502	5698	0
// OP_DONE	0	0	0
void () player_axed4 = [140, player_run]
{
    self.weaponframe = 8;
};

// player_nail1
// function begins at statement 8265, parm_start=5699
// OP_STATE	5699	5700	0
// OP_ADDRESS	28	133	5701
// OP_LOAD_F	28	133	5702
// OP_BITOR	5702	335	5703
// OP_STOREP_F	5703	5701	0
// OP_LOAD_F	28	170	5704
// OP_NOT_F	5704	0	5705
// OP_IFNOT	5705	3	0
// OP_CALL0	2861	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5706
// OP_LOAD_F	28	156	5707
// OP_ADD_F	5707	708	5708
// OP_STOREP_F	5708	5706	0
// OP_LOAD_F	28	156	5709
// OP_EQ_F	5709	3556	5710
// OP_IFNOT	5710	3	0
// OP_ADDRESS	28	156	5711
// OP_STOREP_F	708	5711	0
// OP_CALL0	2862	0	0
// OP_STORE_V	1835	4	0
// OP_CALL1	3506	0	0
// OP_ADDRESS	28	374	5712
// OP_ADD_F	31	922	5713
// OP_STOREP_F	5713	5712	0
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
    W_FireSpikes(4);
    self.attack_finished = time + 0.2;
};

// player_nail2
// function begins at statement 8291, parm_start=5714
// OP_STATE	5714	3701	0
// OP_ADDRESS	28	133	5715
// OP_LOAD_F	28	133	5716
// OP_BITOR	5716	335	5717
// OP_STOREP_F	5717	5715	0
// OP_LOAD_F	28	170	5718
// OP_NOT_F	5718	0	5719
// OP_IFNOT	5719	3	0
// OP_CALL0	2861	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5720
// OP_LOAD_F	28	156	5721
// OP_ADD_F	5721	708	5722
// OP_STOREP_F	5722	5720	0
// OP_LOAD_F	28	156	5723
// OP_EQ_F	5723	3556	5724
// OP_IFNOT	5724	3	0
// OP_ADDRESS	28	156	5725
// OP_STOREP_F	708	5725	0
// OP_CALL0	2862	0	0
// OP_STORE_V	3148	4	0
// OP_CALL1	3506	0	0
// OP_ADDRESS	28	374	5726
// OP_ADD_F	31	922	5727
// OP_STOREP_F	5727	5726	0
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
    W_FireSpikes(-4);
    self.attack_finished = time + 0.2;
};

// player_light1
// function begins at statement 8317, parm_start=5728
// OP_STATE	5728	5729	0
// OP_ADDRESS	28	133	5730
// OP_LOAD_F	28	133	5731
// OP_BITOR	5731	335	5732
// OP_STOREP_F	5732	5730	0
// OP_ADDRESS	28	156	5733
// OP_LOAD_F	28	156	5734
// OP_ADD_F	5734	708	5735
// OP_STOREP_F	5735	5733	0
// OP_LOAD_F	28	156	5736
// OP_EQ_F	5736	1660	5737
// OP_IFNOT	5737	3	0
// OP_ADDRESS	28	156	5738
// OP_STOREP_F	708	5738	0
// OP_CALL0	2862	0	0
// OP_CALL0	3313	0	0
// OP_ADDRESS	28	374	5739
// OP_ADD_F	31	922	5740
// OP_STOREP_F	5740	5739	0
// OP_DONE	0	0	0
void () player_light1 = [105, player_light2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + 1;
    
    if(self.weaponframe == 5)
    {
        self.weaponframe = 1;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_light2
// function begins at statement 8337, parm_start=5741
// OP_STATE	5741	3702	0
// OP_ADDRESS	28	133	5742
// OP_LOAD_F	28	133	5743
// OP_BITOR	5743	335	5744
// OP_STOREP_F	5744	5742	0
// OP_LOAD_F	28	170	5745
// OP_NOT_F	5745	0	5746
// OP_IFNOT	5746	3	0
// OP_CALL0	2861	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5747
// OP_LOAD_F	28	156	5748
// OP_ADD_F	5748	708	5749
// OP_STOREP_F	5749	5747	0
// OP_LOAD_F	28	156	5750
// OP_EQ_F	5750	1660	5751
// OP_IFNOT	5751	3	0
// OP_ADDRESS	28	156	5752
// OP_STOREP_F	708	5752	0
// OP_CALL0	2862	0	0
// OP_CALL0	3313	0	0
// OP_ADDRESS	28	374	5753
// OP_ADD_F	31	922	5754
// OP_STOREP_F	5754	5753	0
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
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_rocket1
// function begins at statement 8362, parm_start=5755
// OP_STATE	5755	5756	0
// OP_ADDRESS	28	156	5757
// OP_STOREP_F	708	5757	0
// OP_ADDRESS	28	133	5758
// OP_LOAD_F	28	133	5759
// OP_BITOR	5759	335	5760
// OP_STOREP_F	5760	5758	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, player_rocket2]
{
    self.weaponframe = 1;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_rocket2
// function begins at statement 8370, parm_start=5761
// OP_STATE	5761	5762	0
// OP_ADDRESS	28	156	5763
// OP_STOREP_F	929	5763	0
// OP_DONE	0	0	0
void () player_rocket2 = [108, player_rocket3]
{
    self.weaponframe = 2;
};

// player_rocket3
// function begins at statement 8374, parm_start=5764
// OP_STATE	5764	5765	0
// OP_ADDRESS	28	156	5766
// OP_STOREP_F	819	5766	0
// OP_DONE	0	0	0
void () player_rocket3 = [109, player_rocket4]
{
    self.weaponframe = 3;
};

// player_rocket4
// function begins at statement 8378, parm_start=5767
// OP_STATE	5767	5768	0
// OP_ADDRESS	28	156	5769
// OP_STOREP_F	1835	5769	0
// OP_DONE	0	0	0
void () player_rocket4 = [110, player_rocket5]
{
    self.weaponframe = 4;
};

// player_rocket5
// function begins at statement 8382, parm_start=5770
// OP_STATE	5770	5771	0
// OP_ADDRESS	28	156	5772
// OP_STOREP_F	1660	5772	0
// OP_DONE	0	0	0
void () player_rocket5 = [111, player_rocket6]
{
    self.weaponframe = 5;
};

// player_rocket6
// function begins at statement 8386, parm_start=5773
// OP_STATE	5773	2861	0
// OP_ADDRESS	28	156	5774
// OP_STOREP_F	2107	5774	0
// OP_DONE	0	0	0
void () player_rocket6 = [112, player_run]
{
    self.weaponframe = 6;
};

void (float num_bubbles) DeathBubbles;
// PainSound
// function begins at statement 8390, parm_start=5777
// OP_LOAD_F	28	152	5778
// OP_LT	5778	650	5779
// OP_IFNOT	5779	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	348	129	5780
// OP_EQ_S	5780	5389	5781
// OP_IFNOT	5781	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4258	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5782
// OP_EQ_F	5782	279	5783
// OP_LOAD_F	28	189	5784
// OP_EQ_F	5784	819	5785
// OP_AND	5783	5785	5786
// OP_IFNOT	5786	20	0
// OP_STORE_V	708	4	0
// OP_CALL1	5775	0	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	5787
// OP_IFNOT	5787	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4253	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4254	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5788
// OP_EQ_F	5788	280	5789
// OP_IFNOT	5789	18	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	5790
// OP_IFNOT	5790	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4284	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4285	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5791
// OP_EQ_F	5791	281	5792
// OP_IFNOT	5792	18	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	5793
// OP_IFNOT	5793	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4284	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4285	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	375	5794
// OP_GT	5794	31	5795
// OP_IFNOT	5795	4	0
// OP_ADDRESS	28	388	5796
// OP_STOREP_F	650	5796	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	375	5797
// OP_ADD_F	31	1727	5798
// OP_STOREP_F	5798	5797	0
// OP_LOAD_F	28	388	5799
// OP_EQ_F	5799	708	5800
// OP_IFNOT	5800	10	0
// OP_ADDRESS	28	388	5801
// OP_STOREP_F	650	5801	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4278	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1660	5802
// OP_ADD_F	5802	708	5803
// OP_STORE_V	5803	4	0
// OP_CALL1	481	0	0
// OP_STORE_F	1	5777	0
// OP_ADDRESS	28	208	5804
// OP_STOREP_S	652	5804	0
// OP_EQ_F	5777	708	5805
// OP_IFNOT	5805	4	0
// OP_ADDRESS	28	208	5806
// OP_STOREP_S	4267	5806	0
// OP_GOTO	23	0	0
// OP_EQ_F	5777	929	5807
// OP_IFNOT	5807	4	0
// OP_ADDRESS	28	208	5808
// OP_STOREP_S	4268	5808	0
// OP_GOTO	18	0	0
// OP_EQ_F	5777	819	5809
// OP_IFNOT	5809	4	0
// OP_ADDRESS	28	208	5810
// OP_STOREP_S	4269	5810	0
// OP_GOTO	13	0	0
// OP_EQ_F	5777	1835	5811
// OP_IFNOT	5811	4	0
// OP_ADDRESS	28	208	5812
// OP_STOREP_S	4270	5812	0
// OP_GOTO	8	0	0
// OP_EQ_F	5777	1660	5813
// OP_IFNOT	5813	4	0
// OP_ADDRESS	28	208	5814
// OP_STOREP_S	4271	5814	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	5815
// OP_STOREP_S	4272	5815	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	5816
// OP_STORE_V	5816	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
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
// function begins at statement 8534, parm_start=5818
// OP_STATE	3325	5818	0
// OP_CALL0	5776	0	0
// OP_ADDRESS	28	156	5819
// OP_STOREP_F	650	5819	0
// OP_DONE	0	0	0
void () player_pain1 = [35, player_pain2]
{
    PainSound();
    self.weaponframe = 0;
};

// player_pain2
// function begins at statement 8539, parm_start=5820
// OP_STATE	5820	5821	0
// OP_DONE	0	0	0
void () player_pain2 = [36, player_pain3]
{
};

// player_pain3
// function begins at statement 8541, parm_start=5822
// OP_STATE	5822	5823	0
// OP_DONE	0	0	0
void () player_pain3 = [37, player_pain4]
{
};

// player_pain4
// function begins at statement 8543, parm_start=5824
// OP_STATE	5824	5825	0
// OP_DONE	0	0	0
void () player_pain4 = [38, player_pain5]
{
};

// player_pain5
// function begins at statement 8545, parm_start=5826
// OP_STATE	5826	5827	0
// OP_DONE	0	0	0
void () player_pain5 = [39, player_pain6]
{
};

// player_pain6
// function begins at statement 8547, parm_start=5828
// OP_STATE	2007	2861	0
// OP_DONE	0	0	0
void () player_pain6 = [40, player_run]
{
};

// player_axpain1
// function begins at statement 8549, parm_start=5829
// OP_STATE	5829	5830	0
// OP_CALL0	5776	0	0
// OP_ADDRESS	28	156	5831
// OP_STOREP_F	650	5831	0
// OP_DONE	0	0	0
void () player_axpain1 = [29, player_axpain2]
{
    PainSound();
    self.weaponframe = 0;
};

// player_axpain2
// function begins at statement 8554, parm_start=5832
// OP_STATE	1004	5832	0
// OP_DONE	0	0	0
void () player_axpain2 = [30, player_axpain3]
{
};

// player_axpain3
// function begins at statement 8556, parm_start=5833
// OP_STATE	3950	5833	0
// OP_DONE	0	0	0
void () player_axpain3 = [31, player_axpain4]
{
};

// player_axpain4
// function begins at statement 8558, parm_start=5834
// OP_STATE	959	5834	0
// OP_DONE	0	0	0
void () player_axpain4 = [32, player_axpain5]
{
};

// player_axpain5
// function begins at statement 8560, parm_start=5835
// OP_STATE	5835	5836	0
// OP_DONE	0	0	0
void () player_axpain5 = [33, player_axpain6]
{
};

// player_axpain6
// function begins at statement 8562, parm_start=5837
// OP_STATE	5837	2861	0
// OP_DONE	0	0	0
void () player_axpain6 = [34, player_run]
{
};

// player_pain
// function begins at statement 8564, parm_start=5838
// OP_LOAD_F	28	156	5838
// OP_IFNOT	5838	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	377	5839
// OP_GT	5839	31	5840
// OP_IFNOT	5840	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5841
// OP_EQ_F	5841	254	5842
// OP_IFNOT	5842	3	0
// OP_CALL0	5828	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5817	0	0
// OP_DONE	0	0	0
void () player_pain = 
{
    
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
// function begins at statement 8578, parm_start=5850
// OP_LOAD_ENT	28	201	5851
// OP_LOAD_F	5851	189	5852
// OP_NE_F	5852	819	5853
// OP_IFNOT	5853	2	0
// OP_RETURN	0	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	5850	0
// OP_STORE_V	5850	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	5850	4	0
// OP_LOAD_ENT	28	201	5854
// OP_LOAD_V	5854	105	5855
// OP_ADD_V	5855	2828	5858
// OP_STORE_V	5858	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	5850	103	5861
// OP_STOREP_F	234	5861	0
// OP_ADDRESS	5850	104	5862
// OP_STOREP_F	238	5862	0
// OP_ADDRESS	5850	113	5863
// OP_STOREP_V	5866	5863	0
// OP_ADDRESS	5850	150	5869
// OP_ADD_F	31	1727	5870
// OP_STOREP_F	5870	5869	0
// OP_ADDRESS	5850	148	5871
// OP_STOREP_FNC	5587	5871	0
// OP_ADDRESS	5850	129	5872
// OP_STOREP_S	5873	5872	0
// OP_ADDRESS	5850	131	5874
// OP_STOREP_F	650	5874	0
// OP_ADDRESS	5850	422	5875
// OP_STOREP_F	650	5875	0
// OP_STORE_V	5850	4	0
// OP_STORE_V	1191	7	0
// OP_STORE_V	1194	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	150	5876
// OP_ADD_F	31	686	5877
// OP_STOREP_F	5877	5876	0
// OP_ADDRESS	28	148	5878
// OP_STOREP_FNC	5849	5878	0
// OP_ADDRESS	28	392	5879
// OP_LOAD_F	28	392	5880
// OP_ADD_F	5880	708	5881
// OP_STOREP_F	5881	5879	0
// OP_LOAD_F	28	392	5882
// OP_LOAD_F	28	393	5883
// OP_GE	5882	5883	5884
// OP_IFNOT	5884	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
    setorigin(bubble, self.owner.origin + '0.000 0.000 24.000');
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0.000 0.000 15.000';
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.classname = "bubble";
    bubble.frame = 0;
    bubble.cnt = 0;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = time + 0.1;
    self.think = DeathBubblesSpawn;
    self.air_finished = self.air_finished + 1;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};

// DeathBubbles
// function begins at statement 8631, parm_start=5885
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	5886	0
// OP_STORE_V	5886	4	0
// OP_LOAD_V	28	105	5887
// OP_STORE_V	5887	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	5886	103	5890
// OP_STOREP_F	228	5890	0
// OP_ADDRESS	5886	104	5891
// OP_STOREP_F	238	5891	0
// OP_ADDRESS	5886	150	5892
// OP_ADD_F	31	686	5893
// OP_STOREP_F	5893	5892	0
// OP_ADDRESS	5886	148	5894
// OP_STOREP_FNC	5849	5894	0
// OP_ADDRESS	5886	392	5895
// OP_STOREP_F	650	5895	0
// OP_ADDRESS	5886	201	5896
// OP_STOREP_ENT	28	5896	0
// OP_ADDRESS	5886	393	5897
// OP_STOREP_F	5885	5897	0
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
// function begins at statement 8654, parm_start=5899
// OP_LOAD_F	28	189	5900
// OP_EQ_F	5900	819	5901
// OP_IFNOT	5901	10	0
// OP_STORE_V	1017	4	0
// OP_CALL1	5775	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4257	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1835	5902
// OP_ADD_F	5902	708	5903
// OP_STORE_V	5903	4	0
// OP_CALL1	481	0	0
// OP_STORE_F	1	5899	0
// OP_EQ_F	5899	708	5904
// OP_IFNOT	5904	3	0
// OP_ADDRESS	28	208	5905
// OP_STOREP_S	4273	5905	0
// OP_EQ_F	5899	929	5906
// OP_IFNOT	5906	3	0
// OP_ADDRESS	28	208	5907
// OP_STOREP_S	4274	5907	0
// OP_EQ_F	5899	819	5908
// OP_IFNOT	5908	3	0
// OP_ADDRESS	28	208	5909
// OP_STOREP_S	4275	5909	0
// OP_EQ_F	5899	1835	5910
// OP_IFNOT	5910	3	0
// OP_ADDRESS	28	208	5911
// OP_STOREP_S	4276	5911	0
// OP_EQ_F	5899	1660	5912
// OP_IFNOT	5912	3	0
// OP_ADDRESS	28	208	5913
// OP_STOREP_S	4277	5913	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	5914
// OP_STORE_V	5914	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
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
// function begins at statement 8701, parm_start=5916
// OP_ADDRESS	28	150	5916
// OP_STOREP_F	720	5916	0
// OP_ADDRESS	28	165	5917
// OP_STOREP_F	249	5917	0
// OP_DONE	0	0	0
void () PlayerDead = 
{
    self.nextthink = -1;
    self.deadflag = DEAD_DEAD;
};

// VelocityForDamage
// function begins at statement 8706, parm_start=5919
// OP_CALL0	2877	0	0
// OP_MUL_F	2165	1	5923
// OP_STORE_F	5923	5920	0
// OP_CALL0	2877	0	0
// OP_MUL_F	2165	1	5924
// OP_STORE_F	5924	5921	0
// OP_CALL0	453	0	0
// OP_MUL_F	2165	1	5925
// OP_ADD_F	2246	5925	5926
// OP_STORE_F	5926	5922	0
// OP_GT	5919	4989	5927
// OP_IFNOT	5927	4	0
// OP_MUL_VF	5920	3100	5928
// OP_STORE_V	5928	5920	0
// OP_GOTO	8	0	0
// OP_GT	5919	5931	5932
// OP_IFNOT	5932	4	0
// OP_MUL_VF	5920	929	5933
// OP_STORE_V	5933	5920	0
// OP_GOTO	3	0	0
// OP_MUL_VF	5920	1931	5936
// OP_STORE_V	5936	5920	0
// OP_RETURN	5920	0	0
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
// function begins at statement 8730, parm_start=5940
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	5942	0
// OP_ADDRESS	5942	105	5943
// OP_LOAD_V	28	105	5946
// OP_STOREP_V	5946	5943	0
// OP_STORE_V	5942	4	0
// OP_STORE_V	5940	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	5942	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	5942	113	5949
// OP_STORE_V	5941	4	0
// OP_CALL1	5918	0	0
// OP_STOREP_V	1	5949	0
// OP_ADDRESS	5942	103	5952
// OP_STOREP_F	236	5952	0
// OP_ADDRESS	5942	104	5953
// OP_STOREP_F	238	5953	0
// OP_ADDRESS	5942	122	5954
// OP_CALL0	453	0	0
// OP_MUL_F	1	3343	5955
// OP_STOREP_F	5955	5954	0
// OP_ADDRESS	5942	123	5956
// OP_CALL0	453	0	0
// OP_MUL_F	1	3343	5957
// OP_STOREP_F	5957	5956	0
// OP_ADDRESS	5942	124	5958
// OP_CALL0	453	0	0
// OP_MUL_F	1	3343	5959
// OP_STOREP_F	5959	5958	0
// OP_ADDRESS	5942	148	5960
// OP_STOREP_FNC	520	5960	0
// OP_ADDRESS	5942	102	5961
// OP_STOREP_F	31	5961	0
// OP_ADDRESS	5942	150	5962
// OP_ADD_F	31	1931	5963
// OP_CALL0	453	0	0
// OP_MUL_F	1	1931	5964
// OP_ADD_F	5963	5964	5965
// OP_STOREP_F	5965	5962	0
// OP_ADDRESS	5942	131	5966
// OP_STOREP_F	650	5966	0
// OP_ADDRESS	5942	182	5967
// OP_STOREP_F	650	5967	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowGib = 
{
    local entity new;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, '0.000 0.000 0.000', '0.000 0.000 0.000');
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
};

// ThrowHead
// function begins at statement 8777, parm_start=5969
// OP_STORE_V	28	4	0
// OP_STORE_V	5969	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	131	5971
// OP_STOREP_F	650	5971	0
// OP_ADDRESS	28	148	5972
// OP_STOREP_FNC	520	5972	0
// OP_ADDRESS	28	150	5973
// OP_STOREP_F	720	5973	0
// OP_ADDRESS	28	103	5974
// OP_STOREP_F	236	5974	0
// OP_ADDRESS	28	163	5975
// OP_STOREP_F	251	5975	0
// OP_ADDRESS	28	104	5976
// OP_STOREP_F	238	5976	0
// OP_ADDRESS	28	166	5977
// OP_STOREP_V	5980	5977	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2274	7	0
// OP_STORE_V	2277	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	113	5983
// OP_STORE_V	5970	4	0
// OP_CALL1	5918	0	0
// OP_STOREP_V	1	5983	0
// OP_ADDRESS	28	108	5986
// OP_LOAD_F	28	108	5987
// OP_SUB_F	5987	4969	5988
// OP_STOREP_F	5988	5986	0
// OP_ADDRESS	28	182	5989
// OP_LOAD_F	28	182	5990
// OP_LOAD_F	28	182	5991
// OP_BITAND	5991	223	5992
// OP_SUB_F	5990	5992	5993
// OP_STOREP_F	5993	5989	0
// OP_ADDRESS	28	121	5994
// OP_CALL0	2877	0	0
// OP_MUL_FV	1	5997	6000
// OP_STOREP_V	6000	5994	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead = 
{
    setmodel(self, gibname);
    self.frame = 0;
    self.think = SUB_Remove;
    self.nextthink = -1;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0.000 0.000 8.000';
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    self.velocity = VelocityForDamage(dm);
    self.origin_z = self.origin_z - 24;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0.000 600.000 0.000';
};

// GibPlayer
// function begins at statement 8817, parm_start=6004
// OP_STORE_V	4323	4	0
// OP_LOAD_F	28	152	6004
// OP_STORE_V	6004	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	6005
// OP_STORE_V	6005	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	6006
// OP_STORE_V	6006	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	6007
// OP_STORE_V	6007	7	0
// OP_CALL2	5939	0	0
// OP_ADDRESS	28	165	6008
// OP_STOREP_F	249	6008	0
// OP_LOAD_S	348	129	6009
// OP_EQ_S	6009	5389	6010
// OP_IFNOT	6010	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4258	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	348	129	6011
// OP_EQ_S	6011	5401	6012
// OP_IFNOT	6012	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4258	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	6013
// OP_IFNOT	6013	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4264	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () GibPlayer = 
{
    ThrowHead("progs/h_player.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
    self.deadflag = DEAD_DEAD;
    
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
// function begins at statement 8872, parm_start=6014
// OP_ADDRESS	28	162	6015
// OP_LOAD_F	28	162	6016
// OP_LOAD_F	28	162	6017
// OP_BITAND	6017	273	6018
// OP_SUB_F	6016	6018	6019
// OP_STOREP_F	6019	6015	0
// OP_ADDRESS	28	377	6020
// OP_STOREP_F	650	6020	0
// OP_ADDRESS	28	376	6021
// OP_STOREP_F	650	6021	0
// OP_ADDRESS	28	378	6022
// OP_STOREP_F	650	6022	0
// OP_ADDRESS	28	379	6023
// OP_STOREP_F	650	6023	0
// OP_ADDRESS	28	93	6024
// OP_STOREP_F	4413	6024	0
// OP_ADDRESS	28	155	6025
// OP_STOREP_S	652	6025	0
// OP_ADDRESS	28	166	6026
// OP_STOREP_V	6029	6026	0
// OP_ADDRESS	28	165	6032
// OP_STOREP_F	248	6032	0
// OP_ADDRESS	28	104	6033
// OP_STOREP_F	238	6033	0
// OP_ADDRESS	28	182	6034
// OP_LOAD_F	28	182	6035
// OP_LOAD_F	28	182	6036
// OP_BITAND	6036	223	6037
// OP_SUB_F	6035	6037	6038
// OP_STOREP_F	6038	6034	0
// OP_ADDRESS	28	103	6039
// OP_STOREP_F	232	6039	0
// OP_LOAD_F	28	116	6040
// OP_LT	6040	1931	6041
// OP_IFNOT	6041	7	0
// OP_ADDRESS	28	116	6042
// OP_LOAD_F	28	116	6043
// OP_CALL0	453	0	0
// OP_MUL_F	1	2845	6044
// OP_ADD_F	6043	6044	6045
// OP_STOREP_F	6045	6042	0
// OP_LOAD_F	28	152	6046
// OP_LT	6046	5465	6047
// OP_IFNOT	6047	3	0
// OP_CALL0	6003	0	0
// OP_RETURN	0	0	0
// OP_CALL0	5898	0	0
// OP_ADDRESS	28	118	6048
// OP_STOREP_F	650	6048	0
// OP_ADDRESS	28	120	6049
// OP_STOREP_F	650	6049	0
// OP_LOAD_F	28	154	6050
// OP_EQ_F	6050	254	6051
// OP_IFNOT	6051	3	0
// OP_CALL0	5848	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	6052	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	6014	0
// OP_NOT_F	6014	0	6053
// OP_IFNOT	6053	7	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	2107	6054
// OP_STORE_V	6054	4	0
// OP_CALL1	482	0	0
// OP_ADD_F	708	1	6055
// OP_STORE_F	6055	6014	0
// OP_EQ_F	6014	708	6056
// OP_IFNOT	6056	3	0
// OP_CALL0	5843	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	6014	929	6057
// OP_IFNOT	6057	3	0
// OP_CALL0	5844	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	6014	819	6058
// OP_IFNOT	6058	3	0
// OP_CALL0	5845	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	6014	1835	6059
// OP_IFNOT	6059	3	0
// OP_CALL0	5846	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5847	0	0
// OP_DONE	0	0	0
void () PlayerDie = 
{
    local float i;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.modelindex = modelindex_player;
    self.weaponmodel = "";
    self.view_ofs = '0.000 0.000 -8.000';
    self.deadflag = DEAD_DYING;
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
    
    if(self.weapon == IT_AXE)
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
// function begins at statement 8957, parm_start=6060
// OP_LOAD_S	28	130	6060
// OP_NE_S	6060	4321	6061
// OP_IFNOT	6061	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	131	6062
// OP_STOREP_F	1035	6062	0
// OP_ADDRESS	28	104	6063
// OP_STOREP_F	238	6063	0
// OP_ADDRESS	28	103	6064
// OP_STOREP_F	232	6064	0
// OP_ADDRESS	28	165	6065
// OP_STOREP_F	249	6065	0
// OP_ADDRESS	28	150	6066
// OP_STOREP_F	720	6066	0
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
// function begins at statement 8972, parm_start=6067
// OP_STATE	2509	6067	0
// OP_DONE	0	0	0
void () player_diea1 = [50, player_diea2]
{
};

// player_diea2
// function begins at statement 8974, parm_start=6068
// OP_STATE	6068	6069	0
// OP_DONE	0	0	0
void () player_diea2 = [51, player_diea3]
{
};

// player_diea3
// function begins at statement 8976, parm_start=6070
// OP_STATE	6070	6071	0
// OP_DONE	0	0	0
void () player_diea3 = [52, player_diea4]
{
};

// player_diea4
// function begins at statement 8978, parm_start=6072
// OP_STATE	6072	6073	0
// OP_DONE	0	0	0
void () player_diea4 = [53, player_diea5]
{
};

// player_diea5
// function begins at statement 8980, parm_start=6074
// OP_STATE	6074	6075	0
// OP_DONE	0	0	0
void () player_diea5 = [54, player_diea6]
{
};

// player_diea6
// function begins at statement 8982, parm_start=6076
// OP_STATE	6076	6077	0
// OP_DONE	0	0	0
void () player_diea6 = [55, player_diea7]
{
};

// player_diea7
// function begins at statement 8984, parm_start=6078
// OP_STATE	6078	6079	0
// OP_DONE	0	0	0
void () player_diea7 = [56, player_diea8]
{
};

// player_diea8
// function begins at statement 8986, parm_start=6080
// OP_STATE	6080	6081	0
// OP_DONE	0	0	0
void () player_diea8 = [57, player_diea9]
{
};

// player_diea9
// function begins at statement 8988, parm_start=6082
// OP_STATE	6082	6083	0
// OP_DONE	0	0	0
void () player_diea9 = [58, player_diea10]
{
};

// player_diea10
// function begins at statement 8990, parm_start=6084
// OP_STATE	6084	6085	0
// OP_DONE	0	0	0
void () player_diea10 = [59, player_diea11]
{
};

// player_diea11
// function begins at statement 8992, parm_start=6086
// OP_STATE	1035	6085	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_diea11 = [60, player_diea11]
{
    PlayerDead();
};

// player_dieb1
// function begins at statement 8995, parm_start=6086
// OP_STATE	6086	6087	0
// OP_DONE	0	0	0
void () player_dieb1 = [61, player_dieb2]
{
};

// player_dieb2
// function begins at statement 8997, parm_start=6088
// OP_STATE	6088	6089	0
// OP_DONE	0	0	0
void () player_dieb2 = [62, player_dieb3]
{
};

// player_dieb3
// function begins at statement 8999, parm_start=6090
// OP_STATE	4345	6090	0
// OP_DONE	0	0	0
void () player_dieb3 = [63, player_dieb4]
{
};

// player_dieb4
// function begins at statement 9001, parm_start=6091
// OP_STATE	1684	6091	0
// OP_DONE	0	0	0
void () player_dieb4 = [64, player_dieb5]
{
};

// player_dieb5
// function begins at statement 9003, parm_start=6092
// OP_STATE	6092	6093	0
// OP_DONE	0	0	0
void () player_dieb5 = [65, player_dieb6]
{
};

// player_dieb6
// function begins at statement 9005, parm_start=6094
// OP_STATE	6094	6095	0
// OP_DONE	0	0	0
void () player_dieb6 = [66, player_dieb7]
{
};

// player_dieb7
// function begins at statement 9007, parm_start=6096
// OP_STATE	6096	6097	0
// OP_DONE	0	0	0
void () player_dieb7 = [67, player_dieb8]
{
};

// player_dieb8
// function begins at statement 9009, parm_start=6098
// OP_STATE	6098	6099	0
// OP_DONE	0	0	0
void () player_dieb8 = [68, player_dieb9]
{
};

// player_dieb9
// function begins at statement 9011, parm_start=6100
// OP_STATE	6100	6099	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_dieb9 = [69, player_dieb9]
{
    PlayerDead();
};

// player_diec1
// function begins at statement 9014, parm_start=6101
// OP_STATE	6101	6102	0
// OP_DONE	0	0	0
void () player_diec1 = [70, player_diec2]
{
};

// player_diec2
// function begins at statement 9016, parm_start=6103
// OP_STATE	6103	6104	0
// OP_DONE	0	0	0
void () player_diec2 = [71, player_diec3]
{
};

// player_diec3
// function begins at statement 9018, parm_start=6105
// OP_STATE	6105	6106	0
// OP_DONE	0	0	0
void () player_diec3 = [72, player_diec4]
{
};

// player_diec4
// function begins at statement 9020, parm_start=6107
// OP_STATE	2988	6107	0
// OP_DONE	0	0	0
void () player_diec4 = [73, player_diec5]
{
};

// player_diec5
// function begins at statement 9022, parm_start=6108
// OP_STATE	6108	6109	0
// OP_DONE	0	0	0
void () player_diec5 = [74, player_diec6]
{
};

// player_diec6
// function begins at statement 9024, parm_start=6110
// OP_STATE	6110	6111	0
// OP_DONE	0	0	0
void () player_diec6 = [75, player_diec7]
{
};

// player_diec7
// function begins at statement 9026, parm_start=6112
// OP_STATE	6112	6113	0
// OP_DONE	0	0	0
void () player_diec7 = [76, player_diec8]
{
};

// player_diec8
// function begins at statement 9028, parm_start=6114
// OP_STATE	6114	6115	0
// OP_DONE	0	0	0
void () player_diec8 = [77, player_diec9]
{
};

// player_diec9
// function begins at statement 9030, parm_start=6116
// OP_STATE	6116	6117	0
// OP_DONE	0	0	0
void () player_diec9 = [78, player_diec10]
{
};

// player_diec10
// function begins at statement 9032, parm_start=6118
// OP_STATE	6118	6119	0
// OP_DONE	0	0	0
void () player_diec10 = [79, player_diec11]
{
};

// player_diec11
// function begins at statement 9034, parm_start=6120
// OP_STATE	874	6120	0
// OP_DONE	0	0	0
void () player_diec11 = [80, player_diec12]
{
};

// player_diec12
// function begins at statement 9036, parm_start=6121
// OP_STATE	6121	6122	0
// OP_DONE	0	0	0
void () player_diec12 = [81, player_diec13]
{
};

// player_diec13
// function begins at statement 9038, parm_start=6123
// OP_STATE	6123	6124	0
// OP_DONE	0	0	0
void () player_diec13 = [82, player_diec14]
{
};

// player_diec14
// function begins at statement 9040, parm_start=6125
// OP_STATE	6125	6126	0
// OP_DONE	0	0	0
void () player_diec14 = [83, player_diec15]
{
};

// player_diec15
// function begins at statement 9042, parm_start=6127
// OP_STATE	6127	6126	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_diec15 = [84, player_diec15]
{
    PlayerDead();
};

// player_died1
// function begins at statement 9045, parm_start=6128
// OP_STATE	6128	6129	0
// OP_DONE	0	0	0
void () player_died1 = [85, player_died2]
{
};

// player_died2
// function begins at statement 9047, parm_start=6130
// OP_STATE	6130	6131	0
// OP_DONE	0	0	0
void () player_died2 = [86, player_died3]
{
};

// player_died3
// function begins at statement 9049, parm_start=6132
// OP_STATE	6132	6133	0
// OP_DONE	0	0	0
void () player_died3 = [87, player_died4]
{
};

// player_died4
// function begins at statement 9051, parm_start=6134
// OP_STATE	6134	6135	0
// OP_DONE	0	0	0
void () player_died4 = [88, player_died5]
{
};

// player_died5
// function begins at statement 9053, parm_start=6136
// OP_STATE	6136	6137	0
// OP_DONE	0	0	0
void () player_died5 = [89, player_died6]
{
};

// player_died6
// function begins at statement 9055, parm_start=6138
// OP_STATE	1608	6138	0
// OP_DONE	0	0	0
void () player_died6 = [90, player_died7]
{
};

// player_died7
// function begins at statement 9057, parm_start=6139
// OP_STATE	6139	6140	0
// OP_DONE	0	0	0
void () player_died7 = [91, player_died8]
{
};

// player_died8
// function begins at statement 9059, parm_start=6141
// OP_STATE	6141	6142	0
// OP_DONE	0	0	0
void () player_died8 = [92, player_died9]
{
};

// player_died9
// function begins at statement 9061, parm_start=6143
// OP_STATE	6143	6142	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_died9 = [93, player_died9]
{
    PlayerDead();
};

// player_diee1
// function begins at statement 9064, parm_start=6144
// OP_STATE	6144	6145	0
// OP_DONE	0	0	0
void () player_diee1 = [94, player_diee2]
{
};

// player_diee2
// function begins at statement 9066, parm_start=6146
// OP_STATE	6146	6147	0
// OP_DONE	0	0	0
void () player_diee2 = [95, player_diee3]
{
};

// player_diee3
// function begins at statement 9068, parm_start=6148
// OP_STATE	6148	6149	0
// OP_DONE	0	0	0
void () player_diee3 = [96, player_diee4]
{
};

// player_diee4
// function begins at statement 9070, parm_start=6150
// OP_STATE	6150	6151	0
// OP_DONE	0	0	0
void () player_diee4 = [97, player_diee5]
{
};

// player_diee5
// function begins at statement 9072, parm_start=6152
// OP_STATE	6152	6153	0
// OP_DONE	0	0	0
void () player_diee5 = [98, player_diee6]
{
};

// player_diee6
// function begins at statement 9074, parm_start=6154
// OP_STATE	6154	6155	0
// OP_DONE	0	0	0
void () player_diee6 = [99, player_diee7]
{
};

// player_diee7
// function begins at statement 9076, parm_start=6156
// OP_STATE	2165	6156	0
// OP_DONE	0	0	0
void () player_diee7 = [100, player_diee8]
{
};

// player_diee8
// function begins at statement 9078, parm_start=6157
// OP_STATE	6157	6158	0
// OP_DONE	0	0	0
void () player_diee8 = [101, player_diee9]
{
};

// player_diee9
// function begins at statement 9080, parm_start=6159
// OP_STATE	6159	6158	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_diee9 = [102, player_diee9]
{
    PlayerDead();
};

// player_die_ax1
// function begins at statement 9083, parm_start=6160
// OP_STATE	6160	6161	0
// OP_DONE	0	0	0
void () player_die_ax1 = [41, player_die_ax2]
{
};

// player_die_ax2
// function begins at statement 9085, parm_start=6162
// OP_STATE	6162	6163	0
// OP_DONE	0	0	0
void () player_die_ax2 = [42, player_die_ax3]
{
};

// player_die_ax3
// function begins at statement 9087, parm_start=6164
// OP_STATE	6164	6165	0
// OP_DONE	0	0	0
void () player_die_ax3 = [43, player_die_ax4]
{
};

// player_die_ax4
// function begins at statement 9089, parm_start=6166
// OP_STATE	6166	6167	0
// OP_DONE	0	0	0
void () player_die_ax4 = [44, player_die_ax5]
{
};

// player_die_ax5
// function begins at statement 9091, parm_start=6168
// OP_STATE	1572	6168	0
// OP_DONE	0	0	0
void () player_die_ax5 = [45, player_die_ax6]
{
};

// player_die_ax6
// function begins at statement 9093, parm_start=6169
// OP_STATE	6169	6170	0
// OP_DONE	0	0	0
void () player_die_ax6 = [46, player_die_ax7]
{
};

// player_die_ax7
// function begins at statement 9095, parm_start=6171
// OP_STATE	6171	6172	0
// OP_DONE	0	0	0
void () player_die_ax7 = [47, player_die_ax8]
{
};

// player_die_ax8
// function begins at statement 9097, parm_start=6173
// OP_STATE	6173	6174	0
// OP_DONE	0	0	0
void () player_die_ax8 = [48, player_die_ax9]
{
};

// player_die_ax9
// function begins at statement 9099, parm_start=6175
// OP_STATE	6175	6174	0
// OP_CALL0	5915	0	0
// OP_DONE	0	0	0
void () player_die_ax9 = [49, player_die_ax9]
{
    PlayerDead();
};

