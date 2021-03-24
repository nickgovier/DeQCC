string globaldef004406 /* = "progs/wizard.mdl" */;
string globaldef004407 /* = "wizard/hit.wav" */;

void () dog_leap1;

void () dog_run1;

// function dog_bite
// function number 1265 begins at statement 21949
/*
 * OP_LOAD_ENT	28	181	13932
 * OP_NOT_ENT	13932	0	13933
 * OP_IFNOT	13933	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_LOAD_ENT	28	181	13934
 * OP_STORE_V	13934	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_NOT_F	1	0	13935
 * OP_IFNOT	13935	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	13936
 * OP_LOAD_V	13936	105	13937
 * OP_LOAD_V	28	105	13940
 * OP_SUB_V	13937	13940	13943
 * OP_STORE_V	13943	13928	0
 * OP_STORE_V	13928	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	1997	13946
 * OP_IFNOT	13946	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	1	1	13947
 * OP_CALL0	457	0	0
 * OP_ADD_F	13947	1	13948
 * OP_MUL_F	13948	217	13949
 * OP_STORE_F	13949	13931	0
 * OP_LOAD_ENT	28	181	13950
 * OP_STORE_V	13950	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	13931	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () dog_bite = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   ai_charge (MOVETYPE_BOUNCE);
   if ( !CanDamage (self.enemy,self) ) {

      return ;

   }
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > globaldef001335) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * FL_CLIENT);
   T_Damage (self.enemy,self,self,ldmg);

};

// function Dog_JumpTouch
// function number 1266 begins at statement 21986
/*
 * OP_LOAD_F	28	152	13953
 * OP_LE	13953	213	13954
 * OP_IFNOT	13954	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	13955
 * OP_IFNOT	13955	15	0
 * OP_LOAD_V	28	113	13956
 * OP_STORE_V	13956	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	540	13959
 * OP_IFNOT	13959	10	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	235	1	13960
 * OP_ADD_F	235	13960	13961
 * OP_STORE_F	13961	13952	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	13952	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	486	0	0
 * OP_NOT_F	1	0	13962
 * OP_IFNOT	13962	12	0
 * OP_LOAD_F	28	182	13963
 * OP_BITAND	13963	223	13964
 * OP_IFNOT	13964	8	0
 * OP_ADDRESS	28	146	13965
 * OP_STOREP_FNC	519	13965	0
 * OP_ADDRESS	28	148	13966
 * OP_STOREP_FNC	13925	13966	0
 * OP_ADDRESS	28	150	13967
 * OP_ADD_F	31	3036	13968
 * OP_STOREP_F	13968	13967	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	146	13969
 * OP_STOREP_FNC	519	13969	0
 * OP_ADDRESS	28	148	13970
 * OP_STOREP_FNC	13926	13970	0
 * OP_ADDRESS	28	150	13971
 * OP_ADD_F	31	3036	13972
 * OP_STOREP_F	13972	13971	0
 * OP_DONE	0	0	0
 */

void () Dog_JumpTouch = {

   local float ldmg;

   if ( (self.health <= FALSE) ) {

      return ;

   }
   if ( other.takedamage ) {

      if ( (vlen (self.velocity) > globaldef000523) ) {

         ldmg = (MOVETYPE_BOUNCE + (MOVETYPE_BOUNCE * random ()));
         T_Damage (other,self,self,ldmg);

      }

   }
   if ( !checkbottom (self) ) {

      if ( (self.flags & FL_ONGROUND) ) {

         self.touch = SUB_Null;
         self.think = dog_leap1;
         self.nextthink = (time + globaldef001488);

      }
      return ;

   }
   self.touch = SUB_Null;
   self.think = dog_run1;
   self.nextthink = (time + globaldef001488);

};

// function dog_stand1
// function number 1267 begins at statement 22029
/*
 * OP_STATE	8196	13974	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand1 = [ 69.000, dog_stand2 ] {

   ai_stand ();

};

// function dog_stand2
// function number 1268 begins at statement 22032
/*
 * OP_STATE	1536	13975	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand2 = [ 70.000, dog_stand3 ] {

   ai_stand ();

};

// function dog_stand3
// function number 1269 begins at statement 22035
/*
 * OP_STATE	8201	13976	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand3 = [ 71.000, dog_stand4 ] {

   ai_stand ();

};

// function dog_stand4
// function number 1270 begins at statement 22038
/*
 * OP_STATE	9943	13977	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand4 = [ 72.000, dog_stand5 ] {

   ai_stand ();

};

// function dog_stand5
// function number 1271 begins at statement 22041
/*
 * OP_STATE	5487	13978	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand5 = [ 73.000, dog_stand6 ] {

   ai_stand ();

};

// function dog_stand6
// function number 1272 begins at statement 22044
/*
 * OP_STATE	9946	13979	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand6 = [ 74.000, dog_stand7 ] {

   ai_stand ();

};

// function dog_stand7
// function number 1273 begins at statement 22047
/*
 * OP_STATE	9173	13980	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand7 = [ 75.000, dog_stand8 ] {

   ai_stand ();

};

// function dog_stand8
// function number 1274 begins at statement 22050
/*
 * OP_STATE	9949	13981	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand8 = [ 76.000, dog_stand9 ] {

   ai_stand ();

};

// function dog_stand9
// function number 1275 begins at statement 22053
/*
 * OP_STATE	9951	13973	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand9 = [ 77.000, dog_stand1 ] {

   ai_stand ();

};

// function dog_walk1
// function number 1276 begins at statement 22056
/*
 * OP_STATE	9953	13983	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13984
 * OP_IFNOT	13984	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13985	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk1 = [ 78.000, dog_walk2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef004429,TRUE,ATTN_IDLE);

   }
   ai_walk (FL_CLIENT);

};
string globaldef004429 /* = "dog/idle.wav" */;

// function dog_walk2
// function number 1277 begins at statement 22069
/*
 * OP_STATE	9955	13986	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk2 = [ 79.000, dog_walk3 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk3
// function number 1278 begins at statement 22073
/*
 * OP_STATE	2805	13987	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk3 = [ 80.000, dog_walk4 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk4
// function number 1279 begins at statement 22077
/*
 * OP_STATE	8204	13988	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk4 = [ 81.000, dog_walk5 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk5
// function number 1280 begins at statement 22081
/*
 * OP_STATE	9959	13989	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk5 = [ 82.000, dog_walk6 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk6
// function number 1281 begins at statement 22085
/*
 * OP_STATE	9961	13990	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk6 = [ 83.000, dog_walk7 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk7
// function number 1282 begins at statement 22089
/*
 * OP_STATE	7694	13991	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk7 = [ 84.000, dog_walk8 ] {

   ai_walk (FL_CLIENT);

};

// function dog_walk8
// function number 1283 begins at statement 22093
/*
 * OP_STATE	9963	13982	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk8 = [ 85.000, dog_walk1 ] {

   ai_walk (FL_CLIENT);

};

// function dog_run1
// function number 1284 begins at statement 22097
/*
 * OP_STATE	10006	13992	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13993
 * OP_IFNOT	13993	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13985	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run1 = [ 48.000, dog_run2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef004429,TRUE,ATTN_IDLE);

   }
   ai_run (FL_INWATER);

};

// function dog_run2
// function number 1285 begins at statement 22110
/*
 * OP_STATE	10008	13994	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run2 = [ 49.000, dog_run3 ] {

   ai_run (FL_MONSTER);

};

// function dog_run3
// function number 1286 begins at statement 22114
/*
 * OP_STATE	1470	13995	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run3 = [ 50.000, dog_run4 ] {

   ai_run (FL_MONSTER);

};

// function dog_run4
// function number 1287 begins at statement 22118
/*
 * OP_STATE	9911	13996	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run4 = [ 51.000, dog_run5 ] {

   ai_run (globaldef001384);

};

// function dog_run5
// function number 1288 begins at statement 22122
/*
 * OP_STATE	9913	13997	0
 * OP_STORE_V	220	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run5 = [ 52.000, dog_run6 ] {

   ai_run (FL_GODMODE);

};

// function dog_run6
// function number 1289 begins at statement 22126
/*
 * OP_STATE	9915	13998	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run6 = [ 53.000, dog_run7 ] {

   ai_run (FL_MONSTER);

};

// function dog_run7
// function number 1290 begins at statement 22130
/*
 * OP_STATE	9917	13999	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run7 = [ 54.000, dog_run8 ] {

   ai_run (FL_INWATER);

};

// function dog_run8
// function number 1291 begins at statement 22134
/*
 * OP_STATE	9919	14000	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run8 = [ 55.000, dog_run9 ] {

   ai_run (FL_MONSTER);

};

// function dog_run9
// function number 1292 begins at statement 22138
/*
 * OP_STATE	9921	14001	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run9 = [ 56.000, dog_run10 ] {

   ai_run (FL_MONSTER);

};

// function dog_run10
// function number 1293 begins at statement 22142
/*
 * OP_STATE	9923	14002	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run10 = [ 57.000, dog_run11 ] {

   ai_run (globaldef001384);

};

// function dog_run11
// function number 1294 begins at statement 22146
/*
 * OP_STATE	9925	14003	0
 * OP_STORE_V	220	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run11 = [ 58.000, dog_run12 ] {

   ai_run (FL_GODMODE);

};

// function dog_run12
// function number 1295 begins at statement 22150
/*
 * OP_STATE	2783	13926	0
 * OP_STORE_V	219	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () dog_run12 = [ 59.000, dog_run1 ] {

   ai_run (FL_MONSTER);

};

// function dog_atta1
// function number 1296 begins at statement 22154
/*
 * OP_STATE	213	14005	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta1 = [ 0.000, dog_atta2 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta2
// function number 1297 begins at statement 22158
/*
 * OP_STATE	214	14006	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta2 = [ 1.000, dog_atta3 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta3
// function number 1298 begins at statement 22162
/*
 * OP_STATE	216	14007	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta3 = [ 2.000, dog_atta4 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta4
// function number 1299 begins at statement 22166
/*
 * OP_STATE	228	14008	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14009	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	13927	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta4 = [ 3.000, dog_atta5 ] {

   sound (self,CHAN_VOICE,globaldef004452,TRUE,ATTN_NORM);
   dog_bite ();

};
string globaldef004452 /* = "dog/dattack1.wav" */;

// function dog_atta5
// function number 1300 begins at statement 22175
/*
 * OP_STATE	229	14010	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta5 = [ 4.000, dog_atta6 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta6
// function number 1301 begins at statement 22179
/*
 * OP_STATE	230	14011	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta6 = [ 5.000, dog_atta7 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta7
// function number 1302 begins at statement 22183
/*
 * OP_STATE	231	14012	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta7 = [ 6.000, dog_atta8 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_atta8
// function number 1303 begins at statement 22187
/*
 * OP_STATE	232	13926	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta8 = [ 7.000, dog_run1 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function dog_leap1
// function number 1304 begins at statement 22191
/*
 * OP_STATE	2019	14013	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () dog_leap1 = [ 60.000, dog_leap2 ] {

   ai_face ();

};

// function dog_leap2
// function number 1305 begins at statement 22194
/*
 * OP_STATE	9928	14014	0
 * OP_CALL0	3190	0	0
 * OP_ADDRESS	28	146	14015
 * OP_STOREP_FNC	13951	14015	0
 * OP_LOAD_V	28	117	14016
 * OP_STORE_V	14016	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	108	14019
 * OP_LOAD_F	28	108	14020
 * OP_ADD_F	14020	214	14021
 * OP_STOREP_F	14021	14019	0
 * OP_ADDRESS	28	113	14022
 * OP_MUL_VF	59	540	14025
 * OP_ADD_V	14025	14028	14031
 * OP_STOREP_V	14031	14022	0
 * OP_LOAD_F	28	182	14034
 * OP_BITAND	14034	223	14035
 * OP_IFNOT	14035	5	0
 * OP_ADDRESS	28	182	14036
 * OP_LOAD_F	28	182	14037
 * OP_SUB_F	14037	223	14038
 * OP_STOREP_F	14038	14036	0
 * OP_DONE	0	0	0
 */

void () dog_leap2 = [ 61.000, dog_leap3 ] {

   ai_face ();
   self.touch = Dog_JumpTouch;
   makevectors (self.angles);
   self.origin_z = (self.origin_z + TRUE);
   self.velocity = ((v_forward * globaldef000523) + globaldef004458);
   if ( (self.flags & FL_ONGROUND) ) {

      self.flags = (self.flags - FL_ONGROUND);

   }

};
vector globaldef004458 /* = '0.000 0.000 200.000' */;

// function dog_leap3
// function number 1306 begins at statement 22217
/*
 * OP_STATE	9930	14039	0
 * OP_DONE	0	0	0
 */

void () dog_leap3 = [ 62.000, dog_leap4 ] {


};

// function dog_leap4
// function number 1307 begins at statement 22219
/*
 * OP_STATE	6707	14040	0
 * OP_DONE	0	0	0
 */

void () dog_leap4 = [ 63.000, dog_leap5 ] {


};

// function dog_leap5
// function number 1308 begins at statement 22221
/*
 * OP_STATE	220	14041	0
 * OP_DONE	0	0	0
 */

void () dog_leap5 = [ 64.000, dog_leap6 ] {


};

// function dog_leap6
// function number 1309 begins at statement 22223
/*
 * OP_STATE	9934	14042	0
 * OP_DONE	0	0	0
 */

void () dog_leap6 = [ 65.000, dog_leap7 ] {


};

// function dog_leap7
// function number 1310 begins at statement 22225
/*
 * OP_STATE	9936	14043	0
 * OP_DONE	0	0	0
 */

void () dog_leap7 = [ 66.000, dog_leap8 ] {


};

// function dog_leap8
// function number 1311 begins at statement 22227
/*
 * OP_STATE	9938	14044	0
 * OP_DONE	0	0	0
 */

void () dog_leap8 = [ 67.000, dog_leap9 ] {


};

// function dog_leap9
// function number 1312 begins at statement 22229
/*
 * OP_STATE	8193	14044	0
 * OP_DONE	0	0	0
 */

void () dog_leap9 = [ 68.000, dog_leap9 ] {


};

// function dog_pain1
// function number 1313 begins at statement 22231
/*
 * OP_STATE	306	14046	0
 * OP_DONE	0	0	0
 */

void () dog_pain1 = [ 26.000, dog_pain2 ] {


};

// function dog_pain2
// function number 1314 begins at statement 22233
/*
 * OP_STATE	307	14047	0
 * OP_DONE	0	0	0
 */

void () dog_pain2 = [ 27.000, dog_pain3 ] {


};

// function dog_pain3
// function number 1315 begins at statement 22235
/*
 * OP_STATE	308	14048	0
 * OP_DONE	0	0	0
 */

void () dog_pain3 = [ 28.000, dog_pain4 ] {


};

// function dog_pain4
// function number 1316 begins at statement 22237
/*
 * OP_STATE	9664	14049	0
 * OP_DONE	0	0	0
 */

void () dog_pain4 = [ 29.000, dog_pain5 ] {


};

// function dog_pain5
// function number 1317 begins at statement 22239
/*
 * OP_STATE	309	14050	0
 * OP_DONE	0	0	0
 */

void () dog_pain5 = [ 30.000, dog_pain6 ] {


};

// function dog_pain6
// function number 1318 begins at statement 22241
/*
 * OP_STATE	310	13926	0
 * OP_DONE	0	0	0
 */

void () dog_pain6 = [ 31.000, dog_run1 ] {


};

// function dog_painb1
// function number 1319 begins at statement 22243
/*
 * OP_STATE	219	14052	0
 * OP_DONE	0	0	0
 */

void () dog_painb1 = [ 32.000, dog_painb2 ] {


};

// function dog_painb2
// function number 1320 begins at statement 22245
/*
 * OP_STATE	312	14053	0
 * OP_DONE	0	0	0
 */

void () dog_painb2 = [ 33.000, dog_painb3 ] {


};

// function dog_painb3
// function number 1321 begins at statement 22247
/*
 * OP_STATE	9671	14054	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb3 = [ 34.000, dog_painb4 ] {

   ai_pain (MOVETYPE_STEP);

};

// function dog_painb4
// function number 1322 begins at statement 22251
/*
 * OP_STATE	5878	14055	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb4 = [ 35.000, dog_painb5 ] {

   ai_pain (globaldef000774);

};

// function dog_painb5
// function number 1323 begins at statement 22255
/*
 * OP_STATE	9655	14056	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb5 = [ 36.000, dog_painb6 ] {

   ai_pain (globaldef000774);

};

// function dog_painb6
// function number 1324 begins at statement 22259
/*
 * OP_STATE	9657	14057	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb6 = [ 37.000, dog_painb7 ] {

   ai_pain (FL_SWIM);

};

// function dog_painb7
// function number 1325 begins at statement 22263
/*
 * OP_STATE	9659	14058	0
 * OP_DONE	0	0	0
 */

void () dog_painb7 = [ 38.000, dog_painb8 ] {


};

// function dog_painb8
// function number 1326 begins at statement 22265
/*
 * OP_STATE	9661	14059	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb8 = [ 39.000, dog_painb9 ] {

   ai_pain (MOVETYPE_STEP);

};

// function dog_painb9
// function number 1327 begins at statement 22269
/*
 * OP_STATE	746	14060	0
 * OP_DONE	0	0	0
 */

void () dog_painb9 = [ 40.000, dog_painb10 ] {


};

// function dog_painb10
// function number 1328 begins at statement 22271
/*
 * OP_STATE	9993	14061	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb10 = [ 41.000, dog_painb11 ] {

   ai_pain (MOVETYPE_BOUNCE);

};

// function dog_painb11
// function number 1329 begins at statement 22275
/*
 * OP_STATE	9995	14062	0
 * OP_DONE	0	0	0
 */

void () dog_painb11 = [ 42.000, dog_painb12 ] {


};

// function dog_painb12
// function number 1330 begins at statement 22277
/*
 * OP_STATE	9997	14063	0
 * OP_DONE	0	0	0
 */

void () dog_painb12 = [ 43.000, dog_painb13 ] {


};

// function dog_painb13
// function number 1331 begins at statement 22279
/*
 * OP_STATE	9999	14064	0
 * OP_DONE	0	0	0
 */

void () dog_painb13 = [ 44.000, dog_painb14 ] {


};

// function dog_painb14
// function number 1332 begins at statement 22281
/*
 * OP_STATE	2598	14065	0
 * OP_DONE	0	0	0
 */

void () dog_painb14 = [ 45.000, dog_painb15 ] {


};

// function dog_painb15
// function number 1333 begins at statement 22283
/*
 * OP_STATE	10002	14066	0
 * OP_DONE	0	0	0
 */

void () dog_painb15 = [ 46.000, dog_painb16 ] {


};

// function dog_painb16
// function number 1334 begins at statement 22285
/*
 * OP_STATE	10004	13926	0
 * OP_DONE	0	0	0
 */

void () dog_painb16 = [ 47.000, dog_run1 ] {


};

// function dog_pain
// function number 1335 begins at statement 22287
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14068	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	14069
 * OP_IFNOT	14069	3	0
 * OP_CALL0	14045	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	14051	0	0
 * OP_DONE	0	0	0
 */

void () dog_pain = {

   sound (self,CHAN_VOICE,globaldef004488,TRUE,ATTN_NORM);
   if ( (random () > globaldef000522) ) {

      dog_pain1 ();

   } else {

      dog_painb1 ();

   }

};
string globaldef004488 /* = "dog/dpain1.wav" */;

// function dog_die1
// function number 1336 begins at statement 22300
/*
 * OP_STATE	217	14071	0
 * OP_DONE	0	0	0
 */

void () dog_die1 = [ 8.000, dog_die2 ] {


};

// function dog_die2
// function number 1337 begins at statement 22302
/*
 * OP_STATE	234	14072	0
 * OP_DONE	0	0	0
 */

void () dog_die2 = [ 9.000, dog_die3 ] {


};

// function dog_die3
// function number 1338 begins at statement 22304
/*
 * OP_STATE	235	14073	0
 * OP_DONE	0	0	0
 */

void () dog_die3 = [ 10.000, dog_die4 ] {


};

// function dog_die4
// function number 1339 begins at statement 22306
/*
 * OP_STATE	236	14074	0
 * OP_DONE	0	0	0
 */

void () dog_die4 = [ 11.000, dog_die5 ] {


};

// function dog_die5
// function number 1340 begins at statement 22308
/*
 * OP_STATE	791	14075	0
 * OP_DONE	0	0	0
 */

void () dog_die5 = [ 12.000, dog_die6 ] {


};

// function dog_die6
// function number 1341 begins at statement 22310
/*
 * OP_STATE	792	14076	0
 * OP_DONE	0	0	0
 */

void () dog_die6 = [ 13.000, dog_die7 ] {


};

// function dog_die7
// function number 1342 begins at statement 22312
/*
 * OP_STATE	5693	14077	0
 * OP_DONE	0	0	0
 */

void () dog_die7 = [ 14.000, dog_die8 ] {


};

// function dog_die8
// function number 1343 begins at statement 22314
/*
 * OP_STATE	765	14078	0
 * OP_DONE	0	0	0
 */

void () dog_die8 = [ 15.000, dog_die9 ] {


};

// function dog_die9
// function number 1344 begins at statement 22316
/*
 * OP_STATE	218	14078	0
 * OP_DONE	0	0	0
 */

void () dog_die9 = [ 16.000, dog_die9 ] {


};

// function dog_dieb1
// function number 1345 begins at statement 22318
/*
 * OP_STATE	6892	14080	0
 * OP_DONE	0	0	0
 */

void () dog_dieb1 = [ 17.000, dog_dieb2 ] {


};

// function dog_dieb2
// function number 1346 begins at statement 22320
/*
 * OP_STATE	6133	14081	0
 * OP_DONE	0	0	0
 */

void () dog_dieb2 = [ 18.000, dog_dieb3 ] {


};

// function dog_dieb3
// function number 1347 begins at statement 22322
/*
 * OP_STATE	6895	14082	0
 * OP_DONE	0	0	0
 */

void () dog_dieb3 = [ 19.000, dog_dieb4 ] {


};

// function dog_dieb4
// function number 1348 begins at statement 22324
/*
 * OP_STATE	2323	14083	0
 * OP_DONE	0	0	0
 */

void () dog_dieb4 = [ 20.000, dog_dieb5 ] {


};

// function dog_dieb5
// function number 1349 begins at statement 22326
/*
 * OP_STATE	12465	14084	0
 * OP_DONE	0	0	0
 */

void () dog_dieb5 = [ 21.000, dog_dieb6 ] {


};

// function dog_dieb6
// function number 1350 begins at statement 22328
/*
 * OP_STATE	12467	14085	0
 * OP_DONE	0	0	0
 */

void () dog_dieb6 = [ 22.000, dog_dieb7 ] {


};

// function dog_dieb7
// function number 1351 begins at statement 22330
/*
 * OP_STATE	304	14086	0
 * OP_DONE	0	0	0
 */

void () dog_dieb7 = [ 23.000, dog_dieb8 ] {


};

// function dog_dieb8
// function number 1352 begins at statement 22332
/*
 * OP_STATE	736	14087	0
 * OP_DONE	0	0	0
 */

void () dog_dieb8 = [ 24.000, dog_dieb9 ] {


};

// function dog_dieb9
// function number 1353 begins at statement 22334
/*
 * OP_STATE	305	14087	0
 * OP_DONE	0	0	0
 */

void () dog_dieb9 = [ 25.000, dog_dieb9 ] {


};

// function dog_die
// function number 1354 begins at statement 22336
/*
 * OP_LOAD_F	28	152	14089
 * OP_LT	14089	13516	14090
 * OP_IFNOT	14090	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	14091
 * OP_STORE_V	14091	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	14092
 * OP_STORE_V	14092	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	14093
 * OP_STORE_V	14093	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	14094	4	0
 * OP_LOAD_F	28	152	14095
 * OP_STORE_V	14095	7	0
 * OP_CALL2	9802	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14096	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	104	14097
 * OP_STOREP_F	237	14097	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	14098
 * OP_IFNOT	14098	3	0
 * OP_CALL0	14070	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	14079	0	0
 * OP_DONE	0	0	0
 */

void () dog_die = {

   if ( (self.health < globaldef004288) ) {

      sound (self,CHAN_VOICE,globaldef002406,TRUE,ATTN_NORM);
      ThrowGib (globaldef002434,self.health);
      ThrowGib (globaldef002434,self.health);
      ThrowGib (globaldef002434,self.health);
      ThrowHead (globaldef004508,self.health);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef004509,TRUE,ATTN_NORM);
   self.solid = SOLID_NOT;
   if ( (random () > globaldef000522) ) {

      dog_die1 ();

   } else {

      dog_dieb1 ();

   }

};
string globaldef004508 /* = "progs/h_dog.mdl" */;
string globaldef004509 /* = "dog/ddeath.wav" */;

// function CheckDogMelee
// function number 1355 begins at statement 22377
/*
 * OP_EQ_F	3193	242	14100
 * OP_IFNOT	14100	4	0
 * OP_ADDRESS	28	372	14101
 * OP_STOREP_F	375	14101	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () CheckDogMelee = {

   if ( (globaldef001536 == RANGE_MELEE) ) {

      self.attack_state = AS_MELEE;
      return ( TRUE );

   }
   return ( FALSE );

};

// function CheckDogJump
// function number 1356 begins at statement 22384
/*
 * OP_LOAD_F	28	108	14107
 * OP_LOAD_F	28	137	14108
 * OP_ADD_F	14107	14108	14109
 * OP_LOAD_ENT	28	181	14110
 * OP_LOAD_F	14110	108	14111
 * OP_LOAD_ENT	28	181	14112
 * OP_LOAD_F	14112	137	14113
 * OP_ADD_F	14111	14113	14114
 * OP_LOAD_ENT	28	181	14115
 * OP_LOAD_F	14115	145	14116
 * OP_MUL_F	6280	14116	14117
 * OP_ADD_F	14114	14117	14118
 * OP_GT	14109	14118	14119
 * OP_IFNOT	14119	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	28	108	14120
 * OP_LOAD_F	28	141	14121
 * OP_ADD_F	14120	14121	14122
 * OP_LOAD_ENT	28	181	14123
 * OP_LOAD_F	14123	108	14124
 * OP_LOAD_ENT	28	181	14125
 * OP_LOAD_F	14125	137	14126
 * OP_ADD_F	14124	14126	14127
 * OP_LOAD_ENT	28	181	14128
 * OP_LOAD_F	14128	145	14129
 * OP_MUL_F	6277	14129	14130
 * OP_ADD_F	14127	14130	14131
 * OP_LT	14122	14131	14132
 * OP_IFNOT	14132	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	14133
 * OP_LOAD_V	14133	105	14134
 * OP_LOAD_V	28	105	14137
 * OP_SUB_V	14134	14137	14140
 * OP_STORE_V	14140	14103	0
 * OP_STORE_F	213	14105	0
 * OP_STORE_V	14103	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	14106	0
 * OP_LT	14106	2805	14143
 * OP_IFNOT	14143	2	0
 * OP_RETURN	213	0	0
 * OP_GT	14106	2003	14144
 * OP_IFNOT	14144	2	0
 * OP_RETURN	213	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () CheckDogJump = {

   local vector dist;
   local float d;

   if ( ((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (globaldef002244 * self.enemy.size_z))) ) {

      return ( FALSE );

   }
   if ( ((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (globaldef002243 * self.enemy.size_z))) ) {

      return ( FALSE );

   }
   dist = (self.enemy.origin - self.origin);
   globaldef004515 = FALSE;
   d = vlen (dist);
   if ( (d < globaldef001439) ) {

      return ( FALSE );

   }
   if ( (d > globaldef001336) ) {

      return ( FALSE );

   }
   return ( TRUE );

};

// function DogCheckAttack
// function number 1357 begins at statement 22431
/*
 * OP_CALL0	14099	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	372	14148
 * OP_STOREP_F	375	14148	0
 * OP_RETURN	214	0	0
 * OP_CALL0	14102	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	372	14149
 * OP_STOREP_F	376	14149	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () DogCheckAttack = {

   local vector vec;

   if ( CheckDogMelee () ) {

      self.attack_state = AS_MELEE;
      return ( TRUE );

   }
   if ( CheckDogJump () ) {

      self.attack_state = AS_MISSILE;
      return ( TRUE );

   }
   return ( FALSE );

};

// function monster_dog
// function number 1358 begins at statement 22443
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	14094	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	14151	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	14009	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14096	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14068	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3679	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13985	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	14152
 * OP_STOREP_F	240	14152	0
 * OP_ADDRESS	28	103	14153
 * OP_STOREP_F	229	14153	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	14151	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	14154	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	14157
 * OP_STOREP_F	305	14157	0
 * OP_ADDRESS	28	361	14158
 * OP_STOREP_FNC	13973	14158	0
 * OP_ADDRESS	28	362	14159
 * OP_STOREP_FNC	13982	14159	0
 * OP_ADDRESS	28	363	14160
 * OP_STOREP_FNC	13926	14160	0
 * OP_ADDRESS	28	366	14161
 * OP_STOREP_FNC	14067	14161	0
 * OP_ADDRESS	28	367	14162
 * OP_STOREP_FNC	14088	14162	0
 * OP_ADDRESS	28	365	14163
 * OP_STOREP_FNC	14004	14163	0
 * OP_ADDRESS	28	364	14164
 * OP_STOREP_FNC	13925	14164	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_dog = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model (globaldef004508);
   precache_model (globaldef004522);
   precache_sound (globaldef004452);
   precache_sound (globaldef004509);
   precache_sound (globaldef004488);
   precache_sound (globaldef001668);
   precache_sound (globaldef004429);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef004522);
   setsize (self,VEC_HULL2_MIN,globaldef004523);
   self.health = globaldef000288;
   self.th_stand = dog_stand1;
   self.th_walk = dog_walk1;
   self.th_run = dog_run1;
   self.th_pain = dog_pain;
   self.th_die = dog_die;
   self.th_melee = dog_atta1;
   self.th_missile = dog_leap1;
   walkmonster_start ();

};
