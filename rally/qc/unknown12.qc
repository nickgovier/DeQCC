void () bubble_bob;
// player_stand1
// function begins at statement 20268, parm_start=14629
// OP_STATE	4041	12317	0
// OP_LOAD_F	28	114	14629
// OP_LOAD_F	28	115	14630
// OP_OR	14629	14630	14631
// OP_IFNOT	14631	5	0
// OP_ADDRESS	28	386	14632
// OP_STOREP_F	817	14632	0
// OP_CALL0	9169	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	386	14633
// OP_GE	14633	827	14634
// OP_IFNOT	14634	3	0
// OP_ADDRESS	28	386	14635
// OP_STOREP_F	817	14635	0
// OP_ADDRESS	28	131	14636
// OP_LOAD_F	28	386	14637
// OP_ADD_F	834	14637	14638
// OP_STOREP_F	14638	14636	0
// OP_ADDRESS	28	386	14639
// OP_LOAD_F	28	386	14640
// OP_ADD_F	14640	819	14641
// OP_STOREP_F	14641	14639	0
// OP_DONE	0	0	0
void () player_stand1 = [17, player_stand1]
{
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = 0;
        player_run();
        return;
    }
    
    
    if(self.walkframe >= 5)
    {
        self.walkframe = 0;
    }
    
    self.frame = 12 + self.walkframe;
    self.walkframe = self.walkframe + 1;
};

// player_run
// function begins at statement 20291, parm_start=14642
// OP_STATE	829	9169	0
// OP_LOAD_F	28	114	14642
// OP_NOT_F	14642	0	14643
// OP_LOAD_F	28	115	14644
// OP_NOT_F	14644	0	14645
// OP_AND	14643	14645	14646
// OP_IFNOT	14646	5	0
// OP_ADDRESS	28	386	14647
// OP_STOREP_F	817	14647	0
// OP_CALL0	12317	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	386	14648
// OP_EQ_F	14648	829	14649
// OP_IFNOT	14649	3	0
// OP_ADDRESS	28	386	14650
// OP_STOREP_F	817	14650	0
// OP_ADDRESS	28	131	14651
// OP_LOAD_F	28	131	14652
// OP_LOAD_F	28	386	14653
// OP_ADD_F	14652	14653	14654
// OP_STOREP_F	14654	14651	0
// OP_ADDRESS	28	386	14655
// OP_LOAD_F	28	386	14656
// OP_ADD_F	14656	819	14657
// OP_STOREP_F	14657	14655	0
// OP_DONE	0	0	0
void () player_run = [6, player_run]
{
    
    if(!self.velocity_x && !self.velocity_y)
    {
        self.walkframe = 0;
        player_stand1();
        return;
    }
    
    
    if(self.walkframe == 6)
    {
        self.walkframe = 0;
    }
    
    self.frame = self.frame + self.walkframe;
    self.walkframe = self.walkframe + 1;
};

// player_shot1
// function begins at statement 20317, parm_start=14658
// OP_STATE	14658	14659	0
// OP_ADDRESS	28	133	14660
// OP_LOAD_F	28	133	14661
// OP_BITOR	14661	348	14662
// OP_STOREP_F	14662	14660	0
// OP_DONE	0	0	0
void () player_shot1 = [113, player_shot2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_shot2
// function begins at statement 20323, parm_start=14663
// OP_STATE	14663	14664	0
// OP_DONE	0	0	0
void () player_shot2 = [114, player_shot3]
{
};

// player_shot3
// function begins at statement 20325, parm_start=14665
// OP_STATE	14665	14666	0
// OP_DONE	0	0	0
void () player_shot3 = [115, player_shot4]
{
};

// player_shot4
// function begins at statement 20327, parm_start=14667
// OP_STATE	14667	14668	0
// OP_DONE	0	0	0
void () player_shot4 = [116, player_shot5]
{
};

// player_shot5
// function begins at statement 20329, parm_start=14669
// OP_STATE	14669	14670	0
// OP_DONE	0	0	0
void () player_shot5 = [117, player_shot6]
{
};

// player_shot6
// function begins at statement 20331, parm_start=14671
// OP_STATE	14671	9169	0
// OP_DONE	0	0	0
void () player_shot6 = [118, player_run]
{
};

// player_axe1
// function begins at statement 20333, parm_start=14672
// OP_STATE	14672	14673	0
// OP_DONE	0	0	0
void () player_axe1 = [119, player_axe2]
{
};

// player_axe2
// function begins at statement 20335, parm_start=14674
// OP_STATE	5807	14674	0
// OP_DONE	0	0	0
void () player_axe2 = [120, player_axe3]
{
};

// player_axe3
// function begins at statement 20337, parm_start=14675
// OP_STATE	14675	14676	0
// OP_CALL0	9190	0	0
// OP_DONE	0	0	0
void () player_axe3 = [121, player_axe4]
{
    W_FireAxe();
};

// player_axe4
// function begins at statement 20340, parm_start=14677
// OP_STATE	14677	9169	0
// OP_DONE	0	0	0
void () player_axe4 = [122, player_run]
{
};

// player_axeb1
// function begins at statement 20342, parm_start=14678
// OP_STATE	14678	14679	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, player_axeb2]
{
};

// player_axeb2
// function begins at statement 20344, parm_start=14680
// OP_STATE	14680	14681	0
// OP_DONE	0	0	0
void () player_axeb2 = [126, player_axeb3]
{
};

// player_axeb3
// function begins at statement 20346, parm_start=14682
// OP_STATE	14682	14683	0
// OP_CALL0	9190	0	0
// OP_DONE	0	0	0
void () player_axeb3 = [127, player_axeb4]
{
    W_FireAxe();
};

// player_axeb4
// function begins at statement 20349, parm_start=14684
// OP_STATE	6067	9169	0
// OP_DONE	0	0	0
void () player_axeb4 = [128, player_run]
{
};

// player_axec1
// function begins at statement 20351, parm_start=14684
// OP_STATE	14684	14685	0
// OP_DONE	0	0	0
void () player_axec1 = [131, player_axec2]
{
};

// player_axec2
// function begins at statement 20353, parm_start=14686
// OP_STATE	14686	14687	0
// OP_DONE	0	0	0
void () player_axec2 = [132, player_axec3]
{
};

// player_axec3
// function begins at statement 20355, parm_start=14688
// OP_STATE	14688	14689	0
// OP_CALL0	9190	0	0
// OP_DONE	0	0	0
void () player_axec3 = [133, player_axec4]
{
    W_FireAxe();
};

// player_axec4
// function begins at statement 20358, parm_start=14690
// OP_STATE	14690	9169	0
// OP_DONE	0	0	0
void () player_axec4 = [134, player_run]
{
};

// player_axed1
// function begins at statement 20360, parm_start=14691
// OP_STATE	14691	14692	0
// OP_DONE	0	0	0
void () player_axed1 = [137, player_axed2]
{
};

// player_axed2
// function begins at statement 20362, parm_start=14693
// OP_STATE	14693	14694	0
// OP_DONE	0	0	0
void () player_axed2 = [138, player_axed3]
{
};

// player_axed3
// function begins at statement 20364, parm_start=14695
// OP_STATE	14695	14696	0
// OP_CALL0	9190	0	0
// OP_DONE	0	0	0
void () player_axed3 = [139, player_axed4]
{
    W_FireAxe();
};

// player_axed4
// function begins at statement 20367, parm_start=14697
// OP_STATE	14697	9169	0
// OP_DONE	0	0	0
void () player_axed4 = [140, player_run]
{
};

// player_nail1
// function begins at statement 20369, parm_start=14698
// OP_STATE	14698	14699	0
// OP_ADDRESS	28	133	14700
// OP_LOAD_F	28	133	14701
// OP_BITOR	14701	348	14702
// OP_STOREP_F	14702	14700	0
// OP_LOAD_F	28	170	14703
// OP_NOT_F	14703	0	14704
// OP_LOAD_F	28	154	14705
// OP_NE_F	14705	263	14706
// OP_OR	14704	14706	14707
// OP_IFNOT	14707	3	0
// OP_CALL0	9169	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9171	0	0
// OP_STORE_V	825	4	0
// OP_CALL1	10215	0	0
// OP_ADDRESS	28	387	14708
// OP_ADD_F	31	1152	14709
// OP_STOREP_F	14709	14708	0
// OP_DONE	0	0	0
void () player_nail1 = [103, player_nail2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0 || (self.weapon != IT_SUPER_NAILGUN))
    {
        player_run();
        return;
    }
    
    SuperDamageSound();
    W_FireSpikes(4);
    self.attack_finished = time + 0.2;
};

// player_nail2
// function begins at statement 20389, parm_start=14710
// OP_STATE	14710	10420	0
// OP_ADDRESS	28	133	14711
// OP_LOAD_F	28	133	14712
// OP_BITOR	14712	348	14713
// OP_STOREP_F	14713	14711	0
// OP_LOAD_F	28	170	14714
// OP_NOT_F	14714	0	14715
// OP_LOAD_F	28	154	14716
// OP_NE_F	14716	263	14717
// OP_OR	14715	14717	14718
// OP_IFNOT	14718	3	0
// OP_CALL0	9169	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9171	0	0
// OP_STORE_V	9450	4	0
// OP_CALL1	10215	0	0
// OP_ADDRESS	28	387	14719
// OP_ADD_F	31	1152	14720
// OP_STOREP_F	14720	14719	0
// OP_DONE	0	0	0
void () player_nail2 = [104, player_nail1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0 || (self.weapon != IT_SUPER_NAILGUN))
    {
        player_run();
        return;
    }
    
    SuperDamageSound();
    W_FireSpikes(-4);
    self.attack_finished = time + 0.2;
};

// player_light1
// function begins at statement 20409, parm_start=14721
// OP_STATE	14721	14722	0
// OP_ADDRESS	28	133	14723
// OP_LOAD_F	28	133	14724
// OP_BITOR	14724	348	14725
// OP_STOREP_F	14725	14723	0
// OP_LOAD_F	28	170	14726
// OP_NOT_F	14726	0	14727
// OP_IFNOT	14727	3	0
// OP_CALL0	9169	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9171	0	0
// OP_CALL0	9643	0	0
// OP_ADDRESS	28	387	14728
// OP_ADD_F	31	1152	14729
// OP_STOREP_F	14729	14728	0
// OP_DONE	0	0	0
void () player_light1 = [105, player_light2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_light2
// function begins at statement 20425, parm_start=14730
// OP_STATE	14730	10421	0
// OP_ADDRESS	28	133	14731
// OP_LOAD_F	28	133	14732
// OP_BITOR	14732	348	14733
// OP_STOREP_F	14733	14731	0
// OP_LOAD_F	28	170	14734
// OP_NOT_F	14734	0	14735
// OP_IFNOT	14735	3	0
// OP_CALL0	9169	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9171	0	0
// OP_CALL0	9643	0	0
// OP_ADDRESS	28	387	14736
// OP_ADD_F	31	1152	14737
// OP_STOREP_F	14737	14736	0
// OP_DONE	0	0	0
void () player_light2 = [106, player_light1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_rocket1
// function begins at statement 20441, parm_start=14738
// OP_STATE	14738	14739	0
// OP_ADDRESS	28	133	14740
// OP_LOAD_F	28	133	14741
// OP_BITOR	14741	348	14742
// OP_STOREP_F	14742	14740	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, player_rocket2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_rocket2
// function begins at statement 20447, parm_start=14743
// OP_STATE	14743	14744	0
// OP_DONE	0	0	0
void () player_rocket2 = [108, player_rocket3]
{
};

// player_rocket3
// function begins at statement 20449, parm_start=14745
// OP_STATE	14745	14746	0
// OP_DONE	0	0	0
void () player_rocket3 = [109, player_rocket4]
{
};

// player_rocket4
// function begins at statement 20451, parm_start=14747
// OP_STATE	14747	14748	0
// OP_DONE	0	0	0
void () player_rocket4 = [110, player_rocket5]
{
};

// player_rocket5
// function begins at statement 20453, parm_start=14749
// OP_STATE	14749	14750	0
// OP_DONE	0	0	0
void () player_rocket5 = [111, player_rocket6]
{
};

// player_rocket6
// function begins at statement 20455, parm_start=14751
// OP_STATE	2646	9169	0
// OP_DONE	0	0	0
void () player_rocket6 = [112, player_run]
{
};

void (float num_bubbles) DeathBubbles;
// PainSound
// function begins at statement 20457, parm_start=14753
// OP_LOAD_F	28	152	14754
// OP_LT	14754	817	14755
// OP_IFNOT	14755	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	361	129	14756
// OP_EQ_S	14756	13360	14757
// OP_IFNOT	14757	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12077	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	14758
// OP_EQ_F	14758	292	14759
// OP_LOAD_F	28	189	14760
// OP_EQ_F	14760	823	14761
// OP_AND	14759	14761	14762
// OP_IFNOT	14762	24	0
// OP_STORE_V	819	4	0
// OP_CALL1	14751	0	0
// OP_CALL0	466	0	0
// OP_GT	1	1182	14763
// OP_IFNOT	14763	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12072	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12073	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	152	14764
// OP_LOAD_F	28	152	14765
// OP_SUB_F	14765	1112	14766
// OP_STOREP_F	14766	14764	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	14767
// OP_EQ_F	14767	293	14768
// OP_IFNOT	14768	22	0
// OP_CALL0	466	0	0
// OP_GT	1	1182	14769
// OP_IFNOT	14769	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	1814	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	1815	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	152	14770
// OP_LOAD_F	28	152	14771
// OP_SUB_F	14771	1632	14772
// OP_STOREP_F	14772	14770	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	14773
// OP_EQ_F	14773	294	14774
// OP_IFNOT	14774	18	0
// OP_CALL0	466	0	0
// OP_GT	1	1182	14775
// OP_IFNOT	14775	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	1814	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	1815	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	388	14776
// OP_GT	14776	31	14777
// OP_IFNOT	14777	4	0
// OP_ADDRESS	28	401	14778
// OP_STOREP_F	817	14778	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	388	14779
// OP_ADD_F	31	1182	14780
// OP_STOREP_F	14780	14779	0
// OP_LOAD_F	28	401	14781
// OP_EQ_F	14781	819	14782
// OP_IFNOT	14782	10	0
// OP_ADDRESS	28	401	14783
// OP_STOREP_F	817	14783	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12101	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	14784
// OP_ADD_F	14784	819	14785
// OP_STORE_V	14785	4	0
// OP_CALL1	494	0	0
// OP_STORE_F	1	14753	0
// OP_ADDRESS	28	208	14786
// OP_STOREP_S	4128	14786	0
// OP_EQ_F	14753	819	14787
// OP_IFNOT	14787	4	0
// OP_ADDRESS	28	208	14788
// OP_STOREP_S	12089	14788	0
// OP_GOTO	23	0	0
// OP_EQ_F	14753	821	14789
// OP_IFNOT	14789	4	0
// OP_ADDRESS	28	208	14790
// OP_STOREP_S	12090	14790	0
// OP_GOTO	18	0	0
// OP_EQ_F	14753	823	14791
// OP_IFNOT	14791	4	0
// OP_ADDRESS	28	208	14792
// OP_STOREP_S	12091	14792	0
// OP_GOTO	13	0	0
// OP_EQ_F	14753	825	14793
// OP_IFNOT	14793	4	0
// OP_ADDRESS	28	208	14794
// OP_STOREP_S	12092	14794	0
// OP_GOTO	8	0	0
// OP_EQ_F	14753	827	14795
// OP_IFNOT	14795	4	0
// OP_ADDRESS	28	208	14796
// OP_STOREP_S	12093	14796	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	14797
// OP_STOREP_S	12094	14797	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	14798
// OP_STORE_V	14798	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
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
        
        self.health = self.health - 20;
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
        
        self.health = self.health - 40;
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
// function begins at statement 20609, parm_start=14800
// OP_STATE	5499	14800	0
// OP_CALL0	14752	0	0
// OP_DONE	0	0	0
void () player_pain1 = [35, player_pain2]
{
    PainSound();
};

// player_pain2
// function begins at statement 20612, parm_start=14801
// OP_STATE	5405	14801	0
// OP_DONE	0	0	0
void () player_pain2 = [36, player_pain3]
{
};

// player_pain3
// function begins at statement 20614, parm_start=14802
// OP_STATE	5376	14802	0
// OP_DONE	0	0	0
void () player_pain3 = [37, player_pain4]
{
};

// player_pain4
// function begins at statement 20616, parm_start=14803
// OP_STATE	14803	14804	0
// OP_DONE	0	0	0
void () player_pain4 = [38, player_pain5]
{
};

// player_pain5
// function begins at statement 20618, parm_start=14805
// OP_STATE	14805	14806	0
// OP_DONE	0	0	0
void () player_pain5 = [39, player_pain6]
{
};

// player_pain6
// function begins at statement 20620, parm_start=14807
// OP_STATE	1632	9169	0
// OP_DONE	0	0	0
void () player_pain6 = [40, player_run]
{
};

// player_axpain1
// function begins at statement 20622, parm_start=14808
// OP_STATE	14808	14809	0
// OP_CALL0	14752	0	0
// OP_DONE	0	0	0
void () player_axpain1 = [29, player_axpain2]
{
    PainSound();
};

// player_axpain2
// function begins at statement 20625, parm_start=14810
// OP_STATE	2522	14810	0
// OP_DONE	0	0	0
void () player_axpain2 = [30, player_axpain3]
{
};

// player_axpain3
// function begins at statement 20627, parm_start=14811
// OP_STATE	10956	14811	0
// OP_DONE	0	0	0
void () player_axpain3 = [31, player_axpain4]
{
};

// player_axpain4
// function begins at statement 20629, parm_start=14812
// OP_STATE	2657	14812	0
// OP_DONE	0	0	0
void () player_axpain4 = [32, player_axpain5]
{
};

// player_axpain5
// function begins at statement 20631, parm_start=14813
// OP_STATE	14813	14814	0
// OP_DONE	0	0	0
void () player_axpain5 = [33, player_axpain6]
{
};

// player_axpain6
// function begins at statement 20633, parm_start=14815
// OP_STATE	14815	9169	0
// OP_DONE	0	0	0
void () player_axpain6 = [34, player_run]
{
};

// player_pain
// function begins at statement 20635, parm_start=14816
// OP_LOAD_F	28	390	14816
// OP_GT	14816	31	14817
// OP_IFNOT	14817	2	0
// OP_RETURN	0	0	0
// OP_CALL0	14799	0	0
// OP_DONE	0	0	0
void () player_pain = 
{
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    player_pain1();
};

void () player_diea1;
void () player_dieb1;
void () player_diec1;
void () player_died1;
void () player_diee1;
void () player_die_ax1;
// DeathBubblesSpawn
// function begins at statement 20641, parm_start=14825
// OP_LOAD_ENT	28	201	14826
// OP_LOAD_F	14826	189	14827
// OP_NE_F	14827	823	14828
// OP_IFNOT	14828	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	14825	0
// OP_STORE_V	14825	4	0
// OP_STORE_V	10803	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	14825	4	0
// OP_LOAD_ENT	28	201	14829
// OP_LOAD_V	14829	105	14830
// OP_ADD_V	14830	9137	14833
// OP_STORE_V	14833	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	14825	103	14836
// OP_STOREP_F	239	14836	0
// OP_ADDRESS	14825	104	14837
// OP_STOREP_F	243	14837	0
// OP_ADDRESS	14825	113	14838
// OP_STOREP_V	14841	14838	0
// OP_ADDRESS	14825	150	14844
// OP_ADD_F	31	1182	14845
// OP_STOREP_F	14845	14844	0
// OP_ADDRESS	14825	148	14846
// OP_STOREP_FNC	14628	14846	0
// OP_ADDRESS	14825	129	14847
// OP_STOREP_S	14848	14847	0
// OP_ADDRESS	14825	131	14849
// OP_STOREP_F	817	14849	0
// OP_ADDRESS	14825	435	14850
// OP_STOREP_F	817	14850	0
// OP_STORE_V	14825	4	0
// OP_STORE_V	7771	7	0
// OP_STORE_V	7774	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	150	14851
// OP_ADD_F	31	2869	14852
// OP_STOREP_F	14852	14851	0
// OP_ADDRESS	28	148	14853
// OP_STOREP_FNC	14824	14853	0
// OP_ADDRESS	28	405	14854
// OP_LOAD_F	28	405	14855
// OP_ADD_F	14855	819	14856
// OP_STOREP_F	14856	14854	0
// OP_LOAD_F	28	405	14857
// OP_LOAD_F	28	406	14858
// OP_GE	14857	14858	14859
// OP_IFNOT	14859	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
// function begins at statement 20694, parm_start=14860
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	14861	0
// OP_STORE_V	14861	4	0
// OP_LOAD_V	28	105	14862
// OP_STORE_V	14862	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	14861	103	14865
// OP_STOREP_F	233	14865	0
// OP_ADDRESS	14861	104	14866
// OP_STOREP_F	243	14866	0
// OP_ADDRESS	14861	150	14867
// OP_ADD_F	31	2869	14868
// OP_STOREP_F	14868	14867	0
// OP_ADDRESS	14861	148	14869
// OP_STOREP_FNC	14824	14869	0
// OP_ADDRESS	14861	405	14870
// OP_STOREP_F	817	14870	0
// OP_ADDRESS	14861	201	14871
// OP_STOREP_ENT	28	14871	0
// OP_ADDRESS	14861	406	14872
// OP_STOREP_F	14860	14872	0
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
// function begins at statement 20717, parm_start=14874
// OP_LOAD_F	28	189	14875
// OP_EQ_F	14875	823	14876
// OP_IFNOT	14876	10	0
// OP_STORE_V	1112	4	0
// OP_CALL1	14751	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12076	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	14877
// OP_ADD_F	14877	819	14878
// OP_STORE_V	14878	4	0
// OP_CALL1	494	0	0
// OP_STORE_F	1	14874	0
// OP_EQ_F	14874	819	14879
// OP_IFNOT	14879	3	0
// OP_ADDRESS	28	208	14880
// OP_STOREP_S	12095	14880	0
// OP_EQ_F	14874	821	14881
// OP_IFNOT	14881	3	0
// OP_ADDRESS	28	208	14882
// OP_STOREP_S	12096	14882	0
// OP_EQ_F	14874	823	14883
// OP_IFNOT	14883	3	0
// OP_ADDRESS	28	208	14884
// OP_STOREP_S	12097	14884	0
// OP_EQ_F	14874	825	14885
// OP_IFNOT	14885	3	0
// OP_ADDRESS	28	208	14886
// OP_STOREP_S	12098	14886	0
// OP_EQ_F	14874	827	14887
// OP_IFNOT	14887	3	0
// OP_ADDRESS	28	208	14888
// OP_STOREP_S	12099	14888	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	14889
// OP_STORE_V	14889	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
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
// function begins at statement 20764, parm_start=14891
// OP_ADDRESS	28	150	14891
// OP_STOREP_F	1228	14891	0
// OP_ADDRESS	28	165	14892
// OP_STOREP_F	254	14892	0
// OP_DONE	0	0	0
void () PlayerDead = 
{
    self.nextthink = -1;
    self.deadflag = DEAD_DEAD;
};

// VelocityForDamage
// function begins at statement 20769, parm_start=14893
// OP_CALL0	9187	0	0
// OP_MUL_F	1957	1	14897
// OP_STORE_F	14897	14894	0
// OP_CALL0	9187	0	0
// OP_MUL_F	1957	1	14898
// OP_STORE_F	14898	14895	0
// OP_CALL0	466	0	0
// OP_MUL_F	1957	1	14899
// OP_ADD_F	4760	14899	14900
// OP_STORE_F	14900	14896	0
// OP_GT	14893	13035	14901
// OP_IFNOT	14901	4	0
// OP_MUL_VF	14894	2619	14902
// OP_STORE_V	14902	14894	0
// OP_GOTO	8	0	0
// OP_GT	14893	14905	14906
// OP_IFNOT	14906	4	0
// OP_MUL_VF	14894	821	14907
// OP_STORE_V	14907	14894	0
// OP_GOTO	3	0	0
// OP_MUL_VF	14894	855	14910
// OP_STORE_V	14910	14894	0
// OP_RETURN	14894	0	0
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
// function begins at statement 20793, parm_start=14914
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	14916	0
// OP_ADDRESS	14916	105	14917
// OP_LOAD_V	28	105	14920
// OP_STOREP_V	14920	14917	0
// OP_STORE_V	14916	4	0
// OP_STORE_V	14914	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	14916	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	14916	113	14923
// OP_STORE_V	14915	4	0
// OP_CALL1	1495	0	0
// OP_STOREP_V	1	14923	0
// OP_ADDRESS	14916	103	14926
// OP_STOREP_F	241	14926	0
// OP_ADDRESS	14916	104	14927
// OP_STOREP_F	243	14927	0
// OP_ADDRESS	14916	122	14928
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	14929
// OP_STOREP_F	14929	14928	0
// OP_ADDRESS	14916	123	14930
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	14931
// OP_STOREP_F	14931	14930	0
// OP_ADDRESS	14916	124	14932
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	14933
// OP_STOREP_F	14933	14932	0
// OP_ADDRESS	14916	148	14934
// OP_STOREP_FNC	533	14934	0
// OP_ADDRESS	14916	102	14935
// OP_STOREP_F	31	14935	0
// OP_ADDRESS	14916	150	14936
// OP_ADD_F	31	855	14937
// OP_CALL0	466	0	0
// OP_MUL_F	1	855	14938
// OP_ADD_F	14937	14938	14939
// OP_STOREP_F	14939	14936	0
// OP_ADDRESS	14916	131	14940
// OP_STOREP_F	817	14940	0
// OP_ADDRESS	14916	182	14941
// OP_STOREP_F	817	14941	0
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

// HeadTouch
// function begins at statement 20840, parm_start=14943
// OP_LOAD_S	29	129	14943
// OP_NE_S	14943	880	14944
// OP_LOAD_F	29	152	14945
// OP_LE	14945	817	14946
// OP_OR	14944	14946	14947
// OP_IFNOT	14947	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	12115	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	12088	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	105	14948
// OP_STORE_V	14948	4	0
// OP_LOAD_V	29	113	14951
// OP_MUL_VF	14951	821	14954
// OP_STORE_V	14954	7	0
// OP_STORE_V	1957	10	0
// OP_CALL3	9170	0	0
// OP_GT	738	819	14957
// OP_IFNOT	14957	3	0
// OP_CALL0	9067	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () HeadTouch = 
{
    
    if((other.classname != "player") || (other.health <= 0))
    {
        return;
    }
    
    sound(other, CHAN_AUTO, "rally/crash4.wav", 1, ATTN_NORM);
    sound(other, CHAN_AUTO, "player/tornoff2.wav", 1, ATTN_NORM);
    SpawnBlood(self.origin, other.velocity * 2, 100);
    if(rally_type_index > 1)
    {
        BackpackTouch();
    }
    else
    {
        remove(self);
    }
    
};

// ThrowHead
// function begins at statement 20873, parm_start=14959
// OP_STORE_V	28	4	0
// OP_STORE_V	12129	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	131	14962
// OP_STOREP_F	817	14962	0
// OP_ADDRESS	28	150	14963
// OP_STOREP_F	1228	14963	0
// OP_ADDRESS	28	103	14964
// OP_STOREP_F	241	14964	0
// OP_ADDRESS	28	163	14965
// OP_STOREP_F	257	14965	0
// OP_ADDRESS	28	152	14966
// OP_STOREP_F	817	14966	0
// OP_ADDRESS	28	104	14967
// OP_STOREP_F	243	14967	0
// OP_ADDRESS	28	166	14968
// OP_STOREP_V	1666	14968	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	108	14971
// OP_LOAD_F	28	108	14972
// OP_SUB_F	14972	13015	14973
// OP_STOREP_F	14973	14971	0
// OP_ADDRESS	28	182	14974
// OP_LOAD_F	28	182	14975
// OP_LOAD_F	28	182	14976
// OP_BITAND	14976	228	14977
// OP_SUB_F	14975	14977	14978
// OP_STOREP_F	14978	14974	0
// OP_ADDRESS	28	121	14979
// OP_CALL0	9187	0	0
// OP_MUL_FV	1	14982	14985
// OP_STOREP_V	14985	14979	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	14961	0
// OP_ADDRESS	14961	105	14988
// OP_LOAD_V	28	105	14991
// OP_STOREP_V	14991	14988	0
// OP_ADDRESS	14961	129	14994
// OP_STOREP_S	14995	14994	0
// OP_ADDRESS	14961	104	14996
// OP_STOREP_F	244	14996	0
// OP_ADDRESS	14961	103	14997
// OP_STOREP_F	241	14997	0
// OP_STORE_V	14961	4	0
// OP_STORE_V	12128	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	14961	108	14998
// OP_LOAD_F	28	108	14999
// OP_SUB_F	14999	13015	15000
// OP_STOREP_F	15000	14998	0
// OP_STORE_V	14961	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	14961	113	15001
// OP_LOAD_F	28	152	15004
// OP_STORE_V	15004	4	0
// OP_CALL1	1495	0	0
// OP_STOREP_V	1	15001	0
// OP_ADDRESS	28	113	15005
// OP_LOAD_V	14961	113	15008
// OP_STOREP_V	15008	15005	0
// OP_ADDRESS	14961	121	15011
// OP_CALL0	9187	0	0
// OP_MUL_FV	1	14982	15014
// OP_STOREP_V	15014	15011	0
// OP_ADDRESS	14961	163	15017
// OP_STOREP_F	256	15017	0
// OP_ADDRESS	14961	131	15018
// OP_STOREP_F	817	15018	0
// OP_ADDRESS	14961	148	15019
// OP_STOREP_FNC	533	15019	0
// OP_ADDRESS	14961	150	15020
// OP_ADD_F	31	1112	15021
// OP_STOREP_F	15021	15020	0
// OP_ADDRESS	14961	201	15022
// OP_STOREP_ENT	28	15022	0
// OP_ADDRESS	14961	182	15023
// OP_STOREP_F	227	15023	0
// OP_ADDRESS	14961	146	15024
// OP_STOREP_FNC	14942	15024	0
// OP_LOAD_S	28	129	15025
// OP_EQ_S	15025	3609	15026
// OP_IFNOT	15026	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_GT	738	819	15027
// OP_IFNOT	15027	21	0
// OP_ADDRESS	14961	162	15028
// OP_LOAD_F	28	154	15029
// OP_STOREP_F	15029	15028	0
// OP_ADDRESS	14961	158	15030
// OP_LOAD_F	28	158	15031
// OP_STOREP_F	15031	15030	0
// OP_ADDRESS	14961	159	15032
// OP_LOAD_F	28	159	15033
// OP_STOREP_F	15033	15032	0
// OP_ADDRESS	14961	160	15034
// OP_LOAD_F	28	160	15035
// OP_STOREP_F	15035	15034	0
// OP_ADDRESS	14961	161	15036
// OP_LOAD_F	28	161	15037
// OP_STOREP_F	15037	15036	0
// OP_LOAD_F	14961	160	15038
// OP_GT	15038	845	15039
// OP_IFNOT	15039	3	0
// OP_ADDRESS	14961	160	15040
// OP_STOREP_F	845	15040	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead = 
{
    local entity h;
    setmodel(self, "progs/gib1.mdl");
    self.frame = 0;
    self.nextthink = -1;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_YES;
    self.health = 0;
    self.solid = SOLID_NOT;
    self.view_ofs = '0.000 0.000 8.000';
    setsize(self, '0.000 0.000 0.000', '0.000 0.000 0.000');
    self.origin_z = self.origin_z - 24;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0.000 600.000 0.000';
    h = spawn();
    h.origin = self.origin;
    h.classname = "item_head";
    h.solid = SOLID_TRIGGER;
    h.movetype = MOVETYPE_BOUNCE;
    setmodel(h, "progs/h_player.mdl");
    h.origin_z = self.origin_z - 24;
    setsize(h, '0.000 0.000 0.000', '0.000 0.000 0.000');
    h.velocity = VelocityForDamage(self.health);
    self.velocity = h.velocity;
    h.avelocity = crandom() * '0.000 600.000 0.000';
    h.takedamage = DAMAGE_NO;
    h.frame = 0;
    h.think = SUB_Remove;
    h.nextthink = time + 20;
    h.owner = self;
    h.flags = FL_ITEM;
    h.touch = HeadTouch;
    
    if(self.classname == "rally_dude")
    {
        remove(self);
    }
    
    
    if(rally_type_index > 1)
    {
        h.items = self.weapon;
        h.ammo_shells = self.ammo_shells;
        h.ammo_nails = self.ammo_nails;
        h.ammo_rockets = self.ammo_rockets;
        h.ammo_cells = self.ammo_cells;
        
        if(h.ammo_rockets > 15)
        {
            h.ammo_rockets = 15;
        }
        
    }
    
};

// GibPlayer
// function begins at statement 20985, parm_start=15042
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NE_F	1	855	15042
// OP_IFNOT	15042	13	0
// OP_STORE_V	12129	4	0
// OP_LOAD_F	28	152	15043
// OP_STORE_V	15043	7	0
// OP_CALL2	14913	0	0
// OP_STORE_V	12130	4	0
// OP_LOAD_F	28	152	15044
// OP_STORE_V	15044	7	0
// OP_CALL2	14913	0	0
// OP_STORE_V	12131	4	0
// OP_LOAD_F	28	152	15045
// OP_STORE_V	15045	7	0
// OP_CALL2	14913	0	0
// OP_STORE_V	12128	4	0
// OP_LOAD_F	28	152	15046
// OP_STORE_V	15046	7	0
// OP_CALL2	14958	0	0
// OP_ADDRESS	28	165	15047
// OP_STOREP_F	254	15047	0
// OP_LOAD_S	361	129	15048
// OP_EQ_S	15048	13360	15049
// OP_IFNOT	15049	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12077	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	361	129	15050
// OP_EQ_S	15050	13372	15051
// OP_IFNOT	15051	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12077	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	15052
// OP_IFNOT	15052	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12086	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12087	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () GibPlayer = 
{
    
    if(cvar("deathmatch") != 10)
    {
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
    }
    
    ThrowHead("progs/h_player.mdl", self.health);
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
// function begins at statement 21044, parm_start=15053
// OP_LOAD_F	28	165	15054
// OP_IFNOT	15054	2	0
// OP_RETURN	0	0	0
// OP_EQ_F	738	825	15055
// OP_AND	689	15055	15056
// OP_IFNOT	15056	6	0
// OP_ADDRESS	28	682	15057
// OP_LOAD_F	28	682	15058
// OP_SUB_F	15058	819	15059
// OP_STOREP_F	15059	15057	0
// OP_CALL0	1497	0	0
// OP_LOAD_ENT	28	673	15060
// OP_NE_E	15060	30	15061
// OP_IFNOT	15061	6	0
// OP_LOAD_ENT	28	673	15062
// OP_STORE_V	15062	4	0
// OP_CALL1	474	0	0
// OP_ADDRESS	28	673	15063
// OP_STOREP_ENT	30	15063	0
// OP_LOAD_ENT	28	674	15064
// OP_ADDRESS	15064	148	15065
// OP_STOREP_FNC	1624	15065	0
// OP_LOAD_ENT	28	674	15066
// OP_ADDRESS	15066	150	15067
// OP_ADD_F	31	2869	15068
// OP_STOREP_F	15068	15067	0
// OP_LOAD_ENT	28	674	15069
// OP_ADDRESS	15069	647	15070
// OP_STOREP_F	31	15070	0
// OP_LOAD_ENT	28	674	15071
// OP_ADDRESS	15071	548	15072
// OP_LOAD_ENT	28	548	15073
// OP_STOREP_ENT	15073	15072	0
// OP_LOAD_ENT	28	674	15074
// OP_ADDRESS	15074	378	15075
// OP_STOREP_F	817	15075	0
// OP_ADDRESS	28	162	15076
// OP_LOAD_F	28	162	15077
// OP_LOAD_F	28	162	15078
// OP_BITAND	15078	286	15079
// OP_SUB_F	15077	15079	15080
// OP_STOREP_F	15080	15076	0
// OP_ADDRESS	28	390	15081
// OP_STOREP_F	817	15081	0
// OP_ADDRESS	28	389	15082
// OP_STOREP_F	817	15082	0
// OP_ADDRESS	28	391	15083
// OP_STOREP_F	817	15083	0
// OP_ADDRESS	28	392	15084
// OP_STOREP_F	817	15084	0
// OP_ADDRESS	28	652	15085
// OP_STOREP_F	817	15085	0
// OP_ADDRESS	28	653	15086
// OP_STOREP_F	817	15086	0
// OP_ADDRESS	28	166	15087
// OP_STOREP_V	15090	15087	0
// OP_ADDRESS	28	165	15093
// OP_STOREP_F	253	15093	0
// OP_ADDRESS	28	104	15094
// OP_STOREP_F	243	15094	0
// OP_ADDRESS	28	182	15095
// OP_LOAD_F	28	182	15096
// OP_LOAD_F	28	182	15097
// OP_BITAND	15097	228	15098
// OP_SUB_F	15096	15098	15099
// OP_STOREP_F	15099	15095	0
// OP_ADDRESS	28	103	15100
// OP_STOREP_F	233	15100	0
// OP_LOAD_F	28	116	15101
// OP_LT	15101	855	15102
// OP_IFNOT	15102	7	0
// OP_ADDRESS	28	116	15103
// OP_LOAD_F	28	116	15104
// OP_CALL0	466	0	0
// OP_MUL_F	1	2299	15105
// OP_ADD_F	15104	15105	15106
// OP_STOREP_F	15106	15103	0
// OP_LOAD_F	28	152	15107
// OP_LT	15107	4504	15108
// OP_GT	738	819	15109
// OP_OR	15108	15109	15110
// OP_IFNOT	15110	3	0
// OP_CALL0	15041	0	0
// OP_RETURN	0	0	0
// OP_CALL0	14873	0	0
// OP_ADDRESS	28	118	15111
// OP_STOREP_F	817	15111	0
// OP_ADDRESS	28	120	15112
// OP_STOREP_F	817	15112	0
// OP_CALL0	14823	0	0
// OP_RETURN	0	0	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () PlayerDie = 
{
    local float i;
    
    if(self.deadflag)
    {
        return;
    }
    
    
    if(challenge && (rally_type_index == 4))
    {
        self.cult_cars = self.cult_cars - 1;
        CheckCultCars();
    }
    
    
    if(self.mine_attached != world)
    {
        remove(self.mine_attached);
        self.mine_attached = world;
    }
    
    self.death_thinker.think = DeathThink;
    self.death_thinker.nextthink = time + 0.1;
    self.death_thinker.last_idle = time;
    self.death_thinker.veh_body = self.veh_body;
    self.death_thinker.speed = 0;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.last_engine1 = 0;
    self.last_engine2 = 0;
    self.view_ofs = '0.000 0.000 -8.000';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_NONE;
    
    if(self.velocity_z < 10)
    {
        self.velocity_z = self.velocity_z + (random() * 300);
    }
    
    
    if((self.health < -40) || (rally_type_index > 1))
    {
        GibPlayer();
        return;
    }
    
    DeathSound();
    self.angles_x = 0;
    self.angles_z = 0;
    player_die_ax1();
    return;
    PlayerDead();
};

// set_suicide_frame
// function begins at statement 21137, parm_start=15113
// OP_ADDRESS	28	104	15113
// OP_STOREP_F	243	15113	0
// OP_ADDRESS	28	103	15114
// OP_STOREP_F	237	15114	0
// OP_ADDRESS	28	165	15115
// OP_STOREP_F	254	15115	0
// OP_ADDRESS	28	150	15116
// OP_STOREP_F	1228	15116	0
// OP_DONE	0	0	0
void () set_suicide_frame = 
{
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_TOSS;
    self.deadflag = DEAD_DEAD;
    self.nextthink = -1;
};

// player_diea1
// function begins at statement 21146, parm_start=15117
// OP_STATE	2611	15117	0
// OP_DONE	0	0	0
void () player_diea1 = [50, player_diea2]
{
};

// player_diea2
// function begins at statement 21148, parm_start=15118
// OP_STATE	15118	15119	0
// OP_DONE	0	0	0
void () player_diea2 = [51, player_diea3]
{
};

// player_diea3
// function begins at statement 21150, parm_start=15120
// OP_STATE	15120	15121	0
// OP_DONE	0	0	0
void () player_diea3 = [52, player_diea4]
{
};

// player_diea4
// function begins at statement 21152, parm_start=15122
// OP_STATE	2779	15122	0
// OP_DONE	0	0	0
void () player_diea4 = [53, player_diea5]
{
};

// player_diea5
// function begins at statement 21154, parm_start=15123
// OP_STATE	15123	15124	0
// OP_DONE	0	0	0
void () player_diea5 = [54, player_diea6]
{
};

// player_diea6
// function begins at statement 21156, parm_start=15125
// OP_STATE	11012	15125	0
// OP_DONE	0	0	0
void () player_diea6 = [55, player_diea7]
{
};

// player_diea7
// function begins at statement 21158, parm_start=15126
// OP_STATE	11018	15126	0
// OP_DONE	0	0	0
void () player_diea7 = [56, player_diea8]
{
};

// player_diea8
// function begins at statement 21160, parm_start=15127
// OP_STATE	15127	15128	0
// OP_DONE	0	0	0
void () player_diea8 = [57, player_diea9]
{
};

// player_diea9
// function begins at statement 21162, parm_start=15129
// OP_STATE	15129	15130	0
// OP_DONE	0	0	0
void () player_diea9 = [58, player_diea10]
{
};

// player_diea10
// function begins at statement 21164, parm_start=15131
// OP_STATE	15131	15132	0
// OP_DONE	0	0	0
void () player_diea10 = [59, player_diea11]
{
};

// player_diea11
// function begins at statement 21166, parm_start=15133
// OP_STATE	2228	15132	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_diea11 = [60, player_diea11]
{
    PlayerDead();
};

// player_dieb1
// function begins at statement 21169, parm_start=15133
// OP_STATE	15133	15134	0
// OP_DONE	0	0	0
void () player_dieb1 = [61, player_dieb2]
{
};

// player_dieb2
// function begins at statement 21171, parm_start=15135
// OP_STATE	15135	15136	0
// OP_DONE	0	0	0
void () player_dieb2 = [62, player_dieb3]
{
};

// player_dieb3
// function begins at statement 21173, parm_start=15137
// OP_STATE	12183	15137	0
// OP_DONE	0	0	0
void () player_dieb3 = [63, player_dieb4]
{
};

// player_dieb4
// function begins at statement 21175, parm_start=15138
// OP_STATE	2223	15138	0
// OP_DONE	0	0	0
void () player_dieb4 = [64, player_dieb5]
{
};

// player_dieb5
// function begins at statement 21177, parm_start=15139
// OP_STATE	15139	15140	0
// OP_DONE	0	0	0
void () player_dieb5 = [65, player_dieb6]
{
};

// player_dieb6
// function begins at statement 21179, parm_start=15141
// OP_STATE	15141	15142	0
// OP_DONE	0	0	0
void () player_dieb6 = [66, player_dieb7]
{
};

// player_dieb7
// function begins at statement 21181, parm_start=15143
// OP_STATE	15143	15144	0
// OP_DONE	0	0	0
void () player_dieb7 = [67, player_dieb8]
{
};

// player_dieb8
// function begins at statement 21183, parm_start=15145
// OP_STATE	15145	15146	0
// OP_DONE	0	0	0
void () player_dieb8 = [68, player_dieb9]
{
};

// player_dieb9
// function begins at statement 21185, parm_start=15147
// OP_STATE	15147	15146	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_dieb9 = [69, player_dieb9]
{
    PlayerDead();
};

// player_diec1
// function begins at statement 21188, parm_start=15148
// OP_STATE	15148	15149	0
// OP_DONE	0	0	0
void () player_diec1 = [70, player_diec2]
{
};

// player_diec2
// function begins at statement 21190, parm_start=15150
// OP_STATE	15150	15151	0
// OP_DONE	0	0	0
void () player_diec2 = [71, player_diec3]
{
};

// player_diec3
// function begins at statement 21192, parm_start=15152
// OP_STATE	15152	15153	0
// OP_DONE	0	0	0
void () player_diec3 = [72, player_diec4]
{
};

// player_diec4
// function begins at statement 21194, parm_start=15154
// OP_STATE	9292	15154	0
// OP_DONE	0	0	0
void () player_diec4 = [73, player_diec5]
{
};

// player_diec5
// function begins at statement 21196, parm_start=15155
// OP_STATE	15155	15156	0
// OP_DONE	0	0	0
void () player_diec5 = [74, player_diec6]
{
};

// player_diec6
// function begins at statement 21198, parm_start=15157
// OP_STATE	15157	15158	0
// OP_DONE	0	0	0
void () player_diec6 = [75, player_diec7]
{
};

// player_diec7
// function begins at statement 21200, parm_start=15159
// OP_STATE	15159	15160	0
// OP_DONE	0	0	0
void () player_diec7 = [76, player_diec8]
{
};

// player_diec8
// function begins at statement 21202, parm_start=15161
// OP_STATE	15161	15162	0
// OP_DONE	0	0	0
void () player_diec8 = [77, player_diec9]
{
};

// player_diec9
// function begins at statement 21204, parm_start=15163
// OP_STATE	15163	15164	0
// OP_DONE	0	0	0
void () player_diec9 = [78, player_diec10]
{
};

// player_diec10
// function begins at statement 21206, parm_start=15165
// OP_STATE	15165	15166	0
// OP_DONE	0	0	0
void () player_diec10 = [79, player_diec11]
{
};

// player_diec11
// function begins at statement 21208, parm_start=15167
// OP_STATE	2677	15167	0
// OP_DONE	0	0	0
void () player_diec11 = [80, player_diec12]
{
};

// player_diec12
// function begins at statement 21210, parm_start=15168
// OP_STATE	11033	15168	0
// OP_DONE	0	0	0
void () player_diec12 = [81, player_diec13]
{
};

// player_diec13
// function begins at statement 21212, parm_start=15169
// OP_STATE	15169	15170	0
// OP_DONE	0	0	0
void () player_diec13 = [82, player_diec14]
{
};

// player_diec14
// function begins at statement 21214, parm_start=15171
// OP_STATE	15171	15172	0
// OP_DONE	0	0	0
void () player_diec14 = [83, player_diec15]
{
};

// player_diec15
// function begins at statement 21216, parm_start=15173
// OP_STATE	15173	15172	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_diec15 = [84, player_diec15]
{
    PlayerDead();
};

// player_died1
// function begins at statement 21219, parm_start=15174
// OP_STATE	11037	15174	0
// OP_DONE	0	0	0
void () player_died1 = [85, player_died2]
{
};

// player_died2
// function begins at statement 21221, parm_start=15175
// OP_STATE	11043	15175	0
// OP_DONE	0	0	0
void () player_died2 = [86, player_died3]
{
};

// player_died3
// function begins at statement 21223, parm_start=15176
// OP_STATE	15176	15177	0
// OP_DONE	0	0	0
void () player_died3 = [87, player_died4]
{
};

// player_died4
// function begins at statement 21225, parm_start=15178
// OP_STATE	15178	15179	0
// OP_DONE	0	0	0
void () player_died4 = [88, player_died5]
{
};

// player_died5
// function begins at statement 21227, parm_start=15180
// OP_STATE	15180	15181	0
// OP_DONE	0	0	0
void () player_died5 = [89, player_died6]
{
};

// player_died6
// function begins at statement 21229, parm_start=15182
// OP_STATE	7023	15182	0
// OP_DONE	0	0	0
void () player_died6 = [90, player_died7]
{
};

// player_died7
// function begins at statement 21231, parm_start=15183
// OP_STATE	11051	15183	0
// OP_DONE	0	0	0
void () player_died7 = [91, player_died8]
{
};

// player_died8
// function begins at statement 21233, parm_start=15184
// OP_STATE	11055	15184	0
// OP_DONE	0	0	0
void () player_died8 = [92, player_died9]
{
};

// player_died9
// function begins at statement 21235, parm_start=15185
// OP_STATE	11060	15184	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_died9 = [93, player_died9]
{
    PlayerDead();
};

// player_diee1
// function begins at statement 21238, parm_start=15185
// OP_STATE	15185	15186	0
// OP_DONE	0	0	0
void () player_diee1 = [94, player_diee2]
{
};

// player_diee2
// function begins at statement 21240, parm_start=15187
// OP_STATE	15187	15188	0
// OP_DONE	0	0	0
void () player_diee2 = [95, player_diee3]
{
};

// player_diee3
// function begins at statement 21242, parm_start=15189
// OP_STATE	15189	15190	0
// OP_DONE	0	0	0
void () player_diee3 = [96, player_diee4]
{
};

// player_diee4
// function begins at statement 21244, parm_start=15191
// OP_STATE	15191	15192	0
// OP_DONE	0	0	0
void () player_diee4 = [97, player_diee5]
{
};

// player_diee5
// function begins at statement 21246, parm_start=15193
// OP_STATE	15193	15194	0
// OP_DONE	0	0	0
void () player_diee5 = [98, player_diee6]
{
};

// player_diee6
// function begins at statement 21248, parm_start=15195
// OP_STATE	15195	15196	0
// OP_DONE	0	0	0
void () player_diee6 = [99, player_diee7]
{
};

// player_diee7
// function begins at statement 21250, parm_start=15197
// OP_STATE	1957	15197	0
// OP_DONE	0	0	0
void () player_diee7 = [100, player_diee8]
{
};

// player_diee8
// function begins at statement 21252, parm_start=15198
// OP_STATE	11067	15198	0
// OP_DONE	0	0	0
void () player_diee8 = [101, player_diee9]
{
};

// player_diee9
// function begins at statement 21254, parm_start=15199
// OP_STATE	15199	15198	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_diee9 = [102, player_diee9]
{
    PlayerDead();
};

// player_die_ax1
// function begins at statement 21257, parm_start=15200
// OP_STATE	10987	15200	0
// OP_DONE	0	0	0
void () player_die_ax1 = [41, player_die_ax2]
{
};

// player_die_ax2
// function begins at statement 21259, parm_start=15201
// OP_STATE	10994	15201	0
// OP_DONE	0	0	0
void () player_die_ax2 = [42, player_die_ax3]
{
};

// player_die_ax3
// function begins at statement 21261, parm_start=15202
// OP_STATE	11000	15202	0
// OP_DONE	0	0	0
void () player_die_ax3 = [43, player_die_ax4]
{
};

// player_die_ax4
// function begins at statement 21263, parm_start=15203
// OP_STATE	15203	15204	0
// OP_DONE	0	0	0
void () player_die_ax4 = [44, player_die_ax5]
{
};

// player_die_ax5
// function begins at statement 21265, parm_start=15205
// OP_STATE	2558	15205	0
// OP_DONE	0	0	0
void () player_die_ax5 = [45, player_die_ax6]
{
};

// player_die_ax6
// function begins at statement 21267, parm_start=15206
// OP_STATE	15206	15207	0
// OP_DONE	0	0	0
void () player_die_ax6 = [46, player_die_ax7]
{
};

// player_die_ax7
// function begins at statement 21269, parm_start=15208
// OP_STATE	15208	15209	0
// OP_DONE	0	0	0
void () player_die_ax7 = [47, player_die_ax8]
{
};

// player_die_ax8
// function begins at statement 21271, parm_start=15210
// OP_STATE	3330	15210	0
// OP_DONE	0	0	0
void () player_die_ax8 = [48, player_die_ax9]
{
};

// player_die_ax9
// function begins at statement 21273, parm_start=15211
// OP_STATE	15211	15210	0
// OP_CALL0	14890	0	0
// OP_DONE	0	0	0
void () player_die_ax9 = [49, player_die_ax9]
{
    PlayerDead();
};

