
// function SUB_Null
// function number 149 begins at statement 2438
/*
 * OP_DONE	0	0	0
 */

void () SUB_Null = {


};

// function SUB_Remove
// function number 150 begins at statement 2439
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () SUB_Remove = {

   remove (self);

};

void () SetMovedir;

// function SetMovedir
// function number 151 begins at statement 2442
/*
 * OP_LOAD_V	28	117	2957
 * OP_EQ_V	2957	2960	2963
 * OP_IFNOT	2963	4	0
 * OP_ADDRESS	28	202	2964
 * OP_STOREP_V	2967	2964	0
 * OP_GOTO	12	0	0
 * OP_LOAD_V	28	117	2970
 * OP_EQ_V	2970	2973	2976
 * OP_IFNOT	2976	4	0
 * OP_ADDRESS	28	202	2977
 * OP_STOREP_V	2980	2977	0
 * OP_GOTO	6	0	0
 * OP_LOAD_V	28	117	2983
 * OP_STORE_V	2983	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	202	2986
 * OP_STOREP_V	59	2986	0
 * OP_ADDRESS	28	117	2989
 * OP_STOREP_V	286	2989	0
 * OP_DONE	0	0	0
 */

void () SetMovedir = {

   if ( (self.angles == globaldef1461_off2960) ) {

      self.movedir = globaldef1462_off2967;

   } else {

      if ( (self.angles == globaldef1463_off2973) ) {

         self.movedir = globaldef1464_off2980;

      } else {

         makevectors (self.angles);
         self.movedir = v_forward;

      }

   }
   self.angles = VEC_ORIGIN;

};
vector globaldef1461_off2960 /* = '0.000 -1.000 0.000' */;
vector globaldef1462_off2967 /* = '0.000 0.000 1.000' */;
vector globaldef1463_off2973 /* = '0.000 -2.000 0.000' */;
vector globaldef1464_off2980 /* = '0.000 0.000 -1.000' */;

void () InitTrigger;

// function InitTrigger
// function number 152 begins at statement 2462
/*
 * OP_LOAD_V	28	117	2993
 * OP_NE_V	2993	286	2996
 * OP_IFNOT	2996	2	0
 * OP_CALL0	2956	0	0
 * OP_ADDRESS	28	104	2997
 * OP_STOREP_F	238	2997	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	2998
 * OP_STORE_V	2998	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	103	2999
 * OP_STOREP_F	227	2999	0
 * OP_ADDRESS	28	93	3000
 * OP_STOREP_F	213	3000	0
 * OP_ADDRESS	28	130	3001
 * OP_STOREP_S	3002	3001	0
 * OP_DONE	0	0	0
 */

void () InitTrigger = {

   if ( (self.angles != VEC_ORIGIN) ) {

      globaldef1460_off2956 ();

   }
   self.globaldef82_off104 = SOLID_TRIGGER;
   globaldef437_off454 (self,self.globaldef108_off130);
   self.globaldef81_off103 = MOVETYPE_NONE;
   self.globaldef71_off93 = FALSE;
   self.globaldef108_off130 = globaldef1466_off3002;

};
string globaldef1466_off3002 /* = "" */;

// function SUB_CalcMoveEnt
// function number 153 begins at statement 2479
/*
 * OP_STORE_ENT	28	3009	0
 * OP_STORE_ENT	3003	28	0
 * OP_STORE_V	3004	4	0
 * OP_STORE_V	3007	7	0
 * OP_STORE_V	3008	10	0
 * OP_CALL3	514	0	0
 * OP_STORE_ENT	3009	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1467_off3003, vector globaldef1468_off3004, float globaldef1472_off3007, void() globaldef1473_off3008) SUB_CalcMoveEnt = {

   local entity globaldef1474_off3009;

   globaldef1474_off3009 = self;
   self = globaldef1467_off3003;
   globaldef497_off514 (globaldef1468_off3004,globaldef1472_off3007,globaldef1473_off3008);
   self = globaldef1474_off3009;

};

// function SUB_CalcMove
// function number 154 begins at statement 2487
/*
 * OP_NOT_F	3013	0	3020
 * OP_IFNOT	3020	3	0
 * OP_STORE_V	3021	4	0
 * OP_CALL1	461	0	0
 * OP_ADDRESS	28	427	3022
 * OP_STOREP_FNC	3014	3022	0
 * OP_ADDRESS	28	428	3023
 * OP_STOREP_V	3010	3023	0
 * OP_ADDRESS	28	148	3026
 * OP_STOREP_FNC	517	3026	0
 * OP_LOAD_V	28	105	3027
 * OP_EQ_V	3010	3027	3030
 * OP_IFNOT	3030	8	0
 * OP_ADDRESS	28	113	3031
 * OP_STOREP_V	286	3031	0
 * OP_ADDRESS	28	150	3034
 * OP_LOAD_F	28	102	3035
 * OP_ADD_F	3035	3036	3037
 * OP_STOREP_F	3037	3034	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	3038
 * OP_SUB_V	3010	3038	3041
 * OP_STORE_V	3041	3015	0
 * OP_STORE_V	3015	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	3018	0
 * OP_DIV_F	3018	3013	3044
 * OP_STORE_F	3044	3019	0
 * OP_LT	3019	3036	3045
 * OP_IFNOT	3045	8	0
 * OP_ADDRESS	28	113	3046
 * OP_STOREP_V	286	3046	0
 * OP_ADDRESS	28	150	3049
 * OP_LOAD_F	28	102	3050
 * OP_ADD_F	3050	3036	3051
 * OP_STOREP_F	3051	3049	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	150	3052
 * OP_LOAD_F	28	102	3053
 * OP_ADD_F	3053	3019	3054
 * OP_STOREP_F	3054	3052	0
 * OP_ADDRESS	28	113	3055
 * OP_DIV_F	214	3019	3058
 * OP_MUL_VF	3015	3058	3059
 * OP_STOREP_V	3059	3055	0
 * OP_DONE	0	0	0
 */

void (vector globaldef1475_off3010, float globaldef1479_off3013, void() globaldef1480_off3014) SUB_CalcMove = {

   local vector globaldef1481_off3015;
   local float globaldef1485_off3018;
   local float globaldef1486_off3019;

   if ( !globaldef1479_off3013 ) {

      globaldef444_off461 (globaldef1487_off3021);

   }
   self.globaldef410_off427 = globaldef1480_off3014;
   self.globaldef411_off428 = globaldef1475_off3010;
   self.globaldef126_off148 = globaldef500_off517;
   if ( (globaldef1475_off3010 == self.globaldef83_off105) ) {

      self.globaldef91_off113 = VEC_ORIGIN;
      self.globaldef128_off150 = (self.globaldef80_off102 + globaldef1488_off3036);
      return ;

   }
   globaldef1481_off3015 = (globaldef1475_off3010 - self.globaldef83_off105);
   globaldef1485_off3018 = globaldef445_off462 (globaldef1481_off3015);
   globaldef1486_off3019 = (globaldef1485_off3018 / globaldef1479_off3013);
   if ( (globaldef1486_off3019 < globaldef1488_off3036) ) {

      self.globaldef91_off113 = VEC_ORIGIN;
      self.globaldef128_off150 = (self.globaldef80_off102 + globaldef1488_off3036);
      return ;

   }
   self.globaldef128_off150 = (self.globaldef80_off102 + globaldef1486_off3019);
   self.globaldef91_off113 = (globaldef1481_off3015 * (TRUE / globaldef1486_off3019));

};
float globaldef1488_off3036 /* = 0.100 */;

// function SUB_CalcMoveDone
// function number 155 begins at statement 2533
/*
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	428	3062
 * OP_STORE_V	3062	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	113	3065
 * OP_STOREP_V	286	3065	0
 * OP_ADDRESS	28	150	3068
 * OP_STOREP_F	276	3068	0
 * OP_LOAD_FNC	28	427	3069
 * OP_IFNOT	3069	3	0
 * OP_LOAD_FNC	28	427	3070
 * OP_CALL0	3070	0	0
 * OP_DONE	0	0	0
 */

void () SUB_CalcMoveDone = {

   globaldef436_off453 (self,self.globaldef411_off428);
   self.globaldef91_off113 = VEC_ORIGIN;
   self.globaldef128_off150 = CONTENT_EMPTY;
   if ( self.globaldef410_off427 ) {

      self.globaldef410_off427 ();

   }

};

void (entity globaldef1490_off3072, vector globaldef1491_off3073, float globaldef1495_off3076, void() globaldef1496_off3077) SUB_CalcAngleMoveEnt;

// function SUB_CalcAngleMoveEnt
// function number 156 begins at statement 2546
/*
 * OP_STORE_ENT	28	3078	0
 * OP_STORE_ENT	3072	28	0
 * OP_STORE_V	3073	4	0
 * OP_STORE_V	3076	7	0
 * OP_STORE_V	3077	10	0
 * OP_CALL3	516	0	0
 * OP_STORE_ENT	3078	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1490_off3072, vector globaldef1491_off3073, float globaldef1495_off3076, void() globaldef1496_off3077) SUB_CalcAngleMoveEnt = {

   local entity globaldef1497_off3078;

   globaldef1497_off3078 = self;
   self = globaldef1490_off3072;
   globaldef499_off516 (globaldef1491_off3073,globaldef1495_off3076,globaldef1496_off3077);
   self = globaldef1497_off3078;

};

// function SUB_CalcAngleMove
// function number 157 begins at statement 2554
/*
 * OP_NOT_F	3082	0	3089
 * OP_IFNOT	3089	3	0
 * OP_STORE_V	3021	4	0
 * OP_CALL1	461	0	0
 * OP_LOAD_V	28	117	3090
 * OP_SUB_V	3079	3090	3093
 * OP_STORE_V	3093	3084	0
 * OP_STORE_V	3084	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	3087	0
 * OP_DIV_F	3087	3082	3096
 * OP_STORE_F	3096	3088	0
 * OP_ADDRESS	28	150	3097
 * OP_LOAD_F	28	102	3098
 * OP_ADD_F	3098	3088	3099
 * OP_STOREP_F	3099	3097	0
 * OP_ADDRESS	28	121	3100
 * OP_DIV_F	214	3088	3103
 * OP_MUL_VF	3084	3103	3104
 * OP_STOREP_V	3104	3100	0
 * OP_ADDRESS	28	427	3107
 * OP_STOREP_FNC	3083	3107	0
 * OP_ADDRESS	28	432	3108
 * OP_STOREP_V	3079	3108	0
 * OP_ADDRESS	28	148	3111
 * OP_STOREP_FNC	518	3111	0
 * OP_DONE	0	0	0
 */

void (vector globaldef1498_off3079, float globaldef1502_off3082, void() globaldef1503_off3083) SUB_CalcAngleMove = {

   local vector globaldef1504_off3084;
   local float globaldef1508_off3087;
   local float globaldef1509_off3088;

   if ( !globaldef1502_off3082 ) {

      globaldef444_off461 (globaldef1487_off3021);

   }
   globaldef1504_off3084 = (globaldef1498_off3079 - self.angles);
   globaldef1508_off3087 = globaldef445_off462 (globaldef1504_off3084);
   globaldef1509_off3088 = (globaldef1508_off3087 / globaldef1502_off3082);
   self.globaldef128_off150 = (self.globaldef80_off102 + globaldef1509_off3088);
   self.globaldef99_off121 = (globaldef1504_off3084 * (TRUE / globaldef1509_off3088));
   self.globaldef410_off427 = globaldef1503_off3083;
   self.globaldef415_off432 = globaldef1498_off3079;
   self.globaldef126_off148 = globaldef501_off518;

};

// function SUB_CalcAngleMoveDone
// function number 158 begins at statement 2581
/*
 * OP_ADDRESS	28	117	3112
 * OP_LOAD_V	28	432	3115
 * OP_STOREP_V	3115	3112	0
 * OP_ADDRESS	28	121	3118
 * OP_STOREP_V	286	3118	0
 * OP_ADDRESS	28	150	3121
 * OP_STOREP_F	276	3121	0
 * OP_LOAD_FNC	28	427	3122
 * OP_IFNOT	3122	3	0
 * OP_LOAD_FNC	28	427	3123
 * OP_CALL0	3123	0	0
 * OP_DONE	0	0	0
 */

void () SUB_CalcAngleMoveDone = {

   self.angles = self.globaldef415_off432;
   self.globaldef99_off121 = VEC_ORIGIN;
   self.globaldef128_off150 = CONTENT_EMPTY;
   if ( self.globaldef410_off427 ) {

      self.globaldef410_off427 ();

   }

};

void () DelayThink;

// function DelayThink
// function number 159 begins at statement 2593
/*
 * OP_LOAD_ENT	28	181	3125
 * OP_STORE_ENT	3125	351	0
 * OP_CALL0	520	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () DelayThink = {

   activator = self.globaldef159_off181;
   globaldef503_off520 ();
   remove (self);

};

// function SUB_UseTargets
// function number 160 begins at statement 2599
/*
 * OP_LOAD_F	28	419	3130
 * OP_IFNOT	3130	23	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	3126	0
 * OP_ADDRESS	3126	129	3131
 * OP_STOREP_S	3132	3131	0
 * OP_ADDRESS	3126	150	3133
 * OP_LOAD_F	28	419	3134
 * OP_ADD_F	31	3134	3135
 * OP_STOREP_F	3135	3133	0
 * OP_ADDRESS	3126	148	3136
 * OP_STOREP_FNC	3124	3136	0
 * OP_ADDRESS	3126	181	3137
 * OP_STOREP_ENT	351	3137	0
 * OP_ADDRESS	3126	206	3138
 * OP_LOAD_S	28	206	3139
 * OP_STOREP_S	3139	3138	0
 * OP_ADDRESS	3126	358	3140
 * OP_LOAD_S	28	358	3141
 * OP_STOREP_S	3141	3140	0
 * OP_ADDRESS	3126	196	3142
 * OP_LOAD_S	28	196	3143
 * OP_STOREP_S	3143	3142	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	351	129	3144
 * OP_EQ_S	3144	1236	3145
 * OP_LOAD_S	28	206	3146
 * OP_NE_S	3146	3002	3147
 * OP_AND	3145	3147	3148
 * OP_IFNOT	3148	14	0
 * OP_STORE_V	351	4	0
 * OP_LOAD_S	28	206	3149
 * OP_STORE_V	3149	7	0
 * OP_CALL2	852	0	0
 * OP_LOAD_S	28	208	3150
 * OP_NOT_S	3150	0	3151
 * OP_IFNOT	3151	7	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3152	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_S	28	358	3153
 * OP_IFNOT	3153	14	0
 * OP_STORE_ENT	30	3126	0
 * OP_STORE_V	3126	4	0
 * OP_STORE_V	197	7	0
 * OP_LOAD_S	28	358	3154
 * OP_STORE_V	3154	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	3126	0
 * OP_NOT_ENT	3126	0	3155
 * OP_IFNOT	3155	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	3126	4	0
 * OP_CALL1	465	0	0
 * OP_IF	214	-11	0
 * OP_LOAD_S	28	196	3156
 * OP_IFNOT	3156	27	0
 * OP_STORE_ENT	351	3129	0
 * OP_STORE_ENT	30	3126	0
 * OP_STORE_V	3126	4	0
 * OP_STORE_V	197	7	0
 * OP_LOAD_S	28	196	3157
 * OP_STORE_V	3157	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	3126	0
 * OP_NOT_ENT	3126	0	3158
 * OP_IFNOT	3158	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_ENT	28	3127	0
 * OP_STORE_ENT	29	3128	0
 * OP_STORE_ENT	3126	28	0
 * OP_STORE_ENT	3127	29	0
 * OP_LOAD_FNC	28	147	3159
 * OP_NE_FNC	3159	519	3160
 * OP_IFNOT	3160	5	0
 * OP_LOAD_FNC	28	147	3161
 * OP_IFNOT	3161	3	0
 * OP_LOAD_FNC	28	147	3162
 * OP_CALL0	3162	0	0
 * OP_STORE_ENT	3127	28	0
 * OP_STORE_ENT	3128	29	0
 * OP_STORE_ENT	3129	351	0
 * OP_IF	214	-23	0
 * OP_DONE	0	0	0
 */

void () SUB_UseTargets = {

   local entity globaldef1511_off3126;
   local entity globaldef1512_off3127;
   local entity globaldef1513_off3128;
   local entity globaldef1514_off3129;

   if ( self.globaldef402_off419 ) {

      globaldef1511_off3126 = globaldef447_off464 ();
      globaldef1511_off3126.globaldef107_off129 = globaldef1515_off3132;
      globaldef1511_off3126.globaldef128_off150 = (time + self.globaldef402_off419);
      globaldef1511_off3126.globaldef126_off148 = globaldef1510_off3124;
      globaldef1511_off3126.globaldef159_off181 = activator;
      globaldef1511_off3126.globaldef184_off206 = self.globaldef184_off206;
      globaldef1511_off3126.globaldef341_off358 = self.globaldef341_off358;
      globaldef1511_off3126.globaldef174_off196 = self.globaldef174_off196;
      return ;

   }
   if ( ((activator.globaldef107_off129 == globaldef1170_off1236) && (self.globaldef184_off206 != globaldef1466_off3002)) ) {

      globaldef832_off852 (activator,self.globaldef184_off206);
      if ( !self.globaldef186_off208 ) {

         globaldef441_off458 (activator,CHAN_VOICE,globaldef1516_off3152,TRUE,ATTN_NORM);

      }

   }
   if ( self.globaldef341_off358 ) {

      globaldef1511_off3126 = world;
      do {

         globaldef1511_off3126 = globaldef451_off468 (globaldef1511_off3126,globaldef175_off197,self.globaldef341_off358);
         if ( !globaldef1511_off3126 ) {

            return ;

         }
         remove (globaldef1511_off3126);

      } while ( TRUE );

   }
   if ( self.globaldef174_off196 ) {

      globaldef1514_off3129 = activator;
      globaldef1511_off3126 = world;
      do {

         globaldef1511_off3126 = globaldef451_off468 (globaldef1511_off3126,globaldef175_off197,self.globaldef174_off196);
         if ( !globaldef1511_off3126 ) {

            return ;

         }
         globaldef1512_off3127 = self;
         globaldef1513_off3128 = other;
         self = globaldef1511_off3126;
         other = globaldef1512_off3127;
         if ( (self.globaldef125_off147 != globaldef502_off519) ) {

            if ( self.globaldef125_off147 ) {

               self.globaldef125_off147 ();

            }

         }
         self = globaldef1512_off3127;
         other = globaldef1513_off3128;
         activator = globaldef1514_off3129;

      } while ( TRUE );

   }

};
string globaldef1515_off3132 /* = "DelayedUse" */;
string globaldef1516_off3152 /* = "misc/talk.wav" */;

void (float globaldef1518_off3164) SUB_AttackFinished;

// function SUB_AttackFinished
// function number 161 begins at statement 2686
/*
 * OP_ADDRESS	28	426	3165
 * OP_STOREP_F	213	3165	0
 * OP_NE_F	354	228	3166
 * OP_IFNOT	3166	4	0
 * OP_ADDRESS	28	378	3167
 * OP_ADD_F	31	3164	3168
 * OP_STOREP_F	3168	3167	0
 * OP_DONE	0	0	0
 */

void (float globaldef1518_off3164) SUB_AttackFinished = {

   self.globaldef409_off426 = FALSE;
   if ( (skill != MOVETYPE_WALK) ) {

      self.globaldef361_off378 = (time + globaldef1518_off3164);

   }

};
float (entity globaldef1639_off3588) func178_fs3190;

void (void() globaldef1521_off3171) SUB_CheckRefire;

// function SUB_CheckRefire
// function number 162 begins at statement 2694
/*
 * OP_NE_F	354	228	3172
 * OP_IFNOT	3172	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	426	3173
 * OP_EQ_F	3173	214	3174
 * OP_IFNOT	3174	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	3175
 * OP_STORE_V	3175	4	0
 * OP_CALL1	3169	0	0
 * OP_NOT_F	1	0	3176
 * OP_IFNOT	3176	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	426	3177
 * OP_STOREP_F	214	3177	0
 * OP_ADDRESS	28	148	3178
 * OP_STOREP_FNC	3171	3178	0
 * OP_DONE	0	0	0
 */

void (void() globaldef1521_off3171) SUB_CheckRefire = {

   if ( (skill != MOVETYPE_WALK) ) {

      return ;

   }
   if ( (self.globaldef409_off426 == TRUE) ) {

      return ;

   }
   if ( !globaldef1519_off3169 (self.globaldef159_off181) ) {

      return ;

   }
   self.globaldef409_off426 = TRUE;
   self.globaldef126_off148 = globaldef1521_off3171;

};
