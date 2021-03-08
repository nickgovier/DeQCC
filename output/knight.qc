
// function knight_stand1
// function number 824 begins at statement 14044
/*
 * OP_STATE	337	8543	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand1 = [ 0.000, knight_stand2 ] {

   ai_stand ();

};

// function knight_stand2
// function number 825 begins at statement 14047
/*
 * OP_STATE	7368	8544	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand2 = [ 1.000, knight_stand3 ] {

   ai_stand ();

};

// function knight_stand3
// function number 826 begins at statement 14050
/*
 * OP_STATE	7369	8545	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand3 = [ 2.000, knight_stand4 ] {

   ai_stand ();

};

// function knight_stand4
// function number 827 begins at statement 14053
/*
 * OP_STATE	370	8546	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand4 = [ 3.000, knight_stand5 ] {

   ai_stand ();

};

// function knight_stand5
// function number 828 begins at statement 14056
/*
 * OP_STATE	6076	8547	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand5 = [ 4.000, knight_stand6 ] {

   ai_stand ();

};

// function knight_stand6
// function number 829 begins at statement 14059
/*
 * OP_STATE	313	8548	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand6 = [ 5.000, knight_stand7 ] {

   ai_stand ();

};

// function knight_stand7
// function number 830 begins at statement 14062
/*
 * OP_STATE	314	8549	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand7 = [ 6.000, knight_stand8 ] {

   ai_stand ();

};

// function knight_stand8
// function number 831 begins at statement 14065
/*
 * OP_STATE	315	8550	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand8 = [ 7.000, knight_stand9 ] {

   ai_stand ();

};

// function knight_stand9
// function number 832 begins at statement 14068
/*
 * OP_STATE	6077	8542	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand9 = [ 8.000, knight_stand1 ] {

   ai_stand ();

};

// function knight_walk1
// function number 833 begins at statement 14071
/*
 * OP_STATE	5355	8551	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	8552
 * OP_IFNOT	8552	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8553	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk1 = [ 53.000, knight_walk2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"knight/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_walk (AS_MELEE);

};

// function knight_walk2
// function number 834 begins at statement 14084
/*
 * OP_STATE	5357	8554	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk2 = [ 54.000, knight_walk3 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function knight_walk3
// function number 835 begins at statement 14088
/*
 * OP_STATE	5359	8555	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk3 = [ 55.000, knight_walk4 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk4
// function number 836 begins at statement 14092
/*
 * OP_STATE	5361	8556	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk4 = [ 56.000, knight_walk5 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function knight_walk5
// function number 837 begins at statement 14096
/*
 * OP_STATE	5363	8557	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk5 = [ 57.000, knight_walk6 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk6
// function number 838 begins at statement 14100
/*
 * OP_STATE	5365	8558	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk6 = [ 58.000, knight_walk7 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk7
// function number 839 begins at statement 14104
/*
 * OP_STATE	5367	8559	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk7 = [ 59.000, knight_walk8 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk8
// function number 840 begins at statement 14108
/*
 * OP_STATE	912	8560	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk8 = [ 60.000, knight_walk9 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function knight_walk9
// function number 841 begins at statement 14112
/*
 * OP_STATE	5369	8561	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk9 = [ 61.000, knight_walk10 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk10
// function number 842 begins at statement 14116
/*
 * OP_STATE	5371	8562	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk10 = [ 62.000, knight_walk11 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk11
// function number 843 begins at statement 14120
/*
 * OP_STATE	3872	8563	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk11 = [ 63.000, knight_walk12 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function knight_walk12
// function number 844 begins at statement 14124
/*
 * OP_STATE	260	8564	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk12 = [ 64.000, knight_walk13 ] {

   ai_walk (AS_MELEE);

};

// function knight_walk13
// function number 845 begins at statement 14128
/*
 * OP_STATE	5375	8565	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk13 = [ 65.000, knight_walk14 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function knight_walk14
// function number 846 begins at statement 14132
/*
 * OP_STATE	5377	1083	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk14 = [ 66.000, knight_walk1 ] {

   ai_walk (AS_MELEE);

};

// function knight_run1
// function number 847 begins at statement 14136
/*
 * OP_STATE	317	8567	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	8568
 * OP_IFNOT	8568	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8553	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run1 = [ 9.000, knight_run2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"knight/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_run (SECRET_YES_SHOOT);

};

// function knight_run2
// function number 848 begins at statement 14149
/*
 * OP_STATE	318	8569	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run2 = [ 10.000, knight_run3 ] {

   ai_run (20.000);

};

// function knight_run3
// function number 849 begins at statement 14153
/*
 * OP_STATE	319	8570	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run3 = [ 11.000, knight_run4 ] {

   ai_run (13.000);

};

// function knight_run4
// function number 850 begins at statement 14157
/*
 * OP_STATE	2250	8571	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run4 = [ 12.000, knight_run5 ] {

   ai_run (TE_WIZSPIKE);

};

// function knight_run5
// function number 851 begins at statement 14161
/*
 * OP_STATE	7768	8572	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run5 = [ 13.000, knight_run6 ] {

   ai_run (SECRET_YES_SHOOT);

};

// function knight_run6
// function number 852 begins at statement 14165
/*
 * OP_STATE	2901	8573	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run6 = [ 14.000, knight_run7 ] {

   ai_run (20.000);

};

// function knight_run7
// function number 853 begins at statement 14169
/*
 * OP_STATE	1876	8574	0
 * OP_STORE_V	2901	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run7 = [ 15.000, knight_run8 ] {

   ai_run (14.000);

};

// function knight_run8
// function number 854 begins at statement 14173
/*
 * OP_STATE	6078	8566	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () knight_run8 = [ 16.000, knight_run1 ] {

   ai_run (TE_LIGHTNING2);

};

// function knight_runatk1
// function number 855 begins at statement 14177
/*
 * OP_STATE	4861	8575	0
 * OP_CALL0	452	0	0
 * OP_GT	1	1491	8576
 * OP_IFNOT	8576	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8577	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8578	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk1 = [ 17.000, knight_runatk2 ] {

   if ( (random () > 0.500) ) {

      sound (self,CHAN_WEAPON,"knight/sword2.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

   } else {

      sound (self,CHAN_WEAPON,"knight/sword1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

   }
   ai_charge (20.000);

};

// function knight_runatk2
// function number 856 begins at statement 14197
/*
 * OP_STATE	3319	8579	0
 * OP_CALL0	859	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk2 = [ 18.000, knight_runatk3 ] {

   ai_charge_side ();

};

// function knight_runatk3
// function number 857 begins at statement 14200
/*
 * OP_STATE	7776	8580	0
 * OP_CALL0	859	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk3 = [ 19.000, knight_runatk4 ] {

   ai_charge_side ();

};

// function knight_runatk4
// function number 858 begins at statement 14203
/*
 * OP_STATE	894	8581	0
 * OP_CALL0	859	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk4 = [ 20.000, knight_runatk5 ] {

   ai_charge_side ();

};

// function knight_runatk5
// function number 859 begins at statement 14206
/*
 * OP_STATE	7779	8582	0
 * OP_CALL0	921	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk5 = [ 21.000, knight_runatk6 ] {

   ai_melee_side ();

};

// function knight_runatk6
// function number 860 begins at statement 14209
/*
 * OP_STATE	7781	8583	0
 * OP_CALL0	921	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk6 = [ 22.000, knight_runatk7 ] {

   ai_melee_side ();

};

// function knight_runatk7
// function number 861 begins at statement 14212
/*
 * OP_STATE	301	8584	0
 * OP_CALL0	921	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk7 = [ 23.000, knight_runatk8 ] {

   ai_melee_side ();

};

// function knight_runatk8
// function number 862 begins at statement 14215
/*
 * OP_STATE	4437	8585	0
 * OP_CALL0	921	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk8 = [ 24.000, knight_runatk9 ] {

   ai_melee_side ();

};

// function knight_runatk9
// function number 863 begins at statement 14218
/*
 * OP_STATE	1890	8586	0
 * OP_CALL0	921	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk9 = [ 25.000, knight_runatk10 ] {

   ai_melee_side ();

};

// function knight_runatk10
// function number 864 begins at statement 14221
/*
 * OP_STATE	7788	8587	0
 * OP_CALL0	859	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk10 = [ 26.000, knight_runatk11 ] {

   ai_charge_side ();

};

// function knight_runatk11
// function number 865 begins at statement 14224
/*
 * OP_STATE	302	8566	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk11 = [ 27.000, knight_run1 ] {

   ai_charge (TE_LAVASPLASH);

};

// function knight_atk1
// function number 866 begins at statement 14228
/*
 * OP_STATE	5447	8588	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8578	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk1 = [ 43.000, knight_atk2 ] {

   sound (self,CHAN_WEAPON,"knight/sword1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   ai_charge (MSG_BROADCAST);

};

// function knight_atk2
// function number 867 begins at statement 14238
/*
 * OP_STATE	5449	8589	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk2 = [ 44.000, knight_atk3 ] {

   ai_charge (TE_WIZSPIKE);

};

// function knight_atk3
// function number 868 begins at statement 14242
/*
 * OP_STATE	1390	8590	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk3 = [ 45.000, knight_atk4 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function knight_atk4
// function number 869 begins at statement 14246
/*
 * OP_STATE	5452	8591	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk4 = [ 46.000, knight_atk5 ] {

   ai_charge (MSG_BROADCAST);

};

// function knight_atk5
// function number 870 begins at statement 14250
/*
 * OP_STATE	5454	8592	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk5 = [ 47.000, knight_atk6 ] {

   ai_charge (AS_MELEE);

};

// function knight_atk6
// function number 871 begins at statement 14254
/*
 * OP_STATE	5456	8593	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk6 = [ 48.000, knight_atk7 ] {

   ai_charge (SECRET_1ST_DOWN);
   ai_melee ();

};

// function knight_atk7
// function number 872 begins at statement 14259
/*
 * OP_STATE	5458	8594	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk7 = [ 49.000, knight_atk8 ] {

   ai_charge (SPAWNFLAG_SUPERSPIKE);
   ai_melee ();

};

// function knight_atk8
// function number 873 begins at statement 14264
/*
 * OP_STATE	2227	8595	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk8 = [ 50.000, knight_atk9 ] {

   ai_charge (AS_MELEE);
   ai_melee ();

};

// function knight_atk9
// function number 874 begins at statement 14269
/*
 * OP_STATE	5351	8596	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk9 = [ 51.000, knight_atk10 ] {

   ai_charge (SPAWNFLAG_SUPERSPIKE);

};

// function knight_atk10
// function number 875 begins at statement 14273
/*
 * OP_STATE	5353	8566	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk10 = [ 52.000, knight_run1 ] {

   ai_charge (TE_LIGHTNING1);

};

// function knight_pain1
// function number 876 begins at statement 14277
/*
 * OP_STATE	303	8598	0
 * OP_DONE	0	0	0
 */

void () knight_pain1 = [ 28.000, knight_pain2 ] {


};

// function knight_pain2
// function number 877 begins at statement 14279
/*
 * OP_STATE	5105	8599	0
 * OP_DONE	0	0	0
 */

void () knight_pain2 = [ 29.000, knight_pain3 ] {


};

// function knight_pain3
// function number 878 begins at statement 14281
/*
 * OP_STATE	304	8566	0
 * OP_DONE	0	0	0
 */

void () knight_pain3 = [ 30.000, knight_run1 ] {


};

// function knight_painb1
// function number 879 begins at statement 14283
/*
 * OP_STATE	305	8601	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb1 = [ 31.000, knight_painb2 ] {

   ai_painforward (MSG_BROADCAST);

};

// function knight_painb2
// function number 880 begins at statement 14287
/*
 * OP_STATE	5674	8602	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb2 = [ 32.000, knight_painb3 ] {

   ai_painforward (AS_MELEE);

};

// function knight_painb3
// function number 881 begins at statement 14291
/*
 * OP_STATE	307	8603	0
 * OP_DONE	0	0	0
 */

void () knight_painb3 = [ 33.000, knight_painb4 ] {


};

// function knight_painb4
// function number 882 begins at statement 14293
/*
 * OP_STATE	5112	8604	0
 * OP_DONE	0	0	0
 */

void () knight_painb4 = [ 34.000, knight_painb5 ] {


};

// function knight_painb5
// function number 883 begins at statement 14295
/*
 * OP_STATE	3072	8605	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb5 = [ 35.000, knight_painb6 ] {

   ai_painforward (SPAWNFLAG_LASER);

};

// function knight_painb6
// function number 884 begins at statement 14299
/*
 * OP_STATE	5096	8606	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb6 = [ 36.000, knight_painb7 ] {

   ai_painforward (SECRET_1ST_DOWN);

};

// function knight_painb7
// function number 885 begins at statement 14303
/*
 * OP_STATE	5098	8607	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb7 = [ 37.000, knight_painb8 ] {

   ai_painforward (SPAWNFLAG_LASER);

};

// function knight_painb8
// function number 886 begins at statement 14307
/*
 * OP_STATE	5100	8608	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb8 = [ 38.000, knight_painb9 ] {

   ai_painforward (TE_LIGHTNING1);

};

// function knight_painb9
// function number 887 begins at statement 14311
/*
 * OP_STATE	5102	8609	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb9 = [ 39.000, knight_painb10 ] {

   ai_painforward (TE_LIGHTNING1);

};

// function knight_painb10
// function number 888 begins at statement 14315
/*
 * OP_STATE	1733	8610	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	1348	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb10 = [ 40.000, knight_painb11 ] {

   ai_painforward (MSG_BROADCAST);

};

// function knight_painb11
// function number 889 begins at statement 14319
/*
 * OP_STATE	5443	8566	0
 * OP_DONE	0	0	0
 */

void () knight_painb11 = [ 41.000, knight_run1 ] {


};

// function knight_pain
// function number 890 begins at statement 14321
/*
 * OP_LOAD_F	28	374	8615
 * OP_GT	8615	31	8616
 * OP_IFNOT	8616	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	452	0	0
 * OP_STORE_F	1	8614	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8617	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LT	8614	8618	8619
 * OP_IFNOT	8619	6	0
 * OP_CALL0	8597	0	0
 * OP_ADDRESS	28	374	8620
 * OP_ADD_F	31	7368	8621
 * OP_STOREP_F	8621	8620	0
 * OP_GOTO	5	0	0
 * OP_CALL0	8600	0	0
 * OP_ADDRESS	28	374	8622
 * OP_ADD_F	31	7368	8623
 * OP_STOREP_F	8623	8622	0
 * OP_DONE	0	0	0
 */

void (entity attacker, float damage) knight_pain = {

   local float r;

   if ( (self.pain_finished > time) ) {

      return ;

   }
   r = random ();
   sound (self,CHAN_VOICE,"knight/khurt.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (r < 0.850) ) {

      knight_pain1 ();
      self.pain_finished = (time + SPAWNFLAG_SUPERSPIKE);

   } else {

      knight_painb1 ();
      self.pain_finished = (time + SPAWNFLAG_SUPERSPIKE);

   }

};

// function knight_bow1
// function number 891 begins at statement 14345
/*
 * OP_STATE	5379	8624	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow1 = [ 67.000, knight_bow2 ] {

   ai_turn ();

};

// function knight_bow2
// function number 892 begins at statement 14348
/*
 * OP_STATE	5381	8625	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow2 = [ 68.000, knight_bow3 ] {

   ai_turn ();

};

// function knight_bow3
// function number 893 begins at statement 14351
/*
 * OP_STATE	5383	8626	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow3 = [ 69.000, knight_bow4 ] {

   ai_turn ();

};

// function knight_bow4
// function number 894 begins at statement 14354
/*
 * OP_STATE	5384	8627	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow4 = [ 70.000, knight_bow5 ] {

   ai_turn ();

};

// function knight_bow5
// function number 895 begins at statement 14357
/*
 * OP_STATE	5386	8627	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow5 = [ 71.000, knight_bow5 ] {

   ai_turn ();

};

// function knight_bow6
// function number 896 begins at statement 14360
/*
 * OP_STATE	5384	8628	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow6 = [ 70.000, knight_bow7 ] {

   ai_turn ();

};

// function knight_bow7
// function number 897 begins at statement 14363
/*
 * OP_STATE	5383	8629	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow7 = [ 69.000, knight_bow8 ] {

   ai_turn ();

};

// function knight_bow8
// function number 898 begins at statement 14366
/*
 * OP_STATE	5381	8630	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow8 = [ 68.000, knight_bow9 ] {

   ai_turn ();

};

// function knight_bow9
// function number 899 begins at statement 14369
/*
 * OP_STATE	5379	8631	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow9 = [ 67.000, knight_bow10 ] {

   ai_turn ();

};

// function knight_bow10
// function number 900 begins at statement 14372
/*
 * OP_STATE	5355	1083	0
 * OP_CALL0	1363	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow10 = [ 53.000, knight_walk1 ] {

   ai_turn ();

};

// function knight_die1
// function number 901 begins at statement 14375
/*
 * OP_STATE	5395	8633	0
 * OP_DONE	0	0	0
 */

void () knight_die1 = [ 76.000, knight_die2 ] {


};

// function knight_die2
// function number 902 begins at statement 14377
/*
 * OP_STATE	5397	8634	0
 * OP_DONE	0	0	0
 */

void () knight_die2 = [ 77.000, knight_die3 ] {


};

// function knight_die3
// function number 903 begins at statement 14379
/*
 * OP_STATE	5399	8635	0
 * OP_ADDRESS	28	104	8636
 * OP_STOREP_F	237	8636	0
 * OP_DONE	0	0	0
 */

void () knight_die3 = [ 78.000, knight_die4 ] {

   self.solid = SOLID_NOT;

};

// function knight_die4
// function number 904 begins at statement 14383
/*
 * OP_STATE	5401	8637	0
 * OP_DONE	0	0	0
 */

void () knight_die4 = [ 79.000, knight_die5 ] {


};

// function knight_die5
// function number 905 begins at statement 14385
/*
 * OP_STATE	788	8638	0
 * OP_DONE	0	0	0
 */

void () knight_die5 = [ 80.000, knight_die6 ] {


};

// function knight_die6
// function number 906 begins at statement 14387
/*
 * OP_STATE	5404	8639	0
 * OP_DONE	0	0	0
 */

void () knight_die6 = [ 81.000, knight_die7 ] {


};

// function knight_die7
// function number 907 begins at statement 14389
/*
 * OP_STATE	5406	8640	0
 * OP_DONE	0	0	0
 */

void () knight_die7 = [ 82.000, knight_die8 ] {


};

// function knight_die8
// function number 908 begins at statement 14391
/*
 * OP_STATE	5408	8641	0
 * OP_DONE	0	0	0
 */

void () knight_die8 = [ 83.000, knight_die9 ] {


};

// function knight_die9
// function number 909 begins at statement 14393
/*
 * OP_STATE	5410	8642	0
 * OP_DONE	0	0	0
 */

void () knight_die9 = [ 84.000, knight_die10 ] {


};

// function knight_die10
// function number 910 begins at statement 14395
/*
 * OP_STATE	5411	8642	0
 * OP_DONE	0	0	0
 */

void () knight_die10 = [ 85.000, knight_die10 ] {


};

// function knight_dieb1
// function number 911 begins at statement 14397
/*
 * OP_STATE	5413	8644	0
 * OP_DONE	0	0	0
 */

void () knight_dieb1 = [ 86.000, knight_dieb2 ] {


};

// function knight_dieb2
// function number 912 begins at statement 14399
/*
 * OP_STATE	5415	8645	0
 * OP_DONE	0	0	0
 */

void () knight_dieb2 = [ 87.000, knight_dieb3 ] {


};

// function knight_dieb3
// function number 913 begins at statement 14401
/*
 * OP_STATE	5417	8646	0
 * OP_ADDRESS	28	104	8647
 * OP_STOREP_F	237	8647	0
 * OP_DONE	0	0	0
 */

void () knight_dieb3 = [ 88.000, knight_dieb4 ] {

   self.solid = SOLID_NOT;

};

// function knight_dieb4
// function number 914 begins at statement 14405
/*
 * OP_STATE	5419	8648	0
 * OP_DONE	0	0	0
 */

void () knight_dieb4 = [ 89.000, knight_dieb5 ] {


};

// function knight_dieb5
// function number 915 begins at statement 14407
/*
 * OP_STATE	1423	8649	0
 * OP_DONE	0	0	0
 */

void () knight_dieb5 = [ 90.000, knight_dieb6 ] {


};

// function knight_dieb6
// function number 916 begins at statement 14409
/*
 * OP_STATE	5422	8650	0
 * OP_DONE	0	0	0
 */

void () knight_dieb6 = [ 91.000, knight_dieb7 ] {


};

// function knight_dieb7
// function number 917 begins at statement 14411
/*
 * OP_STATE	5424	8651	0
 * OP_DONE	0	0	0
 */

void () knight_dieb7 = [ 92.000, knight_dieb8 ] {


};

// function knight_dieb8
// function number 918 begins at statement 14413
/*
 * OP_STATE	5426	8652	0
 * OP_DONE	0	0	0
 */

void () knight_dieb8 = [ 93.000, knight_dieb9 ] {


};

// function knight_dieb9
// function number 919 begins at statement 14415
/*
 * OP_STATE	5427	8653	0
 * OP_DONE	0	0	0
 */

void () knight_dieb9 = [ 94.000, knight_dieb10 ] {


};

// function knight_dieb10
// function number 920 begins at statement 14417
/*
 * OP_STATE	5429	8654	0
 * OP_DONE	0	0	0
 */

void () knight_dieb10 = [ 95.000, knight_dieb11 ] {


};

// function knight_dieb11
// function number 921 begins at statement 14419
/*
 * OP_STATE	5431	8654	0
 * OP_DONE	0	0	0
 */

void () knight_dieb11 = [ 96.000, knight_dieb11 ] {


};

// function knight_die
// function number 922 begins at statement 14421
/*
 * OP_LOAD_F	28	152	8656
 * OP_LT	8656	4741	8657
 * OP_IFNOT	8657	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3826	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	152	8659
 * OP_STORE_V	8658	4	0
 * OP_STORE_V	8659	7	0
 * OP_CALL2	5247	0	0
 * OP_LOAD_F	28	152	8660
 * OP_STORE_V	3852	4	0
 * OP_STORE_V	8660	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	8661
 * OP_STORE_V	3853	4	0
 * OP_STORE_V	8661	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	8662
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	8662	7	0
 * OP_CALL2	5218	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	8663	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	8664
 * OP_IFNOT	8664	3	0
 * OP_CALL0	8632	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	8643	0	0
 * OP_DONE	0	0	0
 */

void () knight_die = {

   if ( (self.health < -40.000) ) {

      sound (self,CHAN_VOICE,"player/udeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
      ThrowHead ("progs/h_knight.mdl",self.health);
      ThrowGib ("progs/gib1.mdl",self.health);
      ThrowGib ("progs/gib2.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      return ;

   }
   sound (self,CHAN_VOICE,"knight/kdeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (random () < 0.500) ) {

      knight_die1 ();

   } else {

      knight_dieb1 ();

   }

};

// function monster_knight
// function number 923 begins at statement 14460
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	8666	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	8658	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	8663	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8617	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	1241	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8578	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8577	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8553	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	8667
 * OP_STOREP_F	240	8667	0
 * OP_ADDRESS	28	103	8668
 * OP_STOREP_F	229	8668	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8666	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	8669	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	8672
 * OP_STOREP_F	5393	8672	0
 * OP_ADDRESS	28	356	8673
 * OP_STOREP_FNC	8542	8673	0
 * OP_ADDRESS	28	357	8674
 * OP_STOREP_FNC	1083	8674	0
 * OP_ADDRESS	28	358	8675
 * OP_STOREP_FNC	8566	8675	0
 * OP_ADDRESS	28	360	8676
 * OP_STOREP_FNC	748	8676	0
 * OP_ADDRESS	28	361	8677
 * OP_STOREP_FNC	8611	8677	0
 * OP_ADDRESS	28	362	8678
 * OP_STOREP_FNC	8655	8678	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () monster_knight = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model ("progs/knight.mdl");
   precache_model ("progs/h_knight.mdl");
   precache_sound ("knight/kdeath.wav");
   precache_sound ("knight/khurt.wav");
   precache_sound ("knight/ksight.wav");
   precache_sound ("knight/sword1.wav");
   precache_sound ("knight/sword2.wav");
   precache_sound ("knight/idle.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,"progs/knight.mdl");
   setsize (self,VEC_HULL_MIN,'16.000 16.000 40.000');
   self.health = 75.000;
   self.th_stand = knight_stand1;
   self.th_walk = knight_walk1;
   self.th_run = knight_run1;
   self.th_melee = knight_atk1;
   self.th_pain = knight_pain;
   self.th_die = knight_die;
   walkmonster_start ();

};
