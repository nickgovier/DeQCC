void () hknight_char_a1;
void () hknight_run1;
void () hk_idle_sound;
// hknight_shot
// function begins at statement 15882, parm_start=9598
// OP_LOAD_ENT	28	181	9608
// OP_LOAD_V	9608	105	9609
// OP_LOAD_V	28	105	9612
// OP_SUB_V	9609	9612	9615
// OP_STORE_V	9615	4	0
// OP_CALL1	492	0	0
// OP_STORE_V	1	9599	0
// OP_MUL_F	9598	231	9618
// OP_ADD_F	9600	9618	9619
// OP_STORE_F	9619	9600	0
// OP_STORE_V	9599	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	9620
// OP_LOAD_V	28	134	9623
// OP_ADD_V	9620	9623	9626
// OP_LOAD_V	28	142	9629
// OP_MUL_VF	9629	677	9632
// OP_ADD_V	9626	9632	9635
// OP_MUL_VF	59	576	9638
// OP_ADD_V	9635	9638	9641
// OP_STORE_V	9641	9602	0
// OP_STORE_V	59	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	9605	0
// OP_SUB_F	213	9607	9644
// OP_CALL0	452	0	0
// OP_SUB_F	1	677	9645
// OP_MUL_F	9645	993	9646
// OP_ADD_F	9644	9646	9647
// OP_STORE_F	9647	9607	0
// OP_STORE_V	9602	4	0
// OP_STORE_V	9605	7	0
// OP_CALL2	3745	0	0
// OP_ADDRESS	345	129	9648
// OP_STOREP_S	3851	9648	0
// OP_STORE_V	345	4	0
// OP_STORE_V	9649	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	345	113	9650
// OP_MUL_VF	9605	3070	9653
// OP_STOREP_V	9653	9650	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9656	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void (float offset) hknight_shot = 
{
    local vector offang;
    local vector org;
    local vector vec;
    offang = vectoangles(self.enemy.origin - self.origin);
    offang_y = 0 + (offset * MOVETYPE_TOSS);
    makevectors(offang);
    org = ((self.origin + self.mins) + (self.size * 0.5)) + (v_forward * KINDA_WANT);
    vec = normalize(v_forward);
    vec_z = (FALSE - 0) + ((random() - 0.5) * 0.1);
    launch_spike(org, vec);
    newmis.classname = "knightspike";
    setmodel(newmis, "progs/k_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 300;
    sound(self, CHAN_WEAPON, "hknight/attack1.wav", TRUE, ATTN_NORM);
};

// CheckForCharge
// function begins at statement 15934, parm_start=9658
// OP_NOT_F	1149	0	9658
// OP_IFNOT	9658	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	9659
// OP_LT	31	9659	9660
// OP_IFNOT	9660	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	108	9661
// OP_LOAD_ENT	28	181	9662
// OP_LOAD_F	9662	108	9663
// OP_SUB_F	9661	9663	9664
// OP_STORE_V	9664	4	0
// OP_CALL1	485	0	0
// OP_GT	1	576	9665
// OP_IFNOT	9665	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	9666
// OP_LOAD_ENT	28	181	9669
// OP_LOAD_V	9669	105	9670
// OP_SUB_V	9666	9670	9673
// OP_STORE_V	9673	4	0
// OP_CALL1	457	0	0
// OP_LT	1	1178	9676
// OP_IFNOT	9676	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	1121	0	0
// OP_CALL0	9594	0	0
// OP_DONE	0	0	0
void () CheckForCharge = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if((fabs(self.origin_z - self.enemy.origin_z)) > KINDA_WANT)
    {
        return;
    }
    
    
    if((vlen(self.origin - self.enemy.origin)) < 80)
    {
        return;
    }
    
    SUB_AttackFinished(FL_SWIM);
    hknight_char_a1();
};

// CheckContinueCharge
// function begins at statement 15963, parm_start=9678
// OP_LOAD_F	28	373	9678
// OP_GT	31	9678	9679
// OP_IFNOT	9679	5	0
// OP_STORE_V	228	4	0
// OP_CALL1	1121	0	0
// OP_CALL0	9595	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_GT	1	677	9680
// OP_IFNOT	9680	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8988	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8989	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () CheckContinueCharge = 
{
    
    if(time > self.attack_finished)
    {
        SUB_AttackFinished(MOVETYPE_WALK);
        hknight_run1();
        return;
    }
    
    if(random() > 0.5)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    }
    
};

// hknight_stand1
// function begins at statement 15987, parm_start=9682
// OP_STATE	213	9682	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand1 = [0, hknight_stand2]
{
    ai_stand();
};

// hknight_stand2
// function begins at statement 15990, parm_start=9683
// OP_STATE	214	9683	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand2 = [1, hknight_stand3]
{
    ai_stand();
};

// hknight_stand3
// function begins at statement 15993, parm_start=9684
// OP_STATE	216	9684	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand3 = [2, hknight_stand4]
{
    ai_stand();
};

// hknight_stand4
// function begins at statement 15996, parm_start=9685
// OP_STATE	228	9685	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand4 = [3, hknight_stand5]
{
    ai_stand();
};

// hknight_stand5
// function begins at statement 15999, parm_start=9686
// OP_STATE	229	9686	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand5 = [4, hknight_stand6]
{
    ai_stand();
};

// hknight_stand6
// function begins at statement 16002, parm_start=9687
// OP_STATE	230	9687	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand6 = [5, hknight_stand7]
{
    ai_stand();
};

// hknight_stand7
// function begins at statement 16005, parm_start=9688
// OP_STATE	231	9688	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand7 = [6, hknight_stand8]
{
    ai_stand();
};

// hknight_stand8
// function begins at statement 16008, parm_start=9689
// OP_STATE	232	9689	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand8 = [7, hknight_stand9]
{
    ai_stand();
};

// hknight_stand9
// function begins at statement 16011, parm_start=9690
// OP_STATE	217	9681	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () hknight_stand9 = [8, hknight_stand1]
{
    ai_stand();
};

// hknight_walk1
// function begins at statement 16014, parm_start=9691
// OP_STATE	234	9691	0
// OP_CALL0	9596	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk1 = [9, hknight_walk2]
{
    hk_idle_sound();
    ai_walk(FL_SWIM);
};

// hknight_walk2
// function begins at statement 16019, parm_start=9692
// OP_STATE	235	9692	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk2 = [10, hknight_walk3]
{
    ai_walk(MOVETYPE_FLY);
};

// hknight_walk3
// function begins at statement 16023, parm_start=9693
// OP_STATE	236	9693	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk3 = [11, hknight_walk4]
{
    ai_walk(MOVETYPE_FLY);
};

// hknight_walk4
// function begins at statement 16027, parm_start=9694
// OP_STATE	2717	9694	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk4 = [12, hknight_walk5]
{
    ai_walk(MOVETYPE_STEP);
};

// hknight_walk5
// function begins at statement 16031, parm_start=9695
// OP_STATE	8413	9695	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk5 = [13, hknight_walk6]
{
    ai_walk(MOVETYPE_STEP);
};

// hknight_walk6
// function begins at statement 16035, parm_start=9696
// OP_STATE	3382	9696	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk6 = [14, hknight_walk7]
{
    ai_walk(FL_SWIM);
};

// hknight_walk7
// function begins at statement 16039, parm_start=9697
// OP_STATE	2246	9697	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk7 = [15, hknight_walk8]
{
    ai_walk(FL_SWIM);
};

// hknight_walk8
// function begins at statement 16043, parm_start=9698
// OP_STATE	218	9698	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk8 = [16, hknight_walk9]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk9
// function begins at statement 16047, parm_start=9699
// OP_STATE	5450	9699	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk9 = [17, hknight_walk10]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk10
// function begins at statement 16051, parm_start=9700
// OP_STATE	3866	9700	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk10 = [18, hknight_walk11]
{
    ai_walk(MOVETYPE_STEP);
};

// hknight_walk11
// function begins at statement 16055, parm_start=9701
// OP_STATE	8422	9701	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk11 = [19, hknight_walk12]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk12
// function begins at statement 16059, parm_start=9702
// OP_STATE	576	9702	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk12 = [20, hknight_walk13]
{
    ai_walk(MOVETYPE_STEP);
};

// hknight_walk13
// function begins at statement 16063, parm_start=9703
// OP_STATE	8425	9703	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk13 = [21, hknight_walk14]
{
    ai_walk(MOVETYPE_TOSS);
};

// hknight_walk14
// function begins at statement 16067, parm_start=9704
// OP_STATE	8428	9704	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk14 = [22, hknight_walk15]
{
    ai_walk(FL_SWIM);
};

// hknight_walk15
// function begins at statement 16071, parm_start=9705
// OP_STATE	301	9705	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk15 = [23, hknight_walk16]
{
    ai_walk(FL_SWIM);
};

// hknight_walk16
// function begins at statement 16075, parm_start=9706
// OP_STATE	5005	9706	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk16 = [24, hknight_walk17]
{
    ai_walk(MOVETYPE_STEP);
};

// hknight_walk17
// function begins at statement 16079, parm_start=9707
// OP_STATE	2261	9707	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk17 = [25, hknight_walk18]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk18
// function begins at statement 16083, parm_start=9708
// OP_STATE	8433	9708	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk18 = [26, hknight_walk19]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk19
// function begins at statement 16087, parm_start=9709
// OP_STATE	302	9709	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk19 = [27, hknight_walk20]
{
    ai_walk(MOVETYPE_WALK);
};

// hknight_walk20
// function begins at statement 16091, parm_start=9710
// OP_STATE	303	9690	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () hknight_walk20 = [28, hknight_walk1]
{
    ai_walk(FL_SWIM);
};

// hknight_run1
// function begins at statement 16095, parm_start=9710
// OP_STATE	5692	9710	0
// OP_CALL0	9596	0	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_CALL0	9657	0	0
// OP_DONE	0	0	0
void () hknight_run1 = [29, hknight_run2]
{
    hk_idle_sound();
    ai_run(KINDA_WANT);
    CheckForCharge();
};

// hknight_run2
// function begins at statement 16101, parm_start=9711
// OP_STATE	304	9711	0
// OP_STORE_V	2261	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run2 = [30, hknight_run3]
{
    ai_run(25);
};

// hknight_run3
// function begins at statement 16105, parm_start=9712
// OP_STATE	305	9712	0
// OP_STORE_V	3866	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run3 = [31, hknight_run4]
{
    ai_run(18);
};

// hknight_run4
// function begins at statement 16109, parm_start=9713
// OP_STATE	219	9713	0
// OP_STORE_V	218	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run4 = [32, hknight_run5]
{
    ai_run(FL_INWATER);
};

// hknight_run5
// function begins at statement 16113, parm_start=9714
// OP_STATE	307	9714	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run5 = [33, hknight_run6]
{
    ai_run(14);
};

// hknight_run6
// function begins at statement 16117, parm_start=9715
// OP_STATE	5699	9715	0
// OP_STORE_V	2261	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run6 = [34, hknight_run7]
{
    ai_run(25);
};

// hknight_run7
// function begins at statement 16121, parm_start=9716
// OP_STATE	575	9716	0
// OP_STORE_V	8425	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run7 = [35, hknight_run8]
{
    ai_run(21);
};

// hknight_run8
// function begins at statement 16125, parm_start=9717
// OP_STATE	5683	9595	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () hknight_run8 = [36, hknight_run1]
{
    ai_run(13);
};

// hknight_pain1
// function begins at statement 16129, parm_start=9718
// OP_STATE	5685	9718	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9719	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () hknight_pain1 = [37, hknight_pain2]
{
    sound(self, CHAN_VOICE, "hknight/pain1.wav", TRUE, ATTN_NORM);
};

// hknight_pain2
// function begins at statement 16137, parm_start=9720
// OP_STATE	5687	9720	0
// OP_DONE	0	0	0
void () hknight_pain2 = [38, hknight_pain3]
{
};

// hknight_pain3
// function begins at statement 16139, parm_start=9721
// OP_STATE	5689	9721	0
// OP_DONE	0	0	0
void () hknight_pain3 = [39, hknight_pain4]
{
};

// hknight_pain4
// function begins at statement 16141, parm_start=9722
// OP_STATE	2101	9722	0
// OP_DONE	0	0	0
void () hknight_pain4 = [40, hknight_pain5]
{
};

// hknight_pain5
// function begins at statement 16143, parm_start=9723
// OP_STATE	6042	9595	0
// OP_DONE	0	0	0
void () hknight_pain5 = [41, hknight_run1]
{
};

// hknight_die1
// function begins at statement 16145, parm_start=9724
// OP_STATE	6044	9724	0
// OP_STORE_V	235	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () hknight_die1 = [42, hknight_die2]
{
    ai_forward(MOVETYPE_BOUNCE);
};

// hknight_die2
// function begins at statement 16149, parm_start=9725
// OP_STATE	6046	9725	0
// OP_STORE_V	217	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () hknight_die2 = [43, hknight_die3]
{
    ai_forward(FL_CLIENT);
};

// hknight_die3
// function begins at statement 16153, parm_start=9726
// OP_STATE	6048	9726	0
// OP_ADDRESS	28	104	9727
// OP_STOREP_F	237	9727	0
// OP_STORE_V	232	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () hknight_die3 = [44, hknight_die4]
{
    self.solid = SOLID_NOT;
    ai_forward(MOVETYPE_PUSH);
};

// hknight_die4
// function begins at statement 16159, parm_start=9728
// OP_STATE	1770	9728	0
// OP_DONE	0	0	0
void () hknight_die4 = [45, hknight_die5]
{
};

// hknight_die5
// function begins at statement 16161, parm_start=9729
// OP_STATE	6051	9729	0
// OP_DONE	0	0	0
void () hknight_die5 = [46, hknight_die6]
{
};

// hknight_die6
// function begins at statement 16163, parm_start=9730
// OP_STATE	6053	9730	0
// OP_DONE	0	0	0
void () hknight_die6 = [47, hknight_die7]
{
};

// hknight_die7
// function begins at statement 16165, parm_start=9731
// OP_STATE	6055	9731	0
// OP_DONE	0	0	0
void () hknight_die7 = [48, hknight_die8]
{
};

// hknight_die8
// function begins at statement 16167, parm_start=9732
// OP_STATE	6057	9732	0
// OP_STORE_V	235	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () hknight_die8 = [49, hknight_die9]
{
    ai_forward(MOVETYPE_BOUNCE);
};

// hknight_die9
// function begins at statement 16171, parm_start=9733
// OP_STATE	756	9733	0
// OP_STORE_V	236	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () hknight_die9 = [50, hknight_die10]
{
    ai_forward(MOVETYPE_BOUNCEMISSILE);
};

// hknight_die10
// function begins at statement 16175, parm_start=9734
// OP_STATE	5951	9734	0
// OP_DONE	0	0	0
void () hknight_die10 = [51, hknight_die11]
{
};

// hknight_die11
// function begins at statement 16177, parm_start=9735
// OP_STATE	5953	9735	0
// OP_DONE	0	0	0
void () hknight_die11 = [52, hknight_die12]
{
};

// hknight_die12
// function begins at statement 16179, parm_start=9736
// OP_STATE	5955	9735	0
// OP_DONE	0	0	0
void () hknight_die12 = [53, hknight_die12]
{
};

// hknight_dieb1
// function begins at statement 16181, parm_start=9737
// OP_STATE	5957	9737	0
// OP_DONE	0	0	0
void () hknight_dieb1 = [54, hknight_dieb2]
{
};

// hknight_dieb2
// function begins at statement 16183, parm_start=9738
// OP_STATE	5959	9738	0
// OP_DONE	0	0	0
void () hknight_dieb2 = [55, hknight_dieb3]
{
};

// hknight_dieb3
// function begins at statement 16185, parm_start=9739
// OP_STATE	5961	9739	0
// OP_ADDRESS	28	104	9740
// OP_STOREP_F	237	9740	0
// OP_DONE	0	0	0
void () hknight_dieb3 = [56, hknight_dieb4]
{
    self.solid = SOLID_NOT;
};

// hknight_dieb4
// function begins at statement 16189, parm_start=9741
// OP_STATE	5963	9741	0
// OP_DONE	0	0	0
void () hknight_dieb4 = [57, hknight_dieb5]
{
};

// hknight_dieb5
// function begins at statement 16191, parm_start=9742
// OP_STATE	5965	9742	0
// OP_DONE	0	0	0
void () hknight_dieb5 = [58, hknight_dieb6]
{
};

// hknight_dieb6
// function begins at statement 16193, parm_start=9743
// OP_STATE	5967	9743	0
// OP_DONE	0	0	0
void () hknight_dieb6 = [59, hknight_dieb7]
{
};

// hknight_dieb7
// function begins at statement 16195, parm_start=9744
// OP_STATE	730	9744	0
// OP_DONE	0	0	0
void () hknight_dieb7 = [60, hknight_dieb8]
{
};

// hknight_dieb8
// function begins at statement 16197, parm_start=9745
// OP_STATE	5969	9745	0
// OP_DONE	0	0	0
void () hknight_dieb8 = [61, hknight_dieb9]
{
};

// hknight_dieb9
// function begins at statement 16199, parm_start=9746
// OP_STATE	5971	9745	0
// OP_DONE	0	0	0
void () hknight_dieb9 = [62, hknight_dieb9]
{
};

// hknight_die
// function begins at statement 16201, parm_start=9747
// OP_LOAD_F	28	152	9747
// OP_LT	9747	5327	9748
// OP_IFNOT	9748	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	9749	4	0
// OP_LOAD_F	28	152	9750
// OP_STORE_V	9750	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	9751
// OP_STORE_V	9751	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	9752
// OP_STORE_V	9752	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9753
// OP_STORE_V	9753	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9754	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_GT	1	677	9755
// OP_IFNOT	9755	3	0
// OP_CALL0	9723	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9736	0	0
// OP_DONE	0	0	0
void () hknight_die = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_hellkn.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/death1.wav", TRUE, ATTN_NORM);
    if(random() > 0.5)
    {
        hknight_die1();
    }
    else
    {
        hknight_dieb1();
    }
    
};

// hknight_magica1
// function begins at statement 16240, parm_start=9757
// OP_STATE	6001	9757	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica1 = [79, hknight_magica2]
{
    ai_face();
};

// hknight_magica2
// function begins at statement 16243, parm_start=9758
// OP_STATE	1178	9758	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica2 = [80, hknight_magica3]
{
    ai_face();
};

// hknight_magica3
// function begins at statement 16246, parm_start=9759
// OP_STATE	6004	9759	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica3 = [81, hknight_magica4]
{
    ai_face();
};

// hknight_magica4
// function begins at statement 16249, parm_start=9760
// OP_STATE	6006	9760	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica4 = [82, hknight_magica5]
{
    ai_face();
};

// hknight_magica5
// function begins at statement 16252, parm_start=9761
// OP_STATE	6008	9761	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica5 = [83, hknight_magica6]
{
    ai_face();
};

// hknight_magica6
// function begins at statement 16255, parm_start=9762
// OP_STATE	6010	9762	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica6 = [84, hknight_magica7]
{
    ai_face();
};

// hknight_magica7
// function begins at statement 16258, parm_start=9763
// OP_STATE	6011	9763	0
// OP_STORE_V	277	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica7 = [85, hknight_magica8]
{
    hknight_shot(CONTENT_SOLID);
};

// hknight_magica8
// function begins at statement 16262, parm_start=9764
// OP_STATE	6013	9764	0
// OP_STORE_V	276	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica8 = [86, hknight_magica9]
{
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magica9
// function begins at statement 16266, parm_start=9765
// OP_STATE	6015	9765	0
// OP_STORE_V	213	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica9 = [87, hknight_magica10]
{
    hknight_shot(FALSE);
};

// hknight_magica10
// function begins at statement 16270, parm_start=9766
// OP_STATE	6017	9766	0
// OP_STORE_V	214	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica10 = [88, hknight_magica11]
{
    hknight_shot(TRUE);
};

// hknight_magica11
// function begins at statement 16274, parm_start=9767
// OP_STATE	6019	9767	0
// OP_STORE_V	216	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica11 = [89, hknight_magica12]
{
    hknight_shot(FL_SWIM);
};

// hknight_magica12
// function begins at statement 16278, parm_start=9768
// OP_STATE	1789	9768	0
// OP_STORE_V	228	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magica12 = [90, hknight_magica13]
{
    hknight_shot(MOVETYPE_WALK);
};

// hknight_magica13
// function begins at statement 16282, parm_start=9769
// OP_STATE	6022	9769	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica13 = [91, hknight_magica14]
{
    ai_face();
};

// hknight_magica14
// function begins at statement 16285, parm_start=9770
// OP_STATE	6024	9595	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magica14 = [92, hknight_run1]
{
    ai_face();
};

// hknight_magicb1
// function begins at statement 16288, parm_start=9771
// OP_STATE	6026	9771	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 = [93, hknight_magicb2]
{
    ai_face();
};

// hknight_magicb2
// function begins at statement 16291, parm_start=9772
// OP_STATE	6027	9772	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb2 = [94, hknight_magicb3]
{
    ai_face();
};

// hknight_magicb3
// function begins at statement 16294, parm_start=9773
// OP_STATE	6029	9773	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb3 = [95, hknight_magicb4]
{
    ai_face();
};

// hknight_magicb4
// function begins at statement 16297, parm_start=9774
// OP_STATE	6031	9774	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb4 = [96, hknight_magicb5]
{
    ai_face();
};

// hknight_magicb5
// function begins at statement 16300, parm_start=9775
// OP_STATE	6033	9775	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb5 = [97, hknight_magicb6]
{
    ai_face();
};

// hknight_magicb6
// function begins at statement 16303, parm_start=9776
// OP_STATE	6035	9776	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb6 = [98, hknight_magicb7]
{
    ai_face();
};

// hknight_magicb7
// function begins at statement 16306, parm_start=9777
// OP_STATE	736	9777	0
// OP_STORE_V	277	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb7 = [99, hknight_magicb8]
{
    hknight_shot(CONTENT_SOLID);
};

// hknight_magicb8
// function begins at statement 16310, parm_start=9778
// OP_STATE	574	9778	0
// OP_STORE_V	276	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb8 = [100, hknight_magicb9]
{
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magicb9
// function begins at statement 16314, parm_start=9779
// OP_STATE	6039	9779	0
// OP_STORE_V	213	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb9 = [101, hknight_magicb10]
{
    hknight_shot(FALSE);
};

// hknight_magicb10
// function begins at statement 16318, parm_start=9780
// OP_STATE	6041	9780	0
// OP_STORE_V	214	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb10 = [102, hknight_magicb11]
{
    hknight_shot(TRUE);
};

// hknight_magicb11
// function begins at statement 16322, parm_start=9781
// OP_STATE	5560	9781	0
// OP_STORE_V	216	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb11 = [103, hknight_magicb12]
{
    hknight_shot(FL_SWIM);
};

// hknight_magicb12
// function begins at statement 16326, parm_start=9782
// OP_STATE	5575	9782	0
// OP_STORE_V	228	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicb12 = [104, hknight_magicb13]
{
    hknight_shot(MOVETYPE_WALK);
};

// hknight_magicb13
// function begins at statement 16330, parm_start=9783
// OP_STATE	5589	9595	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicb13 = [105, hknight_run1]
{
    ai_face();
};

// hknight_magicc1
// function begins at statement 16333, parm_start=9784
// OP_STATE	9784	9785	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicc1 = [155, hknight_magicc2]
{
    ai_face();
};

// hknight_magicc2
// function begins at statement 16336, parm_start=9786
// OP_STATE	9786	9787	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicc2 = [156, hknight_magicc3]
{
    ai_face();
};

// hknight_magicc3
// function begins at statement 16339, parm_start=9788
// OP_STATE	9788	9789	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicc3 = [157, hknight_magicc4]
{
    ai_face();
};

// hknight_magicc4
// function begins at statement 16342, parm_start=9790
// OP_STATE	9790	9791	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicc4 = [158, hknight_magicc5]
{
    ai_face();
};

// hknight_magicc5
// function begins at statement 16345, parm_start=9792
// OP_STATE	9792	9793	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () hknight_magicc5 = [159, hknight_magicc6]
{
    ai_face();
};

// hknight_magicc6
// function begins at statement 16348, parm_start=9794
// OP_STATE	8099	9794	0
// OP_STORE_V	277	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc6 = [160, hknight_magicc7]
{
    hknight_shot(CONTENT_SOLID);
};

// hknight_magicc7
// function begins at statement 16352, parm_start=9795
// OP_STATE	9795	9796	0
// OP_STORE_V	276	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc7 = [161, hknight_magicc8]
{
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magicc8
// function begins at statement 16356, parm_start=9797
// OP_STATE	9797	9798	0
// OP_STORE_V	213	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc8 = [162, hknight_magicc9]
{
    hknight_shot(FALSE);
};

// hknight_magicc9
// function begins at statement 16360, parm_start=9799
// OP_STATE	9799	9800	0
// OP_STORE_V	214	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc9 = [163, hknight_magicc10]
{
    hknight_shot(TRUE);
};

// hknight_magicc10
// function begins at statement 16364, parm_start=9801
// OP_STATE	9801	9802	0
// OP_STORE_V	216	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc10 = [164, hknight_magicc11]
{
    hknight_shot(FL_SWIM);
};

// hknight_magicc11
// function begins at statement 16368, parm_start=9803
// OP_STATE	9803	9595	0
// OP_STORE_V	228	4	0
// OP_CALL1	9597	0	0
// OP_DONE	0	0	0
void () hknight_magicc11 = [165, hknight_run1]
{
    hknight_shot(MOVETYPE_WALK);
};

// hknight_char_a1
// function begins at statement 16372, parm_start=9804
// OP_STATE	4366	9804	0
// OP_STORE_V	576	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a1 = [63, hknight_char_a2]
{
    ai_charge(KINDA_WANT);
};

// hknight_char_a2
// function begins at statement 16376, parm_start=9805
// OP_STATE	220	9805	0
// OP_STORE_V	2261	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a2 = [64, hknight_char_a3]
{
    ai_charge(25);
};

// hknight_char_a3
// function begins at statement 16380, parm_start=9806
// OP_STATE	5975	9806	0
// OP_STORE_V	3866	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a3 = [65, hknight_char_a4]
{
    ai_charge(18);
};

// hknight_char_a4
// function begins at statement 16384, parm_start=9807
// OP_STATE	5977	9807	0
// OP_STORE_V	218	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a4 = [66, hknight_char_a5]
{
    ai_charge(FL_INWATER);
};

// hknight_char_a5
// function begins at statement 16388, parm_start=9808
// OP_STATE	5979	9808	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a5 = [67, hknight_char_a6]
{
    ai_charge(14);
};

// hknight_char_a6
// function begins at statement 16392, parm_start=9809
// OP_STATE	5981	9809	0
// OP_STORE_V	576	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a6 = [68, hknight_char_a7]
{
    ai_charge(KINDA_WANT);
    ai_melee();
};

// hknight_char_a7
// function begins at statement 16397, parm_start=9810
// OP_STATE	5983	9810	0
// OP_STORE_V	8425	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a7 = [69, hknight_char_a8]
{
    ai_charge(21);
    ai_melee();
};

// hknight_char_a8
// function begins at statement 16402, parm_start=9811
// OP_STATE	5984	9811	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a8 = [70, hknight_char_a9]
{
    ai_charge(13);
    ai_melee();
};

// hknight_char_a9
// function begins at statement 16407, parm_start=9812
// OP_STATE	5986	9812	0
// OP_STORE_V	576	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a9 = [71, hknight_char_a10]
{
    ai_charge(KINDA_WANT);
    ai_melee();
};

// hknight_char_a10
// function begins at statement 16412, parm_start=9813
// OP_STATE	5988	9813	0
// OP_STORE_V	576	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a10 = [72, hknight_char_a11]
{
    ai_charge(KINDA_WANT);
    ai_melee();
};

// hknight_char_a11
// function begins at statement 16417, parm_start=9814
// OP_STATE	3216	9814	0
// OP_STORE_V	3866	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_a11 = [73, hknight_char_a12]
{
    ai_charge(18);
    ai_melee();
};

// hknight_char_a12
// function begins at statement 16422, parm_start=9815
// OP_STATE	5991	9815	0
// OP_STORE_V	218	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a12 = [74, hknight_char_a13]
{
    ai_charge(FL_INWATER);
};

// hknight_char_a13
// function begins at statement 16426, parm_start=9816
// OP_STATE	5993	9816	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a13 = [75, hknight_char_a14]
{
    ai_charge(14);
};

// hknight_char_a14
// function begins at statement 16430, parm_start=9817
// OP_STATE	5995	9817	0
// OP_STORE_V	2261	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a14 = [76, hknight_char_a15]
{
    ai_charge(25);
};

// hknight_char_a15
// function begins at statement 16434, parm_start=9818
// OP_STATE	5997	9818	0
// OP_STORE_V	8425	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a15 = [77, hknight_char_a16]
{
    ai_charge(21);
};

// hknight_char_a16
// function begins at statement 16438, parm_start=9819
// OP_STATE	5999	9595	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_char_a16 = [78, hknight_run1]
{
    ai_charge(13);
};

// hknight_char_b1
// function begins at statement 16442, parm_start=9820
// OP_STATE	5604	9820	0
// OP_CALL0	9677	0	0
// OP_STORE_V	301	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b1 = [106, hknight_char_b2]
{
    CheckContinueCharge();
    ai_charge(SVC_TEMPENTITY);
    ai_melee();
};

// hknight_char_b2
// function begins at statement 16448, parm_start=9821
// OP_STATE	5618	9821	0
// OP_STORE_V	5450	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b2 = [107, hknight_char_b3]
{
    ai_charge(17);
    ai_melee();
};

// hknight_char_b3
// function begins at statement 16453, parm_start=9822
// OP_STATE	5624	9822	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b3 = [108, hknight_char_b4]
{
    ai_charge(12);
    ai_melee();
};

// hknight_char_b4
// function begins at statement 16458, parm_start=9823
// OP_STATE	5627	9823	0
// OP_STORE_V	8428	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b4 = [109, hknight_char_b5]
{
    ai_charge(22);
    ai_melee();
};

// hknight_char_b5
// function begins at statement 16463, parm_start=9824
// OP_STATE	5630	9824	0
// OP_STORE_V	3866	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b5 = [110, hknight_char_b6]
{
    ai_charge(18);
    ai_melee();
};

// hknight_char_b6
// function begins at statement 16468, parm_start=9825
// OP_STATE	5633	9819	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_char_b6 = [111, hknight_char_b1]
{
    ai_charge(FL_CLIENT);
    ai_melee();
};

// hknight_slice1
// function begins at statement 16473, parm_start=9826
// OP_STATE	5636	9826	0
// OP_STORE_V	234	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_slice1 = [112, hknight_slice2]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};

// hknight_slice2
// function begins at statement 16477, parm_start=9827
// OP_STATE	5498	9827	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_slice2 = [113, hknight_slice3]
{
    ai_charge(MOVETYPE_TOSS);
};

// hknight_slice3
// function begins at statement 16481, parm_start=9828
// OP_STATE	5504	9828	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_slice3 = [114, hknight_slice4]
{
    ai_charge(13);
};

// hknight_slice4
// function begins at statement 16485, parm_start=9829
// OP_STATE	5507	9829	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_slice4 = [115, hknight_slice5]
{
    ai_charge(MOVETYPE_STEP);
};

// hknight_slice5
// function begins at statement 16489, parm_start=9830
// OP_STATE	5510	9830	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_slice5 = [116, hknight_slice6]
{
    ai_charge(MOVETYPE_PUSH);
    ai_melee();
};

// hknight_slice6
// function begins at statement 16494, parm_start=9831
// OP_STATE	5513	9831	0
// OP_STORE_V	2246	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_slice6 = [117, hknight_slice7]
{
    ai_charge(15);
    ai_melee();
};

// hknight_slice7
// function begins at statement 16499, parm_start=9832
// OP_STATE	5516	9832	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_slice7 = [118, hknight_slice8]
{
    ai_charge(FL_CLIENT);
    ai_melee();
};

// hknight_slice8
// function begins at statement 16504, parm_start=9833
// OP_STATE	5518	9833	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_slice8 = [119, hknight_slice9]
{
    ai_charge(FL_SWIM);
    ai_melee();
};

// hknight_slice9
// function begins at statement 16509, parm_start=9834
// OP_STATE	746	9834	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_slice9 = [120, hknight_slice10]
{
    ai_melee();
};

// hknight_slice10
// function begins at statement 16512, parm_start=9835
// OP_STATE	5523	9595	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_slice10 = [121, hknight_run1]
{
    ai_charge(MOVETYPE_WALK);
};

// hknight_smash1
// function begins at statement 16516, parm_start=9836
// OP_STATE	5526	9836	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash1 = [122, hknight_smash2]
{
    ai_charge(TRUE);
};

// hknight_smash2
// function begins at statement 16520, parm_start=9837
// OP_STATE	9837	9838	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash2 = [123, hknight_smash3]
{
    ai_charge(13);
};

// hknight_smash3
// function begins at statement 16524, parm_start=9839
// OP_STATE	9839	9840	0
// OP_STORE_V	234	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash3 = [124, hknight_smash4]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};

// hknight_smash4
// function begins at statement 16528, parm_start=9841
// OP_STATE	5528	9841	0
// OP_STORE_V	236	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash4 = [125, hknight_smash5]
{
    ai_charge(MOVETYPE_BOUNCEMISSILE);
};

// hknight_smash5
// function begins at statement 16532, parm_start=9842
// OP_STATE	5531	9842	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_smash5 = [126, hknight_smash6]
{
    ai_charge(MOVETYPE_BOUNCE);
    ai_melee();
};

// hknight_smash6
// function begins at statement 16537, parm_start=9843
// OP_STATE	5534	9843	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_smash6 = [127, hknight_smash7]
{
    ai_charge(MOVETYPE_PUSH);
    ai_melee();
};

// hknight_smash7
// function begins at statement 16542, parm_start=9844
// OP_STATE	221	9844	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_smash7 = [128, hknight_smash8]
{
    ai_charge(12);
    ai_melee();
};

// hknight_smash8
// function begins at statement 16547, parm_start=9845
// OP_STATE	9845	9846	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_smash8 = [129, hknight_smash9]
{
    ai_charge(FL_SWIM);
    ai_melee();
};

// hknight_smash9
// function begins at statement 16552, parm_start=9847
// OP_STATE	9847	9848	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_smash9 = [130, hknight_smash10]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};

// hknight_smash10
// function begins at statement 16557, parm_start=9849
// OP_STATE	5538	9849	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash10 = [131, hknight_smash11]
{
    ai_charge(FALSE);
};

// hknight_smash11
// function begins at statement 16561, parm_start=9850
// OP_STATE	5541	9595	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_smash11 = [132, hknight_run1]
{
    ai_charge(FALSE);
};

// hknight_watk1
// function begins at statement 16565, parm_start=9851
// OP_STATE	5544	9851	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk1 = [133, hknight_watk2]
{
    ai_charge(FL_SWIM);
};

// hknight_watk2
// function begins at statement 16569, parm_start=9852
// OP_STATE	5547	9852	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk2 = [134, hknight_watk3]
{
    ai_charge(FALSE);
};

// hknight_watk3
// function begins at statement 16573, parm_start=9853
// OP_STATE	9853	9854	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk3 = [135, hknight_watk4]
{
    ai_charge(FALSE);
};

// hknight_watk4
// function begins at statement 16577, parm_start=9855
// OP_STATE	9855	9856	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk4 = [136, hknight_watk5]
{
    ai_melee();
};

// hknight_watk5
// function begins at statement 16580, parm_start=9857
// OP_STATE	5549	9857	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk5 = [137, hknight_watk6]
{
    ai_melee();
};

// hknight_watk6
// function begins at statement 16583, parm_start=9858
// OP_STATE	5552	9858	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk6 = [138, hknight_watk7]
{
    ai_melee();
};

// hknight_watk7
// function begins at statement 16586, parm_start=9859
// OP_STATE	5555	9859	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk7 = [139, hknight_watk8]
{
    ai_charge(TRUE);
};

// hknight_watk8
// function begins at statement 16590, parm_start=9860
// OP_STATE	5558	9860	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk8 = [140, hknight_watk9]
{
    ai_charge(MOVETYPE_STEP);
};

// hknight_watk9
// function begins at statement 16594, parm_start=9861
// OP_STATE	9861	9862	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk9 = [141, hknight_watk10]
{
    ai_charge(MOVETYPE_FLY);
};

// hknight_watk10
// function begins at statement 16598, parm_start=9863
// OP_STATE	9863	9864	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk10 = [142, hknight_watk11]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};

// hknight_watk11
// function begins at statement 16603, parm_start=9865
// OP_STATE	9865	9866	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk11 = [143, hknight_watk12]
{
    ai_charge(FL_SWIM);
    ai_melee();
};

// hknight_watk12
// function begins at statement 16608, parm_start=9867
// OP_STATE	9867	9868	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk12 = [144, hknight_watk13]
{
    ai_charge(FL_SWIM);
    ai_melee();
};

// hknight_watk13
// function begins at statement 16613, parm_start=9869
// OP_STATE	9869	9870	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk13 = [145, hknight_watk14]
{
    ai_charge(FALSE);
};

// hknight_watk14
// function begins at statement 16617, parm_start=9871
// OP_STATE	9871	9872	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk14 = [146, hknight_watk15]
{
    ai_charge(FALSE);
};

// hknight_watk15
// function begins at statement 16621, parm_start=9873
// OP_STATE	9873	9874	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk15 = [147, hknight_watk16]
{
    ai_charge(FALSE);
};

// hknight_watk16
// function begins at statement 16625, parm_start=9875
// OP_STATE	9875	9876	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk16 = [148, hknight_watk17]
{
    ai_charge(TRUE);
};

// hknight_watk17
// function begins at statement 16629, parm_start=9877
// OP_STATE	9877	9878	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk17 = [149, hknight_watk18]
{
    ai_charge(TRUE);
    ai_melee();
};

// hknight_watk18
// function begins at statement 16634, parm_start=9879
// OP_STATE	2346	9879	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk18 = [150, hknight_watk19]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};

// hknight_watk19
// function begins at statement 16639, parm_start=9880
// OP_STATE	9880	9881	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () hknight_watk19 = [151, hknight_watk20]
{
    ai_charge(MOVETYPE_STEP);
    ai_melee();
};

// hknight_watk20
// function begins at statement 16644, parm_start=9882
// OP_STATE	9882	9883	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk20 = [152, hknight_watk21]
{
    ai_charge(MOVETYPE_TOSS);
};

// hknight_watk21
// function begins at statement 16648, parm_start=9884
// OP_STATE	9884	9885	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk21 = [153, hknight_watk22]
{
    ai_charge(MOVETYPE_PUSH);
};

// hknight_watk22
// function begins at statement 16652, parm_start=9886
// OP_STATE	9886	9595	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () hknight_watk22 = [154, hknight_run1]
{
    ai_charge(MOVETYPE_WALK);
};

// hk_idle_sound
// function begins at statement 16656, parm_start=9887
// OP_CALL0	452	0	0
// OP_LT	1	1226	9887
// OP_IFNOT	9887	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9888	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () hk_idle_sound = 
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "hknight/idle.wav", TRUE, ATTN_NORM);
    }
    
};

// hknight_pain
// function begins at statement 16666, parm_start=9890
// OP_LOAD_F	28	374	9892
// OP_GT	9892	31	9893
// OP_IFNOT	9893	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9719	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	374	9894
// OP_SUB_F	31	9894	9895
// OP_GT	9895	230	9896
// OP_IFNOT	9896	6	0
// OP_CALL0	9717	0	0
// OP_ADDRESS	28	374	9897
// OP_ADD_F	31	214	9898
// OP_STOREP_F	9898	9897	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	304	9899
// OP_GT	9899	9891	9900
// OP_IFNOT	9900	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	9901
// OP_ADD_F	31	214	9902
// OP_STOREP_F	9902	9901	0
// OP_CALL0	9717	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) hknight_pain = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/pain1.wav", TRUE, ATTN_NORM);
    
    if((time - self.pain_finished) > MOVETYPE_FLY)
    {
        hknight_pain1();
        self.pain_finished = time + TRUE;
        return;
    }
    
    
    if((random() * SVC_INTERMISSION) > damage)
    {
        return;
    }
    
    self.pain_finished = time + TRUE;
    hknight_pain1();
};

float hknight_type;
// hknight_melee
// function begins at statement 16695, parm_start=9905
// OP_ADD_F	9903	214	9905
// OP_STORE_F	9905	9903	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9906	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_EQ_F	9903	214	9907
// OP_IFNOT	9907	3	0
// OP_CALL0	9825	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	9903	216	9908
// OP_IFNOT	9908	3	0
// OP_CALL0	9835	0	0
// OP_GOTO	5	0	0
// OP_EQ_F	9903	228	9909
// OP_IFNOT	9909	3	0
// OP_CALL0	9850	0	0
// OP_STORE_F	213	9903	0
// OP_DONE	0	0	0
void () hknight_melee = 
{
    hknight_type = hknight_type + TRUE;
    sound(self, CHAN_WEAPON, "hknight/slash1.wav", TRUE, ATTN_NORM);
    if(hknight_type == TRUE)
    {
        hknight_slice1();
    }
    else
    {
        if(hknight_type == FL_SWIM)
        {
            hknight_smash1();
        }
        else
        {
            
            if(hknight_type == MOVETYPE_WALK)
            {
                hknight_watk1();
                hknight_type = FALSE;
            }
            
        }
        
    }
    
};

// monster_hell_knight
// function begins at statement 16716, parm_start=9911
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9911	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	9649	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	9749	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	9656	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	9754	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	9719	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1645	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	9912	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9906	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	9888	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	9913	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8989	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8988	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	9914
// OP_STOREP_F	240	9914	0
// OP_ADDRESS	28	103	9915
// OP_STOREP_F	229	9915	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9911	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	9080	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	9916
// OP_STOREP_F	2229	9916	0
// OP_ADDRESS	28	356	9917
// OP_STOREP_FNC	9681	9917	0
// OP_ADDRESS	28	357	9918
// OP_STOREP_FNC	9690	9918	0
// OP_ADDRESS	28	358	9919
// OP_STOREP_FNC	9595	9919	0
// OP_ADDRESS	28	360	9920
// OP_STOREP_FNC	9904	9920	0
// OP_ADDRESS	28	359	9921
// OP_STOREP_FNC	9783	9921	0
// OP_ADDRESS	28	361	9922
// OP_STOREP_FNC	9889	9922	0
// OP_ADDRESS	28	362	9923
// OP_STOREP_FNC	9746	9923	0
// OP_CALL0	6156	0	0
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
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 250;
    self.th_stand = hknight_stand1;
    self.th_walk = hknight_walk1;
    self.th_run = hknight_run1;
    self.th_melee = hknight_melee;
    self.th_missile = hknight_magicc1;
    self.th_pain = hknight_pain;
    self.th_die = hknight_die;
    walkmonster_start();
};

