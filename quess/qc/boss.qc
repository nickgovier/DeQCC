void (vector p) boss_missile;
// boss_face
// function begins at statement 17681, parm_start=10587
// OP_LOAD_ENT	28	181	10587
// OP_LOAD_F	10587	152	10588
// OP_LE	10588	650	10589
// OP_CALL0	453	0	0
// OP_LT	1	3015	10590
// OP_OR	10589	10590	10591
// OP_IFNOT	10591	18	0
// OP_ADDRESS	28	181	10592
// OP_LOAD_ENT	28	181	10593
// OP_STORE_V	10593	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STOREP_ENT	1	10592	0
// OP_LOAD_ENT	28	181	10594
// OP_NOT_ENT	10594	0	10595
// OP_IFNOT	10595	8	0
// OP_ADDRESS	28	181	10596
// OP_LOAD_ENT	28	181	10597
// OP_STORE_V	10597	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STOREP_ENT	1	10596	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () boss_face = 
{
    
    if((self.enemy.health <= 0) || (random() < 0.02))
    {
        self.enemy = find(self.enemy, classname, "player");
        
        if(!self.enemy)
        {
            self.enemy = find(self.enemy, classname, "player");
        }
        
    }
    
    ai_face();
};

// boss_rise1
// function begins at statement 17707, parm_start=10599
// OP_STATE	650	10599	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10600	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () boss_rise1 = [0, boss_rise2]
{
    sound(self, CHAN_WEAPON, "boss1/out1.wav", 1, ATTN_NORM);
};

// boss_rise2
// function begins at statement 17715, parm_start=10601
// OP_STATE	708	10601	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10602	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () boss_rise2 = [1, boss_rise3]
{
    sound(self, CHAN_VOICE, "boss1/sight1.wav", 1, ATTN_NORM);
};

// boss_rise3
// function begins at statement 17723, parm_start=10603
// OP_STATE	929	10603	0
// OP_DONE	0	0	0
void () boss_rise3 = [2, boss_rise4]
{
};

// boss_rise4
// function begins at statement 17725, parm_start=10604
// OP_STATE	819	10604	0
// OP_DONE	0	0	0
void () boss_rise4 = [3, boss_rise5]
{
};

// boss_rise5
// function begins at statement 17727, parm_start=10605
// OP_STATE	1835	10605	0
// OP_DONE	0	0	0
void () boss_rise5 = [4, boss_rise6]
{
};

// boss_rise6
// function begins at statement 17729, parm_start=10606
// OP_STATE	1660	10606	0
// OP_DONE	0	0	0
void () boss_rise6 = [5, boss_rise7]
{
};

// boss_rise7
// function begins at statement 17731, parm_start=10607
// OP_STATE	2107	10607	0
// OP_DONE	0	0	0
void () boss_rise7 = [6, boss_rise8]
{
};

// boss_rise8
// function begins at statement 17733, parm_start=10608
// OP_STATE	2307	10608	0
// OP_DONE	0	0	0
void () boss_rise8 = [7, boss_rise9]
{
};

// boss_rise9
// function begins at statement 17735, parm_start=10609
// OP_STATE	1502	10609	0
// OP_DONE	0	0	0
void () boss_rise9 = [8, boss_rise10]
{
};

// boss_rise10
// function begins at statement 17737, parm_start=10610
// OP_STATE	3556	10610	0
// OP_DONE	0	0	0
void () boss_rise10 = [9, boss_rise11]
{
};

// boss_rise11
// function begins at statement 17739, parm_start=10611
// OP_STATE	1931	10611	0
// OP_DONE	0	0	0
void () boss_rise11 = [10, boss_rise12]
{
};

// boss_rise12
// function begins at statement 17741, parm_start=10612
// OP_STATE	3931	10612	0
// OP_DONE	0	0	0
void () boss_rise12 = [11, boss_rise13]
{
};

// boss_rise13
// function begins at statement 17743, parm_start=10613
// OP_STATE	2532	10613	0
// OP_DONE	0	0	0
void () boss_rise13 = [12, boss_rise14]
{
};

// boss_rise14
// function begins at statement 17745, parm_start=10614
// OP_STATE	8427	10614	0
// OP_DONE	0	0	0
void () boss_rise14 = [13, boss_rise15]
{
};

// boss_rise15
// function begins at statement 17747, parm_start=10615
// OP_STATE	3153	10615	0
// OP_DONE	0	0	0
void () boss_rise15 = [14, boss_rise16]
{
};

// boss_rise16
// function begins at statement 17749, parm_start=10616
// OP_STATE	2157	10616	0
// OP_DONE	0	0	0
void () boss_rise16 = [15, boss_rise17]
{
};

// boss_rise17
// function begins at statement 17751, parm_start=10617
// OP_STATE	3273	10617	0
// OP_DONE	0	0	0
void () boss_rise17 = [16, boss_missile1]
{
};

// boss_idle1
// function begins at statement 17753, parm_start=10619
// OP_STATE	5588	10619	0
// OP_DONE	0	0	0
void () boss_idle1 = [17, boss_idle2]
{
};

// boss_idle2
// function begins at statement 17755, parm_start=10620
// OP_STATE	3576	10620	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle2 = [18, boss_idle3]
{
    boss_face();
};

// boss_idle3
// function begins at statement 17758, parm_start=10621
// OP_STATE	8435	10621	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle3 = [19, boss_idle4]
{
    boss_face();
};

// boss_idle4
// function begins at statement 17761, parm_start=10622
// OP_STATE	1017	10622	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle4 = [20, boss_idle5]
{
    boss_face();
};

// boss_idle5
// function begins at statement 17764, parm_start=10623
// OP_STATE	8438	10623	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle5 = [21, boss_idle6]
{
    boss_face();
};

// boss_idle6
// function begins at statement 17767, parm_start=10624
// OP_STATE	8440	10624	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle6 = [22, boss_idle7]
{
    boss_face();
};

// boss_idle7
// function begins at statement 17770, parm_start=10625
// OP_STATE	8442	10625	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle7 = [23, boss_idle8]
{
    boss_face();
};

// boss_idle8
// function begins at statement 17773, parm_start=10626
// OP_STATE	4969	10626	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle8 = [24, boss_idle9]
{
    boss_face();
};

// boss_idle9
// function begins at statement 17776, parm_start=10627
// OP_STATE	2171	10627	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle9 = [25, boss_idle10]
{
    boss_face();
};

// boss_idle10
// function begins at statement 17779, parm_start=10628
// OP_STATE	8446	10628	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle10 = [26, boss_idle11]
{
    boss_face();
};

// boss_idle11
// function begins at statement 17782, parm_start=10629
// OP_STATE	8448	10629	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle11 = [27, boss_idle12]
{
    boss_face();
};

// boss_idle12
// function begins at statement 17785, parm_start=10630
// OP_STATE	8450	10630	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle12 = [28, boss_idle13]
{
    boss_face();
};

// boss_idle13
// function begins at statement 17788, parm_start=10631
// OP_STATE	5829	10631	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle13 = [29, boss_idle14]
{
    boss_face();
};

// boss_idle14
// function begins at statement 17791, parm_start=10632
// OP_STATE	1004	10632	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle14 = [30, boss_idle15]
{
    boss_face();
};

// boss_idle15
// function begins at statement 17794, parm_start=10633
// OP_STATE	3950	10633	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle15 = [31, boss_idle16]
{
    boss_face();
};

// boss_idle16
// function begins at statement 17797, parm_start=10634
// OP_STATE	959	10634	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle16 = [32, boss_idle17]
{
    boss_face();
};

// boss_idle17
// function begins at statement 17800, parm_start=10635
// OP_STATE	5835	10635	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle17 = [33, boss_idle18]
{
    boss_face();
};

// boss_idle18
// function begins at statement 17803, parm_start=10636
// OP_STATE	5837	10636	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle18 = [34, boss_idle19]
{
    boss_face();
};

// boss_idle19
// function begins at statement 17806, parm_start=10637
// OP_STATE	3325	10637	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle19 = [35, boss_idle20]
{
    boss_face();
};

// boss_idle20
// function begins at statement 17809, parm_start=10638
// OP_STATE	5820	10638	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle20 = [36, boss_idle21]
{
    boss_face();
};

// boss_idle21
// function begins at statement 17812, parm_start=10639
// OP_STATE	5822	10639	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle21 = [37, boss_idle22]
{
    boss_face();
};

// boss_idle22
// function begins at statement 17815, parm_start=10640
// OP_STATE	5824	10640	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle22 = [38, boss_idle23]
{
    boss_face();
};

// boss_idle23
// function begins at statement 17818, parm_start=10641
// OP_STATE	5826	10641	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle23 = [39, boss_idle24]
{
    boss_face();
};

// boss_idle24
// function begins at statement 17821, parm_start=10642
// OP_STATE	2007	10642	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle24 = [40, boss_idle25]
{
    boss_face();
};

// boss_idle25
// function begins at statement 17824, parm_start=10643
// OP_STATE	6160	10643	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle25 = [41, boss_idle26]
{
    boss_face();
};

// boss_idle26
// function begins at statement 17827, parm_start=10644
// OP_STATE	6162	10644	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle26 = [42, boss_idle27]
{
    boss_face();
};

// boss_idle27
// function begins at statement 17830, parm_start=10645
// OP_STATE	6164	10645	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle27 = [43, boss_idle28]
{
    boss_face();
};

// boss_idle28
// function begins at statement 17833, parm_start=10646
// OP_STATE	6166	10646	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle28 = [44, boss_idle29]
{
    boss_face();
};

// boss_idle29
// function begins at statement 17836, parm_start=10647
// OP_STATE	1572	10647	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle29 = [45, boss_idle30]
{
    boss_face();
};

// boss_idle30
// function begins at statement 17839, parm_start=10648
// OP_STATE	6169	10648	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle30 = [46, boss_idle31]
{
    boss_face();
};

// boss_idle31
// function begins at statement 17842, parm_start=10649
// OP_STATE	6171	10618	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_idle31 = [47, boss_idle1]
{
    boss_face();
};

// boss_missile1
// function begins at statement 17845, parm_start=10649
// OP_STATE	6080	10649	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile1 = [57, boss_missile2]
{
    boss_face();
};

// boss_missile2
// function begins at statement 17848, parm_start=10650
// OP_STATE	6082	10650	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile2 = [58, boss_missile3]
{
    boss_face();
};

// boss_missile3
// function begins at statement 17851, parm_start=10651
// OP_STATE	6084	10651	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile3 = [59, boss_missile4]
{
    boss_face();
};

// boss_missile4
// function begins at statement 17854, parm_start=10652
// OP_STATE	1035	10652	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile4 = [60, boss_missile5]
{
    boss_face();
};

// boss_missile5
// function begins at statement 17857, parm_start=10653
// OP_STATE	6086	10653	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile5 = [61, boss_missile6]
{
    boss_face();
};

// boss_missile6
// function begins at statement 17860, parm_start=10654
// OP_STATE	6088	10654	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile6 = [62, boss_missile7]
{
    boss_face();
};

// boss_missile7
// function begins at statement 17863, parm_start=10655
// OP_STATE	4345	10655	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile7 = [63, boss_missile8]
{
    boss_face();
};

// boss_missile8
// function begins at statement 17866, parm_start=10656
// OP_STATE	1684	10656	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile8 = [64, boss_missile9]
{
    boss_face();
};

// boss_missile9
// function begins at statement 17869, parm_start=10657
// OP_STATE	6092	10657	0
// OP_STORE_V	10658	4	0
// OP_CALL1	10585	0	0
// OP_DONE	0	0	0
void () boss_missile9 = [65, boss_missile10]
{
    boss_missile('100 100 200');
};

// boss_missile10
// function begins at statement 17873, parm_start=10661
// OP_STATE	6094	10661	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile10 = [66, boss_missile11]
{
    boss_face();
};

// boss_missile11
// function begins at statement 17876, parm_start=10662
// OP_STATE	6096	10662	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile11 = [67, boss_missile12]
{
    boss_face();
};

// boss_missile12
// function begins at statement 17879, parm_start=10663
// OP_STATE	6098	10663	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile12 = [68, boss_missile13]
{
    boss_face();
};

// boss_missile13
// function begins at statement 17882, parm_start=10664
// OP_STATE	6100	10664	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile13 = [69, boss_missile14]
{
    boss_face();
};

// boss_missile14
// function begins at statement 17885, parm_start=10665
// OP_STATE	6101	10665	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile14 = [70, boss_missile15]
{
    boss_face();
};

// boss_missile15
// function begins at statement 17888, parm_start=10666
// OP_STATE	6103	10666	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile15 = [71, boss_missile16]
{
    boss_face();
};

// boss_missile16
// function begins at statement 17891, parm_start=10667
// OP_STATE	6105	10667	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile16 = [72, boss_missile17]
{
    boss_face();
};

// boss_missile17
// function begins at statement 17894, parm_start=10668
// OP_STATE	2988	10668	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile17 = [73, boss_missile18]
{
    boss_face();
};

// boss_missile18
// function begins at statement 17897, parm_start=10669
// OP_STATE	6108	10669	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile18 = [74, boss_missile19]
{
    boss_face();
};

// boss_missile19
// function begins at statement 17900, parm_start=10670
// OP_STATE	6110	10670	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile19 = [75, boss_missile20]
{
    boss_face();
};

// boss_missile20
// function begins at statement 17903, parm_start=10671
// OP_STATE	6112	10671	0
// OP_STORE_V	10672	4	0
// OP_CALL1	10585	0	0
// OP_DONE	0	0	0
void () boss_missile20 = [76, boss_missile21]
{
    boss_missile('100 -100 200');
};

// boss_missile21
// function begins at statement 17907, parm_start=10675
// OP_STATE	6114	10675	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile21 = [77, boss_missile22]
{
    boss_face();
};

// boss_missile22
// function begins at statement 17910, parm_start=10676
// OP_STATE	6116	10676	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile22 = [78, boss_missile23]
{
    boss_face();
};

// boss_missile23
// function begins at statement 17913, parm_start=10677
// OP_STATE	6118	10617	0
// OP_CALL0	10586	0	0
// OP_DONE	0	0	0
void () boss_missile23 = [79, boss_missile1]
{
    boss_face();
};

// boss_shocka1
// function begins at statement 17916, parm_start=10678
// OP_STATE	874	10678	0
// OP_DONE	0	0	0
void () boss_shocka1 = [80, boss_shocka2]
{
};

// boss_shocka2
// function begins at statement 17918, parm_start=10679
// OP_STATE	6121	10679	0
// OP_DONE	0	0	0
void () boss_shocka2 = [81, boss_shocka3]
{
};

// boss_shocka3
// function begins at statement 17920, parm_start=10680
// OP_STATE	6123	10680	0
// OP_DONE	0	0	0
void () boss_shocka3 = [82, boss_shocka4]
{
};

// boss_shocka4
// function begins at statement 17922, parm_start=10681
// OP_STATE	6125	10681	0
// OP_DONE	0	0	0
void () boss_shocka4 = [83, boss_shocka5]
{
};

// boss_shocka5
// function begins at statement 17924, parm_start=10682
// OP_STATE	6127	10682	0
// OP_DONE	0	0	0
void () boss_shocka5 = [84, boss_shocka6]
{
};

// boss_shocka6
// function begins at statement 17926, parm_start=10683
// OP_STATE	6128	10683	0
// OP_DONE	0	0	0
void () boss_shocka6 = [85, boss_shocka7]
{
};

// boss_shocka7
// function begins at statement 17928, parm_start=10684
// OP_STATE	6130	10684	0
// OP_DONE	0	0	0
void () boss_shocka7 = [86, boss_shocka8]
{
};

// boss_shocka8
// function begins at statement 17930, parm_start=10685
// OP_STATE	6132	10685	0
// OP_DONE	0	0	0
void () boss_shocka8 = [87, boss_shocka9]
{
};

// boss_shocka9
// function begins at statement 17932, parm_start=10686
// OP_STATE	6134	10686	0
// OP_DONE	0	0	0
void () boss_shocka9 = [88, boss_shocka10]
{
};

// boss_shocka10
// function begins at statement 17934, parm_start=10687
// OP_STATE	6136	10617	0
// OP_DONE	0	0	0
void () boss_shocka10 = [89, boss_missile1]
{
};

// boss_shockb1
// function begins at statement 17936, parm_start=10688
// OP_STATE	1608	10688	0
// OP_DONE	0	0	0
void () boss_shockb1 = [90, boss_shockb2]
{
};

// boss_shockb2
// function begins at statement 17938, parm_start=10689
// OP_STATE	6139	10689	0
// OP_DONE	0	0	0
void () boss_shockb2 = [91, boss_shockb3]
{
};

// boss_shockb3
// function begins at statement 17940, parm_start=10690
// OP_STATE	6141	10690	0
// OP_DONE	0	0	0
void () boss_shockb3 = [92, boss_shockb4]
{
};

// boss_shockb4
// function begins at statement 17942, parm_start=10691
// OP_STATE	6143	10691	0
// OP_DONE	0	0	0
void () boss_shockb4 = [93, boss_shockb5]
{
};

// boss_shockb5
// function begins at statement 17944, parm_start=10692
// OP_STATE	6144	10692	0
// OP_DONE	0	0	0
void () boss_shockb5 = [94, boss_shockb6]
{
};

// boss_shockb6
// function begins at statement 17946, parm_start=10693
// OP_STATE	6146	10693	0
// OP_DONE	0	0	0
void () boss_shockb6 = [95, boss_shockb7]
{
};

// boss_shockb7
// function begins at statement 17948, parm_start=10694
// OP_STATE	1608	10694	0
// OP_DONE	0	0	0
void () boss_shockb7 = [90, boss_shockb8]
{
};

// boss_shockb8
// function begins at statement 17950, parm_start=10695
// OP_STATE	6139	10695	0
// OP_DONE	0	0	0
void () boss_shockb8 = [91, boss_shockb9]
{
};

// boss_shockb9
// function begins at statement 17952, parm_start=10696
// OP_STATE	6141	10696	0
// OP_DONE	0	0	0
void () boss_shockb9 = [92, boss_shockb10]
{
};

// boss_shockb10
// function begins at statement 17954, parm_start=10697
// OP_STATE	6143	10617	0
// OP_DONE	0	0	0
void () boss_shockb10 = [93, boss_missile1]
{
};

// boss_shockc1
// function begins at statement 17956, parm_start=10698
// OP_STATE	6148	10698	0
// OP_DONE	0	0	0
void () boss_shockc1 = [96, boss_shockc2]
{
};

// boss_shockc2
// function begins at statement 17958, parm_start=10699
// OP_STATE	6150	10699	0
// OP_DONE	0	0	0
void () boss_shockc2 = [97, boss_shockc3]
{
};

// boss_shockc3
// function begins at statement 17960, parm_start=10700
// OP_STATE	6152	10700	0
// OP_DONE	0	0	0
void () boss_shockc3 = [98, boss_shockc4]
{
};

// boss_shockc4
// function begins at statement 17962, parm_start=10701
// OP_STATE	6154	10701	0
// OP_DONE	0	0	0
void () boss_shockc4 = [99, boss_shockc5]
{
};

// boss_shockc5
// function begins at statement 17964, parm_start=10702
// OP_STATE	2165	10702	0
// OP_DONE	0	0	0
void () boss_shockc5 = [100, boss_shockc6]
{
};

// boss_shockc6
// function begins at statement 17966, parm_start=10703
// OP_STATE	6157	10703	0
// OP_DONE	0	0	0
void () boss_shockc6 = [101, boss_shockc7]
{
};

// boss_shockc7
// function begins at statement 17968, parm_start=10704
// OP_STATE	6159	10704	0
// OP_DONE	0	0	0
void () boss_shockc7 = [102, boss_shockc8]
{
};

// boss_shockc8
// function begins at statement 17970, parm_start=10705
// OP_STATE	5699	10705	0
// OP_DONE	0	0	0
void () boss_shockc8 = [103, boss_shockc9]
{
};

// boss_shockc9
// function begins at statement 17972, parm_start=10706
// OP_STATE	5714	10706	0
// OP_DONE	0	0	0
void () boss_shockc9 = [104, boss_shockc10]
{
};

// boss_shockc10
// function begins at statement 17974, parm_start=10707
// OP_STATE	5728	10707	0
// OP_DONE	0	0	0
void () boss_shockc10 = [105, boss_death1]
{
};

// boss_death1
// function begins at statement 17976, parm_start=10708
// OP_STATE	6173	10708	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4320	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () boss_death1 = [48, boss_death2]
{
    sound(self, CHAN_VOICE, "boss1/death.wav", 1, ATTN_NORM);
};

// boss_death2
// function begins at statement 17984, parm_start=10709
// OP_STATE	6175	10709	0
// OP_DONE	0	0	0
void () boss_death2 = [49, boss_death3]
{
};

// boss_death3
// function begins at statement 17986, parm_start=10710
// OP_STATE	2509	10710	0
// OP_DONE	0	0	0
void () boss_death3 = [50, boss_death4]
{
};

// boss_death4
// function begins at statement 17988, parm_start=10711
// OP_STATE	6068	10711	0
// OP_DONE	0	0	0
void () boss_death4 = [51, boss_death5]
{
};

// boss_death5
// function begins at statement 17990, parm_start=10712
// OP_STATE	6070	10712	0
// OP_DONE	0	0	0
void () boss_death5 = [52, boss_death6]
{
};

// boss_death6
// function begins at statement 17992, parm_start=10713
// OP_STATE	6072	10713	0
// OP_DONE	0	0	0
void () boss_death6 = [53, boss_death7]
{
};

// boss_death7
// function begins at statement 17994, parm_start=10714
// OP_STATE	6074	10714	0
// OP_DONE	0	0	0
void () boss_death7 = [54, boss_death8]
{
};

// boss_death8
// function begins at statement 17996, parm_start=10715
// OP_STATE	6076	10715	0
// OP_DONE	0	0	0
void () boss_death8 = [55, boss_death9]
{
};

// boss_death9
// function begins at statement 17998, parm_start=10716
// OP_STATE	6078	10716	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	10600	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	10717
// OP_STORE_V	10717	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	10718
// OP_STORE_V	10718	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	10719
// OP_STORE_V	10719	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () boss_death9 = [56, boss_death10]
{
    sound(self, CHAN_BODY, "boss1/out1.wav", 1, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
};

// boss_death10
// function begins at statement 18024, parm_start=10720
// OP_STATE	6078	10716	0
// OP_ADD_F	42	708	10720
// OP_STORE_F	10720	42	0
// OP_STORE_V	340	4	0
// OP_STORE_V	303	7	0
// OP_CALL2	494	0	0
// OP_CALL0	519	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () boss_death10 = [56, boss_death10]
{
    killed_monsters = killed_monsters + 1;
    WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    SUB_UseTargets();
    remove(self);
};

// boss_missile
// function begins at statement 18034, parm_start=10721
// OP_LOAD_ENT	28	181	10737
// OP_LOAD_V	10737	105	10738
// OP_LOAD_V	28	105	10741
// OP_SUB_V	10738	10741	10744
// OP_STORE_V	10744	4	0
// OP_CALL1	493	0	0
// OP_STORE_V	1	10724	0
// OP_STORE_V	10724	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	10747
// OP_MUL_FV	10721	59	10750
// OP_ADD_V	10747	10750	10753
// OP_MUL_FV	10722	65	10756
// OP_ADD_V	10753	10756	10759
// OP_MUL_FV	10723	613	10762
// OP_ADD_V	10759	10762	10765
// OP_STORE_V	10765	10727	0
// OP_GT	350	708	10768
// OP_IFNOT	10768	18	0
// OP_LOAD_ENT	28	181	10769
// OP_LOAD_V	10769	105	10770
// OP_SUB_V	10770	10727	10773
// OP_STORE_V	10773	4	0
// OP_CALL1	458	0	0
// OP_DIV_F	1	2845	10776
// OP_STORE_F	10776	10736	0
// OP_LOAD_ENT	28	181	10777
// OP_LOAD_V	10777	113	10778
// OP_STORE_V	10778	10730	0
// OP_STORE_F	650	10732	0
// OP_LOAD_ENT	28	181	10781
// OP_LOAD_V	10781	105	10782
// OP_MUL_FV	10736	10730	10785
// OP_ADD_V	10782	10785	10788
// OP_STORE_V	10788	10733	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	10791
// OP_LOAD_V	10791	105	10792
// OP_STORE_V	10792	10733	0
// OP_SUB_V	10733	10727	10795
// OP_STORE_V	10795	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	10730	0
// OP_STORE_V	10727	4	0
// OP_STORE_V	10730	7	0
// OP_CALL2	3460	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	4330	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	346	121	10798
// OP_STOREP_V	10801	10798	0
// OP_STORE_V	346	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	346	113	10804
// OP_MUL_VF	10730	2845	10807
// OP_STOREP_V	10807	10804	0
// OP_ADDRESS	346	146	10810
// OP_STOREP_FNC	1716	10810	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10811	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_ENT	28	181	10812
// OP_LOAD_F	10812	152	10813
// OP_LE	10813	650	10814
// OP_IFNOT	10814	2	0
// OP_CALL0	10618	0	0
// OP_DONE	0	0	0
void (vector p) boss_missile = 
{
    local vector offang;
    local vector org;
    local vector vec;
    local vector d;
    local float t;
    offang = vectoangles(self.enemy.origin - self.origin);
    makevectors(offang);
    org = ((self.origin + (p_x * v_forward)) + (p_y * v_right)) + (p_z * '0 0 1');
    if(skill > 1)
    {
        t = (vlen(self.enemy.origin - org)) / 300;
        vec = self.enemy.velocity;
        vec_z = 0;
        d = self.enemy.origin + (t * vec);
    }
    else
    {
        d = self.enemy.origin;
    }
    
    vec = normalize(d - org);
    launch_spike(org, vec);
    setmodel(newmis, "progs/lavaball.mdl");
    newmis.avelocity = '200 100 300';
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 300;
    newmis.touch = T_MissileTouch;
    sound(self, CHAN_WEAPON, "boss1/throw.wav", 1, ATTN_NORM);
    
    if(self.enemy.health <= 0)
    {
        boss_idle1();
    }
    
};

// boss_awake
// function begins at statement 18106, parm_start=10816
// OP_ADDRESS	28	104	10816
// OP_STOREP_F	241	10816	0
// OP_ADDRESS	28	103	10817
// OP_STOREP_F	230	10817	0
// OP_ADDRESS	28	163	10818
// OP_STOREP_F	251	10818	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10819	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10820	7	0
// OP_STORE_V	10823	10	0
// OP_CALL3	451	0	0
// OP_EQ_F	350	650	10826
// OP_IFNOT	10826	4	0
// OP_ADDRESS	28	152	10827
// OP_STOREP_F	708	10827	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	152	10828
// OP_STOREP_F	819	10828	0
// OP_ADDRESS	28	181	10829
// OP_STOREP_ENT	347	10829	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	10830
// OP_STORE_V	10830	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	10831
// OP_STORE_V	10831	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	10832
// OP_STORE_V	10832	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	192	10833
// OP_STOREP_F	1017	10833	0
// OP_CALL0	10598	0	0
// OP_DONE	0	0	0
void () boss_awake = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_NO;
    setmodel(self, "progs/boss.mdl");
    setsize(self, '-128 -128 -24', '128 128 256');
    if(skill == 0)
    {
        self.health = 1;
    }
    else
    {
        self.health = 3;
    }
    
    self.enemy = activator;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.yaw_speed = 20;
    boss_rise1();
};

// monster_boss
// function begins at statement 18150, parm_start=10835
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10819	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	4330	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2866	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10600	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10602	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4263	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10811	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10835	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4320	4	0
// OP_CALL1	465	0	0
// OP_ADD_F	40	708	10836
// OP_STORE_F	10836	40	0
// OP_ADDRESS	28	147	10837
// OP_STOREP_FNC	10815	10837	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/boss.mdl");
    precache_model("progs/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + 1;
    self.use = boss_awake;
};

entity le1;
entity le2;
float lightning_end;
// lightning_fire
// function begins at statement 18177, parm_start=10842
// OP_GE	31	10840	10848
// OP_IFNOT	10848	6	0
// OP_STORE_ENT	10838	28	0
// OP_CALL0	6343	0	0
// OP_STORE_ENT	10839	28	0
// OP_CALL0	6343	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	10838	134	10849
// OP_LOAD_V	10838	138	10852
// OP_ADD_V	10849	10852	10855
// OP_MUL_VF	10855	1727	10858
// OP_STORE_V	10858	10842	0
// OP_LOAD_F	10838	97	10861
// OP_SUB_F	10861	3273	10862
// OP_STORE_F	10862	10844	0
// OP_LOAD_V	10839	134	10863
// OP_LOAD_V	10839	138	10866
// OP_ADD_V	10863	10866	10869
// OP_MUL_VF	10869	1727	10872
// OP_STORE_V	10872	10845	0
// OP_LOAD_F	10839	97	10875
// OP_SUB_F	10875	3273	10876
// OP_STORE_F	10876	10847	0
// OP_SUB_V	10845	10842	10877
// OP_STORE_V	10877	4	0
// OP_CALL1	455	0	0
// OP_MUL_VF	1	2165	10880
// OP_SUB_V	10845	10880	10883
// OP_STORE_V	10883	10845	0
// OP_ADDRESS	28	150	10886
// OP_ADD_F	31	686	10887
// OP_STOREP_F	10887	10886	0
// OP_ADDRESS	28	148	10888
// OP_STOREP_FNC	10841	10888	0
// OP_STORE_V	340	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	501	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10842	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10843	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10844	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10845	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10846	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	10847	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () lightning_fire = 
{
    local vector p1;
    local vector p2;
    
    if(time >= lightning_end)
    {
        self = le1;
        door_go_down();
        self = le2;
        door_go_down();
        return;
    }
    
    p1 = (le1.mins + le1.maxs) * 0.5;
    p1_z = le1.absmin_z - 16;
    p2 = (le2.mins + le2.maxs) * 0.5;
    p2_z = le2.absmin_z - 16;
    p2 = p2 - ((normalize(p2 - p1)) * 100);
    self.nextthink = time + 0.1;
    self.think = lightning_fire;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, p1_x);
    WriteCoord(MSG_ALL, p1_y);
    WriteCoord(MSG_ALL, p1_z);
    WriteCoord(MSG_ALL, p2_x);
    WriteCoord(MSG_ALL, p2_y);
    WriteCoord(MSG_ALL, p2_z);
};

// lightning_use
// function begins at statement 18239, parm_start=10890
// OP_ADD_F	31	708	10890
// OP_GE	10840	10890	10891
// OP_IFNOT	10891	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	10892	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	10838	0
// OP_STORE_V	10838	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	10892	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	10839	0
// OP_NOT_ENT	10838	0	10893
// OP_NOT_ENT	10839	0	10894
// OP_OR	10893	10894	10895
// OP_IFNOT	10895	4	0
// OP_STORE_V	10896	4	0
// OP_CALL1	471	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	10838	434	10897
// OP_NE_F	10897	283	10898
// OP_LOAD_F	10838	434	10899
// OP_NE_F	10899	284	10900
// OP_AND	10898	10900	10901
// OP_LOAD_F	10839	434	10902
// OP_NE_F	10902	283	10903
// OP_LOAD_F	10839	434	10904
// OP_NE_F	10904	284	10905
// OP_AND	10903	10905	10906
// OP_OR	10901	10906	10907
// OP_LOAD_F	10838	434	10908
// OP_LOAD_F	10839	434	10909
// OP_NE_F	10908	10909	10910
// OP_OR	10907	10910	10911
// OP_IFNOT	10911	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	10838	150	10912
// OP_STOREP_F	720	10912	0
// OP_ADDRESS	10839	150	10913
// OP_STOREP_F	720	10913	0
// OP_ADD_F	31	708	10914
// OP_STORE_F	10914	10840	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4263	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	10841	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	10915	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	10916
// OP_IFNOT	10916	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10917
// OP_STOREP_ENT	347	10917	0
// OP_LOAD_F	10838	434	10918
// OP_EQ_F	10918	283	10919
// OP_LOAD_F	28	152	10920
// OP_GT	10920	650	10921
// OP_AND	10919	10921	10922
// OP_IFNOT	10922	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10835	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	152	10923
// OP_LOAD_F	28	152	10924
// OP_SUB_F	10924	708	10925
// OP_STOREP_F	10925	10923	0
// OP_LOAD_F	28	152	10926
// OP_GE	10926	929	10927
// OP_IFNOT	10927	3	0
// OP_CALL0	10677	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	10928
// OP_EQ_F	10928	708	10929
// OP_IFNOT	10929	3	0
// OP_CALL0	10687	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	10930
// OP_EQ_F	10930	650	10931
// OP_IFNOT	10931	2	0
// OP_CALL0	10697	0	0
// OP_DONE	0	0	0
void () lightning_use = 
{
    
    if(lightning_end >= (time + 1))
    {
        return;
    }
    
    le1 = find(world, target, "lightning");
    le2 = find(le1, target, "lightning");
    
    if(!le1 || !le2)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((le1.state != STATE_TOP) && (le1.state != STATE_BOTTOM)) || ((le2.state != STATE_TOP) && (le2.state != STATE_BOTTOM))) || (le1.state != le2.state))
    {
        return;
    }
    
    le1.nextthink = -1;
    le2.nextthink = -1;
    lightning_end = time + 1;
    sound(self, CHAN_VOICE, "misc/power.wav", 1, ATTN_NORM);
    lightning_fire();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((le1.state == STATE_TOP) && (self.health > 0))
    {
        sound(self, CHAN_VOICE, "boss1/pain.wav", 1, ATTN_NORM);
        self.health = self.health - 1;
        if(self.health >= 2)
        {
            boss_shocka1();
        }
        else
        {
            if(self.health == 1)
            {
                boss_shockb1();
            }
            else
            {
                
                if(self.health == 0)
                {
                    boss_shockc1();
                }
                
            }
            
        }
        
    }
    
};

// event_lightning
// function begins at statement 18331, parm_start=10933
// OP_ADDRESS	28	147	10933
// OP_STOREP_FNC	10889	10933	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = lightning_use;
};

