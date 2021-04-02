void (vector v0) turn_hedrone;
void () hedrone_run;
// Drone_aim
// function begins at statement 29865, parm_start=20600
// OP_STORE_F	619	20606	0
// OP_LT	20601	619	20616
// OP_IFNOT	20616	5	0
// OP_ADD_F	20606	677	20617
// OP_STORE_F	20617	20606	0
// OP_SUB_F	619	20601	20618
// OP_STORE_F	20618	20601	0
// OP_STORE_ENT	30	20603	0
// OP_STORE_F	20600	20605	0
// OP_LOAD_V	28	142	20619
// OP_STORE_V	20619	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	20607	0
// OP_SUB_F	619	20609	20622
// OP_STORE_F	20622	20609	0
// OP_LOAD_V	28	130	20623
// OP_STORE_V	20623	4	0
// OP_STORE_V	20601	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	20602	0
// OP_IFNOT	20602	49	0
// OP_LOAD_V	20602	130	20626
// OP_LOAD_V	20602	159	20629
// OP_LOAD_V	20602	163	20632
// OP_ADD_V	20629	20632	20635
// OP_MUL_VF	20635	972	20638
// OP_ADD_V	20626	20638	20641
// OP_STORE_V	20641	20613	0
// OP_LOAD_F	20602	177	20644
// OP_LOAD_F	20602	128	20645
// OP_NE_F	20645	284	20646
// OP_BITAND	20606	677	20647
// OP_EQ_F	20647	619	20648
// OP_OR	20646	20648	20649
// OP_AND	20644	20649	20650
// OP_IFNOT	20650	31	0
// OP_STORE_V	20613	4	0
// OP_LOAD_ENT	28	206	20651
// OP_LOAD_V	20651	130	20652
// OP_STORE_V	20652	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LOAD_S	20602	155	20655
// OP_EQ_S	20655	1802	20656
// OP_IFNOT	20656	8	0
// OP_LOAD_F	20602	157	20657
// OP_EQ_F	20657	677	20658
// OP_CALL0	501	0	0
// OP_LT	1	972	20659
// OP_AND	20658	20659	20660
// OP_IFNOT	20660	2	0
// OP_STORE_F	619	70	0
// OP_EQ_F	70	677	20661
// OP_IFNOT	20661	12	0
// OP_LOAD_V	28	130	20662
// OP_SUB_V	20613	20662	20665
// OP_STORE_V	20665	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20610	0
// OP_MUL_V	20607	20610	20668
// OP_STORE_F	20668	20604	0
// OP_GT	20604	20605	20669
// OP_IFNOT	20669	3	0
// OP_STORE_F	20604	20605	0
// OP_STORE_ENT	20602	20603	0
// OP_LOAD_ENT	20602	189	20670
// OP_STORE_ENT	20670	20602	0
// OP_GOTO	-48	0	0
// OP_NE_E	20603	30	20671
// OP_IFNOT	20671	14	0
// OP_LOAD_V	20603	130	20672
// OP_LOAD_V	20603	159	20675
// OP_LOAD_V	20603	163	20678
// OP_ADD_V	20675	20678	20681
// OP_MUL_VF	20681	972	20684
// OP_ADD_V	20672	20684	20687
// OP_STORE_V	20687	20613	0
// OP_LOAD_ENT	28	206	20690
// OP_LOAD_V	20690	130	20691
// OP_SUB_V	20613	20691	20694
// OP_STORE_V	20694	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20607	0
// OP_ADDRESS	28	218	20697
// OP_STOREP_ENT	20603	20697	0
// OP_RETURN	20607	0	0
// OP_DONE	0	0	0
vector (float minim, float maxdist) Drone_aim = 
{
    local entity e;
    local entity re;
    local float f1;
    local float f2;
    local float flg;
    local vector v1;
    local vector v2;
    local vector org;
    flg = 0.000;
    
    if(maxdist < 0.000)
    {
        flg = flg + 1.000;
        maxdist = 0.000 - maxdist;
    }
    
    re = world;
    f2 = minim;
    makevectors(self.angles);
    v1 = v_forward;
    v1_z = 0.000 - 0.000;
    e = findradius(self.origin, maxdist);
    
    while(e)
    {
        org = e.origin + ((e.mins + e.maxs) * 0.500);
        
        if(e.health && ((e.movetype != MOVETYPE_FLY) || ((flg & 1.000) == 0.000)))
        {
            traceline(org, self.enemy.origin, TRUE, world);
            
            if(e.model == "progs/plane3.mdl")
            {
                
                if((e.skin == 1.000) && (random() < 0.500))
                {
                    trace_fraction = 0.000;
                }
                
            }
            
            
            if(trace_fraction == 1.000)
            {
                v2 = normalize(org - self.origin);
                f1 = v1 * v2;
                
                if(f1 > f2)
                {
                    f2 = f1;
                    re = e;
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    
    if(re != world)
    {
        org = re.origin + ((re.mins + re.maxs) * 0.500);
        v1 = normalize(org - self.enemy.origin);
    }
    
    self.aiment = re;
    return v1;
};

// he_movetogoal
// function begins at statement 29953, parm_start=20699
// OP_LOAD_ENT	28	219	20715
// OP_NOT_ENT	20715	0	20716
// OP_IFNOT	20716	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	219	20717
// OP_LOAD_V	20717	130	20718
// OP_LOAD_ENT	28	219	20721
// OP_LOAD_V	20721	159	20722
// OP_LOAD_ENT	28	219	20725
// OP_LOAD_V	20725	163	20726
// OP_ADD_V	20722	20726	20729
// OP_MUL_VF	20729	972	20732
// OP_ADD_V	20718	20732	20735
// OP_STORE_V	20735	20702	0
// OP_LOAD_V	28	130	20738
// OP_STORE_V	20738	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	20713	0
// OP_STORE_F	823	20711	0
// OP_IFNOT	20713	43	0
// OP_LOAD_F	20713	188	20741
// OP_NE_E	20713	28	20742
// OP_AND	20741	20742	20743
// OP_IFNOT	20743	36	0
// OP_LOAD_V	28	130	20744
// OP_LOAD_V	20713	130	20747
// OP_SUB_V	20744	20747	20750
// OP_STORE_V	20750	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	20712	0
// OP_LT	20712	20711	20753
// OP_IFNOT	20753	28	0
// OP_STORE_F	20712	20711	0
// OP_LOAD_V	28	130	20754
// OP_LOAD_V	28	130	20757
// OP_LOAD_V	20713	130	20760
// OP_SUB_V	20757	20760	20763
// OP_STORE_V	20763	4	0
// OP_CALL1	503	0	0
// OP_MUL_VF	1	823	20766
// OP_ADD_V	20754	20766	20769
// OP_STORE_V	20769	20702	0
// OP_LOAD_S	20713	154	20772
// OP_EQ_S	20772	5339	20773
// OP_LOAD_ENT	20713	467	20774
// OP_LOAD_ENT	28	467	20775
// OP_EQ_E	20774	20775	20776
// OP_AND	20773	20776	20777
// OP_IFNOT	20777	11	0
// OP_ADDRESS	28	467	20778
// OP_ADDRESS	28	219	20779
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_ENT	28	219	20780
// OP_LOAD_S	20780	221	20781
// OP_STORE_V	20781	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	20779	0
// OP_STOREP_ENT	1	20778	0
// OP_LOAD_ENT	20713	189	20782
// OP_STORE_ENT	20782	20713	0
// OP_GOTO	-42	0	0
// OP_LOAD_V	28	130	20783
// OP_SUB_V	20702	20783	20786
// OP_STORE_V	20786	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	20699	0
// OP_STORE_F	619	20711	0
// OP_LOAD_V	28	130	20789
// OP_ADD_V	20789	20792	20795
// OP_STORE_V	20795	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20798
// OP_STORE_F	20798	20711	0
// OP_LOAD_V	28	130	20799
// OP_ADD_V	20799	20802	20805
// OP_STORE_V	20805	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20808
// OP_STORE_F	20808	20711	0
// OP_LOAD_V	28	130	20809
// OP_ADD_V	20809	20812	20815
// OP_STORE_V	20815	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20818
// OP_STORE_F	20818	20711	0
// OP_LOAD_V	28	130	20819
// OP_ADD_V	20819	20822	20825
// OP_STORE_V	20825	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20828
// OP_STORE_F	20828	20711	0
// OP_LOAD_V	28	130	20829
// OP_ADD_V	20829	20832	20835
// OP_STORE_V	20835	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20838
// OP_STORE_F	20838	20711	0
// OP_LOAD_V	28	130	20839
// OP_ADD_V	20839	20842	20845
// OP_STORE_V	20845	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20848
// OP_STORE_F	20848	20711	0
// OP_LOAD_V	28	130	20849
// OP_ADD_V	20849	20852	20855
// OP_STORE_V	20855	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20858
// OP_STORE_F	20858	20711	0
// OP_LOAD_V	28	130	20859
// OP_ADD_V	20859	20862	20865
// OP_STORE_V	20865	4	0
// OP_STORE_V	20702	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	20711	70	20868
// OP_STORE_F	20868	20711	0
// OP_LT	20711	810	20869
// OP_IFNOT	20869	76	0
// OP_LOAD_ENT	28	219	20870
// OP_LOAD_ENT	28	206	20871
// OP_NE_E	20870	20871	20872
// OP_IFNOT	20872	43	0
// OP_LOAD_ENT	28	467	20873
// OP_STORE_ENT	20873	20713	0
// OP_STORE_ENT	20713	20714	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	20713	221	20874
// OP_STORE_V	20874	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	20713	0
// OP_STORE_F	619	20711	0
// OP_NE_E	20713	20714	20875
// OP_LT	20711	810	20876
// OP_AND	20875	20876	20877
// OP_IFNOT	20877	29	0
// OP_ADD_F	20711	677	20878
// OP_STORE_F	20878	20711	0
// OP_NE_E	20713	30	20879
// OP_STORE_V	20713	4	0
// OP_CALL1	792	0	0
// OP_AND	20879	1	20880
// OP_IFNOT	20880	7	0
// OP_ADDRESS	28	219	20881
// OP_ADDRESS	28	467	20882
// OP_STOREP_ENT	20713	20882	0
// OP_STOREP_ENT	20713	20881	0
// OP_STORE_ENT	20713	20714	0
// OP_GOTO	15	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	20713	221	20883
// OP_STORE_V	20883	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	20713	0
// OP_EQ_E	20713	30	20884
// OP_IFNOT	20884	7	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	20885
// OP_STORE_V	20885	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	20713	0
// OP_GOTO	-31	0	0
// OP_LOAD_F	28	414	20886
// OP_LT	20886	619	20887
// OP_IFNOT	20887	5	0
// OP_ADDRESS	28	414	20888
// OP_CALL0	501	0	0
// OP_GT	1	972	20889
// OP_STOREP_F	20889	20888	0
// OP_LOAD_F	28	415	20890
// OP_GT	31	20890	20891
// OP_IFNOT	20891	8	0
// OP_ADDRESS	28	414	20892
// OP_LOAD_F	28	414	20893
// OP_SUB_F	677	20893	20894
// OP_STOREP_F	20894	20892	0
// OP_ADDRESS	28	415	20895
// OP_ADD_F	31	1130	20896
// OP_STOREP_F	20896	20895	0
// OP_LOAD_F	28	414	20897
// OP_IFNOT	20897	6	0
// OP_ADD_F	20700	1268	20898
// OP_STORE_V	20898	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	20700	0
// OP_GOTO	5	0	0
// OP_SUB_F	20700	1268	20899
// OP_STORE_V	20899	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	20700	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	414	20900
// OP_STOREP_F	689	20900	0
// OP_ADDRESS	28	240	20901
// OP_STOREP_F	806	20901	0
// OP_LOAD_V	28	130	20902
// OP_SUB_V	20702	20902	20905
// OP_STORE_V	20905	20705	0
// OP_STORE_F	619	20707	0
// OP_STORE_V	20705	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	20712	0
// OP_LOAD_F	28	133	20908
// OP_SUB_F	20908	20704	20909
// OP_MUL_F	20712	677	20910
// OP_GT	20909	20910	20911
// OP_IFNOT	20911	3	0
// OP_ADDRESS	28	240	20912
// OP_STOREP_F	677	20912	0
// OP_LOAD_F	28	133	20913
// OP_SUB_F	20704	20913	20914
// OP_MUL_F	20712	972	20915
// OP_GT	20914	20915	20916
// OP_IFNOT	20916	3	0
// OP_ADDRESS	28	240	20917
// OP_STOREP_F	788	20917	0
// OP_LOAD_F	28	133	20918
// OP_SUB_F	20918	20704	20919
// OP_MUL_F	20712	806	20920
// OP_GT	20919	20920	20921
// OP_LOAD_F	28	133	20922
// OP_SUB_F	20922	20704	20923
// OP_STORE_V	20923	4	0
// OP_CALL1	534	0	0
// OP_GT	1	821	20924
// OP_AND	20921	20924	20925
// OP_IFNOT	20925	3	0
// OP_ADDRESS	28	240	20926
// OP_STOREP_F	619	20926	0
// OP_LOAD_F	28	133	20927
// OP_SUB_F	20704	20927	20928
// OP_MUL_F	20712	677	20929
// OP_GT	20928	20929	20930
// OP_IFNOT	20930	3	0
// OP_ADDRESS	28	240	20931
// OP_STOREP_F	808	20931	0
// OP_STORE_V	20699	20705	0
// OP_STORE_F	619	20699	0
// OP_STORE_F	619	20701	0
// OP_STORE_V	20705	20702	0
// OP_LOAD_V	28	142	20932
// OP_SUB_V	20702	20932	20935
// OP_STORE_V	20935	20705	0
// OP_STORE_F	619	20705	0
// OP_STORE_F	619	20707	0
// OP_LOAD_ENT	28	219	20938
// OP_LOAD_ENT	28	206	20939
// OP_EQ_E	20938	20939	20940
// OP_IFNOT	20940	39	0
// OP_LT	20712	823	20941
// OP_IFNOT	20941	35	0
// OP_LOAD_F	28	133	20942
// OP_LOAD_ENT	28	206	20943
// OP_LOAD_F	20943	133	20944
// OP_SUB_F	20942	20944	20945
// OP_STORE_V	20945	4	0
// OP_CALL1	534	0	0
// OP_SUB_F	823	20712	20946
// OP_LT	1	20946	20947
// OP_IFNOT	20947	12	0
// OP_LOAD_F	28	133	20948
// OP_LOAD_ENT	28	206	20949
// OP_LOAD_F	20949	133	20950
// OP_GT	20948	20950	20951
// OP_IFNOT	20951	4	0
// OP_ADDRESS	28	240	20952
// OP_STOREP_F	808	20952	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	240	20953
// OP_STOREP_F	619	20953	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	133	20954
// OP_LOAD_ENT	28	206	20955
// OP_LOAD_F	20955	133	20956
// OP_GT	20954	20956	20957
// OP_IFNOT	20957	4	0
// OP_ADDRESS	28	240	20958
// OP_STOREP_F	619	20958	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	240	20959
// OP_STOREP_F	808	20959	0
// OP_MUL_F	20712	1350	20960
// OP_SUB_F	20960	1224	20961
// OP_STORE_F	20961	20712	0
// OP_GOTO	2	0	0
// OP_STORE_F	1193	20712	0
// OP_GOTO	22	0	0
// OP_LT	20712	823	20962
// OP_IFNOT	20962	5	0
// OP_MUL_F	20712	20963	20964
// OP_ADD_F	816	20964	20965
// OP_STORE_F	20965	20712	0
// OP_GOTO	2	0	0
// OP_STORE_F	1193	20712	0
// OP_LOAD_F	28	144	20966
// OP_SUB_F	20700	20966	20967
// OP_STORE_V	20967	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	20711	0
// OP_GT	20711	1827	20968
// OP_IFNOT	20968	3	0
// OP_SUB_F	20711	1459	20969
// OP_STORE_F	20969	20711	0
// OP_STORE_V	20711	4	0
// OP_CALL1	534	0	0
// OP_GT	1	833	20970
// OP_IFNOT	20970	2	0
// OP_STORE_F	619	20712	0
// OP_STORE_V	20705	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	59	20711	0
// OP_MUL_F	20712	20711	20971
// OP_SUB_F	20699	20971	20972
// OP_STORE_F	20972	20699	0
// OP_STORE_F	60	20711	0
// OP_MUL_F	20712	20711	20973
// OP_SUB_F	20701	20973	20974
// OP_STORE_F	20974	20701	0
// OP_LOAD_F	28	144	20975
// OP_MUL_FV	20975	6286	20976
// OP_STORE_V	20976	20702	0
// OP_STORE_V	20702	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	20979
// OP_LOAD_V	28	138	20982
// OP_MUL_VF	20982	10247	20985
// OP_ADD_V	20979	20985	20988
// OP_STORE_V	20988	20708	0
// OP_LOAD_ENT	28	219	20991
// OP_LOAD_ENT	28	206	20992
// OP_EQ_E	20991	20992	20993
// OP_IFNOT	20993	3	0
// OP_STORE_F	821	20711	0
// OP_GOTO	2	0	0
// OP_STORE_F	815	20711	0
// OP_LOAD_ENT	28	219	20994
// OP_LOAD_ENT	28	206	20995
// OP_EQ_E	20994	20995	20996
// OP_LOAD_ENT	28	219	20997
// OP_LOAD_V	20997	130	20998
// OP_LOAD_V	28	130	21001
// OP_SUB_V	20998	21001	21004
// OP_STORE_V	21004	4	0
// OP_CALL1	506	0	0
// OP_GT	1	818	21007
// OP_OR	20996	21007	21008
// OP_IFNOT	21008	69	0
// OP_LOAD_V	28	130	21009
// OP_STORE_V	21009	4	0
// OP_MUL_VF	59	20711	21012
// OP_ADD_V	20708	21012	21015
// OP_STORE_V	21015	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21018
// OP_IFNOT	21018	2	0
// OP_STORE_F	1193	20699	0
// OP_LOAD_V	28	130	21019
// OP_STORE_V	21019	4	0
// OP_MUL_VF	59	20711	21022
// OP_SUB_V	20708	21022	21025
// OP_STORE_V	21025	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21028
// OP_IFNOT	21028	2	0
// OP_STORE_F	10094	20699	0
// OP_LOAD_V	28	130	21029
// OP_STORE_V	21029	4	0
// OP_MUL_VF	65	20711	21032
// OP_ADD_V	20708	21032	21035
// OP_STORE_V	21035	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21038
// OP_IFNOT	21038	2	0
// OP_STORE_F	10094	20701	0
// OP_LOAD_V	28	130	21039
// OP_STORE_V	21039	4	0
// OP_MUL_VF	65	20711	21042
// OP_SUB_V	20708	21042	21045
// OP_STORE_V	21045	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21048
// OP_IFNOT	21048	2	0
// OP_STORE_F	1193	20701	0
// OP_LOAD_V	28	130	21049
// OP_STORE_V	21049	4	0
// OP_MUL_VF	62	20711	21052
// OP_ADD_V	20708	21052	21055
// OP_STORE_V	21055	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21058
// OP_IFNOT	21058	3	0
// OP_ADDRESS	28	240	21059
// OP_STOREP_F	619	21059	0
// OP_LOAD_V	28	130	21060
// OP_STORE_V	21060	4	0
// OP_MUL_VF	62	20711	21063
// OP_SUB_V	20708	21063	21066
// OP_STORE_V	21066	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21069
// OP_IFNOT	21069	3	0
// OP_ADDRESS	28	240	21070
// OP_STOREP_F	808	21070	0
// OP_STORE_V	20699	4	0
// OP_CALL1	20597	0	0
// OP_DONE	0	0	0
void () he_movetogoal = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    local float tmp2;
    local entity e;
    local entity e2;
    
    if(!self.goalentity)
    {
        return;
    }
    
    v1 = self.goalentity.origin + ((self.goalentity.mins + self.goalentity.maxs) * 0.500);
    e = findradius(self.origin, 256.000);
    tmp = 256.000;
    
    while(e)
    {
        
        if(e.takedamage && (e != self))
        {
            tmp2 = vlen(self.origin - e.origin);
            
            if(tmp2 < tmp)
            {
                tmp = tmp2;
                v1 = self.origin + ((normalize(self.origin - e.origin)) * 256.000);
                
                if((e.classname == "monster_helo") && (e.movetarget == self.movetarget))
                {
                    self.movetarget = self.goalentity = find(world, targetname, self.goalentity.target);
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    v0 = vectoangles(v1 - self.origin);
    tmp = 0.000;
    traceline(self.origin + '-32.000 -32.000 -32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '32.000 -32.000 -32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '-32.000 32.000 -32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '32.000 32.000 -32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '-32.000 -32.000 32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '32.000 -32.000 32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '-32.000 32.000 32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    traceline(self.origin + '32.000 32.000 32.000', v1, TRUE, world);
    tmp = tmp + trace_fraction;
    if(tmp < 8.000)
    {
        
        if(self.goalentity != self.enemy)
        {
            e = self.movetarget;
            e2 = e;
            e = find(world, targetname, e.target);
            tmp = 0.000;
            
            while((e != e2) && (tmp < 8.000))
            {
                tmp = tmp + 1.000;
                if((e != world) && visible(e))
                {
                    e2 = self.goalentity = self.movetarget = e;
                }
                else
                {
                    e = find(world, targetname, e.target);
                    
                    if(e == world)
                    {
                        e = find(world, targetname, self.target);
                    }
                    
                }
                
            }
            
        }
        
        
        if(self.lefty < 0.000)
        {
            self.lefty = random() > 0.500;
        }
        
        
        if(time > self.search_time)
        {
            self.lefty = 1.000 - self.lefty;
            self.search_time = time + 30.000;
        }
        
        if(self.lefty)
        {
            v0_y = anglemod(0.000 + 90.000);
        }
        else
        {
            v0_y = anglemod(0.000 - 90.000);
        }
        
    }
    else
    {
        self.lefty = -1.000;
    }
    
    self.thru = 2.000;
    v2 = v1 - self.origin;
    v2_z = 0.000;
    tmp2 = vlen(v2);
    
    if((self.origin_z - 0.000) > (tmp2 * 1.000))
    {
        self.thru = 1.000;
    }
    
    
    if((0.000 - self.origin_z) > (tmp2 * 0.500))
    {
        self.thru = 3.000;
    }
    
    
    if(((self.origin_z - 0.000) > (tmp2 * 2.000)) && ((fabs(self.origin_z - 0.000)) > 128.000))
    {
        self.thru = 0.000;
    }
    
    
    if((0.000 - self.origin_z) > (tmp2 * 1.000))
    {
        self.thru = 4.000;
    }
    
    v2 = v0;
    v0_x = 0.000;
    v0_z = 0.000;
    v1 = v2;
    v2 = v1 - self.angles;
    v2_x = 0.000;
    v2_z = 0.000;
    if(self.goalentity == self.enemy)
    {
        if(tmp2 < 256.000)
        {
            if((fabs(self.origin_z - self.enemy.origin_z)) < (256.000 - tmp2))
            {
                if(self.origin_z > self.enemy.origin_z)
                {
                    self.thru = 4.000;
                }
                else
                {
                    self.thru = 0.000;
                }
                
            }
            else
            {
                if(self.origin_z > self.enemy.origin_z)
                {
                    self.thru = 0.000;
                }
                else
                {
                    self.thru = 4.000;
                }
                
            }
            
            tmp2 = (tmp2 * 0.400) - 57.000;
        }
        else
        {
            tmp2 = 45.000;
        }
        
    }
    else
    {
        if(tmp2 < 256.000)
        {
            tmp2 = 6.000 + (tmp2 * 0.150);
        }
        else
        {
            tmp2 = 45.000;
        }
        
        tmp = anglemod(0.000 - self.angles_y);
        
        if(tmp > 180.000)
        {
            tmp = tmp - 360.000;
        }
        
        
        if(fabs(tmp) > 12.000)
        {
            tmp2 = 0.000;
        }
        
    }
    
    makevectors(v2);
    tmp = v_forward_x;
    v0_x = v0_x - (tmp2 * tmp);
    tmp = 0.000;
    v0_z = 0.000 - (tmp2 * tmp);
    v1 = self.angles_y * '0.000 1.000 0.000';
    makevectors(v1);
    v3 = self.origin + (self.velocity * 0.800);
    if(self.goalentity == self.enemy)
    {
        tmp = 128.000;
    }
    else
    {
        tmp = 32.000;
    }
    
    
    if((self.goalentity == self.enemy) || ((vlen(self.goalentity.origin - self.origin)) > 64.000))
    {
        traceline(self.origin, v3 + (v_forward * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            v0_x = 45.000;
        }
        
        traceline(self.origin, v3 - (v_forward * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            v0_x = -45.000;
        }
        
        traceline(self.origin, v3 + (v_right * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            v0_z = -45.000;
        }
        
        traceline(self.origin, v3 - (v_right * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            v0_z = 45.000;
        }
        
        traceline(self.origin, v3 + (v_up * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            self.thru = 0.000;
        }
        
        traceline(self.origin, v3 - (v_up * tmp), TRUE, world);
        
        if(trace_fraction < 1.000)
        {
            self.thru = 4.000;
        }
        
    }
    
    turn_hedrone(v0);
};

// turn_hedrone
// function begins at statement 30398, parm_start=21071
// OP_LOAD_F	28	177	21083
// OP_GT	21083	619	21084
// OP_LOAD_F	28	207	21085
// OP_BITAND	21085	277	21086
// OP_NOT_F	21086	0	21087
// OP_AND	21084	21087	21088
// OP_IFNOT	21088	97	0
// OP_GT	21071	1193	21089
// OP_IFNOT	21089	2	0
// OP_STORE_F	1193	21071	0
// OP_LT	21071	10094	21090
// OP_IFNOT	21090	2	0
// OP_STORE_F	10094	21071	0
// OP_STORE_V	607	21074	0
// OP_LOAD_F	28	144	21091
// OP_SUB_F	21072	21091	21092
// OP_STORE_V	21092	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	21075	0
// OP_GT	21075	1827	21093
// OP_IFNOT	21093	3	0
// OP_SUB_F	21075	1459	21094
// OP_STORE_F	21094	21075	0
// OP_LOAD_F	28	143	21095
// OP_SUB_F	21071	21095	21096
// OP_STORE_F	21096	21074	0
// OP_STORE_V	607	21077	0
// OP_LT	21074	619	21097
// OP_IFNOT	21097	2	0
// OP_STORE_F	1891	21077	0
// OP_GT	21074	619	21098
// OP_IFNOT	21098	2	0
// OP_STORE_F	1268	21077	0
// OP_STORE_V	21074	4	0
// OP_CALL1	534	0	0
// OP_LT	1	824	21099
// OP_IFNOT	21099	4	0
// OP_STORE_F	619	21077	0
// OP_ADDRESS	28	143	21100
// OP_STOREP_F	21071	21100	0
// OP_LT	21075	619	21101
// OP_IFNOT	21101	2	0
// OP_STORE_F	10127	21078	0
// OP_GT	21075	619	21102
// OP_IFNOT	21102	2	0
// OP_STORE_F	3011	21078	0
// OP_STORE_V	21075	4	0
// OP_CALL1	534	0	0
// OP_LT	1	830	21103
// OP_IFNOT	21103	5	0
// OP_STORE_F	619	21078	0
// OP_ADDRESS	28	144	21104
// OP_STOREP_F	21072	21104	0
// OP_GOTO	6	0	0
// OP_ADDRESS	28	144	21105
// OP_LOAD_F	28	144	21106
// OP_STORE_V	21106	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	21105	0
// OP_LOAD_F	28	143	21107
// OP_STORE_V	21107	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	21078	1	21108
// OP_MUL_F	21108	2472	21109
// OP_SUB_F	21073	21109	21110
// OP_STORE_F	21110	21073	0
// OP_LT	21073	10094	21111
// OP_IFNOT	21111	2	0
// OP_STORE_F	10094	21073	0
// OP_GT	21073	1193	21112
// OP_IFNOT	21112	2	0
// OP_STORE_F	1193	21073	0
// OP_LOAD_F	28	145	21113
// OP_SUB_F	21073	21113	21114
// OP_STORE_F	21114	21076	0
// OP_LT	21076	619	21115
// OP_IFNOT	21115	7	0
// OP_STORE_F	7776	21079	0
// OP_MUL_F	21076	827	21116
// OP_LT	21079	21116	21117
// OP_IFNOT	21117	3	0
// OP_MUL_F	21076	827	21118
// OP_STORE_F	21118	21079	0
// OP_GT	21076	619	21119
// OP_IFNOT	21119	7	0
// OP_STORE_F	2618	21079	0
// OP_MUL_F	21076	827	21120
// OP_GT	21079	21120	21121
// OP_IFNOT	21121	3	0
// OP_MUL_F	21076	827	21122
// OP_STORE_F	21122	21079	0
// OP_STORE_V	21076	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	21079	32	21123
// OP_LT	1	21123	21124
// OP_IFNOT	21124	6	0
// OP_STORE_F	619	21079	0
// OP_ADDRESS	28	145	21125
// OP_MUL_F	21078	1687	21126
// OP_SUB_F	619	21126	21127
// OP_STOREP_F	21127	21125	0
// OP_ADDRESS	28	146	21128
// OP_STOREP_V	21077	21128	0
// OP_LOAD_F	28	207	21131
// OP_BITAND	21131	277	21132
// OP_IFNOT	21132	18	0
// OP_LOAD_ENT	28	176	21133
// OP_LOAD_S	21133	154	21134
// OP_NE_S	21134	5708	21135
// OP_LOAD_F	28	240	21136
// OP_GT	21136	806	21137
// OP_OR	21135	21137	21138
// OP_IFNOT	21138	11	0
// OP_ADDRESS	28	207	21139
// OP_LOAD_F	28	207	21140
// OP_SUB_F	21140	277	21141
// OP_STOREP_F	21141	21139	0
// OP_ADDRESS	28	176	21142
// OP_STOREP_ENT	30	21142	0
// OP_ADDRESS	28	141	21143
// OP_LOAD_F	28	141	21144
// OP_ADD_F	21144	986	21145
// OP_STOREP_F	21145	21143	0
// OP_LOAD_F	28	177	21146
// OP_LT	21146	1155	21147
// OP_LOAD_S	28	155	21148
// OP_EQ_S	21148	10187	21149
// OP_AND	21147	21149	21150
// OP_IFNOT	21150	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10190	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	21151
// OP_LT	21151	677	21152
// OP_IFNOT	21152	4	0
// OP_ADDRESS	28	158	21153
// OP_STOREP_F	808	21153	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	158	21154
// OP_STOREP_F	619	21154	0
// OP_LOAD_V	28	142	21155
// OP_STORE_V	21155	21080	0
// OP_SUB_F	619	21080	21158
// OP_STORE_F	21158	21080	0
// OP_STORE_V	21080	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	240	21159
// OP_NE_F	21159	806	21160
// OP_LOAD_F	28	177	21161
// OP_LT	21161	677	21162
// OP_OR	21160	21162	21163
// OP_IFNOT	21163	7	0
// OP_MUL_VF	62	1111	21164
// OP_LOAD_F	28	240	21167
// OP_MUL_VF	21164	21167	21168
// OP_SUB_V	21168	10220	21171
// OP_STORE_V	21171	21080	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	240	21174
// OP_MUL_F	1111	21174	21175
// OP_DIV_F	21175	64	21176
// OP_MUL_VF	62	21176	21177
// OP_SUB_V	21177	10220	21180
// OP_STORE_V	21180	21080	0
// OP_LOAD_F	28	207	21183
// OP_BITAND	21183	277	21184
// OP_NOT_F	21184	0	21185
// OP_IFNOT	21185	6	0
// OP_ADDRESS	28	138	21186
// OP_LOAD_V	28	138	21189
// OP_MUL_VF	21189	10247	21192
// OP_ADD_V	21192	21080	21195
// OP_STOREP_V	21195	21186	0
// OP_LOAD_F	28	133	21198
// OP_GT	21198	93	21199
// OP_AND	93	21199	21200
// OP_IFNOT	21200	8	0
// OP_LOAD_F	28	141	21201
// OP_GT	21201	619	21202
// OP_IFNOT	21202	5	0
// OP_ADDRESS	28	133	21203
// OP_STOREP_F	93	21203	0
// OP_ADDRESS	28	141	21204
// OP_STOREP_F	619	21204	0
// OP_STORE_V	28	4	0
// OP_CALL1	5239	0	0
// OP_DONE	0	0	0
void (vector v0) turn_hedrone = 
{
    local vector v1;
    local vector v2;
    local vector v3;
    
    if((self.health > 0.000) && (!(self.flags & FL_ONGROUND)))
    {
        
        if(v0_x > 45.000)
        {
            v0_x = 45.000;
        }
        
        
        if(v0_x < -45.000)
        {
            v0_x = -45.000;
        }
        
        v1 = '0.000 0.000 0.000';
        v1_y = anglemod(0.000 - self.angles_y);
        
        if(0.000 > 180.000)
        {
            v1_y = 0.000 - 360.000;
        }
        
        v1_x = v0_x - self.angles_x;
        v2 = '0.000 0.000 0.000';
        
        if(v1_x < 0.000)
        {
            v2_x = -90.000;
        }
        
        
        if(v1_x > 0.000)
        {
            v2_x = 90.000;
        }
        
        
        if(fabs(v1_x) < 9.000)
        {
            v2_x = 0.000;
            self.angles_x = v0_x;
        }
        
        
        if(0.000 < 0.000)
        {
            v2_y = -110.000;
        }
        
        
        if(0.000 > 0.000)
        {
            v2_y = 110.000;
        }
        
        if(fabs(0.000) < 11.000)
        {
            v2_y = 0.000;
            self.angles_y = 0.000;
        }
        else
        {
            self.angles_y = anglemod(self.angles_y);
        }
        
        v0_z = 0.000 - ((0.000 * fabs(self.angles_x)) * 0.010);
        
        if(0.000 < -45.000)
        {
            v0_z = -45.000;
        }
        
        
        if(0.000 > 45.000)
        {
            v0_z = 45.000;
        }
        
        v1_z = 0.000 - self.angles_z;
        
        if(0.000 < 0.000)
        {
            v2_z = -100.000;
            
            if(0.000 < (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(0.000 > 0.000)
        {
            v2_z = 100.000;
            
            if(0.000 > (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(fabs(0.000) < (0.000 * frametime))
        {
            v2_z = 0.000;
            self.angles_z = 0.000 - (0.000 * 0.300);
        }
        
        self.avelocity = v2;
    }
    
    
    if(self.flags & FL_ONGROUND)
    {
        
        if((self.groundentity.classname != "func_runway") || (self.thru > 2.000))
        {
            self.flags = self.flags - FL_ONGROUND;
            self.groundentity = world;
            self.velocity_z = self.velocity_z + 200.000;
        }
        
    }
    
    
    if((self.health < 40.000) && (self.model == "progs/helo1.mdl"))
    {
        setmodel(self, "progs/helo1b.mdl");
    }
    
    if(self.health < 1.000)
    {
        self.effects = 4.000;
    }
    else
    {
        self.effects = 0.000;
    }
    
    v3 = self.angles;
    v3_x = 0.000 - v3_x;
    makevectors(v3);
    if((self.thru != 2.000) || (self.health < 1.000))
    {
        v3 = ((v_up * 20.000) * self.thru) - '0.000 0.000 40.000';
    }
    else
    {
        v3 = (v_up * ((20.000 * self.thru) / 0.000)) - '0.000 0.000 40.000';
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.velocity = (self.velocity * 0.800) + v3;
    }
    
    
    if(sky_z && (self.origin_z > sky_z))
    {
        
        if(self.velocity_z > 0.000)
        {
            self.origin_z = sky_z;
            self.velocity_z = 0.000;
        }
        
    }
    
    Check_minsmaxs(self);
};

// T_hedroneTouch
// function begins at statement 30585, parm_start=21206
// OP_LOAD_F	29	129	21209
// OP_EQ_F	21209	292	21210
// OP_IFNOT	21210	2	0
// OP_RETURN	0	0	0
// OP_NE_E	29	30	21211
// OP_IFNOT	21211	8	0
// OP_LOAD_F	29	188	21212
// OP_NOT_F	21212	0	21213
// OP_LOAD_F	29	129	21214
// OP_NE_F	21214	295	21215
// OP_AND	21213	21215	21216
// OP_IFNOT	21216	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	154	21217
// OP_EQ_S	21217	5708	21218
// OP_IFNOT	21218	31	0
// OP_LOAD_F	28	143	21219
// OP_STORE_V	21219	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	145	21220
// OP_STORE_V	21220	4	0
// OP_CALL1	534	0	0
// OP_ADD_F	1	1	21221
// OP_LT	21221	1111	21222
// OP_IFNOT	21222	22	0
// OP_ADDRESS	28	207	21223
// OP_LOAD_F	28	207	21224
// OP_BITOR	21224	277	21225
// OP_STOREP_F	21225	21223	0
// OP_ADDRESS	28	176	21226
// OP_STOREP_ENT	29	21226	0
// OP_ADDRESS	28	143	21227
// OP_STOREP_F	619	21227	0
// OP_ADDRESS	28	145	21228
// OP_STOREP_F	619	21228	0
// OP_ADDRESS	28	146	21229
// OP_STOREP_V	607	21229	0
// OP_ADDRESS	28	138	21232
// OP_STOREP_V	607	21232	0
// OP_ADDRESS	28	133	21235
// OP_LOAD_F	29	133	21236
// OP_LOAD_F	29	166	21237
// OP_ADD_F	21236	21237	21238
// OP_ADD_F	21238	812	21239
// OP_STOREP_F	21239	21235	0
// OP_RETURN	0	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	21240
// OP_STORE_V	21240	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	21241
// OP_STORE_V	21241	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	21242
// OP_STORE_V	21242	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5970	13	0
// OP_CALL4	569	0	0
// OP_EQ_E	29	30	21243
// OP_LOAD_F	29	177	21244
// OP_GT	21244	619	21245
// OP_OR	21243	21245	21246
// OP_LOAD_F	28	177	21247
// OP_LT	21247	677	21248
// OP_LOAD_F	28	423	21249
// OP_GT	31	21249	21250
// OP_AND	21248	21250	21251
// OP_OR	21246	21251	21252
// OP_IFNOT	21252	44	0
// OP_ADDRESS	28	130	21253
// OP_LOAD_V	28	130	21256
// OP_LOAD_V	28	138	21259
// OP_STORE_V	21259	4	0
// OP_CALL1	503	0	0
// OP_MUL_VF	1	810	21262
// OP_SUB_V	21256	21262	21265
// OP_STOREP_V	21265	21253	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	5005	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	2232	0	0
// OP_LOAD_F	28	177	21268
// OP_GT	21268	619	21269
// OP_IFNOT	21269	13	0
// OP_STORE_V	21270	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	21271
// OP_IFNOT	21271	7	0
// OP_LOAD_S	29	205	21272
// OP_STORE_V	21272	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5807	4	0
// OP_CALL1	517	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	173	21273
// OP_STOREP_FNC	2603	21273	0
// OP_ADDRESS	28	175	21274
// OP_ADD_F	31	655	21275
// OP_STOREP_F	21275	21274	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	177	21276
// OP_GT	21276	619	21277
// OP_IFNOT	21277	13	0
// OP_ADDRESS	28	423	21278
// OP_ADD_F	31	1687	21279
// OP_STOREP_F	21279	21278	0
// OP_STORE_V	21270	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	21280
// OP_IFNOT	21280	6	0
// OP_LOAD_S	29	205	21281
// OP_STORE_V	21281	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	411	21282
// OP_STOREP_FNC	566	21282	0
// OP_LOAD_S	28	155	21283
// OP_EQ_S	21283	10187	21284
// OP_IFNOT	21284	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10190	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	171	21285
// OP_STOREP_FNC	21205	21285	0
// OP_CALL0	5882	0	0
// OP_DONE	0	0	0
void () T_hedroneTouch = 
{
    local float damg;
    local float temp;
    local entity stemp2;
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(other != world)
    {
        
        if(!other.takedamage && (other.solid != SOLID_BSP))
        {
            return;
        }
        
    }
    
    
    if(other.classname == "func_runway")
    {
        fabs(self.angles_x);
        
        if((fabs(self.angles_z) + fabs(self.angles_z)) < 20.000)
        {
            self.flags = self.flags | FL_ONGROUND;
            self.groundentity = other;
            self.angles_x = 0.000;
            self.angles_z = 0.000;
            self.avelocity = '0.000 0.000 0.000';
            self.velocity = '0.000 0.000 0.000';
            self.origin_z = (other.origin_z + other.maxs_z) + 16.000;
            return;
        }
        
    }
    
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    T_Damage(other, self, self, 240.000);
    if(((other == world) || (other.health > 0.000)) || ((self.health < 1.000) && (time > self.pain_finished)))
    {
        self.origin = self.origin - (normalize(self.velocity) * 8.000);
        T_RadiusDamage(self, self, 160.000, other);
        
        if(self.health > 0.000)
        {
            bprint("Chopper Drone crashed into ");
            if(other != world)
            {
                bprint(other.netname);
                bprint("\n");
            }
            else
            {
                bprint("the ground\n");
            }
            
        }
        
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        T_Damage(self, self, self, 1000.000);
        self.think = BecomeExplosion;
        self.nextthink = time + 0.100;
    }
    else
    {
        
        if(self.health > 0.000)
        {
            self.pain_finished = time + 0.300;
            bprint("Chopper Drone crashed into ");
            
            if(other != world)
            {
                bprint(other.netname);
                bprint("\n");
            }
            
        }
        
        T_Damage(self, self, self, 1000.000);
        self.th_die = SUB_Null;
        
        if(self.model == "progs/helo1.mdl")
        {
            setmodel(self, "progs/helo1b.mdl");
        }
        
        self.touch = T_hedroneTouch;
        HE_Fall();
    }
    
};

// hedrone_die
// function begins at statement 30740, parm_start=21287
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	21287
// OP_STORE_V	21287	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	21288
// OP_STORE_V	21288	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	21289
// OP_STORE_V	21289	7	0
// OP_CALL2	546	0	0
// OP_ADDRESS	28	423	21290
// OP_ADD_F	31	1687	21291
// OP_STOREP_F	21291	21290	0
// OP_LOAD_S	28	155	21292
// OP_EQ_S	21292	10187	21293
// OP_IFNOT	21293	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10190	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	171	21294
// OP_STOREP_FNC	21205	21294	0
// OP_CALL0	5882	0	0
// OP_DONE	0	0	0
void () hedrone_die = 
{
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.pain_finished = time + 0.300;
    
    if(self.model == "progs/helo1.mdl")
    {
        setmodel(self, "progs/helo1b.mdl");
    }
    
    self.touch = T_hedroneTouch;
    HE_Fall();
};

// hedrone_stand
// function begins at statement 30771, parm_start=21296
// OP_LOAD_F	28	435	21311
// OP_GT	31	21311	21312
// OP_IFNOT	21312	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10041	10	0
// OP_LOAD_F	28	240	21313
// OP_MUL_F	21313	1349	21314
// OP_ADD_F	21314	1349	21315
// OP_STORE_V	21315	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	21316
// OP_ADD_F	31	677	21317
// OP_STOREP_F	21317	21316	0
// OP_LOAD_F	28	240	21318
// OP_STORE_F	21318	21310	0
// OP_ADDRESS	28	240	21319
// OP_STOREP_F	806	21319	0
// OP_LOAD_V	28	142	21320
// OP_STORE_V	21320	21296	0
// OP_SUB_F	619	21296	21323
// OP_STORE_F	21323	21296	0
// OP_STORE_V	21296	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	607	21296	0
// OP_LOAD_V	28	130	21324
// OP_STORE_V	21324	4	0
// OP_LOAD_V	28	130	21327
// OP_MUL_VF	59	821	21330
// OP_ADD_V	21327	21330	21333
// OP_STORE_V	21333	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	21296	1193	21336
// OP_MUL_F	70	1193	21337
// OP_SUB_F	21336	21337	21338
// OP_STORE_F	21338	21296	0
// OP_LOAD_V	28	130	21339
// OP_STORE_V	21339	4	0
// OP_LOAD_V	28	130	21342
// OP_MUL_VF	59	821	21345
// OP_SUB_V	21342	21345	21348
// OP_STORE_V	21348	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_SUB_F	21296	1193	21351
// OP_MUL_F	70	1193	21352
// OP_ADD_F	21351	21352	21353
// OP_STORE_F	21353	21296	0
// OP_LOAD_V	28	130	21354
// OP_STORE_V	21354	4	0
// OP_LOAD_V	28	130	21357
// OP_MUL_VF	65	821	21360
// OP_ADD_V	21357	21360	21363
// OP_STORE_V	21363	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_SUB_F	21298	1193	21366
// OP_MUL_F	70	1193	21367
// OP_ADD_F	21366	21367	21368
// OP_STORE_F	21368	21298	0
// OP_LOAD_V	28	130	21369
// OP_STORE_V	21369	4	0
// OP_LOAD_V	28	130	21372
// OP_MUL_VF	65	821	21375
// OP_SUB_V	21372	21375	21378
// OP_STORE_V	21378	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADD_F	21298	1193	21381
// OP_MUL_F	70	1193	21382
// OP_SUB_F	21381	21382	21383
// OP_STORE_F	21383	21298	0
// OP_LOAD_V	28	130	21384
// OP_STORE_V	21384	4	0
// OP_LOAD_V	28	130	21387
// OP_MUL_VF	62	821	21390
// OP_ADD_V	21387	21390	21393
// OP_STORE_V	21393	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21396
// OP_LOAD_F	28	141	21397
// OP_GT	21397	1155	21398
// OP_OR	21396	21398	21399
// OP_IFNOT	21399	3	0
// OP_ADDRESS	28	240	21400
// OP_STOREP_F	619	21400	0
// OP_LOAD_V	28	130	21401
// OP_STORE_V	21401	4	0
// OP_LOAD_V	28	130	21404
// OP_MUL_VF	62	821	21407
// OP_SUB_V	21404	21407	21410
// OP_STORE_V	21410	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21413
// OP_LOAD_F	28	141	21414
// OP_LT	21414	15162	21415
// OP_OR	21413	21415	21416
// OP_IFNOT	21416	3	0
// OP_ADDRESS	28	240	21417
// OP_STOREP_F	808	21417	0
// OP_STORE_V	21296	4	0
// OP_CALL1	20597	0	0
// OP_LOAD_F	28	240	21418
// OP_NE_F	21418	21310	21419
// OP_IFNOT	21419	3	0
// OP_ADDRESS	28	435	21420
// OP_STOREP_F	31	21420	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	173	21421
// OP_STOREP_FNC	20598	21421	0
// OP_ADDRESS	28	175	21422
// OP_ADD_F	31	655	21423
// OP_STOREP_F	21423	21422	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	21424
// OP_STOREP_FNC	21295	21424	0
// OP_ADDRESS	28	175	21425
// OP_ADD_F	31	655	21426
// OP_STOREP_F	21426	21425	0
// OP_DONE	0	0	0
void () hedrone_stand = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float a;
    local float b;
    local float oth;
    
    if(time > self.fly_sound)
    {
        sound(self, CHAN_BODY, "engines/chopper.wav", (self.thru * 0.200) + 0.200, ATTN_NORM);
        self.fly_sound = time + 1.000;
    }
    
    oth = self.thru;
    self.thru = 2.000;
    v0 = self.angles;
    v0_x = 0.000 - v0_x;
    makevectors(v0);
    v0 = '0.000 0.000 0.000';
    traceline(self.origin, self.origin + (v_forward * 128.000), TRUE, world);
    v0_x = (v0_x + 45.000) - (trace_fraction * 45.000);
    traceline(self.origin, self.origin - (v_forward * 128.000), TRUE, world);
    v0_x = (v0_x - 45.000) + (trace_fraction * 45.000);
    traceline(self.origin, self.origin + (v_right * 128.000), TRUE, world);
    v0_z = (0.000 - 45.000) + (trace_fraction * 45.000);
    traceline(self.origin, self.origin - (v_right * 128.000), TRUE, world);
    v0_z = (0.000 + 45.000) - (trace_fraction * 45.000);
    traceline(self.origin, self.origin + (v_up * 128.000), TRUE, world);
    
    if((trace_fraction < 1.000) || (self.velocity_z > 40.000))
    {
        self.thru = 0.000;
    }
    
    traceline(self.origin, self.origin - (v_up * 128.000), TRUE, world);
    
    if((trace_fraction < 1.000) || (self.velocity_z < -40.000))
    {
        self.thru = 4.000;
    }
    
    turn_hedrone(v0);
    
    if(self.thru != oth)
    {
        self.fly_sound = time;
    }
    
    
    if(FindTarget())
    {
        self.think = hedrone_run;
        self.nextthink = time + 0.100;
        return;
    }
    
    self.think = hedrone_stand;
    self.nextthink = time + 0.100;
};

// hedrone_walk
// function begins at statement 30902, parm_start=21428
// OP_LOAD_F	28	240	21441
// OP_STORE_F	21441	21440	0
// OP_LOAD_F	28	435	21442
// OP_GT	31	21442	21443
// OP_IFNOT	21443	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10041	10	0
// OP_LOAD_F	28	240	21444
// OP_MUL_F	21444	1349	21445
// OP_ADD_F	21445	1349	21446
// OP_STORE_V	21446	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	21447
// OP_ADD_F	31	677	21448
// OP_STOREP_F	21448	21447	0
// OP_ADDRESS	28	206	21449
// OP_STOREP_ENT	30	21449	0
// OP_ADDRESS	28	219	21450
// OP_LOAD_ENT	28	467	21451
// OP_STOREP_ENT	21451	21450	0
// OP_LOAD_ENT	28	219	21452
// OP_NOT_ENT	21452	0	21453
// OP_IFNOT	21453	11	0
// OP_LOAD_F	28	144	21454
// OP_MUL_FV	21454	6286	21455
// OP_STORE_V	21455	4	0
// OP_CALL1	20597	0	0
// OP_ADDRESS	28	173	21458
// OP_STOREP_FNC	21295	21458	0
// OP_ADDRESS	28	175	21459
// OP_ADD_F	31	655	21460
// OP_STOREP_F	21460	21459	0
// OP_RETURN	0	0	0
// OP_CALL0	20698	0	0
// OP_LOAD_F	28	240	21461
// OP_NE_F	21461	21440	21462
// OP_IFNOT	21462	3	0
// OP_ADDRESS	28	435	21463
// OP_STOREP_F	31	21463	0
// OP_CALL0	1716	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	173	21464
// OP_STOREP_FNC	20598	21464	0
// OP_ADDRESS	28	175	21465
// OP_ADD_F	31	655	21466
// OP_STOREP_F	21466	21465	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	21467
// OP_STOREP_FNC	21427	21467	0
// OP_ADDRESS	28	175	21468
// OP_ADD_F	31	655	21469
// OP_STOREP_F	21469	21468	0
// OP_DONE	0	0	0
void () hedrone_walk = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float oth;
    oth = self.thru;
    
    if(time > self.fly_sound)
    {
        sound(self, CHAN_BODY, "engines/chopper.wav", (self.thru * 0.200) + 0.200, ATTN_NORM);
        self.fly_sound = time + 1.000;
    }
    
    self.enemy = world;
    self.goalentity = self.movetarget;
    
    if(!self.goalentity)
    {
        turn_hedrone(self.angles_y * '0.000 1.000 0.000');
        self.think = hedrone_stand;
        self.nextthink = time + 0.100;
        return;
    }
    
    he_movetogoal();
    
    if(self.thru != oth)
    {
        self.fly_sound = time;
    }
    
    
    if(FindTarget())
    {
        self.think = hedrone_run;
        self.nextthink = time + 0.100;
        return;
    }
    
    self.think = hedrone_walk;
    self.nextthink = time + 0.100;
};

// hedrone_run
// function begins at statement 30957, parm_start=21470
// OP_LOAD_F	28	240	21484
// OP_STORE_F	21484	21483	0
// OP_LOAD_F	28	435	21485
// OP_GT	31	21485	21486
// OP_IFNOT	21486	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	10041	10	0
// OP_LOAD_F	28	240	21487
// OP_MUL_F	21487	1349	21488
// OP_ADD_F	21488	1349	21489
// OP_STORE_V	21489	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	21490
// OP_ADD_F	31	677	21491
// OP_STOREP_F	21491	21490	0
// OP_LOAD_ENT	28	219	21492
// OP_LOAD_F	21492	177	21493
// OP_LT	21493	677	21494
// OP_LOAD_ENT	28	219	21495
// OP_LOAD_F	21495	188	21496
// OP_LT	21496	677	21497
// OP_OR	21494	21497	21498
// OP_IFNOT	21498	3	0
// OP_ADDRESS	28	219	21499
// OP_STOREP_ENT	30	21499	0
// OP_LOAD_ENT	28	219	21500
// OP_STORE_V	21500	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	21501
// OP_LOAD_F	28	415	21502
// OP_LT	21502	31	21503
// OP_AND	21501	21503	21504
// OP_IFNOT	21504	3	0
// OP_ADDRESS	28	219	21505
// OP_STOREP_ENT	30	21505	0
// OP_LOAD_ENT	28	219	21506
// OP_NOT_ENT	21506	0	21507
// OP_IFNOT	21507	11	0
// OP_LOAD_F	28	144	21508
// OP_MUL_FV	21508	6286	21509
// OP_STORE_V	21509	4	0
// OP_CALL1	20597	0	0
// OP_ADDRESS	28	173	21512
// OP_STOREP_FNC	21427	21512	0
// OP_ADDRESS	28	175	21513
// OP_ADD_F	31	655	21514
// OP_STOREP_F	21514	21513	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	219	21515
// OP_LOAD_V	21515	130	21516
// OP_LOAD_ENT	28	219	21519
// OP_LOAD_V	21519	159	21520
// OP_LOAD_ENT	28	219	21523
// OP_LOAD_V	21523	163	21524
// OP_ADD_V	21520	21524	21527
// OP_MUL_VF	21527	972	21530
// OP_ADD_V	21516	21530	21533
// OP_STORE_V	21533	21473	0
// OP_LOAD_F	28	416	21536
// OP_EQ_F	21536	619	21537
// OP_IFNOT	21537	41	0
// OP_CALL0	20698	0	0
// OP_LOAD_F	28	414	21538
// OP_LT	21538	619	21539
// OP_IFNOT	21539	36	0
// OP_CALL0	501	0	0
// OP_LT	1	655	21540
// OP_IFNOT	21540	33	0
// OP_CALL0	501	0	0
// OP_STORE_F	1	21482	0
// OP_LOAD_V	28	130	21541
// OP_SUB_V	21473	21541	21544
// OP_STORE_V	21544	4	0
// OP_CALL1	506	0	0
// OP_LT	1	1620	21547
// OP_IFNOT	21547	9	0
// OP_LT	21482	10617	21548
// OP_IFNOT	21548	4	0
// OP_ADDRESS	28	416	21549
// OP_STOREP_F	677	21549	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	416	21550
// OP_STOREP_F	806	21550	0
// OP_GOTO	17	0	0
// OP_LOAD_V	28	130	21551
// OP_SUB_V	21473	21551	21554
// OP_STORE_V	21554	4	0
// OP_CALL1	506	0	0
// OP_LT	1	1622	21557
// OP_IFNOT	21557	9	0
// OP_LT	21482	10617	21558
// OP_IFNOT	21558	4	0
// OP_ADDRESS	28	416	21559
// OP_STOREP_F	806	21559	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	416	21560
// OP_STOREP_F	788	21560	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	416	21561
// OP_STOREP_F	788	21561	0
// OP_GOTO	235	0	0
// OP_LOAD_F	28	416	21562
// OP_EQ_F	21562	677	21563
// OP_IFNOT	21563	7	0
// OP_LOAD_ENT	28	219	21564
// OP_LOAD_V	21564	138	21565
// OP_MUL_VF	21565	21568	21569
// OP_ADD_V	21473	21569	21572
// OP_STORE_V	21572	21476	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	416	21575
// OP_EQ_F	21575	806	21576
// OP_IFNOT	21576	7	0
// OP_LOAD_ENT	28	219	21577
// OP_LOAD_V	21577	138	21578
// OP_MUL_VF	21578	21581	21582
// OP_ADD_V	21473	21582	21585
// OP_STORE_V	21585	21476	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	416	21588
// OP_EQ_F	21588	788	21589
// OP_IFNOT	21589	2	0
// OP_STORE_V	21473	21476	0
// OP_LOAD_V	28	130	21590
// OP_SUB_V	21476	21590	21593
// OP_STORE_V	21593	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	21470	0
// OP_GT	21470	1827	21596
// OP_IFNOT	21596	3	0
// OP_SUB_F	21470	1459	21597
// OP_STORE_F	21597	21470	0
// OP_GT	21470	1193	21598
// OP_IFNOT	21598	4	0
// OP_STORE_F	619	21470	0
// OP_ADDRESS	28	240	21599
// OP_STOREP_F	808	21599	0
// OP_LT	21470	10094	21600
// OP_IFNOT	21600	4	0
// OP_STORE_F	619	21470	0
// OP_ADDRESS	28	240	21601
// OP_STOREP_F	619	21601	0
// OP_LOAD_F	28	144	21602
// OP_MUL_FV	21602	6286	21603
// OP_STORE_V	21603	21479	0
// OP_STORE_V	21479	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	21606
// OP_LOAD_V	28	138	21609
// OP_MUL_VF	21609	972	21612
// OP_ADD_V	21606	21612	21615
// OP_STORE_V	21615	21479	0
// OP_LOAD_V	28	130	21618
// OP_STORE_V	21618	4	0
// OP_MUL_VF	59	821	21621
// OP_ADD_V	21479	21621	21624
// OP_STORE_V	21624	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21627
// OP_IFNOT	21627	4	0
// OP_STORE_F	1193	21470	0
// OP_ADDRESS	28	416	21628
// OP_STOREP_F	619	21628	0
// OP_LOAD_V	28	130	21629
// OP_STORE_V	21629	4	0
// OP_MUL_VF	59	821	21632
// OP_SUB_V	21479	21632	21635
// OP_STORE_V	21635	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21638
// OP_IFNOT	21638	4	0
// OP_STORE_F	10094	21470	0
// OP_ADDRESS	28	416	21639
// OP_STOREP_F	619	21639	0
// OP_LOAD_V	28	130	21640
// OP_STORE_V	21640	4	0
// OP_MUL_VF	65	821	21643
// OP_ADD_V	21479	21643	21646
// OP_STORE_V	21646	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21649
// OP_IFNOT	21649	4	0
// OP_STORE_F	10094	21472	0
// OP_ADDRESS	28	416	21650
// OP_STOREP_F	619	21650	0
// OP_LOAD_V	28	130	21651
// OP_STORE_V	21651	4	0
// OP_MUL_VF	65	821	21654
// OP_SUB_V	21479	21654	21657
// OP_STORE_V	21657	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21660
// OP_IFNOT	21660	4	0
// OP_STORE_F	1193	21472	0
// OP_ADDRESS	28	416	21661
// OP_STOREP_F	619	21661	0
// OP_LOAD_V	28	130	21662
// OP_STORE_V	21662	4	0
// OP_MUL_VF	62	821	21665
// OP_ADD_V	21479	21665	21668
// OP_STORE_V	21668	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21671
// OP_LOAD_F	28	141	21672
// OP_GT	21672	1155	21673
// OP_OR	21671	21673	21674
// OP_IFNOT	21674	3	0
// OP_ADDRESS	28	240	21675
// OP_STOREP_F	619	21675	0
// OP_LOAD_V	28	130	21676
// OP_STORE_V	21676	4	0
// OP_MUL_VF	62	821	21679
// OP_SUB_V	21479	21679	21682
// OP_STORE_V	21682	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	21685
// OP_LOAD_F	28	141	21686
// OP_LT	21686	15162	21687
// OP_OR	21685	21687	21688
// OP_IFNOT	21688	3	0
// OP_ADDRESS	28	240	21689
// OP_STOREP_F	808	21689	0
// OP_STORE_V	21470	4	0
// OP_CALL1	20597	0	0
// OP_LOAD_F	28	422	21690
// OP_LT	21690	31	21691
// OP_IFNOT	21691	85	0
// OP_ADDRESS	28	218	21692
// OP_STOREP_ENT	30	21692	0
// OP_STORE_V	21693	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	20599	0	0
// OP_STORE_V	1	21476	0
// OP_LOAD_V	28	142	21694
// OP_STORE_V	21694	21473	0
// OP_SUB_F	619	21473	21697
// OP_STORE_F	21697	21473	0
// OP_STORE_V	21473	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	218	21698
// OP_LOAD_ENT	28	206	21699
// OP_EQ_E	21698	21699	21700
// OP_IFNOT	21700	69	0
// OP_LOAD_F	28	416	21701
// OP_EQ_F	21701	677	21702
// OP_IFNOT	21702	23	0
// OP_LOAD_ENT	28	206	21703
// OP_LOAD_V	21703	130	21704
// OP_LOAD_V	28	130	21707
// OP_SUB_V	21704	21707	21710
// OP_STORE_V	21710	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	21479	0
// OP_MUL_V	21479	59	21713
// OP_GT	21713	10247	21714
// OP_IFNOT	21714	12	0
// OP_LOAD_V	28	130	21715
// OP_MUL_VF	59	827	21718
// OP_ADD_V	21715	21718	21721
// OP_STORE_V	21721	4	0
// OP_STORE_V	21479	7	0
// OP_LOAD_ENT	28	206	21724
// OP_STORE_V	21724	10	0
// OP_CALL3	4006	0	0
// OP_ADDRESS	28	422	21725
// OP_ADD_F	31	1349	21726
// OP_STOREP_F	21726	21725	0
// OP_GOTO	44	0	0
// OP_LOAD_F	28	416	21727
// OP_EQ_F	21727	806	21728
// OP_IFNOT	21728	25	0
// OP_LOAD_V	28	130	21729
// OP_MUL_VF	65	827	21732
// OP_ADD_V	21729	21732	21735
// OP_MUL_VF	59	827	21738
// OP_ADD_V	21735	21738	21741
// OP_STORE_V	21741	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	21744
// OP_STORE_V	21744	10	0
// OP_CALL3	4169	0	0
// OP_LOAD_V	28	130	21745
// OP_MUL_VF	65	827	21748
// OP_SUB_V	21745	21748	21751
// OP_MUL_VF	59	827	21754
// OP_ADD_V	21751	21754	21757
// OP_STORE_V	21757	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	21760
// OP_STORE_V	21760	10	0
// OP_CALL3	4169	0	0
// OP_ADDRESS	28	422	21761
// OP_ADD_F	31	677	21762
// OP_STOREP_F	21762	21761	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	416	21763
// OP_EQ_F	21763	788	21764
// OP_IFNOT	21764	14	0
// OP_LOAD_V	28	130	21765
// OP_MUL_VF	62	827	21768
// OP_SUB_V	21765	21768	21771
// OP_MUL_VF	59	827	21774
// OP_ADD_V	21771	21774	21777
// OP_STORE_V	21777	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	21780
// OP_STORE_V	21780	10	0
// OP_CALL3	4829	0	0
// OP_ADDRESS	28	422	21781
// OP_ADD_F	31	806	21782
// OP_STOREP_F	21782	21781	0
// OP_LOAD_ENT	28	206	21783
// OP_STORE_V	21783	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	21784
// OP_IFNOT	21784	3	0
// OP_ADDRESS	28	416	21785
// OP_STOREP_F	619	21785	0
// OP_CALL0	501	0	0
// OP_LT	1	655	21786
// OP_IFNOT	21786	3	0
// OP_ADDRESS	28	416	21787
// OP_STOREP_F	619	21787	0
// OP_LOAD_F	28	240	21788
// OP_NE_F	21788	21483	21789
// OP_IFNOT	21789	3	0
// OP_ADDRESS	28	435	21790
// OP_STOREP_F	31	21790	0
// OP_ADDRESS	28	173	21791
// OP_STOREP_FNC	20598	21791	0
// OP_ADDRESS	28	175	21792
// OP_ADD_F	31	655	21793
// OP_STOREP_F	21793	21792	0
// OP_DONE	0	0	0
void () hedrone_run = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    local float oth;
    oth = self.thru;
    
    if(time > self.fly_sound)
    {
        sound(self, CHAN_BODY, "engines/chopper.wav", (self.thru * 0.200) + 0.200, ATTN_NORM);
        self.fly_sound = time + 1.000;
    }
    
    
    if((self.goalentity.health < 1.000) || (self.goalentity.takedamage < 1.000))
    {
        self.goalentity = world;
    }
    
    
    if(!visible(self.goalentity) && (self.search_time < time))
    {
        self.goalentity = world;
    }
    
    
    if(!self.goalentity)
    {
        turn_hedrone(self.angles_y * '0.000 1.000 0.000');
        self.think = hedrone_walk;
        self.nextthink = time + 0.100;
        return;
    }
    
    v1 = self.goalentity.origin + ((self.goalentity.mins + self.goalentity.maxs) * 0.500);
    if(self.attack_state == 0.000)
    {
        he_movetogoal();
        
        if(self.lefty < 0.000)
        {
            
            if(random() < 0.100)
            {
                tmp = random();
                if((vlen(v1 - self.origin)) < 500.000)
                {
                    if(tmp < 0.600)
                    {
                        self.attack_state = 1.000;
                    }
                    else
                    {
                        self.attack_state = 2.000;
                    }
                    
                }
                else
                {
                    if((vlen(v1 - self.origin)) < 1000.000)
                    {
                        if(tmp < 0.600)
                        {
                            self.attack_state = 2.000;
                        }
                        else
                        {
                            self.attack_state = 3.000;
                        }
                        
                    }
                    else
                    {
                        self.attack_state = 3.000;
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(self.attack_state == 1.000)
        {
            v2 = v1 + (self.goalentity.velocity * 0.001);
        }
        else
        {
            if(self.attack_state == 2.000)
            {
                v2 = v1 + (self.goalentity.velocity * 0.001);
            }
            else
            {
                
                if(self.attack_state == 3.000)
                {
                    v2 = v1;
                }
                
            }
            
        }
        
        v0 = vectoangles(v2 - self.origin);
        
        if(v0_x > 180.000)
        {
            v0_x = v0_x - 360.000;
        }
        
        
        if(v0_x > 45.000)
        {
            v0_x = 0.000;
            self.thru = 4.000;
        }
        
        
        if(v0_x < -45.000)
        {
            v0_x = 0.000;
            self.thru = 0.000;
        }
        
        v3 = self.angles_y * '0.000 1.000 0.000';
        makevectors(v3);
        v3 = self.origin + (self.velocity * 0.500);
        traceline(self.origin, v3 + (v_forward * 128.000), FALSE, self);
        
        if(trace_fraction < 1.000)
        {
            v0_x = 45.000;
            self.attack_state = 0.000;
        }
        
        traceline(self.origin, v3 - (v_forward * 128.000), FALSE, self);
        
        if(trace_fraction < 1.000)
        {
            v0_x = -45.000;
            self.attack_state = 0.000;
        }
        
        traceline(self.origin, v3 + (v_right * 128.000), FALSE, self);
        
        if(trace_fraction < 1.000)
        {
            v0_z = -45.000;
            self.attack_state = 0.000;
        }
        
        traceline(self.origin, v3 - (v_right * 128.000), FALSE, self);
        
        if(trace_fraction < 1.000)
        {
            v0_z = 45.000;
            self.attack_state = 0.000;
        }
        
        traceline(self.origin, v3 + (v_up * 128.000), FALSE, self);
        
        if((trace_fraction < 1.000) || (self.velocity_z > 40.000))
        {
            self.thru = 0.000;
        }
        
        traceline(self.origin, v3 - (v_up * 128.000), FALSE, self);
        
        if((trace_fraction < 1.000) || (self.velocity_z < -40.000))
        {
            self.thru = 4.000;
        }
        
        turn_hedrone(v0);
        
        if(self.attack_finished < time)
        {
            self.aiment = world;
            v2 = Drone_aim(0.960, 1500.000);
            v1 = self.angles;
            v1_x = 0.000 - v1_x;
            makevectors(v1);
            
            if(self.aiment == self.enemy)
            {
                if(self.attack_state == 1.000)
                {
                    v3 = normalize(self.enemy.origin - self.origin);
                    
                    if((v3 * v_forward) > 0.800)
                    {
                        AC_spike(self.origin + (v_forward * 10.000), v3, self.enemy);
                        self.attack_finished = time + 0.200;
                    }
                    
                }
                else
                {
                    if(self.attack_state == 2.000)
                    {
                        AC_rocket((self.origin + (v_right * 10.000)) + (v_forward * 10.000), v_forward, self.enemy);
                        AC_rocket((self.origin - (v_right * 10.000)) + (v_forward * 10.000), v_forward, self.enemy);
                        self.attack_finished = time + 1.000;
                    }
                    else
                    {
                        
                        if(self.attack_state == 3.000)
                        {
                            AC_heatseeker((self.origin - (v_up * 10.000)) + (v_forward * 10.000), v_forward, self.enemy);
                            self.attack_finished = time + 2.000;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if(!visible(self.enemy))
        {
            self.attack_state = 0.000;
        }
        
        
        if(random() < 0.100)
        {
            self.attack_state = 0.000;
        }
        
    }
    
    
    if(self.thru != oth)
    {
        self.fly_sound = time;
    }
    
    self.think = hedrone_run;
    self.nextthink = time + 0.100;
};

// hedrone_start
// function begins at statement 31305, parm_start=21795
// OP_GT	35	619	21795
// OP_LOAD_F	28	209	21796
// OP_EQ_F	21796	619	21797
// OP_EQ_F	37	619	21798
// OP_OR	21797	21798	21799
// OP_AND	21795	21799	21800
// OP_IFNOT	21800	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	188	21801
// OP_STOREP_F	306	21801	0
// OP_ADDRESS	28	191	21802
// OP_STOREP_V	582	21802	0
// OP_ADDRESS	28	207	21805
// OP_LOAD_F	28	207	21806
// OP_BITOR	21806	273	21807
// OP_STOREP_F	21807	21805	0
// OP_LOAD_S	28	221	21808
// OP_IFNOT	21808	25	0
// OP_ADDRESS	28	219	21809
// OP_ADDRESS	28	467	21810
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	21811
// OP_STORE_V	21811	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	21810	0
// OP_STOREP_ENT	1	21809	0
// OP_LOAD_ENT	28	467	21812
// OP_NOT_ENT	21812	0	21813
// OP_IFNOT	21813	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	21814
// OP_STORE_V	21814	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	173	21817
// OP_STOREP_FNC	21427	21817	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	173	21818
// OP_STOREP_FNC	21295	21818	0
// OP_ADDRESS	28	175	21819
// OP_LOAD_F	28	175	21820
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	21821
// OP_ADD_F	21820	21821	21822
// OP_STOREP_F	21822	21819	0
// OP_DONE	0	0	0
void () hedrone_start = 
{
    
    if((deathmatch > 0.000) && ((self.team == 0.000) || (teamplay == 0.000)))
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.view_ofs = '0.000 0.000 1.000';
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        self.think = hedrone_walk;
    }
    else
    {
        self.think = hedrone_stand;
    }
    
    self.nextthink = self.nextthink + (random() * 0.500);
};

// monster_helo
// function begins at statement 31358, parm_start=21824
// OP_NOT_F	35	0	21824
// OP_IFNOT	21824	3	0
// OP_ADD_F	40	677	21825
// OP_STORE_F	21825	40	0
// OP_ADDRESS	28	129	21826
// OP_STOREP_F	294	21826	0
// OP_ADDRESS	28	128	21827
// OP_STOREP_F	284	21827	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10187	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	191	21828
// OP_STOREP_V	582	21828	0
// OP_LOAD_F	28	177	21831
// OP_NOT_F	21831	0	21832
// OP_IFNOT	21832	3	0
// OP_ADDRESS	28	177	21833
// OP_STOREP_F	986	21833	0
// OP_ADDRESS	28	205	21834
// OP_STOREP_S	21835	21834	0
// OP_CALL0	1068	0	0
// OP_ADDRESS	28	171	21836
// OP_STOREP_FNC	21205	21836	0
// OP_ADDRESS	28	411	21837
// OP_STOREP_FNC	21286	21837	0
// OP_ADDRESS	28	405	21838
// OP_STOREP_FNC	21295	21838	0
// OP_ADDRESS	28	406	21839
// OP_STOREP_FNC	21427	21839	0
// OP_ADDRESS	28	407	21840
// OP_STOREP_FNC	20598	21840	0
// OP_ADDRESS	28	173	21841
// OP_STOREP_FNC	21794	21841	0
// OP_ADDRESS	28	175	21842
// OP_ADD_F	31	655	21843
// OP_CALL0	501	0	0
// OP_MUL_F	1	655	21844
// OP_ADD_F	21843	21844	21845
// OP_STOREP_F	21845	21842	0
// OP_DONE	0	0	0
void () monster_helo = 
{
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1.000;
    }
    
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_FLY;
    setmodel(self, "progs/helo1.mdl");
    setsize(self, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    self.view_ofs = '0.000 0.000 1.000';
    
    if(!self.health)
    {
        self.health = 200.000;
    }
    
    self.netname = "a Chopper";
    setup_teament();
    self.touch = T_hedroneTouch;
    self.th_die = hedrone_die;
    self.th_stand = hedrone_stand;
    self.th_walk = hedrone_walk;
    self.th_run = hedrone_run;
    self.think = hedrone_start;
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

