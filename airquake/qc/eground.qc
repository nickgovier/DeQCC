// tilt_etank
// function begins at statement 26168, parm_start=17813
// OP_CALL0	933	0	0
// OP_LOAD_ENT	28	206	17814
// OP_STORE_ENT	17814	17813	0
// OP_ADDRESS	28	206	17815
// OP_STOREP_ENT	28	17815	0
// OP_CALL0	6404	0	0
// OP_ADDRESS	28	206	17816
// OP_STOREP_ENT	17813	17816	0
// OP_ADDRESS	28	143	17817
// OP_LOAD_F	28	143	17818
// OP_LOAD_F	28	147	17819
// OP_MUL_F	17819	655	17820
// OP_ADD_F	17818	17820	17821
// OP_STOREP_F	17821	17817	0
// OP_ADDRESS	28	145	17822
// OP_LOAD_F	28	145	17823
// OP_LOAD_F	28	149	17824
// OP_MUL_F	17824	655	17825
// OP_ADD_F	17823	17825	17826
// OP_STOREP_F	17826	17822	0
// OP_ADDRESS	28	146	17827
// OP_STOREP_V	607	17827	0
// OP_DONE	0	0	0
void () tilt_etank = 
{
    local entity e;
    checkground();
    e = self.enemy;
    self.enemy = self;
    gv_tilt();
    self.enemy = e;
    self.angles_x = self.angles_x + (self.avelocity_x * 0.100);
    self.angles_z = self.angles_z + (self.avelocity_z * 0.100);
    self.avelocity = '0.000 0.000 0.000';
};

// turn_eturret
// function begins at statement 26191, parm_start=17831
// OP_STORE_ENT	28	16178	0
// OP_LOAD_ENT	16178	263	17847
// OP_IFNOT	17847	108	0
// OP_LOAD_ENT	28	263	17848
// OP_STORE_V	17848	4	0
// OP_LOAD_V	28	130	17849
// OP_STORE_V	17849	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	16178	144	17852
// OP_SUB_F	17852	17832	17853
// OP_STORE_F	17853	17832	0
// OP_GT	17832	1827	17854
// OP_IFNOT	17854	3	0
// OP_SUB_F	17832	1459	17855
// OP_STORE_F	17855	17832	0
// OP_LOAD_F	28	207	17856
// OP_BITAND	17856	277	17857
// OP_NOT_F	17857	0	17858
// OP_IFNOT	17858	2	0
// OP_STORE_F	619	17832	0
// OP_LOAD_F	16178	238	17859
// OP_SUB_F	17832	17859	17860
// OP_STORE_F	17860	17836	0
// OP_LT	17836	619	17861
// OP_IFNOT	17861	3	0
// OP_ADD_F	17836	1459	17862
// OP_STORE_F	17862	17836	0
// OP_GT	17836	1827	17863
// OP_IFNOT	17863	3	0
// OP_SUB_F	17836	1459	17864
// OP_STORE_F	17864	17836	0
// OP_STORE_F	619	17839	0
// OP_LT	17836	619	17865
// OP_IFNOT	17865	3	0
// OP_SUB_F	619	17834	17866
// OP_STORE_F	17866	17839	0
// OP_GT	17836	619	17867
// OP_IFNOT	17867	2	0
// OP_STORE_F	17834	17839	0
// OP_STORE_V	17836	4	0
// OP_CALL1	534	0	0
// OP_STORE_F	1	17844	0
// OP_STORE_V	17839	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	1	655	17868
// OP_STORE_F	17868	17845	0
// OP_LT	17844	17845	17869
// OP_IFNOT	17869	5	0
// OP_STORE_F	619	17839	0
// OP_ADDRESS	16178	238	17870
// OP_STOREP_F	17832	17870	0
// OP_GOTO	6	0	0
// OP_ADDRESS	16178	238	17871
// OP_LOAD_F	16178	238	17872
// OP_MUL_F	17839	655	17873
// OP_ADD_F	17872	17873	17874
// OP_STOREP_F	17874	17871	0
// OP_LOAD_F	16178	238	17875
// OP_EQ_F	17875	619	17876
// OP_IFNOT	17876	6	0
// OP_LOAD_ENT	28	263	17877
// OP_ADDRESS	17877	142	17878
// OP_LOAD_V	16178	142	17881
// OP_STOREP_V	17881	17878	0
// OP_GOTO	44	0	0
// OP_LOAD_F	16178	238	17884
// OP_MUL_VF	6286	17884	17885
// OP_STORE_V	17885	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	60	17844	0
// OP_STORE_F	59	17845	0
// OP_LOAD_V	16178	142	17888
// OP_STORE_V	17888	17841	0
// OP_SUB_F	619	17841	17891
// OP_STORE_F	17891	17841	0
// OP_STORE_V	17841	4	0
// OP_CALL1	496	0	0
// OP_MUL_VF	59	17845	17892
// OP_MUL_VF	65	17844	17895
// OP_ADD_V	17892	17895	17898
// OP_STORE_V	17898	17841	0
// OP_STORE_V	17841	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	17841	0
// OP_LOAD_ENT	16178	263	17901
// OP_ADDRESS	17901	142	17902
// OP_STOREP_V	17841	17902	0
// OP_LOAD_ENT	16178	263	17905
// OP_LOAD_F	17905	144	17906
// OP_LOAD_F	16178	144	17907
// OP_SUB_F	17906	17907	17908
// OP_STORE_F	17908	17846	0
// OP_LT	17846	619	17909
// OP_IFNOT	17909	3	0
// OP_ADD_F	17846	1459	17910
// OP_STORE_F	17910	17846	0
// OP_GT	17846	1827	17911
// OP_IFNOT	17911	3	0
// OP_SUB_F	17846	1459	17912
// OP_STORE_F	17912	17846	0
// OP_LOAD_ENT	16178	263	17913
// OP_ADDRESS	17913	145	17914
// OP_LOAD_F	16178	145	17915
// OP_MUL_F	17915	17845	17916
// OP_LOAD_F	16178	143	17917
// OP_MUL_F	17917	17844	17918
// OP_ADD_F	17916	17918	17919
// OP_STOREP_F	17919	17914	0
// OP_LOAD_ENT	16178	263	17920
// OP_STORE_ENT	17920	16178	0
// OP_LOAD_ENT	28	264	17921
// OP_IFNOT	17921	107	0
// OP_LOAD_ENT	28	264	17922
// OP_STORE_V	17922	4	0
// OP_LOAD_V	28	130	17923
// OP_STORE_V	17923	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	16178	143	17926
// OP_SUB_F	17831	17926	17927
// OP_STORE_F	17927	17831	0
// OP_LT	17831	619	17928
// OP_IFNOT	17928	3	0
// OP_ADD_F	17831	1459	17929
// OP_STORE_F	17929	17831	0
// OP_GT	17831	1827	17930
// OP_IFNOT	17930	3	0
// OP_SUB_F	17831	1459	17931
// OP_STORE_F	17931	17831	0
// OP_GT	17831	1252	17932
// OP_IFNOT	17932	2	0
// OP_STORE_F	1252	17831	0
// OP_LT	17831	6997	17933
// OP_IFNOT	17933	2	0
// OP_STORE_F	6997	17831	0
// OP_LOAD_F	28	207	17934
// OP_BITAND	17934	277	17935
// OP_NOT_F	17935	0	17936
// OP_IFNOT	17936	2	0
// OP_STORE_F	619	17831	0
// OP_LOAD_F	16178	238	17937
// OP_SUB_F	17831	17937	17938
// OP_STORE_F	17938	17835	0
// OP_STORE_F	619	17838	0
// OP_LT	17835	619	17939
// OP_IFNOT	17939	3	0
// OP_SUB_F	619	17834	17940
// OP_STORE_F	17940	17838	0
// OP_GT	17835	619	17941
// OP_IFNOT	17941	2	0
// OP_STORE_F	17834	17838	0
// OP_STORE_V	17835	4	0
// OP_CALL1	534	0	0
// OP_STORE_F	1	17844	0
// OP_STORE_V	17838	4	0
// OP_CALL1	534	0	0
// OP_MUL_F	1	655	17942
// OP_STORE_F	17942	17845	0
// OP_LT	17844	17845	17943
// OP_IFNOT	17943	5	0
// OP_STORE_F	619	17838	0
// OP_ADDRESS	16178	238	17944
// OP_STOREP_F	17831	17944	0
// OP_GOTO	6	0	0
// OP_ADDRESS	16178	238	17945
// OP_LOAD_F	16178	238	17946
// OP_MUL_F	17838	655	17947
// OP_ADD_F	17946	17947	17948
// OP_STOREP_F	17948	17945	0
// OP_LOAD_F	16178	238	17949
// OP_EQ_F	17949	619	17950
// OP_IFNOT	17950	6	0
// OP_LOAD_ENT	28	264	17951
// OP_ADDRESS	17951	142	17952
// OP_LOAD_V	16178	142	17955
// OP_STOREP_V	17955	17952	0
// OP_RETURN	0	0	0
// OP_LOAD_F	16178	238	17958
// OP_MUL_VF	6286	17958	17959
// OP_STORE_V	17959	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	60	17844	0
// OP_STORE_F	59	17845	0
// OP_LOAD_V	16178	142	17962
// OP_STORE_V	17962	17841	0
// OP_SUB_F	619	17841	17965
// OP_STORE_F	17965	17841	0
// OP_STORE_V	17841	4	0
// OP_CALL1	496	0	0
// OP_MUL_VF	59	17845	17966
// OP_MUL_VF	62	17844	17969
// OP_ADD_V	17966	17969	17972
// OP_STORE_V	17972	17841	0
// OP_STORE_V	17841	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	17841	0
// OP_LOAD_ENT	28	264	17975
// OP_ADDRESS	17975	142	17976
// OP_STOREP_V	17841	17976	0
// OP_LOAD_ENT	28	264	17979
// OP_LOAD_F	17979	144	17980
// OP_LOAD_F	16178	144	17981
// OP_SUB_F	17980	17981	17982
// OP_STORE_F	17982	17846	0
// OP_LT	17846	619	17983
// OP_IFNOT	17983	3	0
// OP_ADD_F	17846	1459	17984
// OP_STORE_F	17984	17846	0
// OP_GT	17846	1827	17985
// OP_IFNOT	17985	3	0
// OP_SUB_F	17846	1459	17986
// OP_STORE_F	17986	17846	0
// OP_LOAD_ENT	28	264	17987
// OP_ADDRESS	17987	145	17988
// OP_LOAD_F	16178	145	17989
// OP_MUL_F	17989	17845	17990
// OP_MUL_F	17846	17844	17991
// OP_SUB_F	17990	17991	17992
// OP_STOREP_F	17992	17988	0
// OP_DONE	0	0	0
void (vector v0, float sp_x) turn_eturret = 
{
    local vector v1;
    local vector v2;
    local vector v3;
    local float f1;
    local float f2;
    local float f3;
    stemp = self;
    
    if(stemp.tur1)
    {
        setorigin(self.tur1, self.origin);
        v0_y = stemp.angles_y - v0_y;
        
        if(v0_y > 180.000)
        {
            v0_y = v0_y - 360.000;
        }
        
        
        if(!(self.flags & FL_ONGROUND))
        {
            v0_y = 0.000;
        }
        
        v1_y = v0_y - stemp.toyview;
        
        if(v1_y < 0.000)
        {
            v1_y = v1_y + 360.000;
        }
        
        
        if(v1_y > 180.000)
        {
            v1_y = v1_y - 360.000;
        }
        
        v2_y = 0.000;
        
        if(v1_y < 0.000)
        {
            v2_y = 0.000 - sp_x;
        }
        
        
        if(v1_y > 0.000)
        {
            v2_y = sp_x;
        }
        
        f1 = fabs(v1_y);
        f2 = fabs(v2_y) * 0.100;
        if(f1 < f2)
        {
            v2_y = 0.000;
            stemp.toyview = v0_y;
        }
        else
        {
            stemp.toyview = stemp.toyview + (v2_y * 0.100);
        }
        
        if(stemp.toyview == 0.000)
        {
            self.tur1.angles = stemp.angles;
        }
        else
        {
            makevectors('0.000 1.000 0.000' * stemp.toyview);
            f1 = v_forward_y;
            f2 = v_forward_x;
            v3 = stemp.angles;
            v3_x = 0.000 - v3_x;
            makevectors(v3);
            v3 = (v_forward * f2) + (v_right * f1);
            v3 = vectoangles(v3);
            stemp.tur1.angles = v3;
            f3 = stemp.tur1.angles_y - stemp.angles_y;
            
            if(f3 < 0.000)
            {
                f3 = f3 + 360.000;
            }
            
            
            if(f3 > 180.000)
            {
                f3 = f3 - 360.000;
            }
            
            stemp.tur1.angles_z = (stemp.angles_z * f2) + (stemp.angles_x * f1);
        }
        
        stemp = stemp.tur1;
    }
    
    
    if(self.tur2)
    {
        setorigin(self.tur2, self.origin);
        v0_x = v0_x - stemp.angles_x;
        
        if(v0_x < 0.000)
        {
            v0_x = v0_x + 360.000;
        }
        
        
        if(v0_x > 180.000)
        {
            v0_x = v0_x - 360.000;
        }
        
        
        if(v0_x > 80.000)
        {
            v0_x = 80.000;
        }
        
        
        if(v0_x < -10.000)
        {
            v0_x = -10.000;
        }
        
        
        if(!(self.flags & FL_ONGROUND))
        {
            v0_x = 0.000;
        }
        
        v1_x = v0_x - stemp.toyview;
        v2_x = 0.000;
        
        if(v1_x < 0.000)
        {
            v2_x = 0.000 - sp_x;
        }
        
        
        if(v1_x > 0.000)
        {
            v2_x = sp_x;
        }
        
        f1 = fabs(v1_x);
        f2 = fabs(v2_x) * 0.100;
        if(f1 < f2)
        {
            v2_x = 0.000;
            stemp.toyview = v0;
        }
        else
        {
            stemp.toyview = stemp.toyview + (v2_x * 0.100);
        }
        
        
        if(stemp.toyview == 0.000)
        {
            self.tur2.angles = stemp.angles;
            return;
        }
        
        makevectors('0.000 1.000 0.000' * stemp.toyview);
        f1 = v_forward_y;
        f2 = v_forward_x;
        v3 = stemp.angles;
        v3_x = 0.000 - v3_x;
        makevectors(v3);
        v3 = (v_forward * f2) + (v_up * f1);
        v3 = vectoangles(v3);
        self.tur2.angles = v3;
        f3 = self.tur2.angles_y - stemp.angles_y;
        
        if(f3 < 0.000)
        {
            f3 = f3 + 360.000;
        }
        
        
        if(f3 > 180.000)
        {
            f3 = f3 - 360.000;
        }
        
        self.tur2.angles_z = (stemp.angles_z * f2) - (f3 * f1);
    }
    
};

