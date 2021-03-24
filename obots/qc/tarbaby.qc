
// function tbaby_stand1
// function number 1681 begins at statement 24105
/*
 * OP_STATE	213	14938	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_stand1 = [ 0.000, tbaby_stand1 ] {

   ai_stand ();

};

// function tbaby_hang1
// function number 1682 begins at statement 24108
/*
 * OP_STATE	213	14939	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_hang1 = [ 0.000, tbaby_hang1 ] {

   ai_stand ();

};

// function tbaby_walk1
// function number 1683 begins at statement 24111
/*
 * OP_STATE	213	14941	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk1 = [ 0.000, tbaby_walk2 ] {

   ai_turn ();

};

// function tbaby_walk2
// function number 1684 begins at statement 24114
/*
 * OP_STATE	214	14942	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk2 = [ 1.000, tbaby_walk3 ] {

   ai_turn ();

};

// function tbaby_walk3
// function number 1685 begins at statement 24117
/*
 * OP_STATE	216	14943	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk3 = [ 2.000, tbaby_walk4 ] {

   ai_turn ();

};

// function tbaby_walk4
// function number 1686 begins at statement 24120
/*
 * OP_STATE	228	14944	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk4 = [ 3.000, tbaby_walk5 ] {

   ai_turn ();

};

// function tbaby_walk5
// function number 1687 begins at statement 24123
/*
 * OP_STATE	229	14945	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk5 = [ 4.000, tbaby_walk6 ] {

   ai_turn ();

};

// function tbaby_walk6
// function number 1688 begins at statement 24126
/*
 * OP_STATE	230	14946	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk6 = [ 5.000, tbaby_walk7 ] {

   ai_turn ();

};

// function tbaby_walk7
// function number 1689 begins at statement 24129
/*
 * OP_STATE	231	14947	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk7 = [ 6.000, tbaby_walk8 ] {

   ai_turn ();

};

// function tbaby_walk8
// function number 1690 begins at statement 24132
/*
 * OP_STATE	232	14948	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk8 = [ 7.000, tbaby_walk9 ] {

   ai_turn ();

};

// function tbaby_walk9
// function number 1691 begins at statement 24135
/*
 * OP_STATE	217	14949	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk9 = [ 8.000, tbaby_walk10 ] {

   ai_turn ();

};

// function tbaby_walk10
// function number 1692 begins at statement 24138
/*
 * OP_STATE	234	14950	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk10 = [ 9.000, tbaby_walk11 ] {

   ai_turn ();

};

// function tbaby_walk11
// function number 1693 begins at statement 24141
/*
 * OP_STATE	235	14951	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk11 = [ 10.000, tbaby_walk12 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk12
// function number 1694 begins at statement 24145
/*
 * OP_STATE	236	14952	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk12 = [ 11.000, tbaby_walk13 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk13
// function number 1695 begins at statement 24149
/*
 * OP_STATE	791	14953	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk13 = [ 12.000, tbaby_walk14 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk14
// function number 1696 begins at statement 24153
/*
 * OP_STATE	792	14954	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk14 = [ 13.000, tbaby_walk15 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk15
// function number 1697 begins at statement 24157
/*
 * OP_STATE	5693	14955	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk15 = [ 14.000, tbaby_walk16 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk16
// function number 1698 begins at statement 24161
/*
 * OP_STATE	765	14956	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk16 = [ 15.000, tbaby_walk17 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk17
// function number 1699 begins at statement 24165
/*
 * OP_STATE	218	14957	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk17 = [ 16.000, tbaby_walk18 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk18
// function number 1700 begins at statement 24169
/*
 * OP_STATE	6892	14958	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk18 = [ 17.000, tbaby_walk19 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk19
// function number 1701 begins at statement 24173
/*
 * OP_STATE	6133	14959	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk19 = [ 18.000, tbaby_walk20 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk20
// function number 1702 begins at statement 24177
/*
 * OP_STATE	6895	14960	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk20 = [ 19.000, tbaby_walk21 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk21
// function number 1703 begins at statement 24181
/*
 * OP_STATE	2323	14961	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk21 = [ 20.000, tbaby_walk22 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk22
// function number 1704 begins at statement 24185
/*
 * OP_STATE	12465	14962	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk22 = [ 21.000, tbaby_walk23 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk23
// function number 1705 begins at statement 24189
/*
 * OP_STATE	12467	14963	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk23 = [ 22.000, tbaby_walk24 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk24
// function number 1706 begins at statement 24193
/*
 * OP_STATE	304	14964	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk24 = [ 23.000, tbaby_walk25 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_walk25
// function number 1707 begins at statement 24197
/*
 * OP_STATE	736	14940	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_walk25 = [ 24.000, tbaby_walk1 ] {

   ai_walk (FL_SWIM);

};

// function tbaby_run1
// function number 1708 begins at statement 24201
/*
 * OP_STATE	305	14966	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run1 = [ 25.000, tbaby_run2 ] {

   ai_face ();

};

// function tbaby_run2
// function number 1709 begins at statement 24204
/*
 * OP_STATE	306	14967	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run2 = [ 26.000, tbaby_run3 ] {

   ai_face ();

};

// function tbaby_run3
// function number 1710 begins at statement 24207
/*
 * OP_STATE	307	14968	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run3 = [ 27.000, tbaby_run4 ] {

   ai_face ();

};

// function tbaby_run4
// function number 1711 begins at statement 24210
/*
 * OP_STATE	308	14969	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run4 = [ 28.000, tbaby_run5 ] {

   ai_face ();

};

// function tbaby_run5
// function number 1712 begins at statement 24213
/*
 * OP_STATE	9664	14970	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run5 = [ 29.000, tbaby_run6 ] {

   ai_face ();

};

// function tbaby_run6
// function number 1713 begins at statement 24216
/*
 * OP_STATE	309	14971	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run6 = [ 30.000, tbaby_run7 ] {

   ai_face ();

};

// function tbaby_run7
// function number 1714 begins at statement 24219
/*
 * OP_STATE	310	14972	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run7 = [ 31.000, tbaby_run8 ] {

   ai_face ();

};

// function tbaby_run8
// function number 1715 begins at statement 24222
/*
 * OP_STATE	219	14973	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run8 = [ 32.000, tbaby_run9 ] {

   ai_face ();

};

// function tbaby_run9
// function number 1716 begins at statement 24225
/*
 * OP_STATE	312	14974	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run9 = [ 33.000, tbaby_run10 ] {

   ai_face ();

};

// function tbaby_run10
// function number 1717 begins at statement 24228
/*
 * OP_STATE	9671	14975	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run10 = [ 34.000, tbaby_run11 ] {

   ai_face ();

};

// function tbaby_run11
// function number 1718 begins at statement 24231
/*
 * OP_STATE	5878	14976	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run11 = [ 35.000, tbaby_run12 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run12
// function number 1719 begins at statement 24235
/*
 * OP_STATE	9655	14977	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run12 = [ 36.000, tbaby_run13 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run13
// function number 1720 begins at statement 24239
/*
 * OP_STATE	9657	14978	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run13 = [ 37.000, tbaby_run14 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run14
// function number 1721 begins at statement 24243
/*
 * OP_STATE	9659	14979	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run14 = [ 38.000, tbaby_run15 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run15
// function number 1722 begins at statement 24247
/*
 * OP_STATE	9661	14980	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run15 = [ 39.000, tbaby_run16 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run16
// function number 1723 begins at statement 24251
/*
 * OP_STATE	746	14981	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run16 = [ 40.000, tbaby_run17 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run17
// function number 1724 begins at statement 24255
/*
 * OP_STATE	9993	14982	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run17 = [ 41.000, tbaby_run18 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run18
// function number 1725 begins at statement 24259
/*
 * OP_STATE	9995	14983	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run18 = [ 42.000, tbaby_run19 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run19
// function number 1726 begins at statement 24263
/*
 * OP_STATE	9997	14984	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run19 = [ 43.000, tbaby_run20 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run20
// function number 1727 begins at statement 24267
/*
 * OP_STATE	9999	14985	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run20 = [ 44.000, tbaby_run21 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run21
// function number 1728 begins at statement 24271
/*
 * OP_STATE	2598	14986	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run21 = [ 45.000, tbaby_run22 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run22
// function number 1729 begins at statement 24275
/*
 * OP_STATE	10002	14987	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run22 = [ 46.000, tbaby_run23 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run23
// function number 1730 begins at statement 24279
/*
 * OP_STATE	10004	14988	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run23 = [ 47.000, tbaby_run24 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run24
// function number 1731 begins at statement 24283
/*
 * OP_STATE	10006	14989	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run24 = [ 48.000, tbaby_run25 ] {

   ai_run (FL_SWIM);

};

// function tbaby_run25
// function number 1732 begins at statement 24287
/*
 * OP_STATE	10008	14965	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_run25 = [ 49.000, tbaby_run1 ] {

   ai_run (FL_SWIM);

};

void () tbaby_jump1;

// function Tar_JumpTouch
// function number 1733 begins at statement 24291
/*
 * OP_LOAD_F	29	163	14993
 * OP_LOAD_S	29	129	14994
 * OP_LOAD_S	28	129	14995
 * OP_NE_S	14994	14995	14996
 * OP_AND	14993	14996	14997
 * OP_IFNOT	14997	22	0
 * OP_LOAD_V	28	113	14998
 * OP_STORE_V	14998	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	5347	15001
 * OP_IFNOT	15001	16	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	235	1	15002
 * OP_ADD_F	235	15002	15003
 * OP_STORE_F	15003	14992	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	14992	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	15004	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	15005	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	486	0	0
 * OP_NOT_F	1	0	15006
 * OP_IFNOT	15006	14	0
 * OP_LOAD_F	28	182	15007
 * OP_BITAND	15007	223	15008
 * OP_IFNOT	15008	10	0
 * OP_ADDRESS	28	146	15009
 * OP_STOREP_FNC	519	15009	0
 * OP_ADDRESS	28	148	15010
 * OP_STOREP_FNC	14965	15010	0
 * OP_ADDRESS	28	103	15011
 * OP_STOREP_F	229	15011	0
 * OP_ADDRESS	28	150	15012
 * OP_ADD_F	31	3036	15013
 * OP_STOREP_F	15013	15012	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	146	15014
 * OP_STOREP_FNC	519	15014	0
 * OP_ADDRESS	28	148	15015
 * OP_STOREP_FNC	14990	15015	0
 * OP_ADDRESS	28	150	15016
 * OP_ADD_F	31	3036	15017
 * OP_STOREP_F	15017	15016	0
 * OP_DONE	0	0	0
 */

void () Tar_JumpTouch = {

   local float ldmg;

   if ( (other.takedamage && (other.classname != self.classname)) ) {

      if ( (vlen (self.velocity) > globaldef002007) ) {

         ldmg = (MOVETYPE_BOUNCE + (MOVETYPE_BOUNCE * random ()));
         T_Damage (other,self,self,ldmg);
         sound (self,CHAN_WEAPON,globaldef005026,TRUE,ATTN_NORM);

      }

   } else {

      sound (self,CHAN_WEAPON,globaldef005027,TRUE,ATTN_NORM);

   }
   if ( !checkbottom (self) ) {

      if ( (self.flags & FL_ONGROUND) ) {

         self.touch = SUB_Null;
         self.think = tbaby_run1;
         self.movetype = MOVETYPE_STEP;
         self.nextthink = (time + globaldef001488);

      }
      return ;

   }
   self.touch = SUB_Null;
   self.think = tbaby_jump1;
   self.nextthink = (time + globaldef001488);

};
string globaldef005026 /* = "blob/hit1.wav" */;
string globaldef005027 /* = "blob/land1.wav" */;

void () tbaby_jump5;

// function tbaby_fly1
// function number 1734 begins at statement 24349
/*
 * OP_STATE	9921	15020	0
 * OP_DONE	0	0	0
 */

void () tbaby_fly1 = [ 56.000, tbaby_fly2 ] {


};

// function tbaby_fly2
// function number 1735 begins at statement 24351
/*
 * OP_STATE	9923	15021	0
 * OP_DONE	0	0	0
 */

void () tbaby_fly2 = [ 57.000, tbaby_fly3 ] {


};

// function tbaby_fly3
// function number 1736 begins at statement 24353
/*
 * OP_STATE	9925	15022	0
 * OP_DONE	0	0	0
 */

void () tbaby_fly3 = [ 58.000, tbaby_fly4 ] {


};

// function tbaby_fly4
// function number 1737 begins at statement 24355
/*
 * OP_STATE	2783	15019	0
 * OP_ADDRESS	28	426	15023
 * OP_LOAD_F	28	426	15024
 * OP_ADD_F	15024	214	15025
 * OP_STOREP_F	15025	15023	0
 * OP_LOAD_F	28	426	15026
 * OP_EQ_F	15026	229	15027
 * OP_IFNOT	15027	2	0
 * OP_CALL0	15018	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_fly4 = [ 59.000, tbaby_fly1 ] {

   self.cnt = (self.cnt + TRUE);
   if ( (self.cnt == MOVETYPE_STEP) ) {

      tbaby_jump5 ();

   }

};

// function tbaby_jump1
// function number 1738 begins at statement 24365
/*
 * OP_STATE	1470	15028	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump1 = [ 50.000, tbaby_jump2 ] {

   ai_face ();

};

// function tbaby_jump2
// function number 1739 begins at statement 24368
/*
 * OP_STATE	9911	15029	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump2 = [ 51.000, tbaby_jump3 ] {

   ai_face ();

};

// function tbaby_jump3
// function number 1740 begins at statement 24371
/*
 * OP_STATE	9913	15030	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump3 = [ 52.000, tbaby_jump4 ] {

   ai_face ();

};

// function tbaby_jump4
// function number 1741 begins at statement 24374
/*
 * OP_STATE	9915	15018	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump4 = [ 53.000, tbaby_jump5 ] {

   ai_face ();

};

// function tbaby_jump5
// function number 1742 begins at statement 24377
/*
 * OP_STATE	9917	15031	0
 * OP_ADDRESS	28	103	15032
 * OP_STOREP_F	235	15032	0
 * OP_ADDRESS	28	146	15033
 * OP_STOREP_FNC	14991	15033	0
 * OP_LOAD_V	28	117	15034
 * OP_STORE_V	15034	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	108	15037
 * OP_LOAD_F	28	108	15038
 * OP_ADD_F	15038	214	15039
 * OP_STOREP_F	15039	15037	0
 * OP_ADDRESS	28	113	15040
 * OP_MUL_VF	59	740	15043
 * OP_ADD_V	15043	14028	15046
 * OP_STOREP_V	15046	15040	0
 * OP_ADDRESS	28	116	15049
 * OP_LOAD_F	28	116	15050
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2003	15051
 * OP_ADD_F	15050	15051	15052
 * OP_STOREP_F	15052	15049	0
 * OP_LOAD_F	28	182	15053
 * OP_BITAND	15053	223	15054
 * OP_IFNOT	15054	5	0
 * OP_ADDRESS	28	182	15055
 * OP_LOAD_F	28	182	15056
 * OP_SUB_F	15056	223	15057
 * OP_STOREP_F	15057	15055	0
 * OP_ADDRESS	28	426	15058
 * OP_STOREP_F	213	15058	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump5 = [ 54.000, tbaby_jump6 ] {

   self.movetype = MOVETYPE_BOUNCE;
   self.touch = Tar_JumpTouch;
   makevectors (self.angles);
   self.origin_z = (self.origin_z + TRUE);
   self.velocity = ((v_forward * globaldef000723) + globaldef004458);
   self.velocity_z = (self.velocity_z + (random () * globaldef001336));
   if ( (self.flags & FL_ONGROUND) ) {

      self.flags = (self.flags - FL_ONGROUND);

   }
   self.cnt = FALSE;

};

// function tbaby_jump6
// function number 1743 begins at statement 24409
/*
 * OP_STATE	9919	15019	0
 * OP_DONE	0	0	0
 */

void () tbaby_jump6 = [ 55.000, tbaby_fly1 ] {


};

// function tbaby_die1
// function number 1744 begins at statement 24411
/*
 * OP_STATE	2019	15060	0
 * OP_ADDRESS	28	163	15061
 * OP_STOREP_F	250	15061	0
 * OP_DONE	0	0	0
 */

void () tbaby_die1 = [ 60.000, tbaby_die2 ] {

   self.takedamage = DAMAGE_NO;

};

// function tbaby_die2
// function number 1745 begins at statement 24415
/*
 * OP_STATE	2019	14965	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	3584	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15062	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	105	15063
 * OP_LOAD_V	28	105	15066
 * OP_LOAD_V	28	113	15069
 * OP_STORE_V	15069	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	217	1	15072
 * OP_SUB_V	15066	15072	15075
 * OP_STOREP_V	15075	15063	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	317	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	15078
 * OP_STORE_V	15078	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	15079
 * OP_STORE_V	15079	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	15080
 * OP_STORE_V	15080	7	0
 * OP_CALL2	500	0	0
 * OP_CALL0	5703	0	0
 * OP_DONE	0	0	0
 */

void () tbaby_die2 = [ 60.000, tbaby_run1 ] {

   T_RadiusDamage (self,self,globaldef001638,world);
   sound (self,CHAN_VOICE,globaldef005039,TRUE,ATTN_NORM);
   self.origin = (self.origin - (FL_CLIENT * normalize (self.velocity)));
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_TAREXPLOSION);
   WriteCoord (MSG_BROADCAST,self.origin);
   WriteCoord (MSG_BROADCAST,self.origin_y);
   WriteCoord (MSG_BROADCAST,self.origin_z);
   BecomeExplosion ();

};
string globaldef005039 /* = "blob/death1.wav" */;

// function monster_tarbaby
// function number 1746 begins at statement 24455
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	15082	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15062	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15004	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15005	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3687	4	0
 * OP_CALL1	511	0	0
 * OP_ADDRESS	28	104	15083
 * OP_STOREP_F	240	15083	0
 * OP_ADDRESS	28	103	15084
 * OP_STOREP_F	229	15084	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	15082	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	15085
 * OP_STOREP_F	2805	15085	0
 * OP_ADDRESS	28	361	15086
 * OP_STOREP_FNC	14938	15086	0
 * OP_ADDRESS	28	362	15087
 * OP_STOREP_FNC	14940	15087	0
 * OP_ADDRESS	28	363	15088
 * OP_STOREP_FNC	14965	15088	0
 * OP_ADDRESS	28	364	15089
 * OP_STOREP_FNC	14990	15089	0
 * OP_ADDRESS	28	365	15090
 * OP_STOREP_FNC	14990	15090	0
 * OP_ADDRESS	28	367	15091
 * OP_STOREP_FNC	15059	15091	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_tarbaby = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model2 (globaldef005041);
   precache_sound2 (globaldef005039);
   precache_sound2 (globaldef005026);
   precache_sound2 (globaldef005027);
   precache_sound2 (globaldef001672);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef005041);
   setsize (self,VEC_HULL_MIN,globaldef004167);
   self.health = globaldef001439;
   self.th_stand = tbaby_stand1;
   self.th_walk = tbaby_walk1;
   self.th_run = tbaby_run1;
   self.th_missile = tbaby_jump1;
   self.th_melee = tbaby_jump1;
   self.th_die = tbaby_die1;
   walkmonster_start ();

};
