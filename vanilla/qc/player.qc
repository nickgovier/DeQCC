void () bubble_bob;
// player_stand1
// function begins at statement 7366
// OP_STATE	4861	3937	0
// OP_ADDRESS	28	156	4862
// OP_STOREP_F	337	4862	0
// OP_LOAD_F	28	114	4863
// OP_LOAD_F	28	115	4864
// OP_OR	4863	4864	4865
// OP_IFNOT	4865	5	0
// OP_ADDRESS	28	372	4866
// OP_STOREP_F	337	4866	0
// OP_CALL0	2612	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	4867
// OP_EQ_F	4867	253	4868
// OP_IFNOT	4868	11	0
// OP_LOAD_F	28	372	4869
// OP_GE	4869	2250	4870
// OP_IFNOT	4870	3	0
// OP_ADDRESS	28	372	4871
// OP_STOREP_F	337	4871	0
// OP_ADDRESS	28	131	4872
// OP_LOAD_F	28	372	4873
// OP_ADD_F	4861	4873	4874
// OP_STOREP_F	4874	4872	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	372	4875
// OP_GE	4875	313	4876
// OP_IFNOT	4876	3	0
// OP_ADDRESS	28	372	4877
// OP_STOREP_F	337	4877	0
// OP_ADDRESS	28	131	4878
// OP_LOAD_F	28	372	4879
// OP_ADD_F	2250	4879	4880
// OP_STOREP_F	4880	4878	0
// OP_ADDRESS	28	372	4881
// OP_LOAD_F	28	372	4882
// OP_ADD_F	4882	2256	4883
// OP_STOREP_F	4883	4881	0
// OP_DONE	0	0	0
void () player_stand1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4861 3937 0
    self.weaponframe = MSG_BROADCAST;
    
    if(self.velocity || self.velocity_y)
    {
        self.walkframe = MSG_BROADCAST;
        player_run();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= 12.000)
        {
            self.walkframe = MSG_BROADCAST;
        }
        
        self.frame = 17.000 + self.walkframe;
    }
    else    
    {
        
        if(self.walkframe >= TE_LIGHTNING1)
        {
            self.walkframe = MSG_BROADCAST;
        }
        
        self.frame = 12.000 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + WEAPON_SHOTGUN;
};

// player_run
// function begins at statement 7404
// OP_STATE	314	2612	0
// OP_ADDRESS	28	156	4884
// OP_STOREP_F	337	4884	0
// OP_LOAD_F	28	114	4885
// OP_NOT_F	4885	0	4886
// OP_LOAD_F	28	115	4887
// OP_NOT_F	4887	0	4888
// OP_AND	4886	4888	4889
// OP_IFNOT	4889	5	0
// OP_ADDRESS	28	372	4890
// OP_STOREP_F	337	4890	0
// OP_CALL0	3937	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	4891
// OP_EQ_F	4891	253	4892
// OP_IFNOT	4892	11	0
// OP_LOAD_F	28	372	4893
// OP_EQ_F	4893	314	4894
// OP_IFNOT	4894	3	0
// OP_ADDRESS	28	372	4895
// OP_STOREP_F	337	4895	0
// OP_ADDRESS	28	131	4896
// OP_LOAD_F	28	372	4897
// OP_ADD_F	337	4897	4898
// OP_STOREP_F	4898	4896	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	372	4899
// OP_EQ_F	4899	314	4900
// OP_IFNOT	4900	3	0
// OP_ADDRESS	28	372	4901
// OP_STOREP_F	337	4901	0
// OP_ADDRESS	28	131	4902
// OP_LOAD_F	28	131	4903
// OP_LOAD_F	28	372	4904
// OP_ADD_F	4903	4904	4905
// OP_STOREP_F	4905	4902	0
// OP_ADDRESS	28	372	4906
// OP_LOAD_F	28	372	4907
// OP_ADD_F	4907	2256	4908
// OP_STOREP_F	4908	4906	0
// OP_DONE	0	0	0
void () player_run =
{
    *** UNPROCESSED OPCODE OP_STATE 314 2612 0
    self.weaponframe = MSG_BROADCAST;
    
    if(!self.velocity && !self.velocity_y)
    {
        self.walkframe = MSG_BROADCAST;
        player_stand1();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == TE_LIGHTNING2)
        {
            self.walkframe = MSG_BROADCAST;
        }
        
        self.frame = MSG_BROADCAST + self.walkframe;
    }
    else    
    {
        
        if(self.walkframe == TE_LIGHTNING2)
        {
            self.walkframe = MSG_BROADCAST;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + WEAPON_SHOTGUN;
};

// player_shot1
// function begins at statement 7445
// OP_STATE	4909	4910	0
// OP_ADDRESS	28	156	4911
// OP_STOREP_F	2256	4911	0
// OP_ADDRESS	28	133	4912
// OP_LOAD_F	28	133	4913
// OP_BITOR	4913	334	4914
// OP_STOREP_F	4914	4912	0
// OP_DONE	0	0	0
void () player_shot1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4909 4910 0
    self.weaponframe = WEAPON_SHOTGUN;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_shot2
// function begins at statement 7453
// OP_STATE	4915	4916	0
// OP_ADDRESS	28	156	4917
// OP_STOREP_F	2257	4917	0
// OP_DONE	0	0	0
void () player_shot2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4915 4916 0
    self.weaponframe = WEAPON_ROCKET;
};

// player_shot3
// function begins at statement 7457
// OP_STATE	4918	4919	0
// OP_ADDRESS	28	156	4920
// OP_STOREP_F	370	4920	0
// OP_DONE	0	0	0
void () player_shot3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4918 4919 0
    self.weaponframe = AS_MELEE;
};

// player_shot4
// function begins at statement 7461
// OP_STATE	4921	4922	0
// OP_ADDRESS	28	156	4923
// OP_STOREP_F	2258	4923	0
// OP_DONE	0	0	0
void () player_shot4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4921 4922 0
    self.weaponframe = WEAPON_SPIKES;
};

// player_shot5
// function begins at statement 7465
// OP_STATE	4924	4925	0
// OP_ADDRESS	28	156	4926
// OP_STOREP_F	313	4926	0
// OP_DONE	0	0	0
void () player_shot5 =
{
    *** UNPROCESSED OPCODE OP_STATE 4924 4925 0
    self.weaponframe = TE_LIGHTNING1;
};

// player_shot6
// function begins at statement 7469
// OP_STATE	4927	2612	0
// OP_ADDRESS	28	156	4928
// OP_STOREP_F	314	4928	0
// OP_DONE	0	0	0
void () player_shot6 =
{
    *** UNPROCESSED OPCODE OP_STATE 4927 2612 0
    self.weaponframe = TE_LIGHTNING2;
};

// player_axe1
// function begins at statement 7473
// OP_STATE	4929	4930	0
// OP_ADDRESS	28	156	4931
// OP_STOREP_F	2256	4931	0
// OP_DONE	0	0	0
void () player_axe1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4929 4930 0
    self.weaponframe = WEAPON_SHOTGUN;
};

// player_axe2
// function begins at statement 7477
// OP_STATE	1164	4932	0
// OP_ADDRESS	28	156	4933
// OP_STOREP_F	2257	4933	0
// OP_DONE	0	0	0
void () player_axe2 =
{
    *** UNPROCESSED OPCODE OP_STATE 1164 4932 0
    self.weaponframe = WEAPON_ROCKET;
};

// player_axe3
// function begins at statement 7481
// OP_STATE	4934	4935	0
// OP_ADDRESS	28	156	4936
// OP_STOREP_F	370	4936	0
// OP_CALL0	2631	0	0
// OP_DONE	0	0	0
void () player_axe3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4934 4935 0
    self.weaponframe = AS_MELEE;
    W_FireAxe();
};

// player_axe4
// function begins at statement 7486
// OP_STATE	4937	2612	0
// OP_ADDRESS	28	156	4938
// OP_STOREP_F	2258	4938	0
// OP_DONE	0	0	0
void () player_axe4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4937 2612 0
    self.weaponframe = WEAPON_SPIKES;
};

// player_axeb1
// function begins at statement 7490
// OP_STATE	4939	4940	0
// OP_ADDRESS	28	156	4941
// OP_STOREP_F	313	4941	0
// OP_DONE	0	0	0
void () player_axeb1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4939 4940 0
    self.weaponframe = TE_LIGHTNING1;
};

// player_axeb2
// function begins at statement 7494
// OP_STATE	4942	4943	0
// OP_ADDRESS	28	156	4944
// OP_STOREP_F	314	4944	0
// OP_DONE	0	0	0
void () player_axeb2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4942 4943 0
    self.weaponframe = TE_LIGHTNING2;
};

// player_axeb3
// function begins at statement 7498
// OP_STATE	4945	4946	0
// OP_ADDRESS	28	156	4947
// OP_STOREP_F	315	4947	0
// OP_CALL0	2631	0	0
// OP_DONE	0	0	0
void () player_axeb3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4945 4946 0
    self.weaponframe = TE_WIZSPIKE;
    W_FireAxe();
};

// player_axeb4
// function begins at statement 7503
// OP_STATE	261	2612	0
// OP_ADDRESS	28	156	4948
// OP_STOREP_F	2259	4948	0
// OP_DONE	0	0	0
void () player_axeb4 =
{
    *** UNPROCESSED OPCODE OP_STATE 261 2612 0
    self.weaponframe = WEAPON_BIG;
};

// player_axec1
// function begins at statement 7507
// OP_STATE	4949	4950	0
// OP_ADDRESS	28	156	4951
// OP_STOREP_F	2256	4951	0
// OP_DONE	0	0	0
void () player_axec1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4949 4950 0
    self.weaponframe = WEAPON_SHOTGUN;
};

// player_axec2
// function begins at statement 7511
// OP_STATE	4952	4953	0
// OP_ADDRESS	28	156	4954
// OP_STOREP_F	2257	4954	0
// OP_DONE	0	0	0
void () player_axec2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4952 4953 0
    self.weaponframe = WEAPON_ROCKET;
};

// player_axec3
// function begins at statement 7515
// OP_STATE	4955	4956	0
// OP_ADDRESS	28	156	4957
// OP_STOREP_F	370	4957	0
// OP_CALL0	2631	0	0
// OP_DONE	0	0	0
void () player_axec3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4955 4956 0
    self.weaponframe = AS_MELEE;
    W_FireAxe();
};

// player_axec4
// function begins at statement 7520
// OP_STATE	4958	2612	0
// OP_ADDRESS	28	156	4959
// OP_STOREP_F	2258	4959	0
// OP_DONE	0	0	0
void () player_axec4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4958 2612 0
    self.weaponframe = WEAPON_SPIKES;
};

// player_axed1
// function begins at statement 7524
// OP_STATE	4960	4961	0
// OP_ADDRESS	28	156	4962
// OP_STOREP_F	313	4962	0
// OP_DONE	0	0	0
void () player_axed1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4960 4961 0
    self.weaponframe = TE_LIGHTNING1;
};

// player_axed2
// function begins at statement 7528
// OP_STATE	4963	4964	0
// OP_ADDRESS	28	156	4965
// OP_STOREP_F	314	4965	0
// OP_DONE	0	0	0
void () player_axed2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4963 4964 0
    self.weaponframe = TE_LIGHTNING2;
};

// player_axed3
// function begins at statement 7532
// OP_STATE	4966	4967	0
// OP_ADDRESS	28	156	4968
// OP_STOREP_F	315	4968	0
// OP_CALL0	2631	0	0
// OP_DONE	0	0	0
void () player_axed3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4966 4967 0
    self.weaponframe = TE_WIZSPIKE;
    W_FireAxe();
};

// player_axed4
// function begins at statement 7537
// OP_STATE	4969	2612	0
// OP_ADDRESS	28	156	4970
// OP_STOREP_F	2259	4970	0
// OP_DONE	0	0	0
void () player_axed4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4969 2612 0
    self.weaponframe = WEAPON_BIG;
};

// player_nail1
// function begins at statement 7541
// OP_STATE	4971	4972	0
// OP_ADDRESS	28	133	4973
// OP_LOAD_F	28	133	4974
// OP_BITOR	4974	334	4975
// OP_STOREP_F	4975	4973	0
// OP_LOAD_F	28	170	4976
// OP_NOT_F	4976	0	4977
// OP_IFNOT	4977	3	0
// OP_CALL0	2612	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	4978
// OP_LOAD_F	28	156	4979
// OP_ADD_F	4979	2256	4980
// OP_STOREP_F	4980	4978	0
// OP_LOAD_F	28	156	4981
// OP_EQ_F	4981	317	4982
// OP_IFNOT	4982	3	0
// OP_ADDRESS	28	156	4983
// OP_STOREP_F	2256	4983	0
// OP_CALL0	2614	0	0
// OP_STORE_V	2258	4	0
// OP_CALL1	3252	0	0
// OP_ADDRESS	28	373	4984
// OP_ADD_F	31	836	4985
// OP_STOREP_F	4985	4984	0
// OP_DONE	0	0	0
void () player_nail1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4971 4972 0
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + WEAPON_SHOTGUN;
    
    if(self.weaponframe == TE_LIGHTNING3)
    {
        self.weaponframe = WEAPON_SHOTGUN;
    }
    
    SuperDamageSound();
    W_FireSpikes(WEAPON_SPIKES);
    self.attack_finished = time + 0.200;
};

// player_nail2
// function begins at statement 7567
// OP_STATE	4986	3447	0
// OP_ADDRESS	28	133	4987
// OP_LOAD_F	28	133	4988
// OP_BITOR	4988	334	4989
// OP_STOREP_F	4989	4987	0
// OP_LOAD_F	28	170	4990
// OP_NOT_F	4990	0	4991
// OP_IFNOT	4991	3	0
// OP_CALL0	2612	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	4992
// OP_LOAD_F	28	156	4993
// OP_ADD_F	4993	2256	4994
// OP_STOREP_F	4994	4992	0
// OP_LOAD_F	28	156	4995
// OP_EQ_F	4995	317	4996
// OP_IFNOT	4996	3	0
// OP_ADDRESS	28	156	4997
// OP_STOREP_F	2256	4997	0
// OP_CALL0	2614	0	0
// OP_STORE_V	279	4	0
// OP_CALL1	3252	0	0
// OP_ADDRESS	28	373	4998
// OP_ADD_F	31	836	4999
// OP_STOREP_F	4999	4998	0
// OP_DONE	0	0	0
void () player_nail2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4986 3447 0
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + WEAPON_SHOTGUN;
    
    if(self.weaponframe == TE_LIGHTNING3)
    {
        self.weaponframe = WEAPON_SHOTGUN;
    }
    
    SuperDamageSound();
    W_FireSpikes(CONTENT_SLIME);
    self.attack_finished = time + 0.200;
};

// player_light1
// function begins at statement 7593
// OP_STATE	5000	5001	0
// OP_ADDRESS	28	133	5002
// OP_LOAD_F	28	133	5003
// OP_BITOR	5003	334	5004
// OP_STOREP_F	5004	5002	0
// OP_LOAD_F	28	170	5005
// OP_NOT_F	5005	0	5006
// OP_IFNOT	5006	3	0
// OP_CALL0	2612	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5007
// OP_LOAD_F	28	156	5008
// OP_ADD_F	5008	2256	5009
// OP_STOREP_F	5009	5007	0
// OP_LOAD_F	28	156	5010
// OP_EQ_F	5010	313	5011
// OP_IFNOT	5011	3	0
// OP_ADDRESS	28	156	5012
// OP_STOREP_F	2256	5012	0
// OP_CALL0	2614	0	0
// OP_CALL0	3060	0	0
// OP_ADDRESS	28	373	5013
// OP_ADD_F	31	836	5014
// OP_STOREP_F	5014	5013	0
// OP_DONE	0	0	0
void () player_light1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5000 5001 0
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + WEAPON_SHOTGUN;
    
    if(self.weaponframe == TE_LIGHTNING1)
    {
        self.weaponframe = WEAPON_SHOTGUN;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.200;
};

// player_light2
// function begins at statement 7618
// OP_STATE	5015	3448	0
// OP_ADDRESS	28	133	5016
// OP_LOAD_F	28	133	5017
// OP_BITOR	5017	334	5018
// OP_STOREP_F	5018	5016	0
// OP_LOAD_F	28	170	5019
// OP_NOT_F	5019	0	5020
// OP_IFNOT	5020	3	0
// OP_CALL0	2612	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5021
// OP_LOAD_F	28	156	5022
// OP_ADD_F	5022	2256	5023
// OP_STOREP_F	5023	5021	0
// OP_LOAD_F	28	156	5024
// OP_EQ_F	5024	313	5025
// OP_IFNOT	5025	3	0
// OP_ADDRESS	28	156	5026
// OP_STOREP_F	2256	5026	0
// OP_CALL0	2614	0	0
// OP_CALL0	3060	0	0
// OP_ADDRESS	28	373	5027
// OP_ADD_F	31	836	5028
// OP_STOREP_F	5028	5027	0
// OP_DONE	0	0	0
void () player_light2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5015 3448 0
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + WEAPON_SHOTGUN;
    
    if(self.weaponframe == TE_LIGHTNING1)
    {
        self.weaponframe = WEAPON_SHOTGUN;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.200;
};

// player_rocket1
// function begins at statement 7643
// OP_STATE	5029	5030	0
// OP_ADDRESS	28	156	5031
// OP_STOREP_F	2256	5031	0
// OP_ADDRESS	28	133	5032
// OP_LOAD_F	28	133	5033
// OP_BITOR	5033	334	5034
// OP_STOREP_F	5034	5032	0
// OP_DONE	0	0	0
void () player_rocket1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5029 5030 0
    self.weaponframe = WEAPON_SHOTGUN;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_rocket2
// function begins at statement 7651
// OP_STATE	5035	5036	0
// OP_ADDRESS	28	156	5037
// OP_STOREP_F	2257	5037	0
// OP_DONE	0	0	0
void () player_rocket2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5035 5036 0
    self.weaponframe = WEAPON_ROCKET;
};

// player_rocket3
// function begins at statement 7655
// OP_STATE	5038	5039	0
// OP_ADDRESS	28	156	5040
// OP_STOREP_F	370	5040	0
// OP_DONE	0	0	0
void () player_rocket3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5038 5039 0
    self.weaponframe = AS_MELEE;
};

// player_rocket4
// function begins at statement 7659
// OP_STATE	5041	5042	0
// OP_ADDRESS	28	156	5043
// OP_STOREP_F	2258	5043	0
// OP_DONE	0	0	0
void () player_rocket4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5041 5042 0
    self.weaponframe = WEAPON_SPIKES;
};

// player_rocket5
// function begins at statement 7663
// OP_STATE	5044	5045	0
// OP_ADDRESS	28	156	5046
// OP_STOREP_F	313	5046	0
// OP_DONE	0	0	0
void () player_rocket5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5044 5045 0
    self.weaponframe = TE_LIGHTNING1;
};

// player_rocket6
// function begins at statement 7667
// OP_STATE	5047	2612	0
// OP_ADDRESS	28	156	5048
// OP_STOREP_F	314	5048	0
// OP_DONE	0	0	0
void () player_rocket6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5047 2612 0
    self.weaponframe = TE_LIGHTNING2;
};

void (float num_bubbles) DeathBubbles;
// PainSound
// function begins at statement 7671
// OP_LOAD_F	28	152	5052
// OP_LT	5052	337	5053
// OP_IFNOT	5053	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	5054
// OP_EQ_S	5054	4665	5055
// OP_IFNOT	5055	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3818	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5056
// OP_EQ_F	5056	278	5057
// OP_LOAD_F	28	189	5058
// OP_EQ_F	5058	370	5059
// OP_AND	5057	5059	5060
// OP_IFNOT	5060	20	0
// OP_STORE_V	2256	4	0
// OP_CALL1	5049	0	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	5061
// OP_IFNOT	5061	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3813	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3814	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5062
// OP_EQ_F	5062	279	5063
// OP_IFNOT	5063	23	0
// OP_LOAD_F	28	189	5064
// OP_EQ_F	5064	370	5065
// OP_IFNOT	5065	3	0
// OP_STORE_V	2256	4	0
// OP_CALL1	5049	0	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	5066
// OP_IFNOT	5066	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3845	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3846	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5067
// OP_EQ_F	5067	280	5068
// OP_IFNOT	5068	18	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	5069
// OP_IFNOT	5069	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3845	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3846	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	5070
// OP_GT	5070	31	5071
// OP_IFNOT	5071	4	0
// OP_ADDRESS	28	387	5072
// OP_STOREP_F	337	5072	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	5073
// OP_ADD_F	31	1491	5074
// OP_STOREP_F	5074	5073	0
// OP_LOAD_F	28	387	5075
// OP_EQ_F	5075	2256	5076
// OP_IFNOT	5076	10	0
// OP_ADDRESS	28	387	5077
// OP_STOREP_F	337	5077	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3839	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	313	5078
// OP_ADD_F	5078	2256	5079
// OP_STORE_V	5079	4	0
// OP_CALL1	480	0	0
// OP_STORE_F	1	5051	0
// OP_ADDRESS	28	208	5080
// OP_STOREP_S	569	5080	0
// OP_EQ_F	5051	2256	5081
// OP_IFNOT	5081	4	0
// OP_ADDRESS	28	208	5082
// OP_STOREP_S	3828	5082	0
// OP_GOTO	23	0	0
// OP_EQ_F	5051	2257	5083
// OP_IFNOT	5083	4	0
// OP_ADDRESS	28	208	5084
// OP_STOREP_S	3829	5084	0
// OP_GOTO	18	0	0
// OP_EQ_F	5051	370	5085
// OP_IFNOT	5085	4	0
// OP_ADDRESS	28	208	5086
// OP_STOREP_S	3830	5086	0
// OP_GOTO	13	0	0
// OP_EQ_F	5051	2258	5087
// OP_IFNOT	5087	4	0
// OP_ADDRESS	28	208	5088
// OP_STOREP_S	3831	5088	0
// OP_GOTO	8	0	0
// OP_EQ_F	5051	313	5089
// OP_IFNOT	5089	4	0
// OP_ADDRESS	28	208	5090
// OP_STOREP_S	3832	5090	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	5091
// OP_STOREP_S	3833	5091	0
// OP_LOAD_S	28	208	5092
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5092	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PainSound =
{
    local float rs;
    
    if(self.health < MSG_BROADCAST)
    {
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", WEAPON_SHOTGUN, ATTN_NONE);
        return;
    }
    
    
    if((self.watertype == CONTENT_WATER) && (self.waterlevel == AS_MELEE))
    {
        DeathBubbles(WEAPON_SHOTGUN);
        if(random() > IMMEDIATE)
        {
            sound(self, CHAN_VOICE, "player/drown1.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        else        
        {
            sound(self, CHAN_VOICE, "player/drown2.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_SLIME)
    {
        
        if(self.waterlevel == AS_MELEE)
        {
            DeathBubbles(WEAPON_SHOTGUN);
        }
        
        if(random() > IMMEDIATE)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        else        
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_LAVA)
    {
        if(random() > IMMEDIATE)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        else        
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        self.axhitme = MSG_BROADCAST;
        return;
    }
    
    self.pain_finished = time + IMMEDIATE;
    
    if(self.axhitme == WEAPON_SHOTGUN)
    {
        self.axhitme = MSG_BROADCAST;
        sound(self, CHAN_VOICE, "player/axhit1.wav", WEAPON_SHOTGUN, ATTN_NORM);
        return;
    }
    
    rs = rint((random() * TE_LIGHTNING1) + WEAPON_SHOTGUN);
    self.noise = "";
    if(rs == WEAPON_SHOTGUN)
    {
        self.noise = "player/pain1.wav";
    }
    else if(rs == WEAPON_ROCKET)
    {
        self.noise = "player/pain2.wav";
    }
    else if(rs == AS_MELEE)
    {
        self.noise = "player/pain3.wav";
    }
    else if(rs == WEAPON_SPIKES)
    {
        self.noise = "player/pain4.wav";
    }
    else if(rs == TE_LIGHTNING1)
    {
        self.noise = "player/pain5.wav";
    }
    else    
    {
        self.noise = "player/pain6.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, WEAPON_SHOTGUN, ATTN_NORM);
    return;
};

// player_pain1
// function begins at statement 7820
// OP_STATE	3072	5094	0
// OP_CALL0	5050	0	0
// OP_ADDRESS	28	156	5095
// OP_STOREP_F	337	5095	0
// OP_DONE	0	0	0
void () player_pain1 =
{
    *** UNPROCESSED OPCODE OP_STATE 3072 5094 0
    PainSound();
    self.weaponframe = MSG_BROADCAST;
};

// player_pain2
// function begins at statement 7825
// OP_STATE	5096	5097	0
// OP_DONE	0	0	0
void () player_pain2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5096 5097 0
};

// player_pain3
// function begins at statement 7827
// OP_STATE	5098	5099	0
// OP_DONE	0	0	0
void () player_pain3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5098 5099 0
};

// player_pain4
// function begins at statement 7829
// OP_STATE	5100	5101	0
// OP_DONE	0	0	0
void () player_pain4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5100 5101 0
};

// player_pain5
// function begins at statement 7831
// OP_STATE	5102	5103	0
// OP_DONE	0	0	0
void () player_pain5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5102 5103 0
};

// player_pain6
// function begins at statement 7833
// OP_STATE	1733	2612	0
// OP_DONE	0	0	0
void () player_pain6 =
{
    *** UNPROCESSED OPCODE OP_STATE 1733 2612 0
};

// player_axpain1
// function begins at statement 7835
// OP_STATE	5105	5106	0
// OP_CALL0	5050	0	0
// OP_ADDRESS	28	156	5107
// OP_STOREP_F	337	5107	0
// OP_DONE	0	0	0
void () player_axpain1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 5106 0
    PainSound();
    self.weaponframe = MSG_BROADCAST;
};

// player_axpain2
// function begins at statement 7840
// OP_STATE	304	5108	0
// OP_DONE	0	0	0
void () player_axpain2 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 5108 0
};

// player_axpain3
// function begins at statement 7842
// OP_STATE	305	5109	0
// OP_DONE	0	0	0
void () player_axpain3 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 5109 0
};

// player_axpain4
// function begins at statement 7844
// OP_STATE	306	5110	0
// OP_DONE	0	0	0
void () player_axpain4 =
{
    *** UNPROCESSED OPCODE OP_STATE 306 5110 0
};

// player_axpain5
// function begins at statement 7846
// OP_STATE	307	5111	0
// OP_DONE	0	0	0
void () player_axpain5 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 5111 0
};

// player_axpain6
// function begins at statement 7848
// OP_STATE	5112	2612	0
// OP_DONE	0	0	0
void () player_axpain6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 2612 0
};

// player_pain
// function begins at statement 7850
// OP_LOAD_F	28	156	5113
// OP_IFNOT	5113	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	376	5114
// OP_GT	5114	31	5115
// OP_IFNOT	5115	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5116
// OP_EQ_F	5116	253	5117
// OP_IFNOT	5117	3	0
// OP_CALL0	5104	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5093	0	0
// OP_DONE	0	0	0
void () player_pain =
{
    
    if(self.weaponframe)
    {
        return;
    }
    
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        player_axpain1();
    }
    else    
    {
        player_pain1();
    }
    
};

void () player_diea1;
void () player_dieb1;
void () player_diec1;
void () player_died1;
void () player_diee1;
void () player_die_ax1;
// DeathBubblesSpawn
// function begins at statement 7864
// OP_LOAD_ENT	28	201	5126
// OP_LOAD_F	5126	189	5127
// OP_NE_F	5127	370	5128
// OP_LOAD_ENT	28	201	5129
// OP_LOAD_F	5129	152	5130
// OP_GT	5130	337	5131
// OP_AND	5128	5131	5132
// OP_IFNOT	5132	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5125	0
// OP_STORE_V	5125	4	0
// OP_STORE_V	3855	7	0
// OP_CALL2	449	0	0
// OP_LOAD_ENT	28	201	5133
// OP_LOAD_V	5133	105	5134
// OP_ADD_V	5134	2551	5137
// OP_STORE_V	5125	4	0
// OP_STORE_V	5137	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	5125	103	5140
// OP_STOREP_F	233	5140	0
// OP_ADDRESS	5125	104	5141
// OP_STOREP_F	237	5141	0
// OP_ADDRESS	5125	113	5142
// OP_STOREP_V	5145	5142	0
// OP_ADDRESS	5125	150	5148
// OP_ADD_F	31	1491	5149
// OP_STOREP_F	5149	5148	0
// OP_ADDRESS	5125	148	5150
// OP_STOREP_FNC	4860	5150	0
// OP_ADDRESS	5125	129	5151
// OP_STOREP_S	5152	5151	0
// OP_ADDRESS	5125	131	5153
// OP_STOREP_F	337	5153	0
// OP_ADDRESS	5125	421	5154
// OP_STOREP_F	337	5154	0
// OP_STORE_V	5125	4	0
// OP_STORE_V	1100	7	0
// OP_STORE_V	1103	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	150	5155
// OP_ADD_F	31	2752	5156
// OP_STOREP_F	5156	5155	0
// OP_ADDRESS	28	148	5157
// OP_STOREP_FNC	5124	5157	0
// OP_ADDRESS	28	391	5158
// OP_LOAD_F	28	391	5159
// OP_ADD_F	5159	2256	5160
// OP_STOREP_F	5160	5158	0
// OP_LOAD_F	28	391	5161
// OP_LOAD_F	28	392	5162
// OP_GE	5161	5162	5163
// OP_IFNOT	5163	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () DeathBubblesSpawn =
{
    local entity bubble;
    
    if((self.owner.waterlevel != AS_MELEE) && (self.owner.health > MSG_BROADCAST))
    {
        remove(self);
        return;
    }
    
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.owner.origin + '0.000 0.000 24.000');
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0.000 0.000 15.000';
    bubble.nextthink = time + IMMEDIATE;
    bubble.think = bubble_bob;
    bubble.classname = "bubble";
    bubble.frame = MSG_BROADCAST;
    bubble.cnt = MSG_BROADCAST;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = time + 0.010;
    self.think = DeathBubblesSpawn;
    self.air_finished = self.air_finished + WEAPON_SHOTGUN;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};

// DeathBubbles
// function begins at statement 7923
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5165	0
// OP_LOAD_V	28	105	5166
// OP_STORE_V	5165	4	0
// OP_STORE_V	5166	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	5165	103	5169
// OP_STOREP_F	227	5169	0
// OP_ADDRESS	5165	104	5170
// OP_STOREP_F	237	5170	0
// OP_ADDRESS	5165	150	5171
// OP_ADD_F	31	2752	5172
// OP_STOREP_F	5172	5171	0
// OP_ADDRESS	5165	148	5173
// OP_STOREP_FNC	5124	5173	0
// OP_ADDRESS	5165	391	5174
// OP_STOREP_F	337	5174	0
// OP_ADDRESS	5165	201	5175
// OP_STOREP_ENT	28	5175	0
// OP_ADDRESS	5165	392	5176
// OP_STOREP_F	5164	5176	0
// OP_DONE	0	0	0
void (float num_bubbles) DeathBubbles =
{
    local entity bubble_spawner;
    bubble_spawner = spawn();
    setorigin(bubble_spawner, self.origin);
    bubble_spawner.movetype = MOVETYPE_NONE;
    bubble_spawner.solid = SOLID_NOT;
    bubble_spawner.nextthink = time + 0.010;
    bubble_spawner.think = DeathBubblesSpawn;
    bubble_spawner.air_finished = MSG_BROADCAST;
    bubble_spawner.owner = self;
    bubble_spawner.bubble_count = num_bubbles;
};

// DeathSound
// function begins at statement 7945
// OP_LOAD_F	28	189	5179
// OP_EQ_F	5179	370	5180
// OP_IFNOT	5180	10	0
// OP_STORE_V	894	4	0
// OP_CALL1	5049	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3817	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	2258	5181
// OP_ADD_F	5181	2256	5182
// OP_STORE_V	5182	4	0
// OP_CALL1	480	0	0
// OP_STORE_F	1	5178	0
// OP_EQ_F	5178	2256	5183
// OP_IFNOT	5183	3	0
// OP_ADDRESS	28	208	5184
// OP_STOREP_S	3834	5184	0
// OP_EQ_F	5178	2257	5185
// OP_IFNOT	5185	3	0
// OP_ADDRESS	28	208	5186
// OP_STOREP_S	3835	5186	0
// OP_EQ_F	5178	370	5187
// OP_IFNOT	5187	3	0
// OP_ADDRESS	28	208	5188
// OP_STOREP_S	3836	5188	0
// OP_EQ_F	5178	2258	5189
// OP_IFNOT	5189	3	0
// OP_ADDRESS	28	208	5190
// OP_STOREP_S	3837	5190	0
// OP_EQ_F	5178	313	5191
// OP_IFNOT	5191	3	0
// OP_ADDRESS	28	208	5192
// OP_STOREP_S	3838	5192	0
// OP_LOAD_S	28	208	5193
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5193	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () DeathSound =
{
    local float rs;
    
    if(self.waterlevel == AS_MELEE)
    {
        DeathBubbles(20.000);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", WEAPON_SHOTGUN, ATTN_NONE);
        return;
    }
    
    rs = rint((random() * WEAPON_SPIKES) + WEAPON_SHOTGUN);
    
    if(rs == WEAPON_SHOTGUN)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(rs == WEAPON_ROCKET)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(rs == AS_MELEE)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(rs == WEAPON_SPIKES)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(rs == TE_LIGHTNING1)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, WEAPON_SHOTGUN, ATTN_NONE);
    return;
};

// PlayerDead
// function begins at statement 7992
// OP_ADDRESS	28	150	5195
// OP_STOREP_F	276	5195	0
// OP_ADDRESS	28	165	5196
// OP_STOREP_F	248	5196	0
// OP_DONE	0	0	0
void () PlayerDead =
{
    self.nextthink = CONTENT_EMPTY;
    self.deadflag = DEAD_DEAD;
};

// VelocityForDamage
// function begins at statement 7997
// OP_CALL0	2628	0	0
// OP_MUL_F	1884	1	5202
// OP_STORE_F	5202	5199	0
// OP_CALL0	2628	0	0
// OP_MUL_F	1884	1	5203
// OP_STORE_F	5203	5200	0
// OP_CALL0	452	0	0
// OP_MUL_F	1884	1	5204
// OP_ADD_F	1965	5204	5205
// OP_STORE_F	5205	5201	0
// OP_GT	5198	4457	5206
// OP_IFNOT	5206	4	0
// OP_MUL_VF	5199	2851	5207
// OP_STORE_V	5207	5199	0
// OP_GOTO	8	0	0
// OP_GT	5198	5210	5211
// OP_IFNOT	5211	4	0
// OP_MUL_VF	5199	2257	5212
// OP_STORE_V	5212	5199	0
// OP_GOTO	3	0	0
// OP_MUL_VF	5199	318	5215
// OP_STORE_V	5215	5199	0
// OP_RETURN	5199	0	0
// OP_DONE	0	0	0
vector (float dm) VelocityForDamage =
{
    local vector v;
    crandom();
    v = 100.000 * (rint((random() * WEAPON_SPIKES) + WEAPON_SHOTGUN));
    crandom();
    v_y = 100.000 * (rint((random() * WEAPON_SPIKES) + WEAPON_SHOTGUN));
    random();
    v_z = 200.000 + (100.000 * (rint((random() * WEAPON_SPIKES) + WEAPON_SHOTGUN)));
    if(dm > -50.000)
    {
        v = v * 0.700;
    }
    else if(dm > -200.000)
    {
        v = v * WEAPON_ROCKET;
    }
    else    
    {
        v = v * TE_LAVASPLASH;
    }
    
    return v;
};

// ThrowGib
// function begins at statement 8021
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5221	0
// OP_ADDRESS	5221	105	5222
// OP_LOAD_V	28	105	5225
// OP_STOREP_V	5225	5222	0
// OP_STORE_V	5221	4	0
// OP_STORE_V	5219	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	5221	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	5221	113	5228
// OP_STORE_V	5220	4	0
// OP_CALL1	5197	0	0
// OP_STOREP_V	1	5228	0
// OP_ADDRESS	5221	103	5231
// OP_STOREP_F	235	5231	0
// OP_ADDRESS	5221	104	5232
// OP_STOREP_F	237	5232	0
// OP_ADDRESS	5221	122	5233
// OP_CALL0	452	0	0
// OP_MUL_F	1	1029	5234
// OP_STOREP_F	5234	5233	0
// OP_ADDRESS	5221	123	5235
// OP_CALL0	452	0	0
// OP_MUL_F	1	1029	5236
// OP_STOREP_F	5236	5235	0
// OP_ADDRESS	5221	124	5237
// OP_CALL0	452	0	0
// OP_MUL_F	1	1029	5238
// OP_STOREP_F	5238	5237	0
// OP_ADDRESS	5221	148	5239
// OP_STOREP_FNC	519	5239	0
// OP_ADDRESS	5221	102	5240
// OP_STOREP_F	31	5240	0
// OP_ADDRESS	5221	150	5241
// OP_ADD_F	31	318	5242
// OP_CALL0	452	0	0
// OP_MUL_F	1	318	5243
// OP_ADD_F	5242	5243	5244
// OP_STOREP_F	5244	5241	0
// OP_ADDRESS	5221	131	5245
// OP_STOREP_F	337	5245	0
// OP_ADDRESS	5221	182	5246
// OP_STOREP_F	337	5246	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowGib =
{
    local entity new;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, VEC_ORIGIN, VEC_ORIGIN);
    new.velocity = VelocityForDamage(dm);
    new.movetype = MOVETYPE_BOUNCE;
    new.solid = SOLID_NOT;
    new.avelocity = random() * 600.000;
    new.avelocity_y = random() * 600.000;
    new.avelocity_z = random() * 600.000;
    new.think = SUB_Remove;
    new.ltime = time;
    new.nextthink = (time + TE_LAVASPLASH) + (random() * TE_LAVASPLASH);
    new.frame = MSG_BROADCAST;
    new.flags = MSG_BROADCAST;
};

// ThrowHead
// function begins at statement 8068
// OP_STORE_V	28	4	0
// OP_STORE_V	5248	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	131	5250
// OP_STOREP_F	337	5250	0
// OP_ADDRESS	28	150	5251
// OP_STOREP_F	276	5251	0
// OP_ADDRESS	28	103	5252
// OP_STOREP_F	235	5252	0
// OP_ADDRESS	28	163	5253
// OP_STOREP_F	250	5253	0
// OP_ADDRESS	28	104	5254
// OP_STOREP_F	237	5254	0
// OP_ADDRESS	28	166	5255
// OP_STOREP_V	5258	5255	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	113	5261
// OP_STORE_V	5249	4	0
// OP_CALL1	5197	0	0
// OP_STOREP_V	1	5261	0
// OP_ADDRESS	28	108	5264
// OP_LOAD_F	28	108	5265
// OP_SUB_F	5265	4437	5266
// OP_STOREP_F	5266	5264	0
// OP_ADDRESS	28	182	5267
// OP_LOAD_F	28	182	5268
// OP_LOAD_F	28	182	5269
// OP_BITAND	5269	223	5270
// OP_SUB_F	5268	5270	5271
// OP_STOREP_F	5271	5267	0
// OP_ADDRESS	28	121	5272
// OP_CALL0	2628	0	0
// OP_MUL_FV	1	5275	5278
// OP_STOREP_V	5278	5272	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead =
{
    setmodel(self, gibname);
    self.frame = MSG_BROADCAST;
    self.nextthink = CONTENT_EMPTY;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0.000 0.000 8.000';
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    self.velocity = VelocityForDamage(dm);
    self.origin_z = self.origin_z - 24.000;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0.000 600.000 0.000';
};

// GibPlayer
// function begins at statement 8106
// OP_LOAD_F	28	152	5282
// OP_STORE_V	3851	4	0
// OP_STORE_V	5282	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	5283
// OP_STORE_V	3852	4	0
// OP_STORE_V	5283	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	5284
// OP_STORE_V	3853	4	0
// OP_STORE_V	5284	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	5285
// OP_STORE_V	3854	4	0
// OP_STORE_V	5285	7	0
// OP_CALL2	5218	0	0
// OP_ADDRESS	28	165	5286
// OP_STOREP_F	248	5286	0
// OP_LOAD_S	347	129	5287
// OP_EQ_S	5287	4665	5288
// OP_IFNOT	5288	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3818	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	5289
// OP_EQ_S	5289	4677	5290
// OP_IFNOT	5290	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3818	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_LT	1	1491	5291
// OP_IFNOT	5291	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3825	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () GibPlayer =
{
    ThrowHead("progs/h_player.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
    self.deadflag = DEAD_DEAD;
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", WEAPON_SHOTGUN, ATTN_NONE);
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath2")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", WEAPON_SHOTGUN, ATTN_NONE);
        return;
    }
    
    if(random() < IMMEDIATE)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", WEAPON_SHOTGUN, ATTN_NONE);
    }
    else    
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", WEAPON_SHOTGUN, ATTN_NONE);
    }
    
};

// PlayerDie
// function begins at statement 8161
// OP_ADDRESS	28	162	5293
// OP_LOAD_F	28	162	5294
// OP_LOAD_F	28	162	5295
// OP_BITOR	272	273	5296
// OP_BITOR	5296	274	5297
// OP_BITOR	5297	275	5298
// OP_BITAND	5295	5298	5299
// OP_SUB_F	5294	5299	5300
// OP_STOREP_F	5300	5293	0
// OP_ADDRESS	28	376	5301
// OP_STOREP_F	337	5301	0
// OP_ADDRESS	28	375	5302
// OP_STOREP_F	337	5302	0
// OP_ADDRESS	28	377	5303
// OP_STOREP_F	337	5303	0
// OP_ADDRESS	28	378	5304
// OP_STOREP_F	337	5304	0
// OP_ADDRESS	28	133	5305
// OP_STOREP_F	337	5305	0
// OP_ADDRESS	28	93	5306
// OP_STOREP_F	3941	5306	0
// OP_OR	35	36	5307
// OP_IFNOT	5307	2	0
// OP_CALL0	2535	0	0
// OP_ADDRESS	28	155	5308
// OP_STOREP_S	569	5308	0
// OP_ADDRESS	28	166	5309
// OP_STOREP_V	5312	5309	0
// OP_ADDRESS	28	165	5315
// OP_STOREP_F	247	5315	0
// OP_ADDRESS	28	104	5316
// OP_STOREP_F	237	5316	0
// OP_ADDRESS	28	182	5317
// OP_LOAD_F	28	182	5318
// OP_LOAD_F	28	182	5319
// OP_BITAND	5319	223	5320
// OP_SUB_F	5318	5320	5321
// OP_STOREP_F	5321	5317	0
// OP_ADDRESS	28	103	5322
// OP_STOREP_F	231	5322	0
// OP_LOAD_F	28	116	5323
// OP_LT	5323	318	5324
// OP_IFNOT	5324	7	0
// OP_ADDRESS	28	116	5325
// OP_LOAD_F	28	116	5326
// OP_CALL0	452	0	0
// OP_MUL_F	1	2596	5327
// OP_ADD_F	5326	5327	5328
// OP_STOREP_F	5328	5325	0
// OP_LOAD_F	28	152	5329
// OP_LT	5329	4741	5330
// OP_IFNOT	5330	3	0
// OP_CALL0	5281	0	0
// OP_RETURN	0	0	0
// OP_CALL0	5177	0	0
// OP_ADDRESS	28	118	5331
// OP_STOREP_F	337	5331	0
// OP_ADDRESS	28	120	5332
// OP_STOREP_F	337	5332	0
// OP_LOAD_F	28	154	5333
// OP_EQ_F	5333	253	5334
// OP_IFNOT	5334	3	0
// OP_CALL0	5123	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	5335	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	5292	0
// OP_NOT_F	5292	0	5336
// OP_IFNOT	5336	7	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	314	5337
// OP_STORE_V	5337	4	0
// OP_CALL1	481	0	0
// OP_ADD_F	2256	1	5338
// OP_STORE_F	5338	5292	0
// OP_EQ_F	5292	2256	5339
// OP_IFNOT	5339	3	0
// OP_CALL0	5118	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	5292	2257	5340
// OP_IFNOT	5340	3	0
// OP_CALL0	5119	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	5292	370	5341
// OP_IFNOT	5341	3	0
// OP_CALL0	5120	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	5292	2258	5342
// OP_IFNOT	5342	3	0
// OP_CALL0	5121	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5122	0	0
// OP_DONE	0	0	0
void () PlayerDie =
{
    local float i;
    self.items = self.items - (self.items & (((IT_INVISIBILITY | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD));
    self.invisible_finished = MSG_BROADCAST;
    self.invincible_finished = MSG_BROADCAST;
    self.super_damage_finished = MSG_BROADCAST;
    self.radsuit_finished = MSG_BROADCAST;
    self.effects = MSG_BROADCAST;
    self.modelindex = modelindex_player;
    
    if(deathmatch || coop)
    {
        DropBackpack();
    }
    
    self.weaponmodel = "";
    self.view_ofs = '0.000 0.000 -8.000';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < TE_LAVASPLASH)
    {
        self.velocity_z = self.velocity_z + (random() * 300.000);
    }
    
    
    if(self.health < -40.000)
    {
        GibPlayer();
        return;
    }
    
    DeathSound();
    self.angles = MSG_BROADCAST;
    self.angles_z = MSG_BROADCAST;
    
    if(self.weapon == IT_AXE)
    {
        player_die_ax1();
        return;
    }
    
    i = cvar("temp1");
    
    if(!i)
    {
        floor(random() * TE_LIGHTNING2);
        i = WEAPON_SHOTGUN + random();
    }
    
    if(i == WEAPON_SHOTGUN)
    {
        player_diea1();
    }
    else if(i == WEAPON_ROCKET)
    {
        player_dieb1();
    }
    else if(i == AS_MELEE)
    {
        player_diec1();
    }
    else if(i == WEAPON_SPIKES)
    {
        player_died1();
    }
    else    
    {
        player_diee1();
    }
    
};

// set_suicide_frame
// function begins at statement 8254
// OP_LOAD_S	28	130	5343
// OP_NE_S	5343	3849	5344
// OP_IFNOT	5344	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	131	5345
// OP_STOREP_F	912	5345	0
// OP_ADDRESS	28	104	5346
// OP_STOREP_F	237	5346	0
// OP_ADDRESS	28	103	5347
// OP_STOREP_F	231	5347	0
// OP_ADDRESS	28	165	5348
// OP_STOREP_F	248	5348	0
// OP_ADDRESS	28	150	5349
// OP_STOREP_F	276	5349	0
// OP_DONE	0	0	0
void () set_suicide_frame =
{
    
    if(self.model != "progs/player.mdl")
    {
        return;
    }
    
    self.frame = 60.000;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_TOSS;
    self.deadflag = DEAD_DEAD;
    self.nextthink = CONTENT_EMPTY;
};

// player_diea1
// function begins at statement 8269
// OP_STATE	2227	5350	0
// OP_DONE	0	0	0
void () player_diea1 =
{
    *** UNPROCESSED OPCODE OP_STATE 2227 5350 0
};

// player_diea2
// function begins at statement 8271
// OP_STATE	5351	5352	0
// OP_DONE	0	0	0
void () player_diea2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5351 5352 0
};

// player_diea3
// function begins at statement 8273
// OP_STATE	5353	5354	0
// OP_DONE	0	0	0
void () player_diea3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5353 5354 0
};

// player_diea4
// function begins at statement 8275
// OP_STATE	5355	5356	0
// OP_DONE	0	0	0
void () player_diea4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5355 5356 0
};

// player_diea5
// function begins at statement 8277
// OP_STATE	5357	5358	0
// OP_DONE	0	0	0
void () player_diea5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5357 5358 0
};

// player_diea6
// function begins at statement 8279
// OP_STATE	5359	5360	0
// OP_DONE	0	0	0
void () player_diea6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5359 5360 0
};

// player_diea7
// function begins at statement 8281
// OP_STATE	5361	5362	0
// OP_DONE	0	0	0
void () player_diea7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5361 5362 0
};

// player_diea8
// function begins at statement 8283
// OP_STATE	5363	5364	0
// OP_DONE	0	0	0
void () player_diea8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5363 5364 0
};

// player_diea9
// function begins at statement 8285
// OP_STATE	5365	5366	0
// OP_DONE	0	0	0
void () player_diea9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5365 5366 0
};

// player_diea10
// function begins at statement 8287
// OP_STATE	5367	5368	0
// OP_DONE	0	0	0
void () player_diea10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5367 5368 0
};

// player_diea11
// function begins at statement 8289
// OP_STATE	912	5368	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_diea11 =
{
    *** UNPROCESSED OPCODE OP_STATE 912 5368 0
    PlayerDead();
};

// player_dieb1
// function begins at statement 8292
// OP_STATE	5369	5370	0
// OP_DONE	0	0	0
void () player_dieb1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5369 5370 0
};

// player_dieb2
// function begins at statement 8294
// OP_STATE	5371	5372	0
// OP_DONE	0	0	0
void () player_dieb2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5371 5372 0
};

// player_dieb3
// function begins at statement 8296
// OP_STATE	3872	5373	0
// OP_DONE	0	0	0
void () player_dieb3 =
{
    *** UNPROCESSED OPCODE OP_STATE 3872 5373 0
};

// player_dieb4
// function begins at statement 8298
// OP_STATE	260	5374	0
// OP_DONE	0	0	0
void () player_dieb4 =
{
    *** UNPROCESSED OPCODE OP_STATE 260 5374 0
};

// player_dieb5
// function begins at statement 8300
// OP_STATE	5375	5376	0
// OP_DONE	0	0	0
void () player_dieb5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5375 5376 0
};

// player_dieb6
// function begins at statement 8302
// OP_STATE	5377	5378	0
// OP_DONE	0	0	0
void () player_dieb6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5377 5378 0
};

// player_dieb7
// function begins at statement 8304
// OP_STATE	5379	5380	0
// OP_DONE	0	0	0
void () player_dieb7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5379 5380 0
};

// player_dieb8
// function begins at statement 8306
// OP_STATE	5381	5382	0
// OP_DONE	0	0	0
void () player_dieb8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5381 5382 0
};

// player_dieb9
// function begins at statement 8308
// OP_STATE	5383	5382	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_dieb9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5383 5382 0
    PlayerDead();
};

// player_diec1
// function begins at statement 8311
// OP_STATE	5384	5385	0
// OP_DONE	0	0	0
void () player_diec1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5384 5385 0
};

// player_diec2
// function begins at statement 8313
// OP_STATE	5386	5387	0
// OP_DONE	0	0	0
void () player_diec2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5386 5387 0
};

// player_diec3
// function begins at statement 8315
// OP_STATE	5388	5389	0
// OP_DONE	0	0	0
void () player_diec3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5388 5389 0
};

// player_diec4
// function begins at statement 8317
// OP_STATE	2739	5390	0
// OP_DONE	0	0	0
void () player_diec4 =
{
    *** UNPROCESSED OPCODE OP_STATE 2739 5390 0
};

// player_diec5
// function begins at statement 8319
// OP_STATE	5391	5392	0
// OP_DONE	0	0	0
void () player_diec5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5391 5392 0
};

// player_diec6
// function begins at statement 8321
// OP_STATE	5393	5394	0
// OP_DONE	0	0	0
void () player_diec6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5393 5394 0
};

// player_diec7
// function begins at statement 8323
// OP_STATE	5395	5396	0
// OP_DONE	0	0	0
void () player_diec7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5395 5396 0
};

// player_diec8
// function begins at statement 8325
// OP_STATE	5397	5398	0
// OP_DONE	0	0	0
void () player_diec8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5397 5398 0
};

// player_diec9
// function begins at statement 8327
// OP_STATE	5399	5400	0
// OP_DONE	0	0	0
void () player_diec9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5399 5400 0
};

// player_diec10
// function begins at statement 8329
// OP_STATE	5401	5402	0
// OP_DONE	0	0	0
void () player_diec10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5401 5402 0
};

// player_diec11
// function begins at statement 8331
// OP_STATE	788	5403	0
// OP_DONE	0	0	0
void () player_diec11 =
{
    *** UNPROCESSED OPCODE OP_STATE 788 5403 0
};

// player_diec12
// function begins at statement 8333
// OP_STATE	5404	5405	0
// OP_DONE	0	0	0
void () player_diec12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5404 5405 0
};

// player_diec13
// function begins at statement 8335
// OP_STATE	5406	5407	0
// OP_DONE	0	0	0
void () player_diec13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5406 5407 0
};

// player_diec14
// function begins at statement 8337
// OP_STATE	5408	5409	0
// OP_DONE	0	0	0
void () player_diec14 =
{
    *** UNPROCESSED OPCODE OP_STATE 5408 5409 0
};

// player_diec15
// function begins at statement 8339
// OP_STATE	5410	5409	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_diec15 =
{
    *** UNPROCESSED OPCODE OP_STATE 5410 5409 0
    PlayerDead();
};

// player_died1
// function begins at statement 8342
// OP_STATE	5411	5412	0
// OP_DONE	0	0	0
void () player_died1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5411 5412 0
};

// player_died2
// function begins at statement 8344
// OP_STATE	5413	5414	0
// OP_DONE	0	0	0
void () player_died2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5413 5414 0
};

// player_died3
// function begins at statement 8346
// OP_STATE	5415	5416	0
// OP_DONE	0	0	0
void () player_died3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5415 5416 0
};

// player_died4
// function begins at statement 8348
// OP_STATE	5417	5418	0
// OP_DONE	0	0	0
void () player_died4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5417 5418 0
};

// player_died5
// function begins at statement 8350
// OP_STATE	5419	5420	0
// OP_DONE	0	0	0
void () player_died5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5419 5420 0
};

// player_died6
// function begins at statement 8352
// OP_STATE	1423	5421	0
// OP_DONE	0	0	0
void () player_died6 =
{
    *** UNPROCESSED OPCODE OP_STATE 1423 5421 0
};

// player_died7
// function begins at statement 8354
// OP_STATE	5422	5423	0
// OP_DONE	0	0	0
void () player_died7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5422 5423 0
};

// player_died8
// function begins at statement 8356
// OP_STATE	5424	5425	0
// OP_DONE	0	0	0
void () player_died8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5424 5425 0
};

// player_died9
// function begins at statement 8358
// OP_STATE	5426	5425	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_died9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5426 5425 0
    PlayerDead();
};

// player_diee1
// function begins at statement 8361
// OP_STATE	5427	5428	0
// OP_DONE	0	0	0
void () player_diee1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5427 5428 0
};

// player_diee2
// function begins at statement 8363
// OP_STATE	5429	5430	0
// OP_DONE	0	0	0
void () player_diee2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5429 5430 0
};

// player_diee3
// function begins at statement 8365
// OP_STATE	5431	5432	0
// OP_DONE	0	0	0
void () player_diee3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5431 5432 0
};

// player_diee4
// function begins at statement 8367
// OP_STATE	5433	5434	0
// OP_DONE	0	0	0
void () player_diee4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5433 5434 0
};

// player_diee5
// function begins at statement 8369
// OP_STATE	5435	5436	0
// OP_DONE	0	0	0
void () player_diee5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5435 5436 0
};

// player_diee6
// function begins at statement 8371
// OP_STATE	5437	5438	0
// OP_DONE	0	0	0
void () player_diee6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5437 5438 0
};

// player_diee7
// function begins at statement 8373
// OP_STATE	1884	5439	0
// OP_DONE	0	0	0
void () player_diee7 =
{
    *** UNPROCESSED OPCODE OP_STATE 1884 5439 0
};

// player_diee8
// function begins at statement 8375
// OP_STATE	5440	5441	0
// OP_DONE	0	0	0
void () player_diee8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5440 5441 0
};

// player_diee9
// function begins at statement 8377
// OP_STATE	5442	5441	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_diee9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5442 5441 0
    PlayerDead();
};

// player_die_ax1
// function begins at statement 8380
// OP_STATE	5443	5444	0
// OP_DONE	0	0	0
void () player_die_ax1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5443 5444 0
};

// player_die_ax2
// function begins at statement 8382
// OP_STATE	5445	5446	0
// OP_DONE	0	0	0
void () player_die_ax2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5445 5446 0
};

// player_die_ax3
// function begins at statement 8384
// OP_STATE	5447	5448	0
// OP_DONE	0	0	0
void () player_die_ax3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5447 5448 0
};

// player_die_ax4
// function begins at statement 8386
// OP_STATE	5449	5450	0
// OP_DONE	0	0	0
void () player_die_ax4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5449 5450 0
};

// player_die_ax5
// function begins at statement 8388
// OP_STATE	1390	5451	0
// OP_DONE	0	0	0
void () player_die_ax5 =
{
    *** UNPROCESSED OPCODE OP_STATE 1390 5451 0
};

// player_die_ax6
// function begins at statement 8390
// OP_STATE	5452	5453	0
// OP_DONE	0	0	0
void () player_die_ax6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5452 5453 0
};

// player_die_ax7
// function begins at statement 8392
// OP_STATE	5454	5455	0
// OP_DONE	0	0	0
void () player_die_ax7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5454 5455 0
};

// player_die_ax8
// function begins at statement 8394
// OP_STATE	5456	5457	0
// OP_DONE	0	0	0
void () player_die_ax8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5456 5457 0
};

// player_die_ax9
// function begins at statement 8396
// OP_STATE	5458	5457	0
// OP_CALL0	5194	0	0
// OP_DONE	0	0	0
void () player_die_ax9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5458 5457 0
    PlayerDead();
};

