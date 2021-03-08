
void () func271_fs6802;

void () info_player_start;

void (entity globaldef2975_off9093, entity globaldef2976_off9094) func406_fs12846;

void () func529_fs14508;

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
float (entity globaldef1749_off3926, entity globaldef1750_off3927) CanDamage = {

   if ( (globaldef1749_off3926.movetype == MOVETYPE_PUSH) ) {

      globaldef449_off466 (globaldef1750_off3927.origin,(globaldef522_off539 * (globaldef1749_off3926.globaldef72_off94 + globaldef1749_off3926.globaldef76_off98)),TRUE,self);
      if ( (trace_fraction == TRUE) ) {

         return ( TRUE );

      }
      if ( (trace_ent == globaldef1749_off3926) ) {

         return ( TRUE );

      }
      return ( FALSE );

   }
   globaldef449_off466 (globaldef1750_off3927.origin,globaldef1749_off3926.origin,TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   globaldef449_off466 (globaldef1750_off3927.origin,(globaldef1749_off3926.origin + globaldef1751_off3960),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   globaldef449_off466 (globaldef1750_off3927.origin,(globaldef1749_off3926.origin + globaldef1752_off3973),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   globaldef449_off466 (globaldef1750_off3927.origin,(globaldef1749_off3926.origin + globaldef1753_off3986),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   globaldef449_off466 (globaldef1750_off3927.origin,(globaldef1749_off3926.origin + globaldef1754_off3999),TRUE,self);
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   return ( FALSE );

};
