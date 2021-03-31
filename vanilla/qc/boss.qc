void (vector p) boss_missile;
// boss_face
// function begins at statement 17156, parm_start=9922
// OP_LOAD_ENT	28	181	9922
// OP_LOAD_F	9922	152	9923
// OP_LE	9923	337	9924
// OP_CALL0	452	0	0
// OP_LT	1	2766	9925
// OP_OR	9924	9925	9926
// OP_IFNOT	9926	18	0
// OP_ADDRESS	28	181	9927
// OP_LOAD_ENT	28	181	9928
// OP_STORE_V	9928	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	712	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	9927	0
// OP_LOAD_ENT	28	181	9929
// OP_NOT_ENT	9929	0	9930
// OP_IFNOT	9930	8	0
// OP_ADDRESS	28	181	9931
// OP_LOAD_ENT	28	181	9932
// OP_STORE_V	9932	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	712	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	9931	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () boss_face = 
{
    
    if((self.enemy.health <= MSG_BROADCAST) || (random() < 0.020))
    {
        self.enemy = find(self.enemy, classname, "player");
        
        if(!self.enemy)
        {
            self.enemy = find(self.enemy, classname, "player");
        }
        
    }
    
    ai_face();
};

// boss_rise1
// function begins at statement 17182, parm_start=9934
// OP_STATE	337	9934	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9935	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () boss_rise1 = [0.000, boss_rise2]
{
    sound(self, CHAN_WEAPON, "boss1/out1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
};

// boss_rise2
// function begins at statement 17190, parm_start=9936
// OP_STATE	9491	9936	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9937	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () boss_rise2 = [1.000, boss_rise3]
{
    sound(self, CHAN_VOICE, "boss1/sight1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
};

// boss_rise3
// function begins at statement 17198, parm_start=9938
// OP_STATE	7369	9938	0
// OP_DONE	0	0	0
void () boss_rise3 = [2.000, boss_rise4]
{
};

// boss_rise4
// function begins at statement 17200, parm_start=9939
// OP_STATE	370	9939	0
// OP_DONE	0	0	0
void () boss_rise4 = [3.000, boss_rise5]
{
};

// boss_rise5
// function begins at statement 17202, parm_start=9940
// OP_STATE	6076	9940	0
// OP_DONE	0	0	0
void () boss_rise5 = [4.000, boss_rise6]
{
};

// boss_rise6
// function begins at statement 17204, parm_start=9941
// OP_STATE	313	9941	0
// OP_DONE	0	0	0
void () boss_rise6 = [5.000, boss_rise7]
{
};

// boss_rise7
// function begins at statement 17206, parm_start=9942
// OP_STATE	314	9942	0
// OP_DONE	0	0	0
void () boss_rise7 = [6.000, boss_rise8]
{
};

// boss_rise8
// function begins at statement 17208, parm_start=9943
// OP_STATE	315	9943	0
// OP_DONE	0	0	0
void () boss_rise8 = [7.000, boss_rise9]
{
};

// boss_rise9
// function begins at statement 17210, parm_start=9944
// OP_STATE	6077	9944	0
// OP_DONE	0	0	0
void () boss_rise9 = [8.000, boss_rise10]
{
};

// boss_rise10
// function begins at statement 17212, parm_start=9945
// OP_STATE	317	9945	0
// OP_DONE	0	0	0
void () boss_rise10 = [9.000, boss_rise11]
{
};

// boss_rise11
// function begins at statement 17214, parm_start=9946
// OP_STATE	318	9946	0
// OP_DONE	0	0	0
void () boss_rise11 = [10.000, boss_rise12]
{
};

// boss_rise12
// function begins at statement 17216, parm_start=9947
// OP_STATE	319	9947	0
// OP_DONE	0	0	0
void () boss_rise12 = [11.000, boss_rise13]
{
};

// boss_rise13
// function begins at statement 17218, parm_start=9948
// OP_STATE	2250	9948	0
// OP_DONE	0	0	0
void () boss_rise13 = [12.000, boss_rise14]
{
};

// boss_rise14
// function begins at statement 17220, parm_start=9949
// OP_STATE	7768	9949	0
// OP_DONE	0	0	0
void () boss_rise14 = [13.000, boss_rise15]
{
};

// boss_rise15
// function begins at statement 17222, parm_start=9950
// OP_STATE	2901	9950	0
// OP_DONE	0	0	0
void () boss_rise15 = [14.000, boss_rise16]
{
};

// boss_rise16
// function begins at statement 17224, parm_start=9951
// OP_STATE	1876	9951	0
// OP_DONE	0	0	0
void () boss_rise16 = [15.000, boss_rise17]
{
};

// boss_rise17
// function begins at statement 17226, parm_start=9952
// OP_STATE	6078	9952	0
// OP_DONE	0	0	0
void () boss_rise17 = [16.000, boss_missile1]
{
};

// boss_idle1
// function begins at statement 17228, parm_start=9954
// OP_STATE	4861	9954	0
// OP_DONE	0	0	0
void () boss_idle1 = [17.000, boss_idle2]
{
};

// boss_idle2
// function begins at statement 17230, parm_start=9955
// OP_STATE	3319	9955	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle2 = [18.000, boss_idle3]
{
    boss_face();
};

// boss_idle3
// function begins at statement 17233, parm_start=9956
// OP_STATE	7776	9956	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle3 = [19.000, boss_idle4]
{
    boss_face();
};

// boss_idle4
// function begins at statement 17236, parm_start=9957
// OP_STATE	894	9957	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle4 = [20.000, boss_idle5]
{
    boss_face();
};

// boss_idle5
// function begins at statement 17239, parm_start=9958
// OP_STATE	7779	9958	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle5 = [21.000, boss_idle6]
{
    boss_face();
};

// boss_idle6
// function begins at statement 17242, parm_start=9959
// OP_STATE	7781	9959	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle6 = [22.000, boss_idle7]
{
    boss_face();
};

// boss_idle7
// function begins at statement 17245, parm_start=9960
// OP_STATE	301	9960	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle7 = [23.000, boss_idle8]
{
    boss_face();
};

// boss_idle8
// function begins at statement 17248, parm_start=9961
// OP_STATE	4437	9961	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle8 = [24.000, boss_idle9]
{
    boss_face();
};

// boss_idle9
// function begins at statement 17251, parm_start=9962
// OP_STATE	1890	9962	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle9 = [25.000, boss_idle10]
{
    boss_face();
};

// boss_idle10
// function begins at statement 17254, parm_start=9963
// OP_STATE	7788	9963	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle10 = [26.000, boss_idle11]
{
    boss_face();
};

// boss_idle11
// function begins at statement 17257, parm_start=9964
// OP_STATE	302	9964	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle11 = [27.000, boss_idle12]
{
    boss_face();
};

// boss_idle12
// function begins at statement 17260, parm_start=9965
// OP_STATE	303	9965	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle12 = [28.000, boss_idle13]
{
    boss_face();
};

// boss_idle13
// function begins at statement 17263, parm_start=9966
// OP_STATE	5105	9966	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle13 = [29.000, boss_idle14]
{
    boss_face();
};

// boss_idle14
// function begins at statement 17266, parm_start=9967
// OP_STATE	304	9967	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle14 = [30.000, boss_idle15]
{
    boss_face();
};

// boss_idle15
// function begins at statement 17269, parm_start=9968
// OP_STATE	305	9968	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle15 = [31.000, boss_idle16]
{
    boss_face();
};

// boss_idle16
// function begins at statement 17272, parm_start=9969
// OP_STATE	5674	9969	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle16 = [32.000, boss_idle17]
{
    boss_face();
};

// boss_idle17
// function begins at statement 17275, parm_start=9970
// OP_STATE	307	9970	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle17 = [33.000, boss_idle18]
{
    boss_face();
};

// boss_idle18
// function begins at statement 17278, parm_start=9971
// OP_STATE	5112	9971	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle18 = [34.000, boss_idle19]
{
    boss_face();
};

// boss_idle19
// function begins at statement 17281, parm_start=9972
// OP_STATE	3072	9972	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle19 = [35.000, boss_idle20]
{
    boss_face();
};

// boss_idle20
// function begins at statement 17284, parm_start=9973
// OP_STATE	5096	9973	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle20 = [36.000, boss_idle21]
{
    boss_face();
};

// boss_idle21
// function begins at statement 17287, parm_start=9974
// OP_STATE	5098	9974	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle21 = [37.000, boss_idle22]
{
    boss_face();
};

// boss_idle22
// function begins at statement 17290, parm_start=9975
// OP_STATE	5100	9975	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle22 = [38.000, boss_idle23]
{
    boss_face();
};

// boss_idle23
// function begins at statement 17293, parm_start=9976
// OP_STATE	5102	9976	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle23 = [39.000, boss_idle24]
{
    boss_face();
};

// boss_idle24
// function begins at statement 17296, parm_start=9977
// OP_STATE	1733	9977	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle24 = [40.000, boss_idle25]
{
    boss_face();
};

// boss_idle25
// function begins at statement 17299, parm_start=9978
// OP_STATE	5443	9978	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle25 = [41.000, boss_idle26]
{
    boss_face();
};

// boss_idle26
// function begins at statement 17302, parm_start=9979
// OP_STATE	5445	9979	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle26 = [42.000, boss_idle27]
{
    boss_face();
};

// boss_idle27
// function begins at statement 17305, parm_start=9980
// OP_STATE	5447	9980	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle27 = [43.000, boss_idle28]
{
    boss_face();
};

// boss_idle28
// function begins at statement 17308, parm_start=9981
// OP_STATE	5449	9981	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle28 = [44.000, boss_idle29]
{
    boss_face();
};

// boss_idle29
// function begins at statement 17311, parm_start=9982
// OP_STATE	1390	9982	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle29 = [45.000, boss_idle30]
{
    boss_face();
};

// boss_idle30
// function begins at statement 17314, parm_start=9983
// OP_STATE	5452	9983	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle30 = [46.000, boss_idle31]
{
    boss_face();
};

// boss_idle31
// function begins at statement 17317, parm_start=9984
// OP_STATE	5454	9953	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_idle31 = [47.000, boss_idle1]
{
    boss_face();
};

// boss_missile1
// function begins at statement 17320, parm_start=9984
// OP_STATE	5363	9984	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile1 = [57.000, boss_missile2]
{
    boss_face();
};

// boss_missile2
// function begins at statement 17323, parm_start=9985
// OP_STATE	5365	9985	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile2 = [58.000, boss_missile3]
{
    boss_face();
};

// boss_missile3
// function begins at statement 17326, parm_start=9986
// OP_STATE	5367	9986	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile3 = [59.000, boss_missile4]
{
    boss_face();
};

// boss_missile4
// function begins at statement 17329, parm_start=9987
// OP_STATE	912	9987	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile4 = [60.000, boss_missile5]
{
    boss_face();
};

// boss_missile5
// function begins at statement 17332, parm_start=9988
// OP_STATE	5369	9988	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile5 = [61.000, boss_missile6]
{
    boss_face();
};

// boss_missile6
// function begins at statement 17335, parm_start=9989
// OP_STATE	5371	9989	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile6 = [62.000, boss_missile7]
{
    boss_face();
};

// boss_missile7
// function begins at statement 17338, parm_start=9990
// OP_STATE	3872	9990	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile7 = [63.000, boss_missile8]
{
    boss_face();
};

// boss_missile8
// function begins at statement 17341, parm_start=9991
// OP_STATE	260	9991	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile8 = [64.000, boss_missile9]
{
    boss_face();
};

// boss_missile9
// function begins at statement 17344, parm_start=9992
// OP_STATE	5375	9992	0
// OP_STORE_V	9993	4	0
// OP_CALL1	9920	0	0
// OP_DONE	0	0	0
void () boss_missile9 = [65.000, boss_missile10]
{
    boss_missile('100.000 100.000 200.000');
};

// boss_missile10
// function begins at statement 17348, parm_start=9996
// OP_STATE	5377	9996	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile10 = [66.000, boss_missile11]
{
    boss_face();
};

// boss_missile11
// function begins at statement 17351, parm_start=9997
// OP_STATE	5379	9997	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile11 = [67.000, boss_missile12]
{
    boss_face();
};

// boss_missile12
// function begins at statement 17354, parm_start=9998
// OP_STATE	5381	9998	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile12 = [68.000, boss_missile13]
{
    boss_face();
};

// boss_missile13
// function begins at statement 17357, parm_start=9999
// OP_STATE	5383	9999	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile13 = [69.000, boss_missile14]
{
    boss_face();
};

// boss_missile14
// function begins at statement 17360, parm_start=10000
// OP_STATE	5384	10000	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile14 = [70.000, boss_missile15]
{
    boss_face();
};

// boss_missile15
// function begins at statement 17363, parm_start=10001
// OP_STATE	5386	10001	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile15 = [71.000, boss_missile16]
{
    boss_face();
};

// boss_missile16
// function begins at statement 17366, parm_start=10002
// OP_STATE	5388	10002	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile16 = [72.000, boss_missile17]
{
    boss_face();
};

// boss_missile17
// function begins at statement 17369, parm_start=10003
// OP_STATE	2739	10003	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile17 = [73.000, boss_missile18]
{
    boss_face();
};

// boss_missile18
// function begins at statement 17372, parm_start=10004
// OP_STATE	5391	10004	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile18 = [74.000, boss_missile19]
{
    boss_face();
};

// boss_missile19
// function begins at statement 17375, parm_start=10005
// OP_STATE	5393	10005	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile19 = [75.000, boss_missile20]
{
    boss_face();
};

// boss_missile20
// function begins at statement 17378, parm_start=10006
// OP_STATE	5395	10006	0
// OP_STORE_V	10007	4	0
// OP_CALL1	9920	0	0
// OP_DONE	0	0	0
void () boss_missile20 = [76.000, boss_missile21]
{
    boss_missile('100.000 -100.000 200.000');
};

// boss_missile21
// function begins at statement 17382, parm_start=10010
// OP_STATE	5397	10010	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile21 = [77.000, boss_missile22]
{
    boss_face();
};

// boss_missile22
// function begins at statement 17385, parm_start=10011
// OP_STATE	5399	10011	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile22 = [78.000, boss_missile23]
{
    boss_face();
};

// boss_missile23
// function begins at statement 17388, parm_start=10012
// OP_STATE	5401	9952	0
// OP_CALL0	9921	0	0
// OP_DONE	0	0	0
void () boss_missile23 = [79.000, boss_missile1]
{
    boss_face();
};

// boss_shocka1
// function begins at statement 17391, parm_start=10013
// OP_STATE	788	10013	0
// OP_DONE	0	0	0
void () boss_shocka1 = [80.000, boss_shocka2]
{
};

// boss_shocka2
// function begins at statement 17393, parm_start=10014
// OP_STATE	5404	10014	0
// OP_DONE	0	0	0
void () boss_shocka2 = [81.000, boss_shocka3]
{
};

// boss_shocka3
// function begins at statement 17395, parm_start=10015
// OP_STATE	5406	10015	0
// OP_DONE	0	0	0
void () boss_shocka3 = [82.000, boss_shocka4]
{
};

// boss_shocka4
// function begins at statement 17397, parm_start=10016
// OP_STATE	5408	10016	0
// OP_DONE	0	0	0
void () boss_shocka4 = [83.000, boss_shocka5]
{
};

// boss_shocka5
// function begins at statement 17399, parm_start=10017
// OP_STATE	5410	10017	0
// OP_DONE	0	0	0
void () boss_shocka5 = [84.000, boss_shocka6]
{
};

// boss_shocka6
// function begins at statement 17401, parm_start=10018
// OP_STATE	5411	10018	0
// OP_DONE	0	0	0
void () boss_shocka6 = [85.000, boss_shocka7]
{
};

// boss_shocka7
// function begins at statement 17403, parm_start=10019
// OP_STATE	5413	10019	0
// OP_DONE	0	0	0
void () boss_shocka7 = [86.000, boss_shocka8]
{
};

// boss_shocka8
// function begins at statement 17405, parm_start=10020
// OP_STATE	5415	10020	0
// OP_DONE	0	0	0
void () boss_shocka8 = [87.000, boss_shocka9]
{
};

// boss_shocka9
// function begins at statement 17407, parm_start=10021
// OP_STATE	5417	10021	0
// OP_DONE	0	0	0
void () boss_shocka9 = [88.000, boss_shocka10]
{
};

// boss_shocka10
// function begins at statement 17409, parm_start=10022
// OP_STATE	5419	9952	0
// OP_DONE	0	0	0
void () boss_shocka10 = [89.000, boss_missile1]
{
};

// boss_shockb1
// function begins at statement 17411, parm_start=10023
// OP_STATE	1423	10023	0
// OP_DONE	0	0	0
void () boss_shockb1 = [90.000, boss_shockb2]
{
};

// boss_shockb2
// function begins at statement 17413, parm_start=10024
// OP_STATE	5422	10024	0
// OP_DONE	0	0	0
void () boss_shockb2 = [91.000, boss_shockb3]
{
};

// boss_shockb3
// function begins at statement 17415, parm_start=10025
// OP_STATE	5424	10025	0
// OP_DONE	0	0	0
void () boss_shockb3 = [92.000, boss_shockb4]
{
};

// boss_shockb4
// function begins at statement 17417, parm_start=10026
// OP_STATE	5426	10026	0
// OP_DONE	0	0	0
void () boss_shockb4 = [93.000, boss_shockb5]
{
};

// boss_shockb5
// function begins at statement 17419, parm_start=10027
// OP_STATE	5427	10027	0
// OP_DONE	0	0	0
void () boss_shockb5 = [94.000, boss_shockb6]
{
};

// boss_shockb6
// function begins at statement 17421, parm_start=10028
// OP_STATE	5429	10028	0
// OP_DONE	0	0	0
void () boss_shockb6 = [95.000, boss_shockb7]
{
};

// boss_shockb7
// function begins at statement 17423, parm_start=10029
// OP_STATE	1423	10029	0
// OP_DONE	0	0	0
void () boss_shockb7 = [90.000, boss_shockb8]
{
};

// boss_shockb8
// function begins at statement 17425, parm_start=10030
// OP_STATE	5422	10030	0
// OP_DONE	0	0	0
void () boss_shockb8 = [91.000, boss_shockb9]
{
};

// boss_shockb9
// function begins at statement 17427, parm_start=10031
// OP_STATE	5424	10031	0
// OP_DONE	0	0	0
void () boss_shockb9 = [92.000, boss_shockb10]
{
};

// boss_shockb10
// function begins at statement 17429, parm_start=10032
// OP_STATE	5426	9952	0
// OP_DONE	0	0	0
void () boss_shockb10 = [93.000, boss_missile1]
{
};

// boss_shockc1
// function begins at statement 17431, parm_start=10033
// OP_STATE	5431	10033	0
// OP_DONE	0	0	0
void () boss_shockc1 = [96.000, boss_shockc2]
{
};

// boss_shockc2
// function begins at statement 17433, parm_start=10034
// OP_STATE	5433	10034	0
// OP_DONE	0	0	0
void () boss_shockc2 = [97.000, boss_shockc3]
{
};

// boss_shockc3
// function begins at statement 17435, parm_start=10035
// OP_STATE	5435	10035	0
// OP_DONE	0	0	0
void () boss_shockc3 = [98.000, boss_shockc4]
{
};

// boss_shockc4
// function begins at statement 17437, parm_start=10036
// OP_STATE	5437	10036	0
// OP_DONE	0	0	0
void () boss_shockc4 = [99.000, boss_shockc5]
{
};

// boss_shockc5
// function begins at statement 17439, parm_start=10037
// OP_STATE	1884	10037	0
// OP_DONE	0	0	0
void () boss_shockc5 = [100.000, boss_shockc6]
{
};

// boss_shockc6
// function begins at statement 17441, parm_start=10038
// OP_STATE	5440	10038	0
// OP_DONE	0	0	0
void () boss_shockc6 = [101.000, boss_shockc7]
{
};

// boss_shockc7
// function begins at statement 17443, parm_start=10039
// OP_STATE	5442	10039	0
// OP_DONE	0	0	0
void () boss_shockc7 = [102.000, boss_shockc8]
{
};

// boss_shockc8
// function begins at statement 17445, parm_start=10040
// OP_STATE	4971	10040	0
// OP_DONE	0	0	0
void () boss_shockc8 = [103.000, boss_shockc9]
{
};

// boss_shockc9
// function begins at statement 17447, parm_start=10041
// OP_STATE	4986	10041	0
// OP_DONE	0	0	0
void () boss_shockc9 = [104.000, boss_shockc10]
{
};

// boss_shockc10
// function begins at statement 17449, parm_start=10042
// OP_STATE	5000	10042	0
// OP_DONE	0	0	0
void () boss_shockc10 = [105.000, boss_death1]
{
};

// boss_death1
// function begins at statement 17451, parm_start=10043
// OP_STATE	5456	10043	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10044	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () boss_death1 = [48.000, boss_death2]
{
    sound(self, CHAN_VOICE, "boss1/death.wav", SPAWN_CRUCIFIED, ATTN_NORM);
};

// boss_death2
// function begins at statement 17459, parm_start=10045
// OP_STATE	5458	10045	0
// OP_DONE	0	0	0
void () boss_death2 = [49.000, boss_death3]
{
};

// boss_death3
// function begins at statement 17461, parm_start=10046
// OP_STATE	2227	10046	0
// OP_DONE	0	0	0
void () boss_death3 = [50.000, boss_death4]
{
};

// boss_death4
// function begins at statement 17463, parm_start=10047
// OP_STATE	5351	10047	0
// OP_DONE	0	0	0
void () boss_death4 = [51.000, boss_death5]
{
};

// boss_death5
// function begins at statement 17465, parm_start=10048
// OP_STATE	5353	10048	0
// OP_DONE	0	0	0
void () boss_death5 = [52.000, boss_death6]
{
};

// boss_death6
// function begins at statement 17467, parm_start=10049
// OP_STATE	5355	10049	0
// OP_DONE	0	0	0
void () boss_death6 = [53.000, boss_death7]
{
};

// boss_death7
// function begins at statement 17469, parm_start=10050
// OP_STATE	5357	10050	0
// OP_DONE	0	0	0
void () boss_death7 = [54.000, boss_death8]
{
};

// boss_death8
// function begins at statement 17471, parm_start=10051
// OP_STATE	5359	10051	0
// OP_DONE	0	0	0
void () boss_death8 = [55.000, boss_death9]
{
};

// boss_death9
// function begins at statement 17473, parm_start=10052
// OP_STATE	5361	10052	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	9935	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	10053
// OP_STORE_V	337	4	0
// OP_STORE_V	10053	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	10054
// OP_STORE_V	337	4	0
// OP_STORE_V	10054	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	10055
// OP_STORE_V	337	4	0
// OP_STORE_V	10055	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () boss_death9 = [56.000, boss_death10]
{
    sound(self, CHAN_BODY, "boss1/out1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
};

// boss_death10
// function begins at statement 17499, parm_start=10056
// OP_STATE	5361	10052	0
// OP_ADD_F	42	9491	10056
// OP_STORE_F	10056	42	0
// OP_STORE_V	339	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	493	0	0
// OP_CALL0	518	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () boss_death10 = [56.000, boss_death10]
{
    killed_monsters = killed_monsters + SPAWN_CRUCIFIED;
    WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    SUB_UseTargets();
    remove(self);
};

// boss_missile
// function begins at statement 17509, parm_start=10057
// OP_LOAD_ENT	28	181	10073
// OP_LOAD_V	10073	105	10074
// OP_LOAD_V	28	105	10077
// OP_SUB_V	10074	10077	10080
// OP_STORE_V	10080	4	0
// OP_CALL1	492	0	0
// OP_STORE_V	1	10060	0
// OP_STORE_V	10060	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	10083
// OP_MUL_FV	10057	59	10086
// OP_ADD_V	10083	10086	10089
// OP_MUL_FV	10058	65	10092
// OP_ADD_V	10089	10092	10095
// OP_MUL_FV	10059	534	10098
// OP_ADD_V	10095	10098	10101
// OP_STORE_V	10101	10063	0
// OP_GT	349	9491	10104
// OP_IFNOT	10104	18	0
// OP_LOAD_ENT	28	181	10105
// OP_LOAD_V	10105	105	10106
// OP_SUB_V	10106	10063	10109
// OP_STORE_V	10109	4	0
// OP_CALL1	457	0	0
// OP_DIV_F	1	2596	10112
// OP_STORE_F	10112	10072	0
// OP_LOAD_ENT	28	181	10113
// OP_LOAD_V	10113	113	10114
// OP_STORE_V	10114	10066	0
// OP_STORE_F	337	10068	0
// OP_LOAD_ENT	28	181	10117
// OP_LOAD_V	10117	105	10118
// OP_MUL_FV	10072	10066	10121
// OP_ADD_V	10118	10121	10124
// OP_STORE_V	10124	10069	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	10127
// OP_LOAD_V	10127	105	10128
// OP_STORE_V	10128	10069	0
// OP_SUB_V	10069	10063	10131
// OP_STORE_V	10131	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10066	0
// OP_STORE_V	10063	4	0
// OP_STORE_V	10066	7	0
// OP_CALL2	3206	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3859	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	345	121	10134
// OP_STOREP_V	10137	10134	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	345	113	10140
// OP_MUL_VF	10066	2596	10143
// OP_STOREP_V	10143	10140	0
// OP_ADDRESS	345	146	10146
// OP_STOREP_FNC	1480	10146	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10147	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	28	181	10148
// OP_LOAD_F	10148	152	10149
// OP_LE	10149	337	10150
// OP_IFNOT	10150	2	0
// OP_CALL0	9953	0	0
// OP_DONE	0	0	0
void (vector p) boss_missile = 
{
    local vector offang;
    local vector org;
    local vector vec;
    local vector d;
    local float t;
    offang = vectoangles(self.enemy.origin - self.origin);
    makevectors(offang);
    org = ((self.origin + (p_x * v_forward)) + (0.000 * v_right)) + (0.000 * '0.000 0.000 1.000');
    if(skill > SPAWN_CRUCIFIED)
    {
        t = (vlen(self.enemy.origin - org)) / 300.000;
        vec = self.enemy.velocity;
        vec_z = MSG_BROADCAST;
        d = self.enemy.origin + (t * vec);
    }
    else
    {
        d = self.enemy.origin;
    }
    
    vec = normalize(d - org);
    launch_spike(org, vec);
    setmodel(newmis, "progs/lavaball.mdl");
    newmis.avelocity = '200.000 100.000 300.000';
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 300.000;
    newmis.touch = T_MissileTouch;
    sound(self, CHAN_WEAPON, "boss1/throw.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    
    if(self.enemy.health <= MSG_BROADCAST)
    {
        boss_idle1();
    }
    
};

// boss_awake
// function begins at statement 17581, parm_start=10152
// OP_ADDRESS	28	104	10152
// OP_STOREP_F	240	10152	0
// OP_ADDRESS	28	103	10153
// OP_STOREP_F	229	10153	0
// OP_ADDRESS	28	163	10154
// OP_STOREP_F	250	10154	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10155	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10156	7	0
// OP_STORE_V	10159	10	0
// OP_CALL3	450	0	0
// OP_EQ_F	349	337	10162
// OP_IFNOT	10162	4	0
// OP_ADDRESS	28	152	10163
// OP_STOREP_F	9491	10163	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	152	10164
// OP_STOREP_F	370	10164	0
// OP_ADDRESS	28	181	10165
// OP_STOREP_ENT	346	10165	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	10166
// OP_STORE_V	337	4	0
// OP_STORE_V	10166	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	10167
// OP_STORE_V	337	4	0
// OP_STORE_V	10167	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	10168
// OP_STORE_V	337	4	0
// OP_STORE_V	10168	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	192	10169
// OP_STOREP_F	894	10169	0
// OP_CALL0	9933	0	0
// OP_DONE	0	0	0
void () boss_awake = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_NO;
    setmodel(self, "progs/boss.mdl");
    setsize(self, '-128.000 -128.000 -24.000', '128.000 128.000 256.000');
    if(skill == MSG_BROADCAST)
    {
        self.health = SPAWN_CRUCIFIED;
    }
    else
    {
        self.health = AS_MELEE;
    }
    
    self.enemy = activator;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.yaw_speed = 20.000;
    boss_rise1();
};

// monster_boss
// function begins at statement 17625, parm_start=10171
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10155	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	3859	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2617	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9935	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9937	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3824	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	10147	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	10171	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	10044	4	0
// OP_CALL1	464	0	0
// OP_ADD_F	40	9491	10172
// OP_STORE_F	10172	40	0
// OP_ADDRESS	28	147	10173
// OP_STOREP_FNC	10151	10173	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/boss.mdl");
    precache_model("progs/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + SPAWN_CRUCIFIED;
    self.use = boss_awake;
};

entity le1;
entity le2;
float lightning_end;
// lightning_fire
// function begins at statement 17652, parm_start=10178
// OP_GE	31	10176	10184
// OP_IFNOT	10184	6	0
// OP_STORE_ENT	10174	28	0
// OP_CALL0	5675	0	0
// OP_STORE_ENT	10175	28	0
// OP_CALL0	5675	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	10174	134	10185
// OP_LOAD_V	10174	138	10188
// OP_ADD_V	10185	10188	10191
// OP_MUL_VF	10191	1491	10194
// OP_STORE_V	10194	10178	0
// OP_LOAD_F	10174	97	10197
// OP_SUB_F	10197	6078	10198
// OP_STORE_F	10198	10180	0
// OP_LOAD_V	10175	134	10199
// OP_LOAD_V	10175	138	10202
// OP_ADD_V	10199	10202	10205
// OP_MUL_VF	10205	1491	10208
// OP_STORE_V	10208	10181	0
// OP_LOAD_F	10175	97	10211
// OP_SUB_F	10211	6078	10212
// OP_STORE_F	10212	10183	0
// OP_SUB_V	10181	10178	10213
// OP_STORE_V	10213	4	0
// OP_CALL1	454	0	0
// OP_MUL_VF	1	1884	10216
// OP_SUB_V	10181	10216	10219
// OP_STORE_V	10219	10181	0
// OP_ADDRESS	28	150	10222
// OP_ADD_F	31	603	10223
// OP_STOREP_F	10223	10222	0
// OP_ADDRESS	28	148	10224
// OP_STOREP_FNC	10177	10224	0
// OP_STORE_V	339	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	317	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10178	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10179	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10180	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10181	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10182	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	10183	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () lightning_fire = 
{
    local vector p1;
    local vector p2;
    
    if(time >= lightning_end)
    {
        self = le1;
        door_go_down();
        self = le2;
        door_go_down();
        return;
    }
    
    p1 = (le1.mins + le1.maxs) * 0.500;
    p1_z = le1.absmin_z - SECRET_YES_SHOOT;
    p2 = (le2.mins + le2.maxs) * 0.500;
    p2_z = le2.absmin_z - SECRET_YES_SHOOT;
    p2 = p2 - ((normalize(p2 - p1)) * 100.000);
    self.nextthink = time + 0.100;
    self.think = lightning_fire;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, p1_x);
    WriteCoord(MSG_ALL, 0.000);
    WriteCoord(MSG_ALL, 0.000);
    WriteCoord(MSG_ALL, p2_x);
    WriteCoord(MSG_ALL, 0.000);
    WriteCoord(MSG_ALL, 0.000);
};

// lightning_use
// function begins at statement 17714, parm_start=10226
// OP_ADD_F	31	9491	10226
// OP_GE	10176	10226	10227
// OP_IFNOT	10227	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	10228	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	10174	0
// OP_STORE_V	10174	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	10228	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	10175	0
// OP_NOT_ENT	10174	0	10229
// OP_NOT_ENT	10175	0	10230
// OP_OR	10229	10230	10231
// OP_IFNOT	10231	4	0
// OP_STORE_V	10232	4	0
// OP_CALL1	470	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	10174	433	10233
// OP_NE_F	10233	282	10234
// OP_LOAD_F	10174	433	10235
// OP_NE_F	10235	283	10236
// OP_AND	10234	10236	10237
// OP_LOAD_F	10175	433	10238
// OP_NE_F	10238	282	10239
// OP_LOAD_F	10175	433	10240
// OP_NE_F	10240	283	10241
// OP_AND	10239	10241	10242
// OP_OR	10237	10242	10243
// OP_LOAD_F	10174	433	10244
// OP_LOAD_F	10175	433	10245
// OP_NE_F	10244	10245	10246
// OP_OR	10243	10246	10247
// OP_IFNOT	10247	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	10174	150	10248
// OP_STOREP_F	276	10248	0
// OP_ADDRESS	10175	150	10249
// OP_STOREP_F	276	10249	0
// OP_ADD_F	31	9491	10250
// OP_STORE_F	10250	10176	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3824	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	10177	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	10251	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	10252
// OP_IFNOT	10252	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10253
// OP_STOREP_ENT	346	10253	0
// OP_LOAD_F	10174	433	10254
// OP_EQ_F	10254	282	10255
// OP_LOAD_F	28	152	10256
// OP_GT	10256	337	10257
// OP_AND	10255	10257	10258
// OP_IFNOT	10258	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10171	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	152	10259
// OP_LOAD_F	28	152	10260
// OP_SUB_F	10260	9491	10261
// OP_STOREP_F	10261	10259	0
// OP_LOAD_F	28	152	10262
// OP_GE	10262	7369	10263
// OP_IFNOT	10263	3	0
// OP_CALL0	10012	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	10264
// OP_EQ_F	10264	9491	10265
// OP_IFNOT	10265	3	0
// OP_CALL0	10022	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	10266
// OP_EQ_F	10266	337	10267
// OP_IFNOT	10267	2	0
// OP_CALL0	10032	0	0
// OP_DONE	0	0	0
void () lightning_use = 
{
    
    if(lightning_end >= (time + SPAWN_CRUCIFIED))
    {
        return;
    }
    
    le1 = find(world, target, "lightning");
    le2 = find(le1, target, "lightning");
    
    if(!le1 || !le2)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((le1.state != STATE_TOP) && (le1.state != STATE_BOTTOM)) || ((le2.state != STATE_TOP) && (le2.state != STATE_BOTTOM))) || (le1.state != le2.state))
    {
        return;
    }
    
    le1.nextthink = CONTENT_EMPTY;
    le2.nextthink = CONTENT_EMPTY;
    lightning_end = time + SPAWN_CRUCIFIED;
    sound(self, CHAN_VOICE, "misc/power.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    lightning_fire();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((le1.state == STATE_TOP) && (self.health > MSG_BROADCAST))
    {
        sound(self, CHAN_VOICE, "boss1/pain.wav", SPAWN_CRUCIFIED, ATTN_NORM);
        self.health = self.health - SPAWN_CRUCIFIED;
        if(self.health >= SPAWNFLAG_LASER)
        {
            boss_shocka1();
        }
        else
        {
            if(self.health == SPAWN_CRUCIFIED)
            {
                boss_shockb1();
            }
            else
            {
                
                if(self.health == MSG_BROADCAST)
                {
                    boss_shockc1();
                }
                
            }
            
        }
        
    }
    
};

// event_lightning
// function begins at statement 17806, parm_start=10269
// OP_ADDRESS	28	147	10269
// OP_STOREP_FNC	10225	10269	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = lightning_use;
};

