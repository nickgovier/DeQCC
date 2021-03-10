
void () Demon_JumpTouch;

void () demon1_stand1;

// function demon1_stand1
// function number 812 begins at statement 19095
/*
 * OP_STATE	213	12675	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand1 = [ 0.000, globaldef3830 ] {

   globaldef1709 ();

};

void () demon1_stand2;

// function demon1_stand2
// function number 813 begins at statement 19098
/*
 * OP_STATE	214	12676	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand2 = [ 1.000, globaldef3831 ] {

   globaldef1709 ();

};

void () demon1_stand3;

// function demon1_stand3
// function number 814 begins at statement 19101
/*
 * OP_STATE	216	12677	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand3 = [ 2.000, globaldef3832 ] {

   globaldef1709 ();

};

void () demon1_stand4;

// function demon1_stand4
// function number 815 begins at statement 19104
/*
 * OP_STATE	228	12678	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand4 = [ 3.000, globaldef3833 ] {

   globaldef1709 ();

};

void () demon1_stand5;

// function demon1_stand5
// function number 816 begins at statement 19107
/*
 * OP_STATE	229	12679	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand5 = [ 4.000, globaldef3834 ] {

   globaldef1709 ();

};

void () demon1_stand6;

// function demon1_stand6
// function number 817 begins at statement 19110
/*
 * OP_STATE	230	12680	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand6 = [ 5.000, globaldef3835 ] {

   globaldef1709 ();

};

void () demon1_stand7;

// function demon1_stand7
// function number 818 begins at statement 19113
/*
 * OP_STATE	231	12681	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand7 = [ 6.000, globaldef3836 ] {

   globaldef1709 ();

};

void () demon1_stand8;

// function demon1_stand8
// function number 819 begins at statement 19116
/*
 * OP_STATE	232	12682	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand8 = [ 7.000, globaldef3837 ] {

   globaldef1709 ();

};

void () demon1_stand9;

// function demon1_stand9
// function number 820 begins at statement 19119
/*
 * OP_STATE	217	12683	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand9 = [ 8.000, globaldef3838 ] {

   globaldef1709 ();

};

void () demon1_stand10;

// function demon1_stand10
// function number 821 begins at statement 19122
/*
 * OP_STATE	234	12684	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand10 = [ 9.000, globaldef3839 ] {

   globaldef1709 ();

};

void () demon1_stand11;

// function demon1_stand11
// function number 822 begins at statement 19125
/*
 * OP_STATE	235	12685	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand11 = [ 10.000, globaldef3840 ] {

   globaldef1709 ();

};

void () demon1_stand12;

// function demon1_stand12
// function number 823 begins at statement 19128
/*
 * OP_STATE	236	12686	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand12 = [ 11.000, globaldef3841 ] {

   globaldef1709 ();

};

void () demon1_stand13;

// function demon1_stand13
// function number 824 begins at statement 19131
/*
 * OP_STATE	791	12674	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () demon1_stand13 = [ 12.000, globaldef3829 ] {

   globaldef1709 ();

};

void () demon1_walk1;

// function demon1_walk1
// function number 825 begins at statement 19134
/*
 * OP_STATE	792	12688	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	12689
 * OP_IFNOT	12689	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12690	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk1 = [ 13.000, globaldef3843 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef3844,TRUE,ATTN_IDLE);

   }
   globaldef1702 (FL_CLIENT);

};

void () demon1_walk2;
string globaldef3844 /* = "demon/idle1.wav" */;

// function demon1_walk2
// function number 826 begins at statement 19147
/*
 * OP_STATE	5693	12691	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk2 = [ 14.000, globaldef3845 ] {

   globaldef1702 (MOVETYPE_TOSS);

};

void () demon1_walk3;

// function demon1_walk3
// function number 827 begins at statement 19151
/*
 * OP_STATE	765	12692	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk3 = [ 15.000, globaldef3846 ] {

   globaldef1702 (MOVETYPE_TOSS);

};

void () demon1_walk4;

// function demon1_walk4
// function number 828 begins at statement 19155
/*
 * OP_STATE	218	12693	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk4 = [ 16.000, globaldef3847 ] {

   globaldef1702 (MOVETYPE_PUSH);

};

void () demon1_walk5;

// function demon1_walk5
// function number 829 begins at statement 19159
/*
 * OP_STATE	6892	12694	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk5 = [ 17.000, globaldef3848 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () demon1_walk6;

// function demon1_walk6
// function number 830 begins at statement 19163
/*
 * OP_STATE	6133	12695	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk6 = [ 18.000, globaldef3849 ] {

   globaldef1702 (MOVETYPE_TOSS);

};

void () demon1_walk7;

// function demon1_walk7
// function number 831 begins at statement 19167
/*
 * OP_STATE	6895	12696	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk7 = [ 19.000, globaldef3850 ] {

   globaldef1702 (MOVETYPE_BOUNCE);

};

void () demon1_walk8;

// function demon1_walk8
// function number 832 begins at statement 19171
/*
 * OP_STATE	2323	12687	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () demon1_walk8 = [ 20.000, globaldef3842 ] {

   globaldef1702 (MOVETYPE_BOUNCE);

};

void () demon1_run1;

// function demon1_run1
// function number 833 begins at statement 19175
/*
 * OP_STATE	12465	12698	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	12699
 * OP_IFNOT	12699	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12690	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run1 = [ 21.000, globaldef3852 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef3844,TRUE,ATTN_IDLE);

   }
   globaldef1734 (globaldef1384);

};

void () demon1_run2;

// function demon1_run2
// function number 834 begins at statement 19188
/*
 * OP_STATE	12467	12700	0
 * OP_STORE_V	765	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run2 = [ 22.000, globaldef3853 ] {

   globaldef1734 (globaldef748);

};

void () demon1_run3;

// function demon1_run3
// function number 835 begins at statement 19192
/*
 * OP_STATE	304	12701	0
 * OP_STORE_V	9655	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run3 = [ 23.000, globaldef3854 ] {

   globaldef1734 (globaldef3146);

};

void () demon1_run4;

// function demon1_run4
// function number 836 begins at statement 19196
/*
 * OP_STATE	736	12702	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run4 = [ 24.000, globaldef3855 ] {

   globaldef1734 (globaldef1384);

};

void () demon1_run5;

// function demon1_run5
// function number 837 begins at statement 19200
/*
 * OP_STATE	305	12703	0
 * OP_STORE_V	765	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run5 = [ 25.000, globaldef3856 ] {

   globaldef1734 (globaldef748);

};

void () demon1_run6;

// function demon1_run6
// function number 838 begins at statement 19204
/*
 * OP_STATE	306	12697	0
 * OP_STORE_V	9655	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () demon1_run6 = [ 26.000, globaldef3851 ] {

   globaldef1734 (globaldef3146);

};

void () demon1_jump1;

// function demon1_jump1
// function number 839 begins at statement 19208
/*
 * OP_STATE	307	12705	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () demon1_jump1 = [ 27.000, globaldef3858 ] {

   globaldef1533 ();

};

void () demon1_jump2;

// function demon1_jump2
// function number 840 begins at statement 19211
/*
 * OP_STATE	308	12706	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () demon1_jump2 = [ 28.000, globaldef3859 ] {

   globaldef1533 ();

};

void () demon1_jump3;

// function demon1_jump3
// function number 841 begins at statement 19214
/*
 * OP_STATE	9664	12707	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () demon1_jump3 = [ 29.000, globaldef3860 ] {

   globaldef1533 ();

};

void () demon1_jump4;

// function demon1_jump4
// function number 842 begins at statement 19217
/*
 * OP_STATE	309	12708	0
 * OP_CALL0	3190	0	0
 * OP_ADDRESS	28	146	12709
 * OP_STOREP_FNC	12673	12709	0
 * OP_LOAD_V	28	117	12710
 * OP_STORE_V	12710	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	108	12713
 * OP_LOAD_F	28	108	12714
 * OP_ADD_F	12714	214	12715
 * OP_STOREP_F	12715	12713	0
 * OP_ADDRESS	28	113	12716
 * OP_MUL_VF	59	740	12719
 * OP_ADD_V	12719	12722	12725
 * OP_STOREP_V	12725	12716	0
 * OP_LOAD_F	28	182	12728
 * OP_BITAND	12728	223	12729
 * OP_IFNOT	12729	5	0
 * OP_ADDRESS	28	182	12730
 * OP_LOAD_F	28	182	12731
 * OP_SUB_F	12731	223	12732
 * OP_STOREP_F	12732	12730	0
 * OP_DONE	0	0	0
 */

void () demon1_jump4 = [ 30.000, globaldef3861 ] {

   globaldef1533 ();
   self.globaldef124 = globaldef3828;
   makevectors (self.angles);
   self.globaldef86 = (self.globaldef86 + TRUE);
   self.velocity = ((v_forward * globaldef723) + globaldef3862);
   if ( (self.globaldef160 & FL_ONGROUND) ) {

      self.globaldef160 = (self.globaldef160 - FL_ONGROUND);

   }

};

void () demon1_jump5;
vector globaldef3862 /* = '0.000 0.000 250.000' */;

// function demon1_jump5
// function number 843 begins at statement 19240
/*
 * OP_STATE	310	12733	0
 * OP_DONE	0	0	0
 */

void () demon1_jump5 = [ 31.000, globaldef3863 ] {


};

void () demon1_jump6;

// function demon1_jump6
// function number 844 begins at statement 19242
/*
 * OP_STATE	219	12734	0
 * OP_DONE	0	0	0
 */

void () demon1_jump6 = [ 32.000, globaldef3864 ] {


};

void () demon1_jump7;

// function demon1_jump7
// function number 845 begins at statement 19244
/*
 * OP_STATE	312	12735	0
 * OP_DONE	0	0	0
 */

void () demon1_jump7 = [ 33.000, globaldef3865 ] {


};

void () demon1_jump8;

// function demon1_jump8
// function number 846 begins at statement 19246
/*
 * OP_STATE	9671	12736	0
 * OP_DONE	0	0	0
 */

void () demon1_jump8 = [ 34.000, globaldef3866 ] {


};

void () demon1_jump9;

// function demon1_jump9
// function number 847 begins at statement 19248
/*
 * OP_STATE	5878	12737	0
 * OP_DONE	0	0	0
 */

void () demon1_jump9 = [ 35.000, globaldef3867 ] {


};

void () demon1_jump10;

// function demon1_jump10
// function number 848 begins at statement 19250
/*
 * OP_STATE	9655	12704	0
 * OP_ADDRESS	28	150	12738
 * OP_ADD_F	31	228	12739
 * OP_STOREP_F	12739	12738	0
 * OP_DONE	0	0	0
 */

void () demon1_jump10 = [ 36.000, globaldef3857 ] {

   self.nextthink = (time + MOVETYPE_WALK);

};

void () demon1_jump11;

// function demon1_jump11
// function number 849 begins at statement 19255
/*
 * OP_STATE	9657	12741	0
 * OP_DONE	0	0	0
 */

void () demon1_jump11 = [ 37.000, globaldef3869 ] {


};

void () demon1_jump12;

// function demon1_jump12
// function number 850 begins at statement 19257
/*
 * OP_STATE	9659	12697	0
 * OP_DONE	0	0	0
 */

void () demon1_jump12 = [ 38.000, globaldef3851 ] {


};

void () demon1_atta1;

// function demon1_atta1
// function number 851 begins at statement 19259
/*
 * OP_STATE	9917	12743	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta1 = [ 54.000, globaldef3871 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () demon1_atta2;

// function demon1_atta2
// function number 852 begins at statement 19263
/*
 * OP_STATE	9919	12744	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta2 = [ 55.000, globaldef3872 ] {

   globaldef1557 (FALSE);

};

void () demon1_atta3;

// function demon1_atta3
// function number 853 begins at statement 19267
/*
 * OP_STATE	9921	12745	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta3 = [ 56.000, globaldef3873 ] {

   globaldef1557 (FALSE);

};

void () demon1_atta4;

// function demon1_atta4
// function number 854 begins at statement 19271
/*
 * OP_STATE	9923	12746	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta4 = [ 57.000, globaldef3874 ] {

   globaldef1557 (TRUE);

};

void () demon1_atta5;

// function demon1_atta5
// function number 855 begins at statement 19275
/*
 * OP_STATE	9925	12747	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	2044	4	0
 * OP_CALL1	3188	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta5 = [ 58.000, globaldef3875 ] {

   globaldef1557 (FL_SWIM);
   globaldef1531 (globaldef1343);

};

void () demon1_atta6;

// function demon1_atta6
// function number 856 begins at statement 19281
/*
 * OP_STATE	2783	12748	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta6 = [ 59.000, globaldef3876 ] {

   globaldef1557 (TRUE);

};

void () demon1_atta7;

// function demon1_atta7
// function number 857 begins at statement 19285
/*
 * OP_STATE	2019	12749	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta7 = [ 60.000, globaldef3877 ] {

   globaldef1557 (MOVETYPE_TOSS);

};

void () demon1_atta8;

// function demon1_atta8
// function number 858 begins at statement 19289
/*
 * OP_STATE	9928	12750	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta8 = [ 61.000, globaldef3878 ] {

   globaldef1557 (FL_CLIENT);

};

void () demon1_atta9;

// function demon1_atta9
// function number 859 begins at statement 19293
/*
 * OP_STATE	9930	12751	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta9 = [ 62.000, globaldef3879 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () demon1_atta10;

// function demon1_atta10
// function number 860 begins at statement 19297
/*
 * OP_STATE	6707	12752	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta10 = [ 63.000, globaldef3880 ] {

   globaldef1557 (FL_SWIM);

};

void () demon1_atta11;

// function demon1_atta11
// function number 861 begins at statement 19301
/*
 * OP_STATE	220	12753	0
 * OP_STORE_V	9761	4	0
 * OP_CALL1	3188	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta11 = [ 64.000, globaldef3881 ] {

   globaldef1531 (globaldef3183);

};

void () demon1_atta12;

// function demon1_atta12
// function number 862 begins at statement 19305
/*
 * OP_STATE	9934	12754	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta12 = [ 65.000, globaldef3882 ] {

   globaldef1557 (MOVETYPE_FLY);

};

void () demon1_atta13;

// function demon1_atta13
// function number 863 begins at statement 19309
/*
 * OP_STATE	9936	12755	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta13 = [ 66.000, globaldef3883 ] {

   globaldef1557 (FL_CLIENT);

};

void () demon1_atta14;

// function demon1_atta14
// function number 864 begins at statement 19313
/*
 * OP_STATE	9938	12756	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta14 = [ 67.000, globaldef3884 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () demon1_atta15;

// function demon1_atta15
// function number 865 begins at statement 19317
/*
 * OP_STATE	8193	12697	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () demon1_atta15 = [ 68.000, globaldef3851 ] {

   globaldef1557 (MOVETYPE_STEP);

};

void () demon1_pain1;

// function demon1_pain1
// function number 866 begins at statement 19321
/*
 * OP_STATE	9661	12758	0
 * OP_DONE	0	0	0
 */

void () demon1_pain1 = [ 39.000, globaldef3886 ] {


};

void () demon1_pain2;

// function demon1_pain2
// function number 867 begins at statement 19323
/*
 * OP_STATE	746	12759	0
 * OP_DONE	0	0	0
 */

void () demon1_pain2 = [ 40.000, globaldef3887 ] {


};

void () demon1_pain3;

// function demon1_pain3
// function number 868 begins at statement 19325
/*
 * OP_STATE	9993	12760	0
 * OP_DONE	0	0	0
 */

void () demon1_pain3 = [ 41.000, globaldef3888 ] {


};

void () demon1_pain4;

// function demon1_pain4
// function number 869 begins at statement 19327
/*
 * OP_STATE	9995	12761	0
 * OP_DONE	0	0	0
 */

void () demon1_pain4 = [ 42.000, globaldef3889 ] {


};

void () demon1_pain5;

// function demon1_pain5
// function number 870 begins at statement 19329
/*
 * OP_STATE	9997	12762	0
 * OP_DONE	0	0	0
 */

void () demon1_pain5 = [ 43.000, globaldef3890 ] {


};

void () demon1_pain6;

// function demon1_pain6
// function number 871 begins at statement 19331
/*
 * OP_STATE	9999	12697	0
 * OP_DONE	0	0	0
 */

void () demon1_pain6 = [ 44.000, globaldef3851 ] {


};

void (entity globaldef3892, float globaldef3893) demon1_pain;

// function demon1_pain
// function number 872 begins at statement 19333
/*
 * OP_LOAD_FNC	28	146	12766
 * OP_EQ_FNC	12766	12673	12767
 * OP_IFNOT	12767	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	379	12768
 * OP_GT	12768	31	12769
 * OP_IFNOT	12769	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	379	12770
 * OP_ADD_F	31	214	12771
 * OP_STOREP_F	12771	12770	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12772	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2044	12773
 * OP_GT	12773	12765	12774
 * OP_IFNOT	12774	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	12757	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef3892, float globaldef3893) demon1_pain = {

   if ( (self.globaldef124 == globaldef3828) ) {

      return ;

   }
   if ( (self.globaldef362 > time) ) {

      return ;

   }
   self.globaldef362 = (time + TRUE);
   sound (self,CHAN_VOICE,globaldef3894,TRUE,ATTN_NORM);
   if ( ((globaldef440 () * globaldef1343) > globaldef3893) ) {

      return ;

   }
   globaldef3885 ();

};
string globaldef3894 /* = "demon/dpain1.wav" */;

void () demon1_die1;

// function demon1_die1
// function number 873 begins at statement 19357
/*
 * OP_STATE	2598	12776	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12777	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () demon1_die1 = [ 45.000, globaldef3896 ] {

   sound (self,CHAN_VOICE,globaldef3897,TRUE,ATTN_NORM);

};

void () demon1_die2;
string globaldef3897 /* = "demon/ddeath.wav" */;

// function demon1_die2
// function number 874 begins at statement 19365
/*
 * OP_STATE	10002	12778	0
 * OP_DONE	0	0	0
 */

void () demon1_die2 = [ 46.000, globaldef3898 ] {


};

void () demon1_die3;

// function demon1_die3
// function number 875 begins at statement 19367
/*
 * OP_STATE	10004	12779	0
 * OP_DONE	0	0	0
 */

void () demon1_die3 = [ 47.000, globaldef3899 ] {


};

void () demon1_die4;

// function demon1_die4
// function number 876 begins at statement 19369
/*
 * OP_STATE	10006	12780	0
 * OP_DONE	0	0	0
 */

void () demon1_die4 = [ 48.000, globaldef3900 ] {


};

void () demon1_die5;

// function demon1_die5
// function number 877 begins at statement 19371
/*
 * OP_STATE	10008	12781	0
 * OP_DONE	0	0	0
 */

void () demon1_die5 = [ 49.000, globaldef3901 ] {


};

void () demon1_die6;

// function demon1_die6
// function number 878 begins at statement 19373
/*
 * OP_STATE	1470	12782	0
 * OP_ADDRESS	28	104	12783
 * OP_STOREP_F	237	12783	0
 * OP_DONE	0	0	0
 */

void () demon1_die6 = [ 50.000, globaldef3902 ] {

   self.solid = SOLID_NOT;

};

void () demon1_die7;

// function demon1_die7
// function number 879 begins at statement 19377
/*
 * OP_STATE	9911	12784	0
 * OP_DONE	0	0	0
 */

void () demon1_die7 = [ 51.000, globaldef3903 ] {


};

void () demon1_die8;

// function demon1_die8
// function number 880 begins at statement 19379
/*
 * OP_STATE	9913	12785	0
 * OP_DONE	0	0	0
 */

void () demon1_die8 = [ 52.000, globaldef3904 ] {


};

void () demon1_die9;

// function demon1_die9
// function number 881 begins at statement 19381
/*
 * OP_STATE	9915	12785	0
 * OP_DONE	0	0	0
 */

void () demon1_die9 = [ 53.000, globaldef3904 ] {


};

void () demon_die;

// function demon_die
// function number 882 begins at statement 19383
/*
 * OP_LOAD_F	28	152	12787
 * OP_LT	12787	12648	12788
 * OP_IFNOT	12788	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	12789	4	0
 * OP_LOAD_F	28	152	12790
 * OP_STORE_V	12790	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	12791
 * OP_STORE_V	12791	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	12792
 * OP_STORE_V	12792	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	12793
 * OP_STORE_V	12793	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	12775	0	0
 * OP_DONE	0	0	0
 */

void () demon_die = {

   if ( (self.globaldef130 < globaldef3820) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef3906,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      return ;

   }
   globaldef3895 ();

};
string globaldef3906 /* = "progs/h_demon.mdl" */;

void () Demon_MeleeAttack;

// function Demon_MeleeAttack
// function number 883 begins at statement 19411
/*
 * OP_CALL0	12742	0	0
 * OP_DONE	0	0	0
 */

void () Demon_MeleeAttack = {

   globaldef3870 ();

};

void () monster_demon1;

// function monster_demon1
// function number 884 begins at statement 19413
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	12796	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	12789	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	12777	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12797	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12798	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12772	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12690	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3667	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	12799
 * OP_STOREP_F	240	12799	0
 * OP_ADDRESS	28	103	12800
 * OP_STOREP_F	229	12800	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	12796	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	298	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	12801
 * OP_STOREP_F	540	12801	0
 * OP_ADDRESS	28	361	12802
 * OP_STOREP_FNC	12674	12802	0
 * OP_ADDRESS	28	362	12803
 * OP_STOREP_FNC	12687	12803	0
 * OP_ADDRESS	28	363	12804
 * OP_STOREP_FNC	12697	12804	0
 * OP_ADDRESS	28	367	12805
 * OP_STOREP_FNC	12786	12805	0
 * OP_ADDRESS	28	365	12806
 * OP_STOREP_FNC	12794	12806	0
 * OP_ADDRESS	28	364	12807
 * OP_STOREP_FNC	12704	12807	0
 * OP_ADDRESS	28	366	12808
 * OP_STOREP_FNC	12763	12808	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_demon1 = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef453 (globaldef3909);
   globaldef453 (globaldef3906);
   globaldef452 (globaldef3897);
   globaldef452 (globaldef3910);
   globaldef452 (globaldef3911);
   globaldef452 (globaldef3894);
   globaldef452 (globaldef3844);
   globaldef452 ("demon/sight2.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef3909);
   globaldef438 (self,VEC_HULL2_MIN,VEC_HULL2_MAX);
   self.globaldef130 = globaldef523;
   self.globaldef344 = globaldef3829;
   self.globaldef345 = globaldef3842;
   self.globaldef346 = globaldef3851;
   self.globaldef350 = globaldef3905;
   self.globaldef348 = globaldef3907;
   self.globaldef347 = globaldef3857;
   self.globaldef349 = globaldef3891;
   globaldef3309 ();

};
string globaldef3909 /* = "progs/demon.mdl" */;
string globaldef3910 /* = "demon/dhit2.wav" */;
string globaldef3911 /* = "demon/djump.wav" */;
float () CheckDemonMelee;

// function CheckDemonMelee
// function number 885 begins at statement 19462
/*
 * OP_EQ_F	3193	242	12810
 * OP_IFNOT	12810	4	0
 * OP_ADDRESS	28	372	12811
 * OP_STOREP_F	375	12811	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () CheckDemonMelee = {

   if ( (globaldef1536 == RANGE_MELEE) ) {

      self.globaldef355 = AS_MELEE;
      return ( TRUE );

   }
   return ( FALSE );

};
float () CheckDemonJump;

// function CheckDemonJump
// function number 886 begins at statement 19469
/*
 * OP_LOAD_F	28	108	12817
 * OP_LOAD_F	28	137	12818
 * OP_ADD_F	12817	12818	12819
 * OP_LOAD_ENT	28	181	12820
 * OP_LOAD_F	12820	108	12821
 * OP_LOAD_ENT	28	181	12822
 * OP_LOAD_F	12822	137	12823
 * OP_ADD_F	12821	12823	12824
 * OP_LOAD_ENT	28	181	12825
 * OP_LOAD_F	12825	145	12826
 * OP_MUL_F	6280	12826	12827
 * OP_ADD_F	12824	12827	12828
 * OP_GT	12819	12828	12829
 * OP_IFNOT	12829	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	28	108	12830
 * OP_LOAD_F	28	141	12831
 * OP_ADD_F	12830	12831	12832
 * OP_LOAD_ENT	28	181	12833
 * OP_LOAD_F	12833	108	12834
 * OP_LOAD_ENT	28	181	12835
 * OP_LOAD_F	12835	137	12836
 * OP_ADD_F	12834	12836	12837
 * OP_LOAD_ENT	28	181	12838
 * OP_LOAD_F	12838	145	12839
 * OP_MUL_F	6277	12839	12840
 * OP_ADD_F	12837	12840	12841
 * OP_LT	12832	12841	12842
 * OP_IFNOT	12842	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	12843
 * OP_LOAD_V	12843	105	12844
 * OP_LOAD_V	28	105	12847
 * OP_SUB_V	12844	12847	12850
 * OP_STORE_V	12850	12813	0
 * OP_STORE_F	213	12815	0
 * OP_STORE_V	12813	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	12816	0
 * OP_LT	12816	1997	12853
 * OP_IFNOT	12853	2	0
 * OP_RETURN	213	0	0
 * OP_GT	12816	2044	12854
 * OP_IFNOT	12854	5	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3263	12855
 * OP_IFNOT	12855	2	0
 * OP_RETURN	213	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () CheckDemonJump = {

   local vector globaldef3914;
   local float globaldef3918;

   if ( ((self.globaldef86 + self.globaldef115) > ((self.enemy.globaldef86 + self.enemy.globaldef115) + (globaldef2244 * self.enemy.globaldef123))) ) {

      return ( FALSE );

   }
   if ( ((self.globaldef86 + self.globaldef119) < ((self.enemy.globaldef86 + self.enemy.globaldef115) + (globaldef2243 * self.enemy.globaldef123))) ) {

      return ( FALSE );

   }
   globaldef3914 = (self.enemy.origin - self.origin);
   globaldef3917 = FALSE;
   globaldef3918 = vlen (globaldef3914);
   if ( (globaldef3918 < globaldef1335) ) {

      return ( FALSE );

   }
   if ( (globaldef3918 > globaldef1343) ) {

      if ( (globaldef440 () < globaldef1552) ) {

         return ( FALSE );

      }

   }
   return ( TRUE );

};

// function DemonCheckAttack
// function number 887 begins at statement 19519
/*
 * OP_CALL0	12809	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	372	12859
 * OP_STOREP_F	375	12859	0
 * OP_RETURN	214	0	0
 * OP_CALL0	12812	0	0
 * OP_IFNOT	1	10	0
 * OP_ADDRESS	28	372	12860
 * OP_STOREP_F	376	12860	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12798	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () DemonCheckAttack = {

   local vector globaldef3919;

   if ( globaldef3912 () ) {

      self.globaldef355 = AS_MELEE;
      return ( TRUE );

   }
   if ( globaldef3913 () ) {

      self.globaldef355 = AS_MISSILE;
      sound (self,CHAN_VOICE,globaldef3911,TRUE,ATTN_NORM);
      return ( TRUE );

   }
   return ( FALSE );

};

// function Demon_Melee
// function number 888 begins at statement 19537
/*
 * OP_CALL0	3190	0	0
 * OP_LOAD_F	28	191	12866
 * OP_STORE_V	12866	4	0
 * OP_STORE_V	791	7	0
 * OP_CALL2	480	0	0
 * OP_LOAD_ENT	28	181	12867
 * OP_LOAD_V	12867	105	12868
 * OP_LOAD_V	28	105	12871
 * OP_SUB_V	12868	12871	12874
 * OP_STORE_V	12874	12863	0
 * OP_STORE_V	12863	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	1997	12877
 * OP_IFNOT	12877	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	12878
 * OP_STORE_V	12878	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_NOT_F	1	0	12879
 * OP_IFNOT	12879	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	12797	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	230	1	12880
 * OP_ADD_F	235	12880	12881
 * OP_STORE_F	12881	12862	0
 * OP_LOAD_ENT	28	181	12882
 * OP_STORE_V	12882	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	12862	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_V	28	117	12883
 * OP_STORE_V	12883	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	12886
 * OP_MUL_VF	59	218	12889
 * OP_ADD_V	12886	12889	12892
 * OP_STORE_V	12892	4	0
 * OP_MUL_FV	12861	65	12895
 * OP_STORE_V	12895	7	0
 * OP_CALL2	5444	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef3923) Demon_Melee = {

   local float globaldef3924;
   local vector globaldef3925;

   globaldef1533 ();
   globaldef463 (self.globaldef169,globaldef774);
   globaldef3925 = (self.enemy.origin - self.origin);
   if ( (vlen (globaldef3925) > globaldef1335) ) {

      return ;

   }
   if ( !globaldef507 (self.enemy,self) ) {

      return ;

   }
   sound (self,CHAN_WEAPON,globaldef3910,TRUE,ATTN_NORM);
   globaldef3924 = (MOVETYPE_BOUNCE + (MOVETYPE_FLY * globaldef440 ()));
   globaldef505 (self.enemy,self,self,globaldef3924);
   makevectors (self.angles);
   globaldef2044 ((self.origin + (v_forward * FL_INWATER)),(globaldef3923 * v_right));

};

// function Demon_JumpTouch
// function number 889 begins at statement 19586
/*
 * OP_LOAD_F	28	152	12899
 * OP_LE	12899	213	12900
 * OP_IFNOT	12900	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	12901
 * OP_IFNOT	12901	15	0
 * OP_LOAD_V	28	113	12902
 * OP_STORE_V	12902	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	5347	12905
 * OP_IFNOT	12905	10	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	235	1	12906
 * OP_ADD_F	746	12906	12907
 * OP_STORE_F	12907	12898	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	12898	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	486	0	0
 * OP_NOT_F	1	0	12908
 * OP_IFNOT	12908	12	0
 * OP_LOAD_F	28	182	12909
 * OP_BITAND	12909	223	12910
 * OP_IFNOT	12910	8	0
 * OP_ADDRESS	28	146	12911
 * OP_STOREP_FNC	519	12911	0
 * OP_ADDRESS	28	148	12912
 * OP_STOREP_FNC	12704	12912	0
 * OP_ADDRESS	28	150	12913
 * OP_ADD_F	31	3036	12914
 * OP_STOREP_F	12914	12913	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	146	12915
 * OP_STOREP_FNC	519	12915	0
 * OP_ADDRESS	28	148	12916
 * OP_STOREP_FNC	12740	12916	0
 * OP_ADDRESS	28	150	12917
 * OP_ADD_F	31	3036	12918
 * OP_STOREP_F	12918	12917	0
 * OP_DONE	0	0	0
 */

void () Demon_JumpTouch = {

   local float globaldef3929;

   if ( (self.globaldef130 <= FALSE) ) {

      return ;

   }
   if ( other.globaldef141 ) {

      if ( (vlen (self.velocity) > globaldef2007) ) {

         globaldef3929 = (globaldef729 + (MOVETYPE_BOUNCE * globaldef440 ()));
         globaldef505 (other,self,self,globaldef3929);

      }

   }
   if ( !globaldef469 (self) ) {

      if ( (self.globaldef160 & FL_ONGROUND) ) {

         self.globaldef124 = SUB_Null;
         self.think = globaldef3857;
         self.nextthink = (time + 0.100);

      }
      return ;

   }
   self.globaldef124 = SUB_Null;
   self.think = globaldef3868;
   self.nextthink = (time + 0.100);

};
