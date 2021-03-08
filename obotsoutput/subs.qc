
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

   if ( (self.globaldef95_off117 == globaldef1461_off2960) ) {

      self.globaldef180_off202 = globaldef1462_off2967;

   } else {

      if ( (self.globaldef95_off117 == globaldef1463_off2973) ) {

         self.globaldef180_off202 = globaldef1464_off2980;

      } else {

         globaldef435_off452 (self.globaldef95_off117);
         self.globaldef180_off202 = globaldef32_off59;

      }

   }
   self.globaldef95_off117 = globaldef264_off286;

};
