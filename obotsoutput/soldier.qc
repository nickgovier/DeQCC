string globaldef4166 /* = "progs/knight.mdl" */;
vector globaldef4167 /* = '16.000 16.000 40.000' */;

void () army_fire;

void () army_stand1;

// function army_stand1
// function number 1088 begins at statement 20804
/*
 * OP_STATE	213	13358	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand1 = [ 0.000, globaldef4170 ] {

   globaldef1709 ();

};

void () army_stand2;

// function army_stand2
// function number 1089 begins at statement 20807
/*
 * OP_STATE	214	13359	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand2 = [ 1.000, globaldef4171 ] {

   globaldef1709 ();

};

void () army_stand3;

// function army_stand3
// function number 1090 begins at statement 20810
/*
 * OP_STATE	216	13360	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand3 = [ 2.000, globaldef4172 ] {

   globaldef1709 ();

};

void () army_stand4;

// function army_stand4
// function number 1091 begins at statement 20813
/*
 * OP_STATE	228	13361	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand4 = [ 3.000, globaldef4173 ] {

   globaldef1709 ();

};

void () army_stand5;

// function army_stand5
// function number 1092 begins at statement 20816
/*
 * OP_STATE	229	13362	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand5 = [ 4.000, globaldef4174 ] {

   globaldef1709 ();

};

void () army_stand6;

// function army_stand6
// function number 1093 begins at statement 20819
/*
 * OP_STATE	230	13363	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand6 = [ 5.000, globaldef4175 ] {

   globaldef1709 ();

};

void () army_stand7;

// function army_stand7
// function number 1094 begins at statement 20822
/*
 * OP_STATE	231	13364	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand7 = [ 6.000, globaldef4176 ] {

   globaldef1709 ();

};

void () army_stand8;

// function army_stand8
// function number 1095 begins at statement 20825
/*
 * OP_STATE	232	13357	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () army_stand8 = [ 7.000, globaldef4169 ] {

   globaldef1709 ();

};

void () army_walk1;

// function army_walk1
// function number 1096 begins at statement 20828
/*
 * OP_STATE	2658	13366	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13367
 * OP_IFNOT	13367	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13368	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk1 = [ 90.000, globaldef4178 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef4179,TRUE,ATTN_IDLE);

   }
   globaldef1702 (TRUE);

};

void () army_walk2;
string globaldef4179 /* = "soldier/idle.wav" */;

// function army_walk2
// function number 1097 begins at statement 20841
/*
 * OP_STATE	9974	13369	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk2 = [ 91.000, globaldef4180 ] {

   globaldef1702 (TRUE);

};

void () army_walk3;

// function army_walk3
// function number 1098 begins at statement 20845
/*
 * OP_STATE	9976	13370	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk3 = [ 92.000, globaldef4181 ] {

   globaldef1702 (TRUE);

};

void () army_walk4;

// function army_walk4
// function number 1099 begins at statement 20849
/*
 * OP_STATE	9978	13371	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk4 = [ 93.000, globaldef4182 ] {

   globaldef1702 (TRUE);

};

void () army_walk5;

// function army_walk5
// function number 1100 begins at statement 20853
/*
 * OP_STATE	9979	13372	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk5 = [ 94.000, globaldef4183 ] {

   globaldef1702 (FL_SWIM);

};

void () army_walk6;

// function army_walk6
// function number 1101 begins at statement 20857
/*
 * OP_STATE	9981	13373	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk6 = [ 95.000, globaldef4184 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () army_walk7;

// function army_walk7
// function number 1102 begins at statement 20861
/*
 * OP_STATE	9983	13374	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk7 = [ 96.000, globaldef4185 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () army_walk8;

// function army_walk8
// function number 1103 begins at statement 20865
/*
 * OP_STATE	9985	13375	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk8 = [ 97.000, globaldef4186 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () army_walk9;

// function army_walk9
// function number 1104 begins at statement 20869
/*
 * OP_STATE	9987	13376	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk9 = [ 98.000, globaldef4187 ] {

   globaldef1702 (FL_SWIM);

};

void () army_walk10;

// function army_walk10
// function number 1105 begins at statement 20873
/*
 * OP_STATE	9989	13377	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk10 = [ 99.000, globaldef4188 ] {

   globaldef1702 (FL_SWIM);

};

void () army_walk11;

// function army_walk11
// function number 1106 begins at statement 20877
/*
 * OP_STATE	1997	13378	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk11 = [ 100.000, globaldef4189 ] {

   globaldef1702 (FL_SWIM);

};

void () army_walk12;

// function army_walk12
// function number 1107 begins at statement 20881
/*
 * OP_STATE	8107	13379	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk12 = [ 101.000, globaldef4190 ] {

   globaldef1702 (TRUE);

};

void () army_walk13;

// function army_walk13
// function number 1108 begins at statement 20885
/*
 * OP_STATE	8109	13380	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk13 = [ 102.000, globaldef4191 ] {

   globaldef1702 (FALSE);

};

void () army_walk14;

// function army_walk14
// function number 1109 begins at statement 20889
/*
 * OP_STATE	8111	13381	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk14 = [ 103.000, globaldef4192 ] {

   globaldef1702 (TRUE);

};

void () army_walk15;

// function army_walk15
// function number 1110 begins at statement 20893
/*
 * OP_STATE	8114	13382	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk15 = [ 104.000, globaldef4193 ] {

   globaldef1702 (TRUE);

};

void () army_walk16;

// function army_walk16
// function number 1111 begins at statement 20897
/*
 * OP_STATE	9562	13383	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk16 = [ 105.000, globaldef4194 ] {

   globaldef1702 (TRUE);

};

void () army_walk17;

// function army_walk17
// function number 1112 begins at statement 20901
/*
 * OP_STATE	9577	13384	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk17 = [ 106.000, globaldef4195 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () army_walk18;

// function army_walk18
// function number 1113 begins at statement 20905
/*
 * OP_STATE	9591	13385	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk18 = [ 107.000, globaldef4196 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () army_walk19;

// function army_walk19
// function number 1114 begins at statement 20909
/*
 * OP_STATE	9597	13386	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk19 = [ 108.000, globaldef4197 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () army_walk20;

// function army_walk20
// function number 1115 begins at statement 20913
/*
 * OP_STATE	9600	13387	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk20 = [ 109.000, globaldef4198 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () army_walk21;

// function army_walk21
// function number 1116 begins at statement 20917
/*
 * OP_STATE	9603	13388	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk21 = [ 110.000, globaldef4199 ] {

   globaldef1702 (FL_SWIM);

};

void () army_walk22;

// function army_walk22
// function number 1117 begins at statement 20921
/*
 * OP_STATE	2224	13389	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk22 = [ 111.000, globaldef4200 ] {

   globaldef1702 (TRUE);

};

void () army_walk23;

// function army_walk23
// function number 1118 begins at statement 20925
/*
 * OP_STATE	9608	13390	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk23 = [ 112.000, globaldef4201 ] {

   globaldef1702 (TRUE);

};

void () army_walk24;

// function army_walk24
// function number 1119 begins at statement 20929
/*
 * OP_STATE	9473	13365	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () army_walk24 = [ 113.000, globaldef4177 ] {

   globaldef1702 (TRUE);

};

void () army_run1;

// function army_run1
// function number 1120 begins at statement 20933
/*
 * OP_STATE	5487	13392	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13393
 * OP_IFNOT	13393	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13368	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run1 = [ 73.000, globaldef4203 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef4179,TRUE,ATTN_IDLE);

   }
   globaldef1734 (MOVETYPE_BOUNCEMISSILE);

};

void () army_run2;

// function army_run2
// function number 1121 begins at statement 20946
/*
 * OP_STATE	9946	13394	0
 * OP_STORE_V	765	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run2 = [ 74.000, globaldef4204 ] {

   globaldef1734 (globaldef748);

};

void () army_run3;

// function army_run3
// function number 1122 begins at statement 20950
/*
 * OP_STATE	9173	13395	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run3 = [ 75.000, globaldef4205 ] {

   globaldef1734 (MOVETYPE_BOUNCE);

};

void () army_run4;

// function army_run4
// function number 1123 begins at statement 20954
/*
 * OP_STATE	9949	13396	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run4 = [ 76.000, globaldef4206 ] {

   globaldef1734 (MOVETYPE_BOUNCE);

};

void () army_run5;

// function army_run5
// function number 1124 begins at statement 20958
/*
 * OP_STATE	9951	13397	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run5 = [ 77.000, globaldef4207 ] {

   globaldef1734 (FL_CLIENT);

};

void () army_run6;

// function army_run6
// function number 1125 begins at statement 20962
/*
 * OP_STATE	9953	13398	0
 * OP_STORE_V	765	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run6 = [ 78.000, globaldef4208 ] {

   globaldef1734 (globaldef748);

};

void () army_run7;

// function army_run7
// function number 1126 begins at statement 20966
/*
 * OP_STATE	9955	13399	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run7 = [ 79.000, globaldef4209 ] {

   globaldef1734 (MOVETYPE_BOUNCE);

};

void () army_run8;

// function army_run8
// function number 1127 begins at statement 20970
/*
 * OP_STATE	2805	13391	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () army_run8 = [ 80.000, globaldef4202 ] {

   globaldef1734 (FL_CLIENT);

};

void () army_atk1;

// function army_atk1
// function number 1128 begins at statement 20974
/*
 * OP_STATE	8204	13401	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk1 = [ 81.000, globaldef4211 ] {

   globaldef1533 ();

};

void () army_atk2;

// function army_atk2
// function number 1129 begins at statement 20977
/*
 * OP_STATE	9959	13402	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk2 = [ 82.000, globaldef4212 ] {

   globaldef1533 ();

};

void () army_atk3;

// function army_atk3
// function number 1130 begins at statement 20980
/*
 * OP_STATE	9961	13403	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk3 = [ 83.000, globaldef4213 ] {

   globaldef1533 ();

};

void () army_atk4;

// function army_atk4
// function number 1131 begins at statement 20983
/*
 * OP_STATE	7694	13404	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk4 = [ 84.000, globaldef4214 ] {

   globaldef1533 ();

};

void () army_atk5;

// function army_atk5
// function number 1132 begins at statement 20986
/*
 * OP_STATE	9963	13405	0
 * OP_CALL0	3190	0	0
 * OP_CALL0	13356	0	0
 * OP_ADDRESS	28	133	13406
 * OP_LOAD_F	28	133	13407
 * OP_BITOR	13407	339	13408
 * OP_STOREP_F	13408	13406	0
 * OP_DONE	0	0	0
 */

void () army_atk5 = [ 85.000, globaldef4215 ] {

   globaldef1533 ();
   globaldef4168 ();
   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);

};

void () army_atk6;

// function army_atk6
// function number 1133 begins at statement 20994
/*
 * OP_STATE	9965	13409	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk6 = [ 86.000, globaldef4216 ] {

   globaldef1533 ();

};

void () army_atk7;

// function army_atk7
// function number 1134 begins at statement 20997
/*
 * OP_STATE	9967	13410	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	13400	4	0
 * OP_CALL1	3170	0	0
 * OP_DONE	0	0	0
 */

void () army_atk7 = [ 87.000, globaldef4217 ] {

   globaldef1533 ();
   globaldef1520 (globaldef4210);

};

void () army_atk8;

// function army_atk8
// function number 1135 begins at statement 21002
/*
 * OP_STATE	9969	13411	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk8 = [ 88.000, globaldef4218 ] {

   globaldef1533 ();

};

void () army_atk9;

// function army_atk9
// function number 1136 begins at statement 21005
/*
 * OP_STATE	9971	13391	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () army_atk9 = [ 89.000, globaldef4202 ] {

   globaldef1533 ();

};

void () army_pain1;

// function army_pain1
// function number 1137 begins at statement 21008
/*
 * OP_STATE	746	13413	0
 * OP_DONE	0	0	0
 */

void () army_pain1 = [ 40.000, globaldef4220 ] {


};

void () army_pain2;

// function army_pain2
// function number 1138 begins at statement 21010
/*
 * OP_STATE	9993	13414	0
 * OP_DONE	0	0	0
 */

void () army_pain2 = [ 41.000, globaldef4221 ] {


};

void () army_pain3;

// function army_pain3
// function number 1139 begins at statement 21012
/*
 * OP_STATE	9995	13415	0
 * OP_DONE	0	0	0
 */

void () army_pain3 = [ 42.000, globaldef4222 ] {


};

void () army_pain4;

// function army_pain4
// function number 1140 begins at statement 21014
/*
 * OP_STATE	9997	13416	0
 * OP_DONE	0	0	0
 */

void () army_pain4 = [ 43.000, globaldef4223 ] {


};

void () army_pain5;

// function army_pain5
// function number 1141 begins at statement 21016
/*
 * OP_STATE	9999	13417	0
 * OP_DONE	0	0	0
 */

void () army_pain5 = [ 44.000, globaldef4224 ] {


};

void () army_pain6;

// function army_pain6
// function number 1142 begins at statement 21018
/*
 * OP_STATE	2598	13391	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () army_pain6 = [ 45.000, globaldef4202 ] {

   globaldef1698 (TRUE);

};

void () army_painb1;

// function army_painb1
// function number 1143 begins at statement 21022
/*
 * OP_STATE	10002	13419	0
 * OP_DONE	0	0	0
 */

void () army_painb1 = [ 46.000, globaldef4226 ] {


};

void () army_painb2;

// function army_painb2
// function number 1144 begins at statement 21024
/*
 * OP_STATE	10004	13420	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painb2 = [ 47.000, globaldef4227 ] {

   globaldef1700 (globaldef775);

};

void () army_painb3;

// function army_painb3
// function number 1145 begins at statement 21028
/*
 * OP_STATE	10006	13421	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painb3 = [ 48.000, globaldef4228 ] {

   globaldef1700 (MOVETYPE_FLYMISSILE);

};

void () army_painb4;

// function army_painb4
// function number 1146 begins at statement 21032
/*
 * OP_STATE	10008	13422	0
 * OP_DONE	0	0	0
 */

void () army_painb4 = [ 49.000, globaldef4229 ] {


};

void () army_painb5;

// function army_painb5
// function number 1147 begins at statement 21034
/*
 * OP_STATE	1470	13423	0
 * OP_DONE	0	0	0
 */

void () army_painb5 = [ 50.000, globaldef4230 ] {


};

void () army_painb6;

// function army_painb6
// function number 1148 begins at statement 21036
/*
 * OP_STATE	9911	13424	0
 * OP_DONE	0	0	0
 */

void () army_painb6 = [ 51.000, globaldef4231 ] {


};

void () army_painb7;

// function army_painb7
// function number 1149 begins at statement 21038
/*
 * OP_STATE	9913	13425	0
 * OP_DONE	0	0	0
 */

void () army_painb7 = [ 52.000, globaldef4232 ] {


};

void () army_painb8;

// function army_painb8
// function number 1150 begins at statement 21040
/*
 * OP_STATE	9915	13426	0
 * OP_DONE	0	0	0
 */

void () army_painb8 = [ 53.000, globaldef4233 ] {


};

void () army_painb9;

// function army_painb9
// function number 1151 begins at statement 21042
/*
 * OP_STATE	9917	13427	0
 * OP_DONE	0	0	0
 */

void () army_painb9 = [ 54.000, globaldef4234 ] {


};

void () army_painb10;

// function army_painb10
// function number 1152 begins at statement 21044
/*
 * OP_STATE	9919	13428	0
 * OP_DONE	0	0	0
 */

void () army_painb10 = [ 55.000, globaldef4235 ] {


};

void () army_painb11;

// function army_painb11
// function number 1153 begins at statement 21046
/*
 * OP_STATE	9921	13429	0
 * OP_DONE	0	0	0
 */

void () army_painb11 = [ 56.000, globaldef4236 ] {


};

void () army_painb12;

// function army_painb12
// function number 1154 begins at statement 21048
/*
 * OP_STATE	9923	13430	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () army_painb12 = [ 57.000, globaldef4237 ] {

   globaldef1698 (FL_SWIM);

};

void () army_painb13;

// function army_painb13
// function number 1155 begins at statement 21052
/*
 * OP_STATE	9925	13431	0
 * OP_DONE	0	0	0
 */

void () army_painb13 = [ 58.000, globaldef4238 ] {


};

void () army_painb14;

// function army_painb14
// function number 1156 begins at statement 21054
/*
 * OP_STATE	2783	13391	0
 * OP_DONE	0	0	0
 */

void () army_painb14 = [ 59.000, globaldef4202 ] {


};

void () army_painc1;

// function army_painc1
// function number 1157 begins at statement 21056
/*
 * OP_STATE	2019	13433	0
 * OP_DONE	0	0	0
 */

void () army_painc1 = [ 60.000, globaldef4240 ] {


};

void () army_painc2;

// function army_painc2
// function number 1158 begins at statement 21058
/*
 * OP_STATE	9928	13434	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () army_painc2 = [ 61.000, globaldef4241 ] {

   globaldef1698 (TRUE);

};

void () army_painc3;

// function army_painc3
// function number 1159 begins at statement 21062
/*
 * OP_STATE	9930	13435	0
 * OP_DONE	0	0	0
 */

void () army_painc3 = [ 62.000, globaldef4242 ] {


};

void () army_painc4;

// function army_painc4
// function number 1160 begins at statement 21064
/*
 * OP_STATE	6707	13436	0
 * OP_DONE	0	0	0
 */

void () army_painc4 = [ 63.000, globaldef4243 ] {


};

void () army_painc5;

// function army_painc5
// function number 1161 begins at statement 21066
/*
 * OP_STATE	220	13437	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc5 = [ 64.000, globaldef4244 ] {

   globaldef1700 (TRUE);

};

void () army_painc6;

// function army_painc6
// function number 1162 begins at statement 21070
/*
 * OP_STATE	9934	13438	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc6 = [ 65.000, globaldef4245 ] {

   globaldef1700 (TRUE);

};

void () army_painc7;

// function army_painc7
// function number 1163 begins at statement 21074
/*
 * OP_STATE	9936	13439	0
 * OP_DONE	0	0	0
 */

void () army_painc7 = [ 66.000, globaldef4246 ] {


};

void () army_painc8;

// function army_painc8
// function number 1164 begins at statement 21076
/*
 * OP_STATE	9938	13440	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () army_painc8 = [ 67.000, globaldef4247 ] {

   globaldef1698 (TRUE);

};

void () army_painc9;

// function army_painc9
// function number 1165 begins at statement 21080
/*
 * OP_STATE	8193	13441	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc9 = [ 68.000, globaldef4248 ] {

   globaldef1700 (MOVETYPE_STEP);

};

void () army_painc10;

// function army_painc10
// function number 1166 begins at statement 21084
/*
 * OP_STATE	8196	13442	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc10 = [ 69.000, globaldef4249 ] {

   globaldef1700 (MOVETYPE_WALK);

};

void () army_painc11;

// function army_painc11
// function number 1167 begins at statement 21088
/*
 * OP_STATE	1536	13443	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc11 = [ 70.000, globaldef4250 ] {

   globaldef1700 (MOVETYPE_TOSS);

};

void () army_painc12;

// function army_painc12
// function number 1168 begins at statement 21092
/*
 * OP_STATE	8201	13444	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () army_painc12 = [ 71.000, globaldef4251 ] {

   globaldef1700 (FL_CLIENT);

};

void () army_painc13;

// function army_painc13
// function number 1169 begins at statement 21096
/*
 * OP_STATE	9943	13391	0
 * OP_DONE	0	0	0
 */

void () army_painc13 = [ 72.000, globaldef4202 ] {


};

void (entity globaldef4253, float globaldef4254) army_pain;

// function army_pain
// function number 1170 begins at statement 21098
/*
 * OP_LOAD_F	28	379	13449
 * OP_GT	13449	31	13450
 * OP_IFNOT	13450	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	13448	0
 * OP_LT	13448	3267	13451
 * OP_IFNOT	13451	12	0
 * OP_ADDRESS	28	379	13452
 * OP_ADD_F	31	4474	13453
 * OP_STOREP_F	13453	13452	0
 * OP_CALL0	13412	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13454	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	24	0	0
 * OP_LT	13448	4474	13455
 * OP_IFNOT	13455	12	0
 * OP_ADDRESS	28	379	13456
 * OP_ADD_F	31	13457	13458
 * OP_STOREP_F	13458	13456	0
 * OP_CALL0	13418	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13459	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	11	0	0
 * OP_ADDRESS	28	379	13460
 * OP_ADD_F	31	13457	13461
 * OP_STOREP_F	13461	13460	0
 * OP_CALL0	13432	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13459	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef4253, float globaldef4254) army_pain = {

   local float globaldef4255;

   if ( (self.globaldef362 > time) ) {

      return ;

   }
   globaldef4255 = globaldef440 ();
   if ( (globaldef4255 < globaldef1553) ) {

      self.globaldef362 = (time + globaldef1825);
      globaldef4219 ();
      sound (self,CHAN_VOICE,globaldef4256,TRUE,ATTN_NORM);

   } else {

      if ( (globaldef4255 < globaldef1825) ) {

         self.globaldef362 = (time + globaldef4257);
         globaldef4225 ();
         sound (self,CHAN_VOICE,globaldef4258,TRUE,ATTN_NORM);

      } else {

         self.globaldef362 = (time + globaldef4257);
         globaldef4239 ();
         sound (self,CHAN_VOICE,globaldef4258,TRUE,ATTN_NORM);

      }

   }

};
string globaldef4256 /* = "soldier/pain1.wav" */;
float globaldef4257 /* = 1.100 */;
string globaldef4258 /* = "soldier/pain2.wav" */;

// function army_fire
// function number 1171 begins at statement 21141
/*
 * OP_CALL0	3190	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13466	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_ENT	28	181	13467
 * OP_STORE_ENT	13467	13465	0
 * OP_LOAD_V	13465	105	13468
 * OP_LOAD_V	13465	113	13471
 * OP_MUL_VF	13471	3267	13474
 * OP_SUB_V	13468	13474	13477
 * OP_STORE_V	13477	13462	0
 * OP_LOAD_V	28	105	13480
 * OP_SUB_V	13462	13480	13483
 * OP_STORE_V	13483	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	13462	0
 * OP_STORE_V	229	4	0
 * OP_STORE_V	13462	7	0
 * OP_STORE_V	13486	10	0
 * OP_CALL3	5571	0	0
 * OP_DONE	0	0	0
 */

void () army_fire = {

   local vector globaldef4259;
   local entity globaldef4263;

   globaldef1533 ();
   sound (self,CHAN_WEAPON,globaldef4264,TRUE,ATTN_NORM);
   globaldef4263 = self.enemy;
   globaldef4259 = (globaldef4263.origin - (globaldef4263.velocity * globaldef1553));
   globaldef4259 = globaldef442 ((globaldef4259 - self.origin));
   globaldef2105 (MOVETYPE_STEP,globaldef4259,globaldef4265);

};
string globaldef4264 /* = "soldier/sattck1.wav" */;
vector globaldef4265 /* = '0.100 0.100 0.000' */;

void () army_die1;

// function army_die1
// function number 1172 begins at statement 21165
/*
 * OP_STATE	217	13490	0
 * OP_DONE	0	0	0
 */

void () army_die1 = [ 8.000, globaldef4267 ] {


};

void () army_die2;

// function army_die2
// function number 1173 begins at statement 21167
/*
 * OP_STATE	234	13491	0
 * OP_DONE	0	0	0
 */

void () army_die2 = [ 9.000, globaldef4268 ] {


};

void () army_die3;

// function army_die3
// function number 1174 begins at statement 21169
/*
 * OP_STATE	235	13492	0
 * OP_ADDRESS	28	104	13493
 * OP_STOREP_F	237	13493	0
 * OP_ADDRESS	28	158	13494
 * OP_STOREP_F	230	13494	0
 * OP_CALL0	5177	0	0
 * OP_DONE	0	0	0
 */

void () army_die3 = [ 10.000, globaldef4269 ] {

   self.solid = SOLID_NOT;
   self.globaldef136 = MOVETYPE_FLY;
   globaldef1980 ();

};

void () army_die4;

// function army_die4
// function number 1175 begins at statement 21176
/*
 * OP_STATE	236	13495	0
 * OP_DONE	0	0	0
 */

void () army_die4 = [ 11.000, globaldef4270 ] {


};

void () army_die5;

// function army_die5
// function number 1176 begins at statement 21178
/*
 * OP_STATE	791	13496	0
 * OP_DONE	0	0	0
 */

void () army_die5 = [ 12.000, globaldef4271 ] {


};

void () army_die6;

// function army_die6
// function number 1177 begins at statement 21180
/*
 * OP_STATE	792	13497	0
 * OP_DONE	0	0	0
 */

void () army_die6 = [ 13.000, globaldef4272 ] {


};

void () army_die7;

// function army_die7
// function number 1178 begins at statement 21182
/*
 * OP_STATE	5693	13498	0
 * OP_DONE	0	0	0
 */

void () army_die7 = [ 14.000, globaldef4273 ] {


};

void () army_die8;

// function army_die8
// function number 1179 begins at statement 21184
/*
 * OP_STATE	765	13499	0
 * OP_DONE	0	0	0
 */

void () army_die8 = [ 15.000, globaldef4274 ] {


};

void () army_die9;

// function army_die9
// function number 1180 begins at statement 21186
/*
 * OP_STATE	218	13500	0
 * OP_DONE	0	0	0
 */

void () army_die9 = [ 16.000, globaldef4275 ] {


};

void () army_die10;

// function army_die10
// function number 1181 begins at statement 21188
/*
 * OP_STATE	6892	13500	0
 * OP_DONE	0	0	0
 */

void () army_die10 = [ 17.000, globaldef4275 ] {


};

void () army_cdie1;

// function army_cdie1
// function number 1182 begins at statement 21190
/*
 * OP_STATE	6133	13502	0
 * OP_DONE	0	0	0
 */

void () army_cdie1 = [ 18.000, globaldef4277 ] {


};

void () army_cdie2;

// function army_cdie2
// function number 1183 begins at statement 21192
/*
 * OP_STATE	6895	13503	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie2 = [ 19.000, globaldef4278 ] {

   globaldef1696 (MOVETYPE_FLY);

};

void () army_cdie3;

// function army_cdie3
// function number 1184 begins at statement 21196
/*
 * OP_STATE	2323	13504	0
 * OP_ADDRESS	28	104	13505
 * OP_STOREP_F	237	13505	0
 * OP_ADDRESS	28	158	13506
 * OP_STOREP_F	230	13506	0
 * OP_CALL0	5177	0	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie3 = [ 20.000, globaldef4279 ] {

   self.solid = SOLID_NOT;
   self.globaldef136 = MOVETYPE_FLY;
   globaldef1980 ();
   globaldef1696 (MOVETYPE_STEP);

};

void () army_cdie4;

// function army_cdie4
// function number 1185 begins at statement 21205
/*
 * OP_STATE	12465	13507	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie4 = [ 21.000, globaldef4280 ] {

   globaldef1696 (globaldef775);

};

void () army_cdie5;

// function army_cdie5
// function number 1186 begins at statement 21209
/*
 * OP_STATE	12467	13508	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie5 = [ 22.000, globaldef4281 ] {

   globaldef1696 (MOVETYPE_WALK);

};

void () army_cdie6;

// function army_cdie6
// function number 1187 begins at statement 21213
/*
 * OP_STATE	304	13509	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void () army_cdie6 = [ 23.000, globaldef4282 ] {

   globaldef1696 (MOVETYPE_STEP);

};

void () army_cdie7;

// function army_cdie7
// function number 1188 begins at statement 21217
/*
 * OP_STATE	736	13510	0
 * OP_DONE	0	0	0
 */

void () army_cdie7 = [ 24.000, globaldef4283 ] {


};

void () army_cdie8;

// function army_cdie8
// function number 1189 begins at statement 21219
/*
 * OP_STATE	305	13511	0
 * OP_DONE	0	0	0
 */

void () army_cdie8 = [ 25.000, globaldef4284 ] {


};

void () army_cdie9;

// function army_cdie9
// function number 1190 begins at statement 21221
/*
 * OP_STATE	306	13512	0
 * OP_DONE	0	0	0
 */

void () army_cdie9 = [ 26.000, globaldef4285 ] {


};

void () army_cdie10;

// function army_cdie10
// function number 1191 begins at statement 21223
/*
 * OP_STATE	307	13513	0
 * OP_DONE	0	0	0
 */

void () army_cdie10 = [ 27.000, globaldef4286 ] {


};

void () army_cdie11;

// function army_cdie11
// function number 1192 begins at statement 21225
/*
 * OP_STATE	308	13513	0
 * OP_DONE	0	0	0
 */

void () army_cdie11 = [ 28.000, globaldef4286 ] {


};

void () army_die;

// function army_die
// function number 1193 begins at statement 21227
/*
 * OP_LOAD_F	28	152	13515
 * OP_LT	13515	13516	13517
 * OP_IFNOT	13517	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	13518	4	0
 * OP_LOAD_F	28	152	13519
 * OP_STORE_V	13519	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	13520
 * OP_STORE_V	13520	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	13521
 * OP_STORE_V	13521	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	13522
 * OP_STORE_V	13522	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13523	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	13524
 * OP_IFNOT	13524	3	0
 * OP_CALL0	13489	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	13501	0	0
 * OP_DONE	0	0	0
 */

void () army_die = {

   if ( (self.globaldef130 < globaldef4288) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef4289,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2434,self.globaldef130);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef4290,TRUE,ATTN_NORM);
   if ( (globaldef440 () < globaldef522) ) {

      globaldef4266 ();

   } else {

      globaldef4276 ();

   }

};
float globaldef4288 /* = -35.000 */;
string globaldef4289 /* = "progs/h_guard.mdl" */;
string globaldef4290 /* = "soldier/death1.wav" */;

void () monster_army;

// function monster_army
// function number 1194 begins at statement 21266
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	13526	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13518	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	6687	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	6688	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	6689	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13523	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13368	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13454	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13459	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13466	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3706	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	6661	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	13527
 * OP_STOREP_F	240	13527	0
 * OP_ADDRESS	28	103	13528
 * OP_STOREP_F	229	13528	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	13526	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	13529
 * OP_STOREP_F	309	13529	0
 * OP_ADDRESS	28	361	13530
 * OP_STOREP_FNC	13357	13530	0
 * OP_ADDRESS	28	362	13531
 * OP_STOREP_FNC	13365	13531	0
 * OP_ADDRESS	28	363	13532
 * OP_STOREP_FNC	13391	13532	0
 * OP_ADDRESS	28	364	13533
 * OP_STOREP_FNC	13400	13533	0
 * OP_ADDRESS	28	366	13534
 * OP_STOREP_FNC	13445	13534	0
 * OP_ADDRESS	28	367	13535
 * OP_STOREP_FNC	13514	13535	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_army = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef453 (globaldef4292);
   globaldef453 (globaldef4289);
   globaldef453 (globaldef2432);
   globaldef453 (globaldef2433);
   globaldef453 (globaldef2434);
   globaldef452 (globaldef4290);
   globaldef452 (globaldef4179);
   globaldef452 (globaldef4256);
   globaldef452 (globaldef4258);
   globaldef452 (globaldef4264);
   globaldef452 ("soldier/sight1.wav");
   globaldef452 (globaldef2406);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef4292);
   globaldef438 (self,VEC_HULL_MIN,globaldef4167);
   self.globaldef130 = SVC_INTERMISSION;
   self.globaldef344 = globaldef4169;
   self.globaldef345 = globaldef4177;
   self.globaldef346 = globaldef4202;
   self.globaldef347 = globaldef4210;
   self.globaldef349 = globaldef4252;
   self.globaldef350 = globaldef4287;
   globaldef3309 ();

};
