string globaldef3414 /* = "doors/latch2.wav" */;
string globaldef3415 /* = "doors/winch2.wav" */;
string globaldef3416 /* = "doors/airdoor1.wav" */;
string globaldef3417 /* = "doors/airdoor2.wav" */;
string globaldef3418 /* = "doors/basesec1.wav" */;
string globaldef3419 /* = "doors/basesec2.wav" */;

void () button_return;

void () button_wait;

// function button_wait
// function number 561 begins at statement 15868
/*
 * OP_ADDRESS	28	438	10875
 * OP_STOREP_F	282	10875	0
 * OP_ADDRESS	28	150	10876
 * OP_LOAD_F	28	102	10877
 * OP_LOAD_F	28	418	10878
 * OP_ADD_F	10877	10878	10879
 * OP_STOREP_F	10879	10876	0
 * OP_ADDRESS	28	148	10880
 * OP_STOREP_FNC	10873	10880	0
 * OP_LOAD_ENT	28	181	10881
 * OP_STORE_ENT	10881	351	0
 * OP_CALL0	520	0	0
 * OP_ADDRESS	28	131	10882
 * OP_STOREP_F	214	10882	0
 * OP_DONE	0	0	0
 */

void () button_wait = {

   self.globaldef421 = STATE_TOP;
   self.nextthink = (self.ltime + self.globaldef401);
   self.think = globaldef3420;
   activator = self.enemy;
   SUB_UseTargets ();
   self.globaldef109 = TRUE;

};

void () button_done;

// function button_done
// function number 562 begins at statement 15883
/*
 * OP_ADDRESS	28	438	10884
 * OP_STOREP_F	283	10884	0
 * OP_DONE	0	0	0
 */

void () button_done = {

   self.globaldef421 = STATE_BOTTOM;

};

// function button_return
// function number 563 begins at statement 15886
/*
 * OP_ADDRESS	28	438	10885
 * OP_STOREP_F	285	10885	0
 * OP_LOAD_V	28	439	10886
 * OP_STORE_V	10886	4	0
 * OP_LOAD_F	28	369	10889
 * OP_STORE_V	10889	7	0
 * OP_STORE_V	10883	10	0
 * OP_CALL3	514	0	0
 * OP_ADDRESS	28	131	10890
 * OP_STOREP_F	213	10890	0
 * OP_LOAD_F	28	152	10891
 * OP_IFNOT	10891	3	0
 * OP_ADDRESS	28	163	10892
 * OP_STOREP_F	251	10892	0
 * OP_DONE	0	0	0
 */

void () button_return = {

   self.globaldef421 = STATE_DOWN;
   SUB_CalcMove (self.globaldef422,self.globaldef352,globaldef3422);
   self.globaldef109 = FALSE;
   if ( self.globaldef130 ) {

      self.globaldef141 = DAMAGE_YES;

   }

};

void () button_blocked;

// function button_blocked
// function number 564 begins at statement 15901
/*
 * OP_DONE	0	0	0
 */

void () button_blocked = {


};

void () button_fire;

// function button_fire
// function number 565 begins at statement 15902
/*
 * OP_LOAD_F	28	438	10895
 * OP_EQ_F	10895	284	10896
 * OP_LOAD_F	28	438	10897
 * OP_EQ_F	10897	282	10898
 * OP_OR	10896	10898	10899
 * OP_IFNOT	10899	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	208	10900
 * OP_STORE_V	10900	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	438	10901
 * OP_STOREP_F	284	10901	0
 * OP_LOAD_V	28	443	10902
 * OP_STORE_V	10902	4	0
 * OP_LOAD_F	28	369	10905
 * OP_STORE_V	10905	7	0
 * OP_STORE_V	10874	10	0
 * OP_CALL3	514	0	0
 * OP_DONE	0	0	0
 */

void () button_fire = {

   if ( ((self.globaldef421 == STATE_UP) || (self.globaldef421 == STATE_TOP)) ) {

      return ;

   }
   sound (self,CHAN_VOICE,self.noise,TRUE,ATTN_NORM);
   self.globaldef421 = STATE_UP;
   SUB_CalcMove (self.globaldef426,self.globaldef352,globaldef3421);

};

void () button_use;

// function button_use
// function number 566 begins at statement 15925
/*
 * OP_ADDRESS	28	181	10907
 * OP_STOREP_ENT	351	10907	0
 * OP_LOAD_S	351	129	10908
 * OP_EQ_S	10908	1241	10909
 * OP_IFNOT	10909	4	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1132	0	0
 * OP_CALL0	10894	0	0
 * OP_DONE	0	0	0
 */

void () button_use = {

   self.enemy = activator;
   if ( (activator.classname == globaldef1171) ) {

      globaldef1070 (activator,self);

   }
   globaldef3424 ();

};

void () button_touch;

// function button_touch
// function number 567 begins at statement 15935
/*
 * OP_LOAD_S	29	129	10914
 * OP_NE_S	10914	1236	10915
 * OP_IFNOT	10915	5	0
 * OP_LOAD_S	29	129	10916
 * OP_NE_S	10916	1241	10917
 * OP_IFNOT	10917	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	181	10918
 * OP_STOREP_ENT	29	10918	0
 * OP_LOAD_S	29	129	10919
 * OP_EQ_S	10919	1241	10920
 * OP_IFNOT	10920	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1132	0	0
 * OP_CALL0	10894	0	0
 * OP_DONE	0	0	0
 */

void () button_touch = {

   local vector globaldef3427;

   if ( (other.classname != "player") ) {

      if ( (other.classname != globaldef1171) ) {

         return ;

      }

   }
   self.enemy = other;
   if ( (other.classname == globaldef1171) ) {

      globaldef1070 (other,self);

   }
   globaldef3424 ();

};

void () button_killed;

// function button_killed
// function number 568 begins at statement 15952
/*
 * OP_ADDRESS	28	181	10922
 * OP_STOREP_ENT	352	10922	0
 * OP_ADDRESS	28	152	10923
 * OP_LOAD_F	28	185	10924
 * OP_STOREP_F	10924	10923	0
 * OP_ADDRESS	28	163	10925
 * OP_STOREP_F	250	10925	0
 * OP_LOAD_S	352	129	10926
 * OP_EQ_S	10926	1241	10927
 * OP_IFNOT	10927	4	0
 * OP_STORE_V	352	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1132	0	0
 * OP_CALL0	10894	0	0
 * OP_DONE	0	0	0
 */

void () button_killed = {

   self.enemy = damage_attacker;
   self.globaldef130 = self.globaldef163;
   self.globaldef141 = DAMAGE_NO;
   if ( (damage_attacker.classname == globaldef1171) ) {

      globaldef1070 (damage_attacker,self);

   }
   globaldef3424 ();

};

void () func_button;

// function func_button
// function number 569 begins at statement 15967
/*
 * OP_LOAD_F	28	207	10931
 * OP_EQ_F	10931	213	10932
 * OP_IFNOT	10932	5	0
 * OP_STORE_V	10933	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	10934
 * OP_STOREP_S	10933	10934	0
 * OP_LOAD_F	28	207	10935
 * OP_EQ_F	10935	214	10936
 * OP_IFNOT	10936	5	0
 * OP_STORE_V	10937	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	10938
 * OP_STOREP_S	10937	10938	0
 * OP_LOAD_F	28	207	10939
 * OP_EQ_F	10939	216	10940
 * OP_IFNOT	10940	5	0
 * OP_STORE_V	10941	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	10942
 * OP_STOREP_S	10941	10942	0
 * OP_LOAD_F	28	207	10943
 * OP_EQ_F	10943	228	10944
 * OP_IFNOT	10944	5	0
 * OP_STORE_V	10945	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	10946
 * OP_STOREP_S	10945	10946	0
 * OP_CALL0	2956	0	0
 * OP_ADDRESS	28	103	10947
 * OP_STOREP_F	232	10947	0
 * OP_ADDRESS	28	104	10948
 * OP_STOREP_F	241	10948	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	10949
 * OP_STORE_V	10949	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	149	10950
 * OP_STOREP_FNC	10893	10950	0
 * OP_ADDRESS	28	147	10951
 * OP_STOREP_FNC	10906	10951	0
 * OP_ADDRESS	28	548	10952
 * OP_STOREP_FNC	1001	10952	0
 * OP_LOAD_F	28	152	10953
 * OP_IFNOT	10953	9	0
 * OP_ADDRESS	28	185	10954
 * OP_LOAD_F	28	152	10955
 * OP_STOREP_F	10955	10954	0
 * OP_ADDRESS	28	367	10956
 * OP_STOREP_FNC	10921	10956	0
 * OP_ADDRESS	28	163	10957
 * OP_STOREP_F	251	10957	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	146	10958
 * OP_STOREP_FNC	10910	10958	0
 * OP_LOAD_F	28	369	10959
 * OP_NOT_F	10959	0	10960
 * OP_IFNOT	10960	3	0
 * OP_ADDRESS	28	369	10961
 * OP_STOREP_F	746	10961	0
 * OP_LOAD_F	28	418	10962
 * OP_NOT_F	10962	0	10963
 * OP_IFNOT	10963	3	0
 * OP_ADDRESS	28	418	10964
 * OP_STOREP_F	214	10964	0
 * OP_LOAD_F	28	437	10965
 * OP_NOT_F	10965	0	10966
 * OP_IFNOT	10966	3	0
 * OP_ADDRESS	28	437	10967
 * OP_STOREP_F	229	10967	0
 * OP_ADDRESS	28	438	10968
 * OP_STOREP_F	283	10968	0
 * OP_ADDRESS	28	439	10969
 * OP_LOAD_V	28	105	10972
 * OP_STOREP_V	10972	10969	0
 * OP_ADDRESS	28	443	10975
 * OP_LOAD_V	28	439	10978
 * OP_LOAD_V	28	202	10981
 * OP_LOAD_V	28	202	10984
 * OP_LOAD_V	28	142	10987
 * OP_MUL_V	10984	10987	10990
 * OP_STORE_V	10990	4	0
 * OP_CALL1	488	0	0
 * OP_LOAD_F	28	437	10991
 * OP_SUB_F	1	10991	10992
 * OP_MUL_VF	10981	10992	10993
 * OP_ADD_V	10978	10993	10996
 * OP_STOREP_V	10996	10975	0
 * OP_DONE	0	0	0
 */

void () func_button = {

   local float globaldef3433;
   local float globaldef3434;

   if ( (self.globaldef185 == FALSE) ) {

      globaldef452 (globaldef3435);
      self.noise = globaldef3435;

   }
   if ( (self.globaldef185 == TRUE) ) {

      globaldef452 (globaldef3436);
      self.noise = globaldef3436;

   }
   if ( (self.globaldef185 == FL_SWIM) ) {

      globaldef452 (globaldef3437);
      self.noise = globaldef3437;

   }
   if ( (self.globaldef185 == MOVETYPE_WALK) ) {

      globaldef452 (globaldef3438);
      self.noise = globaldef3438;

   }
   SetMovedir ();
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   setmodel (self,self.model);
   self.globaldef127 = globaldef3423;
   self.use = globaldef3425;
   self.globaldef531 = globaldef939;
   if ( self.globaldef130 ) {

      self.globaldef163 = self.globaldef130;
      self.globaldef350 = globaldef3431;
      self.globaldef141 = DAMAGE_YES;

   } else {

      self.globaldef124 = globaldef3426;

   }
   if ( !self.globaldef352 ) {

      self.globaldef352 = globaldef729;

   }
   if ( !self.globaldef401 ) {

      self.globaldef401 = TRUE;

   }
   if ( !self.globaldef420 ) {

      self.globaldef420 = MOVETYPE_STEP;

   }
   self.globaldef421 = STATE_BOTTOM;
   self.globaldef422 = self.origin;
   self.globaldef426 = (self.globaldef422 + (self.movedir * (globaldef471 ((self.movedir * self.globaldef120)) - self.globaldef420)));

};
