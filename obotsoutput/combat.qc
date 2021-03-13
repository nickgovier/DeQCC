
void () T_MissileTouch;

void () info_player_start;

void (entity globaldef002975, entity globaldef002976) ClientObituary;

void () monster_death_use;

// function CanDamage
// function number 199 begins at statement 3781
/*
 * OP_LOAD_F	3926	103	3928
 * OP_EQ_F	3928	232	3929
 * OP_IFNOT	3929	18	0
 * OP_LOAD_V	3927	105	3930
 * OP_STORE_V	3930	4	0
 * OP_LOAD_V	3926	94	3933
 * OP_LOAD_V	3926	98	3936
 * OP_ADD_V	3933	3936	3939
 * OP_MUL_FV	539	3939	3942
 * OP_STORE_V	3942	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	3945
 * OP_IFNOT	3945	2	0
 * OP_RETURN	214	0	0
 * OP_EQ_E	78	3926	3946
 * OP_IFNOT	3946	2	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_LOAD_V	3927	105	3947
 * OP_STORE_V	3947	4	0
 * OP_LOAD_V	3926	105	3950
 * OP_STORE_V	3950	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	3953
 * OP_IFNOT	3953	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_V	3927	105	3954
 * OP_STORE_V	3954	4	0
 * OP_LOAD_V	3926	105	3957
 * OP_ADD_V	3957	3960	3963
 * OP_STORE_V	3963	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	3966
 * OP_IFNOT	3966	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_V	3927	105	3967
 * OP_STORE_V	3967	4	0
 * OP_LOAD_V	3926	105	3970
 * OP_ADD_V	3970	3973	3976
 * OP_STORE_V	3976	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	3979
 * OP_IFNOT	3979	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_V	3927	105	3980
 * OP_STORE_V	3980	4	0
 * OP_LOAD_V	3926	105	3983
 * OP_ADD_V	3983	3986	3989
 * OP_STORE_V	3989	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	3992
 * OP_IFNOT	3992	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_V	3927	105	3993
 * OP_STORE_V	3993	4	0
 * OP_LOAD_V	3926	105	3996
 * OP_ADD_V	3996	3999	4002
 * OP_STORE_V	4002	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	4005
 * OP_IFNOT	4005	2	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef001749, entity globaldef001750) CanDamage = {

   if ( (globaldef001749.movetype == MOVETYPE_PUSH) ) {

      traceline (globaldef001750.origin,(globaldef000522 * (globaldef001749.absmin + globaldef001749.absmax)),TRUE,self);
      if ( (trace_fraction == TRUE) ) {

         return ( TRUE );

      }
      if ( (trace_ent == globaldef001749) ) {

         return ( TRUE );

      }
      return ( FALSE );

   }
   traceline (globaldef001750.origin,globaldef001749.origin,TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   traceline (globaldef001750.origin,(globaldef001749.origin + globaldef001751),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   traceline (globaldef001750.origin,(globaldef001749.origin + globaldef001752),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   traceline (globaldef001750.origin,(globaldef001749.origin + globaldef001753),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   traceline (globaldef001750.origin,(globaldef001749.origin + globaldef001754),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   return ( FALSE );

};
vector globaldef001751 /* = '15.000 15.000 0.000' */;
vector globaldef001752 /* = '-15.000 -15.000 0.000' */;
vector globaldef001753 /* = '-15.000 15.000 0.000' */;
vector globaldef001754 /* = '15.000 -15.000 0.000' */;

// function Killed
// function number 200 begins at statement 3857
/*
 * OP_STORE_ENT	28	4009	0
 * OP_STORE_ENT	4007	28	0
 * OP_LOAD_F	28	152	4010
 * OP_LT	4010	4011	4012
 * OP_IFNOT	4012	3	0
 * OP_ADDRESS	28	152	4013
 * OP_STOREP_F	4011	4013	0
 * OP_LOAD_F	28	103	4014
 * OP_EQ_F	4014	232	4015
 * OP_LOAD_F	28	103	4016
 * OP_EQ_F	4016	227	4017
 * OP_OR	4015	4017	4018
 * OP_IFNOT	4018	5	0
 * OP_LOAD_FNC	28	367	4019
 * OP_CALL0	4019	0	0
 * OP_STORE_ENT	4009	28	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	181	4020
 * OP_STOREP_ENT	4008	4020	0
 * OP_LOAD_F	28	182	4021
 * OP_BITAND	4021	219	4022
 * OP_IFNOT	4022	6	0
 * OP_ADD_F	42	214	4023
 * OP_STORE_F	4023	42	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	307	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4008	7	0
 * OP_CALL2	3924	0	0
 * OP_LOAD_S	4008	129	4024
 * OP_EQ_S	4024	1241	4025
 * OP_IFNOT	4025	7	0
 * OP_LOAD_F	4008	608	4026
 * OP_STORE_V	4026	4	0
 * OP_LOAD_F	4008	153	4027
 * OP_STORE_V	4027	7	0
 * OP_CALL2	1051	0	0
 * OP_GOTO	12	0	0
 * OP_LOAD_ENT	4008	201	4028
 * OP_LOAD_S	4028	129	4029
 * OP_EQ_S	4029	1241	4030
 * OP_IFNOT	4030	8	0
 * OP_LOAD_ENT	4008	201	4031
 * OP_LOAD_F	4031	608	4032
 * OP_STORE_V	4032	4	0
 * OP_LOAD_ENT	4008	201	4033
 * OP_LOAD_F	4033	153	4034
 * OP_STORE_V	4034	7	0
 * OP_CALL2	1051	0	0
 * OP_LOAD_S	4007	129	4035
 * OP_EQ_S	4035	1241	4036
 * OP_IFNOT	4036	6	0
 * OP_LOAD_F	4007	608	4037
 * OP_STORE_V	4037	4	0
 * OP_LOAD_F	4007	153	4038
 * OP_STORE_V	4038	7	0
 * OP_CALL2	1051	0	0
 * OP_IFNOT	4008	3	0
 * OP_ADDRESS	4008	618	4039
 * OP_STOREP_ENT	28	4039	0
 * OP_IFNOT	28	3	0
 * OP_ADDRESS	28	619	4040
 * OP_STOREP_ENT	4008	4040	0
 * OP_ADDRESS	28	163	4041
 * OP_STOREP_F	250	4041	0
 * OP_ADDRESS	28	146	4042
 * OP_STOREP_FNC	519	4042	0
 * OP_CALL0	3925	0	0
 * OP_LOAD_FNC	28	367	4043
 * OP_CALL0	4043	0	0
 * OP_STORE_ENT	4009	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef001756, entity globaldef001757) Killed = {

   local entity oself;

   oself = self;
   self = globaldef001756;
   if ( (self.health < globaldef001759) ) {

      self.health = globaldef001759;

   }
   if ( ((self.movetype == MOVETYPE_PUSH) || (self.movetype == MOVETYPE_NONE)) ) {

      self.th_die ();
      self = oself;
      return ;

   }
   self.enemy = globaldef001757;
   if ( (self.flags & FL_MONSTER) ) {

      killed_monsters = (killed_monsters + TRUE);
      WriteByte (MSG_ALL,SVC_KILLEDMONSTER);

   }
   ClientObituary (self,globaldef001757);
   if ( (globaldef001757.classname == globaldef001171) ) {

      func002263 (globaldef001757.field000285,globaldef001757.frags);

   } else {

      if ( (globaldef001757.owner.classname == globaldef001171) ) {

         func002263 (globaldef001757.owner.field000285,globaldef001757.owner.frags);

      }

   }
   if ( (globaldef001756.classname == globaldef001171) ) {

      func002263 (globaldef001756.field000285,globaldef001756.frags);

   }
   if ( globaldef001757 ) {

      globaldef001757.field000295 = self;

   }
   if ( self ) {

      self.field000296 = globaldef001757;

   }
   self.takedamage = DAMAGE_NO;
   self.touch = SUB_Null;
   monster_death_use ();
   self.th_die ();
   self = oself;

};

// function T_Damage
// function number 201 begins at statement 3930
/*
 * OP_IFNOT	816	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	4044	163	4054
 * OP_NOT_F	4054	0	4055
 * OP_IFNOT	4055	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_ENT	4046	352	0
 * OP_LOAD_F	4046	382	4056
 * OP_GT	4056	31	4057
 * OP_IFNOT	4057	8	0
 * OP_EQ_F	35	229	4058
 * OP_IFNOT	4058	4	0
 * OP_MUL_F	4047	217	4059
 * OP_STORE_F	4059	4047	0
 * OP_GOTO	3	0	0
 * OP_MUL_F	4047	229	4060
 * OP_STORE_F	4060	4047	0
 * OP_LOAD_F	4044	187	4061
 * OP_MUL_F	4061	4047	4062
 * OP_STORE_V	4062	4	0
 * OP_CALL1	485	0	0
 * OP_STORE_F	1	4052	0
 * OP_LOAD_F	4044	188	4063
 * OP_GE	4052	4063	4064
 * OP_IFNOT	4064	13	0
 * OP_LOAD_F	4044	188	4065
 * OP_STORE_F	4065	4052	0
 * OP_ADDRESS	4044	187	4066
 * OP_STOREP_F	213	4066	0
 * OP_ADDRESS	4044	162	4067
 * OP_LOAD_F	4044	162	4068
 * OP_LOAD_F	4044	162	4069
 * OP_BITOR	266	267	4070
 * OP_BITOR	4070	268	4071
 * OP_BITAND	4069	4071	4072
 * OP_SUB_F	4068	4072	4073
 * OP_STOREP_F	4073	4067	0
 * OP_ADDRESS	4044	188	4074
 * OP_LOAD_F	4044	188	4075
 * OP_SUB_F	4075	4052	4076
 * OP_STOREP_F	4076	4074	0
 * OP_SUB_F	4047	4052	4077
 * OP_STORE_V	4077	4	0
 * OP_CALL1	485	0	0
 * OP_STORE_F	1	4053	0
 * OP_LOAD_F	4044	182	4078
 * OP_BITAND	4078	217	4079
 * OP_IFNOT	4079	11	0
 * OP_ADDRESS	4044	198	4080
 * OP_LOAD_F	4044	198	4081
 * OP_ADD_F	4081	4053	4082
 * OP_STOREP_F	4082	4080	0
 * OP_ADDRESS	4044	199	4083
 * OP_LOAD_F	4044	199	4084
 * OP_ADD_F	4084	4052	4085
 * OP_STOREP_F	4085	4083	0
 * OP_ADDRESS	4044	200	4086
 * OP_STOREP_ENT	4045	4086	0
 * OP_NE_E	4045	30	4087
 * OP_LOAD_F	4044	103	4088
 * OP_EQ_F	4088	228	4089
 * OP_AND	4087	4089	4090
 * OP_IFNOT	4090	17	0
 * OP_LOAD_V	4044	105	4091
 * OP_LOAD_V	4045	94	4094
 * OP_LOAD_V	4045	98	4097
 * OP_ADD_V	4094	4097	4100
 * OP_MUL_VF	4100	539	4103
 * OP_SUB_V	4091	4103	4106
 * OP_STORE_V	4106	4048	0
 * OP_STORE_V	4048	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	4048	0
 * OP_ADDRESS	4044	113	4109
 * OP_LOAD_V	4044	113	4112
 * OP_MUL_VF	4048	4047	4115
 * OP_MUL_VF	4115	217	4118
 * OP_ADD_V	4112	4118	4121
 * OP_STOREP_V	4121	4109	0
 * OP_NE_E	4045	30	4124
 * OP_LOAD_S	4044	129	4125
 * OP_EQ_S	4125	1241	4126
 * OP_AND	4124	4126	4127
 * OP_IFNOT	4127	28	0
 * OP_LOAD_V	4044	105	4128
 * OP_LOAD_V	4045	94	4131
 * OP_LOAD_V	4045	98	4134
 * OP_ADD_V	4131	4134	4137
 * OP_MUL_VF	4137	539	4140
 * OP_SUB_V	4128	4140	4143
 * OP_STORE_V	4143	4048	0
 * OP_STORE_V	4048	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	4048	0
 * OP_ADDRESS	4044	113	4146
 * OP_LOAD_V	4044	113	4149
 * OP_MUL_VF	4048	4047	4152
 * OP_MUL_VF	4152	217	4155
 * OP_ADD_V	4149	4155	4158
 * OP_STOREP_V	4158	4146	0
 * OP_LOAD_F	4044	601	4161
 * OP_GT	4161	31	4162
 * OP_IFNOT	4162	9	0
 * OP_ADDRESS	4044	113	4163
 * OP_LOAD_V	4044	113	4166
 * OP_LOAD_V	4044	602	4169
 * OP_ADD_V	4166	4169	4172
 * OP_STOREP_V	4172	4163	0
 * OP_ADDRESS	4044	601	4175
 * OP_SUB_F	31	214	4176
 * OP_STOREP_F	4176	4175	0
 * OP_LOAD_F	4044	182	4177
 * OP_BITAND	4177	220	4178
 * OP_IFNOT	4178	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	4044	380	4179
 * OP_GE	4179	31	4180
 * OP_IFNOT	4180	14	0
 * OP_LOAD_F	28	385	4181
 * OP_LT	4181	31	4182
 * OP_IFNOT	4182	10	0
 * OP_STORE_V	4044	4	0
 * OP_STORE_V	328	7	0
 * OP_STORE_V	4183	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	385	4184
 * OP_ADD_F	31	216	4185
 * OP_STOREP_F	4185	4184	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	4044	152	4186
 * OP_LOAD_F	4044	152	4187
 * OP_SUB_F	4187	4053	4188
 * OP_STOREP_F	4188	4186	0
 * OP_LOAD_F	4044	152	4189
 * OP_LE	4189	213	4190
 * OP_IFNOT	4190	5	0
 * OP_STORE_V	4044	4	0
 * OP_STORE_V	4046	7	0
 * OP_CALL2	4006	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_ENT	28	4051	0
 * OP_STORE_ENT	4044	28	0
 * OP_LOAD_F	28	182	4191
 * OP_BITAND	4191	219	4192
 * OP_NE_E	4046	30	4193
 * OP_AND	4192	4193	4194
 * OP_IFNOT	4194	23	0
 * OP_NE_E	28	4046	4195
 * OP_LOAD_ENT	28	181	4196
 * OP_NE_E	4046	4196	4197
 * OP_AND	4195	4197	4198
 * OP_IFNOT	4198	18	0
 * OP_LOAD_S	28	129	4199
 * OP_LOAD_S	4046	129	4200
 * OP_NE_S	4199	4200	4201
 * OP_LOAD_S	28	129	4202
 * OP_EQ_S	4202	3704	4203
 * OP_OR	4201	4203	4204
 * OP_IFNOT	4204	11	0
 * OP_LOAD_ENT	28	181	4205
 * OP_LOAD_S	4205	129	4206
 * OP_EQ_S	4206	1236	4207
 * OP_IFNOT	4207	4	0
 * OP_ADDRESS	28	368	4208
 * OP_LOAD_ENT	28	181	4209
 * OP_STOREP_ENT	4209	4208	0
 * OP_ADDRESS	28	181	4210
 * OP_STOREP_ENT	4046	4210	0
 * OP_CALL0	3711	0	0
 * OP_LOAD_FNC	28	366	4211
 * OP_IFNOT	4211	10	0
 * OP_LOAD_FNC	28	366	4212
 * OP_STORE_V	4046	4	0
 * OP_STORE_V	4053	7	0
 * OP_CALL2	4212	0	0
 * OP_EQ_F	354	228	4213
 * OP_IFNOT	4213	4	0
 * OP_ADDRESS	28	379	4214
 * OP_ADD_F	31	230	4215
 * OP_STOREP_F	4215	4214	0
 * OP_STORE_ENT	4051	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef001760, entity globaldef001761, entity globaldef001762, float globaldef001763) T_Damage = {

   local vector dir;
   local entity oldself;
   local float save;
   local float take;

   if ( globaldef000799 ) {

      return ;

   }
   if ( !globaldef001760.takedamage ) {

      return ;

   }
   damage_attacker = globaldef001762;
   if ( (globaldef001762.super_damage_finished > time) ) {

      if ( (deathmatch == MOVETYPE_STEP) ) {

         globaldef001763 = (globaldef001763 * FL_CLIENT);

      } else {

         globaldef001763 = (globaldef001763 * MOVETYPE_STEP);

      }

   }
   save = ceil ((globaldef001760.armortype * globaldef001763));
   if ( (save >= globaldef001760.armorvalue) ) {

      save = globaldef001760.armorvalue;
      globaldef001760.armortype = FALSE;
      globaldef001760.items = (globaldef001760.items - (globaldef001760.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3)));

   }
   globaldef001760.armorvalue = (globaldef001760.armorvalue - save);
   take = ceil ((globaldef001763 - save));
   if ( (globaldef001760.flags & FL_CLIENT) ) {

      globaldef001760.dmg_take = (globaldef001760.dmg_take + take);
      globaldef001760.dmg_save = (globaldef001760.dmg_save + save);
      globaldef001760.dmg_inflictor = globaldef001761;

   }
   if ( ((globaldef001761 != world) && (globaldef001760.movetype == MOVETYPE_WALK)) ) {

      dir = (globaldef001760.origin - ((globaldef001761.absmin + globaldef001761.absmax) * globaldef000522));
      dir = normalize (dir);
      globaldef001760.velocity = (globaldef001760.velocity + ((dir * globaldef001763) * FL_CLIENT));

   }
   if ( ((globaldef001761 != world) && (globaldef001760.classname == globaldef001171)) ) {

      dir = (globaldef001760.origin - ((globaldef001761.absmin + globaldef001761.absmax) * globaldef000522));
      dir = normalize (dir);
      globaldef001760.velocity = (globaldef001760.velocity + ((dir * globaldef001763) * FL_CLIENT));
      if ( (globaldef001760.field000278 > time) ) {

         globaldef001760.velocity = (globaldef001760.velocity + globaldef001760.field000279);
         globaldef001760.field000278 = (time - TRUE);

      }

   }
   if ( (globaldef001760.flags & FL_GODMODE) ) {

      return ;

   }
   if ( (globaldef001760.invincible_finished >= time) ) {

      if ( (self.invincible_sound < time) ) {

         sound (globaldef001760,CHAN_ITEM,globaldef001771,TRUE,ATTN_NORM);
         self.invincible_sound = (time + FL_SWIM);

      }
      return ;

   }
   globaldef001760.health = (globaldef001760.health - take);
   if ( (globaldef001760.health <= FALSE) ) {

      Killed (globaldef001760,globaldef001762);
      return ;

   }
   oldself = self;
   self = globaldef001760;
   if ( ((self.flags & FL_MONSTER) && (globaldef001762 != world)) ) {

      if ( ((self != globaldef001762) && (globaldef001762 != self.enemy)) ) {

         if ( ((self.classname != globaldef001762.classname) || (self.classname == globaldef001680)) ) {

            if ( (self.enemy.classname == globaldef001170) ) {

               self.oldenemy = self.enemy;

            }
            self.enemy = globaldef001762;
            FoundTarget ();

         }

      }

   }
   if ( self.th_pain ) {

      self.th_pain (globaldef001762,take);
      if ( (skill == MOVETYPE_WALK) ) {

         self.pain_finished = (time + MOVETYPE_FLY);

      }

   }
   self = oldself;

};
string globaldef001771 /* = "items/protect3.wav" */;

// function T_RadiusDamage
// function number 202 begins at statement 4114
/*
 * OP_LOAD_V	4217	105	4226
 * OP_STORE_V	4226	4	0
 * OP_ADD_F	4219	746	4229
 * OP_STORE_V	4229	7	0
 * OP_CALL2	471	0	0
 * OP_STORE_ENT	1	4222	0
 * OP_IFNOT	4222	51	0
 * OP_NE_E	4222	4220	4230
 * OP_IFNOT	4230	46	0
 * OP_LOAD_F	4222	163	4231
 * OP_IFNOT	4231	44	0
 * OP_LOAD_V	4222	105	4232
 * OP_LOAD_V	4222	134	4235
 * OP_LOAD_V	4222	138	4238
 * OP_ADD_V	4235	4238	4241
 * OP_MUL_VF	4241	539	4244
 * OP_ADD_V	4232	4244	4247
 * OP_STORE_V	4247	4223	0
 * OP_LOAD_V	4217	105	4250
 * OP_SUB_V	4250	4223	4253
 * OP_STORE_V	4253	4	0
 * OP_CALL1	462	0	0
 * OP_MUL_F	539	1	4256
 * OP_STORE_F	4256	4221	0
 * OP_LT	4221	213	4257
 * OP_IFNOT	4257	2	0
 * OP_STORE_F	213	4221	0
 * OP_SUB_F	4219	4221	4258
 * OP_STORE_F	4258	4221	0
 * OP_EQ_E	4222	4218	4259
 * OP_IFNOT	4259	3	0
 * OP_MUL_F	4221	539	4260
 * OP_STORE_F	4260	4221	0
 * OP_GT	4221	213	4261
 * OP_IFNOT	4261	20	0
 * OP_STORE_V	4222	4	0
 * OP_STORE_V	4217	7	0
 * OP_CALL2	524	0	0
 * OP_IFNOT	1	16	0
 * OP_LOAD_S	4222	129	4262
 * OP_EQ_S	4262	3661	4263
 * OP_IFNOT	4263	8	0
 * OP_STORE_V	4222	4	0
 * OP_STORE_V	4217	7	0
 * OP_STORE_V	4218	10	0
 * OP_MUL_F	4221	539	4264
 * OP_STORE_V	4264	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	6	0	0
 * OP_STORE_V	4222	4	0
 * OP_STORE_V	4217	7	0
 * OP_STORE_V	4218	10	0
 * OP_STORE_V	4221	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_ENT	4222	164	4265
 * OP_STORE_ENT	4265	4222	0
 * OP_GOTO	-50	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef001773, entity globaldef001774, float globaldef001775, entity globaldef001776) T_RadiusDamage = {

   local float points;
   local entity head;
   local vector org;

   head = findradius (globaldef001773.origin,(globaldef001775 + globaldef000729));
   while ( head ) {

      if ( (head != globaldef001776) ) {

         if ( head.takedamage ) {

            org = (head.origin + ((head.mins + head.maxs) * globaldef000522));
            points = (globaldef000522 * vlen ((globaldef001773.origin - org)));
            if ( (points < FALSE) ) {

               points = FALSE;

            }
            points = (globaldef001775 - points);
            if ( (head == globaldef001774) ) {

               points = (points * globaldef000522);

            }
            if ( (points > FALSE) ) {

               if ( CanDamage (head,globaldef001773) ) {

                  if ( (head.classname == globaldef001659) ) {

                     T_Damage (head,globaldef001773,globaldef001774,(points * globaldef000522));

                  } else {

                     T_Damage (head,globaldef001773,globaldef001774,points);

                  }

               }

            }

         }

      }
      head = head.chain;

   }

};

// function T_BeamDamage
// function number 203 begins at statement 4172
/*
 * OP_LOAD_V	4267	105	4271
 * OP_STORE_V	4271	4	0
 * OP_ADD_F	4268	746	4274
 * OP_STORE_V	4274	7	0
 * OP_CALL2	471	0	0
 * OP_STORE_ENT	1	4270	0
 * OP_IFNOT	4270	43	0
 * OP_LOAD_F	4270	163	4275
 * OP_IFNOT	4275	38	0
 * OP_LOAD_V	4267	105	4276
 * OP_LOAD_V	4270	105	4279
 * OP_SUB_V	4276	4279	4282
 * OP_STORE_V	4282	4	0
 * OP_CALL1	462	0	0
 * OP_MUL_F	539	1	4285
 * OP_STORE_F	4285	4269	0
 * OP_LT	4269	213	4286
 * OP_IFNOT	4286	2	0
 * OP_STORE_F	213	4269	0
 * OP_SUB_F	4268	4269	4287
 * OP_STORE_F	4287	4269	0
 * OP_EQ_E	4270	4267	4288
 * OP_IFNOT	4288	3	0
 * OP_MUL_F	4269	539	4289
 * OP_STORE_F	4289	4269	0
 * OP_GT	4269	213	4290
 * OP_IFNOT	4290	20	0
 * OP_STORE_V	4270	4	0
 * OP_STORE_V	4267	7	0
 * OP_CALL2	524	0	0
 * OP_IFNOT	1	16	0
 * OP_LOAD_S	4270	129	4291
 * OP_EQ_S	4291	3661	4292
 * OP_IFNOT	4292	8	0
 * OP_STORE_V	4270	4	0
 * OP_STORE_V	4267	7	0
 * OP_STORE_V	4267	10	0
 * OP_MUL_F	4269	539	4293
 * OP_STORE_V	4293	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	6	0	0
 * OP_STORE_V	4270	4	0
 * OP_STORE_V	4267	7	0
 * OP_STORE_V	4267	10	0
 * OP_STORE_V	4269	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_ENT	4270	164	4294
 * OP_STORE_ENT	4294	4270	0
 * OP_GOTO	-42	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef001784, float globaldef001785) T_BeamDamage = {

   local float points;
   local entity head;

   head = findradius (globaldef001784.origin,(globaldef001785 + globaldef000729));
   while ( head ) {

      if ( head.takedamage ) {

         points = (globaldef000522 * vlen ((globaldef001784.origin - head.origin)));
         if ( (points < FALSE) ) {

            points = FALSE;

         }
         points = (globaldef001785 - points);
         if ( (head == globaldef001784) ) {

            points = (points * globaldef000522);

         }
         if ( (points > FALSE) ) {

            if ( CanDamage (head,globaldef001784) ) {

               if ( (head.classname == globaldef001659) ) {

                  T_Damage (head,globaldef001784,globaldef001784,(points * globaldef000522));

               } else {

                  T_Damage (head,globaldef001784,globaldef001784,points);

               }

            }

         }

      }
      head = head.chain;

   }

};
