void () army_fire;
// army_stand1
// function begins at statement 14507, parm_start=8681
// OP_STATE	337	8681	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand1 = [0, army_stand2]
{
    ai_stand();
};

// army_stand2
// function begins at statement 14510, parm_start=8682
// OP_STATE	7368	8682	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand2 = [1, army_stand3]
{
    ai_stand();
};

// army_stand3
// function begins at statement 14513, parm_start=8683
// OP_STATE	7369	8683	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand3 = [2, army_stand4]
{
    ai_stand();
};

// army_stand4
// function begins at statement 14516, parm_start=8684
// OP_STATE	370	8684	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand4 = [3, army_stand5]
{
    ai_stand();
};

// army_stand5
// function begins at statement 14519, parm_start=8685
// OP_STATE	6076	8685	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand5 = [4, army_stand6]
{
    ai_stand();
};

// army_stand6
// function begins at statement 14522, parm_start=8686
// OP_STATE	313	8686	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand6 = [5, army_stand7]
{
    ai_stand();
};

// army_stand7
// function begins at statement 14525, parm_start=8687
// OP_STATE	314	8687	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand7 = [6, army_stand8]
{
    ai_stand();
};

// army_stand8
// function begins at statement 14528, parm_start=8688
// OP_STATE	315	8680	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () army_stand8 = [7, army_stand1]
{
    ai_stand();
};

// army_walk1
// function begins at statement 14531, parm_start=8689
// OP_STATE	1423	8689	0
// OP_CALL0	452	0	0
// OP_LT	1	836	8690
// OP_IFNOT	8690	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8691	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk1 = [90, army_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk2
// function begins at statement 14544, parm_start=8692
// OP_STATE	5422	8692	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk2 = [91, army_walk3]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk3
// function begins at statement 14548, parm_start=8693
// OP_STATE	5424	8693	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk3 = [92, army_walk4]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk4
// function begins at statement 14552, parm_start=8694
// OP_STATE	5426	8694	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk4 = [93, army_walk5]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk5
// function begins at statement 14556, parm_start=8695
// OP_STATE	5427	8695	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk5 = [94, army_walk6]
{
    ai_walk(SPAWNFLAG_LASER);
};

// army_walk6
// function begins at statement 14560, parm_start=8696
// OP_STATE	5429	8696	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk6 = [95, army_walk7]
{
    ai_walk(AS_MELEE);
};

// army_walk7
// function begins at statement 14564, parm_start=8697
// OP_STATE	5431	8697	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk7 = [96, army_walk8]
{
    ai_walk(SECRET_1ST_DOWN);
};

// army_walk8
// function begins at statement 14568, parm_start=8698
// OP_STATE	5433	8698	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk8 = [97, army_walk9]
{
    ai_walk(SECRET_1ST_DOWN);
};

// army_walk9
// function begins at statement 14572, parm_start=8699
// OP_STATE	5435	8699	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk9 = [98, army_walk10]
{
    ai_walk(SPAWNFLAG_LASER);
};

// army_walk10
// function begins at statement 14576, parm_start=8700
// OP_STATE	5437	8700	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk10 = [99, army_walk11]
{
    ai_walk(SPAWNFLAG_LASER);
};

// army_walk11
// function begins at statement 14580, parm_start=8701
// OP_STATE	1884	8701	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk11 = [100, army_walk12]
{
    ai_walk(SPAWNFLAG_LASER);
};

// army_walk12
// function begins at statement 14584, parm_start=8702
// OP_STATE	5440	8702	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk12 = [101, army_walk13]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk13
// function begins at statement 14588, parm_start=8703
// OP_STATE	5442	8703	0
// OP_STORE_V	337	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk13 = [102, army_walk14]
{
    ai_walk(MSG_BROADCAST);
};

// army_walk14
// function begins at statement 14592, parm_start=8704
// OP_STATE	4971	8704	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk14 = [103, army_walk15]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk15
// function begins at statement 14596, parm_start=8705
// OP_STATE	4986	8705	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk15 = [104, army_walk16]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk16
// function begins at statement 14600, parm_start=8706
// OP_STATE	5000	8706	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk16 = [105, army_walk17]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk17
// function begins at statement 14604, parm_start=8707
// OP_STATE	5015	8707	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk17 = [106, army_walk18]
{
    ai_walk(AS_MELEE);
};

// army_walk18
// function begins at statement 14608, parm_start=8708
// OP_STATE	5029	8708	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk18 = [107, army_walk19]
{
    ai_walk(AS_MELEE);
};

// army_walk19
// function begins at statement 14612, parm_start=8709
// OP_STATE	5035	8709	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk19 = [108, army_walk20]
{
    ai_walk(AS_MELEE);
};

// army_walk20
// function begins at statement 14616, parm_start=8710
// OP_STATE	5038	8710	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk20 = [109, army_walk21]
{
    ai_walk(AS_MELEE);
};

// army_walk21
// function begins at statement 14620, parm_start=8711
// OP_STATE	5041	8711	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk21 = [110, army_walk22]
{
    ai_walk(SPAWNFLAG_LASER);
};

// army_walk22
// function begins at statement 14624, parm_start=8712
// OP_STATE	5044	8712	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk22 = [111, army_walk23]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk23
// function begins at statement 14628, parm_start=8713
// OP_STATE	5047	8713	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk23 = [112, army_walk24]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_walk24
// function begins at statement 14632, parm_start=8714
// OP_STATE	4909	8688	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () army_walk24 = [113, army_walk1]
{
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

// army_run1
// function begins at statement 14636, parm_start=8715
// OP_STATE	2739	8715	0
// OP_CALL0	452	0	0
// OP_LT	1	836	8716
// OP_IFNOT	8716	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8691	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	319	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run1 = [73, army_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_run(TE_TELEPORT);
};

// army_run2
// function begins at statement 14649, parm_start=8717
// OP_STATE	5391	8717	0
// OP_STORE_V	1876	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run2 = [74, army_run3]
{
    ai_run(15);
};

// army_run3
// function begins at statement 14653, parm_start=8718
// OP_STATE	5393	8718	0
// OP_STORE_V	318	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run3 = [75, army_run4]
{
    ai_run(TE_LAVASPLASH);
};

// army_run4
// function begins at statement 14657, parm_start=8719
// OP_STATE	5395	8719	0
// OP_STORE_V	318	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run4 = [76, army_run5]
{
    ai_run(TE_LAVASPLASH);
};

// army_run5
// function begins at statement 14661, parm_start=8720
// OP_STATE	5397	8720	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run5 = [77, army_run6]
{
    ai_run(SECRET_NO_SHOOT);
};

// army_run6
// function begins at statement 14665, parm_start=8721
// OP_STATE	5399	8721	0
// OP_STORE_V	1876	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run6 = [78, army_run7]
{
    ai_run(15);
};

// army_run7
// function begins at statement 14669, parm_start=8722
// OP_STATE	5401	8722	0
// OP_STORE_V	318	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run7 = [79, army_run8]
{
    ai_run(TE_LAVASPLASH);
};

// army_run8
// function begins at statement 14673, parm_start=8723
// OP_STATE	788	8714	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_run8 = [80, army_run1]
{
    ai_run(SECRET_NO_SHOOT);
};

// army_atk1
// function begins at statement 14677, parm_start=8724
// OP_STATE	5404	8724	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk1 = [81, army_atk2]
{
    ai_face();
};

// army_atk2
// function begins at statement 14680, parm_start=8725
// OP_STATE	5406	8725	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk2 = [82, army_atk3]
{
    ai_face();
};

// army_atk3
// function begins at statement 14683, parm_start=8726
// OP_STATE	5408	8726	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk3 = [83, army_atk4]
{
    ai_face();
};

// army_atk4
// function begins at statement 14686, parm_start=8727
// OP_STATE	5410	8727	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk4 = [84, army_atk5]
{
    ai_face();
};

// army_atk5
// function begins at statement 14689, parm_start=8728
// OP_STATE	5411	8728	0
// OP_CALL0	758	0	0
// OP_CALL0	8679	0	0
// OP_ADDRESS	28	133	8729
// OP_LOAD_F	28	133	8730
// OP_BITOR	8730	334	8731
// OP_STOREP_F	8731	8729	0
// OP_DONE	0	0	0
void () army_atk5 = [85, army_atk6]
{
    ai_face();
    army_fire();
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// army_atk6
// function begins at statement 14697, parm_start=8732
// OP_STATE	5413	8732	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk6 = [86, army_atk7]
{
    ai_face();
};

// army_atk7
// function begins at statement 14700, parm_start=8733
// OP_STATE	5415	8733	0
// OP_CALL0	758	0	0
// OP_STORE_V	8723	4	0
// OP_CALL1	738	0	0
// OP_DONE	0	0	0
void () army_atk7 = [87, army_atk8]
{
    ai_face();
    SUB_CheckRefire(army_atk1);
};

// army_atk8
// function begins at statement 14705, parm_start=8734
// OP_STATE	5417	8734	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk8 = [88, army_atk9]
{
    ai_face();
};

// army_atk9
// function begins at statement 14708, parm_start=8735
// OP_STATE	5419	8714	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () army_atk9 = [89, army_run1]
{
    ai_face();
};

// army_pain1
// function begins at statement 14711, parm_start=8736
// OP_STATE	1733	8736	0
// OP_DONE	0	0	0
void () army_pain1 = [40, army_pain2]
{
};

// army_pain2
// function begins at statement 14713, parm_start=8737
// OP_STATE	5443	8737	0
// OP_DONE	0	0	0
void () army_pain2 = [41, army_pain3]
{
};

// army_pain3
// function begins at statement 14715, parm_start=8738
// OP_STATE	5445	8738	0
// OP_DONE	0	0	0
void () army_pain3 = [42, army_pain4]
{
};

// army_pain4
// function begins at statement 14717, parm_start=8739
// OP_STATE	5447	8739	0
// OP_DONE	0	0	0
void () army_pain4 = [43, army_pain5]
{
};

// army_pain5
// function begins at statement 14719, parm_start=8740
// OP_STATE	5449	8740	0
// OP_DONE	0	0	0
void () army_pain5 = [44, army_pain6]
{
};

// army_pain6
// function begins at statement 14721, parm_start=8741
// OP_STATE	1390	8714	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () army_pain6 = [45, army_run1]
{
    ai_pain(SPAWNFLAG_SUPERSPIKE);
};

// army_painb1
// function begins at statement 14725, parm_start=8742
// OP_STATE	5452	8742	0
// OP_DONE	0	0	0
void () army_painb1 = [46, army_painb2]
{
};

// army_painb2
// function begins at statement 14727, parm_start=8743
// OP_STATE	5454	8743	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painb2 = [47, army_painb3]
{
    ai_painforward(13);
};

// army_painb3
// function begins at statement 14731, parm_start=8744
// OP_STATE	5456	8744	0
// OP_STORE_V	317	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painb3 = [48, army_painb4]
{
    ai_painforward(TE_LIGHTNING3);
};

// army_painb4
// function begins at statement 14735, parm_start=8745
// OP_STATE	5458	8745	0
// OP_DONE	0	0	0
void () army_painb4 = [49, army_painb5]
{
};

// army_painb5
// function begins at statement 14737, parm_start=8746
// OP_STATE	2227	8746	0
// OP_DONE	0	0	0
void () army_painb5 = [50, army_painb6]
{
};

// army_painb6
// function begins at statement 14739, parm_start=8747
// OP_STATE	5351	8747	0
// OP_DONE	0	0	0
void () army_painb6 = [51, army_painb7]
{
};

// army_painb7
// function begins at statement 14741, parm_start=8748
// OP_STATE	5353	8748	0
// OP_DONE	0	0	0
void () army_painb7 = [52, army_painb8]
{
};

// army_painb8
// function begins at statement 14743, parm_start=8749
// OP_STATE	5355	8749	0
// OP_DONE	0	0	0
void () army_painb8 = [53, army_painb9]
{
};

// army_painb9
// function begins at statement 14745, parm_start=8750
// OP_STATE	5357	8750	0
// OP_DONE	0	0	0
void () army_painb9 = [54, army_painb10]
{
};

// army_painb10
// function begins at statement 14747, parm_start=8751
// OP_STATE	5359	8751	0
// OP_DONE	0	0	0
void () army_painb10 = [55, army_painb11]
{
};

// army_painb11
// function begins at statement 14749, parm_start=8752
// OP_STATE	5361	8752	0
// OP_DONE	0	0	0
void () army_painb11 = [56, army_painb12]
{
};

// army_painb12
// function begins at statement 14751, parm_start=8753
// OP_STATE	5363	8753	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () army_painb12 = [57, army_painb13]
{
    ai_pain(SPAWNFLAG_LASER);
};

// army_painb13
// function begins at statement 14755, parm_start=8754
// OP_STATE	5365	8754	0
// OP_DONE	0	0	0
void () army_painb13 = [58, army_painb14]
{
};

// army_painb14
// function begins at statement 14757, parm_start=8755
// OP_STATE	5367	8714	0
// OP_DONE	0	0	0
void () army_painb14 = [59, army_run1]
{
};

// army_painc1
// function begins at statement 14759, parm_start=8756
// OP_STATE	912	8756	0
// OP_DONE	0	0	0
void () army_painc1 = [60, army_painc2]
{
};

// army_painc2
// function begins at statement 14761, parm_start=8757
// OP_STATE	5369	8757	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () army_painc2 = [61, army_painc3]
{
    ai_pain(SPAWNFLAG_SUPERSPIKE);
};

// army_painc3
// function begins at statement 14765, parm_start=8758
// OP_STATE	5371	8758	0
// OP_DONE	0	0	0
void () army_painc3 = [62, army_painc4]
{
};

// army_painc4
// function begins at statement 14767, parm_start=8759
// OP_STATE	3872	8759	0
// OP_DONE	0	0	0
void () army_painc4 = [63, army_painc5]
{
};

// army_painc5
// function begins at statement 14769, parm_start=8760
// OP_STATE	260	8760	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc5 = [64, army_painc6]
{
    ai_painforward(SPAWNFLAG_SUPERSPIKE);
};

// army_painc6
// function begins at statement 14773, parm_start=8761
// OP_STATE	5375	8761	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc6 = [65, army_painc7]
{
    ai_painforward(SPAWNFLAG_SUPERSPIKE);
};

// army_painc7
// function begins at statement 14777, parm_start=8762
// OP_STATE	5377	8762	0
// OP_DONE	0	0	0
void () army_painc7 = [66, army_painc8]
{
};

// army_painc8
// function begins at statement 14779, parm_start=8763
// OP_STATE	5379	8763	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () army_painc8 = [67, army_painc9]
{
    ai_pain(SPAWNFLAG_SUPERSPIKE);
};

// army_painc9
// function begins at statement 14783, parm_start=8764
// OP_STATE	5381	8764	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc9 = [68, army_painc10]
{
    ai_painforward(SECRET_1ST_DOWN);
};

// army_painc10
// function begins at statement 14787, parm_start=8765
// OP_STATE	5383	8765	0
// OP_STORE_V	370	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc10 = [69, army_painc11]
{
    ai_painforward(AS_MELEE);
};

// army_painc11
// function begins at statement 14791, parm_start=8766
// OP_STATE	5384	8766	0
// OP_STORE_V	314	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc11 = [70, army_painc12]
{
    ai_painforward(TE_LIGHTNING2);
};

// army_painc12
// function begins at statement 14795, parm_start=8767
// OP_STATE	5386	8767	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () army_painc12 = [71, army_painc13]
{
    ai_painforward(SECRET_NO_SHOOT);
};

// army_painc13
// function begins at statement 14799, parm_start=8768
// OP_STATE	5388	8714	0
// OP_DONE	0	0	0
void () army_painc13 = [72, army_run1]
{
};

// army_pain
// function begins at statement 14801, parm_start=8769
// OP_LOAD_F	28	374	8772
// OP_GT	8772	31	8773
// OP_IFNOT	8773	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	8771	0
// OP_LT	8771	836	8774
// OP_IFNOT	8774	12	0
// OP_ADDRESS	28	374	8775
// OP_ADD_F	31	1959	8776
// OP_STOREP_F	8776	8775	0
// OP_CALL0	8735	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8777	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	24	0	0
// OP_LT	8771	1959	8778
// OP_IFNOT	8778	12	0
// OP_ADDRESS	28	374	8779
// OP_ADD_F	31	8780	8781
// OP_STOREP_F	8781	8779	0
// OP_CALL0	8741	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8782	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	374	8783
// OP_ADD_F	31	8780	8784
// OP_STOREP_F	8784	8783	0
// OP_CALL0	8755	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8782	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) army_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    r = random();
    if(r < 0.2)
    {
        self.pain_finished = time + 0.6;
        army_pain1();
        sound(self, CHAN_VOICE, "soldier/pain1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    }
    else
    {
        if(r < 0.6)
        {
            self.pain_finished = time + 1.1;
            army_painb1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        }
        else
        {
            self.pain_finished = time + 1.1;
            army_painc1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        }
        
    }
    
};

// army_fire
// function begins at statement 14844, parm_start=8785
// OP_CALL0	758	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8789	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	28	181	8790
// OP_STORE_ENT	8790	8788	0
// OP_LOAD_V	8788	105	8791
// OP_LOAD_V	8788	113	8794
// OP_MUL_VF	8794	836	8797
// OP_SUB_V	8791	8797	8800
// OP_STORE_V	8800	8785	0
// OP_LOAD_V	28	105	8803
// OP_SUB_V	8785	8803	8806
// OP_STORE_V	8806	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	8785	0
// OP_STORE_V	6076	4	0
// OP_STORE_V	8785	7	0
// OP_STORE_V	8809	10	0
// OP_CALL3	2823	0	0
// OP_DONE	0	0	0
void () army_fire = 
{
    local vector dir;
    local entity en;
    ai_face();
    sound(self, CHAN_WEAPON, "soldier/sattck1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    en = self.enemy;
    dir = en.origin - (en.velocity * 0.2);
    dir = normalize(dir - self.origin);
    FireBullets(SECRET_1ST_DOWN, dir, '0.1 0.1 0');
};

// army_die1
// function begins at statement 14868, parm_start=8813
// OP_STATE	6077	8813	0
// OP_DONE	0	0	0
void () army_die1 = [8, army_die2]
{
};

// army_die2
// function begins at statement 14870, parm_start=8814
// OP_STATE	317	8814	0
// OP_DONE	0	0	0
void () army_die2 = [9, army_die3]
{
};

// army_die3
// function begins at statement 14872, parm_start=8815
// OP_STATE	318	8815	0
// OP_ADDRESS	28	104	8816
// OP_STOREP_F	237	8816	0
// OP_ADDRESS	28	158	8817
// OP_STOREP_F	313	8817	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
void () army_die3 = [10, army_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = TE_LIGHTNING1;
    DropBackpack();
};

// army_die4
// function begins at statement 14879, parm_start=8818
// OP_STATE	319	8818	0
// OP_DONE	0	0	0
void () army_die4 = [11, army_die5]
{
};

// army_die5
// function begins at statement 14881, parm_start=8819
// OP_STATE	2250	8819	0
// OP_DONE	0	0	0
void () army_die5 = [12, army_die6]
{
};

// army_die6
// function begins at statement 14883, parm_start=8820
// OP_STATE	7768	8820	0
// OP_DONE	0	0	0
void () army_die6 = [13, army_die7]
{
};

// army_die7
// function begins at statement 14885, parm_start=8821
// OP_STATE	2901	8821	0
// OP_DONE	0	0	0
void () army_die7 = [14, army_die8]
{
};

// army_die8
// function begins at statement 14887, parm_start=8822
// OP_STATE	1876	8822	0
// OP_DONE	0	0	0
void () army_die8 = [15, army_die9]
{
};

// army_die9
// function begins at statement 14889, parm_start=8823
// OP_STATE	6078	8823	0
// OP_DONE	0	0	0
void () army_die9 = [16, army_die10]
{
};

// army_die10
// function begins at statement 14891, parm_start=8824
// OP_STATE	4861	8823	0
// OP_DONE	0	0	0
void () army_die10 = [17, army_die10]
{
};

// army_cdie1
// function begins at statement 14893, parm_start=8825
// OP_STATE	3319	8825	0
// OP_DONE	0	0	0
void () army_cdie1 = [18, army_cdie2]
{
};

// army_cdie2
// function begins at statement 14895, parm_start=8826
// OP_STATE	7776	8826	0
// OP_STORE_V	313	4	0
// OP_CALL1	1341	0	0
// OP_DONE	0	0	0
void () army_cdie2 = [19, army_cdie3]
{
    ai_back(TE_LIGHTNING1);
};

// army_cdie3
// function begins at statement 14899, parm_start=8827
// OP_STATE	894	8827	0
// OP_ADDRESS	28	104	8828
// OP_STOREP_F	237	8828	0
// OP_ADDRESS	28	158	8829
// OP_STOREP_F	313	8829	0
// OP_CALL0	2535	0	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1341	0	0
// OP_DONE	0	0	0
void () army_cdie3 = [20, army_cdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = TE_LIGHTNING1;
    DropBackpack();
    ai_back(SECRET_1ST_DOWN);
};

// army_cdie4
// function begins at statement 14908, parm_start=8830
// OP_STATE	7779	8830	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1341	0	0
// OP_DONE	0	0	0
void () army_cdie4 = [21, army_cdie5]
{
    ai_back(13);
};

// army_cdie5
// function begins at statement 14912, parm_start=8831
// OP_STATE	7781	8831	0
// OP_STORE_V	370	4	0
// OP_CALL1	1341	0	0
// OP_DONE	0	0	0
void () army_cdie5 = [22, army_cdie6]
{
    ai_back(AS_MELEE);
};

// army_cdie6
// function begins at statement 14916, parm_start=8832
// OP_STATE	301	8832	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1341	0	0
// OP_DONE	0	0	0
void () army_cdie6 = [23, army_cdie7]
{
    ai_back(SECRET_1ST_DOWN);
};

// army_cdie7
// function begins at statement 14920, parm_start=8833
// OP_STATE	4437	8833	0
// OP_DONE	0	0	0
void () army_cdie7 = [24, army_cdie8]
{
};

// army_cdie8
// function begins at statement 14922, parm_start=8834
// OP_STATE	1890	8834	0
// OP_DONE	0	0	0
void () army_cdie8 = [25, army_cdie9]
{
};

// army_cdie9
// function begins at statement 14924, parm_start=8835
// OP_STATE	7788	8835	0
// OP_DONE	0	0	0
void () army_cdie9 = [26, army_cdie10]
{
};

// army_cdie10
// function begins at statement 14926, parm_start=8836
// OP_STATE	302	8836	0
// OP_DONE	0	0	0
void () army_cdie10 = [27, army_cdie11]
{
};

// army_cdie11
// function begins at statement 14928, parm_start=8837
// OP_STATE	303	8836	0
// OP_DONE	0	0	0
void () army_cdie11 = [28, army_cdie11]
{
};

// army_die
// function begins at statement 14930, parm_start=8838
// OP_LOAD_F	28	152	8838
// OP_LT	8838	8839	8840
// OP_IFNOT	8840	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	8842
// OP_STORE_V	8841	4	0
// OP_STORE_V	8842	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	8843
// OP_STORE_V	3852	4	0
// OP_STORE_V	8843	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	8844
// OP_STORE_V	3853	4	0
// OP_STORE_V	8844	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	8845
// OP_STORE_V	3854	4	0
// OP_STORE_V	8845	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8846	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_LT	1	1491	8847
// OP_IFNOT	8847	3	0
// OP_CALL0	8812	0	0
// OP_GOTO	2	0	0
// OP_CALL0	8824	0	0
// OP_DONE	0	0	0
void () army_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        ThrowHead("progs/h_guard.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "soldier/death1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(random() < 0.5)
    {
        army_die1();
    }
    else
    {
        army_cdie1();
    }
    
};

// monster_army
// function begins at statement 14969, parm_start=8849
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8849	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8841	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	3852	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	3853	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	3854	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8846	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8691	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8777	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8782	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8789	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1288	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3826	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	8850
// OP_STOREP_F	240	8850	0
// OP_ADDRESS	28	103	8851
// OP_STOREP_F	229	8851	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8849	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	8852
// OP_STOREP_F	304	8852	0
// OP_ADDRESS	28	356	8853
// OP_STOREP_FNC	8680	8853	0
// OP_ADDRESS	28	357	8854
// OP_STOREP_FNC	8688	8854	0
// OP_ADDRESS	28	358	8855
// OP_STOREP_FNC	8714	8855	0
// OP_ADDRESS	28	359	8856
// OP_STOREP_FNC	8723	8856	0
// OP_ADDRESS	28	361	8857
// OP_STOREP_FNC	8768	8857	0
// OP_ADDRESS	28	362	8858
// OP_STOREP_FNC	8837	8858	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
void () monster_army = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/soldier.mdl");
    precache_model("progs/h_guard.mdl");
    precache_model("progs/gib1.mdl");
    precache_model("progs/gib2.mdl");
    precache_model("progs/gib3.mdl");
    precache_sound("soldier/death1.wav");
    precache_sound("soldier/idle.wav");
    precache_sound("soldier/pain1.wav");
    precache_sound("soldier/pain2.wav");
    precache_sound("soldier/sattck1.wav");
    precache_sound("soldier/sight1.wav");
    precache_sound("player/udeath.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/soldier.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = SVC_INTERMISSION;
    self.th_stand = army_stand1;
    self.th_walk = army_walk1;
    self.th_run = army_run1;
    self.th_missile = army_atk1;
    self.th_pain = army_pain;
    self.th_die = army_die;
    walkmonster_start();
};

