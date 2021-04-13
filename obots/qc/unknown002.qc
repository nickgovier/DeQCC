
// func000462
// function begins at statement 14136, parm_start=9803
// OP_EQ_S	9803	6686	9805
// OP_BITAND	821	777	9806
// OP_AND	9805	9806	9807
// OP_IFNOT	9807	6	0
// OP_ADDRESS	28	574	9808
// OP_STOREP_F	213	9808	0
// OP_ADDRESS	28	573	9809
// OP_STOREP_F	527	9809	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9803	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	131	9810
// OP_STOREP_F	213	9810	0
// OP_ADDRESS	28	150	9811
// OP_STOREP_F	276	9811	0
// OP_ADDRESS	28	103	9812
// OP_STOREP_F	235	9812	0
// OP_ADDRESS	28	163	9813
// OP_STOREP_F	250	9813	0
// OP_ADDRESS	28	104	9814
// OP_STOREP_F	237	9814	0
// OP_ADDRESS	28	166	9815
// OP_STOREP_V	9818	9815	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	113	9821
// OP_STORE_V	9804	4	0
// OP_CALL1	9748	0	0
// OP_STOREP_V	1	9821	0
// OP_ADDRESS	28	108	9824
// OP_LOAD_F	28	108	9825
// OP_SUB_F	9825	736	9826
// OP_STOREP_F	9826	9824	0
// OP_ADDRESS	28	182	9827
// OP_LOAD_F	28	182	9828
// OP_LOAD_F	28	182	9829
// OP_BITAND	9829	223	9830
// OP_SUB_F	9828	9830	9831
// OP_STOREP_F	9831	9827	0
// OP_ADDRESS	28	121	9832
// OP_CALL0	5370	0	0
// OP_MUL_FV	1	9835	9838
// OP_STOREP_V	9838	9832	0
// OP_DONE	0	0	0
void (string globaldef003190, float globaldef003191) func000462 = 
{
    if((globaldef003190 == "progs/h_player.mdl") && (globaldef000804 & globaldef000760))
    {
        self.field000251 = FALSE;
        self.field000250 = globaldef000510;
    }
    else
    {
        setmodel(self, globaldef003190);
    }
    
    self.frame = FALSE;
    self.nextthink = CONTENT_EMPTY;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0 0 8';
    setsize(self, '-16 -16 0', '16 16 56');
    self.velocity = func000459(globaldef003191);
    self.origin_z = self.origin_z - OBOT_MAXBOTS;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0 600 0';
};


// func000463
// function begins at statement 14183, parm_start=9842
// OP_STORE_V	6686	4	0
// OP_LOAD_F	28	152	9842
// OP_STORE_V	9842	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	9843
// OP_STORE_V	9843	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	9844
// OP_STORE_V	9844	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	9845
// OP_STORE_V	9845	7	0
// OP_CALL2	9771	0	0
// OP_ADDRESS	28	165	9846
// OP_STOREP_F	248	9846	0
// OP_LOAD_S	352	129	9847
// OP_EQ_S	9847	9182	9848
// OP_IFNOT	9848	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	352	129	9849
// OP_EQ_S	9849	9197	9850
// OP_IFNOT	9850	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	9851
// OP_IFNOT	9851	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6660	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000463 = 
{
    func000462("progs/h_player.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
    self.deadflag = DEAD_DEAD;
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath2")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    if(random() < RA_PLAYERSTATTIME)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", TRUE, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NONE);
    }
    
};


// func000464
// function begins at statement 14238, parm_start=9852
// OP_ADDRESS	28	162	9853
// OP_LOAD_F	28	162	9854
// OP_LOAD_F	28	162	9855
// OP_BITAND	9855	272	9856
// OP_SUB_F	9854	9856	9857
// OP_STOREP_F	9857	9853	0
// OP_ADDRESS	28	381	9858
// OP_STOREP_F	213	9858	0
// OP_ADDRESS	28	380	9859
// OP_STOREP_F	213	9859	0
// OP_ADDRESS	28	382	9860
// OP_STOREP_F	213	9860	0
// OP_ADDRESS	28	383	9861
// OP_STOREP_F	213	9861	0
// OP_BITAND	821	777	9862
// OP_IFNOT	9862	7	0
// OP_ADDRESS	28	574	9863
// OP_LOAD_F	28	572	9864
// OP_STOREP_F	9864	9863	0
// OP_ADDRESS	28	573	9865
// OP_STOREP_F	526	9865	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	9866
// OP_STOREP_F	526	9866	0
// OP_OR	35	36	9867
// OP_IFNOT	9867	2	0
// OP_CALL0	5177	0	0
// OP_ADDRESS	28	155	9868
// OP_STOREP_S	3002	9868	0
// OP_ADDRESS	28	166	9869
// OP_STOREP_V	9872	9869	0
// OP_ADDRESS	28	165	9875
// OP_STOREP_F	247	9875	0
// OP_ADDRESS	28	104	9876
// OP_STOREP_F	237	9876	0
// OP_ADDRESS	28	182	9877
// OP_LOAD_F	28	182	9878
// OP_LOAD_F	28	182	9879
// OP_BITAND	9879	223	9880
// OP_SUB_F	9878	9880	9881
// OP_STOREP_F	9881	9877	0
// OP_ADDRESS	28	103	9882
// OP_STOREP_F	231	9882	0
// OP_LOAD_F	28	116	9883
// OP_LT	9883	235	9884
// OP_IFNOT	9884	7	0
// OP_ADDRESS	28	116	9885
// OP_LOAD_F	28	116	9886
// OP_CALL0	457	0	0
// OP_MUL_F	1	540	9887
// OP_ADD_F	9886	9887	9888
// OP_STOREP_F	9888	9885	0
// OP_LOAD_F	28	152	9889
// OP_LT	9889	9236	9890
// OP_IFNOT	9890	3	0
// OP_CALL0	9841	0	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	9891
// OP_IFNOT	9891	3	0
// OP_CALL0	9841	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9728	0	0
// OP_ADDRESS	28	118	9892
// OP_STOREP_F	213	9892	0
// OP_ADDRESS	28	120	9893
// OP_STOREP_F	213	9893	0
// OP_LOAD_F	28	154	9894
// OP_EQ_F	9894	253	9895
// OP_IFNOT	9895	3	0
// OP_CALL0	9682	0	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	9852	0
// OP_NOT_F	9852	0	9896
// OP_IFNOT	9896	7	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	231	9897
// OP_STORE_V	9897	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	9898
// OP_STORE_F	9898	9852	0
// OP_EQ_F	9852	214	9899
// OP_IFNOT	9899	3	0
// OP_CALL0	9677	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	9852	216	9900
// OP_IFNOT	9900	3	0
// OP_CALL0	9678	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	9852	228	9901
// OP_IFNOT	9901	3	0
// OP_CALL0	9679	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	9852	229	9902
// OP_IFNOT	9902	3	0
// OP_CALL0	9680	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9681	0	0
// OP_DONE	0	0	0
void () func000464 = 
{
    local float globaldef003195;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    if(globaldef000804 & globaldef000760)
    {
        self.field000251 = self.field000249;
        self.field000250 = globaldef000509;
    }
    else
    {
        self.modelindex = globaldef000509;
    }
    
    
    if(deathmatch || coop)
    {
        DropBackpack();
    }
    
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < MOVETYPE_BOUNCE)
    {
        self.velocity_z = self.velocity_z + (random() * RA_MAXIDLETIME);
    }
    
    
    if(self.health < -40)
    {
        func000463();
        return;
    }
    
    
    if(globaldef000804 & OBOT_ROCKETARENA)
    {
        func000463();
        return;
    }
    
    func000457();
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    
    if(self.weapon == IT_AXE)
    {
        func000519();
        return;
    }
    
    globaldef003195 = FALSE;
    
    if(!globaldef003195)
    {
        globaldef003195 = TRUE + (floor(random() * MOVETYPE_TOSS));
    }
    
    if(globaldef003195 == TRUE)
    {
        func000466();
    }
    else
    {
        if(globaldef003195 == FL_SWIM)
        {
            func000477();
        }
        else
        {
            if(globaldef003195 == MOVETYPE_WALK)
            {
                func000486();
            }
            else
            {
                if(globaldef003195 == MOVETYPE_STEP)
                {
                    func000501();
                }
                else
                {
                    func000510();
                }
                
            }
            
        }
        
    }
    
};


// func000465
// function begins at statement 14336, parm_start=9903
// OP_LOAD_S	28	130	9903
// OP_NE_S	9903	6684	9904
// OP_IFNOT	9904	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	131	9905
// OP_STOREP_F	2019	9905	0
// OP_ADDRESS	28	104	9906
// OP_STOREP_F	237	9906	0
// OP_ADDRESS	28	103	9907
// OP_STOREP_F	231	9907	0
// OP_ADDRESS	28	165	9908
// OP_STOREP_F	248	9908	0
// OP_ADDRESS	28	150	9909
// OP_STOREP_F	276	9909	0
// OP_DONE	0	0	0
void () func000465 = 
{
    
    if(self.model != "progs/player.mdl")
    {
        return;
    }
    
    self.frame = 60;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_TOSS;
    self.deadflag = DEAD_DEAD;
    self.nextthink = CONTENT_EMPTY;
};


// func000466
// function begins at statement 14351, parm_start=9910
// OP_STATE	1470	9910	0
// OP_DONE	0	0	0
void () func000466 = [50, func000467]
{
};


// func000467
// function begins at statement 14353, parm_start=9911
// OP_STATE	9911	9912	0
// OP_DONE	0	0	0
void () func000467 = [51, func000468]
{
};


// func000468
// function begins at statement 14355, parm_start=9913
// OP_STATE	9913	9914	0
// OP_DONE	0	0	0
void () func000468 = [52, func000469]
{
};


// func000469
// function begins at statement 14357, parm_start=9915
// OP_STATE	9915	9916	0
// OP_DONE	0	0	0
void () func000469 = [53, func000470]
{
};


// func000470
// function begins at statement 14359, parm_start=9917
// OP_STATE	9917	9918	0
// OP_DONE	0	0	0
void () func000470 = [54, func000471]
{
};


// func000471
// function begins at statement 14361, parm_start=9919
// OP_STATE	9919	9920	0
// OP_DONE	0	0	0
void () func000471 = [55, func000472]
{
};


// func000472
// function begins at statement 14363, parm_start=9921
// OP_STATE	9921	9922	0
// OP_DONE	0	0	0
void () func000472 = [56, func000473]
{
};


// func000473
// function begins at statement 14365, parm_start=9923
// OP_STATE	9923	9924	0
// OP_DONE	0	0	0
void () func000473 = [57, func000474]
{
};


// func000474
// function begins at statement 14367, parm_start=9925
// OP_STATE	9925	9926	0
// OP_DONE	0	0	0
void () func000474 = [58, func000475]
{
};


// func000475
// function begins at statement 14369, parm_start=9927
// OP_STATE	2783	9927	0
// OP_DONE	0	0	0
void () func000475 = [59, func000476]
{
};


// func000476
// function begins at statement 14371, parm_start=9928
// OP_STATE	2019	9927	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000476 = [60, func000476]
{
    func000458();
};


// func000477
// function begins at statement 14374, parm_start=9928
// OP_STATE	9928	9929	0
// OP_DONE	0	0	0
void () func000477 = [61, func000478]
{
};


// func000478
// function begins at statement 14376, parm_start=9930
// OP_STATE	9930	9931	0
// OP_DONE	0	0	0
void () func000478 = [62, func000479]
{
};


// func000479
// function begins at statement 14378, parm_start=9932
// OP_STATE	6707	9932	0
// OP_DONE	0	0	0
void () func000479 = [63, func000480]
{
};


// func000480
// function begins at statement 14380, parm_start=9933
// OP_STATE	220	9933	0
// OP_DONE	0	0	0
void () func000480 = [64, func000481]
{
};


// func000481
// function begins at statement 14382, parm_start=9934
// OP_STATE	9934	9935	0
// OP_DONE	0	0	0
void () func000481 = [65, func000482]
{
};


// func000482
// function begins at statement 14384, parm_start=9936
// OP_STATE	9936	9937	0
// OP_DONE	0	0	0
void () func000482 = [66, func000483]
{
};


// func000483
// function begins at statement 14386, parm_start=9938
// OP_STATE	9938	9939	0
// OP_DONE	0	0	0
void () func000483 = [67, func000484]
{
};


// func000484
// function begins at statement 14388, parm_start=9940
// OP_STATE	8193	9940	0
// OP_DONE	0	0	0
void () func000484 = [68, func000485]
{
};


// func000485
// function begins at statement 14390, parm_start=9941
// OP_STATE	8196	9940	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000485 = [69, func000485]
{
    func000458();
};


// func000486
// function begins at statement 14393, parm_start=9941
// OP_STATE	1536	9941	0
// OP_DONE	0	0	0
void () func000486 = [70, func000487]
{
};


// func000487
// function begins at statement 14395, parm_start=9942
// OP_STATE	8201	9942	0
// OP_DONE	0	0	0
void () func000487 = [71, func000488]
{
};


// func000488
// function begins at statement 14397, parm_start=9943
// OP_STATE	9943	9944	0
// OP_DONE	0	0	0
void () func000488 = [72, func000489]
{
};


// func000489
// function begins at statement 14399, parm_start=9945
// OP_STATE	5487	9945	0
// OP_DONE	0	0	0
void () func000489 = [73, func000490]
{
};


// func000490
// function begins at statement 14401, parm_start=9946
// OP_STATE	9946	9947	0
// OP_DONE	0	0	0
void () func000490 = [74, func000491]
{
};


// func000491
// function begins at statement 14403, parm_start=9948
// OP_STATE	9173	9948	0
// OP_DONE	0	0	0
void () func000491 = [75, func000492]
{
};


// func000492
// function begins at statement 14405, parm_start=9949
// OP_STATE	9949	9950	0
// OP_DONE	0	0	0
void () func000492 = [76, func000493]
{
};


// func000493
// function begins at statement 14407, parm_start=9951
// OP_STATE	9951	9952	0
// OP_DONE	0	0	0
void () func000493 = [77, func000494]
{
};


// func000494
// function begins at statement 14409, parm_start=9953
// OP_STATE	9953	9954	0
// OP_DONE	0	0	0
void () func000494 = [78, func000495]
{
};


// func000495
// function begins at statement 14411, parm_start=9955
// OP_STATE	9955	9956	0
// OP_DONE	0	0	0
void () func000495 = [79, func000496]
{
};


// func000496
// function begins at statement 14413, parm_start=9957
// OP_STATE	2805	9957	0
// OP_DONE	0	0	0
void () func000496 = [80, func000497]
{
};


// func000497
// function begins at statement 14415, parm_start=9958
// OP_STATE	8204	9958	0
// OP_DONE	0	0	0
void () func000497 = [81, func000498]
{
};


// func000498
// function begins at statement 14417, parm_start=9959
// OP_STATE	9959	9960	0
// OP_DONE	0	0	0
void () func000498 = [82, func000499]
{
};


// func000499
// function begins at statement 14419, parm_start=9961
// OP_STATE	9961	9962	0
// OP_DONE	0	0	0
void () func000499 = [83, func000500]
{
};


// func000500
// function begins at statement 14421, parm_start=9963
// OP_STATE	7694	9962	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000500 = [84, func000500]
{
    func000458();
};


// func000501
// function begins at statement 14424, parm_start=9963
// OP_STATE	9963	9964	0
// OP_DONE	0	0	0
void () func000501 = [85, func000502]
{
};


// func000502
// function begins at statement 14426, parm_start=9965
// OP_STATE	9965	9966	0
// OP_DONE	0	0	0
void () func000502 = [86, func000503]
{
};


// func000503
// function begins at statement 14428, parm_start=9967
// OP_STATE	9967	9968	0
// OP_DONE	0	0	0
void () func000503 = [87, func000504]
{
};


// func000504
// function begins at statement 14430, parm_start=9969
// OP_STATE	9969	9970	0
// OP_DONE	0	0	0
void () func000504 = [88, func000505]
{
};


// func000505
// function begins at statement 14432, parm_start=9971
// OP_STATE	9971	9972	0
// OP_DONE	0	0	0
void () func000505 = [89, func000506]
{
};


// func000506
// function begins at statement 14434, parm_start=9973
// OP_STATE	2658	9973	0
// OP_DONE	0	0	0
void () func000506 = [90, func000507]
{
};


// func000507
// function begins at statement 14436, parm_start=9974
// OP_STATE	9974	9975	0
// OP_DONE	0	0	0
void () func000507 = [91, func000508]
{
};


// func000508
// function begins at statement 14438, parm_start=9976
// OP_STATE	9976	9977	0
// OP_DONE	0	0	0
void () func000508 = [92, func000509]
{
};


// func000509
// function begins at statement 14440, parm_start=9978
// OP_STATE	9978	9977	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000509 = [93, func000509]
{
    func000458();
};


// func000510
// function begins at statement 14443, parm_start=9979
// OP_STATE	9979	9980	0
// OP_DONE	0	0	0
void () func000510 = [94, func000511]
{
};


// func000511
// function begins at statement 14445, parm_start=9981
// OP_STATE	9981	9982	0
// OP_DONE	0	0	0
void () func000511 = [95, func000512]
{
};


// func000512
// function begins at statement 14447, parm_start=9983
// OP_STATE	9983	9984	0
// OP_DONE	0	0	0
void () func000512 = [96, func000513]
{
};


// func000513
// function begins at statement 14449, parm_start=9985
// OP_STATE	9985	9986	0
// OP_DONE	0	0	0
void () func000513 = [97, func000514]
{
};


// func000514
// function begins at statement 14451, parm_start=9987
// OP_STATE	9987	9988	0
// OP_DONE	0	0	0
void () func000514 = [98, func000515]
{
};


// func000515
// function begins at statement 14453, parm_start=9989
// OP_STATE	9989	9990	0
// OP_DONE	0	0	0
void () func000515 = [99, func000516]
{
};


// func000516
// function begins at statement 14455, parm_start=9991
// OP_STATE	1997	9991	0
// OP_DONE	0	0	0
void () func000516 = [100, func000517]
{
};


// func000517
// function begins at statement 14457, parm_start=9992
// OP_STATE	8107	9992	0
// OP_DONE	0	0	0
void () func000517 = [101, func000518]
{
};


// func000518
// function begins at statement 14459, parm_start=9993
// OP_STATE	8109	9992	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000518 = [102, func000518]
{
    func000458();
};


// func000519
// function begins at statement 14462, parm_start=9993
// OP_STATE	9993	9994	0
// OP_DONE	0	0	0
void () func000519 = [41, func000520]
{
};


// func000520
// function begins at statement 14464, parm_start=9995
// OP_STATE	9995	9996	0
// OP_DONE	0	0	0
void () func000520 = [42, func000521]
{
};


// func000521
// function begins at statement 14466, parm_start=9997
// OP_STATE	9997	9998	0
// OP_DONE	0	0	0
void () func000521 = [43, func000522]
{
};


// func000522
// function begins at statement 14468, parm_start=9999
// OP_STATE	9999	10000	0
// OP_DONE	0	0	0
void () func000522 = [44, func000523]
{
};


// func000523
// function begins at statement 14470, parm_start=10001
// OP_STATE	2598	10001	0
// OP_DONE	0	0	0
void () func000523 = [45, func000524]
{
};


// func000524
// function begins at statement 14472, parm_start=10002
// OP_STATE	10002	10003	0
// OP_DONE	0	0	0
void () func000524 = [46, func000525]
{
};


// func000525
// function begins at statement 14474, parm_start=10004
// OP_STATE	10004	10005	0
// OP_DONE	0	0	0
void () func000525 = [47, func000526]
{
};


// func000526
// function begins at statement 14476, parm_start=10006
// OP_STATE	10006	10007	0
// OP_DONE	0	0	0
void () func000526 = [48, func000527]
{
};


// func000527
// function begins at statement 14478, parm_start=10008
// OP_STATE	10008	10007	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000527 = [49, func000527]
{
    func000458();
};


// func000528
// function begins at statement 14481, parm_start=10010
// OP_LOAD_ENT	28	181	10010
// OP_IFNOT	10010	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	10011
// OP_LE	10011	213	10012
// OP_IFNOT	10012	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	162	10013
// OP_BITAND	10013	272	10014
// OP_IFNOT	10014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	182	10015
// OP_BITAND	10015	221	10016
// OP_IFNOT	10016	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	10017
// OP_NE_S	10017	1236	10018
// OP_IFNOT	10018	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10019
// OP_STOREP_ENT	351	10019	0
// OP_ADDRESS	28	150	10020
// OP_ADD_F	31	3036	10021
// OP_STOREP_F	10021	10020	0
// OP_ADDRESS	28	148	10022
// OP_STOREP_FNC	3711	10022	0
// OP_DONE	0	0	0
void () func000528 = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(activator.items & IT_INVISIBILITY)
    {
        return;
    }
    
    
    if(activator.flags & FL_NOTARGET)
    {
        return;
    }
    
    
    if(activator.classname != "player")
    {
        return;
    }
    
    self.enemy = activator;
    self.nextthink = time + 0.1;
    self.think = FoundTarget;
};

