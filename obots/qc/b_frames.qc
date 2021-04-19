
// bot_stand
// function begins at statement 44495, parm_start=25616
// OP_STATE	791	1166	0
// OP_ADDRESS	28	156	25616
// OP_STOREP_F	213	25616	0
// OP_LOAD_F	28	114	25617
// OP_LOAD_F	28	115	25618
// OP_OR	25617	25618	25619
// OP_IFNOT	25619	5	0
// OP_ADDRESS	28	377	25620
// OP_STOREP_F	213	25620	0
// OP_CALL0	1167	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	25621
// OP_EQ_F	25621	253	25622
// OP_IFNOT	25622	11	0
// OP_LOAD_F	28	377	25623
// OP_GE	25623	791	25624
// OP_IFNOT	25624	3	0
// OP_ADDRESS	28	377	25625
// OP_STOREP_F	213	25625	0
// OP_ADDRESS	28	131	25626
// OP_LOAD_F	28	377	25627
// OP_ADD_F	6892	25627	25628
// OP_STOREP_F	25628	25626	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	377	25629
// OP_GE	25629	230	25630
// OP_IFNOT	25630	3	0
// OP_ADDRESS	28	377	25631
// OP_STOREP_F	213	25631	0
// OP_ADDRESS	28	131	25632
// OP_LOAD_F	28	377	25633
// OP_ADD_F	791	25633	25634
// OP_STOREP_F	25634	25632	0
// OP_ADDRESS	28	377	25635
// OP_LOAD_F	28	377	25636
// OP_ADD_F	25636	214	25637
// OP_STOREP_F	25637	25635	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_stand = [12, bot_stand]
{
    self.weaponframe = FALSE;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = FALSE;
        bot_run();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= BOTSHIRTPANTS_12)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = 17 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe >= MOVETYPE_FLY)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = BOTSHIRTPANTS_12 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    BotThink(CONTENT_EMPTY);
};


// bot_run
// function begins at statement 44535, parm_start=25638
// OP_STATE	231	1167	0
// OP_ADDRESS	28	156	25638
// OP_STOREP_F	213	25638	0
// OP_LOAD_F	28	114	25639
// OP_NOT_F	25639	0	25640
// OP_LOAD_F	28	115	25641
// OP_NOT_F	25641	0	25642
// OP_AND	25640	25642	25643
// OP_IFNOT	25643	5	0
// OP_ADDRESS	28	377	25644
// OP_STOREP_F	213	25644	0
// OP_CALL0	1166	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	25645
// OP_EQ_F	25645	253	25646
// OP_IFNOT	25646	11	0
// OP_LOAD_F	28	377	25647
// OP_EQ_F	25647	231	25648
// OP_IFNOT	25648	3	0
// OP_ADDRESS	28	377	25649
// OP_STOREP_F	213	25649	0
// OP_ADDRESS	28	131	25650
// OP_LOAD_F	28	377	25651
// OP_ADD_F	213	25651	25652
// OP_STOREP_F	25652	25650	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	377	25653
// OP_EQ_F	25653	231	25654
// OP_IFNOT	25654	3	0
// OP_ADDRESS	28	377	25655
// OP_STOREP_F	213	25655	0
// OP_ADDRESS	28	131	25656
// OP_LOAD_F	28	131	25657
// OP_LOAD_F	28	377	25658
// OP_ADD_F	25657	25658	25659
// OP_STOREP_F	25659	25656	0
// OP_ADDRESS	28	377	25660
// OP_LOAD_F	28	377	25661
// OP_ADD_F	25661	214	25662
// OP_STOREP_F	25662	25660	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_run = [6, bot_run]
{
    self.weaponframe = FALSE;
    
    if(!self.velocity_x && !self.velocity_y)
    {
        self.walkframe = FALSE;
        bot_stand();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = FALSE + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    BotThink(CONTENT_EMPTY);
};


// bot_shot1
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
void () bot_shot1 = [113, bot_shot2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    BotThink(0.9);
};


// bot_shot2
// function begins at statement 44588, parm_start=25668
// OP_STATE	9479	25668	0
// OP_ADDRESS	28	156	25669
// OP_STOREP_F	216	25669	0
// OP_STORE_V	3263	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_shot2 = [114, bot_shot3]
{
    self.weaponframe = FL_SWIM;
    BotThink(0.9);
};


// bot_shot3
// function begins at statement 44594, parm_start=25670
// OP_STATE	9482	25670	0
// OP_ADDRESS	28	156	25671
// OP_STOREP_F	228	25671	0
// OP_STORE_V	213	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_shot3 = [115, bot_shot4]
{
    self.weaponframe = MOVETYPE_WALK;
    BotThink(FALSE);
};


// bot_shot4
// function begins at statement 44600, parm_start=25672
// OP_STATE	9485	25672	0
// OP_ADDRESS	28	156	25673
// OP_STOREP_F	229	25673	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_shot4 = [116, bot_shot5]
{
    self.weaponframe = MOVETYPE_STEP;
    BotThink(CONTENT_EMPTY);
};


// bot_shot5
// function begins at statement 44606, parm_start=25674
// OP_STATE	9488	25674	0
// OP_ADDRESS	28	156	25675
// OP_STOREP_F	230	25675	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_shot5 = [117, bot_shot6]
{
    self.weaponframe = MOVETYPE_FLY;
    BotThink(CONTENT_EMPTY);
};


// bot_shot6
// function begins at statement 44612, parm_start=25676
// OP_STATE	9491	1167	0
// OP_ADDRESS	28	156	25676
// OP_STOREP_F	231	25676	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_shot6 = [118, bot_run]
{
    self.weaponframe = MOVETYPE_TOSS;
    BotThink(CONTENT_EMPTY);
};


// bot_axe1
// function begins at statement 44618, parm_start=25677
// OP_STATE	9493	25677	0
// OP_ADDRESS	28	156	25678
// OP_STOREP_F	214	25678	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axe1 = [119, bot_axe2]
{
    self.weaponframe = TRUE;
    BotThink(CONTENT_EMPTY);
};


// bot_axe2
// function begins at statement 44624, parm_start=25679
// OP_STATE	3584	25679	0
// OP_ADDRESS	28	156	25680
// OP_STOREP_F	216	25680	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axe2 = [120, bot_axe3]
{
    self.weaponframe = FL_SWIM;
    BotThink(CONTENT_EMPTY);
};


// bot_axe3
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
void () bot_axe3 = [121, bot_axe4]
{
    self.weaponframe = MOVETYPE_WALK;
    makevectors(self.v_angle);
    W_FireAxe();
    BotThink(CONTENT_EMPTY);
};


// bot_axe4
// function begins at statement 44640, parm_start=25686
// OP_STATE	9501	1167	0
// OP_ADDRESS	28	156	25686
// OP_STOREP_F	229	25686	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axe4 = [122, bot_run]
{
    self.weaponframe = MOVETYPE_STEP;
    BotThink(CONTENT_EMPTY);
};


// bot_axeb1
// function begins at statement 44646, parm_start=25687
// OP_STATE	9503	25687	0
// OP_ADDRESS	28	156	25688
// OP_STOREP_F	230	25688	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axeb1 = [125, bot_axeb2]
{
    self.weaponframe = MOVETYPE_FLY;
    BotThink(CONTENT_EMPTY);
};


// bot_axeb2
// function begins at statement 44652, parm_start=25689
// OP_STATE	9506	25689	0
// OP_ADDRESS	28	156	25690
// OP_STOREP_F	231	25690	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axeb2 = [126, bot_axeb3]
{
    self.weaponframe = MOVETYPE_TOSS;
    BotThink(CONTENT_EMPTY);
};


// bot_axeb3
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
void () bot_axeb3 = [127, bot_axeb4]
{
    self.weaponframe = MOVETYPE_PUSH;
    makevectors(self.v_angle);
    W_FireAxe();
    BotThink(CONTENT_EMPTY);
};


// bot_axeb4
// function begins at statement 44668, parm_start=25696
// OP_STATE	221	1167	0
// OP_ADDRESS	28	156	25696
// OP_STOREP_F	217	25696	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axeb4 = [128, bot_run]
{
    self.weaponframe = FL_CLIENT;
    BotThink(CONTENT_EMPTY);
};


// bot_axec1
// function begins at statement 44674, parm_start=25697
// OP_STATE	9513	25697	0
// OP_ADDRESS	28	156	25698
// OP_STOREP_F	214	25698	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axec1 = [131, bot_axec2]
{
    self.weaponframe = TRUE;
    BotThink(CONTENT_EMPTY);
};


// bot_axec2
// function begins at statement 44680, parm_start=25699
// OP_STATE	9516	25699	0
// OP_ADDRESS	28	156	25700
// OP_STOREP_F	216	25700	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axec2 = [132, bot_axec3]
{
    self.weaponframe = FL_SWIM;
    BotThink(CONTENT_EMPTY);
};


// bot_axec3
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
void () bot_axec3 = [133, bot_axec4]
{
    self.weaponframe = MOVETYPE_WALK;
    makevectors(self.v_angle);
    W_FireAxe();
    BotThink(CONTENT_EMPTY);
};


// bot_axec4
// function begins at statement 44696, parm_start=25706
// OP_STATE	9522	1167	0
// OP_ADDRESS	28	156	25706
// OP_STOREP_F	229	25706	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axec4 = [134, bot_run]
{
    self.weaponframe = MOVETYPE_STEP;
    BotThink(CONTENT_EMPTY);
};


// bot_axed1
// function begins at statement 44702, parm_start=25707
// OP_STATE	9524	25707	0
// OP_ADDRESS	28	156	25708
// OP_STOREP_F	230	25708	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axed1 = [137, bot_axed2]
{
    self.weaponframe = MOVETYPE_FLY;
    BotThink(CONTENT_EMPTY);
};


// bot_axed2
// function begins at statement 44708, parm_start=25709
// OP_STATE	9527	25709	0
// OP_ADDRESS	28	156	25710
// OP_STOREP_F	231	25710	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axed2 = [138, bot_axed3]
{
    self.weaponframe = MOVETYPE_TOSS;
    BotThink(CONTENT_EMPTY);
};


// bot_axed3
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
void () bot_axed3 = [139, bot_axed4]
{
    self.weaponframe = MOVETYPE_PUSH;
    makevectors(self.v_angle);
    W_FireAxe();
    BotThink(CONTENT_EMPTY);
};


// bot_axed4
// function begins at statement 44724, parm_start=25716
// OP_STATE	9533	1167	0
// OP_ADDRESS	28	156	25716
// OP_STOREP_F	217	25716	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axed4 = [140, bot_run]
{
    self.weaponframe = FL_CLIENT;
    BotThink(CONTENT_EMPTY);
};


// bot_nail1
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
void () bot_nail1 = [103, bot_nail2]
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
    BotThink(CONTENT_EMPTY);
};


// bot_nail2
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
void () bot_nail2 = [104, bot_run]
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
    BotThink(CONTENT_EMPTY);
};


// bot_light1
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
void () bot_light1 = [105, bot_light2]
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
    BotThink(CONTENT_EMPTY);
};


// bot_light2
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
void () bot_light2 = [106, bot_run]
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
    BotThink(CONTENT_EMPTY);
};


// bot_rocket1
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
void () bot_rocket1 = [107, bot_rocket2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    BotThink(FL_SWIM);
};


// bot_rocket2
// function begins at statement 44838, parm_start=25778
// OP_STATE	9597	25778	0
// OP_ADDRESS	28	156	25779
// OP_STOREP_F	216	25779	0
// OP_STORE_V	216	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_rocket2 = [108, bot_rocket3]
{
    self.weaponframe = FL_SWIM;
    BotThink(FL_SWIM);
};


// bot_rocket3
// function begins at statement 44844, parm_start=25780
// OP_STATE	9600	25780	0
// OP_ADDRESS	28	156	25781
// OP_STOREP_F	228	25781	0
// OP_STORE_V	214	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_rocket3 = [109, bot_rocket4]
{
    self.weaponframe = MOVETYPE_WALK;
    BotThink(TRUE);
};


// bot_rocket4
// function begins at statement 44850, parm_start=25782
// OP_STATE	9603	25782	0
// OP_ADDRESS	28	156	25783
// OP_STOREP_F	229	25783	0
// OP_STORE_V	214	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_rocket4 = [110, bot_rocket5]
{
    self.weaponframe = MOVETYPE_STEP;
    BotThink(TRUE);
};


// bot_rocket5
// function begins at statement 44856, parm_start=25784
// OP_STATE	2224	25784	0
// OP_ADDRESS	28	156	25785
// OP_STOREP_F	230	25785	0
// OP_STORE_V	213	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_rocket5 = [111, bot_rocket6]
{
    self.weaponframe = MOVETYPE_FLY;
    BotThink(FALSE);
};


// bot_rocket6
// function begins at statement 44862, parm_start=25786
// OP_STATE	9608	1167	0
// OP_ADDRESS	28	156	25786
// OP_STOREP_F	231	25786	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_rocket6 = [112, bot_run]
{
    self.weaponframe = MOVETYPE_TOSS;
    BotThink(CONTENT_EMPTY);
};


// BotPainSound
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
void () BotPainSound = 
{
    local float rs;
    
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
    
    rs = rint((random() * MOVETYPE_FLY) + TRUE);
    self.noise = "";
    if(rs == TRUE)
    {
        self.noise = "player/pain1.wav";
    }
    else
    {
        if(rs == FL_SWIM)
        {
            self.noise = "player/pain2.wav";
        }
        else
        {
            if(rs == MOVETYPE_WALK)
            {
                self.noise = "player/pain3.wav";
            }
            else
            {
                if(rs == MOVETYPE_STEP)
                {
                    self.noise = "player/pain4.wav";
                }
                else
                {
                    if(rs == MOVETYPE_FLY)
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


// bot_pain1
// function begins at statement 45012, parm_start=25829
// OP_STATE	5878	25829	0
// OP_CALL0	25787	0	0
// OP_ADDRESS	28	156	25830
// OP_STOREP_F	213	25830	0
// OP_DONE	0	0	0
void () bot_pain1 = [35, bot_pain2]
{
    BotPainSound();
    self.weaponframe = FALSE;
};


// bot_pain2
// function begins at statement 45017, parm_start=25831
// OP_STATE	9655	25831	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_pain2 = [36, bot_pain3]
{
    BotThink(CONTENT_EMPTY);
};


// bot_pain3
// function begins at statement 45021, parm_start=25832
// OP_STATE	9657	25832	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_pain3 = [37, bot_pain4]
{
    BotThink(CONTENT_EMPTY);
};


// bot_pain4
// function begins at statement 45025, parm_start=25833
// OP_STATE	9659	25833	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_pain4 = [38, bot_pain5]
{
    BotThink(CONTENT_EMPTY);
};


// bot_pain5
// function begins at statement 45029, parm_start=25834
// OP_STATE	9661	25834	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_pain5 = [39, bot_pain6]
{
    BotThink(CONTENT_EMPTY);
};


// bot_pain6
// function begins at statement 45033, parm_start=25835
// OP_STATE	746	1167	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_pain6 = [40, bot_run]
{
    BotThink(CONTENT_EMPTY);
};


// bot_axpain1
// function begins at statement 45037, parm_start=25836
// OP_STATE	9664	25836	0
// OP_CALL0	25787	0	0
// OP_ADDRESS	28	156	25837
// OP_STOREP_F	213	25837	0
// OP_DONE	0	0	0
void () bot_axpain1 = [29, bot_axpain2]
{
    BotPainSound();
    self.weaponframe = FALSE;
};


// bot_axpain2
// function begins at statement 45042, parm_start=25838
// OP_STATE	309	25838	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axpain2 = [30, bot_axpain3]
{
    BotThink(CONTENT_EMPTY);
};


// bot_axpain3
// function begins at statement 45046, parm_start=25839
// OP_STATE	310	25839	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axpain3 = [31, bot_axpain4]
{
    BotThink(CONTENT_EMPTY);
};


// bot_axpain4
// function begins at statement 45050, parm_start=25840
// OP_STATE	219	25840	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axpain4 = [32, bot_axpain5]
{
    BotThink(CONTENT_EMPTY);
};


// bot_axpain5
// function begins at statement 45054, parm_start=25841
// OP_STATE	312	25841	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axpain5 = [33, bot_axpain6]
{
    BotThink(CONTENT_EMPTY);
};


// bot_axpain6
// function begins at statement 45058, parm_start=25842
// OP_STATE	9671	1167	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () bot_axpain6 = [34, bot_run]
{
    BotThink(CONTENT_EMPTY);
};


// bot_pain
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
void (entity attacker, float damage) bot_pain = 
{
    self.field000266 = attacker;
    
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
            self.think2 = bot_axpain1;
        }
        else
        {
            bot_axpain1();
        }
        
    }
    else
    {
        if(self.think == func002276)
        {
            self.think2 = bot_pain1;
        }
        else
        {
            bot_pain1();
        }
        
    }
    
};


// PostBotDeathMessage
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
void () PostBotDeathMessage = 
{
    self.think = PostBotDeathMessage;
    self.nextthink = time + 0.1;
    
    if(self.pausetime < time)
    {
        self.think = func002421;
        BotEnterMessage(self);
    }
    
};


// BotDead
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
void () BotDead = 
{
    self.deadflag = DEAD_DEAD;
    if(CheckBotDeathMessage(self))
    {
        PostBotDeathMessage();
    }
    else
    {
        self.nextthink = (time + RA_PLAYERSTATTIME) + (random() * FL_SWIM);
        self.think = func002421;
    }
    
};


// bot_diea1
// function begins at statement 45119, parm_start=25871
// OP_STATE	1470	25871	0
// OP_DONE	0	0	0
void () bot_diea1 = [50, bot_diea2]
{
};


// bot_diea2
// function begins at statement 45121, parm_start=25872
// OP_STATE	9911	25872	0
// OP_DONE	0	0	0
void () bot_diea2 = [51, bot_diea3]
{
};


// bot_diea3
// function begins at statement 45123, parm_start=25873
// OP_STATE	9913	25873	0
// OP_DONE	0	0	0
void () bot_diea3 = [52, bot_diea4]
{
};


// bot_diea4
// function begins at statement 45125, parm_start=25874
// OP_STATE	9915	25874	0
// OP_DONE	0	0	0
void () bot_diea4 = [53, bot_diea5]
{
};


// bot_diea5
// function begins at statement 45127, parm_start=25875
// OP_STATE	9917	25875	0
// OP_DONE	0	0	0
void () bot_diea5 = [54, bot_diea6]
{
};


// bot_diea6
// function begins at statement 45129, parm_start=25876
// OP_STATE	9919	25876	0
// OP_DONE	0	0	0
void () bot_diea6 = [55, bot_diea7]
{
};


// bot_diea7
// function begins at statement 45131, parm_start=25877
// OP_STATE	9921	25877	0
// OP_DONE	0	0	0
void () bot_diea7 = [56, bot_diea8]
{
};


// bot_diea8
// function begins at statement 45133, parm_start=25878
// OP_STATE	9923	25878	0
// OP_DONE	0	0	0
void () bot_diea8 = [57, bot_diea9]
{
};


// bot_diea9
// function begins at statement 45135, parm_start=25879
// OP_STATE	9925	25879	0
// OP_DONE	0	0	0
void () bot_diea9 = [58, bot_diea10]
{
};


// bot_diea10
// function begins at statement 45137, parm_start=25880
// OP_STATE	2783	25880	0
// OP_DONE	0	0	0
void () bot_diea10 = [59, bot_diea11]
{
};


// bot_diea11
// function begins at statement 45139, parm_start=25881
// OP_STATE	2019	25880	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_diea11 = [60, bot_diea11]
{
    BotDead();
};


// bot_dieb1
// function begins at statement 45142, parm_start=25882
// OP_STATE	9928	25882	0
// OP_DONE	0	0	0
void () bot_dieb1 = [61, bot_dieb2]
{
};


// bot_dieb2
// function begins at statement 45144, parm_start=25883
// OP_STATE	9930	25883	0
// OP_DONE	0	0	0
void () bot_dieb2 = [62, bot_dieb3]
{
};


// bot_dieb3
// function begins at statement 45146, parm_start=25884
// OP_STATE	6707	25884	0
// OP_DONE	0	0	0
void () bot_dieb3 = [63, bot_dieb4]
{
};


// bot_dieb4
// function begins at statement 45148, parm_start=25885
// OP_STATE	220	25885	0
// OP_DONE	0	0	0
void () bot_dieb4 = [64, bot_dieb5]
{
};


// bot_dieb5
// function begins at statement 45150, parm_start=25886
// OP_STATE	9934	25886	0
// OP_DONE	0	0	0
void () bot_dieb5 = [65, bot_dieb6]
{
};


// bot_dieb6
// function begins at statement 45152, parm_start=25887
// OP_STATE	9936	25887	0
// OP_DONE	0	0	0
void () bot_dieb6 = [66, bot_dieb7]
{
};


// bot_dieb7
// function begins at statement 45154, parm_start=25888
// OP_STATE	9938	25888	0
// OP_DONE	0	0	0
void () bot_dieb7 = [67, bot_dieb8]
{
};


// bot_dieb8
// function begins at statement 45156, parm_start=25889
// OP_STATE	8193	25889	0
// OP_DONE	0	0	0
void () bot_dieb8 = [68, bot_dieb9]
{
};


// bot_dieb9
// function begins at statement 45158, parm_start=25890
// OP_STATE	8196	25889	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_dieb9 = [69, bot_dieb9]
{
    BotDead();
};


// bot_diec1
// function begins at statement 45161, parm_start=25891
// OP_STATE	1536	25891	0
// OP_DONE	0	0	0
void () bot_diec1 = [70, bot_diec2]
{
};


// bot_diec2
// function begins at statement 45163, parm_start=25892
// OP_STATE	8201	25892	0
// OP_DONE	0	0	0
void () bot_diec2 = [71, bot_diec3]
{
};


// bot_diec3
// function begins at statement 45165, parm_start=25893
// OP_STATE	9943	25893	0
// OP_DONE	0	0	0
void () bot_diec3 = [72, bot_diec4]
{
};


// bot_diec4
// function begins at statement 45167, parm_start=25894
// OP_STATE	5487	25894	0
// OP_DONE	0	0	0
void () bot_diec4 = [73, bot_diec5]
{
};


// bot_diec5
// function begins at statement 45169, parm_start=25895
// OP_STATE	9946	25895	0
// OP_DONE	0	0	0
void () bot_diec5 = [74, bot_diec6]
{
};


// bot_diec6
// function begins at statement 45171, parm_start=25896
// OP_STATE	9173	25896	0
// OP_DONE	0	0	0
void () bot_diec6 = [75, bot_diec7]
{
};


// bot_diec7
// function begins at statement 45173, parm_start=25897
// OP_STATE	9949	25897	0
// OP_DONE	0	0	0
void () bot_diec7 = [76, bot_diec8]
{
};


// bot_diec8
// function begins at statement 45175, parm_start=25898
// OP_STATE	9951	25898	0
// OP_DONE	0	0	0
void () bot_diec8 = [77, bot_diec9]
{
};


// bot_diec9
// function begins at statement 45177, parm_start=25899
// OP_STATE	9953	25899	0
// OP_DONE	0	0	0
void () bot_diec9 = [78, bot_diec10]
{
};


// bot_diec10
// function begins at statement 45179, parm_start=25900
// OP_STATE	9955	25900	0
// OP_DONE	0	0	0
void () bot_diec10 = [79, bot_diec11]
{
};


// bot_diec11
// function begins at statement 45181, parm_start=25901
// OP_STATE	2805	25901	0
// OP_DONE	0	0	0
void () bot_diec11 = [80, bot_diec12]
{
};


// bot_diec12
// function begins at statement 45183, parm_start=25902
// OP_STATE	8204	25902	0
// OP_DONE	0	0	0
void () bot_diec12 = [81, bot_diec13]
{
};


// bot_diec13
// function begins at statement 45185, parm_start=25903
// OP_STATE	9959	25903	0
// OP_DONE	0	0	0
void () bot_diec13 = [82, bot_diec14]
{
};


// bot_diec14
// function begins at statement 45187, parm_start=25904
// OP_STATE	9961	25904	0
// OP_DONE	0	0	0
void () bot_diec14 = [83, bot_diec15]
{
};


// bot_diec15
// function begins at statement 45189, parm_start=25905
// OP_STATE	7694	25904	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_diec15 = [84, bot_diec15]
{
    BotDead();
};


// bot_died1
// function begins at statement 45192, parm_start=25906
// OP_STATE	9963	25906	0
// OP_DONE	0	0	0
void () bot_died1 = [85, bot_died2]
{
};


// bot_died2
// function begins at statement 45194, parm_start=25907
// OP_STATE	9965	25907	0
// OP_DONE	0	0	0
void () bot_died2 = [86, bot_died3]
{
};


// bot_died3
// function begins at statement 45196, parm_start=25908
// OP_STATE	9967	25908	0
// OP_DONE	0	0	0
void () bot_died3 = [87, bot_died4]
{
};


// bot_died4
// function begins at statement 45198, parm_start=25909
// OP_STATE	9969	25909	0
// OP_DONE	0	0	0
void () bot_died4 = [88, bot_died5]
{
};


// bot_died5
// function begins at statement 45200, parm_start=25910
// OP_STATE	9971	25910	0
// OP_DONE	0	0	0
void () bot_died5 = [89, bot_died6]
{
};


// bot_died6
// function begins at statement 45202, parm_start=25911
// OP_STATE	2658	25911	0
// OP_DONE	0	0	0
void () bot_died6 = [90, bot_died7]
{
};


// bot_died7
// function begins at statement 45204, parm_start=25912
// OP_STATE	9974	25912	0
// OP_DONE	0	0	0
void () bot_died7 = [91, bot_died8]
{
};


// bot_died8
// function begins at statement 45206, parm_start=25913
// OP_STATE	9976	25913	0
// OP_DONE	0	0	0
void () bot_died8 = [92, bot_died9]
{
};


// bot_died9
// function begins at statement 45208, parm_start=25914
// OP_STATE	9978	25913	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_died9 = [93, bot_died9]
{
    BotDead();
};


// bot_diee1
// function begins at statement 45211, parm_start=25915
// OP_STATE	9979	25915	0
// OP_DONE	0	0	0
void () bot_diee1 = [94, bot_diee2]
{
};


// bot_diee2
// function begins at statement 45213, parm_start=25916
// OP_STATE	9981	25916	0
// OP_DONE	0	0	0
void () bot_diee2 = [95, bot_diee3]
{
};


// bot_diee3
// function begins at statement 45215, parm_start=25917
// OP_STATE	9983	25917	0
// OP_DONE	0	0	0
void () bot_diee3 = [96, bot_diee4]
{
};


// bot_diee4
// function begins at statement 45217, parm_start=25918
// OP_STATE	9985	25918	0
// OP_DONE	0	0	0
void () bot_diee4 = [97, bot_diee5]
{
};


// bot_diee5
// function begins at statement 45219, parm_start=25919
// OP_STATE	9987	25919	0
// OP_DONE	0	0	0
void () bot_diee5 = [98, bot_diee6]
{
};


// bot_diee6
// function begins at statement 45221, parm_start=25920
// OP_STATE	9989	25920	0
// OP_DONE	0	0	0
void () bot_diee6 = [99, bot_diee7]
{
};


// bot_diee7
// function begins at statement 45223, parm_start=25921
// OP_STATE	1997	25921	0
// OP_DONE	0	0	0
void () bot_diee7 = [100, bot_diee8]
{
};


// bot_diee8
// function begins at statement 45225, parm_start=25922
// OP_STATE	8107	25922	0
// OP_DONE	0	0	0
void () bot_diee8 = [101, bot_diee9]
{
};


// bot_diee9
// function begins at statement 45227, parm_start=25923
// OP_STATE	8109	25922	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_diee9 = [102, bot_diee9]
{
    BotDead();
};


// bot_die_ax1
// function begins at statement 45230, parm_start=25924
// OP_STATE	9993	25924	0
// OP_DONE	0	0	0
void () bot_die_ax1 = [41, bot_die_ax2]
{
};


// bot_die_ax2
// function begins at statement 45232, parm_start=25925
// OP_STATE	9995	25925	0
// OP_DONE	0	0	0
void () bot_die_ax2 = [42, bot_die_ax3]
{
};


// bot_die_ax3
// function begins at statement 45234, parm_start=25926
// OP_STATE	9997	25926	0
// OP_DONE	0	0	0
void () bot_die_ax3 = [43, bot_die_ax4]
{
};


// bot_die_ax4
// function begins at statement 45236, parm_start=25927
// OP_STATE	9999	25927	0
// OP_DONE	0	0	0
void () bot_die_ax4 = [44, bot_die_ax5]
{
};


// bot_die_ax5
// function begins at statement 45238, parm_start=25928
// OP_STATE	2598	25928	0
// OP_DONE	0	0	0
void () bot_die_ax5 = [45, bot_die_ax6]
{
};


// bot_die_ax6
// function begins at statement 45240, parm_start=25929
// OP_STATE	10002	25929	0
// OP_DONE	0	0	0
void () bot_die_ax6 = [46, bot_die_ax7]
{
};


// bot_die_ax7
// function begins at statement 45242, parm_start=25930
// OP_STATE	10004	25930	0
// OP_DONE	0	0	0
void () bot_die_ax7 = [47, bot_die_ax8]
{
};


// bot_die_ax8
// function begins at statement 45244, parm_start=25931
// OP_STATE	10006	25931	0
// OP_DONE	0	0	0
void () bot_die_ax8 = [48, bot_die_ax9]
{
};


// bot_die_ax9
// function begins at statement 45246, parm_start=25932
// OP_STATE	10008	25931	0
// OP_CALL0	25863	0	0
// OP_DONE	0	0	0
void () bot_die_ax9 = [49, bot_die_ax9]
{
    BotDead();
};


// BotDeathSound
// function begins at statement 45249, parm_start=25933
// OP_LOAD_F	28	189	25934
// OP_EQ_F	25934	228	25935
// OP_IFNOT	25935	10	0
// OP_STORE_V	2323	4	0
// OP_CALL1	9610	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6652	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	229	25936
// OP_ADD_F	25936	214	25937
// OP_STORE_V	25937	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	25933	0
// OP_EQ_F	25933	214	25938
// OP_IFNOT	25938	3	0
// OP_ADDRESS	28	208	25939
// OP_STOREP_S	6669	25939	0
// OP_EQ_F	25933	216	25940
// OP_IFNOT	25940	3	0
// OP_ADDRESS	28	208	25941
// OP_STOREP_S	6670	25941	0
// OP_EQ_F	25933	228	25942
// OP_IFNOT	25942	3	0
// OP_ADDRESS	28	208	25943
// OP_STOREP_S	6671	25943	0
// OP_EQ_F	25933	229	25944
// OP_IFNOT	25944	3	0
// OP_ADDRESS	28	208	25945
// OP_STOREP_S	6672	25945	0
// OP_EQ_F	25933	230	25946
// OP_IFNOT	25946	3	0
// OP_ADDRESS	28	208	25947
// OP_STOREP_S	6673	25947	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	25948
// OP_STORE_V	25948	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () BotDeathSound = 
{
    local float globaldef008256;
    
    if(self.waterlevel == MOVETYPE_WALK)
    {
        DeathBubbles(20);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", TRUE, ATTN_NONE);
        return;
    }
    
    globaldef008256 = rint((random() * MOVETYPE_STEP) + TRUE);
    
    if(globaldef008256 == TRUE)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(globaldef008256 == FL_SWIM)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_WALK)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_STEP)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_FLY)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NONE);
    return;
};


// BotDie
// function begins at statement 45296, parm_start=25949
// OP_LOAD_FNC	28	148	25950
// OP_EQ_FNC	25950	16476	25951
// OP_IFNOT	25951	4	0
// OP_ADDRESS	28	553	25952
// OP_STOREP_FNC	1177	25952	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	25953
// OP_NE_F	25953	246	25954
// OP_IFNOT	25954	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	162	25955
// OP_LOAD_F	28	162	25956
// OP_LOAD_F	28	162	25957
// OP_BITAND	25957	272	25958
// OP_SUB_F	25956	25958	25959
// OP_STOREP_F	25959	25955	0
// OP_ADDRESS	28	381	25960
// OP_STOREP_F	213	25960	0
// OP_ADDRESS	28	380	25961
// OP_STOREP_F	213	25961	0
// OP_ADDRESS	28	382	25962
// OP_STOREP_F	213	25962	0
// OP_ADDRESS	28	383	25963
// OP_STOREP_F	213	25963	0
// OP_BITAND	821	777	25964
// OP_IFNOT	25964	7	0
// OP_ADDRESS	28	574	25965
// OP_LOAD_F	28	572	25966
// OP_STOREP_F	25966	25965	0
// OP_ADDRESS	28	573	25967
// OP_STOREP_F	526	25967	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	25968
// OP_STOREP_F	526	25968	0
// OP_CALL0	5177	0	0
// OP_ADDRESS	28	155	25969
// OP_STOREP_S	3002	25969	0
// OP_ADDRESS	28	166	25970
// OP_STOREP_V	9872	25970	0
// OP_ADDRESS	28	165	25973
// OP_STOREP_F	247	25973	0
// OP_ADDRESS	28	104	25974
// OP_STOREP_F	237	25974	0
// OP_ADDRESS	28	182	25975
// OP_LOAD_F	28	182	25976
// OP_LOAD_F	28	182	25977
// OP_BITAND	25977	223	25978
// OP_SUB_F	25976	25978	25979
// OP_STOREP_F	25979	25975	0
// OP_ADDRESS	28	103	25980
// OP_STOREP_F	231	25980	0
// OP_ADDRESS	28	118	25981
// OP_STOREP_F	213	25981	0
// OP_ADDRESS	28	120	25982
// OP_STOREP_F	213	25982	0
// OP_ADDRESS	28	611	25983
// OP_STOREP_F	213	25983	0
// OP_ADDRESS	28	175	25984
// OP_LOAD_V	28	117	25987
// OP_STOREP_V	25987	25984	0
// OP_LOAD_F	28	152	25990
// OP_LT	25990	9236	25991
// OP_IFNOT	25991	4	0
// OP_CALL0	9841	0	0
// OP_CALL0	25863	0	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	25992
// OP_IFNOT	25992	4	0
// OP_CALL0	9841	0	0
// OP_CALL0	25863	0	0
// OP_RETURN	0	0	0
// OP_CALL0	25932	0	0
// OP_LOAD_F	28	154	25993
// OP_EQ_F	25993	253	25994
// OP_IFNOT	25994	3	0
// OP_CALL0	25923	0	0
// OP_GOTO	27	0	0
// OP_STORE_F	213	25949	0
// OP_NOT_F	25949	0	25995
// OP_IFNOT	25995	7	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	231	25996
// OP_STORE_V	25996	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	25997
// OP_STORE_F	25997	25949	0
// OP_EQ_F	25949	214	25998
// OP_IFNOT	25998	3	0
// OP_CALL0	25870	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	25949	216	25999
// OP_IFNOT	25999	3	0
// OP_CALL0	25881	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	25949	228	26000
// OP_IFNOT	26000	3	0
// OP_CALL0	25890	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	25949	229	26001
// OP_IFNOT	26001	3	0
// OP_CALL0	25905	0	0
// OP_GOTO	2	0	0
// OP_CALL0	25914	0	0
// OP_DONE	0	0	0
void () BotDie = 
{
    local float globaldef008257;
    
    if(self.think == func002276)
    {
        self.think2 = BotDie;
        return;
    }
    
    
    if(self.deadflag != DEAD_NO)
    {
        return;
    }
    
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    if(obot_game_option_bitflags & globaldef000760)
    {
        self.field000251 = self.field000249;
        self.clmodelindex = modelindex_player;
    }
    else
    {
        self.modelindex = modelindex_player;
    }
    
    DropBackpack();
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    self.field000288 = FALSE;
    self.v_angle = self.angles;
    
    if(self.health < -40)
    {
        GibPlayer();
        BotDead();
        return;
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        GibPlayer();
        BotDead();
        return;
    }
    
    BotDeathSound();
    if(self.weapon == IT_AXE)
    {
        bot_die_ax1();
    }
    else
    {
        globaldef008257 = FALSE;
        
        if(!globaldef008257)
        {
            globaldef008257 = TRUE + (floor(random() * MOVETYPE_TOSS));
        }
        
        if(globaldef008257 == TRUE)
        {
            bot_diea1();
        }
        else
        {
            if(globaldef008257 == FL_SWIM)
            {
                bot_dieb1();
            }
            else
            {
                if(globaldef008257 == MOVETYPE_WALK)
                {
                    bot_diec1();
                }
                else
                {
                    if(globaldef008257 == MOVETYPE_STEP)
                    {
                        bot_died1();
                    }
                    else
                    {
                        bot_diee1();
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

