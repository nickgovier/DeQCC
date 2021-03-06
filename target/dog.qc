
void () dog_leap1;

void () dog_run1;

// function dog_bite
// function number 1101 begins at statement 15652
/*
 * OP_LOAD_ENT	28	181	9255
 * OP_NOT_ENT	9255	0	9256
 * OP_IFNOT	9256	2	0
 * OP_RETURN	0	0	0
 * 132	318	4	0
 * OP_CALL1	857	0	0
 * OP_LOAD_ENT	28	181	9257
 * OP_STORE_V	9257	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	522	0	0
 * OP_NOT_F	1	0	9258
 * OP_IFNOT	9258	2	0
 * OP_RETURN	0	0	0
 * 127	28	181	9259
 * OP_LOAD_V	9259	105	9260
 * OP_LOAD_V	28	105	9263
 * OP_SUB_V	9260	9263	9266
 * OP_STORE_V	9266	9251	0
 * OP_STORE_V	9251	4	0
 * OP_CALL1	457	0	0
 * OP_GT	1	1884	9269
 * OP_IFNOT	9269	2	0
 * OP_RETURN	0	0	0
 * 151	452	0	0
 * OP_STORE_V	1	9270	0
 * OP_CALL0	452	0	0
 * OP_ADD_F	9270	1	9273
 * OP_CALL0	452	0	0
 * OP_ADD_F	9273	1	9274
 * OP_MUL_F	9274	6077	9275
 * OP_STORE_F	9275	9254	0
 * OP_LOAD_ENT	28	181	9276
 * OP_STORE_V	9276	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	9254	13	0
 * OP_CALL4	520	0	0
 * OP_DONE	0	0	0
 */

void () dog_bite = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   ai_charge (TE_LAVASPLASH);
   if ( !CanDamage (self.enemy,self) ) {

      return ;

   }
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > 100.000) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * SECRET_NO_SHOOT);
   T_Damage (self.enemy,self,self,ldmg);

};

// function Dog_JumpTouch
// function number 1102 begins at statement 15690
/*
 * OP_LOAD_F	28	152	9279
 * OP_LE	9279	337	9280
 * OP_IFNOT	9280	2	0
 * OP_RETURN	0	0	0
 * 124	29	163	9281
 * OP_IFNOT	9281	15	0
 * OP_LOAD_V	28	113	9282
 * OP_STORE_V	9282	4	0
 * OP_CALL1	457	0	0
 * OP_GT	1	2596	9285
 * OP_IFNOT	9285	10	0
 * OP_CALL0	452	0	0
 * OP_MUL_F	318	1	9286
 * OP_ADD_F	318	9286	9287
 * OP_STORE_F	9287	9278	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	9278	13	0
 * OP_CALL4	520	0	0
 * 232	28	4	0
 * OP_CALL1	483	0	0
 * OP_NOT_F	1	0	9288
 * OP_IFNOT	9288	12	0
 * OP_LOAD_F	28	182	9289
 * OP_BITAND	9289	223	9290
 * OP_IFNOT	9290	8	0
 * OP_ADDRESS	28	146	9291
 * OP_STOREP_FNC	517	9291	0
 * OP_ADDRESS	28	148	9292
 * OP_STOREP_FNC	9248	9292	0
 * OP_ADDRESS	28	150	9293
 * OP_ADD_F	31	603	9294
 * OP_STOREP_F	9294	9293	0
 * 143	0	0	0
 * 130	28	146	9295
 * OP_STOREP_FNC	517	9295	0
 * OP_ADDRESS	28	148	9296
 * OP_STOREP_FNC	9249	9296	0
 * OP_ADDRESS	28	150	9297
 * OP_ADD_F	31	603	9298
 * OP_STOREP_F	9298	9297	0
 * OP_DONE	0	0	0
 */

void () Dog_JumpTouch = {

   local float ldmg;

   if ( (self.health <= MSG_BROADCAST) ) {

      return ;

   }
   if ( other.takedamage ) {

      if ( (vlen (self.velocity) > 300.000) ) {

         ldmg = (TE_LAVASPLASH + (TE_LAVASPLASH * random ()));
         T_Damage (other,self,self,ldmg);

      }

   }
   if ( !checkbottom (self) ) {

      if ( (self.flags & FL_ONGROUND) ) {

         self.touch = SUB_Null;
         self.think = dog_leap1;
         self.nextthink = (time + 0.100);

      }
      return ;

   }
   self.touch = SUB_Null;
   self.think = dog_run1;
   self.nextthink = (time + 0.100);

};

// function dog_stand1
// function number 1103 begins at statement 15733
/*
 * OP_STATE	5383	9300	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand1 = [ 69.000, dog_stand2 ] {

   ai_stand ();

};

// function dog_stand2
// function number 1104 begins at statement 15736
/*
 * OP_STATE	5384	9301	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand2 = [ 70.000, dog_stand3 ] {

   ai_stand ();

};

// function dog_stand3
// function number 1105 begins at statement 15739
/*
 * OP_STATE	5386	9302	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand3 = [ 71.000, dog_stand4 ] {

   ai_stand ();

};

// function dog_stand4
// function number 1106 begins at statement 15742
/*
 * OP_STATE	5388	9303	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand4 = [ 72.000, dog_stand5 ] {

   ai_stand ();

};

// function dog_stand5
// function number 1107 begins at statement 15745
/*
 * OP_STATE	2739	9304	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand5 = [ 73.000, dog_stand6 ] {

   ai_stand ();

};

// function dog_stand6
// function number 1108 begins at statement 15748
/*
 * OP_STATE	5391	9305	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand6 = [ 74.000, dog_stand7 ] {

   ai_stand ();

};

// function dog_stand7
// function number 1109 begins at statement 15751
/*
 * OP_STATE	5393	9306	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand7 = [ 75.000, dog_stand8 ] {

   ai_stand ();

};

// function dog_stand8
// function number 1110 begins at statement 15754
/*
 * OP_STATE	5395	9307	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand8 = [ 76.000, dog_stand9 ] {

   ai_stand ();

};

// function dog_stand9
// function number 1111 begins at statement 15757
/*
 * OP_STATE	5397	9299	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () dog_stand9 = [ 77.000, dog_stand1 ] {

   ai_stand ();

};

// function dog_walk1
// function number 1112 begins at statement 15760
/*
 * OP_STATE	5399	9309	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	9310
 * OP_IFNOT	9310	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	9311	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * 132	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk1 = [ 78.000, dog_walk2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"dog/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk2
// function number 1113 begins at statement 15773
/*
 * OP_STATE	5401	9312	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk2 = [ 79.000, dog_walk3 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk3
// function number 1114 begins at statement 15777
/*
 * OP_STATE	788	9313	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk3 = [ 80.000, dog_walk4 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk4
// function number 1115 begins at statement 15781
/*
 * OP_STATE	5404	9314	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk4 = [ 81.000, dog_walk5 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk5
// function number 1116 begins at statement 15785
/*
 * OP_STATE	5406	9315	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk5 = [ 82.000, dog_walk6 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk6
// function number 1117 begins at statement 15789
/*
 * OP_STATE	5408	9316	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk6 = [ 83.000, dog_walk7 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk7
// function number 1118 begins at statement 15793
/*
 * OP_STATE	5410	9317	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk7 = [ 84.000, dog_walk8 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_walk8
// function number 1119 begins at statement 15797
/*
 * OP_STATE	5411	9308	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () dog_walk8 = [ 85.000, dog_walk1 ] {

   ai_walk (SECRET_NO_SHOOT);

};

// function dog_run1
// function number 1120 begins at statement 15801
/*
 * OP_STATE	5456	9318	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	9319
 * OP_IFNOT	9319	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	9311	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * 132	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run1 = [ 48.000, dog_run2 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"dog/idle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_run (SECRET_YES_SHOOT);

};

// function dog_run2
// function number 1121 begins at statement 15814
/*
 * OP_STATE	5458	9320	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run2 = [ 49.000, dog_run3 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_run3
// function number 1122 begins at statement 15818
/*
 * OP_STATE	2227	9321	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run3 = [ 50.000, dog_run4 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_run4
// function number 1123 begins at statement 15822
/*
 * OP_STATE	5351	9322	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run4 = [ 51.000, dog_run5 ] {

   ai_run (20.000);

};

// function dog_run5
// function number 1124 begins at statement 15826
/*
 * OP_STATE	5353	9323	0
 * OP_STORE_V	260	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run5 = [ 52.000, dog_run6 ] {

   ai_run (IT_LIGHTNING);

};

// function dog_run6
// function number 1125 begins at statement 15830
/*
 * OP_STATE	5355	9324	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run6 = [ 53.000, dog_run7 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_run7
// function number 1126 begins at statement 15834
/*
 * OP_STATE	5357	9325	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run7 = [ 54.000, dog_run8 ] {

   ai_run (SECRET_YES_SHOOT);

};

// function dog_run8
// function number 1127 begins at statement 15838
/*
 * OP_STATE	5359	9326	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run8 = [ 55.000, dog_run9 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_run9
// function number 1128 begins at statement 15842
/*
 * OP_STATE	5361	9327	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run9 = [ 56.000, dog_run10 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_run10
// function number 1129 begins at statement 15846
/*
 * OP_STATE	5363	9328	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run10 = [ 57.000, dog_run11 ] {

   ai_run (20.000);

};

// function dog_run11
// function number 1130 begins at statement 15850
/*
 * OP_STATE	5365	9329	0
 * OP_STORE_V	260	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run11 = [ 58.000, dog_run12 ] {

   ai_run (IT_LIGHTNING);

};

// function dog_run12
// function number 1131 begins at statement 15854
/*
 * OP_STATE	5367	9249	0
 * OP_STORE_V	5674	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () dog_run12 = [ 59.000, dog_run1 ] {

   ai_run (DOOR_TOGGLE);

};

// function dog_atta1
// function number 1132 begins at statement 15858
/*
 * OP_STATE	337	9331	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta1 = [ 0.000, dog_atta2 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta2
// function number 1133 begins at statement 15862
/*
 * OP_STATE	7368	9332	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta2 = [ 1.000, dog_atta3 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta3
// function number 1134 begins at statement 15866
/*
 * OP_STATE	7369	9333	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta3 = [ 2.000, dog_atta4 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta4
// function number 1135 begins at statement 15870
/*
 * OP_STATE	370	9334	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	9335	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	9250	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta4 = [ 3.000, dog_atta5 ] {

   sound (self,CHAN_VOICE,"dog/dattack1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   dog_bite ();

};

// function dog_atta5
// function number 1136 begins at statement 15879
/*
 * OP_STATE	6076	9336	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta5 = [ 4.000, dog_atta6 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta6
// function number 1137 begins at statement 15883
/*
 * OP_STATE	313	9337	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta6 = [ 5.000, dog_atta7 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta7
// function number 1138 begins at statement 15887
/*
 * OP_STATE	314	9338	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta7 = [ 6.000, dog_atta8 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_atta8
// function number 1139 begins at statement 15891
/*
 * OP_STATE	315	9249	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () dog_atta8 = [ 7.000, dog_run1 ] {

   ai_charge (TE_LAVASPLASH);

};

// function dog_leap1
// function number 1140 begins at statement 15895
/*
 * OP_STATE	912	9339	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () dog_leap1 = [ 60.000, dog_leap2 ] {

   ai_face ();

};

// function dog_leap2
// function number 1141 begins at statement 15898
/*
 * OP_STATE	5369	9340	0
 * OP_CALL0	758	0	0
 * OP_ADDRESS	28	146	9341
 * OP_STOREP_FNC	9277	9341	0
 * OP_LOAD_V	28	117	9342
 * OP_STORE_V	9342	4	0
 * OP_CALL1	447	0	0
 * OP_ADDRESS	28	108	9345
 * OP_LOAD_F	28	108	9346
 * OP_ADD_F	9346	7368	9347
 * OP_STOREP_F	9347	9345	0
 * OP_ADDRESS	28	113	9348
 * OP_MUL_VF	59	2596	9351
 * OP_ADD_V	9351	9354	9357
 * OP_STOREP_V	9357	9348	0
 * OP_LOAD_F	28	182	9360
 * OP_BITAND	9360	223	9361
 * OP_IFNOT	9361	5	0
 * OP_ADDRESS	28	182	9362
 * OP_LOAD_F	28	182	9363
 * OP_SUB_F	9363	223	9364
 * OP_STOREP_F	9364	9362	0
 * 100	0	0	0
 * OP_STATE	5371	9365	0
 * OP_DONE	0	0	0
 */

void () dog_leap2 = [ 61.000, dog_leap3 ] {

   ai_face ();
   self.touch = Dog_JumpTouch;
   makevectors (self.angles);
   self.origin_z = (self.origin_z + SPAWNFLAG_SUPERSPIKE);
   self.velocity = ((v_forward * 300.000) + '0.000 0.000 200.000');
   if ( (self.flags & FL_ONGROUND) ) {

      self.flags = (self.flags - FL_ONGROUND);

   }

};

// function dog_leap3
// function number 1142 begins at statement 15921
/*
 * OP_STATE	5371	9365	0
 * OP_DONE	0	0	0
 */

void () dog_leap3 = [ 62.000, dog_leap4 ] {


};

// function dog_leap4
// function number 1143 begins at statement 15923
/*
 * OP_STATE	3872	9366	0
 * OP_DONE	0	0	0
 */

void () dog_leap4 = [ 63.000, dog_leap5 ] {


};

// function dog_leap5
// function number 1144 begins at statement 15925
/*
 * OP_STATE	260	9367	0
 * OP_DONE	0	0	0
 */

void () dog_leap5 = [ 64.000, dog_leap6 ] {


};

// function dog_leap6
// function number 1145 begins at statement 15927
/*
 * OP_STATE	5375	9368	0
 * OP_DONE	0	0	0
 */

void () dog_leap6 = [ 65.000, dog_leap7 ] {


};

// function dog_leap7
// function number 1146 begins at statement 15929
/*
 * OP_STATE	5377	9369	0
 * OP_DONE	0	0	0
 */

void () dog_leap7 = [ 66.000, dog_leap8 ] {


};

// function dog_leap8
// function number 1147 begins at statement 15931
/*
 * OP_STATE	5379	9370	0
 * OP_DONE	0	0	0
 */

void () dog_leap8 = [ 67.000, dog_leap9 ] {


};

// function dog_leap9
// function number 1148 begins at statement 15933
/*
 * OP_STATE	5381	9370	0
 * OP_DONE	0	0	0
 */

void () dog_leap9 = [ 68.000, dog_leap9 ] {


};

// function dog_pain1
// function number 1149 begins at statement 15935
/*
 * OP_STATE	7788	9372	0
 * OP_DONE	0	0	0
 */

void () dog_pain1 = [ 26.000, dog_pain2 ] {


};

// function dog_pain2
// function number 1150 begins at statement 15937
/*
 * OP_STATE	302	9373	0
 * OP_DONE	0	0	0
 */

void () dog_pain2 = [ 27.000, dog_pain3 ] {


};

// function dog_pain3
// function number 1151 begins at statement 15939
/*
 * OP_STATE	303	9374	0
 * OP_DONE	0	0	0
 */

void () dog_pain3 = [ 28.000, dog_pain4 ] {


};

// function dog_pain4
// function number 1152 begins at statement 15941
/*
 * OP_STATE	5105	9375	0
 * OP_DONE	0	0	0
 */

void () dog_pain4 = [ 29.000, dog_pain5 ] {


};

// function dog_pain5
// function number 1153 begins at statement 15943
/*
 * OP_STATE	304	9376	0
 * OP_DONE	0	0	0
 */

void () dog_pain5 = [ 30.000, dog_pain6 ] {


};

// function dog_pain6
// function number 1154 begins at statement 15945
/*
 * OP_STATE	305	9249	0
 * OP_DONE	0	0	0
 */

void () dog_pain6 = [ 31.000, dog_run1 ] {


};

// function dog_painb1
// function number 1155 begins at statement 15947
/*
 * OP_STATE	5674	9378	0
 * OP_DONE	0	0	0
 */

void () dog_painb1 = [ 32.000, dog_painb2 ] {


};

// function dog_painb2
// function number 1156 begins at statement 15949
/*
 * OP_STATE	307	9379	0
 * OP_DONE	0	0	0
 */

void () dog_painb2 = [ 33.000, dog_painb3 ] {


};

// function dog_painb3
// function number 1157 begins at statement 15951
/*
 * OP_STATE	5112	9380	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb3 = [ 34.000, dog_painb4 ] {

   ai_pain (SECRET_1ST_DOWN);

};

// function dog_painb4
// function number 1158 begins at statement 15955
/*
 * OP_STATE	3072	9381	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb4 = [ 35.000, dog_painb5 ] {

   ai_pain (12.000);

};

// function dog_painb5
// function number 1159 begins at statement 15959
/*
 * OP_STATE	5096	9382	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb5 = [ 36.000, dog_painb6 ] {

   ai_pain (12.000);

};

// function dog_painb6
// function number 1160 begins at statement 15963
/*
 * OP_STATE	5098	9383	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb6 = [ 37.000, dog_painb7 ] {

   ai_pain (SPAWNFLAG_LASER);

};

// function dog_painb7
// function number 1161 begins at statement 15967
/*
 * OP_STATE	5100	9384	0
 * OP_DONE	0	0	0
 */

void () dog_painb7 = [ 38.000, dog_painb8 ] {


};

// function dog_painb8
// function number 1162 begins at statement 15969
/*
 * OP_STATE	5102	9385	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb8 = [ 39.000, dog_painb9 ] {

   ai_pain (SECRET_1ST_DOWN);

};

// function dog_painb9
// function number 1163 begins at statement 15973
/*
 * OP_STATE	1733	9386	0
 * OP_DONE	0	0	0
 */

void () dog_painb9 = [ 40.000, dog_painb10 ] {


};

// function dog_painb10
// function number 1164 begins at statement 15975
/*
 * OP_STATE	5443	9387	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () dog_painb10 = [ 41.000, dog_painb11 ] {

   ai_pain (TE_LAVASPLASH);

};

// function dog_painb11
// function number 1165 begins at statement 15979
/*
 * OP_STATE	5445	9388	0
 * OP_DONE	0	0	0
 */

void () dog_painb11 = [ 42.000, dog_painb12 ] {


};

// function dog_painb12
// function number 1166 begins at statement 15981
/*
 * OP_STATE	5447	9389	0
 * OP_DONE	0	0	0
 */

void () dog_painb12 = [ 43.000, dog_painb13 ] {


};

// function dog_painb13
// function number 1167 begins at statement 15983
/*
 * OP_STATE	5449	9390	0
 * OP_DONE	0	0	0
 */

void () dog_painb13 = [ 44.000, dog_painb14 ] {


};

// function dog_painb14
// function number 1168 begins at statement 15985
/*
 * OP_STATE	1390	9391	0
 * OP_DONE	0	0	0
 */

void () dog_painb14 = [ 45.000, dog_painb15 ] {


};

// function dog_painb15
// function number 1169 begins at statement 15987
/*
 * OP_STATE	5452	9392	0
 * OP_DONE	0	0	0
 */

void () dog_painb15 = [ 46.000, dog_painb16 ] {


};

// function dog_painb16
// function number 1170 begins at statement 15989
/*
 * OP_STATE	5454	9249	0
 * OP_DONE	0	0	0
 */

void () dog_painb16 = [ 47.000, dog_run1 ] {


};

// function dog_pain
// function number 1171 begins at statement 15991
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	9394	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_GT	1	1491	9395
 * OP_IFNOT	9395	3	0
 * OP_CALL0	9371	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	9377	0	0
 * 100	0	0	0
 * OP_STATE	6077	9397	0
 * OP_DONE	0	0	0
 */

void () dog_pain = {

   sound (self,CHAN_VOICE,"dog/dpain1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (random () > 0.500) ) {

      dog_pain1 ();

   } else {

      dog_painb1 ();

   }

};

// function dog_die1
// function number 1172 begins at statement 16004
/*
 * OP_STATE	6077	9397	0
 * OP_DONE	0	0	0
 */

void () dog_die1 = [ 8.000, dog_die2 ] {


};

// function dog_die2
// function number 1173 begins at statement 16006
/*
 * OP_STATE	317	9398	0
 * OP_DONE	0	0	0
 */

void () dog_die2 = [ 9.000, dog_die3 ] {


};

// function dog_die3
// function number 1174 begins at statement 16008
/*
 * OP_STATE	318	9399	0
 * OP_DONE	0	0	0
 */

void () dog_die3 = [ 10.000, dog_die4 ] {


};

// function dog_die4
// function number 1175 begins at statement 16010
/*
 * OP_STATE	319	9400	0
 * OP_DONE	0	0	0
 */

void () dog_die4 = [ 11.000, dog_die5 ] {


};

// function dog_die5
// function number 1176 begins at statement 16012
/*
 * OP_STATE	2250	9401	0
 * OP_DONE	0	0	0
 */

void () dog_die5 = [ 12.000, dog_die6 ] {


};

// function dog_die6
// function number 1177 begins at statement 16014
/*
 * OP_STATE	7768	9402	0
 * OP_DONE	0	0	0
 */

void () dog_die6 = [ 13.000, dog_die7 ] {


};

// function dog_die7
// function number 1178 begins at statement 16016
/*
 * OP_STATE	2901	9403	0
 * OP_DONE	0	0	0
 */

void () dog_die7 = [ 14.000, dog_die8 ] {


};

// function dog_die8
// function number 1179 begins at statement 16018
/*
 * OP_STATE	1876	9404	0
 * OP_DONE	0	0	0
 */

void () dog_die8 = [ 15.000, dog_die9 ] {


};

// function dog_die9
// function number 1180 begins at statement 16020
/*
 * OP_STATE	6078	9404	0
 * OP_DONE	0	0	0
 */

void () dog_die9 = [ 16.000, dog_die9 ] {


};

// function dog_dieb1
// function number 1181 begins at statement 16022
/*
 * OP_STATE	4861	9406	0
 * OP_DONE	0	0	0
 */

void () dog_dieb1 = [ 17.000, dog_dieb2 ] {


};

// function dog_dieb2
// function number 1182 begins at statement 16024
/*
 * OP_STATE	3319	9407	0
 * OP_DONE	0	0	0
 */

void () dog_dieb2 = [ 18.000, dog_dieb3 ] {


};

// function dog_dieb3
// function number 1183 begins at statement 16026
/*
 * OP_STATE	7776	9408	0
 * OP_DONE	0	0	0
 */

void () dog_dieb3 = [ 19.000, dog_dieb4 ] {


};

// function dog_dieb4
// function number 1184 begins at statement 16028
/*
 * OP_STATE	894	9409	0
 * OP_DONE	0	0	0
 */

void () dog_dieb4 = [ 20.000, dog_dieb5 ] {


};

// function dog_dieb5
// function number 1185 begins at statement 16030
/*
 * OP_STATE	7779	9410	0
 * OP_DONE	0	0	0
 */

void () dog_dieb5 = [ 21.000, dog_dieb6 ] {


};

// function dog_dieb6
// function number 1186 begins at statement 16032
/*
 * OP_STATE	7781	9411	0
 * OP_DONE	0	0	0
 */

void () dog_dieb6 = [ 22.000, dog_dieb7 ] {


};

// function dog_dieb7
// function number 1187 begins at statement 16034
/*
 * OP_STATE	301	9412	0
 * OP_DONE	0	0	0
 */

void () dog_dieb7 = [ 23.000, dog_dieb8 ] {


};

// function dog_dieb8
// function number 1188 begins at statement 16036
/*
 * OP_STATE	4437	9413	0
 * OP_DONE	0	0	0
 */

void () dog_dieb8 = [ 24.000, dog_dieb9 ] {


};

// function dog_dieb9
// function number 1189 begins at statement 16038
/*
 * OP_STATE	1890	9413	0
 * OP_DONE	0	0	0
 */

void () dog_dieb9 = [ 25.000, dog_dieb9 ] {


};

// function dog_die
// function number 1190 begins at statement 16040
/*
 * OP_LOAD_F	28	152	9415
 * OP_LT	9415	8839	9416
 * OP_IFNOT	9416	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3826	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	152	9417
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	9417	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	9418
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	9418	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	9419
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	9419	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	9421
 * OP_STORE_V	9420	4	0
 * OP_STORE_V	9421	7	0
 * OP_CALL2	5247	0	0
 * OP_RETURN	0	0	0
 * 132	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	9422	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	104	9423
 * OP_STOREP_F	237	9423	0
 * OP_CALL0	452	0	0
 * OP_GT	1	1491	9424
 * OP_IFNOT	9424	3	0
 * OP_CALL0	9396	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	9405	0	0
 * 100	0	0	0
 * OP_EQ_F	761	242	9426
 * OP_IFNOT	9426	4	0
 * OP_ADDRESS	28	367	9427
 * OP_STOREP_F	370	9427	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */

void () dog_die = {

   if ( (self.health < -35.000) ) {

      sound (self,CHAN_VOICE,"player/udeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
      ThrowGib ("progs/gib3.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      ThrowHead ("progs/h_dog.mdl",self.health);
      return ;

   }
   sound (self,CHAN_VOICE,"dog/ddeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   self.solid = SOLID_NOT;
   if ( (random () > 0.500) ) {

      dog_die1 ();

   } else {

      dog_dieb1 ();

   }

};

// function CheckDogMelee
// function number 1191 begins at statement 16081
/*
 * OP_EQ_F	761	242	9426
 * OP_IFNOT	9426	4	0
 * OP_ADDRESS	28	367	9427
 * OP_STOREP_F	370	9427	0
 * OP_RETURN	214	0	0
 * 143	213	0	0
 * OP_DONE	0	0	0
 */
float () CheckDogMelee = {

   if ( (enemy_range == RANGE_MELEE) ) {

      self.attack_state = AS_MELEE;
      return ( TRUE );

   }
   return ( FALSE );

};

// function CheckDogJump
// function number 1192 begins at statement 16088
/*
 * OP_LOAD_F	28	108	9433
 * OP_LOAD_F	28	137	9434
 * OP_ADD_F	9433	9434	9435
 * OP_LOAD_ENT	28	181	9436
 * OP_LOAD_F	9436	108	9437
 * OP_LOAD_ENT	28	181	9438
 * OP_LOAD_F	9438	137	9439
 * OP_ADD_F	9437	9439	9440
 * OP_LOAD_ENT	28	181	9441
 * OP_LOAD_F	9441	145	9442
 * OP_MUL_F	3464	9442	9443
 * OP_ADD_F	9440	9443	9444
 * OP_GT	9435	9444	9445
 * OP_IFNOT	9445	2	0
 * OP_RETURN	213	0	0
 * 124	28	108	9446
 * OP_LOAD_F	28	141	9447
 * OP_ADD_F	9446	9447	9448
 * OP_LOAD_ENT	28	181	9449
 * OP_LOAD_F	9449	108	9450
 * OP_LOAD_ENT	28	181	9451
 * OP_LOAD_F	9451	137	9452
 * OP_ADD_F	9450	9452	9453
 * OP_LOAD_ENT	28	181	9454
 * OP_LOAD_F	9454	145	9455
 * OP_MUL_F	3461	9455	9456
 * OP_ADD_F	9453	9456	9457
 * OP_LT	9448	9457	9458
 * OP_IFNOT	9458	2	0
 * OP_RETURN	213	0	0
 * 127	28	181	9459
 * OP_LOAD_V	9459	105	9460
 * OP_LOAD_V	28	105	9463
 * OP_SUB_V	9460	9463	9466
 * OP_STORE_V	9466	9429	0
 * OP_STORE_F	337	9431	0
 * OP_STORE_V	9429	4	0
 * OP_CALL1	457	0	0
 * OP_STORE_F	1	9432	0
 * OP_LT	9432	788	9469
 * OP_IFNOT	9469	2	0
 * OP_RETURN	213	0	0
 * 123	9432	1960	9470
 * OP_IFNOT	9470	2	0
 * OP_RETURN	213	0	0
 * 143	214	0	0
 * OP_DONE	0	0	0
 */
float () CheckDogJump = {

   local vector dist;
   local float d;

   if ( ((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.750 * self.enemy.size_z))) ) {

      return ( FALSE );

   }
   if ( ((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.250 * self.enemy.size_z))) ) {

      return ( FALSE );

   }
   dist = (self.enemy.origin - self.origin);
   dist_z = MSG_BROADCAST;
   d = vlen (dist);
   if ( (d < 80.000) ) {

      return ( FALSE );

   }
   if ( (d > 150.000) ) {

      return ( FALSE );

   }
   return ( TRUE );

};

// function DogCheckAttack
// function number 1193 begins at statement 16135
/*
 * OP_CALL0	9425	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	367	9474
 * OP_STOREP_F	370	9474	0
 * OP_RETURN	214	0	0
 * 151	9428	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	367	9475
 * OP_STOREP_F	371	9475	0
 * OP_RETURN	214	0	0
 * 143	213	0	0
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
// function number 1194 begins at statement 16147
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * 132	9420	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	9477	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	9335	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	9422	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	9394	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	1261	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	9311	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	9478
 * OP_STOREP_F	240	9478	0
 * OP_ADDRESS	28	103	9479
 * OP_STOREP_F	229	9479	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	9477	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	9480	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	9483
 * OP_STOREP_F	1890	9483	0
 * OP_ADDRESS	28	356	9484
 * OP_STOREP_FNC	9299	9484	0
 * OP_ADDRESS	28	357	9485
 * OP_STOREP_FNC	9308	9485	0
 * OP_ADDRESS	28	358	9486
 * OP_STOREP_FNC	9249	9486	0
 * OP_ADDRESS	28	361	9487
 * OP_STOREP_FNC	9393	9487	0
 * OP_ADDRESS	28	362	9488
 * OP_STOREP_FNC	9414	9488	0
 * OP_ADDRESS	28	360	9489
 * OP_STOREP_FNC	9330	9489	0
 * OP_ADDRESS	28	359	9490
 * OP_STOREP_FNC	9248	9490	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () monster_dog = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model ("progs/h_dog.mdl");
   precache_model ("progs/dog.mdl");
   precache_sound ("dog/dattack1.wav");
   precache_sound ("dog/ddeath.wav");
   precache_sound ("dog/dpain1.wav");
   precache_sound ("dog/dsight.wav");
   precache_sound ("dog/idle.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,"progs/dog.mdl");
   setsize (self,VEC_HULL2_MIN,'32.000 32.000 40.000');
   self.health = 25.000;
   self.th_stand = dog_stand1;
   self.th_walk = dog_walk1;
   self.th_run = dog_run1;
   self.th_pain = dog_pain;
   self.th_die = dog_die;
   self.th_melee = dog_atta1;
   self.th_missile = dog_leap1;
   walkmonster_start ();

};
