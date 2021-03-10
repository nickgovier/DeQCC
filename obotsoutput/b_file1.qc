
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;

void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;

void () SUB_CalcMoveDone;

void () SUB_CalcAngleMoveDone;

void () SUB_Null;

void () SUB_UseTargets;

void () SUB_Remove;

void (entity globaldef1760, entity globaldef1761, entity globaldef1762, float globaldef1763) T_Damage;
float (entity globaldef1797, float globaldef1798, float globaldef1799) T_Heal;
float (entity globaldef1749, entity globaldef1750) CanDamage;
float globaldef508 /* = 0.000 */;
float globaldef509 /* = 0.000 */;
float globaldef510 /* = 0.000 */;
.float finaldest_x;
.float finaldest_y;
.float finaldest_z;
.vector finalangle;
.float count;
.float lip;
.float state;
.vector pos1;
entity globaldef525;
entity globaldef526;
float globaldef527 /* = 0.000 */;
float globaldef528 /* = 0.000 */;
void globaldef529;
.float pos1_x;
.float pos1_y;
.float pos1_z;
.vector pos2;
.float height;
.float waitmin;
.float waitmax;
.float waitmax;
.float distance;
.float volume;
.entity ra_next;
.entity ra_next;
.entity ra_prev;
.float idletime;
.float lasttime;
.float lasttime;
.float laststattime;
.float statstate;
.float mypos;
.float mypos;
.float wins;
.float loses;
.float ratio;
.float motd;
.void() field224;
.void() field225;
.void() field226;
.void() field226;
.void() field227;
.void() field228;
.void() field229;
.void() field229;
.void() field230;
.float field231;
.float field232;
.vector field233;
.vector field237;
.vector field241;
.vector field245;
.float field249;
.float field250;
.float field250;
.float field251;
.float field252;
.vector field253;
.vector field257;
.float field261;
.float field262;
.entity field263;
.float field264;
.float field265;
.entity field266;
.entity field267;
.entity field268;
.float field269;
.float field270;
.float field271;
.float field272;
.float field273;
.float field274;
.float field275;
.float field276;
.float field277;
.float field278;
.vector field279;
.string field283;
.float field284;
.float field285;
.float field286;
.float field287;
.float field288;
.float field289;
.entity field290;
.string field291;
.string field292;
.string field293;
.float field294;
.entity field295;
.entity field296;
.entity field297;
.entity field298;
.entity field299;
.entity field300;
.entity field301;
.entity field302;
.entity field303;
.entity field304;
.entity field305;
.entity field306;
.float field307;
.float field308;
.float field309;
.float field310;
.float field311;
.float field312;
.float field313;
.float field314;
.entity field315;
.entity field315;
.entity field316;
.entity field317;
.entity field318;
.entity field318;
.entity field319;
.entity field320;
.entity field321;
.entity field321;
.entity field322;
.entity field323;
.entity field324;
.float field325;
.float field325;
.float field326;
.float field327;
.float field328;
void globaldef669;
.float field329;
.float field330;
.float field331;
.float field332;
.float field333;
.float field334;
.entity field335;
.entity field336;
.float field337;
.float field338;
.entity field339;
float globaldef681 /* = 8192.000 */;
float globaldef682 /* = 16384.000 */;
float globaldef683 /* = 1.000 */;
float globaldef684 /* = 2.000 */;
float globaldef685 /* = 4.000 */;
float globaldef686 /* = 8.000 */;
float globaldef687 /* = 16.000 */;
float globaldef688 /* = 32.000 */;
float globaldef689 /* = 64.000 */;
float globaldef690 /* = 128.000 */;
float globaldef691 /* = 256.000 */;
float globaldef692 /* = 512.000 */;
float globaldef693 /* = 1024.000 */;
float globaldef694 /* = 2048.000 */;
float globaldef695 /* = 4096.000 */;
float globaldef696 /* = 8192.000 */;
float globaldef697 /* = 16384.000 */;
float globaldef698 /* = 0.000 */;
float globaldef699 /* = 1.000 */;
float globaldef700 /* = 2.000 */;
float globaldef701 /* = 3.000 */;
float globaldef702 /* = 4.000 */;
float globaldef703 /* = 5.000 */;
float globaldef704 /* = 6.000 */;
float globaldef705 /* = 7.000 */;
float globaldef706 /* = 8.000 */;
float globaldef707 /* = 0.000 */;
float globaldef708 /* = 1.000 */;
float globaldef709 /* = 2.000 */;
float globaldef710 /* = 3.000 */;
float globaldef711 /* = 0.000 */;
float globaldef712 /* = 1.000 */;
float globaldef713 /* = 2.000 */;
float globaldef714 /* = 3.000 */;
float globaldef715 /* = 4.000 */;
float globaldef716 /* = 5.000 */;
float globaldef717 /* = 270.000 */;
float globaldef718 /* = 687.000 */;
float globaldef719 /* = 24.000 */;
float globaldef720 /* = 640.000 */;
float globaldef721 /* = 250.000 */;
float globaldef722 /* = 10.000 */;
float globaldef723 /* = 600.000 */;
float globaldef724 /* = 800.000 */;
float globaldef725 /* = 30.000 */;
float globaldef726 /* = 16.000 */;
float globaldef727 /* = 30.000 */;
float globaldef728 /* = 500.000 */;
float globaldef729 /* = 40.000 */;
float globaldef730 /* = 0.000 */;
float globaldef731 /* = 1.000 */;
float globaldef732 /* = 2.000 */;
float globaldef733 /* = 3.000 */;
float globaldef734 /* = 5.000 */;
float globaldef735 /* = 6.000 */;
float globaldef736 /* = 7.000 */;
float globaldef737 /* = 8.000 */;
float globaldef738 /* = 32.000 */;
float globaldef739 /* = 1.000 */;
float globaldef740 /* = 2.000 */;
float globaldef741 /* = 3.000 */;
float globaldef742 /* = 4.000 */;
float globaldef743 /* = 5.000 */;
float globaldef744 /* = 1.000 */;
float globaldef745 /* = 2.000 */;
float globaldef746 /* = 4.000 */;
float globaldef747 /* = 8.000 */;
float globaldef748 /* = 15.000 */;
float globaldef749 /* = 16.000 */;
float globaldef750 /* = 32.000 */;
float globaldef751 /* = 64.000 */;
float globaldef752 /* = 128.000 */;
float globaldef753 /* = 256.000 */;
float globaldef754 /* = 512.000 */;
float globaldef755 /* = 1024.000 */;
float globaldef756 /* = 2048.000 */;
float globaldef757 /* = 4096.000 */;
float globaldef758 /* = 8192.000 */;
float globaldef759 /* = 16384.000 */;
float globaldef760 /* = 32768.000 */;
float globaldef761 /* = 65536.000 */;
float globaldef762 /* = 0.000 */;
float globaldef763 /* = 1.000 */;
float globaldef764 /* = 2.000 */;
float globaldef765 /* = 3.000 */;
float globaldef766 /* = 4.000 */;
float globaldef767 /* = 5.000 */;
float globaldef768 /* = 6.000 */;
float globaldef769 /* = 7.000 */;
float globaldef770 /* = 8.000 */;
float globaldef771 /* = 9.000 */;
float globaldef772 /* = 10.000 */;
float globaldef773 /* = 11.000 */;
float globaldef774 /* = 12.000 */;
float globaldef775 /* = 13.000 */;
float globaldef776 /* = 0.000 */;
float globaldef777 /* = 0.000 */;
float globaldef778 /* = 0.000 */;
float globaldef779 /* = 0.000 */;
float globaldef780 /* = 0.000 */;
float globaldef781 /* = 0.000 */;
float globaldef782 /* = 0.000 */;
float globaldef783 /* = 0.000 */;
float globaldef784 /* = 0.000 */;
float globaldef785 /* = 0.000 */;
float globaldef786 /* = 0.000 */;
float globaldef787 /* = 0.000 */;
float globaldef788 /* = 0.000 */;
float globaldef789 /* = 0.000 */;
float globaldef790 /* = 0.000 */;
float globaldef791 /* = 0.000 */;
float globaldef792 /* = 0.000 */;
float globaldef793 /* = 0.000 */;
float globaldef794 /* = 0.000 */;
float globaldef795 /* = 0.000 */;
float globaldef796 /* = 0.000 */;
float globaldef797 /* = 0.000 */;
float globaldef798 /* = 0.000 */;
float globaldef799 /* = 0.000 */;
float globaldef800 /* = 0.000 */;
float globaldef801 /* = 0.000 */;
float globaldef802 /* = 0.000 */;
float globaldef803 /* = 0.000 */;
float globaldef804 /* = 0.000 */;
float globaldef805 /* = 0.000 */;
float globaldef806 /* = 0.000 */;
float globaldef807 /* = 0.000 */;
entity globaldef808;
entity globaldef809;
entity globaldef810;
entity globaldef811;
entity globaldef812;
entity globaldef813;
entity globaldef814;
entity globaldef815;
entity globaldef816;
entity globaldef817;
entity globaldef818;
entity globaldef819;
entity globaldef820;
void (entity client, string s) bot_stuffcmd;
void (entity client, string s) bot_stuffcmd = #21;

// function func64
// function number 64 begins at statement 1
/*
 * OP_LOAD_F	840	182	842
 * OP_BITAND	842	698	843
 * OP_NOT_F	843	0	844
 * OP_IFNOT	844	4	0
 * OP_STORE_V	840	4	0
 * OP_STORE_V	841	7	0
 * OP_CALL2	838	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef823, string globaldef824) func64 = {

   if ( !(globaldef823.globaldef160 & globaldef681) ) {

      globaldef821 (globaldef823,globaldef824);

   }

};
void (entity client, string s) bot_centerprint;
void (entity client, string s) bot_centerprint = #73;
void (entity client, string s) bot_centerprint2 = #73;
void (entity client, string s) bot_centerprint3 = #73;
void (entity client, string s) bot_centerprint4 = #73;
void (entity client, string s) bot_centerprint5 = #73;
void (entity client, string s) bot_centerprint6 = #73;
void (entity client, string s) bot_centerprint7 = #73;

// function func72
// function number 72 begins at statement 9
/*
 * OP_LOAD_F	853	182	855
 * OP_BITAND	855	698	856
 * OP_NOT_F	856	0	857
 * OP_IFNOT	857	4	0
 * OP_STORE_V	853	4	0
 * OP_STORE_V	854	7	0
 * OP_CALL2	845	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef833, string globaldef834) func72 = {

   if ( !(globaldef833.globaldef160 & globaldef681) ) {

      globaldef825 (globaldef833,globaldef834);

   }

};

void (entity globaldef836, string globaldef837, string globaldef838) centerprint2;

// function centerprint2
// function number 73 begins at statement 17
/*
 * OP_LOAD_F	859	182	862
 * OP_BITAND	862	698	863
 * OP_NOT_F	863	0	864
 * OP_IFNOT	864	5	0
 * OP_STORE_V	859	4	0
 * OP_STORE_V	860	7	0
 * OP_STORE_V	861	10	0
 * OP_CALL3	846	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef836, string globaldef837, string globaldef838) centerprint2 = {

   if ( !(globaldef836.globaldef160 & globaldef681) ) {

      globaldef826 (globaldef836,globaldef837,globaldef838);

   }

};

void (entity globaldef840, string globaldef841, string globaldef842, string globaldef843) func74;

// function func74
// function number 74 begins at statement 26
/*
 * OP_LOAD_F	866	182	870
 * OP_BITAND	870	698	871
 * OP_NOT_F	871	0	872
 * OP_IFNOT	872	6	0
 * OP_STORE_V	866	4	0
 * OP_STORE_V	867	7	0
 * OP_STORE_V	868	10	0
 * OP_STORE_V	869	13	0
 * OP_CALL4	847	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef840, string globaldef841, string globaldef842, string globaldef843) func74 = {

   if ( !(globaldef840.globaldef160 & globaldef681) ) {

      globaldef827 (globaldef840,globaldef841,globaldef842,globaldef843);

   }

};

void (entity globaldef845, string globaldef846, string globaldef847, string globaldef848, string globaldef849) centerprint4;

// function centerprint4
// function number 75 begins at statement 36
/*
 * OP_LOAD_F	874	182	879
 * OP_BITAND	879	698	880
 * OP_NOT_F	880	0	881
 * OP_IFNOT	881	7	0
 * OP_STORE_V	874	4	0
 * OP_STORE_V	875	7	0
 * OP_STORE_V	876	10	0
 * OP_STORE_V	877	13	0
 * OP_STORE_V	878	16	0
 * OP_CALL5	848	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef845, string globaldef846, string globaldef847, string globaldef848, string globaldef849) centerprint4 = {

   if ( !(globaldef845.globaldef160 & globaldef681) ) {

      globaldef828 (globaldef845,globaldef846,globaldef847,globaldef848,globaldef849);

   }

};

void (entity globaldef851, string globaldef852, string globaldef853, string globaldef854, string globaldef855, string globaldef856) func76;

// function func76
// function number 76 begins at statement 47
/*
 * OP_LOAD_F	883	182	889
 * OP_BITAND	889	698	890
 * OP_NOT_F	890	0	891
 * OP_IFNOT	891	8	0
 * OP_STORE_V	883	4	0
 * OP_STORE_V	884	7	0
 * OP_STORE_V	885	10	0
 * OP_STORE_V	886	13	0
 * OP_STORE_V	887	16	0
 * OP_STORE_V	888	19	0
 * OP_CALL6	849	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef851, string globaldef852, string globaldef853, string globaldef854, string globaldef855, string globaldef856) func76 = {

   if ( !(globaldef851.globaldef160 & globaldef681) ) {

      globaldef829 (globaldef851,globaldef852,globaldef853,globaldef854,globaldef855,globaldef856);

   }

};

void (entity globaldef858, string globaldef859, string globaldef860, string globaldef861, string globaldef862, string globaldef863, string globaldef864) centerprint6;

// function centerprint6
// function number 77 begins at statement 59
/*
 * OP_LOAD_F	893	182	900
 * OP_BITAND	900	698	901
 * OP_NOT_F	901	0	902
 * OP_IFNOT	902	9	0
 * OP_STORE_V	893	4	0
 * OP_STORE_V	894	7	0
 * OP_STORE_V	895	10	0
 * OP_STORE_V	896	13	0
 * OP_STORE_V	897	16	0
 * OP_STORE_V	898	19	0
 * OP_STORE_V	899	22	0
 * OP_CALL7	850	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef858, string globaldef859, string globaldef860, string globaldef861, string globaldef862, string globaldef863, string globaldef864) centerprint6 = {

   if ( !(globaldef858.globaldef160 & globaldef681) ) {

      globaldef830 (globaldef858,globaldef859,globaldef860,globaldef861,globaldef862,globaldef863,globaldef864);

   }

};

void (entity globaldef866, string globaldef867, string globaldef868, string globaldef869, string globaldef870, string globaldef871, string globaldef872, string globaldef873) centerprint7;

// function centerprint7
// function number 78 begins at statement 72
/*
 * OP_LOAD_F	904	182	912
 * OP_BITAND	912	698	913
 * OP_NOT_F	913	0	914
 * OP_IFNOT	914	10	0
 * OP_STORE_V	904	4	0
 * OP_STORE_V	905	7	0
 * OP_STORE_V	906	10	0
 * OP_STORE_V	907	13	0
 * OP_STORE_V	908	16	0
 * OP_STORE_V	909	19	0
 * OP_STORE_V	910	22	0
 * OP_STORE_V	911	25	0
 * OP_CALL8	851	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef866, string globaldef867, string globaldef868, string globaldef869, string globaldef870, string globaldef871, string globaldef872, string globaldef873) centerprint7 = {

   if ( !(globaldef866.globaldef160 & globaldef681) ) {

      globaldef831 (globaldef866,globaldef867,globaldef868,globaldef869,globaldef870,globaldef871,globaldef872,globaldef873);

   }

};
void (string s) bprint2;
void (string s) bprint2 = #23;
void (string s) bprint3 = #23;
void (string s) bprint4 = #23;
void (string s) bprint5 = #23;
void (string s) bprint6 = #23;
void (string s) bprint7 = #23;
void (entity client, string s) bot_sprint = #24;
void (entity client, string s) bot_sprint2 = #24;
void (entity client, string s) bot_sprint3 = #24;
void (entity client, string s) bot_sprint4 = #24;
void (entity client, string s) bot_sprint5 = #24;
void (entity client, string s) bot_sprint6 = #24;
void (entity client, string s) bot_sprint7 = #24;

// function func92
// function number 92 begins at statement 86
/*
 * OP_LOAD_F	929	182	931
 * OP_BITAND	931	698	932
 * OP_NOT_F	932	0	933
 * OP_IFNOT	933	4	0
 * OP_STORE_V	929	4	0
 * OP_STORE_V	930	7	0
 * OP_CALL2	921	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef888, string globaldef889) func92 = {

   if ( !(globaldef888.globaldef160 & globaldef681) ) {

      globaldef880 (globaldef888,globaldef889);

   }

};

void (entity globaldef891, string globaldef892, string globaldef893) func93;

// function func93
// function number 93 begins at statement 94
/*
 * OP_LOAD_F	935	182	938
 * OP_BITAND	938	698	939
 * OP_NOT_F	939	0	940
 * OP_IFNOT	940	5	0
 * OP_STORE_V	935	4	0
 * OP_STORE_V	936	7	0
 * OP_STORE_V	937	10	0
 * OP_CALL3	922	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef891, string globaldef892, string globaldef893) func93 = {

   if ( !(globaldef891.globaldef160 & globaldef681) ) {

      globaldef881 (globaldef891,globaldef892,globaldef893);

   }

};

void (entity globaldef895, string globaldef896, string globaldef897, string globaldef898) func94;

// function func94
// function number 94 begins at statement 103
/*
 * OP_LOAD_F	942	182	946
 * OP_BITAND	946	698	947
 * OP_NOT_F	947	0	948
 * OP_IFNOT	948	6	0
 * OP_STORE_V	942	4	0
 * OP_STORE_V	943	7	0
 * OP_STORE_V	944	10	0
 * OP_STORE_V	945	13	0
 * OP_CALL4	923	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef895, string globaldef896, string globaldef897, string globaldef898) func94 = {

   if ( !(globaldef895.globaldef160 & globaldef681) ) {

      globaldef882 (globaldef895,globaldef896,globaldef897,globaldef898);

   }

};

void (entity globaldef900, string globaldef901, string globaldef902, string globaldef903, string globaldef904) sprint4;

// function sprint4
// function number 95 begins at statement 113
/*
 * OP_LOAD_F	950	182	955
 * OP_BITAND	955	698	956
 * OP_NOT_F	956	0	957
 * OP_IFNOT	957	7	0
 * OP_STORE_V	950	4	0
 * OP_STORE_V	951	7	0
 * OP_STORE_V	952	10	0
 * OP_STORE_V	953	13	0
 * OP_STORE_V	954	16	0
 * OP_CALL5	924	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef900, string globaldef901, string globaldef902, string globaldef903, string globaldef904) sprint4 = {

   if ( !(globaldef900.globaldef160 & globaldef681) ) {

      globaldef883 (globaldef900,globaldef901,globaldef902,globaldef903,globaldef904);

   }

};

void (entity globaldef906, string globaldef907, string globaldef908, string globaldef909, string globaldef910, string globaldef911) sprint5;

// function sprint5
// function number 96 begins at statement 124
/*
 * OP_LOAD_F	959	182	965
 * OP_BITAND	965	698	966
 * OP_NOT_F	966	0	967
 * OP_IFNOT	967	8	0
 * OP_STORE_V	959	4	0
 * OP_STORE_V	960	7	0
 * OP_STORE_V	961	10	0
 * OP_STORE_V	962	13	0
 * OP_STORE_V	963	16	0
 * OP_STORE_V	964	19	0
 * OP_CALL6	925	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef906, string globaldef907, string globaldef908, string globaldef909, string globaldef910, string globaldef911) sprint5 = {

   if ( !(globaldef906.globaldef160 & globaldef681) ) {

      globaldef884 (globaldef906,globaldef907,globaldef908,globaldef909,globaldef910,globaldef911);

   }

};

void (entity globaldef913, string globaldef914, string globaldef915, string globaldef916, string globaldef917, string globaldef918, string globaldef919) sprint6;

// function sprint6
// function number 97 begins at statement 136
/*
 * OP_LOAD_F	969	182	976
 * OP_BITAND	976	698	977
 * OP_NOT_F	977	0	978
 * OP_IFNOT	978	9	0
 * OP_STORE_V	969	4	0
 * OP_STORE_V	970	7	0
 * OP_STORE_V	971	10	0
 * OP_STORE_V	972	13	0
 * OP_STORE_V	973	16	0
 * OP_STORE_V	974	19	0
 * OP_STORE_V	975	22	0
 * OP_CALL7	926	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef913, string globaldef914, string globaldef915, string globaldef916, string globaldef917, string globaldef918, string globaldef919) sprint6 = {

   if ( !(globaldef913.globaldef160 & globaldef681) ) {

      globaldef885 (globaldef913,globaldef914,globaldef915,globaldef916,globaldef917,globaldef918,globaldef919);

   }

};

void (entity globaldef921, string globaldef922, string globaldef923, string globaldef924, string globaldef925, string globaldef926, string globaldef927, string globaldef928) sprint7;

// function sprint7
// function number 98 begins at statement 149
/*
 * OP_LOAD_F	980	182	988
 * OP_BITAND	988	698	989
 * OP_NOT_F	989	0	990
 * OP_IFNOT	990	10	0
 * OP_STORE_V	980	4	0
 * OP_STORE_V	981	7	0
 * OP_STORE_V	982	10	0
 * OP_STORE_V	983	13	0
 * OP_STORE_V	984	16	0
 * OP_STORE_V	985	19	0
 * OP_STORE_V	986	22	0
 * OP_STORE_V	987	25	0
 * OP_CALL8	927	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef921, string globaldef922, string globaldef923, string globaldef924, string globaldef925, string globaldef926, string globaldef927, string globaldef928) sprint7 = {

   if ( !(globaldef921.globaldef160 & globaldef681) ) {

      globaldef886 (globaldef921,globaldef922,globaldef923,globaldef924,globaldef925,globaldef926,globaldef927,globaldef928);

   }

};
void (string e) objerror2;
void (string e) objerror2 = #11;
void (string e) objerror3 = #11;
void (string e) objerror4 = #11;
void (string e) objerror5 = #11;
void (string e) objerror6 = #11;
void (string e) objerror7 = #11;

// function IDCopyright
// function number 105 begins at statement 163
/*
 * OP_STORE_V	998	4	0
 * OP_CALL1	472	0	0
 * OP_DONE	0	0	0
 */

void () IDCopyright = {

   globaldef455 (globaldef936);

};
string globaldef936 /* = "The original QuakeC source is Copyright 1996, ID Software." */;
float /* Warning: Could not determine return type */ (entity globaldef6502, entity globaldef6503) func2289;
float (entity globaldef6504, entity globaldef6505) func2290;
float (entity globaldef6506, entity globaldef6507) func2291;
float (entity globaldef6508, entity globaldef6509) func2292;
float (entity globaldef6510, entity globaldef6511) func2293;
float (entity globaldef6512, entity globaldef6513) func2294;
float (entity globaldef6514, entity globaldef6515) func2295;
float /* Warning: Could not determine return type */ (entity globaldef6524, entity globaldef6525) func2296;
float (entity globaldef6526, entity globaldef6527) func2297;
float (entity globaldef6530, entity globaldef6531) func2299;
float (entity globaldef6532, entity globaldef6533) func2300;
float (entity globaldef6528, entity globaldef6529) func2298;
float (entity globaldef6534, entity globaldef6535) func2301;
float (entity globaldef6536, entity globaldef6537) func2302;
float (entity globaldef6538, entity globaldef6539) func2303;
float (entity globaldef6540, entity globaldef6541) func2304;
float (entity globaldef6542, entity globaldef6543) func2305;
float (entity globaldef6544, entity globaldef6545) func2306;
float (entity globaldef6546, entity globaldef6547) func2307;
float (entity globaldef6548, entity globaldef6549) func2308;
float (entity globaldef6550, entity globaldef6551) func2309;
float (entity globaldef6552, entity globaldef6553) func2310;
float (entity globaldef6554, entity globaldef6555) func2311;
float (entity globaldef6557, entity globaldef6558) func2312;
float (entity globaldef6560, entity globaldef6561) func2313;
float (entity globaldef6563, entity globaldef6564) func2314;
float /* Warning: Could not determine return type */ (entity globaldef6565, entity globaldef6566) func2315;
float /* Warning: Could not determine return type */ (entity globaldef6567, entity globaldef6568) func2316;
float /* Warning: Could not determine return type */ (entity globaldef6569, entity globaldef6570) func2317;
float (entity globaldef6571, entity globaldef6572) func2318;
float (entity globaldef6573, entity globaldef6574) func2319;
float (entity globaldef6575, entity globaldef6576) func2320;
float (entity globaldef6577, entity globaldef6578) func2321;
float (entity globaldef6579, entity globaldef6580) func2322;
float (entity globaldef6581, entity globaldef6582) func2323;
float (entity globaldef6583, entity globaldef6584) func2324;
float (entity globaldef6585, entity globaldef6586) func2325;
float (entity globaldef6587, entity globaldef6588) func2326;
float (entity globaldef6589, entity globaldef6590) func2327;
float (entity globaldef6591, entity globaldef6592) func2328;
float (entity globaldef6593, entity globaldef6594) func2329;

void (entity globaldef6617) func2338;
float (entity globaldef6621) func2339;
float (entity globaldef6622) func2340;
float /* Warning: Could not determine return type */ (entity globaldef6624) func2341;
float (entity globaldef6625) func2342;

void () func2255;
float () func2261;
float (float globaldef5684) func2257;

void (float globaldef5688) func2259;

void (float globaldef5689) func2260;

void (float globaldef5691, string globaldef5692) func2262;

void (float globaldef5693, float globaldef5694) func2263;

void (float globaldef5695, float globaldef5696) func2264;

void () func2265;
float /* Warning: Could not determine return type */ (float globaldef5699) func2266;

void (entity globaldef5702, entity globaldef5703) func2267;

void (entity globaldef5704) func2268;

void (entity globaldef5739) func2273;

void () func2277;

void (entity globaldef6690, entity globaldef6691) func2349;

void (entity globaldef6692, vector globaldef6693) func2350;

void (entity globaldef6784) func2357;

void (entity globaldef6798) func2365;

void (entity globaldef6792) func2360;

void (entity globaldef6793) func2361;

void (entity globaldef6796) func2363;

void (entity globaldef6790) func2359;

void (entity globaldef6797) func2364;

void (entity globaldef6785) func2358;

void (entity globaldef6779) func2356;

void (entity globaldef6801, string globaldef6802, float globaldef6803) func2366;

void (entity globaldef6806, string globaldef6807, string globaldef6808, float globaldef6809) func2367;

void (entity globaldef6810, string globaldef6811, string globaldef6812, string globaldef6813, float globaldef6814) func2368;

void (entity globaldef6815, string globaldef6816, float globaldef6817, float globaldef6818) func2369;

void (entity globaldef6819, string globaldef6820, string globaldef6821, float globaldef6822, float globaldef6823) func2370;

void (entity globaldef6824, string globaldef6825, string globaldef6826, string globaldef6827, float globaldef6828, float globaldef6829) func2371;

void (entity globaldef6839) func2374;

void (entity globaldef6840) func2375;
float (entity globaldef6841) func2376;
float (entity globaldef6843) func2378;
float (entity globaldef6842) func2377;
float (entity globaldef6844) func2379;
string () func2373;
string (entity globaldef6830) func2372;

void () func2380;
string (float globaldef5820) func2278;
string (float globaldef5846) func2279;
float /* Warning: Could not determine return type */ (float globaldef5871) func2280;

void (entity globaldef5872) func2281;

void (entity globaldef5898) func2282;

void (entity globaldef6020) func2283;

void (entity globaldef6464) BotChooseTelefragMessage;

void (entity globaldef6144) func2284;

void (entity globaldef6474) func2286;

void (entity globaldef6959) func2388;

void (entity globaldef6975) func2391;
float (entity globaldef6991, entity globaldef6992) func2392;

void (entity globaldef7026) func2397;

void (entity globaldef7040, float globaldef7041) func2399;

void (float globaldef7088) func2410;

void (entity globaldef7102) func2417;

void () func2421;

void () func2423;

void () func2425;

void (float globaldef7118) func2422;

void (float globaldef7125) func2427;

void (float globaldef7127) func2428;

void () func2424;

void () func2429;

void (entity globaldef7123, float globaldef7124) func2426;
float (entity globaldef7667, entity globaldef7668) func2456;
float /* Warning: Could not determine return type */ (vector globaldef7677) func2457;

void () func2458;
float (entity globaldef7683) func2459;
float (entity globaldef7692) func2460;
float /* Warning: Could not determine return type */ (entity globaldef7693) func2461;
float (entity globaldef7702, entity globaldef7703) func2462;
float (entity globaldef7728, entity globaldef7729, entity globaldef7730) func2463;
float /* Warning: Could not determine return type */ (entity globaldef7841, entity globaldef7842) func2466;
float /* Warning: Could not determine return type */ (entity globaldef7843, entity globaldef7844) func2467;

void (entity globaldef7646, vector globaldef7647, float globaldef7651, float globaldef7652) func2453;
float (entity globaldef7657, entity globaldef7658) func2454;
entity (entity globaldef7660) func2455;
float (entity globaldef7579, float globaldef7580) func2442;
float (entity globaldef7582, float globaldef7583) BotJumpToGoal;
float /* Warning: Could not determine return type */ (entity globaldef7585, float globaldef7586, float globaldef7587) func2444;
float /* Warning: Could not determine return type */ (entity globaldef7593, float globaldef7594, float globaldef7595) func2445;
float (entity globaldef7601) func2446;

void (entity globaldef7845) func2468;
vector (entity globaldef7869) func2474;
entity () func2470;

void (entity globaldef7858, entity globaldef7859) func2471;

void (entity globaldef7860, entity globaldef7861) func2472;

void (entity globaldef7868) func2473;
float (entity globaldef7978, float globaldef7979, float globaldef7980) func2482;
float (entity globaldef7998, float globaldef7999) func2483;
float (entity globaldef8024) func2489;
entity (entity globaldef8038, entity globaldef8039) func2491;
entity (entity globaldef8046, entity globaldef8047) func2492;
float /* Warning: Could not determine return type */ (entity globaldef8101) func2497;
float /* Warning: Could not determine return type */ (entity globaldef8103) func2498;

void (entity globaldef8110) func2499;

void (entity globaldef8111) func2500;

void (entity globaldef8113) func2502;

void (entity globaldef8115) func2504;

void (entity globaldef8116) func2505;

void (entity globaldef8118) func2507;

void (entity globaldef8130) func2509;

void (entity globaldef8134) func2512;

void (entity globaldef8132) func2510;

void (entity globaldef8136) func2514;

void (entity globaldef8139) func2516;

void (entity globaldef8142) func2518;

void (entity globaldef8143) func2519;

void (entity globaldef8112) func2501;

void (entity globaldef8114) func2503;

void (entity globaldef8117) func2506;

void (entity globaldef8119) func2508;

void (entity globaldef8135) func2513;

void (entity globaldef8133) func2511;

void (entity globaldef8137) func2515;

void (entity globaldef8140) func2517;

void (entity globaldef8144) func2520;

void () func2521;

void (entity globaldef8148) func2522;

void () func2523;

void () func2524;

void () func2525;

void () func2526;

void () func2532;

void () func2536;

void () func2540;

void () func2544;

void () func2548;

void () func2550;

void () func2552;

void (entity globaldef8189, float globaldef8190) func2571;

void () func2637;

void () func2638;
float (entity globaldef8983, float globaldef8984, entity globaldef8985) func2640;
float (entity globaldef8986, float globaldef8987, entity globaldef8988) func2641;
float (entity globaldef8989, float globaldef8990, entity globaldef8991) func2642;
float (entity globaldef8992, float globaldef8993, entity globaldef8994) func2643;
float (entity globaldef8995, float globaldef8996, entity globaldef8997) func2644;
float (entity globaldef8998, float globaldef8999, entity globaldef9000) func2645;
float (entity globaldef9001, float globaldef9002, entity globaldef9003) func2646;
float (entity globaldef9004, float globaldef9005, entity globaldef9006) func2647;

void () func2657;

void () func2660;

void () func2661;

void () func2662;

void () func2663;

void (vector globaldef9133, float globaldef9137, float globaldef9138, string globaldef9139) func2668;

void (float globaldef9141, float globaldef9142, float globaldef9143, float globaldef9144, float globaldef9145) func2669;

void (float globaldef9149, float globaldef9150, float globaldef9151, float globaldef9152, float globaldef9153) func2670;
float (entity globaldef9161, entity globaldef9162) func2673;

void () func2680;

void (entity globaldef9179) func2675;

void (entity globaldef9252, entity globaldef9253) func2686;

void (entity globaldef9186, entity globaldef9187) func2676;

void (entity globaldef9193, entity globaldef9194) func2677;

void (entity globaldef9241, entity globaldef9242, float globaldef9243, entity globaldef9244) func2683;

void (entity globaldef9248, entity globaldef9249) func2685;
float (entity globaldef9258, entity globaldef9259) func2689;
float (entity globaldef9260, entity globaldef9261) MovingEntityCached;
float (entity globaldef9254, entity globaldef9255) func2687;
float (entity globaldef9256, entity globaldef9257) func2688;
float /* Warning: Could not determine return type */ (entity globaldef9262) func2691;

void (entity globaldef9275, entity globaldef9276) func2692;

void (entity globaldef9548) func2738;

void (entity globaldef9550) func2739;

void () func2748;

void () func2704;

void () func2719;

void () func2708;

void (entity globaldef2819, float globaldef2820) func366;

void (entity globaldef2797) func365;

void (entity globaldef2791) func364;

void () func362;

void (string globaldef2761) func356;
entity (string globaldef2729) func353;

void () func372;
float globaldef1160 /* = 0.000 */;
float globaldef1161 /* = 1.000 */;
float globaldef1162 /* = 2.000 */;
float globaldef1163 /* = 3.000 */;
float globaldef1164 /* = 4.000 */;
float globaldef1165 /* = 5.000 */;
float globaldef1166 /* = 6.000 */;
float globaldef1167 /* = 7.000 */;
entity (entity globaldef1169) func106;

// function func106
// function number 106 begins at statement 166
/*
 * OP_EQ_E	1231	30	1232
 * OP_IFNOT	1232	3	0
 * OP_ADDRESS	28	426	1233
 * OP_STOREP_F	213	1233	0
 * OP_LOAD_F	28	426	1234
 * OP_EQ_F	1234	213	1235
 * OP_IFNOT	1235	10	0
 * OP_STORE_V	1231	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1236	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	1231	0
 * OP_EQ_E	1231	30	1237
 * OP_IFNOT	1237	3	0
 * OP_ADDRESS	28	426	1238
 * OP_STOREP_F	214	1238	0
 * OP_LOAD_F	28	426	1239
 * OP_EQ_F	1239	214	1240
 * OP_IFNOT	1240	6	0
 * OP_STORE_V	1231	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1241	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	1231	0
 * OP_RETURN	1231	0	0
 * OP_DONE	0	0	0
 */
entity (entity globaldef1169) func106 = {

   if ( (globaldef1169 == world) ) {

      self.cnt = FALSE;

   }
   if ( (self.cnt == FALSE) ) {

      globaldef1169 = find (globaldef1169,classname,"player");
      if ( (globaldef1169 == world) ) {

         self.cnt = TRUE;

      }

   }
   if ( (self.cnt == TRUE) ) {

      globaldef1169 = find (globaldef1169,classname,globaldef1171);

   }
   return ( globaldef1169 );

};
string globaldef1171 /* = "bot" */;

void (entity globaldef1173) func107;

// function func107
// function number 107 begins at statement 192
/*
 * OP_LOAD_S	1243	129	1244
 * OP_EQ_S	1244	1236	1245
 * OP_IFNOT	1245	5	0
 * OP_LOAD_V	1243	175	1246
 * OP_STORE_V	1246	4	0
 * OP_CALL1	452	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_S	1243	129	1249
 * OP_EQ_S	1249	1241	1250
 * OP_IFNOT	1250	5	0
 * OP_LOAD_V	1243	175	1251
 * OP_STORE_V	1251	4	0
 * OP_CALL1	452	0	0
 * OP_GOTO	4	0	0
 * OP_LOAD_V	1243	117	1254
 * OP_STORE_V	1254	4	0
 * OP_CALL1	452	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1173) func107 = {

   if ( (globaldef1173.classname == "player") ) {

      makevectors (globaldef1173.globaldef153);

   } else {

      if ( (globaldef1173.classname == globaldef1171) ) {

         makevectors (globaldef1173.globaldef153);

      } else {

         makevectors (globaldef1173.angles);

      }

   }

};
void (entity client, string s) camcenterprint1;
void (entity client, string s) camcenterprint1 = #73;
void (entity client, string s) camcenterprint2 = #73;
void (entity client, string s) camcenterprint3 = #73;
void (entity client, string s) camcenterprint4 = #73;
void (entity client, string s) camcenterprint5 = #73;
void (entity client, string s) camcenterprint6 = #73;
void (entity client, string s) camcenterprint7 = #73;

// function func115
// function number 115 begins at statement 210
/*
 * OP_LOAD_F	1265	153	1269
 * OP_LT	1269	214	1270
 * OP_IFNOT	1270	3	0
 * OP_STORE_S	1271	1267	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	1265	153	1272
 * OP_STORE_V	1272	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	1267	0
 * OP_LOAD_F	1265	153	1273
 * OP_NE_F	1273	214	1274
 * OP_IFNOT	1274	3	0
 * OP_STORE_S	1275	1268	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	1276	1268	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1266	7	0
 * OP_STORE_V	1277	10	0
 * OP_LOAD_S	1265	180	1278
 * OP_STORE_V	1278	13	0
 * OP_STORE_V	1279	16	0
 * OP_STORE_V	1267	19	0
 * OP_STORE_V	1268	22	0
 * OP_CALL7	1262	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1182, string globaldef1183) func115 = {

   local string globaldef1184;
   local string globaldef1185;

   if ( (globaldef1182.globaldef131 < TRUE) ) {

      globaldef1184 = globaldef1186;

   } else {

      globaldef1184 = globaldef457 (globaldef1182.globaldef131);

   }
   if ( (globaldef1182.globaldef131 != TRUE) ) {

      globaldef1185 = globaldef1187;

   } else {

      globaldef1185 = globaldef1188;

   }
   globaldef1179 (self,globaldef1183,globaldef1189,globaldef1182.globaldef158,globaldef1190,globaldef1184,globaldef1185);

};
string globaldef1186 /* = "no" */;
string globaldef1187 /* = " frags" */;
string globaldef1188 /* = " frag" */;
string globaldef1189 /* = "\n\n\n" */;
string globaldef1190 /* = " - " */;
float (float globaldef1192) func116;

// function func116
// function number 116 begins at statement 235
/*
 * OP_LT	1281	1283	1284
 * OP_IFNOT	1284	2	0
 * OP_RETURN	213	0	0
 * OP_GT	1281	214	1285
 * OP_IFNOT	1285	3	0
 * OP_STORE_F	1281	1282	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	214	1282	0
 * OP_MUL_F	1282	1282	1286
 * OP_ADD_F	1281	1286	1287
 * OP_MUL_F	216	1282	1288
 * OP_DIV_F	1287	1288	1289
 * OP_STORE_F	1289	1282	0
 * OP_MUL_F	1282	1282	1290
 * OP_SUB_F	1290	1281	1291
 * OP_STORE_V	1291	4	0
 * OP_CALL1	488	0	0
 * OP_MUL_F	1281	1283	1292
 * OP_GT	1	1292	1293
 * OP_IF	1293	-11	0
 * OP_RETURN	1282	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef1192) func116 = {

   local float globaldef1193;

   if ( (globaldef1192 < globaldef1194) ) {

      return ( FALSE );

   }
   if ( (globaldef1192 > TRUE) ) {

      globaldef1193 = globaldef1192;

   } else {

      globaldef1193 = TRUE;

   }
   do {

      globaldef1193 = ((globaldef1192 + (globaldef1193 * globaldef1193)) / (FL_SWIM * globaldef1193));

   } while ( (globaldef471 (((globaldef1193 * globaldef1193) - globaldef1192)) > (globaldef1192 * globaldef1194)) );
   return ( globaldef1193 );

};
float (float globaldef1196) func117;

// function func117
// function number 117 begins at statement 257
/*
 * OP_GT	1295	1296	1297
 * OP_IFNOT	1297	4	0
 * OP_SUB_F	1295	1298	1299
 * OP_STORE_F	1299	1295	0
 * OP_GOTO	-4	0	0
 * OP_LT	1295	1300	1301
 * OP_IFNOT	1301	4	0
 * OP_ADD_F	1295	1298	1302
 * OP_STORE_F	1302	1295	0
 * OP_GOTO	-4	0	0
 * OP_RETURN	1295	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef1196) func117 = {

   while ( (globaldef1196 > globaldef1197) ) {

      globaldef1196 = (globaldef1196 - globaldef1198);

   }
   while ( (globaldef1196 < globaldef1199) ) {

      globaldef1196 = (globaldef1196 + globaldef1198);

   }
   return ( globaldef1196 );

};
float globaldef1197 /* = 180.000 */;
float globaldef1198 /* = 360.000 */;
float globaldef1199 /* = -180.000 */;
float /* Warning: Could not determine return type */ (vector globaldef1201) func118;

// function func118
// function number 118 begins at statement 269
/*
 * OP_LOAD_V	28	105	1307
 * OP_STORE_V	1307	4	0
 * OP_STORE_V	1304	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	1310
 * OP_AND	79	80	1311
 * OP_NOT_F	1311	0	1312
 * OP_AND	1310	1312	1313
 * OP_RETURN	1313	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (vector globaldef1201) func118 = {

   globaldef449 (self.origin,globaldef1201,TRUE,self);
   return ( ((trace_fraction == TRUE) && !(trace_inopen && trace_inwater)) );

};
float /* Warning: Could not determine return type */ (entity globaldef1206) func119;

// function func119
// function number 119 begins at statement 281
/*
 * OP_LOAD_V	1315	105	1319
 * OP_STORE_V	1319	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_V	1315	105	1322
 * OP_STORE_V	1322	1316	0
 * OP_LOAD_F	1315	97	1325
 * OP_STORE_F	1325	1318	0
 * OP_STORE_V	1316	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_F	1315	101	1326
 * OP_SUB_F	1326	217	1327
 * OP_STORE_F	1327	1318	0
 * OP_STORE_V	1316	4	0
 * OP_CALL1	1303	0	0
 * OP_RETURN	1	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (entity globaldef1206) func119 = {

   local vector globaldef1207;

   if ( globaldef1200 (globaldef1206.origin) ) {

      return ( TRUE );

   }
   globaldef1207 = globaldef1206.origin;
   globaldef1210 = globaldef1206.globaldef75;
   if ( globaldef1200 (globaldef1207) ) {

      return ( TRUE );

   }
   globaldef1210 = (globaldef1206.globaldef79 - FL_CLIENT);
   return ( globaldef1200 (globaldef1207) );

};
entity () func120;

// function func120
// function number 120 begins at statement 301
/*
 * OP_LOAD_V	28	175	1336
 * OP_STORE_V	1336	4	0
 * OP_CALL1	452	0	0
 * OP_STORE_ENT	30	1330	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1329	0
 * OP_STORE_F	213	1335	0
 * OP_NE_E	1329	30	1339
 * OP_IFNOT	1339	29	0
 * OP_LOAD_F	1329	165	1340
 * OP_EQ_F	1340	246	1341
 * OP_IFNOT	1341	22	0
 * OP_LOAD_V	1329	105	1342
 * OP_LOAD_V	28	105	1345
 * OP_SUB_V	1342	1345	1348
 * OP_STORE_V	1348	1331	0
 * OP_STORE_V	1331	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	1331	0
 * OP_MUL_F	59	1331	1351
 * OP_MUL_F	60	1332	1352
 * OP_ADD_F	1351	1352	1353
 * OP_MUL_F	61	1333	1354
 * OP_ADD_F	1353	1354	1355
 * OP_STORE_F	1355	1334	0
 * OP_GT	1334	1335	1356
 * OP_IFNOT	1356	7	0
 * OP_LOAD_V	1329	105	1357
 * OP_STORE_V	1357	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	3	0
 * OP_STORE_ENT	1329	1330	0
 * OP_STORE_F	1334	1335	0
 * OP_STORE_V	1329	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1329	0
 * OP_GOTO	-29	0	0
 * OP_RETURN	1330	0	0
 * OP_DONE	0	0	0
 */
entity () func120 = {

   local entity globaldef1212;
   local entity globaldef1213;
   local vector globaldef1214;
   local float globaldef1218;
   local float globaldef1219;

   makevectors (self.globaldef153);
   globaldef1213 = world;
   globaldef1212 = globaldef1168 (world);
   globaldef1219 = FALSE;
   while ( (globaldef1212 != world) ) {

      if ( (globaldef1212.globaldef143 == DEAD_NO) ) {

         globaldef1214 = (globaldef1212.origin - self.origin);
         globaldef1214 = globaldef442 (globaldef1214);
         globaldef1218 = (((v_forward_x * globaldef1214_x) + (globaldef34 * globaldef1216)) + (globaldef35 * globaldef1217));
         if ( (globaldef1218 > globaldef1219) ) {

            if ( globaldef1200 (globaldef1212.origin) ) {

               globaldef1213 = globaldef1212;
               globaldef1219 = globaldef1218;

            }

         }

      }
      globaldef1212 = globaldef1168 (globaldef1212);

   }
   return ( globaldef1213 );

};
float /* Warning: Could not determine return type */ (float globaldef1221, float globaldef1222) func121;

// function func121
// function number 121 begins at statement 341
/*
 * OP_LT	1361	213	1366
 * OP_IFNOT	1366	3	0
 * OP_SUB_F	213	1362	1367
 * OP_STORE_F	1367	1362	0
 * OP_STORE_F	32	1364	0
 * OP_DIV_F	1361	1362	1368
 * OP_STORE_V	1368	4	0
 * OP_CALL1	1280	0	0
 * OP_STORE_F	1	1365	0
 * OP_GT	1364	1365	1369
 * OP_IFNOT	1369	3	0
 * OP_RETURN	1361	0	0
 * OP_GOTO	6	0	0
 * OP_MUL_F	1362	1364	1370
 * OP_MUL_F	216	1365	1371
 * OP_SUB_F	1371	1364	1372
 * OP_MUL_F	1370	1372	1373
 * OP_RETURN	1373	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (float globaldef1221, float globaldef1222) func121 = {

   local float globaldef1223;
   local float globaldef1224;
   local float globaldef1225;

   if ( (globaldef1221 < FALSE) ) {

      globaldef1222 = (FALSE - globaldef1222);

   }
   globaldef1224 = frametime;
   globaldef1225 = globaldef1191 ((globaldef1221 / globaldef1222));
   if ( (globaldef1224 > globaldef1225) ) {

      return ( globaldef1221 );

   } else {

      return ( ((globaldef1222 * globaldef1224) * ((FL_SWIM * globaldef1225) - globaldef1224)) );

   }

};
vector (float globaldef1227, float globaldef1228, float globaldef1229) func122;

// function func122
// function number 122 begins at statement 360
/*
 * OP_STORE_V	1375	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_F	1	1375	0
 * OP_DIV_F	1376	216	1388
 * OP_STORE_F	1388	1381	0
 * OP_MUL_F	1377	1375	1389
 * OP_STORE_F	1389	1382	0
 * OP_MUL_F	1381	1381	1390
 * OP_STORE_F	1390	1383	0
 * OP_STORE_F	32	1378	0
 * OP_STORE_V	1382	4	0
 * OP_CALL1	488	0	0
 * OP_LT	1	1383	1391
 * OP_IFNOT	1391	4	0
 * OP_GT	1376	213	1392
 * OP_STORE_F	1392	1384	0
 * OP_GOTO	3	0	0
 * OP_GT	1375	213	1393
 * OP_STORE_F	1393	1384	0
 * OP_IFNOT	1384	10	0
 * OP_ADD_F	1383	1382	1394
 * OP_DIV_F	1394	216	1395
 * OP_STORE_V	1395	4	0
 * OP_CALL1	1280	0	0
 * OP_DIV_F	1	1377	1396
 * OP_STORE_F	1396	1380	0
 * OP_SUB_F	213	1377	1397
 * OP_STORE_F	1397	1377	0
 * OP_GOTO	7	0	0
 * OP_SUB_F	1383	1382	1398
 * OP_DIV_F	1398	216	1399
 * OP_STORE_V	1399	4	0
 * OP_CALL1	1280	0	0
 * OP_DIV_F	1	1377	1400
 * OP_STORE_F	1400	1380	0
 * OP_DIV_F	1381	1377	1401
 * OP_SUB_F	1380	1401	1402
 * OP_STORE_F	1402	1379	0
 * OP_GT	1379	1378	1403
 * OP_IFNOT	1403	11	0
 * OP_MUL_F	1377	1378	1404
 * OP_ADD_F	1404	1376	1405
 * OP_MUL_F	1405	1378	1406
 * OP_ADD_F	1406	1375	1407
 * OP_STORE_F	1407	1375	0
 * OP_MUL_F	1377	1378	1408
 * OP_MUL_F	1408	216	1409
 * OP_ADD_F	1409	1376	1410
 * OP_STORE_F	1410	1376	0
 * OP_GOTO	26	0	0
 * OP_MUL_F	1377	1379	1411
 * OP_ADD_F	1411	1376	1412
 * OP_MUL_F	1412	1379	1413
 * OP_ADD_F	1413	1375	1414
 * OP_STORE_F	1414	1375	0
 * OP_MUL_F	1377	1379	1415
 * OP_MUL_F	1415	216	1416
 * OP_ADD_F	1416	1376	1417
 * OP_STORE_F	1417	1376	0
 * OP_SUB_F	1378	1379	1418
 * OP_STORE_F	1418	1379	0
 * OP_LT	1379	1380	1419
 * OP_IFNOT	1419	11	0
 * OP_MUL_F	1377	1379	1420
 * OP_SUB_F	1376	1420	1421
 * OP_MUL_F	1421	1379	1422
 * OP_ADD_F	1422	1375	1423
 * OP_STORE_F	1423	1375	0
 * OP_MUL_F	1377	1379	1424
 * OP_MUL_F	1424	216	1425
 * OP_SUB_F	1376	1425	1426
 * OP_STORE_F	1426	1376	0
 * OP_GOTO	3	0	0
 * OP_STORE_F	213	1375	0
 * OP_STORE_F	213	1376	0
 * OP_STORE_F	1375	1385	0
 * OP_STORE_F	1376	1386	0
 * OP_RETURN	1385	0	0
 * OP_DONE	0	0	0
 */
vector (float globaldef1227, float globaldef1228, float globaldef1229) func122 = {

   local float globaldef1230;
   local float globaldef1231;
   local float globaldef1232;
   local float globaldef1233;
   local float globaldef1234;
   local float globaldef1235;
   local float globaldef1236;
   local vector globaldef1237;

   globaldef1227 = globaldef1195 (globaldef1227);
   globaldef1233 = (globaldef1228 / FL_SWIM);
   globaldef1234 = (globaldef1229 * globaldef1227);
   globaldef1235 = (globaldef1233 * globaldef1233);
   globaldef1230 = frametime;
   if ( (globaldef471 (globaldef1234) < globaldef1235) ) {

      globaldef1236 = (globaldef1228 > FALSE);

   } else {

      globaldef1236 = (globaldef1227 > FALSE);

   }
   if ( globaldef1236 ) {

      globaldef1232 = (globaldef1191 (((globaldef1235 + globaldef1234) / FL_SWIM)) / globaldef1229);
      globaldef1229 = (FALSE - globaldef1229);

   } else {

      globaldef1232 = (globaldef1191 (((globaldef1235 - globaldef1234) / FL_SWIM)) / globaldef1229);

   }
   globaldef1231 = (globaldef1232 - (globaldef1233 / globaldef1229));
   if ( (globaldef1231 > globaldef1230) ) {

      globaldef1227 = ((((globaldef1229 * globaldef1230) + globaldef1228) * globaldef1230) + globaldef1227);
      globaldef1228 = (((globaldef1229 * globaldef1230) * FL_SWIM) + globaldef1228);

   } else {

      globaldef1227 = ((((globaldef1229 * globaldef1231) + globaldef1228) * globaldef1231) + globaldef1227);
      globaldef1228 = (((globaldef1229 * globaldef1231) * FL_SWIM) + globaldef1228);
      globaldef1231 = (globaldef1230 - globaldef1231);
      if ( (globaldef1231 < globaldef1232) ) {

         globaldef1227 = (((globaldef1228 - (globaldef1229 * globaldef1231)) * globaldef1231) + globaldef1227);
         globaldef1228 = (globaldef1228 - ((globaldef1229 * globaldef1231) * FL_SWIM));

      } else {

         globaldef1227 = FALSE;
         globaldef1228 = FALSE;

      }

   }
   globaldef1237_x = globaldef1227;
   globaldef1239 = globaldef1228;
   return ( globaldef1237 );

};
float /* Warning: Could not determine return type */ (vector globaldef1242) func123;

// function func123
// function number 123 begins at statement 439
/*
 * OP_STORE_V	1428	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	1434	0
 * OP_MUL_FV	1438	1434	1439
 * OP_STORE_V	1439	1428	0
 * OP_MUL_FV	230	1434	1442
 * OP_STORE_V	1442	1434	0
 * OP_LOAD_ENT	28	181	1445
 * OP_LOAD_V	1445	105	1446
 * OP_STORE_V	1446	1431	0
 * OP_LOAD_ENT	28	181	1449
 * OP_LOAD_F	1449	101	1450
 * OP_SUB_F	1450	217	1451
 * OP_STORE_F	1451	1433	0
 * OP_STORE_V	1431	4	0
 * OP_ADD_V	1431	1428	1452
 * OP_STORE_V	1452	7	0
 * OP_STORE_V	213	10	0
 * OP_LOAD_ENT	28	181	1455
 * OP_STORE_V	1455	13	0
 * OP_CALL4	466	0	0
 * OP_NE_E	78	30	1456
 * OP_IFNOT	1456	2	0
 * OP_RETURN	1457	0	0
 * OP_AND	79	80	1458
 * OP_IFNOT	1458	2	0
 * OP_RETURN	1457	0	0
 * OP_SUB_V	71	1434	1459
 * OP_STORE_V	1459	71	0
 * OP_STORE_V	71	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	277	1462
 * OP_IFNOT	1462	2	0
 * OP_RETURN	1457	0	0
 * OP_LOAD_ENT	28	181	1463
 * OP_LOAD_V	1463	105	1464
 * OP_SUB_V	1464	71	1467
 * OP_STORE_V	1467	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	1437	0
 * OP_LT	1437	1470	1471
 * OP_IFNOT	1471	2	0
 * OP_RETURN	1457	0	0
 * OP_SUB_F	1472	1437	1473
 * OP_STORE_V	1473	4	0
 * OP_CALL1	488	0	0
 * OP_RETURN	1	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (vector globaldef1242) func123 = {

   local vector globaldef1246;
   local vector globaldef1250;
   local float globaldef1254;

   globaldef1250 = globaldef442 (globaldef1242);
   globaldef1242 = (globaldef1255 * globaldef1250);
   globaldef1250 = (MOVETYPE_FLY * globaldef1250);
   globaldef1246 = self.enemy.origin;
   globaldef1249 = (self.enemy.globaldef79 - FL_CLIENT);
   globaldef449 (globaldef1246,(globaldef1246 + globaldef1242),FALSE,self.enemy);
   if ( (trace_ent != world) ) {

      return ( globaldef1256 );

   }
   if ( (trace_inopen && trace_inwater) ) {

      return ( globaldef1256 );

   }
   trace_endpos = (trace_endpos - globaldef1250);
   if ( (globaldef470 (trace_endpos) == CONTENT_SOLID) ) {

      return ( globaldef1256 );

   }
   globaldef1254 = vlen ((self.enemy.origin - trace_endpos));
   if ( (globaldef1254 < globaldef1257) ) {

      return ( globaldef1256 );

   }
   return ( globaldef471 ((globaldef1258 - globaldef1254)) );

};
float globaldef1256 /* = 1111.000 */;
float globaldef1257 /* = 50.000 */;
float globaldef1258 /* = 333.000 */;

void (float globaldef1260, float globaldef1261) func124;

// function func124
// function number 124 begins at statement 487
/*
 * OP_LOAD_V	28	105	1484
 * OP_STORE_V	1484	4	0
 * OP_LOAD_V	28	406	1487
 * OP_STORE_V	1487	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_F	70	214	1490
 * OP_IFNOT	1490	3	0
 * OP_STORE_F	213	1475	0
 * OP_STORE_F	213	1476	0
 * OP_EQ_F	1475	213	1491
 * OP_IFNOT	1491	6	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	406	1492
 * OP_STORE_V	1492	7	0
 * OP_CALL2	453	0	0
 * OP_GOTO	22	0	0
 * OP_LOAD_V	28	406	1495
 * OP_LOAD_V	28	105	1498
 * OP_SUB_V	1495	1498	1501
 * OP_STORE_V	1501	1477	0
 * OP_STORE_V	1477	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	1483	0
 * OP_STORE_V	1477	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	1477	0
 * OP_STORE_V	1483	4	0
 * OP_STORE_V	1475	7	0
 * OP_CALL2	1360	0	0
 * OP_STORE_F	1	1483	0
 * OP_MUL_FV	1483	1477	1504
 * OP_STORE_V	1504	1477	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	1507
 * OP_ADD_V	1507	1477	1510
 * OP_STORE_V	1510	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	174	1513
 * OP_STOREP_F	214	1513	0
 * OP_ADDRESS	28	103	1514
 * OP_STOREP_F	227	1514	0
 * OP_LOAD_F	28	438	1515
 * OP_NE_F	1515	1229	1516
 * OP_IFNOT	1516	8	0
 * OP_LOAD_V	28	410	1517
 * OP_LOAD_V	28	406	1520
 * OP_SUB_V	1517	1520	1523
 * OP_STORE_V	1523	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	1477	0
 * OP_GOTO	7	0	0
 * OP_LOAD_V	28	410	1526
 * OP_LOAD_V	28	105	1529
 * OP_SUB_V	1526	1529	1532
 * OP_STORE_V	1532	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	1477	0
 * OP_STORE_F	213	1479	0
 * OP_SUB_F	1298	1477	1535
 * OP_STORE_V	1535	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_F	1	1477	0
 * OP_STORE_V	1478	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_F	1	1478	0
 * OP_GT	1477	1536	1537
 * OP_IFNOT	1537	3	0
 * OP_STORE_F	1536	1477	0
 * OP_GOTO	4	0	0
 * OP_LT	1477	1538	1539
 * OP_IFNOT	1539	2	0
 * OP_STORE_F	1538	1477	0
 * OP_EQ_F	1476	213	1540
 * OP_IFNOT	1540	6	0
 * OP_ADDRESS	28	117	1541
 * OP_STOREP_V	1477	1541	0
 * OP_ADDRESS	28	400	1544
 * OP_STOREP_V	286	1544	0
 * OP_GOTO	37	0	0
 * OP_LOAD_F	28	118	1547
 * OP_SUB_F	1547	1477	1548
 * OP_STORE_V	1548	4	0
 * OP_LOAD_F	28	401	1549
 * OP_STORE_V	1549	7	0
 * OP_STORE_V	1476	10	0
 * OP_CALL3	1374	0	0
 * OP_STORE_V	1	1480	0
 * OP_ADDRESS	28	401	1550
 * OP_STOREP_F	1481	1550	0
 * OP_ADDRESS	28	118	1551
 * OP_ADD_F	1477	1480	1552
 * OP_STOREP_F	1552	1551	0
 * OP_LOAD_F	28	119	1553
 * OP_SUB_F	1553	1478	1554
 * OP_STORE_V	1554	4	0
 * OP_LOAD_F	28	402	1555
 * OP_STORE_V	1555	7	0
 * OP_STORE_V	1476	10	0
 * OP_CALL3	1374	0	0
 * OP_STORE_V	1	1480	0
 * OP_ADDRESS	28	402	1556
 * OP_STOREP_F	1481	1556	0
 * OP_ADDRESS	28	119	1557
 * OP_ADD_F	1478	1480	1558
 * OP_STOREP_F	1558	1557	0
 * OP_ADDRESS	28	118	1559
 * OP_LOAD_F	28	118	1560
 * OP_STORE_V	1560	4	0
 * OP_CALL1	1294	0	0
 * OP_STOREP_F	1	1559	0
 * OP_ADDRESS	28	119	1561
 * OP_LOAD_F	28	119	1562
 * OP_STORE_V	1562	4	0
 * OP_CALL1	1294	0	0
 * OP_STOREP_F	1	1561	0
 * OP_ADDRESS	28	175	1563
 * OP_LOAD_V	28	117	1566
 * OP_STOREP_V	1566	1563	0
 * OP_DONE	0	0	0
 */

void (float globaldef1260, float globaldef1261) func124 = {

   local vector globaldef1262;
   local vector globaldef1266;
   local float globaldef1270;

   globaldef449 (self.origin,self.globaldef389,TRUE,self);
   if ( (trace_fraction != TRUE) ) {

      globaldef1260 = FALSE;
      globaldef1261 = FALSE;

   }
   if ( (globaldef1260 == FALSE) ) {

      setorigin (self,self.globaldef389);

   } else {

      globaldef1262 = (self.globaldef389 - self.origin);
      globaldef1270 = vlen (globaldef1262);
      globaldef1262 = globaldef442 (globaldef1262);
      globaldef1270 = globaldef1220 (globaldef1270,globaldef1260);
      globaldef1262 = (globaldef1270 * globaldef1262);
      setorigin (self,(self.origin + globaldef1262));

   }
   self.globaldef152 = TRUE;
   self.movetype = MOVETYPE_NONE;
   if ( (self.globaldef421 != globaldef1167) ) {

      globaldef1262 = globaldef478 ((self.globaldef393 - self.globaldef389));

   } else {

      globaldef1262 = globaldef478 ((self.globaldef393 - self.origin));

   }
   globaldef1265 = FALSE;
   globaldef1262_x = globaldef1195 ((globaldef1198 - globaldef1262_x));
   globaldef1264 = globaldef1195 (globaldef1264);
   if ( (globaldef1262_x > globaldef1271) ) {

      globaldef1262_x = globaldef1271;

   } else {

      if ( (globaldef1262_x < globaldef1272) ) {

         globaldef1262_x = globaldef1272;

      }

   }
   if ( (globaldef1261 == FALSE) ) {

      self.angles = globaldef1262;
      self.globaldef383 = VEC_ORIGIN;

   } else {

      globaldef1266 = globaldef1226 ((self.globaldef96 - globaldef1262_x),self.globaldef384,globaldef1261);
      self.globaldef384 = globaldef1268;
      self.globaldef96 = (globaldef1262_x + globaldef1266_x);
      globaldef1266 = globaldef1226 ((self.globaldef97 - globaldef1264),self.globaldef385,globaldef1261);
      self.globaldef385 = globaldef1268;
      self.globaldef97 = (globaldef1264 + globaldef1266_x);
      self.globaldef96 = globaldef1195 (self.globaldef96);
      self.globaldef97 = globaldef1195 (self.globaldef97);

   }
   self.globaldef153 = self.angles;

};
float globaldef1271 /* = 70.000 */;
float globaldef1272 /* = -70.000 */;

void () func125;

// function func125
// function number 125 begins at statement 608
/*
 * OP_ADDRESS	28	406	1570
 * OP_LOAD_V	28	105	1573
 * OP_STOREP_V	1573	1570	0
 * OP_LOAD_V	28	175	1576
 * OP_STORE_V	1576	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	410	1579
 * OP_LOAD_V	28	105	1582
 * OP_ADD_V	1582	59	1585
 * OP_STOREP_V	1585	1579	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	213	7	0
 * OP_CALL2	1474	0	0
 * OP_DONE	0	0	0
 */

void () func125 = {

   self.globaldef389 = self.origin;
   makevectors (self.globaldef153);
   self.globaldef393 = (self.origin + v_forward);
   globaldef1259 (FALSE,FALSE);

};

void () func126;

// function func126
// function number 126 begins at statement 622
/*
 * OP_CALL0	1569	0	0
 * OP_ADDRESS	28	438	1589
 * OP_STOREP_F	1222	1589	0
 * OP_ADDRESS	28	422	1590
 * OP_ADD_F	31	216	1591
 * OP_STOREP_F	1591	1590	0
 * OP_ADDRESS	28	371	1592
 * OP_STOREP_F	31	1592	0
 * OP_ADDRESS	28	414	1593
 * OP_LOAD_V	28	410	1596
 * OP_STOREP_V	1596	1593	0
 * OP_ADDRESS	28	181	1599
 * OP_STOREP_ENT	28	1599	0
 * OP_DONE	0	0	0
 */

void () func126 = {

   globaldef1273 ();
   self.globaldef421 = globaldef1160;
   self.globaldef405 = (time + FL_SWIM);
   self.globaldef354 = time;
   self.globaldef397 = self.globaldef393;
   self.enemy = self;

};

void () func127;

// function func127
// function number 127 begins at statement 636
/*
 * OP_LOAD_F	28	424	1601
 * OP_IFNOT	1601	5	0
 * OP_LOAD_ENT	28	181	1602
 * OP_STORE_V	1602	4	0
 * OP_STORE_V	1603	7	0
 * OP_CALL2	1264	0	0
 * OP_ADDRESS	28	400	1604
 * OP_STOREP_V	286	1604	0
 * OP_ADDRESS	28	406	1607
 * OP_LOAD_V	28	105	1610
 * OP_STOREP_V	1610	1607	0
 * OP_ADDRESS	28	438	1613
 * OP_STOREP_F	1229	1613	0
 * OP_ADDRESS	28	422	1614
 * OP_ADD_F	31	214	1615
 * OP_STOREP_F	1615	1614	0
 * OP_ADDRESS	28	423	1616
 * OP_STOREP_ENT	30	1616	0
 * OP_ADDRESS	28	371	1617
 * OP_ADD_F	31	230	1618
 * OP_STOREP_F	1618	1617	0
 * OP_DONE	0	0	0
 */

void () func127 = {

   if ( self.globaldef407 ) {

      globaldef1181 (self.enemy,globaldef1276);

   }
   self.globaldef383 = VEC_ORIGIN;
   self.globaldef389 = self.origin;
   self.globaldef421 = globaldef1167;
   self.globaldef405 = (time + TRUE);
   self.globaldef406 = world;
   self.globaldef354 = (time + MOVETYPE_FLY);

};
string globaldef1276 /* = "R.I.P." */;
vector (entity globaldef1278) func128;

// function func128
// function number 128 begins at statement 658
/*
 * OP_LOAD_V	1620	105	1624
 * OP_STORE_V	1624	1621	0
 * OP_LOAD_F	1620	101	1627
 * OP_SUB_F	1627	217	1628
 * OP_STORE_F	1628	1623	0
 * OP_RETURN	1621	0	0
 * OP_DONE	0	0	0
 */
vector (entity globaldef1278) func128 = {

   local vector globaldef1279;

   globaldef1279 = globaldef1278.origin;
   globaldef1282 = (globaldef1278.globaldef79 - FL_CLIENT);
   return ( globaldef1279 );

};

void (entity globaldef1284) func129;

// function func129
// function number 129 begins at statement 665
/*
 * OP_ADDRESS	28	422	1643
 * OP_ADD_F	31	1644	1645
 * OP_STOREP_F	1645	1643	0
 * OP_LOAD_ENT	28	181	1646
 * OP_NE_E	1646	1630	1647
 * OP_IFNOT	1647	15	0
 * OP_ADDRESS	28	181	1648
 * OP_STOREP_ENT	1630	1648	0
 * OP_LOAD_ENT	28	423	1649
 * OP_LOAD_ENT	28	181	1650
 * OP_NE_E	1649	1650	1651
 * OP_IFNOT	1651	9	0
 * OP_LOAD_F	28	424	1652
 * OP_IFNOT	1652	5	0
 * OP_LOAD_ENT	28	181	1653
 * OP_STORE_V	1653	4	0
 * OP_STORE_V	1654	7	0
 * OP_CALL2	1264	0	0
 * OP_ADDRESS	28	423	1655
 * OP_STOREP_ENT	1630	1655	0
 * OP_LOAD_ENT	28	181	1656
 * OP_LOAD_V	1656	117	1657
 * OP_STORE_V	1657	1633	0
 * OP_STORE_F	213	1633	0
 * OP_STORE_F	213	1634	0
 * OP_STORE_V	1633	4	0
 * OP_CALL1	452	0	0
 * OP_MUL_FV	228	59	1660
 * OP_STORE_V	1660	59	0
 * OP_STORE_F	1663	1632	0
 * OP_ADD_V	62	59	1664
 * OP_ADD_V	1664	65	1667
 * OP_STORE_V	1667	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1670
 * OP_IFNOT	1670	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	62	59	1671
 * OP_ADD_V	1671	65	1674
 * OP_STORE_V	1674	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1677
 * OP_IFNOT	1677	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_ADD_V	62	59	1678
 * OP_SUB_V	1678	65	1681
 * OP_STORE_V	1681	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1684
 * OP_IFNOT	1684	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	62	59	1685
 * OP_SUB_V	1685	65	1688
 * OP_STORE_V	1688	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1691
 * OP_IFNOT	1691	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1692
 * OP_IFNOT	1692	33	0
 * OP_ADD_V	62	59	1693
 * OP_STORE_V	1693	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1696
 * OP_IFNOT	1696	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	62	59	1697
 * OP_STORE_V	1697	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1700
 * OP_IFNOT	1700	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_ADD_V	62	65	1701
 * OP_STORE_V	1701	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1704
 * OP_IFNOT	1704	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	62	65	1705
 * OP_STORE_V	1705	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1708
 * OP_IFNOT	1708	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1709
 * OP_IFNOT	1709	35	0
 * OP_ADD_V	59	65	1710
 * OP_STORE_V	1710	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1713
 * OP_IFNOT	1713	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	59	65	1714
 * OP_STORE_V	1714	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1717
 * OP_IFNOT	1717	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	59	1718
 * OP_ADD_V	1718	65	1721
 * OP_STORE_V	1721	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1724
 * OP_IFNOT	1724	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	59	1725
 * OP_SUB_V	1725	65	1728
 * OP_STORE_V	1728	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1731
 * OP_IFNOT	1731	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1732
 * OP_IFNOT	1732	31	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1733
 * OP_IFNOT	1733	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_STORE_V	65	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1734
 * OP_IFNOT	1734	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	59	1735
 * OP_STORE_V	1735	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1738
 * OP_IFNOT	1738	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	65	1739
 * OP_STORE_V	1739	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1742
 * OP_IFNOT	1742	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1743
 * OP_IFNOT	1743	41	0
 * OP_SUB_V	286	62	1744
 * OP_ADD_V	1744	59	1747
 * OP_ADD_V	1747	65	1750
 * OP_STORE_V	1750	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1753
 * OP_IFNOT	1753	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1754
 * OP_SUB_V	1754	59	1757
 * OP_ADD_V	1757	65	1760
 * OP_STORE_V	1760	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1763
 * OP_IFNOT	1763	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1764
 * OP_ADD_V	1764	59	1767
 * OP_SUB_V	1767	65	1770
 * OP_STORE_V	1770	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1773
 * OP_IFNOT	1773	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1774
 * OP_SUB_V	1774	59	1777
 * OP_SUB_V	1777	65	1780
 * OP_STORE_V	1780	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1783
 * OP_IFNOT	1783	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1784
 * OP_IFNOT	1784	37	0
 * OP_SUB_V	286	62	1785
 * OP_ADD_V	1785	59	1788
 * OP_STORE_V	1788	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1791
 * OP_IFNOT	1791	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1792
 * OP_ADD_V	1792	65	1795
 * OP_STORE_V	1795	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1798
 * OP_IFNOT	1798	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1799
 * OP_SUB_V	1799	59	1802
 * OP_STORE_V	1802	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1805
 * OP_IFNOT	1805	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_SUB_V	286	62	1806
 * OP_SUB_V	1806	65	1809
 * OP_STORE_V	1809	4	0
 * OP_CALL1	1427	0	0
 * OP_STORE_F	1	1631	0
 * OP_LT	1631	1632	1812
 * OP_IFNOT	1812	3	0
 * OP_STORE_F	1631	1632	0
 * OP_STORE_V	71	1633	0
 * OP_GE	1632	1663	1813
 * OP_IFNOT	1813	6	0
 * OP_CALL0	1588	0	0
 * OP_ADDRESS	28	422	1814
 * OP_ADD_F	31	216	1815
 * OP_STOREP_F	1815	1814	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	410	1816
 * OP_LOAD_ENT	28	181	1819
 * OP_STORE_V	1819	4	0
 * OP_CALL1	1619	0	0
 * OP_STOREP_V	1	1816	0
 * OP_ADDRESS	28	406	1820
 * OP_STOREP_V	1633	1820	0
 * OP_ADDRESS	28	438	1823
 * OP_STOREP_F	1224	1823	0
 * OP_ADDRESS	28	437	1824
 * OP_LOAD_V	28	406	1826
 * OP_LOAD_V	28	410	1829
 * OP_SUB_V	1826	1829	1832
 * OP_STORE_V	1832	4	0
 * OP_CALL1	462	0	0
 * OP_MUL_F	1825	1	1835
 * OP_STOREP_F	1835	1824	0
 * OP_LOAD_F	28	437	1836
 * OP_LT	1836	745	1837
 * OP_IFNOT	1837	3	0
 * OP_ADDRESS	28	437	1838
 * OP_STOREP_F	745	1838	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	213	7	0
 * OP_CALL2	1474	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1284) func129 = {

   local float globaldef1285;
   local float globaldef1286;
   local vector globaldef1287;
   local vector globaldef1291;
   local vector globaldef1295;
   local entity globaldef1299;

   self.globaldef405 = (time + globaldef1300);
   if ( (self.enemy != globaldef1284) ) {

      self.enemy = globaldef1284;
      if ( (self.globaldef406 != self.enemy) ) {

         if ( self.globaldef407 ) {

            globaldef1181 (self.enemy,globaldef1301);

         }
         self.globaldef406 = globaldef1284;

      }

   }
   globaldef1287 = self.enemy.angles;
   globaldef1287_x = FALSE;
   globaldef1289 = FALSE;
   makevectors (globaldef1287);
   v_forward = (MOVETYPE_WALK * v_forward);
   globaldef1286 = globaldef1302;
   globaldef1285 = globaldef1241 (((v_up + v_forward) + v_right));
   if ( (globaldef1285 < globaldef1286) ) {

      globaldef1286 = globaldef1285;
      globaldef1287 = trace_endpos;

   }
   globaldef1285 = globaldef1241 (((v_up - v_forward) + v_right));
   if ( (globaldef1285 < globaldef1286) ) {

      globaldef1286 = globaldef1285;
      globaldef1287 = trace_endpos;

   }
   globaldef1285 = globaldef1241 (((v_up + v_forward) - v_right));
   if ( (globaldef1285 < globaldef1286) ) {

      globaldef1286 = globaldef1285;
      globaldef1287 = trace_endpos;

   }
   globaldef1285 = globaldef1241 (((v_up - v_forward) - v_right));
   if ( (globaldef1285 < globaldef1286) ) {

      globaldef1286 = globaldef1285;
      globaldef1287 = trace_endpos;

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1285 = globaldef1241 ((v_up + v_forward));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((v_up - v_forward));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((v_up + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((v_up - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1285 = globaldef1241 ((v_forward + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((v_forward - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_forward) + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_forward) - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1285 = globaldef1241 (v_forward);
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (v_right);
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((VEC_ORIGIN - v_forward));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((VEC_ORIGIN - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1285 = globaldef1241 ((((VEC_ORIGIN - v_up) + v_forward) + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((((VEC_ORIGIN - v_up) - v_forward) + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((((VEC_ORIGIN - v_up) + v_forward) - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 ((((VEC_ORIGIN - v_up) - v_forward) - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_up) + v_forward));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_up) + v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_up) - v_forward));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }
      globaldef1285 = globaldef1241 (((VEC_ORIGIN - v_up) - v_right));
      if ( (globaldef1285 < globaldef1286) ) {

         globaldef1286 = globaldef1285;
         globaldef1287 = trace_endpos;

      }

   }
   if ( (globaldef1286 >= globaldef1302) ) {

      globaldef1274 ();
      self.globaldef405 = (time + FL_SWIM);
      return ;

   }
   self.globaldef393 = globaldef1277 (self.enemy);
   self.globaldef389 = globaldef1287;
   self.globaldef421 = globaldef1162;
   self.globaldef420 = (globaldef1303 * vlen ((self.globaldef389 - self.globaldef393)));
   if ( (self.globaldef420 < globaldef728) ) {

      self.globaldef420 = globaldef728;

   }
   globaldef1259 (FALSE,FALSE);

};
float globaldef1300 /* = 0.400 */;
string globaldef1301 /* = "Now taking" */;
float globaldef1302 /* = 1000.000 */;
float globaldef1303 /* = 1.500 */;
vector () func130;

// function func130
// function number 130 begins at statement 946
/*
 * OP_LOAD_ENT	28	181	1846
 * OP_STORE_V	1846	4	0
 * OP_CALL1	1242	0	0
 * OP_LOAD_ENT	28	181	1847
 * OP_LOAD_V	1847	105	1848
 * OP_LOAD_ENT	28	181	1851
 * OP_LOAD_F	1851	141	1852
 * OP_ADD_F	1852	229	1853
 * OP_MUL_FV	1853	62	1854
 * OP_ADD_V	1848	1854	1857
 * OP_STORE_V	1857	1840	0
 * OP_LOAD_ENT	28	181	1860
 * OP_LOAD_V	1860	105	1861
 * OP_STORE_V	1861	4	0
 * OP_STORE_V	1840	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_STORE_V	1840	4	0
 * OP_CALL1	459	0	0
 * OP_SUB_V	71	1	1864
 * OP_STORE_V	1864	1840	0
 * OP_MUL_FV	1867	59	1868
 * OP_STORE_V	1868	1843	0
 * OP_STORE_V	1840	4	0
 * OP_ADD_V	1840	1843	1871
 * OP_STORE_V	1871	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_STORE_V	1843	4	0
 * OP_CALL1	459	0	0
 * OP_SUB_V	71	1	1874
 * OP_STORE_V	1874	1843	0
 * OP_STORE_V	1843	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	3	0
 * OP_RETURN	1843	0	0
 * OP_GOTO	2	0	0
 * OP_RETURN	1840	0	0
 * OP_DONE	0	0	0
 */
vector () func130 = {

   local vector globaldef1305;
   local vector globaldef1309;

   globaldef1172 (self.enemy);
   globaldef1305 = (self.enemy.origin + ((self.enemy.globaldef119 + MOVETYPE_STEP) * v_up));
   globaldef449 (self.enemy.origin,globaldef1305,FALSE,self);
   globaldef1305 = (trace_endpos - globaldef442 (globaldef1305));
   globaldef1309 = (globaldef1313 * v_forward);
   globaldef449 (globaldef1305,(globaldef1305 + globaldef1309),TRUE,self);
   globaldef1309 = (trace_endpos - globaldef442 (globaldef1309));
   if ( globaldef1200 (globaldef1309) ) {

      return ( globaldef1309 );

   } else {

      return ( globaldef1305 );

   }

};
float globaldef1313 /* = -100.000 */;
vector () func131;

// function func131
// function number 131 begins at statement 987
/*
 * OP_LOAD_ENT	28	181	1881
 * OP_LOAD_F	1881	165	1882
 * OP_EQ_F	1882	246	1883
 * OP_IFNOT	1883	10	0
 * OP_LOAD_ENT	28	181	1884
 * OP_STORE_V	1884	4	0
 * OP_CALL1	1242	0	0
 * OP_LOAD_ENT	28	181	1885
 * OP_LOAD_V	1885	105	1886
 * OP_MUL_FV	225	59	1889
 * OP_ADD_V	1886	1889	1892
 * OP_STORE_V	1892	1878	0
 * OP_GOTO	4	0	0
 * OP_LOAD_ENT	28	181	1895
 * OP_LOAD_V	1895	105	1896
 * OP_STORE_V	1896	1878	0
 * OP_RETURN	1878	0	0
 * OP_DONE	0	0	0
 */
vector () func131 = {

   local vector globaldef1315;

   if ( (self.enemy.globaldef143 == DEAD_NO) ) {

      globaldef1172 (self.enemy);
      globaldef1315 = (self.enemy.origin + (FL_WATERJUMP * v_forward));

   } else {

      globaldef1315 = self.enemy.origin;

   }
   return ( globaldef1315 );

};

void () func132;

// function func132
// function number 132 begins at statement 1005
/*
 * OP_LOAD_V	28	175	1900
 * OP_STORE_V	1900	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	1903
 * OP_STORE_V	1903	4	0
 * OP_LOAD_V	28	105	1906
 * OP_MUL_FV	1909	59	1910
 * OP_ADD_V	1906	1910	1913
 * OP_STORE_V	1913	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_ADDRESS	28	406	1916
 * OP_LOAD_V	28	105	1919
 * OP_SUB_V	71	1919	1922
 * OP_STORE_V	1922	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	230	1	1925
 * OP_SUB_V	71	1925	1928
 * OP_STOREP_V	1928	1916	0
 * OP_ADDRESS	28	410	1931
 * OP_LOAD_V	28	105	1934
 * OP_STOREP_V	1934	1931	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	213	7	0
 * OP_CALL2	1474	0	0
 * OP_DONE	0	0	0
 */

void () func132 = {

   makevectors (self.globaldef153);
   globaldef449 (self.origin,(self.origin + (globaldef1320 * v_forward)),TRUE,self);
   self.globaldef389 = (trace_endpos - (MOVETYPE_FLY * globaldef442 ((trace_endpos - self.origin))));
   self.globaldef393 = self.origin;
   globaldef1259 (FALSE,FALSE);

};
float globaldef1320 /* = 2000.000 */;
entity (float globaldef1322) func133;

// function func133
// function number 133 begins at statement 1032
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1940	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	1939	0
 * OP_GT	1938	213	1941
 * OP_NE_E	1939	30	1942
 * OP_AND	1941	1942	1943
 * OP_IFNOT	1943	9	0
 * OP_STORE_V	1939	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1940	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	1939	0
 * OP_SUB_F	1938	214	1944
 * OP_STORE_F	1944	1938	0
 * OP_GOTO	-11	0	0
 * OP_RETURN	1939	0	0
 * OP_DONE	0	0	0
 */
entity (float globaldef1322) func133 = {

   local entity globaldef1323;

   globaldef1323 = find (world,classname,globaldef1324);
   while ( ((globaldef1322 > FALSE) && (globaldef1323 != world)) ) {

      globaldef1323 = find (globaldef1323,classname,globaldef1324);
      globaldef1322 = (globaldef1322 - TRUE);

   }
   return ( globaldef1323 );

};

void (float globaldef1326) func134;

// function func134
// function number 134 begins at statement 1051
/*
 * OP_STORE_V	1946	4	0
 * OP_CALL1	1937	0	0
 * OP_STORE_ENT	1	1947	0
 * OP_NE_E	1947	30	1948
 * OP_IFNOT	1948	11	0
 * OP_ADDRESS	1947	117	1949
 * OP_LOAD_V	28	117	1952
 * OP_STOREP_V	1952	1949	0
 * OP_ADDRESS	1947	175	1955
 * OP_LOAD_V	28	175	1958
 * OP_STOREP_V	1958	1955	0
 * OP_STORE_V	1947	4	0
 * OP_LOAD_V	28	105	1961
 * OP_STORE_V	1961	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1326) func134 = {

   local entity globaldef1327;

   globaldef1327 = globaldef1321 (globaldef1326);
   if ( (globaldef1327 != world) ) {

      globaldef1327.angles = self.angles;
      globaldef1327.globaldef153 = self.globaldef153;
      setorigin (globaldef1327,self.origin);

   }

};

void (float globaldef1329) func135;

// function func135
// function number 135 begins at statement 1067
/*
 * OP_LOAD_F	28	438	1967
 * OP_EQ_F	1967	1226	1968
 * OP_LOAD_F	28	438	1969
 * OP_EQ_F	1969	1227	1970
 * OP_OR	1968	1970	1971
 * OP_LOAD_F	28	438	1972
 * OP_EQ_F	1972	1228	1973
 * OP_OR	1971	1973	1974
 * OP_IFNOT	1974	18	0
 * OP_STORE_V	1965	4	0
 * OP_CALL1	1937	0	0
 * OP_STORE_ENT	1	1966	0
 * OP_NE_E	1966	30	1975
 * OP_IFNOT	1975	13	0
 * OP_ADDRESS	28	174	1976
 * OP_STOREP_F	214	1976	0
 * OP_ADDRESS	28	117	1977
 * OP_LOAD_V	1966	117	1980
 * OP_STOREP_V	1980	1977	0
 * OP_ADDRESS	28	175	1983
 * OP_LOAD_V	1966	175	1986
 * OP_STOREP_V	1986	1983	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	1966	105	1989
 * OP_STORE_V	1989	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1329) func135 = {

   local entity globaldef1330;

   if ( (((self.globaldef421 == globaldef1164) || (self.globaldef421 == globaldef1165)) || (self.globaldef421 == globaldef1166)) ) {

      globaldef1330 = globaldef1321 (globaldef1329);
      if ( (globaldef1330 != world) ) {

         self.globaldef152 = TRUE;
         self.angles = globaldef1330.angles;
         self.globaldef153 = globaldef1330.globaldef153;
         setorigin (self,globaldef1330.origin);

      }

   }

};

void () func136;

// function func136
// function number 136 begins at statement 1094
/*
 * OP_LOAD_F	28	173	1996
 * OP_EQ_F	1996	1997	1998
 * OP_IFNOT	1998	5	0
 * OP_ADDRESS	28	194	1999
 * OP_STOREP_ENT	30	1999	0
 * OP_CALL0	1588	0	0
 * OP_GOTO	298	0	0
 * OP_LOAD_F	28	173	2000
 * OP_GT	2000	1997	2001
 * OP_LOAD_F	28	173	2002
 * OP_LT	2002	2003	2004
 * OP_AND	2001	2004	2005
 * OP_IFNOT	2005	30	0
 * OP_ADDRESS	28	194	2006
 * OP_STOREP_ENT	30	2006	0
 * OP_LOAD_F	28	173	2007
 * OP_SUB_F	2007	1997	2008
 * OP_STORE_F	2008	1993	0
 * OP_STORE_ENT	30	1994	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_SUB_F	1993	214	2009
 * OP_STORE_F	2009	1993	0
 * OP_GT	1993	213	2010
 * OP_NE_E	1994	30	2011
 * OP_AND	2010	2011	2012
 * OP_IF	2012	-8	0
 * OP_NE_E	1994	30	2013
 * OP_IFNOT	2013	12	0
 * OP_LOAD_F	1994	165	2014
 * OP_EQ_F	2014	246	2015
 * OP_IFNOT	2015	9	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1629	0	0
 * OP_ADDRESS	28	419	2016
 * OP_ADD_F	31	235	2017
 * OP_STOREP_F	2017	2016	0
 * OP_ADDRESS	28	371	2018
 * OP_ADD_F	31	2019	2020
 * OP_STOREP_F	2020	2018	0
 * OP_GOTO	263	0	0
 * OP_LOAD_F	28	173	2021
 * OP_EQ_F	2021	2022	2023
 * OP_IFNOT	2023	6	0
 * OP_ADDRESS	28	129	2024
 * OP_STOREP_S	2025	2024	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1062	0	0
 * OP_GOTO	255	0	0
 * OP_LOAD_F	28	173	2026
 * OP_GE	2026	1296	2027
 * OP_LOAD_F	28	173	2028
 * OP_LE	2028	2029	2030
 * OP_AND	2027	2030	2031
 * OP_IFNOT	2031	7	0
 * OP_LOAD_F	28	173	2032
 * OP_SUB_F	2032	1296	2033
 * OP_STORE_F	2033	1993	0
 * OP_STORE_V	1993	4	0
 * OP_CALL1	1945	0	0
 * OP_GOTO	243	0	0
 * OP_LOAD_F	28	173	2034
 * OP_GE	2034	2035	2036
 * OP_LOAD_F	28	173	2037
 * OP_LE	2037	2038	2039
 * OP_AND	2036	2039	2040
 * OP_IFNOT	2040	7	0
 * OP_LOAD_F	28	173	2041
 * OP_SUB_F	2041	2035	2042
 * OP_STORE_F	2042	1993	0
 * OP_STORE_V	1993	4	0
 * OP_CALL1	1964	0	0
 * OP_GOTO	231	0	0
 * OP_LOAD_F	28	173	2043
 * OP_EQ_F	2043	2044	2045
 * OP_IFNOT	2045	21	0
 * OP_LOAD_ENT	28	181	2046
 * OP_NE_E	2046	28	2047
 * OP_IFNOT	2047	5	0
 * OP_LOAD_ENT	28	181	2048
 * OP_STORE_V	2048	4	0
 * OP_CALL1	1629	0	0
 * OP_GOTO	13	0	0
 * OP_CALL0	1328	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_NE_E	1994	30	2049
 * OP_IFNOT	2049	9	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1629	0	0
 * OP_ADDRESS	28	419	2050
 * OP_ADD_F	31	235	2051
 * OP_STOREP_F	2051	2050	0
 * OP_ADDRESS	28	371	2052
 * OP_ADD_F	31	2019	2053
 * OP_STOREP_F	2053	2052	0
 * OP_GOTO	208	0	0
 * OP_LOAD_F	28	173	2054
 * OP_EQ_F	2054	2055	2056
 * OP_IFNOT	2056	29	0
 * OP_LOAD_ENT	28	181	2057
 * OP_NE_E	2057	28	2058
 * OP_IFNOT	2058	4	0
 * OP_ADDRESS	28	438	2059
 * OP_STOREP_F	1225	2059	0
 * OP_GOTO	22	0	0
 * OP_CALL0	1328	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_NE_E	1994	30	2060
 * OP_IFNOT	2060	18	0
 * OP_ADDRESS	28	423	2061
 * OP_ADDRESS	28	181	2062
 * OP_STOREP_ENT	1994	2062	0
 * OP_STOREP_ENT	1994	2061	0
 * OP_LOAD_F	28	424	2063
 * OP_IFNOT	2063	5	0
 * OP_LOAD_ENT	28	181	2064
 * OP_STORE_V	2064	4	0
 * OP_STORE_V	2065	7	0
 * OP_CALL2	1264	0	0
 * OP_ADDRESS	28	438	2066
 * OP_STOREP_F	1225	2066	0
 * OP_ADDRESS	28	371	2067
 * OP_ADD_F	31	2019	2068
 * OP_STOREP_F	2068	2067	0
 * OP_ADDRESS	28	400	2069
 * OP_STOREP_V	286	2069	0
 * OP_GOTO	177	0	0
 * OP_LOAD_F	28	173	2072
 * OP_EQ_F	2072	2073	2074
 * OP_IFNOT	2074	17	0
 * OP_LOAD_F	28	438	2075
 * OP_NE_F	2075	1224	2076
 * OP_LOAD_F	28	438	2077
 * OP_NE_F	2077	1223	2078
 * OP_AND	2076	2078	2079
 * OP_IFNOT	2079	2	0
 * OP_CALL0	1899	0	0
 * OP_ADDRESS	28	438	2080
 * OP_STOREP_F	1226	2080	0
 * OP_ADDRESS	28	103	2081
 * OP_STOREP_F	227	2081	0
 * OP_ADDRESS	28	181	2082
 * OP_STOREP_ENT	28	2082	0
 * OP_ADDRESS	28	423	2083
 * OP_STOREP_ENT	30	2083	0
 * OP_GOTO	158	0	0
 * OP_LOAD_F	28	173	2084
 * OP_EQ_F	2084	2085	2086
 * OP_IFNOT	2086	10	0
 * OP_ADDRESS	28	438	2087
 * OP_STOREP_F	1227	2087	0
 * OP_ADDRESS	28	103	2088
 * OP_STOREP_F	230	2088	0
 * OP_ADDRESS	28	181	2089
 * OP_STOREP_ENT	28	2089	0
 * OP_ADDRESS	28	423	2090
 * OP_STOREP_ENT	30	2090	0
 * OP_GOTO	146	0	0
 * OP_LOAD_F	28	173	2091
 * OP_EQ_F	2091	2092	2093
 * OP_IFNOT	2093	10	0
 * OP_ADDRESS	28	438	2094
 * OP_STOREP_F	1228	2094	0
 * OP_ADDRESS	28	181	2095
 * OP_STOREP_ENT	28	2095	0
 * OP_ADDRESS	28	423	2096
 * OP_STOREP_ENT	30	2096	0
 * OP_ADDRESS	28	103	2097
 * OP_STOREP_F	233	2097	0
 * OP_GOTO	134	0	0
 * OP_LOAD_F	28	173	2098
 * OP_EQ_F	2098	2099	2100
 * OP_IFNOT	2100	21	0
 * OP_LOAD_F	28	438	2101
 * OP_EQ_F	2101	1224	2102
 * OP_LOAD_F	28	438	2103
 * OP_EQ_F	2103	1226	2104
 * OP_OR	2102	2104	2105
 * OP_IFNOT	2105	14	0
 * OP_CALL0	1569	0	0
 * OP_ADDRESS	28	438	2106
 * OP_STOREP_F	1223	2106	0
 * OP_ADDRESS	28	181	2107
 * OP_STOREP_ENT	28	2107	0
 * OP_ADDRESS	28	423	2108
 * OP_STOREP_ENT	30	2108	0
 * OP_ADDRESS	28	371	2109
 * OP_ADD_F	31	2110	2111
 * OP_STOREP_F	2111	2109	0
 * OP_ADDRESS	28	422	2112
 * OP_ADD_F	31	228	2113
 * OP_STOREP_F	2113	2112	0
 * OP_GOTO	111	0	0
 * OP_LOAD_F	28	173	2114
 * OP_EQ_F	2114	2115	2116
 * OP_IFNOT	2116	6	0
 * OP_ADDRESS	28	424	2117
 * OP_LOAD_F	28	424	2118
 * OP_NOT_F	2118	0	2119
 * OP_STOREP_F	2119	2117	0
 * OP_GOTO	103	0	0
 * OP_LOAD_F	28	173	2120
 * OP_EQ_F	2120	2121	2122
 * OP_IFNOT	2122	11	0
 * OP_STORE_V	2123	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_V	28	105	2124
 * OP_STORE_V	2124	4	0
 * OP_CALL1	475	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	90	0	0
 * OP_LOAD_F	28	173	2128
 * OP_EQ_F	2128	2129	2130
 * OP_IFNOT	2130	4	0
 * OP_ADDRESS	28	424	2131
 * OP_STOREP_F	214	2131	0
 * OP_GOTO	84	0	0
 * OP_LOAD_F	28	173	2132
 * OP_EQ_F	2132	2133	2134
 * OP_IFNOT	2134	4	0
 * OP_ADDRESS	28	424	2135
 * OP_STOREP_F	213	2135	0
 * OP_GOTO	78	0	0
 * OP_LOAD_F	28	173	2136
 * OP_EQ_F	2136	2137	2138
 * OP_IFNOT	2138	4	0
 * OP_ADDRESS	28	372	2139
 * OP_STOREP_F	214	2139	0
 * OP_GOTO	72	0	0
 * OP_LOAD_F	28	173	2140
 * OP_EQ_F	2140	2141	2142
 * OP_IFNOT	2142	4	0
 * OP_ADDRESS	28	372	2143
 * OP_STOREP_F	213	2143	0
 * OP_GOTO	66	0	0
 * OP_LOAD_F	28	173	2144
 * OP_EQ_F	2144	2145	2146
 * OP_IFNOT	2146	8	0
 * OP_LOAD_ENT	28	181	2147
 * OP_NE_E	2147	28	2148
 * OP_IFNOT	2148	4	0
 * OP_ADDRESS	28	194	2149
 * OP_LOAD_ENT	28	181	2150
 * OP_STOREP_ENT	2150	2149	0
 * OP_GOTO	56	0	0
 * OP_LOAD_F	28	173	2151
 * OP_EQ_F	2151	2152	2153
 * OP_LOAD_F	28	173	2154
 * OP_EQ_F	2154	2155	2156
 * OP_OR	2153	2156	2157
 * OP_IFNOT	2157	50	0
 * OP_LOAD_ENT	28	181	2158
 * OP_NE_E	2158	28	2159
 * OP_IFNOT	2159	47	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_NE_E	1994	30	2160
 * OP_LOAD_ENT	28	181	2161
 * OP_NE_E	1994	2161	2162
 * OP_AND	2160	2162	2163
 * OP_IFNOT	2163	5	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_GOTO	-8	0	0
 * OP_NE_E	1994	30	2164
 * OP_IFNOT	2164	33	0
 * OP_STORE_F	214	1993	0
 * OP_IFNOT	1993	31	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_EQ_E	1994	30	2165
 * OP_IFNOT	2165	4	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	1994	0
 * OP_EQ_E	1994	30	2166
 * OP_IFNOT	2166	3	0
 * OP_STORE_F	213	1993	0
 * OP_GOTO	18	0	0
 * OP_LOAD_F	1994	165	2167
 * OP_EQ_F	2167	246	2168
 * OP_IFNOT	2168	15	0
 * OP_LOAD_ENT	28	194	2169
 * OP_NE_E	2169	30	2170
 * OP_IFNOT	2170	3	0
 * OP_ADDRESS	28	194	2171
 * OP_STOREP_ENT	1994	2171	0
 * OP_STORE_V	1994	4	0
 * OP_CALL1	1629	0	0
 * OP_ADDRESS	28	419	2172
 * OP_ADD_F	31	235	2173
 * OP_STOREP_F	2173	2172	0
 * OP_ADDRESS	28	371	2174
 * OP_ADD_F	31	2019	2175
 * OP_STOREP_F	2175	2174	0
 * OP_STORE_F	213	1993	0
 * OP_GOTO	-30	0	0
 * OP_ADDRESS	28	173	2176
 * OP_STOREP_F	213	2176	0
 * OP_DONE	0	0	0
 */

void () func136 = {

   local float globaldef1332;
   local entity globaldef1333;
   local string globaldef1334;

   if ( (self.globaldef151 == globaldef1335) ) {

      self.globaldef172 = world;
      globaldef1274 ();

   } else {

      if ( ((self.globaldef151 > globaldef1335) && (self.globaldef151 < globaldef1336)) ) {

         self.globaldef172 = world;
         globaldef1332 = (self.globaldef151 - globaldef1335);
         globaldef1333 = world;
         do {

            globaldef1333 = globaldef1168 (globaldef1333);
            globaldef1332 = (globaldef1332 - TRUE);

         } while ( ((globaldef1332 > FALSE) && (globaldef1333 != world)) );
         if ( (globaldef1333 != world) ) {

            if ( (globaldef1333.globaldef143 == DEAD_NO) ) {

               globaldef1283 (globaldef1333);
               self.delay = (time + MOVETYPE_BOUNCE);
               self.globaldef354 = (time + globaldef1337);

            }

         }

      } else {

         if ( (self.globaldef151 == globaldef1338) ) {

            self.classname = globaldef1339;
            globaldef1000 (self);

         } else {

            if ( ((self.globaldef151 >= globaldef1197) && (self.globaldef151 <= globaldef1340)) ) {

               globaldef1332 = (self.globaldef151 - globaldef1197);
               globaldef1325 (globaldef1332);

            } else {

               if ( ((self.globaldef151 >= globaldef1341) && (self.globaldef151 <= globaldef1342)) ) {

                  globaldef1332 = (self.globaldef151 - globaldef1341);
                  globaldef1328 (globaldef1332);

               } else {

                  if ( (self.globaldef151 == globaldef1343) ) {

                     if ( (self.enemy != self) ) {

                        globaldef1283 (self.enemy);

                     } else {

                        globaldef1333 = globaldef1211 ();
                        if ( (globaldef1333 != world) ) {

                           globaldef1283 (globaldef1333);
                           self.delay = (time + MOVETYPE_BOUNCE);
                           self.globaldef354 = (time + globaldef1337);

                        }

                     }

                  } else {

                     if ( (self.globaldef151 == globaldef1344) ) {

                        if ( (self.enemy != self) ) {

                           self.globaldef421 = globaldef1163;

                        } else {

                           globaldef1333 = globaldef1211 ();
                           if ( (globaldef1333 != world) ) {

                              self.enemy = globaldef1333;
                              self.globaldef406 = globaldef1333;
                              if ( self.globaldef407 ) {

                                 globaldef1181 (self.enemy,globaldef1345);

                              }
                              self.globaldef421 = globaldef1163;
                              self.globaldef354 = (time + globaldef1337);
                              self.globaldef383 = VEC_ORIGIN;

                           }

                        }

                     } else {

                        if ( (self.globaldef151 == globaldef1346) ) {

                           if ( ((self.globaldef421 != globaldef1162) && (self.globaldef421 != globaldef1161)) ) {

                              globaldef1319 ();

                           }
                           self.globaldef421 = globaldef1164;
                           self.movetype = MOVETYPE_NONE;
                           self.enemy = self;
                           self.globaldef406 = world;

                        } else {

                           if ( (self.globaldef151 == globaldef1347) ) {

                              self.globaldef421 = globaldef1165;
                              self.movetype = MOVETYPE_FLY;
                              self.enemy = self;
                              self.globaldef406 = world;

                           } else {

                              if ( (self.globaldef151 == globaldef1348) ) {

                                 self.globaldef421 = globaldef1166;
                                 self.enemy = self;
                                 self.globaldef406 = world;
                                 self.movetype = MOVETYPE_NOCLIP;

                              } else {

                                 if ( (self.globaldef151 == globaldef1349) ) {

                                    if ( ((self.globaldef421 == globaldef1162) || (self.globaldef421 == globaldef1164)) ) {

                                       globaldef1273 ();
                                       self.globaldef421 = globaldef1161;
                                       self.enemy = self;
                                       self.globaldef406 = world;
                                       self.globaldef354 = (time + globaldef1350);
                                       self.globaldef405 = (time + MOVETYPE_WALK);

                                    }

                                 } else {

                                    if ( (self.globaldef151 == globaldef1351) ) {

                                       self.globaldef407 = !self.globaldef407;

                                    } else {

                                       if ( (self.globaldef151 == globaldef1352) ) {

                                          globaldef455 (globaldef1353);
                                          globaldef455 (globaldef458 (self.origin));
                                          globaldef455 (globaldef1354);

                                       } else {

                                          if ( (self.globaldef151 == globaldef1355) ) {

                                             self.globaldef407 = TRUE;

                                          } else {

                                             if ( (self.globaldef151 == globaldef1356) ) {

                                                self.globaldef407 = FALSE;

                                             } else {

                                                if ( (self.globaldef151 == globaldef1357) ) {

                                                   self.globaldef355 = TRUE;

                                                } else {

                                                   if ( (self.globaldef151 == globaldef1358) ) {

                                                      self.globaldef355 = FALSE;

                                                   } else {

                                                      if ( (self.globaldef151 == globaldef1359) ) {

                                                         if ( (self.enemy != self) ) {

                                                            self.globaldef172 = self.enemy;

                                                         }

                                                      } else {

                                                         if ( ((self.globaldef151 == globaldef1360) || (self.globaldef151 == globaldef1361)) ) {

                                                            if ( (self.enemy != self) ) {

                                                               globaldef1333 = globaldef1168 (world);
                                                               while ( ((globaldef1333 != world) && (globaldef1333 != self.enemy)) ) {

                                                                  globaldef1333 = globaldef1168 (globaldef1333);

                                                               }
                                                               if ( (globaldef1333 != world) ) {

                                                                  globaldef1332 = TRUE;
                                                                  while ( globaldef1332 ) {

                                                                     globaldef1333 = globaldef1168 (globaldef1333);
                                                                     if ( (globaldef1333 == world) ) {

                                                                        globaldef1333 = globaldef1168 (globaldef1333);

                                                                     }
                                                                     if ( (globaldef1333 == world) ) {

                                                                        globaldef1332 = FALSE;

                                                                     } else {

                                                                        if ( (globaldef1333.globaldef143 == DEAD_NO) ) {

                                                                           if ( (self.globaldef172 != world) ) {

                                                                              self.globaldef172 = globaldef1333;

                                                                           }
                                                                           globaldef1283 (globaldef1333);
                                                                           self.delay = (time + MOVETYPE_BOUNCE);
                                                                           self.globaldef354 = (time + globaldef1337);
                                                                           globaldef1332 = FALSE;

                                                                        }

                                                                     }

                                                                  }

                                                               }

                                                            }

                                                         }

                                                      }

                                                   }

                                                }

                                             }

                                          }

                                       }

                                    }

                                 }

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }

   }
   self.globaldef151 = FALSE;

};
float globaldef1335 /* = 100.000 */;
float globaldef1336 /* = 150.000 */;
float globaldef1337 /* = 60.000 */;
float globaldef1338 /* = 166.000 */;
string globaldef1339 /* = "observer" */;
float globaldef1340 /* = 189.000 */;
float globaldef1341 /* = 190.000 */;
float globaldef1342 /* = 199.000 */;
float globaldef1343 /* = 200.000 */;
float globaldef1344 /* = 201.000 */;
string globaldef1345 /* = "Now Taking" */;
float globaldef1346 /* = 202.000 */;
float globaldef1347 /* = 203.000 */;
float globaldef1348 /* = 204.000 */;
float globaldef1349 /* = 205.000 */;
float globaldef1350 /* = 100000.000 */;
float globaldef1351 /* = 210.000 */;
float globaldef1352 /* = 211.000 */;
string globaldef1353 /* = "Current camera position: " */;
string globaldef1354 /* = "\n" */;
float globaldef1355 /* = 212.000 */;
float globaldef1356 /* = 213.000 */;
float globaldef1357 /* = 214.000 */;
float globaldef1358 /* = 215.000 */;
float globaldef1359 /* = 216.000 */;
float globaldef1360 /* = 217.000 */;
float globaldef1361 /* = 161.000 */;

void () func137;

// function func137
// function number 137 begins at statement 1401
/*
 * OP_LOAD_ENT	28	181	2179
 * OP_NE_E	2179	28	2180
 * OP_LOAD_ENT	28	181	2181
 * OP_LOAD_S	2181	129	2182
 * OP_NE_S	2182	2183	2184
 * OP_AND	2180	2184	2185
 * OP_LOAD_ENT	28	181	2186
 * OP_LOAD_F	2186	152	2187
 * OP_GT	2187	213	2188
 * OP_AND	2185	2188	2189
 * OP_IFNOT	2189	44	0
 * OP_BITOR	272	273	2190
 * OP_BITOR	2190	274	2191
 * OP_BITOR	2191	275	2192
 * OP_STORE_F	2192	2178	0
 * OP_ADDRESS	28	162	2193
 * OP_LOAD_ENT	28	181	2194
 * OP_LOAD_F	2194	162	2195
 * OP_BITOR	2195	2178	2196
 * OP_SUB_F	2196	2178	2197
 * OP_STOREP_F	2197	2193	0
 * OP_ADDRESS	28	152	2198
 * OP_LOAD_ENT	28	181	2199
 * OP_LOAD_F	2199	152	2200
 * OP_STOREP_F	2200	2198	0
 * OP_ADDRESS	28	188	2201
 * OP_LOAD_ENT	28	181	2202
 * OP_LOAD_F	2202	188	2203
 * OP_STOREP_F	2203	2201	0
 * OP_ADDRESS	28	158	2204
 * OP_LOAD_ENT	28	181	2205
 * OP_LOAD_F	2205	158	2206
 * OP_STOREP_F	2206	2204	0
 * OP_ADDRESS	28	159	2207
 * OP_LOAD_ENT	28	181	2208
 * OP_LOAD_F	2208	159	2209
 * OP_STOREP_F	2209	2207	0
 * OP_ADDRESS	28	160	2210
 * OP_LOAD_ENT	28	181	2211
 * OP_LOAD_F	2211	160	2212
 * OP_STOREP_F	2212	2210	0
 * OP_ADDRESS	28	161	2213
 * OP_LOAD_ENT	28	181	2214
 * OP_LOAD_F	2214	161	2215
 * OP_STOREP_F	2215	2213	0
 * OP_ADDRESS	28	154	2216
 * OP_LOAD_ENT	28	181	2217
 * OP_LOAD_F	2217	154	2218
 * OP_STOREP_F	2218	2216	0
 * OP_ADDRESS	28	157	2219
 * OP_LOAD_ENT	28	181	2220
 * OP_LOAD_F	2220	157	2221
 * OP_STOREP_F	2221	2219	0
 * OP_GOTO	19	0	0
 * OP_ADDRESS	28	162	2222
 * OP_STOREP_F	213	2222	0
 * OP_ADDRESS	28	152	2223
 * OP_STOREP_F	2224	2223	0
 * OP_ADDRESS	28	188	2225
 * OP_STOREP_F	2224	2225	0
 * OP_ADDRESS	28	158	2226
 * OP_STOREP_F	2224	2226	0
 * OP_ADDRESS	28	159	2227
 * OP_STOREP_F	2224	2227	0
 * OP_ADDRESS	28	160	2228
 * OP_STOREP_F	2224	2228	0
 * OP_ADDRESS	28	161	2229
 * OP_STOREP_F	2224	2229	0
 * OP_ADDRESS	28	154	2230
 * OP_STOREP_F	253	2230	0
 * OP_ADDRESS	28	157	2231
 * OP_STOREP_F	2224	2231	0
 * OP_DONE	0	0	0
 */

void () func137 = {

   local float globaldef1363;

   if ( (((self.enemy != self) && (self.enemy.classname != globaldef1364)) && (self.enemy.globaldef130 > FALSE)) ) {

      globaldef1363 = (((IT_INVISIBILITY | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD);
      self.globaldef140 = ((self.enemy.globaldef140 | globaldef1363) - globaldef1363);
      self.globaldef130 = self.enemy.globaldef130;
      self.globaldef166 = self.enemy.globaldef166;
      self.globaldef136 = self.enemy.globaldef136;
      self.globaldef137 = self.enemy.globaldef137;
      self.globaldef138 = self.enemy.globaldef138;
      self.globaldef139 = self.enemy.globaldef139;
      self.globaldef132 = self.enemy.globaldef132;
      self.globaldef135 = self.enemy.globaldef135;

   } else {

      self.globaldef140 = FALSE;
      self.globaldef130 = globaldef1365;
      self.globaldef166 = globaldef1365;
      self.globaldef136 = globaldef1365;
      self.globaldef137 = globaldef1365;
      self.globaldef138 = globaldef1365;
      self.globaldef139 = globaldef1365;
      self.globaldef132 = IT_AXE;
      self.globaldef135 = globaldef1365;

   }

};
string globaldef1364 /* = "bodyque" */;
float globaldef1365 /* = 111.000 */;
float (entity globaldef1367) func138;

// function func138
// function number 138 begins at statement 1474
/*
 * OP_LOAD_F	2233	152	2235
 * OP_LOAD_F	2233	187	2236
 * OP_SUB_F	214	2236	2237
 * OP_DIV_F	2235	2237	2238
 * OP_STORE_F	2238	2234	0
 * OP_LOAD_F	2233	152	2239
 * OP_LOAD_F	2233	188	2240
 * OP_ADD_F	2239	2240	2241
 * OP_GT	2234	2241	2242
 * OP_IFNOT	2242	5	0
 * OP_LOAD_F	2233	152	2243
 * OP_LOAD_F	2233	188	2244
 * OP_ADD_F	2243	2244	2245
 * OP_STORE_F	2245	2234	0
 * OP_RETURN	2234	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef1367) func138 = {

   local float globaldef1368;

   globaldef1368 = (globaldef1367.globaldef130 / (TRUE - globaldef1367.globaldef165));
   if ( (globaldef1368 > (globaldef1367.globaldef130 + globaldef1367.globaldef166)) ) {

      globaldef1368 = (globaldef1367.globaldef130 + globaldef1367.globaldef166);

   }
   return ( globaldef1368 );

};

void () func139;

// function func139
// function number 139 begins at statement 1490
/*
 * OP_STORE_ENT	28	2248	0
 * OP_LOAD_ENT	28	423	2259
 * OP_NE_E	2259	30	2260
 * OP_IFNOT	2260	7	0
 * OP_LOAD_ENT	28	423	2261
 * OP_LOAD_F	2261	165	2262
 * OP_EQ_F	2262	246	2263
 * OP_IFNOT	2263	3	0
 * OP_LOAD_ENT	28	423	2264
 * OP_STORE_ENT	2264	2248	0
 * OP_STORE_F	276	2256	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	230	1	2265
 * OP_STORE_F	2265	2255	0
 * OP_LOAD_ENT	28	194	2266
 * OP_NE_E	2266	30	2267
 * OP_IFNOT	2267	10	0
 * OP_LOAD_ENT	28	194	2268
 * OP_LOAD_F	2268	165	2269
 * OP_EQ_F	2269	246	2270
 * OP_IFNOT	2270	4	0
 * OP_LOAD_ENT	28	194	2271
 * OP_STORE_ENT	2271	2248	0
 * OP_GOTO	2	0	0
 * OP_STORE_ENT	28	2248	0
 * OP_GOTO	93	0	0
 * OP_LT	2255	214	2272
 * OP_IFNOT	2272	24	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_NE_E	2247	30	2273
 * OP_IFNOT	2273	18	0
 * OP_LOAD_ENT	28	423	2274
 * OP_NE_E	2247	2274	2275
 * OP_LOAD_F	2247	165	2276
 * OP_EQ_F	2276	246	2277
 * OP_AND	2275	2277	2278
 * OP_IFNOT	2278	8	0
 * OP_STORE_V	2247	4	0
 * OP_CALL1	2232	0	0
 * OP_STORE_F	1	2255	0
 * OP_LT	2256	2255	2279
 * OP_IFNOT	2279	3	0
 * OP_STORE_ENT	2247	2248	0
 * OP_STORE_F	2255	2256	0
 * OP_STORE_V	2247	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_GOTO	-18	0	0
 * OP_GOTO	68	0	0
 * OP_LT	2255	216	2280
 * OP_IFNOT	2280	26	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_NE_E	2247	30	2281
 * OP_IFNOT	2281	20	0
 * OP_LOAD_ENT	28	423	2282
 * OP_NE_E	2247	2282	2283
 * OP_LOAD_F	2247	165	2284
 * OP_EQ_F	2284	246	2285
 * OP_AND	2283	2285	2286
 * OP_IFNOT	2286	10	0
 * OP_LOAD_F	2247	153	2287
 * OP_STORE_F	2287	2255	0
 * OP_LT	2255	213	2288
 * OP_IFNOT	2288	2	0
 * OP_STORE_F	213	2255	0
 * OP_LT	2256	2255	2289
 * OP_IFNOT	2289	3	0
 * OP_STORE_ENT	2247	2248	0
 * OP_STORE_F	2255	2256	0
 * OP_STORE_V	2247	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_GOTO	-20	0	0
 * OP_GOTO	41	0	0
 * OP_STORE_F	213	2256	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_NE_E	2247	30	2290
 * OP_IFNOT	2290	13	0
 * OP_LOAD_ENT	28	423	2291
 * OP_NE_E	2247	2291	2292
 * OP_LOAD_F	2247	165	2293
 * OP_EQ_F	2293	246	2294
 * OP_AND	2292	2294	2295
 * OP_IFNOT	2295	3	0
 * OP_ADD_F	2256	214	2296
 * OP_STORE_F	2296	2256	0
 * OP_STORE_V	2247	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_GOTO	-13	0	0
 * OP_GT	2256	213	2297
 * OP_IFNOT	2297	21	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	2256	1	2298
 * OP_STORE_F	2298	2256	0
 * OP_STORE_ENT	30	2247	0
 * OP_STORE_V	2247	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2247	0
 * OP_LOAD_ENT	28	423	2299
 * OP_EQ_E	2247	2299	2300
 * OP_LOAD_F	2247	165	2301
 * OP_NE_F	2301	246	2302
 * OP_OR	2300	2302	2303
 * OP_IF	2303	-8	0
 * OP_SUB_F	2256	214	2304
 * OP_STORE_F	2304	2256	0
 * OP_GT	2256	213	2305
 * OP_IF	2305	-12	0
 * OP_NE_E	2247	30	2306
 * OP_IFNOT	2306	2	0
 * OP_STORE_ENT	2247	2248	0
 * OP_NE_E	2248	28	2307
 * OP_IFNOT	2307	10	0
 * OP_STORE_V	2248	4	0
 * OP_CALL1	1629	0	0
 * OP_ADDRESS	28	419	2308
 * OP_ADD_F	31	235	2309
 * OP_STOREP_F	2309	2308	0
 * OP_ADDRESS	28	371	2310
 * OP_ADD_F	31	2019	2311
 * OP_STOREP_F	2311	2310	0
 * OP_GOTO	164	0	0
 * OP_ADDRESS	28	181	2312
 * OP_STOREP_ENT	28	2312	0
 * OP_LOAD_V	28	406	2313
 * OP_STORE_V	2313	4	0
 * OP_LOAD_V	28	410	2316
 * OP_STORE_V	2316	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_ADDRESS	28	410	2319
 * OP_STOREP_V	71	2319	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	746	1	2322
 * OP_SUB_F	2322	2323	2324
 * OP_STORE_F	2324	2249	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1298	1	2325
 * OP_STORE_F	2325	2250	0
 * OP_STORE_F	213	2251	0
 * OP_STORE_F	2250	2257	0
 * OP_LOAD_V	28	105	2326
 * OP_LOAD_V	28	406	2329
 * OP_NE_V	2326	2329	2332
 * OP_IFNOT	2332	10	0
 * OP_LOAD_V	28	105	2333
 * OP_LOAD_V	28	406	2336
 * OP_SUB_V	2333	2336	2339
 * OP_STORE_V	2339	2252	0
 * OP_STORE_V	2252	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	2252	0
 * OP_STORE_F	2253	2258	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	2258	0
 * OP_STORE_V	2257	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_F	1	2257	0
 * OP_STORE_V	2249	4	0
 * OP_CALL1	452	0	0
 * OP_MUL_FV	1909	59	2342
 * OP_STORE_V	2342	2249	0
 * OP_LOAD_V	28	414	2345
 * OP_LOAD_V	28	406	2348
 * OP_SUB_V	2345	2348	2351
 * OP_STORE_V	2351	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2256	0
 * OP_SUB_F	2257	2258	2354
 * OP_STORE_V	2354	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	488	0	0
 * OP_GT	1	2019	2355
 * OP_IFNOT	2355	21	0
 * OP_LOAD_V	28	406	2356
 * OP_ADD_V	2356	2249	2359
 * OP_STORE_V	2359	2252	0
 * OP_LOAD_V	28	406	2362
 * OP_STORE_V	2362	4	0
 * OP_STORE_V	2252	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_STORE_V	71	2252	0
 * OP_LOAD_V	28	406	2365
 * OP_SUB_V	2252	2365	2368
 * OP_STORE_V	2368	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2255	0
 * OP_GT	2255	2256	2371
 * OP_IFNOT	2371	4	0
 * OP_ADDRESS	28	414	2372
 * OP_STOREP_V	2252	2372	0
 * OP_STORE_F	2255	2256	0
 * OP_ADD_F	2257	1296	2375
 * OP_STORE_F	2375	2257	0
 * OP_STORE_V	2257	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_F	1	2257	0
 * OP_SUB_F	2257	2258	2376
 * OP_STORE_V	2376	4	0
 * OP_CALL1	1294	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	488	0	0
 * OP_GT	1	2019	2377
 * OP_IFNOT	2377	21	0
 * OP_LOAD_V	28	406	2378
 * OP_SUB_V	2378	2249	2381
 * OP_STORE_V	2381	2252	0
 * OP_LOAD_V	28	406	2384
 * OP_STORE_V	2384	4	0
 * OP_STORE_V	2252	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_STORE_V	71	2252	0
 * OP_LOAD_V	28	406	2387
 * OP_SUB_V	2252	2387	2390
 * OP_STORE_V	2390	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2255	0
 * OP_GT	2255	2256	2393
 * OP_IFNOT	2393	4	0
 * OP_ADDRESS	28	414	2394
 * OP_STOREP_V	2252	2394	0
 * OP_STORE_F	2255	2256	0
 * OP_LOAD_F	28	422	2397
 * OP_LT	2397	31	2398
 * OP_IFNOT	2398	10	0
 * OP_ADDRESS	28	422	2399
 * OP_ADD_F	31	228	2400
 * OP_CALL0	457	0	0
 * OP_MUL_F	216	1	2401
 * OP_ADD_F	2400	2401	2402
 * OP_STOREP_F	2402	2399	0
 * OP_ADDRESS	28	410	2403
 * OP_LOAD_V	28	414	2406
 * OP_STOREP_V	2406	2403	0
 * OP_LOAD_F	28	371	2409
 * OP_LT	2409	31	2410
 * OP_IFNOT	2410	43	0
 * OP_LOAD_V	28	406	2411
 * OP_LOAD_V	28	410	2414
 * OP_SUB_V	2411	2414	2417
 * OP_STORE_V	2417	2249	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1470	1	2420
 * OP_ADD_F	230	2420	2421
 * OP_STORE_V	2249	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	2421	1	2422
 * OP_STORE_V	2422	2249	0
 * OP_LOAD_V	28	410	2425
 * OP_ADD_V	2425	2249	2428
 * OP_STORE_V	2428	2249	0
 * OP_LOAD_V	28	105	2431
 * OP_STORE_V	2431	4	0
 * OP_STORE_V	2249	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	2434
 * OP_IFNOT	2434	13	0
 * OP_ADDRESS	28	406	2435
 * OP_STOREP_V	2249	2435	0
 * OP_ADDRESS	28	414	2438
 * OP_LOAD_V	28	410	2441
 * OP_STOREP_V	2441	2438	0
 * OP_ADDRESS	28	371	2444
 * OP_ADD_F	31	217	2445
 * OP_CALL0	457	0	0
 * OP_MUL_F	230	1	2446
 * OP_ADD_F	2445	2446	2447
 * OP_STOREP_F	2447	2444	0
 * OP_GOTO	9	0	0
 * OP_ADDRESS	28	414	2448
 * OP_LOAD_V	28	406	2451
 * OP_STOREP_V	2451	2448	0
 * OP_ADDRESS	28	371	2454
 * OP_ADD_F	31	214	2455
 * OP_CALL0	457	0	0
 * OP_ADD_F	2455	1	2456
 * OP_STOREP_F	2456	2454	0
 * OP_DONE	0	0	0
 */

void () func139 = {

   local entity globaldef1370;
   local entity globaldef1371;
   local vector globaldef1372;
   local vector globaldef1376;
   local float globaldef1380;
   local float globaldef1381;
   local float globaldef1382;
   local float globaldef1383;

   globaldef1371 = self;
   if ( (self.globaldef406 != world) ) {

      if ( (self.globaldef406.globaldef143 == DEAD_NO) ) {

         globaldef1371 = self.globaldef406;

      }

   }
   globaldef1381 = CONTENT_EMPTY;
   globaldef1380 = (MOVETYPE_FLY * globaldef440 ());
   if ( (self.globaldef172 != world) ) {

      if ( (self.globaldef172.globaldef143 == DEAD_NO) ) {

         globaldef1371 = self.globaldef172;

      } else {

         globaldef1371 = self;

      }

   } else {

      if ( (globaldef1380 < TRUE) ) {

         globaldef1370 = globaldef1168 (world);
         while ( (globaldef1370 != world) ) {

            if ( ((globaldef1370 != self.globaldef406) && (globaldef1370.globaldef143 == DEAD_NO)) ) {

               globaldef1380 = globaldef1366 (globaldef1370);
               if ( (globaldef1381 < globaldef1380) ) {

                  globaldef1371 = globaldef1370;
                  globaldef1381 = globaldef1380;

               }

            }
            globaldef1370 = globaldef1168 (globaldef1370);

         }

      } else {

         if ( (globaldef1380 < FL_SWIM) ) {

            globaldef1370 = globaldef1168 (world);
            while ( (globaldef1370 != world) ) {

               if ( ((globaldef1370 != self.globaldef406) && (globaldef1370.globaldef143 == DEAD_NO)) ) {

                  globaldef1380 = globaldef1370.globaldef131;
                  if ( (globaldef1380 < FALSE) ) {

                     globaldef1380 = FALSE;

                  }
                  if ( (globaldef1381 < globaldef1380) ) {

                     globaldef1371 = globaldef1370;
                     globaldef1381 = globaldef1380;

                  }

               }
               globaldef1370 = globaldef1168 (globaldef1370);

            }

         } else {

            globaldef1381 = FALSE;
            globaldef1370 = globaldef1168 (world);
            while ( (globaldef1370 != world) ) {

               if ( ((globaldef1370 != self.globaldef406) && (globaldef1370.globaldef143 == DEAD_NO)) ) {

                  globaldef1381 = (globaldef1381 + TRUE);

               }
               globaldef1370 = globaldef1168 (globaldef1370);

            }
            if ( (globaldef1381 > FALSE) ) {

               globaldef1381 = (globaldef1381 * globaldef440 ());
               globaldef1370 = world;
               do {

                  do {

                     globaldef1370 = globaldef1168 (globaldef1370);

                  } while ( ((globaldef1370 == self.globaldef406) || (globaldef1370.globaldef143 != DEAD_NO)) );
                  globaldef1381 = (globaldef1381 - TRUE);

               } while ( (globaldef1381 > FALSE) );
               if ( (globaldef1370 != world) ) {

                  globaldef1371 = globaldef1370;

               }

            }

         }

      }

   }
   if ( (globaldef1371 != self) ) {

      globaldef1283 (globaldef1371);
      self.delay = (time + MOVETYPE_BOUNCE);
      self.globaldef354 = (time + globaldef1337);

   } else {

      self.enemy = self;
      globaldef449 (self.globaldef389,self.globaldef393,TRUE,self);
      self.globaldef393 = trace_endpos;
      globaldef1372_x = ((globaldef729 * globaldef440 ()) - globaldef1384);
      globaldef1374 = (globaldef1198 * globaldef440 ());
      globaldef1375 = FALSE;
      globaldef1382 = globaldef1374;
      if ( (self.origin != self.globaldef389) ) {

         globaldef1376 = (self.origin - self.globaldef389);
         globaldef1376 = globaldef478 (globaldef1376);
         globaldef1383 = globaldef1378;

      } else {

         globaldef1383 = FALSE;

      }
      globaldef1382 = globaldef1195 (globaldef1382);
      makevectors (globaldef1372);
      globaldef1372 = (globaldef1320 * v_forward);
      globaldef1381 = vlen ((self.globaldef397 - self.globaldef389));
      if ( (globaldef471 (globaldef1195 ((globaldef1382 - globaldef1383))) > globaldef1337) ) {

         globaldef1376 = (self.globaldef389 + globaldef1372);
         globaldef449 (self.globaldef389,globaldef1376,TRUE,self);
         globaldef1376 = trace_endpos;
         globaldef1380 = vlen ((globaldef1376 - self.globaldef389));
         if ( (globaldef1380 > globaldef1381) ) {

            self.globaldef397 = globaldef1376;
            globaldef1381 = globaldef1380;

         }

      }
      globaldef1382 = (globaldef1382 + globaldef1197);
      globaldef1382 = globaldef1195 (globaldef1382);
      if ( (globaldef471 (globaldef1195 ((globaldef1382 - globaldef1383))) > globaldef1337) ) {

         globaldef1376 = (self.globaldef389 - globaldef1372);
         globaldef449 (self.globaldef389,globaldef1376,TRUE,self);
         globaldef1376 = trace_endpos;
         globaldef1380 = vlen ((globaldef1376 - self.globaldef389));
         if ( (globaldef1380 > globaldef1381) ) {

            self.globaldef397 = globaldef1376;
            globaldef1381 = globaldef1380;

         }

      }
      if ( (self.globaldef405 < time) ) {

         self.globaldef405 = ((time + MOVETYPE_WALK) + (FL_SWIM * globaldef440 ()));
         self.globaldef393 = self.globaldef397;

      }
      if ( (self.globaldef354 < time) ) {

         globaldef1372 = (self.globaldef389 - self.globaldef393);
         globaldef1372 = ((MOVETYPE_FLY + (globaldef1257 * globaldef440 ())) * globaldef442 (globaldef1372));
         globaldef1372 = (self.globaldef393 + globaldef1372);
         globaldef449 (self.origin,globaldef1372,TRUE,self);
         if ( (trace_fraction == TRUE) ) {

            self.globaldef389 = globaldef1372;
            self.globaldef397 = self.globaldef393;
            self.globaldef354 = ((time + FL_CLIENT) + (MOVETYPE_FLY * globaldef440 ()));

         } else {

            self.globaldef397 = self.globaldef389;
            self.globaldef354 = ((time + TRUE) + globaldef440 ());

         }

      }

   }

};
float globaldef1384 /* = 20.000 */;

void () func140;

// function func140
// function number 140 begins at statement 1783
/*
 * OP_LOAD_ENT	28	181	2467
 * OP_LOAD_F	2467	165	2468
 * OP_NE_F	2468	246	2469
 * OP_IFNOT	2469	7	0
 * OP_LT	31	310	2470
 * OP_IFNOT	2470	3	0
 * OP_CALL0	1588	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	1600	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	406	2471
 * OP_LOAD_ENT	28	181	2474
 * OP_LOAD_V	2474	105	2475
 * OP_SUB_V	2471	2475	2478
 * OP_STORE_V	2478	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2459	0
 * OP_LOAD_ENT	28	181	2481
 * OP_STORE_V	2481	4	0
 * OP_CALL1	1314	0	0
 * OP_LOAD_F	28	437	2482
 * OP_GT	2482	2459	2483
 * OP_AND	1	2483	2484
 * OP_LOAD_F	28	422	2485
 * OP_GT	2485	31	2486
 * OP_OR	2484	2486	2487
 * OP_IFNOT	2487	7	0
 * OP_ADDRESS	28	410	2488
 * OP_LOAD_ENT	28	181	2491
 * OP_STORE_V	2491	4	0
 * OP_CALL1	1619	0	0
 * OP_STOREP_V	1	2488	0
 * OP_GOTO	4	0	0
 * OP_LOAD_ENT	28	181	2492
 * OP_STORE_V	2492	4	0
 * OP_CALL1	1629	0	0
 * OP_LOAD_F	28	372	2493
 * OP_IFNOT	2493	5	0
 * OP_ADDRESS	28	438	2494
 * OP_STOREP_F	1225	2494	0
 * OP_RETURN	0	0	0
 * OP_GOTO	31	0	0
 * OP_LOAD_ENT	28	181	2495
 * OP_LOAD_V	2495	105	2496
 * OP_LOAD_V	28	105	2499
 * OP_SUB_V	2496	2499	2502
 * OP_STORE_V	2502	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2459	0
 * OP_LT	2459	2505	2506
 * OP_IFNOT	2506	22	0
 * OP_LOAD_ENT	28	181	2507
 * OP_LOAD_F	2507	119	2508
 * OP_LOAD_F	28	119	2509
 * OP_SUB_F	2508	2509	2510
 * OP_STORE_V	2510	4	0
 * OP_CALL1	488	0	0
 * OP_STORE_F	1	2460	0
 * OP_GT	2460	1296	2511
 * OP_IFNOT	2511	3	0
 * OP_SUB_F	1298	2460	2512
 * OP_STORE_F	2512	2460	0
 * OP_LT	2460	309	2513
 * OP_IFNOT	2513	9	0
 * OP_CALL0	1839	0	0
 * OP_STORE_V	1	2462	0
 * OP_STORE_V	2462	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	438	2514
 * OP_STOREP_F	1225	2514	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	194	2515
 * OP_EQ_E	2515	30	2516
 * OP_IFNOT	2516	58	0
 * OP_STORE_F	213	2458	0
 * OP_STORE_F	213	2459	0
 * OP_LOAD_F	28	419	2517
 * OP_LT	2517	31	2518
 * OP_IFNOT	2518	29	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2465	0
 * OP_NE_E	2465	30	2519
 * OP_IFNOT	2519	24	0
 * OP_ADD_F	2458	214	2520
 * OP_STORE_F	2520	2458	0
 * OP_LOAD_F	2465	165	2521
 * OP_EQ_F	2521	246	2522
 * OP_IFNOT	2522	15	0
 * OP_LOAD_V	2465	105	2523
 * OP_LOAD_V	28	105	2526
 * OP_SUB_V	2523	2526	2529
 * OP_STORE_V	2529	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2461	0
 * OP_LT	2461	2532	2533
 * OP_IFNOT	2533	7	0
 * OP_LOAD_V	2465	105	2534
 * OP_STORE_V	2534	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	3	0
 * OP_ADD_F	2459	214	2537
 * OP_STORE_F	2537	2459	0
 * OP_STORE_V	2465	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2465	0
 * OP_GOTO	-24	0	0
 * OP_LT	2458	229	2538
 * OP_IFNOT	2538	3	0
 * OP_STORE_F	216	2458	0
 * OP_GOTO	6	0	0
 * OP_LT	2458	217	2539
 * OP_IFNOT	2539	3	0
 * OP_STORE_F	228	2458	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	229	2458	0
 * OP_GT	2459	2458	2540
 * OP_IFNOT	2540	14	0
 * OP_ADDRESS	28	181	2541
 * OP_STOREP_ENT	28	2541	0
 * OP_ADDRESS	28	423	2542
 * OP_STOREP_ENT	30	2542	0
 * OP_ADDRESS	28	438	2543
 * OP_STOREP_F	1223	2543	0
 * OP_ADDRESS	28	371	2544
 * OP_ADD_F	31	765	2545
 * OP_STOREP_F	2545	2544	0
 * OP_ADDRESS	28	422	2546
 * OP_ADD_F	31	228	2547
 * OP_STOREP_F	2547	2546	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	371	2548
 * OP_LT	2548	31	2549
 * OP_IFNOT	2549	2	0
 * OP_CALL0	1588	0	0
 * OP_DONE	0	0	0
 */

void () func140 = {

   local float globaldef1386;
   local float globaldef1387;
   local float globaldef1388;
   local float globaldef1389;
   local vector globaldef1390;
   local entity globaldef1394;
   local float globaldef1395;

   if ( (self.enemy.globaldef143 != DEAD_NO) ) {

      if ( (time < SVC_FINALE) ) {

         globaldef1274 ();
         return ;

      }
      globaldef1275 ();
      return ;

   }
   globaldef1387 = vlen ((self.globaldef389 - self.enemy.origin));
   globaldef1205 (self.enemy);
   if ( ((globaldef1205 (self.enemy) && (self.globaldef420 > globaldef1387)) || (self.globaldef405 > time)) ) {

      self.globaldef393 = globaldef1277 (self.enemy);

   } else {

      globaldef1283 (self.enemy);

   }
   if ( self.globaldef355 ) {

      self.globaldef421 = globaldef1163;
      return ;

   } else {

      globaldef1387 = vlen ((self.enemy.origin - self.origin));
      if ( (globaldef1387 < globaldef1396) ) {

         globaldef1388 = globaldef471 ((self.enemy.globaldef97 - self.globaldef97));
         if ( (globaldef1388 > globaldef1197) ) {

            globaldef1388 = (globaldef1198 - globaldef1388);

         }
         if ( (globaldef1388 < SVC_INTERMISSION) ) {

            globaldef1390 = globaldef1304 ();
            if ( globaldef1200 (globaldef1390) ) {

               self.globaldef421 = globaldef1163;
               return ;

            }

         }

      }

   }
   if ( (self.globaldef172 == world) ) {

      globaldef1386 = FALSE;
      globaldef1387 = FALSE;
      if ( (self.delay < time) ) {

         globaldef1394 = globaldef1168 (world);
         while ( (globaldef1394 != world) ) {

            globaldef1386 = (globaldef1386 + TRUE);
            if ( (globaldef1394.globaldef143 == DEAD_NO) ) {

               globaldef1389 = vlen ((globaldef1394.origin - self.origin));
               if ( (globaldef1389 < globaldef1397) ) {

                  if ( globaldef1200 (globaldef1394.origin) ) {

                     globaldef1387 = (globaldef1387 + TRUE);

                  }

               }

            }
            globaldef1394 = globaldef1168 (globaldef1394);

         }

      }
      if ( (globaldef1386 < MOVETYPE_STEP) ) {

         globaldef1386 = FL_SWIM;

      } else {

         if ( (globaldef1386 < FL_CLIENT) ) {

            globaldef1386 = MOVETYPE_WALK;

         } else {

            globaldef1386 = MOVETYPE_STEP;

         }

      }
      if ( (globaldef1387 > globaldef1386) ) {

         self.enemy = self;
         self.globaldef406 = world;
         self.globaldef421 = globaldef1161;
         self.globaldef354 = (time + globaldef748);
         self.globaldef405 = (time + MOVETYPE_WALK);
         return ;

      }

   }
   if ( (self.globaldef354 < time) ) {

      globaldef1274 ();

   }

};
float globaldef1396 /* = 170.000 */;
float globaldef1397 /* = 1500.000 */;

void () func141;

// function func141
// function number 141 begins at statement 1920
/*
 * OP_LOAD_ENT	28	181	2555
 * OP_LOAD_F	2555	165	2556
 * OP_NE_F	2556	246	2557
 * OP_IFNOT	2557	8	0
 * OP_LT	31	310	2558
 * OP_IFNOT	2558	3	0
 * OP_CALL0	1588	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	1600	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	23	0	0
 * OP_LOAD_ENT	28	181	2559
 * OP_STORE_V	2559	4	0
 * OP_CALL1	1314	0	0
 * OP_IFNOT	1	16	0
 * OP_ADDRESS	28	406	2560
 * OP_CALL0	1839	0	0
 * OP_STOREP_V	1	2560	0
 * OP_ADDRESS	28	410	2563
 * OP_CALL0	1877	0	0
 * OP_STOREP_V	1	2563	0
 * OP_LOAD_V	28	406	2566
 * OP_STORE_V	2566	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	277	2569
 * OP_IFNOT	2569	4	0
 * OP_LOAD_ENT	28	181	2570
 * OP_STORE_V	2570	4	0
 * OP_CALL1	1629	0	0
 * OP_GOTO	4	0	0
 * OP_LOAD_ENT	28	181	2571
 * OP_STORE_V	2571	4	0
 * OP_CALL1	1629	0	0
 * OP_LOAD_F	28	371	2572
 * OP_LT	2572	31	2573
 * OP_IFNOT	2573	2	0
 * OP_CALL0	1588	0	0
 * OP_DONE	0	0	0
 */

void () func141 = {

   local entity globaldef1399;
   local vector globaldef1400;

   if ( (self.enemy.globaldef143 != DEAD_NO) ) {

      if ( (time < SVC_FINALE) ) {

         globaldef1274 ();
         return ;

      }
      globaldef1275 ();
      return ;

   } else {

      if ( globaldef1205 (self.enemy) ) {

         self.globaldef389 = globaldef1304 ();
         self.globaldef393 = globaldef1314 ();
         if ( (globaldef470 (self.globaldef389) == CONTENT_SOLID) ) {

            globaldef1283 (self.enemy);

         }

      } else {

         globaldef1283 (self.enemy);

      }

   }
   if ( (self.globaldef354 < time) ) {

      globaldef1274 ();

   }

};

void () func142;

// function func142
// function number 142 begins at statement 1958
/*
 * OP_LOAD_F	28	177	2596
 * OP_STORE_F	2596	2579	0
 * OP_STORE_F	213	2581	0
 * OP_STORE_F	2597	2582	0
 * OP_STORE_F	2598	2583	0
 * OP_STORE_F	2599	2584	0
 * OP_STORE_F	2600	2585	0
 * OP_STORE_V	286	2586	0
 * OP_STORE_F	213	2595	0
 * OP_STORE_V	30	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2578	0
 * OP_NE_E	2578	30	2601
 * OP_IFNOT	2601	69	0
 * OP_LOAD_F	2578	165	2602
 * OP_EQ_F	2602	246	2603
 * OP_IFNOT	2603	62	0
 * OP_LOAD_V	2578	105	2604
 * OP_LOAD_V	28	105	2607
 * OP_SUB_V	2604	2607	2610
 * OP_STORE_V	2610	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2580	0
 * OP_LT	2580	2532	2613
 * OP_IFNOT	2613	54	0
 * OP_LOAD_V	2578	105	2614
 * OP_STORE_V	2614	4	0
 * OP_CALL1	1303	0	0
 * OP_IFNOT	1	50	0
 * OP_ADD_F	2595	214	2617
 * OP_STORE_F	2617	2595	0
 * OP_LOAD_V	2578	105	2618
 * OP_LOAD_V	28	105	2621
 * OP_SUB_V	2618	2621	2624
 * OP_STORE_V	2624	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	2575	0
 * OP_SUB_F	2576	2579	2627
 * OP_STORE_F	2627	2580	0
 * OP_GT	2580	1296	2628
 * OP_IFNOT	2628	4	0
 * OP_SUB_F	2580	1298	2629
 * OP_STORE_F	2629	2580	0
 * OP_GOTO	-4	0	0
 * OP_LT	2580	1300	2630
 * OP_IFNOT	2630	4	0
 * OP_ADD_F	2580	1298	2631
 * OP_STORE_F	2631	2580	0
 * OP_GOTO	-4	0	0
 * OP_STORE_V	2580	4	0
 * OP_CALL1	488	0	0
 * OP_LT	1	2598	2632
 * OP_IFNOT	2632	13	0
 * OP_ADD_F	2581	214	2633
 * OP_STORE_F	2633	2581	0
 * OP_LOAD_V	2578	105	2634
 * OP_ADD_V	2586	2634	2637
 * OP_STORE_V	2637	2586	0
 * OP_LT	2580	2583	2640
 * OP_IFNOT	2640	2	0
 * OP_STORE_F	2580	2583	0
 * OP_GT	2580	2582	2641
 * OP_IFNOT	2641	2	0
 * OP_STORE_F	2580	2582	0
 * OP_GOTO	14	0	0
 * OP_GT	2580	213	2642
 * OP_IFNOT	2642	7	0
 * OP_LT	2580	2585	2643
 * OP_IFNOT	2643	4	0
 * OP_STORE_F	2580	2585	0
 * OP_LOAD_V	2578	105	2644
 * OP_STORE_V	2644	2589	0
 * OP_GOTO	6	0	0
 * OP_GT	2580	2584	2647
 * OP_IFNOT	2647	4	0
 * OP_STORE_F	2580	2584	0
 * OP_LOAD_V	2578	105	2648
 * OP_STORE_V	2648	2592	0
 * OP_STORE_V	2578	4	0
 * OP_CALL1	1230	0	0
 * OP_STORE_ENT	1	2578	0
 * OP_GOTO	-69	0	0
 * OP_GT	2595	213	2651
 * OP_IFNOT	2651	35	0
 * OP_GT	2595	214	2652
 * OP_IFNOT	2652	4	0
 * OP_ADDRESS	28	422	2653
 * OP_ADD_F	31	228	2654
 * OP_STOREP_F	2654	2653	0
 * OP_LT	2581	2595	2655
 * OP_IFNOT	2655	20	0
 * OP_EQ_F	2581	213	2656
 * OP_SUB_F	2582	2584	2657
 * OP_LE	2657	2658	2659
 * OP_OR	2656	2659	2660
 * OP_SUB_F	2585	2583	2661
 * OP_LE	2661	2658	2662
 * OP_OR	2660	2662	2663
 * OP_IFNOT	2663	12	0
 * OP_ADD_F	2581	214	2664
 * OP_STORE_F	2664	2581	0
 * OP_SUB_F	2582	2584	2665
 * OP_SUB_F	2585	2583	2666
 * OP_GT	2665	2666	2667
 * OP_IFNOT	2667	4	0
 * OP_ADD_V	2586	2589	2668
 * OP_STORE_V	2668	2586	0
 * OP_GOTO	3	0	0
 * OP_ADD_V	2586	2592	2671
 * OP_STORE_V	2671	2586	0
 * OP_DIV_F	2586	2581	2674
 * OP_STORE_F	2674	2586	0
 * OP_DIV_F	2587	2581	2675
 * OP_STORE_F	2675	2587	0
 * OP_DIV_F	2588	2581	2676
 * OP_STORE_F	2676	2588	0
 * OP_ADDRESS	28	410	2677
 * OP_STOREP_V	2586	2677	0
 * OP_ADDRESS	28	406	2680
 * OP_LOAD_V	28	105	2683
 * OP_STOREP_V	2683	2680	0
 * OP_LOAD_F	28	422	2686
 * OP_LT	2686	31	2687
 * OP_LOAD_F	28	371	2688
 * OP_LT	2688	31	2689
 * OP_OR	2687	2689	2690
 * OP_IFNOT	2690	2	0
 * OP_CALL0	1588	0	0
 * OP_DONE	0	0	0
 */

void () func142 = {

   local vector globaldef1405;
   local entity globaldef1409;
   local float globaldef1410;
   local float globaldef1411;
   local float globaldef1412;
   local float globaldef1413;
   local float globaldef1414;
   local float globaldef1415;
   local float globaldef1416;
   local vector globaldef1417;
   local vector globaldef1421;
   local vector globaldef1425;
   local float globaldef1429;

   globaldef1410 = self.globaldef155;
   globaldef1412 = FALSE;
   globaldef1413 = globaldef1430;
   globaldef1414 = globaldef1431;
   globaldef1415 = globaldef1432;
   globaldef1416 = globaldef1433;
   globaldef1417 = VEC_ORIGIN;
   globaldef1429 = FALSE;
   globaldef1409 = globaldef1168 (world);
   while ( (globaldef1409 != world) ) {

      if ( (globaldef1409.globaldef143 == DEAD_NO) ) {

         globaldef1411 = vlen ((globaldef1409.origin - self.origin));
         if ( (globaldef1411 < globaldef1397) ) {

            if ( globaldef1200 (globaldef1409.origin) ) {

               globaldef1429 = (globaldef1429 + TRUE);
               globaldef1405 = globaldef478 ((globaldef1409.origin - self.origin));
               globaldef1411 = (globaldef1407 - globaldef1410);
               while ( (globaldef1411 > globaldef1197) ) {

                  globaldef1411 = (globaldef1411 - globaldef1198);

               }
               while ( (globaldef1411 < globaldef1199) ) {

                  globaldef1411 = (globaldef1411 + globaldef1198);

               }
               if ( (globaldef471 (globaldef1411) < globaldef1431) ) {

                  globaldef1412 = (globaldef1412 + TRUE);
                  globaldef1417 = (globaldef1417 + globaldef1409.origin);
                  if ( (globaldef1411 < globaldef1414) ) {

                     globaldef1414 = globaldef1411;

                  }
                  if ( (globaldef1411 > globaldef1413) ) {

                     globaldef1413 = globaldef1411;

                  }

               } else {

                  if ( (globaldef1411 > FALSE) ) {

                     if ( (globaldef1411 < globaldef1416) ) {

                        globaldef1416 = globaldef1411;
                        globaldef1421 = globaldef1409.origin;

                     }

                  } else {

                     if ( (globaldef1411 > globaldef1415) ) {

                        globaldef1415 = globaldef1411;
                        globaldef1425 = globaldef1409.origin;

                     }

                  }

               }

            }

         }

      }
      globaldef1409 = globaldef1168 (globaldef1409);

   }
   if ( (globaldef1429 > FALSE) ) {

      if ( (globaldef1429 > TRUE) ) {

         self.globaldef405 = (time + MOVETYPE_WALK);

      }
      if ( (globaldef1412 < globaldef1429) ) {

         if ( (((globaldef1412 == FALSE) || ((globaldef1413 - globaldef1415) <= globaldef1434)) || ((globaldef1416 - globaldef1414) <= globaldef1434)) ) {

            globaldef1412 = (globaldef1412 + TRUE);
            if ( ((globaldef1413 - globaldef1415) > (globaldef1416 - globaldef1414)) ) {

               globaldef1417 = (globaldef1417 + globaldef1421);

            } else {

               globaldef1417 = (globaldef1417 + globaldef1425);

            }

         }

      }
      globaldef1417_x = (globaldef1417_x / globaldef1412);
      globaldef1419 = (globaldef1419 / globaldef1412);
      globaldef1420 = (globaldef1420 / globaldef1412);
      self.globaldef393 = globaldef1417;

   }
   self.globaldef389 = self.origin;
   if ( ((self.globaldef405 < time) || (self.globaldef354 < time)) ) {

      globaldef1274 ();

   }

};
float globaldef1430 /* = -45.000 */;
float globaldef1431 /* = 45.000 */;
float globaldef1432 /* = -181.000 */;
float globaldef1433 /* = 181.000 */;
float globaldef1434 /* = 90.000 */;

void () func143;

// function func143
// function number 143 begins at statement 2087
/*
 * OP_LOAD_F	28	371	2693
 * OP_LT	2693	31	2694
 * OP_IFNOT	2694	3	0
 * OP_CALL0	1588	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	2695
 * OP_NE_E	2695	28	2696
 * OP_IFNOT	2696	19	0
 * OP_LOAD_V	28	105	2697
 * OP_LOAD_V	28	406	2700
 * OP_SUB_V	2697	2700	2703
 * OP_STORE_V	2703	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	2692	0
 * OP_GT	2692	214	2706
 * OP_LOAD_V	28	400	2707
 * OP_NE_V	2707	286	2710
 * OP_OR	2706	2710	2711
 * OP_IFNOT	2711	8	0
 * OP_ADD_F	31	539	2712
 * OP_STORE_F	2712	2692	0
 * OP_LOAD_F	28	422	2713
 * OP_LT	2713	2692	2714
 * OP_IFNOT	2714	3	0
 * OP_ADDRESS	28	422	2715
 * OP_STOREP_F	2692	2715	0
 * OP_LOAD_F	28	422	2716
 * OP_GT	31	2716	2717
 * OP_IFNOT	2717	3	0
 * OP_CALL0	1588	0	0
 * OP_GOTO	8	0	0
 * OP_LOAD_ENT	28	181	2718
 * OP_NE_E	2718	28	2719
 * OP_IFNOT	2719	5	0
 * OP_ADDRESS	28	410	2720
 * OP_LOAD_ENT	28	181	2723
 * OP_LOAD_V	2723	105	2724
 * OP_STOREP_V	2724	2720	0
 * OP_LOAD_ENT	28	181	2727
 * OP_NE_E	2727	28	2728
 * OP_IFNOT	2728	31	0
 * OP_LOAD_V	28	105	2729
 * OP_STORE_V	2729	4	0
 * OP_LOAD_V	28	410	2732
 * OP_STORE_V	2732	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_F	70	214	2735
 * OP_IFNOT	2735	15	0
 * OP_LOAD_ENT	28	181	2736
 * OP_LOAD_V	2736	113	2737
 * OP_EQ_V	2737	286	2740
 * OP_IFNOT	2740	3	0
 * OP_CALL0	1588	0	0
 * OP_GOTO	9	0	0
 * OP_LOAD_ENT	28	181	2741
 * OP_STORE_V	2741	4	0
 * OP_CALL1	1629	0	0
 * OP_ADDRESS	28	438	2742
 * OP_STOREP_F	1229	2742	0
 * OP_ADDRESS	28	422	2743
 * OP_ADD_F	31	216	2744
 * OP_STOREP_F	2744	2743	0
 * OP_LOAD_ENT	28	181	2745
 * OP_LOAD_V	2745	113	2746
 * OP_NE_V	2746	286	2749
 * OP_IFNOT	2749	4	0
 * OP_ADDRESS	28	422	2750
 * OP_ADD_F	31	216	2751
 * OP_STOREP_F	2751	2750	0
 * OP_LOAD_V	28	406	2752
 * OP_LOAD_V	28	410	2755
 * OP_SUB_V	2752	2755	2758
 * OP_STORE_V	2758	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	2019	2761
 * OP_IFNOT	2761	17	0
 * OP_ADDRESS	28	406	2762
 * OP_LOAD_V	28	406	2765
 * OP_LOAD_V	28	410	2768
 * OP_SUB_V	2765	2768	2771
 * OP_STOREP_V	2771	2762	0
 * OP_ADDRESS	28	406	2774
 * OP_LOAD_V	28	406	2777
 * OP_STORE_V	2777	4	0
 * OP_CALL1	459	0	0
 * OP_STOREP_V	1	2774	0
 * OP_ADDRESS	28	406	2780
 * OP_LOAD_V	28	406	2784
 * OP_MUL_FV	2783	2784	2787
 * OP_LOAD_V	28	410	2790
 * OP_ADD_V	2787	2790	2793
 * OP_STOREP_V	2793	2780	0
 * OP_DONE	0	0	0
 */

void () func143 = {

   local float globaldef1436;

   if ( (self.globaldef354 < time) ) {

      globaldef1274 ();
      return ;

   }
   if ( (self.enemy != self) ) {

      globaldef1436 = vlen ((self.origin - self.globaldef389));
      if ( ((globaldef1436 > TRUE) || (self.globaldef383 != VEC_ORIGIN)) ) {

         globaldef1436 = (time + globaldef522);
         if ( (self.globaldef405 < globaldef1436) ) {

            self.globaldef405 = globaldef1436;

         }

      }

   }
   if ( (time > self.globaldef405) ) {

      globaldef1274 ();

   } else {

      if ( (self.enemy != self) ) {

         self.globaldef393 = self.enemy.origin;

      }

   }
   if ( (self.enemy != self) ) {

      globaldef449 (self.origin,self.globaldef393,TRUE,self);
      if ( (trace_fraction != TRUE) ) {

         if ( (self.enemy.velocity == VEC_ORIGIN) ) {

            globaldef1274 ();

         } else {

            globaldef1283 (self.enemy);
            self.globaldef421 = globaldef1167;
            self.globaldef405 = (time + FL_SWIM);

         }

      }
      if ( (self.enemy.velocity != VEC_ORIGIN) ) {

         self.globaldef405 = (time + FL_SWIM);

      }

   }
   if ( (vlen ((self.globaldef389 - self.globaldef393)) > globaldef1337) ) {

      self.globaldef389 = (self.globaldef389 - self.globaldef393);
      self.globaldef389 = globaldef442 (self.globaldef389);
      self.globaldef389 = ((globaldef1437 * self.globaldef389) + self.globaldef393);

   }

};
float globaldef1437 /* = 59.000 */;

void () func144;

// function func144
// function number 144 begins at statement 2182
/*
 * OP_CALL0	2177	0	0
 * OP_ADDRESS	28	113	2797
 * OP_STOREP_V	286	2797	0
 * OP_ADDRESS	28	121	2800
 * OP_STOREP_V	286	2800	0
 * OP_LOAD_F	28	438	2803
 * OP_EQ_F	2803	1222	2804
 * OP_IFNOT	2804	6	0
 * OP_CALL0	2246	0	0
 * OP_STORE_V	214	4	0
 * OP_STORE_V	2805	7	0
 * OP_CALL2	1474	0	0
 * OP_GOTO	32	0	0
 * OP_LOAD_F	28	438	2806
 * OP_EQ_F	2806	1224	2807
 * OP_IFNOT	2807	6	0
 * OP_CALL0	2457	0	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	745	7	0
 * OP_CALL2	1474	0	0
 * OP_GOTO	24	0	0
 * OP_LOAD_F	28	438	2808
 * OP_EQ_F	2808	1225	2809
 * OP_IFNOT	2809	6	0
 * OP_CALL0	2550	0	0
 * OP_STORE_V	741	4	0
 * OP_STORE_V	1663	7	0
 * OP_CALL2	1474	0	0
 * OP_GOTO	16	0	0
 * OP_LOAD_F	28	438	2810
 * OP_EQ_F	2810	1223	2811
 * OP_IFNOT	2811	6	0
 * OP_CALL0	2574	0	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	2805	7	0
 * OP_CALL2	1474	0	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	438	2812
 * OP_EQ_F	2812	1229	2813
 * OP_IFNOT	2813	5	0
 * OP_CALL0	2691	0	0
 * OP_STORE_V	1997	4	0
 * OP_STORE_V	2003	7	0
 * OP_CALL2	1474	0	0
 * OP_CALL0	1992	0	0
 * OP_DONE	0	0	0
 */

void () func144 = {

   globaldef1362 ();
   self.velocity = VEC_ORIGIN;
   self.avelocity = VEC_ORIGIN;
   if ( (self.globaldef421 == globaldef1160) ) {

      globaldef1369 ();
      globaldef1259 (TRUE,globaldef1439);

   } else {

      if ( (self.globaldef421 == globaldef1162) ) {

         globaldef1385 ();
         globaldef1259 (FALSE,globaldef728);

      } else {

         if ( (self.globaldef421 == globaldef1163) ) {

            globaldef1398 ();
            globaldef1259 (globaldef724,globaldef1302);

         } else {

            if ( (self.globaldef421 == globaldef1161) ) {

               globaldef1404 ();
               globaldef1259 (FALSE,globaldef1439);

            } else {

               if ( (self.globaldef421 == globaldef1167) ) {

                  globaldef1435 ();
                  globaldef1259 (globaldef1335,globaldef1336);

               }

            }

         }

      }

   }
   globaldef1331 ();

};
float globaldef1439 /* = 80.000 */;
entity () func387;

void () func145;

// function func145
// function number 145 begins at statement 2228
/*
 * OP_LOAD_S	28	129	2818
 * OP_EQ_S	2818	2025	2819
 * OP_IFNOT	2819	18	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1061	0	0
 * OP_ADDRESS	28	129	2820
 * OP_STOREP_S	1236	2820	0
 * OP_CALL0	2814	0	0
 * OP_STORE_ENT	1	2817	0
 * OP_ADDRESS	28	105	2821
 * OP_LOAD_V	2817	105	2824
 * OP_ADD_V	2824	2827	2830
 * OP_STOREP_V	2830	2821	0
 * OP_ADDRESS	28	117	2833
 * OP_LOAD_V	2817	117	2836
 * OP_STOREP_V	2836	2833	0
 * OP_ADDRESS	28	174	2839
 * OP_STOREP_F	214	2839	0
 * OP_SUB_F	809	214	2840
 * OP_STORE_F	2840	809	0
 * OP_LOAD_S	28	129	2841
 * OP_NE_S	2841	1236	2842
 * OP_IFNOT	2842	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	152	2843
 * OP_LE	2843	213	2844
 * OP_LOAD_F	28	165	2845
 * OP_NE_F	2845	246	2846
 * OP_OR	2844	2846	2847
 * OP_IFNOT	2847	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	129	2848
 * OP_STOREP_S	2849	2848	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	348	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	93	2850
 * OP_STOREP_F	526	2850	0
 * OP_BITAND	821	777	2851
 * OP_IFNOT	2851	5	0
 * OP_ADDRESS	28	574	2852
 * OP_STOREP_F	213	2852	0
 * OP_ADDRESS	28	573	2853
 * OP_STOREP_F	213	2853	0
 * OP_ADDRESS	28	155	2854
 * OP_STOREP_S	348	2854	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	113	2855
 * OP_STOREP_V	286	2855	0
 * OP_ADDRESS	28	166	2858
 * OP_STOREP_V	286	2858	0
 * OP_ADDRESS	28	103	2861
 * OP_STOREP_F	227	2861	0
 * OP_ADDRESS	28	104	2862
 * OP_STOREP_F	237	2862	0
 * OP_ADDRESS	28	163	2863
 * OP_STOREP_F	250	2863	0
 * OP_ADDRESS	28	174	2864
 * OP_STOREP_F	214	2864	0
 * OP_ADDRESS	28	150	2865
 * OP_STOREP_F	276	2865	0
 * OP_ADDRESS	28	153	2866
 * OP_STOREP_F	213	2866	0
 * OP_ADDRESS	28	133	2867
 * OP_STOREP_F	213	2867	0
 * OP_ADDRESS	28	390	2868
 * OP_STOREP_F	214	2868	0
 * OP_ADDRESS	28	383	2869
 * OP_STOREP_F	213	2869	0
 * OP_ADDRESS	28	384	2870
 * OP_STOREP_F	213	2870	0
 * OP_ADDRESS	28	380	2871
 * OP_STOREP_F	213	2871	0
 * OP_ADDRESS	28	386	2872
 * OP_STOREP_F	213	2872	0
 * OP_ADDRESS	28	381	2873
 * OP_STOREP_F	213	2873	0
 * OP_ADDRESS	28	388	2874
 * OP_STOREP_F	213	2874	0
 * OP_ADDRESS	28	382	2875
 * OP_STOREP_F	213	2875	0
 * OP_ADDRESS	28	406	2876
 * OP_LOAD_V	28	105	2879
 * OP_STOREP_V	2879	2876	0
 * OP_LOAD_V	28	175	2882
 * OP_STORE_V	2882	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	410	2885
 * OP_LOAD_V	28	406	2888
 * OP_MUL_FV	1997	59	2891
 * OP_ADD_V	2888	2891	2894
 * OP_STOREP_V	2894	2885	0
 * OP_ADDRESS	28	181	2897
 * OP_STOREP_ENT	28	2897	0
 * OP_ADDRESS	28	423	2898
 * OP_STOREP_ENT	30	2898	0
 * OP_ADDRESS	28	194	2899
 * OP_STOREP_ENT	30	2899	0
 * OP_ADDRESS	28	424	2900
 * OP_STOREP_F	214	2900	0
 * OP_ADDRESS	28	400	2901
 * OP_STOREP_V	286	2901	0
 * OP_ADDRESS	28	422	2904
 * OP_STOREP_F	31	2904	0
 * OP_ADDRESS	28	419	2905
 * OP_STOREP_F	31	2905	0
 * OP_ADDRESS	28	372	2906
 * OP_STOREP_F	213	2906	0
 * OP_CALL0	1588	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	2907	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1164	0	0
 * OP_ADD_F	809	214	2908
 * OP_STORE_F	2908	809	0
 * OP_DONE	0	0	0
 */

void () func145 = {

   local entity globaldef1442;
   local entity globaldef1443;

   if ( (self.classname == globaldef1339) ) {

      globaldef999 (self);
      self.classname = "player";
      globaldef1443 = globaldef1440 ();
      self.origin = (globaldef1443.origin + globaldef1444);
      self.angles = globaldef1443.angles;
      self.globaldef152 = TRUE;
      globaldef792 = (globaldef792 - TRUE);

   }
   if ( (self.classname != "player") ) {

      return ;

   }
   if ( ((self.globaldef130 <= FALSE) || (self.globaldef143 != DEAD_NO)) ) {

      return ;

   }
   self.classname = globaldef1445;
   setmodel (self,string_null);
   self.modelindex = globaldef509;
   if ( (globaldef804 & globaldef760) ) {

      self.globaldef557 = FALSE;
      self.globaldef556 = FALSE;

   }
   self.globaldef133 = string_null;
   globaldef438 (self,VEC_ORIGIN,VEC_ORIGIN);
   self.velocity = VEC_ORIGIN;
   self.globaldef144 = VEC_ORIGIN;
   self.movetype = MOVETYPE_NONE;
   self.solid = SOLID_NOT;
   self.globaldef141 = DAMAGE_NO;
   self.globaldef152 = TRUE;
   self.nextthink = CONTENT_EMPTY;
   self.globaldef131 = FALSE;
   self.globaldef111 = FALSE;
   self.globaldef373 = TRUE;
   self.globaldef366 = FALSE;
   self.globaldef367 = FALSE;
   self.globaldef363 = FALSE;
   self.globaldef369 = FALSE;
   self.globaldef364 = FALSE;
   self.globaldef371 = FALSE;
   self.globaldef365 = FALSE;
   self.globaldef389 = self.origin;
   makevectors (self.globaldef153);
   self.globaldef393 = (self.globaldef389 + (globaldef1335 * v_forward));
   self.enemy = self;
   self.globaldef406 = world;
   self.globaldef172 = world;
   self.globaldef407 = TRUE;
   self.globaldef383 = VEC_ORIGIN;
   self.globaldef405 = time;
   self.delay = time;
   self.globaldef355 = FALSE;
   globaldef1274 ();
   globaldef887 (self,globaldef1446);
   globaldef1102 (self);
   globaldef792 = (globaldef792 + TRUE);

};
vector globaldef1444 /* = '0.000 0.000 2.000' */;
string globaldef1445 /* = "KasCam" */;
string globaldef1446 /* = "KasCam activated\n" */;

void () func146;

// function func146
// function number 146 begins at statement 2348
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2913	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	2912	0
 * OP_STORE_F	235	2910	0
 * OP_GT	2910	213	2914
 * OP_IFNOT	2914	18	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	2911	0
 * OP_ADDRESS	2911	129	2915
 * OP_STOREP_S	1940	2915	0
 * OP_ADDRESS	2911	117	2916
 * OP_LOAD_V	2912	117	2919
 * OP_STOREP_V	2919	2916	0
 * OP_ADDRESS	2911	175	2922
 * OP_LOAD_V	2912	175	2925
 * OP_STOREP_V	2925	2922	0
 * OP_STORE_V	2911	4	0
 * OP_LOAD_V	2912	105	2928
 * OP_STORE_V	2928	7	0
 * OP_CALL2	453	0	0
 * OP_SUB_F	2910	214	2931
 * OP_STORE_F	2931	2910	0
 * OP_GOTO	-18	0	0
 * OP_DONE	0	0	0
 */

void () func146 = {

   local float globaldef1448;
   local entity globaldef1449;
   local entity globaldef1450;

   globaldef1450 = find (world,classname,globaldef1451);
   globaldef1448 = MOVETYPE_BOUNCE;
   while ( (globaldef1448 > FALSE) ) {

      globaldef1449 = spawn ();
      globaldef1449.classname = globaldef1324;
      globaldef1449.angles = globaldef1450.angles;
      globaldef1449.globaldef153 = globaldef1450.globaldef153;
      setorigin (globaldef1449,globaldef1450.origin);
      globaldef1448 = (globaldef1448 - TRUE);

   }

};
string globaldef1451 /* = "info_player_start" */;
float () func147;

// function func147
// function number 147 begins at statement 2374
/*
 * OP_LOAD_S	28	129	2935
 * OP_EQ_S	2935	2849	2936
 * OP_IFNOT	2936	5	0
 * OP_SUB_F	809	214	2937
 * OP_STORE_F	2937	809	0
 * OP_RETURN	213	0	0
 * OP_GOTO	26	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2849	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	2933	0
 * OP_IFNOT	2933	19	0
 * OP_LOAD_ENT	2933	181	2938
 * OP_EQ_E	2938	28	2939
 * OP_IFNOT	2939	5	0
 * OP_STORE_ENT	28	2934	0
 * OP_STORE_ENT	2933	28	0
 * OP_CALL0	1588	0	0
 * OP_STORE_ENT	2934	28	0
 * OP_LOAD_ENT	2933	423	2940
 * OP_EQ_E	2940	28	2941
 * OP_IFNOT	2941	3	0
 * OP_ADDRESS	2933	423	2942
 * OP_STOREP_ENT	30	2942	0
 * OP_STORE_V	2933	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2849	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	2933	0
 * OP_GOTO	-18	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () func147 = {

   local entity globaldef1453;
   local entity globaldef1454;

   if ( (self.classname == globaldef1445) ) {

      globaldef792 = (globaldef792 - TRUE);
      return ( FALSE );

   } else {

      globaldef1453 = find (world,classname,globaldef1445);
      while ( globaldef1453 ) {

         if ( (globaldef1453.enemy == self) ) {

            globaldef1454 = self;
            self = globaldef1453;
            globaldef1274 ();
            self = globaldef1454;

         }
         if ( (globaldef1453.globaldef406 == self) ) {

            globaldef1453.globaldef406 = world;

         }
         globaldef1453 = find (globaldef1453,classname,globaldef1445);

      }
      return ( TRUE );

   }

};

void (entity globaldef1456, entity globaldef1457) func148;

// function func148
// function number 148 begins at statement 2407
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2849	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	2947	0
 * OP_IFNOT	2947	25	0
 * OP_LOAD_ENT	2947	181	2948
 * OP_EQ_E	2944	2948	2949
 * OP_IFNOT	2949	11	0
 * OP_LOAD_F	2947	438	2950
 * OP_NE_F	2950	1229	2951
 * OP_IFNOT	2951	5	0
 * OP_STORE_ENT	28	2946	0
 * OP_STORE_ENT	2947	28	0
 * OP_CALL0	1600	0	0
 * OP_STORE_ENT	2946	28	0
 * OP_ADDRESS	2947	181	2952
 * OP_STOREP_ENT	2945	2952	0
 * OP_GOTO	6	0	0
 * OP_LOAD_ENT	2947	181	2953
 * OP_EQ_E	2945	2953	2954
 * OP_IFNOT	2954	3	0
 * OP_ADDRESS	2947	181	2955
 * OP_STOREP_ENT	2947	2955	0
 * OP_STORE_V	2947	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2849	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	2947	0
 * OP_GOTO	-24	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef1456, entity globaldef1457) func148 = {

   local entity globaldef1458;
   local entity globaldef1459;

   globaldef1459 = find (world,classname,globaldef1445);
   while ( globaldef1459 ) {

      if ( (globaldef1456 == globaldef1459.enemy) ) {

         if ( (globaldef1459.globaldef421 != globaldef1167) ) {

            globaldef1458 = self;
            self = globaldef1459;
            globaldef1275 ();
            self = globaldef1458;

         }
         globaldef1459.enemy = globaldef1457;

      } else {

         if ( (globaldef1457 == globaldef1459.enemy) ) {

            globaldef1459.enemy = globaldef1459;

         }

      }
      globaldef1459 = find (globaldef1459,classname,globaldef1445);

   }

};
