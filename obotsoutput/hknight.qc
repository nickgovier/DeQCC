string globaldef5041 /* = "progs/tarbaby.mdl" */;

void () hknight_char_a1;

void () hknight_run1;

void () hk_idle_sound;

void (float globaldef5046) hknight_shot;

// function hknight_shot
// function number 1747 begins at statement 24496
/*
 * OP_LOAD_ENT	28	181	15106
 * OP_LOAD_V	15106	105	15107
 * OP_LOAD_V	28	105	15110
 * OP_SUB_V	15107	15110	15113
 * OP_STORE_V	15113	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	15097	0
 * OP_MUL_F	15096	231	15116
 * OP_ADD_F	15098	15116	15117
 * OP_STORE_F	15117	15098	0
 * OP_STORE_V	15097	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	15118
 * OP_LOAD_V	28	134	15121
 * OP_ADD_V	15118	15121	15124
 * OP_LOAD_V	28	142	15127
 * OP_MUL_VF	15127	539	15130
 * OP_ADD_V	15124	15130	15133
 * OP_MUL_VF	59	2323	15136
 * OP_ADD_V	15133	15136	15139
 * OP_STORE_V	15139	15100	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	15103	0
 * OP_SUB_F	213	15105	15142
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	15143
 * OP_MUL_F	15143	3036	15144
 * OP_ADD_F	15142	15144	15145
 * OP_STORE_F	15145	15105	0
 * OP_STORE_V	15100	4	0
 * OP_STORE_V	15103	7	0
 * OP_CALL2	6018	0	0
 * OP_ADDRESS	350	129	15146
 * OP_STOREP_S	6118	15146	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	15147	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	350	113	15148
 * OP_MUL_VF	15103	540	15151
 * OP_STOREP_V	15151	15148	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	15154	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef5046) hknight_shot = {

   local vector globaldef5047;
   local vector globaldef5051;
   local vector globaldef5055;

   globaldef5047 = globaldef478 ((self.enemy.origin - self.origin));
   globaldef5049 = (globaldef5049 + (globaldef5046 * MOVETYPE_TOSS));
   makevectors (globaldef5047);
   globaldef5051 = (((self.origin + self.globaldef112) + (self.globaldef120 * globaldef522)) + (v_forward * globaldef1384));
   globaldef5055 = globaldef442 (v_forward);
   globaldef5058 = ((FALSE - globaldef5058) + ((globaldef440 () - globaldef522) * 0.100));
   globaldef2191 (globaldef5051,globaldef5055);
   newmis.classname = globaldef2219;
   setmodel (newmis,globaldef5059);
   globaldef438 (newmis,VEC_ORIGIN,VEC_ORIGIN);
   newmis.velocity = (globaldef5055 * globaldef523);
   sound (self,CHAN_WEAPON,globaldef5060,TRUE,ATTN_NORM);

};
string globaldef5059 /* = "progs/k_spike.mdl" */;
string globaldef5060 /* = "hknight/attack1.wav" */;

void () CheckForCharge;

// function CheckForCharge
// function number 1748 begins at statement 24548
/*
 * OP_NOT_F	3191	0	15156
 * OP_IFNOT	15156	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	378	15157
 * OP_LT	31	15157	15158
 * OP_IFNOT	15158	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	108	15159
 * OP_LOAD_ENT	28	181	15160
 * OP_LOAD_F	15160	108	15161
 * OP_SUB_F	15159	15161	15162
 * OP_STORE_V	15162	4	0
 * OP_CALL1	488	0	0
 * OP_GT	1	2323	15163
 * OP_IFNOT	15163	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	15164
 * OP_LOAD_ENT	28	181	15167
 * OP_LOAD_V	15167	105	15168
 * OP_SUB_V	15164	15168	15171
 * OP_STORE_V	15171	4	0
 * OP_CALL1	462	0	0
 * OP_LT	1	2805	15174
 * OP_IFNOT	15174	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3163	0	0
 * OP_CALL0	15092	0	0
 * OP_DONE	0	0	0
 */

void () CheckForCharge = {

   if ( !globaldef1534 ) {

      return ;

   }
   if ( (time < self.attack_finished) ) {

      return ;

   }
   if ( (globaldef471 ((self.globaldef86 - self.enemy.globaldef86)) > globaldef1384) ) {

      return ;

   }
   if ( (vlen ((self.origin - self.enemy.origin)) < globaldef1439) ) {

      return ;

   }
   globaldef1517 (FL_SWIM);
   globaldef5042 ();

};

void () CheckContinueCharge;

// function CheckContinueCharge
// function number 1749 begins at statement 24577
/*
 * OP_LOAD_F	28	378	15176
 * OP_GT	31	15176	15177
 * OP_IFNOT	15177	5	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3163	0	0
 * OP_CALL0	15093	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	15178
 * OP_IFNOT	15178	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13254	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13255	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () CheckContinueCharge = {

   if ( (time > self.attack_finished) ) {

      globaldef1517 (MOVETYPE_WALK);
      globaldef5043 ();
      return ;

   }
   if ( (globaldef440 () > globaldef522) ) {

      sound (self,CHAN_WEAPON,globaldef4093,TRUE,ATTN_NORM);

   } else {

      sound (self,CHAN_WEAPON,globaldef4094,TRUE,ATTN_NORM);

   }

};

void () hknight_stand1;

// function hknight_stand1
// function number 1750 begins at statement 24601
/*
 * OP_STATE	213	15180	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand1 = [ 0.000, globaldef5064 ] {

   globaldef1709 ();

};

void () hknight_stand2;

// function hknight_stand2
// function number 1751 begins at statement 24604
/*
 * OP_STATE	214	15181	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand2 = [ 1.000, globaldef5065 ] {

   globaldef1709 ();

};

void () hknight_stand3;

// function hknight_stand3
// function number 1752 begins at statement 24607
/*
 * OP_STATE	216	15182	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand3 = [ 2.000, globaldef5066 ] {

   globaldef1709 ();

};

void () hknight_stand4;

// function hknight_stand4
// function number 1753 begins at statement 24610
/*
 * OP_STATE	228	15183	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand4 = [ 3.000, globaldef5067 ] {

   globaldef1709 ();

};

void () hknight_stand5;

// function hknight_stand5
// function number 1754 begins at statement 24613
/*
 * OP_STATE	229	15184	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand5 = [ 4.000, globaldef5068 ] {

   globaldef1709 ();

};

void () hknight_stand6;

// function hknight_stand6
// function number 1755 begins at statement 24616
/*
 * OP_STATE	230	15185	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand6 = [ 5.000, globaldef5069 ] {

   globaldef1709 ();

};

void () hknight_stand7;

// function hknight_stand7
// function number 1756 begins at statement 24619
/*
 * OP_STATE	231	15186	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand7 = [ 6.000, globaldef5070 ] {

   globaldef1709 ();

};

void () hknight_stand8;

// function hknight_stand8
// function number 1757 begins at statement 24622
/*
 * OP_STATE	232	15187	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand8 = [ 7.000, globaldef5071 ] {

   globaldef1709 ();

};

void () hknight_stand9;

// function hknight_stand9
// function number 1758 begins at statement 24625
/*
 * OP_STATE	217	15179	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand9 = [ 8.000, globaldef5063 ] {

   globaldef1709 ();

};

void () hknight_walk1;

// function hknight_walk1
// function number 1759 begins at statement 24628
/*
 * OP_STATE	234	15189	0
 * OP_CALL0	15094	0	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk1 = [ 9.000, globaldef5073 ] {

   globaldef5044 ();
   globaldef1702 (FL_SWIM);

};

void () hknight_walk2;

// function hknight_walk2
// function number 1760 begins at statement 24633
/*
 * OP_STATE	235	15190	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk2 = [ 10.000, globaldef5074 ] {

   globaldef1702 (MOVETYPE_FLY);

};

void () hknight_walk3;

// function hknight_walk3
// function number 1761 begins at statement 24637
/*
 * OP_STATE	236	15191	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk3 = [ 11.000, globaldef5075 ] {

   globaldef1702 (MOVETYPE_FLY);

};

void () hknight_walk4;

// function hknight_walk4
// function number 1762 begins at statement 24641
/*
 * OP_STATE	791	15192	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk4 = [ 12.000, globaldef5076 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () hknight_walk5;

// function hknight_walk5
// function number 1763 begins at statement 24645
/*
 * OP_STATE	792	15193	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk5 = [ 13.000, globaldef5077 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () hknight_walk6;

// function hknight_walk6
// function number 1764 begins at statement 24649
/*
 * OP_STATE	5693	15194	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk6 = [ 14.000, globaldef5078 ] {

   globaldef1702 (FL_SWIM);

};

void () hknight_walk7;

// function hknight_walk7
// function number 1765 begins at statement 24653
/*
 * OP_STATE	765	15195	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk7 = [ 15.000, globaldef5079 ] {

   globaldef1702 (FL_SWIM);

};

void () hknight_walk8;

// function hknight_walk8
// function number 1766 begins at statement 24657
/*
 * OP_STATE	218	15196	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk8 = [ 16.000, globaldef5080 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk9;

// function hknight_walk9
// function number 1767 begins at statement 24661
/*
 * OP_STATE	6892	15197	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk9 = [ 17.000, globaldef5081 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk10;

// function hknight_walk10
// function number 1768 begins at statement 24665
/*
 * OP_STATE	6133	15198	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk10 = [ 18.000, globaldef5082 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () hknight_walk11;

// function hknight_walk11
// function number 1769 begins at statement 24669
/*
 * OP_STATE	6895	15199	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk11 = [ 19.000, globaldef5083 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk12;

// function hknight_walk12
// function number 1770 begins at statement 24673
/*
 * OP_STATE	2323	15200	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk12 = [ 20.000, globaldef5084 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () hknight_walk13;

// function hknight_walk13
// function number 1771 begins at statement 24677
/*
 * OP_STATE	12465	15201	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk13 = [ 21.000, globaldef5085 ] {

   globaldef1702 (MOVETYPE_TOSS);

};

void () hknight_walk14;

// function hknight_walk14
// function number 1772 begins at statement 24681
/*
 * OP_STATE	12467	15202	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk14 = [ 22.000, globaldef5086 ] {

   globaldef1702 (FL_SWIM);

};

void () hknight_walk15;

// function hknight_walk15
// function number 1773 begins at statement 24685
/*
 * OP_STATE	304	15203	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk15 = [ 23.000, globaldef5087 ] {

   globaldef1702 (FL_SWIM);

};

void () hknight_walk16;

// function hknight_walk16
// function number 1774 begins at statement 24689
/*
 * OP_STATE	736	15204	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk16 = [ 24.000, globaldef5088 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () hknight_walk17;

// function hknight_walk17
// function number 1775 begins at statement 24693
/*
 * OP_STATE	305	15205	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk17 = [ 25.000, globaldef5089 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk18;

// function hknight_walk18
// function number 1776 begins at statement 24697
/*
 * OP_STATE	306	15206	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk18 = [ 26.000, globaldef5090 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk19;

// function hknight_walk19
// function number 1777 begins at statement 24701
/*
 * OP_STATE	307	15207	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk19 = [ 27.000, globaldef5091 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () hknight_walk20;

// function hknight_walk20
// function number 1778 begins at statement 24705
/*
 * OP_STATE	308	15188	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk20 = [ 28.000, globaldef5072 ] {

   globaldef1702 (FL_SWIM);

};

// function hknight_run1
// function number 1779 begins at statement 24709
/*
 * OP_STATE	9664	15208	0
 * OP_CALL0	15094	0	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_CALL0	15155	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run1 = [ 29.000, globaldef5092 ] {

   globaldef5044 ();
   globaldef1734 (globaldef1384);
   globaldef5061 ();

};

void () hknight_run2;

// function hknight_run2
// function number 1780 begins at statement 24715
/*
 * OP_STATE	309	15209	0
 * OP_STORE_V	305	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run2 = [ 30.000, globaldef5093 ] {

   globaldef1734 (globaldef288);

};

void () hknight_run3;

// function hknight_run3
// function number 1781 begins at statement 24719
/*
 * OP_STATE	310	15210	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run3 = [ 31.000, globaldef5094 ] {

   globaldef1734 (globaldef2221);

};

void () hknight_run4;

// function hknight_run4
// function number 1782 begins at statement 24723
/*
 * OP_STATE	219	15211	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run4 = [ 32.000, globaldef5095 ] {

   globaldef1734 (FL_INWATER);

};

void () hknight_run5;

// function hknight_run5
// function number 1783 begins at statement 24727
/*
 * OP_STATE	312	15212	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run5 = [ 33.000, globaldef5096 ] {

   globaldef1734 (globaldef2136);

};

void () hknight_run6;

// function hknight_run6
// function number 1784 begins at statement 24731
/*
 * OP_STATE	9671	15213	0
 * OP_STORE_V	305	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run6 = [ 34.000, globaldef5097 ] {

   globaldef1734 (globaldef288);

};

void () hknight_run7;

// function hknight_run7
// function number 1785 begins at statement 24735
/*
 * OP_STATE	5878	15214	0
 * OP_STORE_V	12465	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run7 = [ 35.000, globaldef5098 ] {

   globaldef1734 (globaldef3691);

};

void () hknight_run8;

// function hknight_run8
// function number 1786 begins at statement 24739
/*
 * OP_STATE	9655	15093	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run8 = [ 36.000, globaldef5043 ] {

   globaldef1734 (globaldef775);

};

void () hknight_pain1;

// function hknight_pain1
// function number 1787 begins at statement 24743
/*
 * OP_STATE	9657	15216	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15217	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () hknight_pain1 = [ 37.000, globaldef5100 ] {

   sound (self,CHAN_VOICE,globaldef5101,TRUE,ATTN_NORM);

};

void () hknight_pain2;
string globaldef5101 /* = "hknight/pain1.wav" */;

// function hknight_pain2
// function number 1788 begins at statement 24751
/*
 * OP_STATE	9659	15218	0
 * OP_DONE	0	0	0
 */

void () hknight_pain2 = [ 38.000, globaldef5102 ] {


};

void () hknight_pain3;

// function hknight_pain3
// function number 1789 begins at statement 24753
/*
 * OP_STATE	9661	15219	0
 * OP_DONE	0	0	0
 */

void () hknight_pain3 = [ 39.000, globaldef5103 ] {


};

void () hknight_pain4;

// function hknight_pain4
// function number 1790 begins at statement 24755
/*
 * OP_STATE	746	15220	0
 * OP_DONE	0	0	0
 */

void () hknight_pain4 = [ 40.000, globaldef5104 ] {


};

void () hknight_pain5;

// function hknight_pain5
// function number 1791 begins at statement 24757
/*
 * OP_STATE	9993	15093	0
 * OP_DONE	0	0	0
 */

void () hknight_pain5 = [ 41.000, globaldef5043 ] {


};

void () hknight_die1;

// function hknight_die1
// function number 1792 begins at statement 24759
/*
 * OP_STATE	9995	15222	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die1 = [ 42.000, globaldef5106 ] {

   globaldef1694 (MOVETYPE_BOUNCE);

};

void () hknight_die2;

// function hknight_die2
// function number 1793 begins at statement 24763
/*
 * OP_STATE	9997	15223	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die2 = [ 43.000, globaldef5107 ] {

   globaldef1694 (FL_CLIENT);

};

void () hknight_die3;

// function hknight_die3
// function number 1794 begins at statement 24767
/*
 * OP_STATE	9999	15224	0
 * OP_ADDRESS	28	104	15225
 * OP_STOREP_F	237	15225	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die3 = [ 44.000, globaldef5108 ] {

   self.solid = SOLID_NOT;
   globaldef1694 (MOVETYPE_PUSH);

};

void () hknight_die4;

// function hknight_die4
// function number 1795 begins at statement 24773
/*
 * OP_STATE	2598	15226	0
 * OP_DONE	0	0	0
 */

void () hknight_die4 = [ 45.000, globaldef5109 ] {


};

void () hknight_die5;

// function hknight_die5
// function number 1796 begins at statement 24775
/*
 * OP_STATE	10002	15227	0
 * OP_DONE	0	0	0
 */

void () hknight_die5 = [ 46.000, globaldef5110 ] {


};

void () hknight_die6;

// function hknight_die6
// function number 1797 begins at statement 24777
/*
 * OP_STATE	10004	15228	0
 * OP_DONE	0	0	0
 */

void () hknight_die6 = [ 47.000, globaldef5111 ] {


};

void () hknight_die7;

// function hknight_die7
// function number 1798 begins at statement 24779
/*
 * OP_STATE	10006	15229	0
 * OP_DONE	0	0	0
 */

void () hknight_die7 = [ 48.000, globaldef5112 ] {


};

void () hknight_die8;

// function hknight_die8
// function number 1799 begins at statement 24781
/*
 * OP_STATE	10008	15230	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die8 = [ 49.000, globaldef5113 ] {

   globaldef1694 (MOVETYPE_BOUNCE);

};

void () hknight_die9;

// function hknight_die9
// function number 1800 begins at statement 24785
/*
 * OP_STATE	1470	15231	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die9 = [ 50.000, globaldef5114 ] {

   globaldef1694 (MOVETYPE_BOUNCEMISSILE);

};

void () hknight_die10;

// function hknight_die10
// function number 1801 begins at statement 24789
/*
 * OP_STATE	9911	15232	0
 * OP_DONE	0	0	0
 */

void () hknight_die10 = [ 51.000, globaldef5115 ] {


};

void () hknight_die11;

// function hknight_die11
// function number 1802 begins at statement 24791
/*
 * OP_STATE	9913	15233	0
 * OP_DONE	0	0	0
 */

void () hknight_die11 = [ 52.000, globaldef5116 ] {


};

void () hknight_die12;

// function hknight_die12
// function number 1803 begins at statement 24793
/*
 * OP_STATE	9915	15233	0
 * OP_DONE	0	0	0
 */

void () hknight_die12 = [ 53.000, globaldef5116 ] {


};

void () hknight_dieb1;

// function hknight_dieb1
// function number 1804 begins at statement 24795
/*
 * OP_STATE	9917	15235	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb1 = [ 54.000, globaldef5118 ] {


};

void () hknight_dieb2;

// function hknight_dieb2
// function number 1805 begins at statement 24797
/*
 * OP_STATE	9919	15236	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb2 = [ 55.000, globaldef5119 ] {


};

void () hknight_dieb3;

// function hknight_dieb3
// function number 1806 begins at statement 24799
/*
 * OP_STATE	9921	15237	0
 * OP_ADDRESS	28	104	15238
 * OP_STOREP_F	237	15238	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb3 = [ 56.000, globaldef5120 ] {

   self.solid = SOLID_NOT;

};

void () hknight_dieb4;

// function hknight_dieb4
// function number 1807 begins at statement 24803
/*
 * OP_STATE	9923	15239	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb4 = [ 57.000, globaldef5121 ] {


};

void () hknight_dieb5;

// function hknight_dieb5
// function number 1808 begins at statement 24805
/*
 * OP_STATE	9925	15240	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb5 = [ 58.000, globaldef5122 ] {


};

void () hknight_dieb6;

// function hknight_dieb6
// function number 1809 begins at statement 24807
/*
 * OP_STATE	2783	15241	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb6 = [ 59.000, globaldef5123 ] {


};

void () hknight_dieb7;

// function hknight_dieb7
// function number 1810 begins at statement 24809
/*
 * OP_STATE	2019	15242	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb7 = [ 60.000, globaldef5124 ] {


};

void () hknight_dieb8;

// function hknight_dieb8
// function number 1811 begins at statement 24811
/*
 * OP_STATE	9928	15243	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb8 = [ 61.000, globaldef5125 ] {


};

void () hknight_dieb9;

// function hknight_dieb9
// function number 1812 begins at statement 24813
/*
 * OP_STATE	9930	15243	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb9 = [ 62.000, globaldef5125 ] {


};

void () hknight_die;

// function hknight_die
// function number 1813 begins at statement 24815
/*
 * OP_LOAD_F	28	152	15245
 * OP_LT	15245	9236	15246
 * OP_IFNOT	15246	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	15247	4	0
 * OP_LOAD_F	28	152	15248
 * OP_STORE_V	15248	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	15249
 * OP_STORE_V	15249	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	15250
 * OP_STORE_V	15250	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	15251
 * OP_STORE_V	15251	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15252	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	15253
 * OP_IFNOT	15253	3	0
 * OP_CALL0	15221	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	15234	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die = {

   if ( (self.globaldef130 < globaldef3008) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef5127,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2434,self.globaldef130);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef5128,TRUE,ATTN_NORM);
   if ( (globaldef440 () > globaldef522) ) {

      globaldef5105 ();

   } else {

      globaldef5117 ();

   }

};
string globaldef5127 /* = "progs/h_hellkn.mdl" */;
string globaldef5128 /* = "hknight/death1.wav" */;

void () hknight_magica1;

// function hknight_magica1
// function number 1814 begins at statement 24854
/*
 * OP_STATE	9955	15255	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica1 = [ 79.000, globaldef5130 ] {

   globaldef1533 ();

};

void () hknight_magica2;

// function hknight_magica2
// function number 1815 begins at statement 24857
/*
 * OP_STATE	2805	15256	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica2 = [ 80.000, globaldef5131 ] {

   globaldef1533 ();

};

void () hknight_magica3;

// function hknight_magica3
// function number 1816 begins at statement 24860
/*
 * OP_STATE	8204	15257	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica3 = [ 81.000, globaldef5132 ] {

   globaldef1533 ();

};

void () hknight_magica4;

// function hknight_magica4
// function number 1817 begins at statement 24863
/*
 * OP_STATE	9959	15258	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica4 = [ 82.000, globaldef5133 ] {

   globaldef1533 ();

};

void () hknight_magica5;

// function hknight_magica5
// function number 1818 begins at statement 24866
/*
 * OP_STATE	9961	15259	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica5 = [ 83.000, globaldef5134 ] {

   globaldef1533 ();

};

void () hknight_magica6;

// function hknight_magica6
// function number 1819 begins at statement 24869
/*
 * OP_STATE	7694	15260	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica6 = [ 84.000, globaldef5135 ] {

   globaldef1533 ();

};

void () hknight_magica7;

// function hknight_magica7
// function number 1820 begins at statement 24872
/*
 * OP_STATE	9963	15261	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica7 = [ 85.000, globaldef5136 ] {

   globaldef5045 (CONTENT_SOLID);

};

void () hknight_magica8;

// function hknight_magica8
// function number 1821 begins at statement 24876
/*
 * OP_STATE	9965	15262	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica8 = [ 86.000, globaldef5137 ] {

   globaldef5045 (CONTENT_EMPTY);

};

void () hknight_magica9;

// function hknight_magica9
// function number 1822 begins at statement 24880
/*
 * OP_STATE	9967	15263	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica9 = [ 87.000, globaldef5138 ] {

   globaldef5045 (FALSE);

};

void () hknight_magica10;

// function hknight_magica10
// function number 1823 begins at statement 24884
/*
 * OP_STATE	9969	15264	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica10 = [ 88.000, globaldef5139 ] {

   globaldef5045 (TRUE);

};

void () hknight_magica11;

// function hknight_magica11
// function number 1824 begins at statement 24888
/*
 * OP_STATE	9971	15265	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica11 = [ 89.000, globaldef5140 ] {

   globaldef5045 (FL_SWIM);

};

void () hknight_magica12;

// function hknight_magica12
// function number 1825 begins at statement 24892
/*
 * OP_STATE	2658	15266	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica12 = [ 90.000, globaldef5141 ] {

   globaldef5045 (MOVETYPE_WALK);

};

void () hknight_magica13;

// function hknight_magica13
// function number 1826 begins at statement 24896
/*
 * OP_STATE	9974	15267	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica13 = [ 91.000, globaldef5142 ] {

   globaldef1533 ();

};

void () hknight_magica14;

// function hknight_magica14
// function number 1827 begins at statement 24899
/*
 * OP_STATE	9976	15093	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica14 = [ 92.000, globaldef5043 ] {

   globaldef1533 ();

};

void () hknight_magicb1;

// function hknight_magicb1
// function number 1828 begins at statement 24902
/*
 * OP_STATE	9978	15269	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb1 = [ 93.000, globaldef5144 ] {

   globaldef1533 ();

};

void () hknight_magicb2;

// function hknight_magicb2
// function number 1829 begins at statement 24905
/*
 * OP_STATE	9979	15270	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb2 = [ 94.000, globaldef5145 ] {

   globaldef1533 ();

};

void () hknight_magicb3;

// function hknight_magicb3
// function number 1830 begins at statement 24908
/*
 * OP_STATE	9981	15271	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb3 = [ 95.000, globaldef5146 ] {

   globaldef1533 ();

};

void () hknight_magicb4;

// function hknight_magicb4
// function number 1831 begins at statement 24911
/*
 * OP_STATE	9983	15272	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb4 = [ 96.000, globaldef5147 ] {

   globaldef1533 ();

};

void () hknight_magicb5;

// function hknight_magicb5
// function number 1832 begins at statement 24914
/*
 * OP_STATE	9985	15273	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb5 = [ 97.000, globaldef5148 ] {

   globaldef1533 ();

};

void () hknight_magicb6;

// function hknight_magicb6
// function number 1833 begins at statement 24917
/*
 * OP_STATE	9987	15274	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb6 = [ 98.000, globaldef5149 ] {

   globaldef1533 ();

};

void () hknight_magicb7;

// function hknight_magicb7
// function number 1834 begins at statement 24920
/*
 * OP_STATE	9989	15275	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb7 = [ 99.000, globaldef5150 ] {

   globaldef5045 (CONTENT_SOLID);

};

void () hknight_magicb8;

// function hknight_magicb8
// function number 1835 begins at statement 24924
/*
 * OP_STATE	1997	15276	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb8 = [ 100.000, globaldef5151 ] {

   globaldef5045 (CONTENT_EMPTY);

};

void () hknight_magicb9;

// function hknight_magicb9
// function number 1836 begins at statement 24928
/*
 * OP_STATE	8107	15277	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb9 = [ 101.000, globaldef5152 ] {

   globaldef5045 (FALSE);

};

void () hknight_magicb10;

// function hknight_magicb10
// function number 1837 begins at statement 24932
/*
 * OP_STATE	8109	15278	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb10 = [ 102.000, globaldef5153 ] {

   globaldef5045 (TRUE);

};

void () hknight_magicb11;

// function hknight_magicb11
// function number 1838 begins at statement 24936
/*
 * OP_STATE	8111	15279	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb11 = [ 103.000, globaldef5154 ] {

   globaldef5045 (FL_SWIM);

};

void () hknight_magicb12;

// function hknight_magicb12
// function number 1839 begins at statement 24940
/*
 * OP_STATE	8114	15280	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb12 = [ 104.000, globaldef5155 ] {

   globaldef5045 (MOVETYPE_WALK);

};

void () hknight_magicb13;

// function hknight_magicb13
// function number 1840 begins at statement 24944
/*
 * OP_STATE	9562	15093	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb13 = [ 105.000, globaldef5043 ] {

   globaldef1533 ();

};

void () hknight_magicc1;

// function hknight_magicc1
// function number 1841 begins at statement 24947
/*
 * OP_STATE	14471	15282	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc1 = [ 155.000, globaldef5157 ] {

   globaldef1533 ();

};

void () hknight_magicc2;

// function hknight_magicc2
// function number 1842 begins at statement 24950
/*
 * OP_STATE	14473	15283	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc2 = [ 156.000, globaldef5158 ] {

   globaldef1533 ();

};

void () hknight_magicc3;

// function hknight_magicc3
// function number 1843 begins at statement 24953
/*
 * OP_STATE	14475	15284	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc3 = [ 157.000, globaldef5159 ] {

   globaldef1533 ();

};

void () hknight_magicc4;

// function hknight_magicc4
// function number 1844 begins at statement 24956
/*
 * OP_STATE	14477	15285	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc4 = [ 158.000, globaldef5160 ] {

   globaldef1533 ();

};

void () hknight_magicc5;

// function hknight_magicc5
// function number 1845 begins at statement 24959
/*
 * OP_STATE	14479	15286	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc5 = [ 159.000, globaldef5161 ] {

   globaldef1533 ();

};

void () hknight_magicc6;

// function hknight_magicc6
// function number 1846 begins at statement 24962
/*
 * OP_STATE	12014	15287	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc6 = [ 160.000, globaldef5162 ] {

   globaldef5045 (CONTENT_SOLID);

};

void () hknight_magicc7;

// function hknight_magicc7
// function number 1847 begins at statement 24966
/*
 * OP_STATE	2155	15288	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc7 = [ 161.000, globaldef5163 ] {

   globaldef5045 (CONTENT_EMPTY);

};

void () hknight_magicc8;

// function hknight_magicc8
// function number 1848 begins at statement 24970
/*
 * OP_STATE	14483	15289	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc8 = [ 162.000, globaldef5164 ] {

   globaldef5045 (FALSE);

};

void () hknight_magicc9;

// function hknight_magicc9
// function number 1849 begins at statement 24974
/*
 * OP_STATE	14486	15290	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc9 = [ 163.000, globaldef5165 ] {

   globaldef5045 (TRUE);

};

void () hknight_magicc10;

// function hknight_magicc10
// function number 1850 begins at statement 24978
/*
 * OP_STATE	14488	15291	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc10 = [ 164.000, globaldef5166 ] {

   globaldef5045 (FL_SWIM);

};

void () hknight_magicc11;

// function hknight_magicc11
// function number 1851 begins at statement 24982
/*
 * OP_STATE	14490	15093	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	15095	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc11 = [ 165.000, globaldef5043 ] {

   globaldef5045 (MOVETYPE_WALK);

};

// function hknight_char_a1
// function number 1852 begins at statement 24986
/*
 * OP_STATE	6707	15292	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a1 = [ 63.000, globaldef5167 ] {

   globaldef1557 (globaldef1384);

};

void () hknight_char_a2;

// function hknight_char_a2
// function number 1853 begins at statement 24990
/*
 * OP_STATE	220	15293	0
 * OP_STORE_V	305	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a2 = [ 64.000, globaldef5168 ] {

   globaldef1557 (globaldef288);

};

void () hknight_char_a3;

// function hknight_char_a3
// function number 1854 begins at statement 24994
/*
 * OP_STATE	9934	15294	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a3 = [ 65.000, globaldef5169 ] {

   globaldef1557 (globaldef2221);

};

void () hknight_char_a4;

// function hknight_char_a4
// function number 1855 begins at statement 24998
/*
 * OP_STATE	9936	15295	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a4 = [ 66.000, globaldef5170 ] {

   globaldef1557 (FL_INWATER);

};

void () hknight_char_a5;

// function hknight_char_a5
// function number 1856 begins at statement 25002
/*
 * OP_STATE	9938	15296	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a5 = [ 67.000, globaldef5171 ] {

   globaldef1557 (globaldef2136);

};

void () hknight_char_a6;

// function hknight_char_a6
// function number 1857 begins at statement 25006
/*
 * OP_STATE	8193	15297	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a6 = [ 68.000, globaldef5172 ] {

   globaldef1557 (globaldef1384);
   globaldef1565 ();

};

void () hknight_char_a7;

// function hknight_char_a7
// function number 1858 begins at statement 25011
/*
 * OP_STATE	8196	15298	0
 * OP_STORE_V	12465	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a7 = [ 69.000, globaldef5173 ] {

   globaldef1557 (globaldef3691);
   globaldef1565 ();

};

void () hknight_char_a8;

// function hknight_char_a8
// function number 1859 begins at statement 25016
/*
 * OP_STATE	1536	15299	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a8 = [ 70.000, globaldef5174 ] {

   globaldef1557 (globaldef775);
   globaldef1565 ();

};

void () hknight_char_a9;

// function hknight_char_a9
// function number 1860 begins at statement 25021
/*
 * OP_STATE	8201	15300	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a9 = [ 71.000, globaldef5175 ] {

   globaldef1557 (globaldef1384);
   globaldef1565 ();

};

void () hknight_char_a10;

// function hknight_char_a10
// function number 1861 begins at statement 25026
/*
 * OP_STATE	9943	15301	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a10 = [ 72.000, globaldef5176 ] {

   globaldef1557 (globaldef1384);
   globaldef1565 ();

};

void () hknight_char_a11;

// function hknight_char_a11
// function number 1862 begins at statement 25031
/*
 * OP_STATE	5487	15302	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a11 = [ 73.000, globaldef5177 ] {

   globaldef1557 (globaldef2221);
   globaldef1565 ();

};

void () hknight_char_a12;

// function hknight_char_a12
// function number 1863 begins at statement 25036
/*
 * OP_STATE	9946	15303	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a12 = [ 74.000, globaldef5178 ] {

   globaldef1557 (FL_INWATER);

};

void () hknight_char_a13;

// function hknight_char_a13
// function number 1864 begins at statement 25040
/*
 * OP_STATE	9173	15304	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a13 = [ 75.000, globaldef5179 ] {

   globaldef1557 (globaldef2136);

};

void () hknight_char_a14;

// function hknight_char_a14
// function number 1865 begins at statement 25044
/*
 * OP_STATE	9949	15305	0
 * OP_STORE_V	305	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a14 = [ 76.000, globaldef5180 ] {

   globaldef1557 (globaldef288);

};

void () hknight_char_a15;

// function hknight_char_a15
// function number 1866 begins at statement 25048
/*
 * OP_STATE	9951	15306	0
 * OP_STORE_V	12465	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a15 = [ 77.000, globaldef5181 ] {

   globaldef1557 (globaldef3691);

};

void () hknight_char_a16;

// function hknight_char_a16
// function number 1867 begins at statement 25052
/*
 * OP_STATE	9953	15093	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a16 = [ 78.000, globaldef5043 ] {

   globaldef1557 (globaldef775);

};

void () hknight_char_b1;

// function hknight_char_b1
// function number 1868 begins at statement 25056
/*
 * OP_STATE	9577	15308	0
 * OP_CALL0	15175	0	0
 * OP_STORE_V	304	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b1 = [ 106.000, globaldef5183 ] {

   globaldef5062 ();
   globaldef1557 (SVC_TEMP);
   globaldef1565 ();

};

void () hknight_char_b2;

// function hknight_char_b2
// function number 1869 begins at statement 25062
/*
 * OP_STATE	9591	15309	0
 * OP_STORE_V	6892	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b2 = [ 107.000, globaldef5184 ] {

   globaldef1557 (globaldef2519);
   globaldef1565 ();

};

void () hknight_char_b3;

// function hknight_char_b3
// function number 1870 begins at statement 25067
/*
 * OP_STATE	9597	15310	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b3 = [ 108.000, globaldef5185 ] {

   globaldef1557 (globaldef774);
   globaldef1565 ();

};

void () hknight_char_b4;

// function hknight_char_b4
// function number 1871 begins at statement 25072
/*
 * OP_STATE	9600	15311	0
 * OP_STORE_V	12467	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b4 = [ 109.000, globaldef5186 ] {

   globaldef1557 (globaldef3693);
   globaldef1565 ();

};

void () hknight_char_b5;

// function hknight_char_b5
// function number 1872 begins at statement 25077
/*
 * OP_STATE	9603	15312	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b5 = [ 110.000, globaldef5187 ] {

   globaldef1557 (globaldef2221);
   globaldef1565 ();

};

void () hknight_char_b6;

// function hknight_char_b6
// function number 1873 begins at statement 25082
/*
 * OP_STATE	2224	15307	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b6 = [ 111.000, globaldef5182 ] {

   globaldef1557 (FL_CLIENT);
   globaldef1565 ();

};

void () hknight_slice1;

// function hknight_slice1
// function number 1874 begins at statement 25087
/*
 * OP_STATE	9608	15314	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice1 = [ 112.000, globaldef5189 ] {

   globaldef1557 (MOVETYPE_FLYMISSILE);

};

void () hknight_slice2;

// function hknight_slice2
// function number 1875 begins at statement 25091
/*
 * OP_STATE	9473	15315	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice2 = [ 113.000, globaldef5190 ] {

   globaldef1557 (MOVETYPE_TOSS);

};

void () hknight_slice3;

// function hknight_slice3
// function number 1876 begins at statement 25095
/*
 * OP_STATE	9479	15316	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice3 = [ 114.000, globaldef5191 ] {

   globaldef1557 (globaldef775);

};

void () hknight_slice4;

// function hknight_slice4
// function number 1877 begins at statement 25099
/*
 * OP_STATE	9482	15317	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice4 = [ 115.000, globaldef5192 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () hknight_slice5;

// function hknight_slice5
// function number 1878 begins at statement 25103
/*
 * OP_STATE	9485	15318	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice5 = [ 116.000, globaldef5193 ] {

   globaldef1557 (MOVETYPE_PUSH);
   globaldef1565 ();

};

void () hknight_slice6;

// function hknight_slice6
// function number 1879 begins at statement 25108
/*
 * OP_STATE	9488	15319	0
 * OP_STORE_V	765	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice6 = [ 117.000, globaldef5194 ] {

   globaldef1557 (globaldef748);
   globaldef1565 ();

};

void () hknight_slice7;

// function hknight_slice7
// function number 1880 begins at statement 25113
/*
 * OP_STATE	9491	15320	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice7 = [ 118.000, globaldef5195 ] {

   globaldef1557 (FL_CLIENT);
   globaldef1565 ();

};

void () hknight_slice8;

// function hknight_slice8
// function number 1881 begins at statement 25118
/*
 * OP_STATE	9493	15321	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice8 = [ 119.000, globaldef5196 ] {

   globaldef1557 (FL_SWIM);
   globaldef1565 ();

};

void () hknight_slice9;

// function hknight_slice9
// function number 1882 begins at statement 25123
/*
 * OP_STATE	3584	15322	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice9 = [ 120.000, globaldef5197 ] {

   globaldef1565 ();

};

void () hknight_slice10;

// function hknight_slice10
// function number 1883 begins at statement 25126
/*
 * OP_STATE	9498	15093	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice10 = [ 121.000, globaldef5043 ] {

   globaldef1557 (MOVETYPE_WALK);

};

void () hknight_smash1;

// function hknight_smash1
// function number 1884 begins at statement 25130
/*
 * OP_STATE	9501	15324	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash1 = [ 122.000, globaldef5199 ] {

   globaldef1557 (TRUE);

};

void () hknight_smash2;

// function hknight_smash2
// function number 1885 begins at statement 25134
/*
 * OP_STATE	12627	15325	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash2 = [ 123.000, globaldef5200 ] {

   globaldef1557 (globaldef775);

};

void () hknight_smash3;

// function hknight_smash3
// function number 1886 begins at statement 25138
/*
 * OP_STATE	12629	15326	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash3 = [ 124.000, globaldef5201 ] {

   globaldef1557 (MOVETYPE_FLYMISSILE);

};

void () hknight_smash4;

// function hknight_smash4
// function number 1887 begins at statement 25142
/*
 * OP_STATE	9503	15327	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash4 = [ 125.000, globaldef5202 ] {

   globaldef1557 (MOVETYPE_BOUNCEMISSILE);

};

void () hknight_smash5;

// function hknight_smash5
// function number 1888 begins at statement 25146
/*
 * OP_STATE	9506	15328	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash5 = [ 126.000, globaldef5203 ] {

   globaldef1557 (MOVETYPE_BOUNCE);
   globaldef1565 ();

};

void () hknight_smash6;

// function hknight_smash6
// function number 1889 begins at statement 25151
/*
 * OP_STATE	9509	15329	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash6 = [ 127.000, globaldef5204 ] {

   globaldef1557 (MOVETYPE_PUSH);
   globaldef1565 ();

};

void () hknight_smash7;

// function hknight_smash7
// function number 1890 begins at statement 25156
/*
 * OP_STATE	221	15330	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash7 = [ 128.000, globaldef5205 ] {

   globaldef1557 (globaldef774);
   globaldef1565 ();

};

void () hknight_smash8;

// function hknight_smash8
// function number 1891 begins at statement 25161
/*
 * OP_STATE	12637	15331	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash8 = [ 129.000, globaldef5206 ] {

   globaldef1557 (FL_SWIM);
   globaldef1565 ();

};

void () hknight_smash9;

// function hknight_smash9
// function number 1892 begins at statement 25166
/*
 * OP_STATE	12639	15332	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash9 = [ 130.000, globaldef5207 ] {

   globaldef1557 (MOVETYPE_WALK);
   globaldef1565 ();

};

void () hknight_smash10;

// function hknight_smash10
// function number 1893 begins at statement 25171
/*
 * OP_STATE	9513	15333	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash10 = [ 131.000, globaldef5208 ] {

   globaldef1557 (FALSE);

};

void () hknight_smash11;

// function hknight_smash11
// function number 1894 begins at statement 25175
/*
 * OP_STATE	9516	15093	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash11 = [ 132.000, globaldef5043 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk1;

// function hknight_watk1
// function number 1895 begins at statement 25179
/*
 * OP_STATE	9519	15335	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk1 = [ 133.000, globaldef5210 ] {

   globaldef1557 (FL_SWIM);

};

void () hknight_watk2;

// function hknight_watk2
// function number 1896 begins at statement 25183
/*
 * OP_STATE	9522	15336	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk2 = [ 134.000, globaldef5211 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk3;

// function hknight_watk3
// function number 1897 begins at statement 25187
/*
 * OP_STATE	12645	15337	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk3 = [ 135.000, globaldef5212 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk4;

// function hknight_watk4
// function number 1898 begins at statement 25191
/*
 * OP_STATE	14438	15338	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk4 = [ 136.000, globaldef5213 ] {

   globaldef1565 ();

};

void () hknight_watk5;

// function hknight_watk5
// function number 1899 begins at statement 25194
/*
 * OP_STATE	9524	15339	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk5 = [ 137.000, globaldef5214 ] {

   globaldef1565 ();

};

void () hknight_watk6;

// function hknight_watk6
// function number 1900 begins at statement 25197
/*
 * OP_STATE	9527	15340	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk6 = [ 138.000, globaldef5215 ] {

   globaldef1565 ();

};

void () hknight_watk7;

// function hknight_watk7
// function number 1901 begins at statement 25200
/*
 * OP_STATE	9530	15341	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk7 = [ 139.000, globaldef5216 ] {

   globaldef1557 (TRUE);

};

void () hknight_watk8;

// function hknight_watk8
// function number 1902 begins at statement 25204
/*
 * OP_STATE	9533	15342	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk8 = [ 140.000, globaldef5217 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () hknight_watk9;

// function hknight_watk9
// function number 1903 begins at statement 25208
/*
 * OP_STATE	14444	15343	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk9 = [ 141.000, globaldef5218 ] {

   globaldef1557 (MOVETYPE_FLY);

};

void () hknight_watk10;

// function hknight_watk10
// function number 1904 begins at statement 25212
/*
 * OP_STATE	14446	15344	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk10 = [ 142.000, globaldef5219 ] {

   globaldef1557 (MOVETYPE_WALK);
   globaldef1565 ();

};

void () hknight_watk11;

// function hknight_watk11
// function number 1905 begins at statement 25217
/*
 * OP_STATE	14448	15345	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk11 = [ 143.000, globaldef5220 ] {

   globaldef1557 (FL_SWIM);
   globaldef1565 ();

};

void () hknight_watk12;

// function hknight_watk12
// function number 1906 begins at statement 25222
/*
 * OP_STATE	14450	15346	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk12 = [ 144.000, globaldef5221 ] {

   globaldef1557 (FL_SWIM);
   globaldef1565 ();

};

void () hknight_watk13;

// function hknight_watk13
// function number 1907 begins at statement 25227
/*
 * OP_STATE	14452	15347	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk13 = [ 145.000, globaldef5222 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk14;

// function hknight_watk14
// function number 1908 begins at statement 25231
/*
 * OP_STATE	14454	15348	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk14 = [ 146.000, globaldef5223 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk15;

// function hknight_watk15
// function number 1909 begins at statement 25235
/*
 * OP_STATE	14456	15349	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk15 = [ 147.000, globaldef5224 ] {

   globaldef1557 (FALSE);

};

void () hknight_watk16;

// function hknight_watk16
// function number 1910 begins at statement 25239
/*
 * OP_STATE	14458	15350	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk16 = [ 148.000, globaldef5225 ] {

   globaldef1557 (TRUE);

};

void () hknight_watk17;

// function hknight_watk17
// function number 1911 begins at statement 25243
/*
 * OP_STATE	14460	15351	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk17 = [ 149.000, globaldef5226 ] {

   globaldef1557 (TRUE);
   globaldef1565 ();

};

void () hknight_watk18;

// function hknight_watk18
// function number 1912 begins at statement 25248
/*
 * OP_STATE	2003	15352	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk18 = [ 150.000, globaldef5227 ] {

   globaldef1557 (MOVETYPE_WALK);
   globaldef1565 ();

};

void () hknight_watk19;

// function hknight_watk19
// function number 1913 begins at statement 25253
/*
 * OP_STATE	14463	15353	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk19 = [ 151.000, globaldef5228 ] {

   globaldef1557 (MOVETYPE_STEP);
   globaldef1565 ();

};

void () hknight_watk20;

// function hknight_watk20
// function number 1914 begins at statement 25258
/*
 * OP_STATE	14465	15354	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk20 = [ 152.000, globaldef5229 ] {

   globaldef1557 (MOVETYPE_TOSS);

};

void () hknight_watk21;

// function hknight_watk21
// function number 1915 begins at statement 25262
/*
 * OP_STATE	14467	15355	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk21 = [ 153.000, globaldef5230 ] {

   globaldef1557 (MOVETYPE_PUSH);

};

void () hknight_watk22;

// function hknight_watk22
// function number 1916 begins at statement 25266
/*
 * OP_STATE	14469	15093	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk22 = [ 154.000, globaldef5043 ] {

   globaldef1557 (MOVETYPE_WALK);

};

// function hk_idle_sound
// function number 1917 begins at statement 25270
/*
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	15356
 * OP_IFNOT	15356	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15357	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () hk_idle_sound = {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef5231,TRUE,ATTN_NORM);

   }

};
string globaldef5231 /* = "hknight/idle.wav" */;

void (entity globaldef5233, float globaldef5234) hknight_pain;

// function hknight_pain
// function number 1918 begins at statement 25280
/*
 * OP_LOAD_F	28	379	15361
 * OP_GT	15361	31	15362
 * OP_IFNOT	15362	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15217	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	379	15363
 * OP_SUB_F	31	15363	15364
 * OP_GT	15364	230	15365
 * OP_IFNOT	15365	6	0
 * OP_CALL0	15215	0	0
 * OP_ADDRESS	28	379	15366
 * OP_ADD_F	31	214	15367
 * OP_STOREP_F	15367	15366	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	309	15368
 * OP_GT	15368	15360	15369
 * OP_IFNOT	15369	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	379	15370
 * OP_ADD_F	31	214	15371
 * OP_STOREP_F	15371	15370	0
 * OP_CALL0	15215	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef5233, float globaldef5234) hknight_pain = {

   if ( (self.globaldef362 > time) ) {

      return ;

   }
   sound (self,CHAN_VOICE,globaldef5101,TRUE,ATTN_NORM);
   if ( ((time - self.globaldef362) > MOVETYPE_FLY) ) {

      globaldef5099 ();
      self.globaldef362 = (time + TRUE);
      return ;

   }
   if ( ((globaldef440 () * SVC_INTERMISSION) > globaldef5234) ) {

      return ;

   }
   self.globaldef362 = (time + TRUE);
   globaldef5099 ();

};
float globaldef5235 /* = 0.000 */;

void () hknight_melee;

// function hknight_melee
// function number 1919 begins at statement 25309
/*
 * OP_ADD_F	15372	214	15374
 * OP_STORE_F	15374	15372	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	15375	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_EQ_F	15372	214	15376
 * OP_IFNOT	15376	3	0
 * OP_CALL0	15313	0	0
 * OP_GOTO	9	0	0
 * OP_EQ_F	15372	216	15377
 * OP_IFNOT	15377	3	0
 * OP_CALL0	15323	0	0
 * OP_GOTO	5	0	0
 * OP_EQ_F	15372	228	15378
 * OP_IFNOT	15378	3	0
 * OP_CALL0	15334	0	0
 * OP_STORE_F	213	15372	0
 * OP_DONE	0	0	0
 */

void () hknight_melee = {

   globaldef5235 = (globaldef5235 + TRUE);
   sound (self,CHAN_WEAPON,globaldef5237,TRUE,ATTN_NORM);
   if ( (globaldef5235 == TRUE) ) {

      globaldef5188 ();

   } else {

      if ( (globaldef5235 == FL_SWIM) ) {

         globaldef5198 ();

      } else {

         if ( (globaldef5235 == MOVETYPE_WALK) ) {

            globaldef5209 ();
            globaldef5235 = FALSE;

         }

      }

   }

};
string globaldef5237 /* = "hknight/slash1.wav" */;

void () monster_hell_knight;

// function monster_hell_knight
// function number 1920 begins at statement 25330
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	15380	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15147	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15247	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15154	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15252	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15217	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3683	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15381	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	15375	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15357	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15382	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	13255	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13254	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	15383
 * OP_STOREP_F	240	15383	0
 * OP_ADDRESS	28	103	15384
 * OP_STOREP_F	229	15384	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	15380	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	15385
 * OP_STOREP_F	738	15385	0
 * OP_ADDRESS	28	361	15386
 * OP_STOREP_FNC	15179	15386	0
 * OP_ADDRESS	28	362	15387
 * OP_STOREP_FNC	15188	15387	0
 * OP_ADDRESS	28	363	15388
 * OP_STOREP_FNC	15093	15388	0
 * OP_ADDRESS	28	365	15389
 * OP_STOREP_FNC	15373	15389	0
 * OP_ADDRESS	28	364	15390
 * OP_STOREP_FNC	15281	15390	0
 * OP_ADDRESS	28	366	15391
 * OP_STOREP_FNC	15358	15391	0
 * OP_ADDRESS	28	367	15392
 * OP_STOREP_FNC	15244	15392	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_hell_knight = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef493 (globaldef5239);
   globaldef493 (globaldef5059);
   globaldef493 (globaldef5127);
   globaldef494 (globaldef5060);
   globaldef494 (globaldef5128);
   globaldef494 (globaldef5101);
   globaldef494 ("hknight/sight1.wav");
   globaldef452 (globaldef5240);
   globaldef494 (globaldef5237);
   globaldef494 (globaldef5231);
   globaldef494 (globaldef5241);
   globaldef452 (globaldef4094);
   globaldef452 (globaldef4093);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef5239);
   globaldef438 (self,VEC_HULL_MIN,globaldef4167);
   self.globaldef130 = globaldef721;
   self.globaldef344 = globaldef5063;
   self.globaldef345 = globaldef5072;
   self.globaldef346 = globaldef5043;
   self.globaldef348 = globaldef5236;
   self.globaldef347 = globaldef5156;
   self.globaldef349 = globaldef5232;
   self.globaldef350 = globaldef5126;
   globaldef3309 ();

};
