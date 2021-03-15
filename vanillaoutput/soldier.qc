
void () army_fire;

// function army_stand1
// function number 924 begins at statement 14507
/*
 * OP_STATE	337	8681	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand1 = [ 0.000, army_stand2 ] {

   ai_stand ();

};

// function army_stand2
// function number 925 begins at statement 14510
/*
 * OP_STATE	7368	8682	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand2 = [ 1.000, army_stand3 ] {

   ai_stand ();

};

// function army_stand3
// function number 926 begins at statement 14513
/*
 * OP_STATE	7369	8683	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand3 = [ 2.000, army_stand4 ] {

   ai_stand ();

};

// function army_stand4
// function number 927 begins at statement 14516
/*
 * OP_STATE	370	8684	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand4 = [ 3.000, army_stand5 ] {

   ai_stand ();

};

// function army_stand5
// function number 928 begins at statement 14519
/*
 * OP_STATE	6076	8685	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand5 = [ 4.000, army_stand6 ] {

   ai_stand ();

};

// function army_stand6
// function number 929 begins at statement 14522
/*
 * OP_STATE	313	8686	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand6 = [ 5.000, army_stand7 ] {

   ai_stand ();

};

// function army_stand7
// function number 930 begins at statement 14525
/*
 * OP_STATE	314	8687	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand7 = [ 6.000, army_stand8 ] {

   ai_stand ();

};

// function army_stand8
// function number 931 begins at statement 14528
/*
 * OP_STATE	315	8680	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () army_stand8 = [ 7.000, army_stand1 ] {

   ai_stand ();

};

// function army_walk1
// function number 932 begins at statement 14531
/*
 * OP_STATE	1423	8689	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	8690
 * OP_IFNOT	8690	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8691	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk1 = [ 90.000, army_walk2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"soldier/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk2
// function number 933 begins at statement 14544
/*
 * OP_STATE	5422	8692	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk2 = [ 91.000, army_walk3 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk3
// function number 934 begins at statement 14548
/*
 * OP_STATE	5424	8693	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk3 = [ 92.000, army_walk4 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk4
// function number 935 begins at statement 14552
/*
 * OP_STATE	5426	8694	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk4 = [ 93.000, army_walk5 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk5
// function number 936 begins at statement 14556
/*
 * OP_STATE	5427	8695	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk5 = [ 94.000, army_walk6 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function army_walk6
// function number 937 begins at statement 14560
/*
 * OP_STATE	5429	8696	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk6 = [ 95.000, army_walk7 ] {

   ai_walk (AS_MELEE);

};

// function army_walk7
// function number 938 begins at statement 14564
/*
 * OP_STATE	5431	8697	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk7 = [ 96.000, army_walk8 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function army_walk8
// function number 939 begins at statement 14568
/*
 * OP_STATE	5433	8698	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk8 = [ 97.000, army_walk9 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function army_walk9
// function number 940 begins at statement 14572
/*
 * OP_STATE	5435	8699	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk9 = [ 98.000, army_walk10 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function army_walk10
// function number 941 begins at statement 14576
/*
 * OP_STATE	5437	8700	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk10 = [ 99.000, army_walk11 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function army_walk11
// function number 942 begins at statement 14580
/*
 * OP_STATE	1884	8701	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk11 = [ 100.000, army_walk12 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function army_walk12
// function number 943 begins at statement 14584
/*
 * OP_STATE	5440	8702	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk12 = [ 101.000, army_walk13 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk13
// function number 944 begins at statement 14588
/*
 * OP_STATE	5442	8703	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk13 = [ 102.000, army_walk14 ] {

   ai_walk (MSG_BROADCAST);

};

// function army_walk14
// function number 945 begins at statement 14592
/*
 * OP_STATE	4971	8704	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk14 = [ 103.000, army_walk15 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk15
// function number 946 begins at statement 14596
/*
 * OP_STATE	4986	8705	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk15 = [ 104.000, army_walk16 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk16
// function number 947 begins at statement 14600
/*
 * OP_STATE	5000	8706	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk16 = [ 105.000, army_walk17 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk17
// function number 948 begins at statement 14604
/*
 * OP_STATE	5015	8707	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk17 = [ 106.000, army_walk18 ] {

   ai_walk (AS_MELEE);

};

// function army_walk18
// function number 949 begins at statement 14608
/*
 * OP_STATE	5029	8708	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk18 = [ 107.000, army_walk19 ] {

   ai_walk (AS_MELEE);

};

// function army_walk19
// function number 950 begins at statement 14612
/*
 * OP_STATE	5035	8709	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk19 = [ 108.000, army_walk20 ] {

   ai_walk (AS_MELEE);

};

// function army_walk20
// function number 951 begins at statement 14616
/*
 * OP_STATE	5038	8710	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk20 = [ 109.000, army_walk21 ] {

   ai_walk (AS_MELEE);

};

// function army_walk21
// function number 952 begins at statement 14620
/*
 * OP_STATE	5041	8711	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk21 = [ 110.000, army_walk22 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function army_walk22
// function number 953 begins at statement 14624
/*
 * OP_STATE	5044	8712	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk22 = [ 111.000, army_walk23 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk23
// function number 954 begins at statement 14628
/*
 * OP_STATE	5047	8713	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk23 = [ 112.000, army_walk24 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_walk24
// function number 955 begins at statement 14632
/*
 * OP_STATE	4909	8688	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () army_walk24 = [ 113.000, army_walk1 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function army_run1
// function number 956 begins at statement 14636
/*
 * OP_STATE	2739	8715	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	8716
 * OP_IFNOT	8716	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8691	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	319	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run1 = [ 73.000, army_run2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"soldier/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_run (TE_TELEPORT);

};

// function army_run2
// function number 957 begins at statement 14649
/*
 * OP_STATE	5391	8717	0
 * OP_STORE_V	1876	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run2 = [ 74.000, army_run3 ] {

   ai_run (15.000);

};

// function army_run3
// function number 958 begins at statement 14653
/*
 * OP_STATE	5393	8718	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run3 = [ 75.000, army_run4 ] {

   ai_run (TE_LAVASPLASH);

};

// function army_run4
// function number 959 begins at statement 14657
/*
 * OP_STATE	5395	8719	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run4 = [ 76.000, army_run5 ] {

   ai_run (TE_LAVASPLASH);

};

// function army_run5
// function number 960 begins at statement 14661
/*
 * OP_STATE	5397	8720	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run5 = [ 77.000, army_run6 ] {

   ai_run (SECRET_NO_SHOOT);

};

// function army_run6
// function number 961 begins at statement 14665
/*
 * OP_STATE	5399	8721	0
 * OP_STORE_V	1876	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run6 = [ 78.000, army_run7 ] {

   ai_run (15.000);

};

// function army_run7
// function number 962 begins at statement 14669
/*
 * OP_STATE	5401	8722	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run7 = [ 79.000, army_run8 ] {

   ai_run (TE_LAVASPLASH);

};

// function army_run8
// function number 963 begins at statement 14673
/*
 * OP_STATE	788	8714	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () army_run8 = [ 80.000, army_run1 ] {

   ai_run (SECRET_NO_SHOOT);

};

// function army_atk1
// function number 964 begins at statement 14677
/*
 * OP_STATE	5404	8724	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk1 = [ 81.000, army_atk2 ] {

   ai_face ();

};

// function army_atk2
// function number 965 begins at statement 14680
/*
 * OP_STATE	5406	8725	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk2 = [ 82.000, army_atk3 ] {

   ai_face ();

};

// function army_atk3
// function number 966 begins at statement 14683
/*
 * OP_STATE	5408	8726	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk3 = [ 83.000, army_atk4 ] {

   ai_face ();

};

// function army_atk4
// function number 967 begins at statement 14686
/*
 * OP_STATE	5410	8727	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk4 = [ 84.000, army_atk5 ] {

   ai_face ();

};

// function army_atk5
// function number 968 begins at statement 14689
/*
 * OP_STATE	5411	8728	0
 * OP_CALL0	758	0	0
 * OP_CALL0	8679	0	0
 * OP_ADDRESS	28	133	8729
 * OP_LOAD_F	28	133	8730
 * OP_BITOR	8730	334	8731
 * OP_STOREP_F	8731	8729	0
 * OP_DONE	0	0	0
 */

void () army_atk5 = [ 85.000, army_atk6 ] {

   ai_face ();
   army_fire ();
   self.effects = (self.effects | EF_MUZZLEFLASH);

};

// function army_atk6
// function number 969 begins at statement 14697
/*
 * OP_STATE	5413	8732	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk6 = [ 86.000, army_atk7 ] {

   ai_face ();

};

// function army_atk7
// function number 970 begins at statement 14700
/*
 * OP_STATE	5415	8733	0
 * OP_CALL0	758	0	0
 * OP_STORE_V	8723	4	0
 * OP_CALL1	738	0	0
 * OP_DONE	0	0	0
 */

void () army_atk7 = [ 87.000, army_atk8 ] {

   ai_face ();
   SUB_CheckRefire (army_atk1);

};

// function army_atk8
// function number 971 begins at statement 14705
/*
 * OP_STATE	5417	8734	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk8 = [ 88.000, army_atk9 ] {

   ai_face ();

};

// function army_atk9
// function number 972 begins at statement 14708
/*
 * OP_STATE	5419	8714	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () army_atk9 = [ 89.000, army_run1 ] {

   ai_face ();

};

// function army_pain1
// function number 973 begins at statement 14711
/*
 * OP_STATE	1733	8736	0
 * OP_DONE	0	0	0
 */

void () army_pain1 = [ 40.000, army_pain2 ] {


};

// function army_pain2
// function number 974 begins at statement 14713
/*
 * OP_STATE	5443	8737	0
 * OP_DONE	0	0	0
 */

void () army_pain2 = [ 41.000, army_pain3 ] {


};

// function army_pain3
// function number 975 begins at statement 14715
/*
 * OP_STATE	5445	8738	0
 * OP_DONE	0	0	0
 */

void () army_pain3 = [ 42.000, army_pain4 ] {


};

// function army_pain4
// function number 976 begins at statement 14717
/*
 * OP_STATE	5447	8739	0
 * OP_DONE	0	0	0
 */

void () army_pain4 = [ 43.000, army_pain5 ] {


};

// function army_pain5
// function number 977 begins at statement 14719
/*
 * OP_STATE	5449	8740	0
 * OP_DONE	0	0	0
 */

void () army_pain5 = [ 44.000, army_pain6 ] {


};

// function army_pain6
// function number 978 begins at statement 14721
/*
 * OP_STATE	1390	8714	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () army_pain6 = [ 45.000, army_run1 ] {

   ai_pain (SPAWNFLAG_SUPERSPIKE);

};

// function army_painb1
// function number 979 begins at statement 14725
/*
 * OP_STATE	5452	8742	0
 * OP_DONE	0	0	0
 */

void () army_painb1 = [ 46.000, army_painb2 ] {


};

// function army_painb2
// function number 980 begins at statement 14727
/*
 * OP_STATE	5454	8743	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painb2 = [ 47.000, army_painb3 ] {

   ai_painforward (13.000);

};

// function army_painb3
// function number 981 begins at statement 14731
/*
 * OP_STATE	5456	8744	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painb3 = [ 48.000, army_painb4 ] {

   ai_painforward (TE_LIGHTNING3);

};

// function army_painb4
// function number 982 begins at statement 14735
/*
 * OP_STATE	5458	8745	0
 * OP_DONE	0	0	0
 */

void () army_painb4 = [ 49.000, army_painb5 ] {


};

// function army_painb5
// function number 983 begins at statement 14737
/*
 * OP_STATE	2227	8746	0
 * OP_DONE	0	0	0
 */

void () army_painb5 = [ 50.000, army_painb6 ] {


};

// function army_painb6
// function number 984 begins at statement 14739
/*
 * OP_STATE	5351	8747	0
 * OP_DONE	0	0	0
 */

void () army_painb6 = [ 51.000, army_painb7 ] {


};

// function army_painb7
// function number 985 begins at statement 14741
/*
 * OP_STATE	5353	8748	0
 * OP_DONE	0	0	0
 */

void () army_painb7 = [ 52.000, army_painb8 ] {


};

// function army_painb8
// function number 986 begins at statement 14743
/*
 * OP_STATE	5355	8749	0
 * OP_DONE	0	0	0
 */

void () army_painb8 = [ 53.000, army_painb9 ] {


};

// function army_painb9
// function number 987 begins at statement 14745
/*
 * OP_STATE	5357	8750	0
 * OP_DONE	0	0	0
 */

void () army_painb9 = [ 54.000, army_painb10 ] {


};

// function army_painb10
// function number 988 begins at statement 14747
/*
 * OP_STATE	5359	8751	0
 * OP_DONE	0	0	0
 */

void () army_painb10 = [ 55.000, army_painb11 ] {


};

// function army_painb11
// function number 989 begins at statement 14749
/*
 * OP_STATE	5361	8752	0
 * OP_DONE	0	0	0
 */

void () army_painb11 = [ 56.000, army_painb12 ] {


};

// function army_painb12
// function number 990 begins at statement 14751
/*
 * OP_STATE	5363	8753	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () army_painb12 = [ 57.000, army_painb13 ] {

   ai_pain (SPAWNFLAG_LASER);

};

// function army_painb13
// function number 991 begins at statement 14755
/*
 * OP_STATE	5365	8754	0
 * OP_DONE	0	0	0
 */

void () army_painb13 = [ 58.000, army_painb14 ] {


};

// function army_painb14
// function number 992 begins at statement 14757
/*
 * OP_STATE	5367	8714	0
 * OP_DONE	0	0	0
 */

void () army_painb14 = [ 59.000, army_run1 ] {


};

// function army_painc1
// function number 993 begins at statement 14759
/*
 * OP_STATE	912	8756	0
 * OP_DONE	0	0	0
 */

void () army_painc1 = [ 60.000, army_painc2 ] {


};

// function army_painc2
// function number 994 begins at statement 14761
/*
 * OP_STATE	5369	8757	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () army_painc2 = [ 61.000, army_painc3 ] {

   ai_pain (SPAWNFLAG_SUPERSPIKE);

};

// function army_painc3
// function number 995 begins at statement 14765
/*
 * OP_STATE	5371	8758	0
 * OP_DONE	0	0	0
 */

void () army_painc3 = [ 62.000, army_painc4 ] {


};

// function army_painc4
// function number 996 begins at statement 14767
/*
 * OP_STATE	3872	8759	0
 * OP_DONE	0	0	0
 */

void () army_painc4 = [ 63.000, army_painc5 ] {


};

// function army_painc5
// function number 997 begins at statement 14769
/*
 * OP_STATE	260	8760	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc5 = [ 64.000, army_painc6 ] {

   ai_painforward (SPAWNFLAG_SUPERSPIKE);

};

// function army_painc6
// function number 998 begins at statement 14773
/*
 * OP_STATE	5375	8761	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc6 = [ 65.000, army_painc7 ] {

   ai_painforward (SPAWNFLAG_SUPERSPIKE);

};

// function army_painc7
// function number 999 begins at statement 14777
/*
 * OP_STATE	5377	8762	0
 * OP_DONE	0	0	0
 */

void () army_painc7 = [ 66.000, army_painc8 ] {


};

// function army_painc8
// function number 1000 begins at statement 14779
/*
 * OP_STATE	5379	8763	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () army_painc8 = [ 67.000, army_painc9 ] {

   ai_pain (SPAWNFLAG_SUPERSPIKE);

};

// function army_painc9
// function number 1001 begins at statement 14783
/*
 * OP_STATE	5381	8764	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc9 = [ 68.000, army_painc10 ] {

   ai_painforward (SECRET_1ST_DOWN);

};

// function army_painc10
// function number 1002 begins at statement 14787
/*
 * OP_STATE	5383	8765	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc10 = [ 69.000, army_painc11 ] {

   ai_painforward (AS_MELEE);

};

// function army_painc11
// function number 1003 begins at statement 14791
/*
 * OP_STATE	5384	8766	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc11 = [ 70.000, army_painc12 ] {

   ai_painforward (TE_LIGHTNING2);

};

// function army_painc12
// function number 1004 begins at statement 14795
/*
 * OP_STATE	5386	8767	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () army_painc12 = [ 71.000, army_painc13 ] {

   ai_painforward (SECRET_NO_SHOOT);

};

// function army_painc13
// function number 1005 begins at statement 14799
/*
 * OP_STATE	5388	8714	0
 * OP_DONE	0	0	0
 */

void () army_painc13 = [ 72.000, army_run1 ] {


};

// function army_pain
// function number 1006 begins at statement 14801
/*
 * OP_LOAD_F	28	374	8772
 * OP_GT	8772	31	8773
 * OP_IFNOT	8773	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	452	0	0
 * OP_STORE_F	1	8771	0
 * OP_LT	8771	836	8774
 * OP_IFNOT	8774	12	0
 * OP_ADDRESS	28	374	8775
 * OP_ADD_F	31	1959	8776
 * OP_STOREP_F	8776	8775	0
 * OP_CALL0	8735	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8777	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	24	0	0
 * OP_LT	8771	1959	8778
 * OP_IFNOT	8778	12	0
 * OP_ADDRESS	28	374	8779
 * OP_ADD_F	31	8780	8781
 * OP_STOREP_F	8781	8779	0
 * OP_CALL0	8741	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8782	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	11	0	0
 * OP_ADDRESS	28	374	8783
 * OP_ADD_F	31	8780	8784
 * OP_STOREP_F	8784	8783	0
 * OP_CALL0	8755	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8782	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void (entity attacker, float damage) army_pain = {

   local float r;

   if ( (self.pain_finished > time) ) {

      return ;

   }
   r = random ();
   if ( (r < 0.200) ) {

      self.pain_finished = (time + 0.600);
      army_pain1 ();
      sound (self,CHAN_VOICE,"soldier/pain1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

   } else {

      if ( (r < 0.600) ) {

         self.pain_finished = (time + 1.100);
         army_painb1 ();
         sound (self,CHAN_VOICE,"soldier/pain2.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

      } else {

         self.pain_finished = (time + 1.100);
         army_painc1 ();
         sound (self,CHAN_VOICE,"soldier/pain2.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

      }

   }

};

// function army_fire
// function number 1007 begins at statement 14844
/*
 * OP_CALL0	758	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8789	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_ENT	28	181	8790
 * OP_STORE_ENT	8790	8788	0
 * OP_LOAD_V	8788	105	8791
 * OP_LOAD_V	8788	113	8794
 * OP_MUL_VF	8794	836	8797
 * OP_SUB_V	8791	8797	8800
 * OP_STORE_V	8800	8785	0
 * OP_LOAD_V	28	105	8803
 * OP_SUB_V	8785	8803	8806
 * OP_STORE_V	8806	4	0
 * OP_CALL1	454	0	0
 * OP_STORE_V	1	8785	0
 * OP_STORE_V	6076	4	0
 * OP_STORE_V	8785	7	0
 * OP_STORE_V	8809	10	0
 * OP_CALL3	2823	0	0
 * OP_DONE	0	0	0
 */

void () army_fire = {

   local vector dir;
   local entity en;

   ai_face ();
   sound (self,CHAN_WEAPON,"soldier/sattck1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   en = self.enemy;
   dir = (en.origin - (en.velocity * 0.200));
   dir = normalize ((dir - self.origin));
   FireBullets (SECRET_1ST_DOWN,dir,'0.100 0.100 0.000');

};

// function army_die1
// function number 1008 begins at statement 14868
/*
 * OP_STATE	6077	8813	0
 * OP_DONE	0	0	0
 */

void () army_die1 = [ 8.000, army_die2 ] {


};

// function army_die2
// function number 1009 begins at statement 14870
/*
 * OP_STATE	317	8814	0
 * OP_DONE	0	0	0
 */

void () army_die2 = [ 9.000, army_die3 ] {


};

// function army_die3
// function number 1010 begins at statement 14872
/*
 * OP_STATE	318	8815	0
 * OP_ADDRESS	28	104	8816
 * OP_STOREP_F	237	8816	0
 * OP_ADDRESS	28	158	8817
 * OP_STOREP_F	313	8817	0
 * OP_CALL0	2535	0	0
 * OP_DONE	0	0	0
 */

void () army_die3 = [ 10.000, army_die4 ] {

   self.solid = SOLID_NOT;
   self.ammo_shells = TE_LIGHTNING1;
   DropBackpack ();

};

// function army_die4
// function number 1011 begins at statement 14879
/*
 * OP_STATE	319	8818	0
 * OP_DONE	0	0	0
 */

void () army_die4 = [ 11.000, army_die5 ] {


};

// function army_die5
// function number 1012 begins at statement 14881
/*
 * OP_STATE	2250	8819	0
 * OP_DONE	0	0	0
 */

void () army_die5 = [ 12.000, army_die6 ] {


};

// function army_die6
// function number 1013 begins at statement 14883
/*
 * OP_STATE	7768	8820	0
 * OP_DONE	0	0	0
 */

void () army_die6 = [ 13.000, army_die7 ] {


};

// function army_die7
// function number 1014 begins at statement 14885
/*
 * OP_STATE	2901	8821	0
 * OP_DONE	0	0	0
 */

void () army_die7 = [ 14.000, army_die8 ] {


};

// function army_die8
// function number 1015 begins at statement 14887
/*
 * OP_STATE	1876	8822	0
 * OP_DONE	0	0	0
 */

void () army_die8 = [ 15.000, army_die9 ] {


};

// function army_die9
// function number 1016 begins at statement 14889
/*
 * OP_STATE	6078	8823	0
 * OP_DONE	0	0	0
 */

void () army_die9 = [ 16.000, army_die10 ] {


};

// function army_die10
// function number 1017 begins at statement 14891
/*
 * OP_STATE	4861	8823	0
 * OP_DONE	0	0	0
 */

void () army_die10 = [ 17.000, army_die10 ] {


};

// function army_cdie1
// function number 1018 begins at statement 14893
/*
 * OP_STATE	3319	8825	0
 * OP_DONE	0	0	0
 */

void () army_cdie1 = [ 18.000, army_cdie2 ] {


};

// function army_cdie2
// function number 1019 begins at statement 14895
/*
 * OP_STATE	7776	8826	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie2 = [ 19.000, army_cdie3 ] {

   ai_back (TE_LIGHTNING1);

};

// function army_cdie3
// function number 1020 begins at statement 14899
/*
 * OP_STATE	894	8827	0
 * OP_ADDRESS	28	104	8828
 * OP_STOREP_F	237	8828	0
 * OP_ADDRESS	28	158	8829
 * OP_STOREP_F	313	8829	0
 * OP_CALL0	2535	0	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie3 = [ 20.000, army_cdie4 ] {

   self.solid = SOLID_NOT;
   self.ammo_shells = TE_LIGHTNING1;
   DropBackpack ();
   ai_back (SECRET_1ST_DOWN);

};

// function army_cdie4
// function number 1021 begins at statement 14908
/*
 * OP_STATE	7779	8830	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie4 = [ 21.000, army_cdie5 ] {

   ai_back (13.000);

};

// function army_cdie5
// function number 1022 begins at statement 14912
/*
 * OP_STATE	7781	8831	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie5 = [ 22.000, army_cdie6 ] {

   ai_back (AS_MELEE);

};

// function army_cdie6
// function number 1023 begins at statement 14916
/*
 * OP_STATE	301	8832	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie6 = [ 23.000, army_cdie7 ] {

   ai_back (SECRET_1ST_DOWN);

};

// function army_cdie7
// function number 1024 begins at statement 14920
/*
 * OP_STATE	4437	8833	0
 * OP_DONE	0	0	0
 */

void () army_cdie7 = [ 24.000, army_cdie8 ] {


};

// function army_cdie8
// function number 1025 begins at statement 14922
/*
 * OP_STATE	1890	8834	0
 * OP_DONE	0	0	0
 */

void () army_cdie8 = [ 25.000, army_cdie9 ] {


};

// function army_cdie9
// function number 1026 begins at statement 14924
/*
 * OP_STATE	7788	8835	0
 * OP_DONE	0	0	0
 */

void () army_cdie9 = [ 26.000, army_cdie10 ] {


};

// function army_cdie10
// function number 1027 begins at statement 14926
/*
 * OP_STATE	302	8836	0
 * OP_DONE	0	0	0
 */

void () army_cdie10 = [ 27.000, army_cdie11 ] {


};

// function army_cdie11
// function number 1028 begins at statement 14928
/*
 * OP_STATE	303	8836	0
 * OP_DONE	0	0	0
 */

void () army_cdie11 = [ 28.000, army_cdie11 ] {


};

// function army_die
// function number 1029 begins at statement 14930
/*
 * OP_LOAD_F	28	152	8838
 * OP_LT	8838	8839	8840
 * OP_IFNOT	8840	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3826	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	152	8842
 * OP_STORE_V	8841	4	0
 * OP_STORE_V	8842	7	0
 * OP_CALL2	5247	0	0
 * OP_LOAD_F	28	152	8843
 * OP_STORE_V	3852	4	0
 * OP_STORE_V	8843	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	8844
 * OP_STORE_V	3853	4	0
 * OP_STORE_V	8844	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	8845
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	8845	7	0
 * OP_CALL2	5218	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8846	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	8847
 * OP_IFNOT	8847	3	0
 * OP_CALL0	8812	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	8824	0	0
 * OP_DONE	0	0	0
 */

void () army_die = {

   if ( (self.health < -35.000) ) {

      sound (self,CHAN_VOICE,"player/udeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
      ThrowHead ("progs/h_guard.mdl",self.health);
      ThrowGib ("progs/gib1.mdl",self.health);
      ThrowGib ("progs/gib2.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      return ;

   }
   sound (self,CHAN_VOICE,"soldier/death1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (random () < 0.500) ) {

      army_die1 ();

   } else {

      army_cdie1 ();

   }

};

// function monster_army
// function number 1030 begins at statement 14969
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	8849	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	8841	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	3852	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	3853	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	3854	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	8846	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8691	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8777	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8782	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8789	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	1288	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	3826	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	8850
 * OP_STOREP_F	240	8850	0
 * OP_ADDRESS	28	103	8851
 * OP_STOREP_F	229	8851	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8849	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	8669	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	8852
 * OP_STOREP_F	304	8852	0
 * OP_ADDRESS	28	356	8853
 * OP_STOREP_FNC	8680	8853	0
 * OP_ADDRESS	28	357	8854
 * OP_STOREP_FNC	8688	8854	0
 * OP_ADDRESS	28	358	8855
 * OP_STOREP_FNC	8714	8855	0
 * OP_ADDRESS	28	359	8856
 * OP_STOREP_FNC	8723	8856	0
 * OP_ADDRESS	28	361	8857
 * OP_STOREP_FNC	8768	8857	0
 * OP_ADDRESS	28	362	8858
 * OP_STOREP_FNC	8837	8858	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () monster_army = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model ("progs/soldier.mdl");
   precache_model ("progs/h_guard.mdl");
   precache_model ("progs/gib1.mdl");
   precache_model ("progs/gib2.mdl");
   precache_model ("progs/gib3.mdl");
   precache_sound ("soldier/death1.wav");
   precache_sound ("soldier/idle.wav");
   precache_sound ("soldier/pain1.wav");
   precache_sound ("soldier/pain2.wav");
   precache_sound ("soldier/sattck1.wav");
   precache_sound ("soldier/sight1.wav");
   precache_sound ("player/udeath.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,"progs/soldier.mdl");
   setsize (self,VEC_HULL_MIN,'16.000 16.000 40.000');
   self.health = SVC_INTERMISSION;
   self.th_stand = army_stand1;
   self.th_walk = army_walk1;
   self.th_run = army_run1;
   self.th_missile = army_atk1;
   self.th_pain = army_pain;
   self.th_die = army_die;
   walkmonster_start ();

};
