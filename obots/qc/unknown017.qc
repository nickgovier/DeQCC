// func000300
// function begins at statement 8779, parm_start=6774
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	6772	0
// OP_ADDRESS	6772	129	6775
// OP_STOREP_S	2183	6775	0
// OP_ADDRESS	6772	201	6776
// OP_CALL0	464	0	0
// OP_STOREP_ENT	1	6776	0
// OP_LOAD_ENT	6772	201	6777
// OP_ADDRESS	6777	129	6778
// OP_STOREP_S	2183	6778	0
// OP_LOAD_ENT	6772	201	6779
// OP_ADDRESS	6779	201	6780
// OP_CALL0	464	0	0
// OP_STOREP_ENT	1	6780	0
// OP_LOAD_ENT	6772	201	6781
// OP_LOAD_ENT	6781	201	6782
// OP_ADDRESS	6782	129	6783
// OP_STOREP_S	2183	6783	0
// OP_LOAD_ENT	6772	201	6784
// OP_LOAD_ENT	6784	201	6785
// OP_ADDRESS	6785	201	6786
// OP_CALL0	464	0	0
// OP_STOREP_ENT	1	6786	0
// OP_LOAD_ENT	6772	201	6787
// OP_LOAD_ENT	6787	201	6788
// OP_LOAD_ENT	6788	201	6789
// OP_ADDRESS	6789	129	6790
// OP_STOREP_S	2183	6790	0
// OP_LOAD_ENT	6772	201	6791
// OP_LOAD_ENT	6791	201	6792
// OP_LOAD_ENT	6792	201	6793
// OP_ADDRESS	6793	201	6794
// OP_STOREP_ENT	6772	6794	0
// OP_DONE	0	0	0
void () func000300 = 
{
    local entity globaldef002468;
    globaldef002466 = spawn();
    globaldef002466.classname = "bodyque";
    globaldef002466.owner = spawn();
    globaldef002466.owner.classname = "bodyque";
    globaldef002466.owner.owner = spawn();
    globaldef002466.owner.owner.classname = "bodyque";
    globaldef002466.owner.owner.owner = spawn();
    globaldef002466.owner.owner.owner.classname = "bodyque";
    globaldef002466.owner.owner.owner.owner = globaldef002466;
};

// func000301
// function begins at statement 8813, parm_start=6796
// OP_ADDRESS	6772	117	6797
// OP_LOAD_V	6796	117	6800
// OP_STOREP_V	6800	6797	0
// OP_LOAD_S	6796	129	6803
// OP_EQ_S	6803	1236	6804
// OP_LOAD_S	6796	129	6805
// OP_EQ_S	6805	1241	6806
// OP_OR	6804	6806	6807
// OP_IFNOT	6807	10	0
// OP_ADDRESS	6772	132	6808
// OP_LOAD_F	6796	574	6809
// OP_STOREP_F	6809	6808	0
// OP_ADDRESS	6772	93	6810
// OP_LOAD_F	6796	573	6811
// OP_STOREP_F	6811	6810	0
// OP_ADDRESS	6772	130	6812
// OP_STOREP_S	6813	6812	0
// OP_GOTO	10	0	0
// OP_ADDRESS	6772	132	6814
// OP_LOAD_F	6796	132	6815
// OP_STOREP_F	6815	6814	0
// OP_ADDRESS	6772	130	6816
// OP_LOAD_S	6796	130	6817
// OP_STOREP_S	6817	6816	0
// OP_ADDRESS	6772	93	6818
// OP_LOAD_F	6796	93	6819
// OP_STOREP_F	6819	6818	0
// OP_ADDRESS	6772	131	6820
// OP_LOAD_F	6796	131	6821
// OP_STOREP_F	6821	6820	0
// OP_ADDRESS	6772	183	6822
// OP_LOAD_F	6796	183	6823
// OP_STOREP_F	6823	6822	0
// OP_ADDRESS	6772	103	6824
// OP_LOAD_F	6796	103	6825
// OP_STOREP_F	6825	6824	0
// OP_ADDRESS	6772	113	6826
// OP_LOAD_V	6796	113	6829
// OP_STOREP_V	6829	6826	0
// OP_ADDRESS	6772	182	6832
// OP_STOREP_F	213	6832	0
// OP_STORE_V	6772	4	0
// OP_LOAD_V	6796	105	6833
// OP_STORE_V	6833	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	6772	4	0
// OP_LOAD_V	6796	134	6836
// OP_STORE_V	6836	7	0
// OP_LOAD_V	6796	138	6839
// OP_STORE_V	6839	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	6796	4	0
// OP_STORE_V	6772	7	0
// OP_CALL2	2943	0	0
// OP_LOAD_ENT	6772	201	6842
// OP_STORE_ENT	6842	6772	0
// OP_DONE	0	0	0
void (entity globaldef002470) func000301 = 
{
    globaldef002466.angles = globaldef002470.angles;
    if((globaldef002470.classname == "player") || (globaldef002470.classname == "bot"))
    {
        globaldef002466.skin = globaldef002470.field000251;
        globaldef002466.modelindex = globaldef002470.field000250;
        globaldef002466.model = "bla";
    }
    else
    {
        globaldef002466.skin = globaldef002470.skin;
        globaldef002466.model = globaldef002470.model;
        globaldef002466.modelindex = globaldef002470.modelindex;
    }
    
    globaldef002466.frame = globaldef002470.frame;
    globaldef002466.colormap = globaldef002470.colormap;
    globaldef002466.movetype = globaldef002470.movetype;
    globaldef002466.velocity = globaldef002470.velocity;
    globaldef002466.flags = FALSE;
    setorigin(globaldef002466, globaldef002470.origin);
    setsize(globaldef002466, globaldef002470.mins, globaldef002470.maxs);
    func000148(globaldef002470, globaldef002466);
    globaldef002466 = globaldef002466.owner;
};

// func000302
// function begins at statement 8870, parm_start=6844
// OP_STORE_V	6844	4	0
// OP_STORE_V	6847	7	0
// OP_STORE_V	6850	10	0
// OP_STORE_V	6851	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector globaldef002473, vector globaldef002477, float globaldef002481, float globaldef002482) func000302 = 
{
    particle(globaldef002473, globaldef002477, globaldef002481, globaldef002482);
};

// func000303
// function begins at statement 8876, parm_start=6853
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6859	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6853	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6854	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6855	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6856	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6857	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	6858	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void (vector globaldef002484, vector globaldef002488, entity globaldef002492) func000303 = 
{
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
    WriteEntity(MSG_BROADCAST, globaldef002492);
    WriteCoord(MSG_BROADCAST, globaldef002484_x);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, globaldef002488_x);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, 0);
};

// func000304
// function begins at statement 8904, parm_start=6861
// OP_ADDRESS	28	133	6861
// OP_LOAD_F	28	133	6862
// OP_BITOR	6862	339	6863
// OP_STOREP_F	6863	6861	0
// OP_DONE	0	0	0
void () func000304 = 
{
    self.effects = self.effects | EF_MUZZLEFLASH;
};

float globaldef002494;
float globaldef002495;
float globaldef002496;
float globaldef002497;
void (float globaldef002529, float globaldef002530, float globaldef002531) func000326;
void () func000333;
void () func000325;
// func000305
// function begins at statement 8909, parm_start=6872
// OP_STATE	213	6872	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000305 = [0, func000306]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, TRUE);
    func000333();
};

// func000306
// function begins at statement 8916, parm_start=6873
// OP_STATE	214	6873	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000306 = [1, func000307]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000307
// function begins at statement 8923, parm_start=6874
// OP_STATE	216	6874	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000307 = [2, func000308]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000308
// function begins at statement 8930, parm_start=6875
// OP_STATE	228	6875	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000308 = [3, func000309]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000309
// function begins at statement 8937, parm_start=6876
// OP_STATE	229	6876	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000309 = [4, func000310]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000310
// function begins at statement 8944, parm_start=6877
// OP_STATE	230	6877	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_CALL0	6870	0	0
// OP_DONE	0	0	0
void () func000310 = [5, func000311]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
    func000325();
};

// func000311
// function begins at statement 8952, parm_start=6878
// OP_STATE	231	6878	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000311 = [6, func000312]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000312
// function begins at statement 8959, parm_start=6879
// OP_STATE	232	6879	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000312 = [7, func000313]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000313
// function begins at statement 8966, parm_start=6880
// OP_STATE	217	6880	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000313 = [8, func000314]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000314
// function begins at statement 8973, parm_start=6881
// OP_STATE	234	6881	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000314 = [9, func000315]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000315
// function begins at statement 8980, parm_start=6882
// OP_STATE	235	6882	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () func000315 = [10, func000316]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};

// func000316
// function begins at statement 8987, parm_start=6883
// OP_STATE	236	6871	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_CALL0	6870	0	0
// OP_DONE	0	0	0
void () func000316 = [11, func000305]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
    func000325();
};

// func000317
// function begins at statement 8995, parm_start=6884
// OP_STATE	791	6884	0
// OP_DONE	0	0	0
void () func000317 = [12, func000318]
{
};

// func000318
// function begins at statement 8997, parm_start=6885
// OP_STATE	792	6885	0
// OP_DONE	0	0	0
void () func000318 = [13, func000319]
{
};

// func000319
// function begins at statement 8999, parm_start=6886
// OP_STATE	5693	6886	0
// OP_DONE	0	0	0
void () func000319 = [14, func000320]
{
};

// func000320
// function begins at statement 9001, parm_start=6887
// OP_STATE	765	6871	0
// OP_DONE	0	0	0
void () func000320 = [15, func000305]
{
};

// func000321
// function begins at statement 9003, parm_start=6888
// OP_STATE	218	6888	0
// OP_STORE_V	765	4	0
// OP_STORE_V	231	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_ADDRESS	28	113	6889
// OP_STOREP_V	286	6889	0
// OP_DONE	0	0	0
void () func000321 = [16, func000322]
{
    func000326(globaldef000748, MOVETYPE_TOSS, FALSE);
    self.velocity = VEC_ORIGIN;
};

// func000322
// function begins at statement 9011, parm_start=6892
// OP_STATE	6892	6893	0
// OP_STORE_V	235	4	0
// OP_STORE_V	229	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_DONE	0	0	0
void () func000322 = [17, func000323]
{
    func000326(MOVETYPE_BOUNCE, MOVETYPE_STEP, FALSE);
};

// func000323
// function begins at statement 9017, parm_start=6894
// OP_STATE	6133	6894	0
// OP_STORE_V	230	4	0
// OP_STORE_V	216	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_DONE	0	0	0
void () func000323 = [18, func000324]
{
    func000326(MOVETYPE_FLY, FL_SWIM, FALSE);
};

// func000324
// function begins at statement 9023, parm_start=6895
// OP_STATE	6895	6896	0
// OP_DONE	0	0	0
void () func000324 = [19, func000332]
{
};

// func000325
// function begins at statement 9025, parm_start=6897
// OP_CALL0	457	0	0
// OP_GT	1	3036	6900
// OP_IFNOT	6900	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	6901	6897	0
// OP_CALL0	457	0	0
// OP_ADD_F	6897	1	6904
// OP_STORE_F	6904	6897	0
// OP_CALL0	457	0	0
// OP_ADD_F	6898	1	6905
// OP_STORE_F	6905	6898	0
// OP_LOAD_V	28	105	6906
// OP_STORE_V	6906	4	0
// OP_LOAD_V	28	105	6909
// OP_MUL_VF	6897	6867	6912
// OP_ADD_V	6909	6912	6915
// OP_STORE_V	6915	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_V	28	105	6918
// OP_STORE_V	6918	4	0
// OP_STORE_V	71	7	0
// OP_STORE_V	28	10	0
// OP_CALL3	6852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	6641	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	6860	0	0
// OP_LOAD_V	28	105	6921
// OP_STORE_V	6921	4	0
// OP_MUL_VF	6897	229	6924
// OP_ADD_V	71	6924	6927
// OP_STORE_V	6927	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2323	13	0
// OP_CALL4	5802	0	0
// OP_DONE	0	0	0
void () func000325 = 
{
    local vector globaldef002524;
    
    if(random() > 0.1)
    {
        return;
    }
    
    globaldef002524 = '-0.5 -0.5 -0.7';
    globaldef002524_x = globaldef002524_x + random();
    globaldef002526 = 0 + random();
    traceline(self.origin, self.origin + (globaldef002524 * globaldef002497), TRUE, self);
    func000303(self.origin, trace_endpos, self);
    sound(self, CHAN_WEAPON, "cloud/thunder.wav", TRUE, ATTN_NORM);
    func000304();
    func000273(self.origin, trace_endpos + (globaldef002524 * MOVETYPE_STEP), self, 20);
};

// func000326
// function begins at statement 9066, parm_start=6930
// OP_STORE_F	235	6936	0
// OP_GT	6936	213	6937
// OP_IFNOT	6937	23	0
// OP_LOAD_V	28	105	6938
// OP_STORE_V	6938	6933	0
// OP_SUB_F	6933	6930	6941
// OP_CALL0	457	0	0
// OP_MUL_F	1	6930	6942
// OP_MUL_F	6942	216	6943
// OP_ADD_F	6941	6943	6944
// OP_STORE_F	6944	6933	0
// OP_SUB_F	6934	6930	6945
// OP_CALL0	457	0	0
// OP_MUL_F	1	6930	6946
// OP_MUL_F	6946	216	6947
// OP_ADD_F	6945	6947	6948
// OP_STORE_F	6948	6934	0
// OP_STORE_V	6933	4	0
// OP_STORE_V	6949	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	6931	13	0
// OP_CALL4	6843	0	0
// OP_SUB_F	6936	214	6952
// OP_STORE_F	6952	6936	0
// OP_GOTO	-23	0	0
// OP_IFNOT	6932	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6642	10	0
// OP_STORE_V	5599	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void (float globaldef002529, float globaldef002530, float globaldef002531) func000326 = 
{
    local vector globaldef002532;
    local float globaldef002536;
    globaldef002536 = MOVETYPE_BOUNCE;
    
    while(globaldef002536 > FALSE)
    {
        globaldef002532 = self.origin;
        globaldef002532_x = (globaldef002532_x - globaldef002529) + ((random() * globaldef002529) * FL_SWIM);
        globaldef002534 = (0 - globaldef002529) + ((random() * globaldef002529) * FL_SWIM);
        func000302(globaldef002532, '0 0 -300', FL_MONSTER, globaldef002530);
        globaldef002536 = globaldef002536 - TRUE;
    }
    
    
    if(globaldef002531)
    {
        sound(self, CHAN_VOICE, "cloud/rain.wav", 0.7, ATTN_NORM);
    }
    
};

// func000327
// function begins at statement 9099, parm_start=6954
// OP_LOAD_ENT	6954	423	6961
// OP_LOAD_V	6961	105	6962
// OP_STORE_V	6962	6958	0
// OP_ADD_F	6960	219	6965
// OP_STORE_F	6965	6960	0
// OP_STORE_V	6958	6955	0
// OP_ADD_F	6957	6865	6966
// OP_STORE_F	6966	6957	0
// OP_STORE_V	6958	4	0
// OP_STORE_V	6955	7	0
// OP_STORE_V	214	10	0
// OP_LOAD_ENT	28	423	6967
// OP_STORE_V	6967	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	80	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	70	214	6968
// OP_SUB_F	73	6960	6969
// OP_GT	6969	6864	6970
// OP_OR	6968	6970	6971
// OP_IFNOT	6971	5	0
// OP_LOAD_ENT	6954	423	6972
// OP_LOAD_F	6972	108	6973
// OP_SUB_F	73	6973	6974
// OP_RETURN	6974	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef002539) func000327 = 
{
    local vector globaldef002540;
    local vector globaldef002544;
    globaldef002544 = globaldef002539.movetarget.origin;
    globaldef002547 = 0 + FL_MONSTER;
    globaldef002540 = globaldef002544;
    globaldef002543 = 0 + globaldef002495;
    traceline(globaldef002544, globaldef002540, TRUE, self.movetarget);
    
    if(trace_inwater)
    {
        return FALSE;
    }
    
    
    if((trace_fraction == TRUE) || ((0 - 0) > globaldef002494))
    {
        return 0 - globaldef002539.movetarget.origin_z;
    }
    
    return FALSE;
};

// func000328
// function begins at statement 9126, parm_start=6976
// OP_GE	6976	1298	6977
// OP_IFNOT	6977	4	0
// OP_SUB_F	6976	1298	6978
// OP_STORE_F	6978	6976	0
// OP_GOTO	-4	0	0
// OP_LT	6976	213	6979
// OP_IFNOT	6979	4	0
// OP_ADD_F	6976	1298	6980
// OP_STORE_F	6980	6976	0
// OP_GOTO	-4	0	0
// OP_RETURN	6976	0	0
// OP_DONE	0	0	0
float (float globaldef002549) func000328 = 
{
    
    while(globaldef002549 >= 360)
    {
        globaldef002549 = globaldef002549 - 360;
    }
    
    
    while(globaldef002549 < FALSE)
    {
        globaldef002549 = globaldef002549 + 360;
    }
    
    return globaldef002549;
};

// func000329
// function begins at statement 9138, parm_start=6982
// OP_LOAD_F	6982	119	6986
// OP_STORE_V	6986	4	0
// OP_CALL1	6975	0	0
// OP_STORE_F	1	6984	0
// OP_LOAD_ENT	6982	423	6987
// OP_LOAD_F	6987	119	6988
// OP_STORE_V	6988	4	0
// OP_CALL1	6975	0	0
// OP_STORE_F	1	6985	0
// OP_GT	6984	6985	6989
// OP_IFNOT	6989	13	0
// OP_SUB_F	6984	6985	6990
// OP_LT	6990	1296	6991
// OP_IFNOT	6991	5	0
// OP_SUB_F	6985	6984	6992
// OP_DIV_F	6992	217	6993
// OP_STORE_F	6993	6983	0
// OP_GOTO	5	0	0
// OP_SUB_F	1298	6984	6994
// OP_ADD_F	6994	6985	6995
// OP_DIV_F	6995	217	6996
// OP_STORE_F	6996	6983	0
// OP_GOTO	12	0	0
// OP_SUB_F	6985	6984	6997
// OP_LT	6997	1296	6998
// OP_IFNOT	6998	5	0
// OP_SUB_F	6985	6984	6999
// OP_DIV_F	6999	217	7000
// OP_STORE_F	7000	6983	0
// OP_GOTO	5	0	0
// OP_ADD_F	7001	6985	7002
// OP_SUB_F	7002	6984	7003
// OP_DIV_F	7003	217	7004
// OP_STORE_F	7004	6983	0
// OP_ADDRESS	28	118	7005
// OP_STOREP_F	213	7005	0
// OP_ADDRESS	28	120	7006
// OP_STOREP_F	213	7006	0
// OP_ADDRESS	28	122	7007
// OP_STOREP_F	213	7007	0
// OP_ADDRESS	28	123	7008
// OP_LOAD_F	28	123	7009
// OP_MUL_F	7009	3263	7010
// OP_ADD_F	7010	6983	7011
// OP_STOREP_F	7011	7008	0
// OP_ADDRESS	28	124	7012
// OP_STOREP_F	213	7012	0
// OP_DONE	0	0	0
void (entity globaldef002551) func000329 = 
{
    local float globaldef002552;
    local float globaldef002553;
    local float globaldef002554;
    globaldef002553 = func000328(globaldef002551.angles_y);
    globaldef002554 = func000328(globaldef002551.movetarget.angles_y);
    if(globaldef002553 > globaldef002554)
    {
        if((globaldef002553 - globaldef002554) < 180)
        {
            globaldef002552 = (globaldef002554 - globaldef002553) / FL_CLIENT;
        }
        else
        {
            globaldef002552 = ((360 - globaldef002553) + globaldef002554) / FL_CLIENT;
        }
        
    }
    else
    {
        if((globaldef002554 - globaldef002553) < 180)
        {
            globaldef002552 = (globaldef002554 - globaldef002553) / FL_CLIENT;
        }
        else
        {
            globaldef002552 = ((-360 + globaldef002554) - globaldef002553) / FL_CLIENT;
        }
        
    }
    
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    self.avelocity_x = FALSE;
    self.avelocity_y = (self.avelocity_y * 0.9) + globaldef002552;
    self.avelocity_z = FALSE;
};

// func000330
// function begins at statement 9186, parm_start=7014
// OP_STORE_V	28	4	0
// OP_CALL1	6953	0	0
// OP_STORE_F	1	7014	0
// OP_IFNOT	7014	23	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	399	7018
// OP_STORE_V	7018	7	0
// OP_CALL2	454	0	0
// OP_LOAD_ENT	28	423	7019
// OP_LOAD_V	7019	105	7020
// OP_STORE_V	7020	7015	0
// OP_ADD_F	7017	7014	7023
// OP_STORE_F	7023	7017	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7015	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	118	7024
// OP_STOREP_F	213	7024	0
// OP_ADDRESS	28	119	7025
// OP_LOAD_ENT	28	423	7026
// OP_LOAD_F	7026	119	7027
// OP_STOREP_F	7027	7025	0
// OP_ADDRESS	28	120	7028
// OP_STOREP_F	213	7028	0
// OP_CALL0	6883	0	0
// OP_GOTO	6	0	0
// OP_ADDRESS	28	150	7029
// OP_ADD_F	31	3036	7030
// OP_STOREP_F	7030	7029	0
// OP_ADDRESS	28	148	7031
// OP_STOREP_FNC	7013	7031	0
// OP_DONE	0	0	0
void () func000330 = 
{
    local float globaldef002557;
    local vector globaldef002558;
    globaldef002557 = func000327(self);
    if(globaldef002557)
    {
        setmodel(self, self.mdl);
        globaldef002558 = self.movetarget.origin;
        globaldef002561 = 0 + globaldef002557;
        setorigin(self, globaldef002558);
        self.angles_x = FALSE;
        self.angles_y = self.movetarget.angles_y;
        self.angles_z = FALSE;
        func000317();
    }
    else
    {
        self.nextthink = time + 0.1;
        self.think = func000330;
    }
    
};

// func000331
// function begins at statement 9218, parm_start=7033
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000331 = 
{
    remove(self);
};

// func000332
// function begins at statement 9221, parm_start=7033
// OP_STORE_V	28	4	0
// OP_STORE_V	348	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	150	7033
// OP_ADD_F	31	3036	7034
// OP_STOREP_F	7034	7033	0
// OP_LOAD_F	28	426	7035
// OP_LE	7035	213	7036
// OP_IFNOT	7036	4	0
// OP_ADDRESS	28	148	7037
// OP_STOREP_FNC	7032	7037	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	148	7038
// OP_STOREP_FNC	7013	7038	0
// OP_DONE	0	0	0
void () func000332 = 
{
    setmodel(self, string_null);
    self.nextthink = time + 0.1;
    if(self.cnt <= FALSE)
    {
        self.think = func000331;
    }
    else
    {
        self.think = func000330;
    }
    
};

// func000333
// function begins at statement 9236, parm_start=7039
// OP_ADDRESS	28	426	7046
// OP_LOAD_F	28	426	7047
// OP_SUB_F	7047	214	7048
// OP_STOREP_F	7048	7046	0
// OP_LOAD_F	28	426	7049
// OP_LE	7049	213	7050
// OP_IFNOT	7050	3	0
// OP_CALL0	6887	0	0
// OP_GOTO	27	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	6953	0	0
// OP_STORE_F	1	7039	0
// OP_IFNOT	7039	22	0
// OP_LOAD_ENT	28	423	7051
// OP_LOAD_V	7051	105	7052
// OP_STORE_V	7052	7040	0
// OP_ADD_F	7042	7039	7055
// OP_STORE_F	7055	7042	0
// OP_LOAD_V	28	105	7056
// OP_SUB_V	7040	7056	7059
// OP_STORE_V	7059	4	0
// OP_CALL1	462	0	0
// OP_GT	1	6866	7062
// OP_IFNOT	7062	3	0
// OP_CALL0	6887	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	113	7063
// OP_LOAD_V	28	105	7066
// OP_SUB_V	7040	7066	7069
// OP_MUL_VF	7069	235	7072
// OP_STOREP_V	7072	7063	0
// OP_STORE_V	28	4	0
// OP_CALL1	6981	0	0
// OP_GOTO	2	0	0
// OP_CALL0	6887	0	0
// OP_DONE	0	0	0
void () func000333 = 
{
    local float globaldef002563;
    local vector globaldef002564;
    local vector globaldef002568;
    self.cnt = self.cnt - TRUE;
    if(self.cnt <= FALSE)
    {
        func000321();
    }
    else
    {
        globaldef002563 = func000327(self);
        if(globaldef002563)
        {
            globaldef002564 = self.movetarget.origin;
            globaldef002567 = 0 + globaldef002563;
            if((vlen(globaldef002564 - self.origin)) > globaldef002496)
            {
                func000321();
            }
            else
            {
                self.velocity = (globaldef002564 - self.origin) * MOVETYPE_BOUNCE;
                func000329(self);
            }
            
        }
        else
        {
            func000321();
        }
        
    }
    
};

// func000334
// function begins at statement 9272, parm_start=7076
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7078	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7077	0
// OP_IFNOT	7077	17	0
// OP_LOAD_ENT	7077	423	7079
// OP_EQ_E	7079	7076	7080
// OP_IFNOT	7080	8	0
// OP_ADDRESS	7077	426	7081
// OP_STOREP_F	213	7081	0
// OP_ADDRESS	7077	150	7082
// OP_ADD_F	31	3036	7083
// OP_STOREP_F	7083	7082	0
// OP_ADDRESS	7077	148	7084
// OP_STOREP_FNC	6887	7084	0
// OP_STORE_V	7077	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7078	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7077	0
// OP_GOTO	-16	0	0
// OP_DONE	0	0	0
void (entity globaldef002573) func000334 = 
{
    local entity globaldef002574;
    globaldef002574 = find(world, classname, "cloud");
    
    while(globaldef002574)
    {
        
        if(globaldef002574.movetarget == globaldef002573)
        {
            globaldef002574.cnt = FALSE;
            globaldef002574.nextthink = time + 0.1;
            globaldef002574.think = func000321;
        }
        
        globaldef002574 = find(globaldef002574, classname, "cloud");
    }
    
};

// func000335
// function begins at statement 9295, parm_start=7086
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	7088	0
// OP_ADDRESS	7088	129	7093
// OP_STOREP_S	7078	7093	0
// OP_ADDRESS	7088	103	7094
// OP_STOREP_F	233	7094	0
// OP_ADDRESS	7088	104	7095
// OP_STOREP_F	237	7095	0
// OP_ADDRESS	7088	423	7096
// OP_STOREP_ENT	7086	7096	0
// OP_ADDRESS	7088	448	7097
// OP_STOREP_F	213	7097	0
// OP_ADDRESS	7088	399	7098
// OP_STOREP_S	6639	7098	0
// OP_STORE_V	7088	4	0
// OP_STORE_V	348	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	7088	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	7088	150	7099
// OP_ADD_F	31	3036	7100
// OP_STOREP_F	7100	7099	0
// OP_ADDRESS	7088	148	7101
// OP_STOREP_FNC	7013	7101	0
// OP_ADDRESS	7088	426	7102
// OP_MUL_F	7087	235	7103
// OP_STOREP_F	7103	7102	0
// OP_DONE	0	0	0
void (entity globaldef002577, float globaldef002578) func000335 = 
{
    local entity globaldef002579;
    local vector globaldef002580;
    local float globaldef002584;
    globaldef002579 = spawn();
    globaldef002579.classname = "cloud";
    globaldef002579.movetype = MOVETYPE_NOCLIP;
    globaldef002579.solid = SOLID_NOT;
    globaldef002579.movetarget = globaldef002577;
    globaldef002579.waitmin = FALSE;
    globaldef002579.mdl = "progs/cloud.mdl";
    setmodel(globaldef002579, string_null);
    setsize(globaldef002579, VEC_ORIGIN, VEC_ORIGIN);
    globaldef002579.nextthink = time + 0.1;
    globaldef002579.think = func000330;
    globaldef002579.cnt = globaldef002578 * MOVETYPE_BOUNCE;
};

// func000336
// function begins at statement 9325, parm_start=7105
// OP_STORE_V	7105	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (string globaldef002586) func000336 = 
{
    bprint(globaldef002586);
};

void globaldef002587;
.vector field000377;
.vector field000381;
.float field000385;
.float field000386;
.entity field000387;
void globaldef002599;
float globaldef002600;
float globaldef002601;
float globaldef002602;
float globaldef002603;
float globaldef002604;
float globaldef002605;
float globaldef002606;
float globaldef002607;
float globaldef002608;
float globaldef002609;
// func000337
// function begins at statement 9328, parm_start=7130
// OP_STORE_V	7130	4	0
// OP_CALL1	7104	0	0
// OP_EQ_F	7128	7124	7131
// OP_IFNOT	7131	5	0
// OP_STORE_F	7125	7128	0
// OP_STORE_V	7132	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	7128	7125	7133
// OP_IFNOT	7133	5	0
// OP_STORE_F	7126	7128	0
// OP_STORE_V	7134	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	7128	7126	7135
// OP_IFNOT	7135	5	0
// OP_STORE_F	7127	7128	0
// OP_STORE_V	7136	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	4	0	0
// OP_STORE_F	7124	7128	0
// OP_STORE_V	7137	4	0
// OP_CALL1	7104	0	0
// OP_DONE	0	0	0
void () func000337 = 
{
    func000336("camping mode = ");
    if(globaldef002609 == globaldef002605)
    {
        globaldef002609 = globaldef002606;
        func000336("detect only\n");
    }
    else
    {
        if(globaldef002609 == globaldef002606)
        {
            globaldef002609 = globaldef002607;
            func000336("detect & punish\n");
        }
        else
        {
            if(globaldef002609 == globaldef002607)
            {
                globaldef002609 = globaldef002608;
                func000336("detect & punish severe\n");
            }
            else
            {
                globaldef002609 = globaldef002605;
                func000336("no detection\n");
            }
            
        }
        
    }
    
};

// func000338
// function begins at statement 9352, parm_start=7139
// OP_ADDRESS	7139	7107	7140
// OP_LOAD_V	7139	105	7143
// OP_STOREP_V	7143	7140	0
// OP_ADDRESS	7139	7111	7146
// OP_LOAD_V	7139	117	7149
// OP_STOREP_V	7149	7146	0
// OP_ADDRESS	7139	7115	7152
// OP_ADD_F	31	214	7153
// OP_STOREP_F	7153	7152	0
// OP_ADDRESS	7139	7116	7154
// OP_STOREP_F	213	7154	0
// OP_ADDRESS	7139	7117	7155
// OP_STOREP_ENT	7139	7155	0
// OP_ADDRESS	7139	206	7156
// OP_STOREP_S	348	7156	0
// OP_DONE	0	0	0
void (entity globaldef002617) func000338 = 
{
    globaldef002617.field000377 = globaldef002617.origin;
    globaldef002617.field000381 = globaldef002617.angles;
    globaldef002617.field000385 = time + TRUE;
    globaldef002617.field000386 = FALSE;
    globaldef002617.field000387 = globaldef002617;
    globaldef002617.message = string_null;
};

// func000339
// function begins at statement 9368, parm_start=7158
// OP_ADDRESS	7158	450	7163
// OP_STOREP_F	7119	7163	0
// OP_STORE_ENT	7158	7161	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7159	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7160	0
// OP_IFNOT	7160	31	0
// OP_LOAD_V	7160	105	7164
// OP_LOAD_V	7158	105	7167
// OP_SUB_V	7164	7167	7170
// OP_STORE_V	7170	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	7162	0
// OP_LOAD_F	7158	450	7173
// OP_LT	7162	7173	7174
// OP_IFNOT	7174	16	0
// OP_LOAD_V	7158	105	7175
// OP_LOAD_V	7158	166	7178
// OP_ADD_V	7175	7178	7181
// OP_STORE_V	7181	4	0
// OP_LOAD_V	7160	105	7184
// OP_ADD_V	7184	5392	7187
// OP_STORE_V	7187	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	7158	13	0
// OP_CALL4	466	0	0
// OP_GE	70	214	7190
// OP_IFNOT	7190	4	0
// OP_ADDRESS	7158	450	7191
// OP_STOREP_F	7162	7191	0
// OP_STORE_ENT	7160	7161	0
// OP_STORE_V	7160	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7159	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7160	0
// OP_GOTO	-30	0	0
// OP_RETURN	7161	0	0
// OP_DONE	0	0	0
entity (entity globaldef002619, string globaldef002620) func000339 = 
{
    local entity globaldef002621;
    local entity globaldef002622;
    local float globaldef002623;
    globaldef002619.distance = globaldef002600;
    globaldef002622 = globaldef002619;
    globaldef002621 = find(world, classname, globaldef002620);
    
    while(globaldef002621)
    {
        globaldef002623 = vlen(globaldef002621.origin - globaldef002619.origin);
        
        if(globaldef002623 < globaldef002619.distance)
        {
            traceline(globaldef002619.origin + globaldef002619.view_ofs, globaldef002621.origin + '0 0 16', TRUE, globaldef002619);
            
            if(trace_fraction >= TRUE)
            {
                globaldef002619.distance = globaldef002623;
                globaldef002622 = globaldef002621;
            }
            
        }
        
        globaldef002621 = find(globaldef002621, classname, globaldef002620);
    }
    
    return globaldef002622;
};

// func000340
// function begins at statement 9409, parm_start=7193
// OP_STORE_F	7119	7194	0
// OP_ADDRESS	7193	206	7196
// OP_STOREP_S	348	7196	0
// OP_ADDRESS	7193	7117	7197
// OP_STOREP_ENT	7193	7197	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4995	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7198
// OP_LT	7198	7194	7199
// OP_IFNOT	7199	7	0
// OP_LOAD_F	7193	450	7200
// OP_STORE_F	7200	7194	0
// OP_ADDRESS	7193	206	7201
// OP_STOREP_S	7202	7201	0
// OP_ADDRESS	7193	7117	7203
// OP_STOREP_ENT	7195	7203	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	5033	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7204
// OP_LT	7204	7194	7205
// OP_IFNOT	7205	7	0
// OP_LOAD_F	7193	450	7206
// OP_STORE_F	7206	7194	0
// OP_ADDRESS	7193	206	7207
// OP_STOREP_S	7208	7207	0
// OP_ADDRESS	7193	7117	7209
// OP_STOREP_ENT	7195	7209	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4476	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7210
// OP_LT	7210	7194	7211
// OP_IFNOT	7211	7	0
// OP_LOAD_F	7193	450	7212
// OP_STORE_F	7212	7194	0
// OP_ADDRESS	7193	206	7213
// OP_STOREP_S	7214	7213	0
// OP_ADDRESS	7193	7117	7215
// OP_STOREP_ENT	7195	7215	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4472	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7216
// OP_LT	7216	7194	7217
// OP_IFNOT	7217	7	0
// OP_LOAD_F	7193	450	7218
// OP_STORE_F	7218	7194	0
// OP_ADDRESS	7193	206	7219
// OP_STOREP_S	7220	7219	0
// OP_ADDRESS	7193	7117	7221
// OP_STOREP_ENT	7195	7221	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4619	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7222
// OP_LT	7222	7194	7223
// OP_IFNOT	7223	7	0
// OP_LOAD_F	7193	450	7224
// OP_STORE_F	7224	7194	0
// OP_ADDRESS	7193	206	7225
// OP_STOREP_S	7226	7225	0
// OP_ADDRESS	7193	7117	7227
// OP_STOREP_ENT	7195	7227	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4629	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7228
// OP_LT	7228	7194	7229
// OP_IFNOT	7229	7	0
// OP_LOAD_F	7193	450	7230
// OP_STORE_F	7230	7194	0
// OP_ADDRESS	7193	206	7231
// OP_STOREP_S	7232	7231	0
// OP_ADDRESS	7193	7117	7233
// OP_STOREP_ENT	7195	7233	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4639	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7234
// OP_LT	7234	7194	7235
// OP_IFNOT	7235	7	0
// OP_LOAD_F	7193	450	7236
// OP_STORE_F	7236	7194	0
// OP_ADDRESS	7193	206	7237
// OP_STOREP_S	7238	7237	0
// OP_ADDRESS	7193	7117	7239
// OP_STOREP_ENT	7195	7239	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4599	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7240
// OP_LT	7240	7194	7241
// OP_IFNOT	7241	7	0
// OP_LOAD_F	7193	450	7242
// OP_STORE_F	7242	7194	0
// OP_ADDRESS	7193	206	7243
// OP_STOREP_S	7244	7243	0
// OP_ADDRESS	7193	7117	7245
// OP_STOREP_ENT	7195	7245	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	5017	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7246
// OP_LT	7246	7194	7247
// OP_IFNOT	7247	7	0
// OP_LOAD_F	7193	450	7248
// OP_STORE_F	7248	7194	0
// OP_ADDRESS	7193	206	7249
// OP_STOREP_S	7250	7249	0
// OP_ADDRESS	7193	7117	7251
// OP_STOREP_ENT	7195	7251	0
// OP_STORE_V	7193	4	0
// OP_STORE_V	4998	7	0
// OP_CALL2	7157	0	0
// OP_STORE_ENT	1	7195	0
// OP_LOAD_F	7193	450	7252
// OP_LT	7252	7194	7253
// OP_IFNOT	7253	7	0
// OP_LOAD_F	7193	450	7254
// OP_STORE_F	7254	7194	0
// OP_ADDRESS	7193	206	7255
// OP_STOREP_S	7256	7255	0
// OP_ADDRESS	7193	7117	7257
// OP_STOREP_ENT	7195	7257	0
// OP_ADDRESS	7193	450	7258
// OP_STOREP_F	7194	7258	0
// OP_DONE	0	0	0
void (entity globaldef002625) func000340 = 
{
    local float globaldef002626;
    local entity globaldef002627;
    globaldef002626 = globaldef002600;
    globaldef002625.message = string_null;
    globaldef002625.field000387 = globaldef002625;
    globaldef002627 = func000339(globaldef002625, "item_artifact_invulnerability");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Pentagram of Protection";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "item_artifact_super_damage");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Quad Damage";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "item_armorInv");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Red Armor";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "item_armor2");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Yellow Armor";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "weapon_rocketlauncher");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Rocket Launcher";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "weapon_grenadelauncher");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Grenade Launcher";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "weapon_lightning");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Thunderbolt";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "weapon_supernailgun");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Super Nailgun";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "item_artifact_envirosuit");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Biosuit";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002627 = func000339(globaldef002625, "item_artifact_invisibility");
    
    if(globaldef002625.distance < globaldef002626)
    {
        globaldef002626 = globaldef002625.distance;
        globaldef002625.message = "Ring of Shadows";
        globaldef002625.field000387 = globaldef002627;
    }
    
    globaldef002625.distance = globaldef002626;
};

void (vector globaldef003474) func000584;
void (vector globaldef003479, entity globaldef003483) func000586;
// func000341
// function begins at statement 9547, parm_start=7262
// OP_CALL0	2814	0	0
// OP_STORE_ENT	1	7263	0
// OP_STORE_F	213	7264	0
// OP_LOAD_V	7263	105	7265
// OP_LOAD_V	7262	7107	7268
// OP_SUB_V	7265	7268	7271
// OP_STORE_V	7271	4	0
// OP_CALL1	462	0	0
// OP_LT	1	7119	7274
// OP_LT	7264	230	7275
// OP_AND	7274	7275	7276
// OP_IFNOT	7276	6	0
// OP_CALL0	2814	0	0
// OP_STORE_ENT	1	7263	0
// OP_ADD_F	7264	214	7277
// OP_STORE_F	7277	7264	0
// OP_GOTO	-13	0	0
// OP_LOAD_V	7262	105	7278
// OP_STORE_V	7278	4	0
// OP_CALL1	7259	0	0
// OP_STORE_V	7262	4	0
// OP_LOAD_V	7263	105	7281
// OP_ADD_V	7281	2967	7284
// OP_STORE_V	7284	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	7262	117	7287
// OP_LOAD_V	7263	117	7290
// OP_STOREP_V	7290	7287	0
// OP_ADDRESS	7262	174	7293
// OP_STOREP_F	214	7293	0
// OP_ADDRESS	7262	113	7294
// OP_STOREP_V	286	7294	0
// OP_ADDRESS	7262	182	7297
// OP_LOAD_F	7262	182	7298
// OP_LOAD_F	7262	182	7299
// OP_BITAND	7299	223	7300
// OP_SUB_F	7298	7300	7301
// OP_STOREP_F	7301	7297	0
// OP_LOAD_V	7262	117	7302
// OP_STORE_V	7302	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	7262	105	7305
// OP_MUL_VF	59	2323	7308
// OP_ADD_V	7305	7308	7311
// OP_STORE_V	7311	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	7262	105	7314
// OP_STORE_V	7314	4	0
// OP_STORE_V	7262	7	0
// OP_CALL2	7260	0	0
// OP_DONE	0	0	0
void (entity globaldef002641) func000341 = 
{
    local entity globaldef002642;
    local float globaldef002643;
    globaldef002642 = func000387();
    globaldef002643 = FALSE;
    
    while(((vlen(globaldef002642.origin - globaldef002641.field000377)) < globaldef002600) && (globaldef002643 < MOVETYPE_FLY))
    {
        globaldef002642 = func000387();
        globaldef002643 = globaldef002643 + TRUE;
    }
    
    func000584(globaldef002641.origin);
    setorigin(globaldef002641, globaldef002642.origin + '0 0 1');
    globaldef002641.angles = globaldef002642.angles;
    globaldef002641.fixangle = TRUE;
    globaldef002641.velocity = VEC_ORIGIN;
    globaldef002641.flags = globaldef002641.flags - (globaldef002641.flags & FL_ONGROUND);
    makevectors(globaldef002641.angles);
    func000584(globaldef002641.origin + (v_forward * 20));
    func000586(globaldef002641.origin, globaldef002641);
};

// func000342
// function begins at statement 9598, parm_start=7318
// OP_LOAD_F	7318	152	7319
// OP_GT	7319	235	7320
// OP_IFNOT	7320	3	0
// OP_ADDRESS	7318	152	7321
// OP_STOREP_F	235	7321	0
// OP_ADDRESS	7318	188	7322
// OP_STOREP_F	213	7322	0
// OP_ADDRESS	7318	380	7323
// OP_STOREP_F	213	7323	0
// OP_DONE	0	0	0
void (entity globaldef002645) func000342 = 
{
    
    if(globaldef002645.health > MOVETYPE_BOUNCE)
    {
        globaldef002645.health = MOVETYPE_BOUNCE;
    }
    
    globaldef002645.armorvalue = FALSE;
    globaldef002645.invincible_finished = FALSE;
};

// func000343
// function begins at statement 9608, parm_start=7325
// OP_ADDRESS	7325	162	7326
// OP_LOAD_F	7325	162	7327
// OP_LOAD_F	7325	162	7328
// OP_BITOR	255	256	7329
// OP_BITOR	7329	257	7330
// OP_BITOR	7330	258	7331
// OP_BITOR	7331	259	7332
// OP_BITOR	7332	260	7333
// OP_BITOR	7333	262	7334
// OP_BITOR	7334	263	7335
// OP_BITOR	7335	264	7336
// OP_BITOR	7336	265	7337
// OP_BITAND	7328	7337	7338
// OP_SUB_F	7327	7338	7339
// OP_STOREP_F	7339	7326	0
// OP_ADDRESS	7325	154	7340
// OP_STOREP_F	253	7340	0
// OP_ADDRESS	7325	157	7341
// OP_STOREP_F	213	7341	0
// OP_ADDRESS	7325	155	7342
// OP_STOREP_S	6152	7342	0
// OP_ADDRESS	7325	156	7343
// OP_STOREP_F	213	7343	0
// OP_DONE	0	0	0
void (entity globaldef002647) func000343 = 
{
    globaldef002647.items = globaldef002647.items - (globaldef002647.items & (((((((((IT_SUPER_SHOTGUN | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_SHELLS) | IT_NAILS) | IT_ROCKETS) | IT_CELLS));
    globaldef002647.weapon = IT_AXE;
    globaldef002647.currentammo = FALSE;
    globaldef002647.weaponmodel = "progs/v_axe.mdl";
    globaldef002647.weaponframe = FALSE;
};

// func000344
// function begins at statement 9632, parm_start=7345
// OP_STORE_V	7345	4	0
// OP_STORE_V	2019	7	0
// OP_CALL2	7085	0	0
// OP_DONE	0	0	0
void (entity globaldef002649) func000344 = 
{
    func000335(globaldef002649, 60);
};

// func000345
// function begins at statement 9636, parm_start=7347
// OP_STORE_V	7347	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	852	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	7349	0
// OP_EQ_F	7128	7127	7350
// OP_IFNOT	7350	23	0
// OP_NOT_F	822	0	7351
// OP_LT	7349	6277	7352
// OP_AND	7351	7352	7353
// OP_IFNOT	7353	4	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7344	0	0
// OP_GOTO	15	0	0
// OP_LT	7349	539	7354
// OP_IFNOT	7354	4	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7317	0	0
// OP_GOTO	10	0	0
// OP_LT	7349	6280	7355
// OP_IFNOT	7355	4	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7324	0	0
// OP_GOTO	5	0	0
// OP_LT	7349	214	7356
// OP_IFNOT	7356	3	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7261	0	0
// OP_GOTO	10	0	0
// OP_NOT_F	822	0	7357
// OP_LT	7349	539	7358
// OP_AND	7357	7358	7359
// OP_IFNOT	7359	4	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7344	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7261	0	0
// OP_LOAD_S	7347	180	7360
// OP_STORE_V	7360	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7361	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7362	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7363	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7347	206	7364
// OP_NE_S	7364	348	7365
// OP_IFNOT	7365	6	0
// OP_STORE_V	7366	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7347	206	7367
// OP_STORE_V	7367	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7347	4	0
// OP_CALL1	7138	0	0
// OP_DONE	0	0	0
void (entity globaldef002651) func000345 = 
{
    local string globaldef002652;
    local float globaldef002653;
    centerprint(globaldef002651, "");
    globaldef002653 = random();
    if(globaldef002609 == globaldef002608)
    {
        if(!globaldef000805 && (globaldef002653 < 0.25))
        {
            func000344(globaldef002651);
        }
        else
        {
            if(globaldef002653 < globaldef000522)
            {
                func000342(globaldef002651);
            }
            else
            {
                if(globaldef002653 < 0.75)
                {
                    func000343(globaldef002651);
                }
                else
                {
                    
                    if(globaldef002653 < TRUE)
                    {
                        func000341(globaldef002651);
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(!globaldef000805 && (globaldef002653 < globaldef000522))
        {
            func000344(globaldef002651);
        }
        else
        {
            func000341(globaldef002651);
        }
        
    }
    
    func000336(globaldef002651.netname);
    func000336(" is ");
    func000336("punished");
    func000336(" for camping");
    
    if(globaldef002651.message != string_null)
    {
        func000336(" near the ");
        func000336(globaldef002651.message);
    }
    
    func000336("\n");
    func000338(globaldef002651);
};

// func000346
// function begins at statement 9696, parm_start=7369
// OP_LOAD_F	7369	7116	7373
// OP_EQ_F	7373	7120	7374
// OP_IFNOT	7374	23	0
// OP_LOAD_S	7369	180	7375
// OP_STORE_V	7375	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7361	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7376	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7369	206	7377
// OP_NE_S	7377	348	7378
// OP_IFNOT	7378	6	0
// OP_STORE_V	7366	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7369	206	7379
// OP_STORE_V	7379	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	7104	0	0
// OP_ADDRESS	7369	7116	7380
// OP_LOAD_F	7369	7116	7381
// OP_ADD_F	7381	3036	7382
// OP_STOREP_F	7382	7380	0
// OP_GOTO	57	0	0
// OP_LOAD_F	7369	7116	7383
// OP_EQ_F	7383	7121	7384
// OP_IFNOT	7384	54	0
// OP_LOAD_S	7369	180	7385
// OP_STORE_V	7385	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	7361	4	0
// OP_CALL1	7104	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	7371	0
// OP_LT	7371	7386	7387
// OP_IFNOT	7387	4	0
// OP_STORE_V	7388	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	28	0	0
// OP_LT	7371	7389	7390
// OP_IFNOT	7390	4	0
// OP_STORE_V	7391	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	23	0	0
// OP_LT	7371	7392	7393
// OP_IFNOT	7393	4	0
// OP_STORE_V	7394	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	18	0	0
// OP_LT	7371	7395	7396
// OP_IFNOT	7396	4	0
// OP_STORE_V	7397	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	13	0	0
// OP_LT	7371	5599	7398
// OP_IFNOT	7398	4	0
// OP_STORE_V	7399	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	8	0	0
// OP_LT	7371	7400	7401
// OP_IFNOT	7401	4	0
// OP_STORE_V	7402	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	7403	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7369	206	7404
// OP_NE_S	7404	348	7405
// OP_IFNOT	7405	6	0
// OP_STORE_V	7366	4	0
// OP_CALL1	7104	0	0
// OP_LOAD_S	7369	206	7406
// OP_STORE_V	7406	4	0
// OP_CALL1	7104	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	7104	0	0
// OP_ADDRESS	7369	7116	7407
// OP_LOAD_F	7369	7116	7408
// OP_ADD_F	7408	3036	7409
// OP_STOREP_F	7409	7407	0
// OP_DONE	0	0	0
void (entity globaldef002659) func000346 = 
{
    local string globaldef002660;
    local float globaldef002661;
    local float globaldef002662;
    if(globaldef002659.field000386 == globaldef002601)
    {
        func000336(globaldef002659.netname);
        func000336(" is ");
        func000336("suspected of camping");
        
        if(globaldef002659.message != string_null)
        {
            func000336(" near the ");
            func000336(globaldef002659.message);
        }
        
        func000336("\n");
        globaldef002659.field000386 = globaldef002659.field000386 + 0.1;
    }
    else
    {
        
        if(globaldef002659.field000386 == globaldef002602)
        {
            func000336(globaldef002659.netname);
            func000336(" is ");
            globaldef002661 = random();
            if(globaldef002661 < 0.14)
            {
                func000336("building a house");
            }
            else
            {
                if(globaldef002661 < 0.28)
                {
                    func000336("taking up permanent residence");
                }
                else
                {
                    if(globaldef002661 < 0.42)
                    {
                        func000336("fortifying his position");
                    }
                    else
                    {
                        if(globaldef002661 < 0.56)
                        {
                            func000336("not able to break up camp");
                        }
                        else
                        {
                            if(globaldef002661 < 0.7)
                            {
                                func000336("saying 'hi' from his new home");
                            }
                            else
                            {
                                if(globaldef002661 < 0.84)
                                {
                                    func000336("holding a garage sale");
                                }
                                else
                                {
                                    func000336("digging a trench");
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(globaldef002659.message != string_null)
            {
                func000336(" near the ");
                func000336(globaldef002659.message);
            }
            
            func000336("\n");
            globaldef002659.field000386 = globaldef002659.field000386 + 0.1;
        }
        
    }
    
};

// func000347
// function begins at statement 9778, parm_start=7411
// OP_LOAD_F	7411	173	7412
// OP_EQ_F	7412	7413	7414
// OP_IFNOT	7414	6	0
// OP_STORE_V	7411	4	0
// OP_STORE_V	7415	7	0
// OP_CALL2	852	0	0
// OP_ADDRESS	7411	173	7416
// OP_STOREP_F	213	7416	0
// OP_LOAD_F	7411	7115	7417
// OP_LT	7417	31	7418
// OP_IFNOT	7418	73	0
// OP_ADDRESS	7411	7115	7419
// OP_ADD_F	31	214	7420
// OP_STOREP_F	7420	7419	0
// OP_EQ_F	7128	7124	7421
// OP_IFNOT	7421	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	7422
// OP_LE	7422	213	7423
// OP_IFNOT	7423	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	7411	117	7424
// OP_LOAD_V	7411	7111	7427
// OP_NE_V	7424	7427	7430
// OP_IFNOT	7430	27	0
// OP_LOAD_V	7411	105	7431
// OP_LOAD_V	7411	7107	7434
// OP_SUB_V	7431	7434	7437
// OP_STORE_V	7437	4	0
// OP_CALL1	462	0	0
// OP_LT	1	7119	7440
// OP_IFNOT	7440	8	0
// OP_ADDRESS	7411	7116	7441
// OP_LOAD_F	7411	7116	7442
// OP_STORE_V	7442	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	1	214	7443
// OP_STOREP_F	7443	7441	0
// OP_GOTO	10	0	0
// OP_ADDRESS	7411	7107	7444
// OP_LOAD_V	7411	105	7447
// OP_STOREP_V	7447	7444	0
// OP_ADDRESS	7411	7116	7450
// OP_STOREP_F	213	7450	0
// OP_ADDRESS	7411	7117	7451
// OP_STOREP_ENT	7411	7451	0
// OP_ADDRESS	7411	206	7452
// OP_STOREP_S	348	7452	0
// OP_ADDRESS	7411	7111	7453
// OP_LOAD_V	7411	117	7456
// OP_STOREP_V	7456	7453	0
// OP_LOAD_F	7411	7116	7459
// OP_GE	7459	7120	7460
// OP_IFNOT	7460	30	0
// OP_LOAD_ENT	7411	7117	7461
// OP_EQ_E	7461	7411	7462
// OP_IFNOT	7462	10	0
// OP_STORE_V	7411	4	0
// OP_CALL1	7192	0	0
// OP_LOAD_ENT	7411	7117	7463
// OP_NE_E	7463	7411	7464
// OP_IFNOT	7464	5	0
// OP_ADDRESS	7411	7107	7465
// OP_LOAD_ENT	7411	7117	7468
// OP_LOAD_V	7468	105	7469
// OP_STOREP_V	7469	7465	0
// OP_STORE_V	7411	4	0
// OP_CALL1	7368	0	0
// OP_EQ_F	7128	7126	7472
// OP_EQ_F	7128	7127	7473
// OP_OR	7472	7473	7474
// OP_IFNOT	7474	12	0
// OP_LOAD_F	7411	7116	7475
// OP_GE	7475	7122	7476
// OP_IFNOT	7476	4	0
// OP_STORE_V	7411	4	0
// OP_STORE_V	7477	7	0
// OP_CALL2	852	0	0
// OP_LOAD_F	7411	7116	7478
// OP_EQ_F	7478	7123	7479
// OP_IFNOT	7479	3	0
// OP_STORE_V	7411	4	0
// OP_CALL1	7346	0	0
// OP_DONE	0	0	0
void (entity globaldef002677) func000347 = 
{
    
    if(globaldef002677.impulse == 254)
    {
        centerprint(globaldef002677, "\n\n\nThis server is running the\n\nOmicron Camper Exterminator");
        globaldef002677.impulse = FALSE;
    }
    
    
    if(globaldef002677.field000385 < time)
    {
        globaldef002677.field000385 = time + TRUE;
        
        if(globaldef002609 == globaldef002605)
        {
            return;
        }
        
        
        if(self.health <= FALSE)
        {
            return;
        }
        
        
        if(globaldef002677.angles != globaldef002677.field000381)
        {
            if((vlen(globaldef002677.origin - globaldef002677.field000377)) < globaldef002600)
            {
                globaldef002677.field000386 = floor(globaldef002677.field000386) + TRUE;
            }
            else
            {
                globaldef002677.field000377 = globaldef002677.origin;
                globaldef002677.field000386 = FALSE;
                globaldef002677.field000387 = globaldef002677;
                globaldef002677.message = string_null;
            }
            
            globaldef002677.field000381 = globaldef002677.angles;
        }
        
        
        if(globaldef002677.field000386 >= globaldef002601)
        {
            
            if(globaldef002677.field000387 == globaldef002677)
            {
                func000340(globaldef002677);
                
                if(globaldef002677.field000387 != globaldef002677)
                {
                    globaldef002677.field000377 = globaldef002677.field000387.origin;
                }
                
            }
            
            func000346(globaldef002677);
            
            if((globaldef002609 == globaldef002607) || (globaldef002609 == globaldef002608))
            {
                
                if(globaldef002677.field000386 >= globaldef002603)
                {
                    centerprint(globaldef002677, "Stop camping or you'll be punished!");
                }
                
                
                if(globaldef002677.field000386 == globaldef002604)
                {
                    func000345(globaldef002677);
                }
                
            }
            
        }
        
    }
    
};

float globaldef002681;
// func000348
// function begins at statement 9862, parm_start=7482
// OP_STORE_V	7490	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	7485	0
// OP_STORE_V	7485	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7485	0
// OP_EQ_F	7485	213	7491
// OP_IFNOT	7491	4	0
// OP_STORE_V	7483	4	0
// OP_CALL1	507	0	0
// OP_GOTO	96	0	0
// OP_EQ_F	7485	214	7492
// OP_EQ_F	7485	276	7493
// OP_OR	7492	7493	7494
// OP_IFNOT	7494	4	0
// OP_STORE_V	7482	4	0
// OP_CALL1	507	0	0
// OP_GOTO	89	0	0
// OP_GE	7485	216	7495
// OP_IFNOT	7495	52	0
// OP_DIV_F	7485	220	7496
// OP_BITAND	7496	7480	7497
// OP_STORE_F	7497	7486	0
// OP_DIV_F	7485	226	7498
// OP_BITAND	7498	7480	7499
// OP_STORE_F	7499	7487	0
// OP_DIV_F	7485	271	7500
// OP_BITAND	7500	7480	7501
// OP_STORE_F	7501	7488	0
// OP_BITAND	7485	7480	7502
// OP_STORE_F	7502	7485	0
// OP_LT	7485	228	7503
// OP_IFNOT	7503	2	0
// OP_STORE_F	213	7487	0
// OP_LT	7485	229	7504
// OP_IFNOT	7504	2	0
// OP_STORE_F	213	7488	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7485	7505
// OP_STORE_V	7505	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	7506
// OP_STORE_F	7506	7484	0
// OP_EQ_F	7484	7486	7507
// OP_EQ_F	7484	7487	7508
// OP_OR	7507	7508	7509
// OP_EQ_F	7484	7488	7510
// OP_OR	7509	7510	7511
// OP_IF	7511	-11	0
// OP_MUL_F	7484	220	7512
// OP_ADD_F	7485	7512	7513
// OP_MUL_F	7486	226	7514
// OP_ADD_F	7513	7514	7515
// OP_MUL_F	7487	271	7516
// OP_ADD_F	7515	7516	7517
// OP_STORE_V	7517	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7490	4	0
// OP_STORE_V	7489	7	0
// OP_CALL2	508	0	0
// OP_STORE_V	7484	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7518	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	7489	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	491	0	0
// OP_GOTO	36	0	0
// OP_STORE_V	7485	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	7485	0
// OP_DIV_F	7485	220	7519
// OP_BITAND	7519	7480	7520
// OP_STORE_F	7520	7486	0
// OP_BITAND	7485	7480	7521
// OP_STORE_F	7521	7485	0
// OP_EQ_F	7486	213	7522
// OP_IFNOT	7522	3	0
// OP_STORE_F	216	7486	0
// OP_GOTO	6	0	0
// OP_ADD_F	7486	214	7523
// OP_STORE_F	7523	7486	0
// OP_GT	7486	7485	7524
// OP_IFNOT	7524	2	0
// OP_STORE_F	214	7486	0
// OP_MUL_F	7486	220	7525
// OP_ADD_F	7485	7525	7526
// OP_MUL_F	276	7526	7527
// OP_STORE_V	7527	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7490	4	0
// OP_STORE_V	7489	7	0
// OP_CALL2	508	0	0
// OP_STORE_V	7486	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7518	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	7489	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	491	0	0
// OP_DONE	0	0	0
void (string globaldef002683, string globaldef002684) func000348 = 
{
    local float globaldef002685;
    local float globaldef002686;
    local float globaldef002687;
    local float globaldef002688;
    local float globaldef002689;
    local string globaldef002690;
    globaldef002686 = cvar("samelevel");
    globaldef002686 = rint(globaldef002686);
    if(globaldef002686 == FALSE)
    {
        changelevel(globaldef002684);
    }
    else
    {
        if((globaldef002686 == TRUE) || (globaldef002686 == CONTENT_EMPTY))
        {
            changelevel(globaldef002683);
        }
        else
        {
            if(globaldef002686 >= FL_SWIM)
            {
                globaldef002687 = (globaldef002686 / FL_GODMODE) & globaldef002681;
                globaldef002688 = (globaldef002686 / FL_JUMPRELEASED) & globaldef002681;
                globaldef002689 = (globaldef002686 / IT_KEY2) & globaldef002681;
                globaldef002686 = globaldef002686 & globaldef002681;
                
                if(globaldef002686 < MOVETYPE_WALK)
                {
                    globaldef002688 = FALSE;
                }
                
                
                if(globaldef002686 < MOVETYPE_STEP)
                {
                    globaldef002689 = FALSE;
                }
                
                do
                {
                    globaldef002685 = TRUE + (floor(random() * globaldef002686));
                } while (((globaldef002685 == globaldef002687) || (globaldef002685 == globaldef002688)) || (globaldef002685 == globaldef002689));
                globaldef002690 = ftos(((globaldef002686 + (globaldef002685 * FL_GODMODE)) + (globaldef002687 * FL_JUMPRELEASED)) + (globaldef002688 * IT_KEY2));
                cvar_set("samelevel", globaldef002690);
                globaldef002690 = ftos(globaldef002685);
                localcmd("map");
                localcmd(globaldef002690);
                localcmd("\n");
            }
            else
            {
                globaldef002686 = fabs(globaldef002686);
                globaldef002687 = (globaldef002686 / FL_GODMODE) & globaldef002681;
                globaldef002686 = globaldef002686 & globaldef002681;
                if(globaldef002687 == FALSE)
                {
                    globaldef002687 = FL_SWIM;
                }
                else
                {
                    globaldef002687 = globaldef002687 + TRUE;
                    
                    if(globaldef002687 > globaldef002686)
                    {
                        globaldef002687 = TRUE;
                    }
                    
                }
                
                globaldef002690 = ftos(CONTENT_EMPTY * (globaldef002686 + (globaldef002687 * FL_GODMODE)));
                cvar_set("samelevel", globaldef002690);
                globaldef002690 = ftos(globaldef002687);
                localcmd("map");
                localcmd(globaldef002690);
                localcmd("\n");
            }
            
        }
        
    }
    
};

// func000349
// function begins at statement 9969, parm_start=7529
// OP_LOAD_V	7529	134	7546
// OP_ADD_V	7530	7546	7549
// OP_SUB_V	7549	7552	7555
// OP_STORE_V	7555	7537	0
// OP_LOAD_V	7529	138	7558
// OP_ADD_V	7530	7558	7561
// OP_ADD_V	7561	7552	7564
// OP_STORE_V	7564	7534	0
// OP_STORE_ENT	833	7533	0
// OP_IFNOT	7533	25	0
// OP_LOAD_V	7533	105	7567
// OP_LOAD_V	7533	134	7570
// OP_ADD_V	7567	7570	7573
// OP_STORE_V	7573	7543	0
// OP_LOAD_V	7533	105	7576
// OP_LOAD_V	7533	138	7579
// OP_ADD_V	7576	7579	7582
// OP_STORE_V	7582	7540	0
// OP_LE	7543	7534	7585
// OP_GE	7540	7537	7586
// OP_AND	7585	7586	7587
// OP_IFNOT	7587	10	0
// OP_LE	7544	7535	7588
// OP_GE	7541	7538	7589
// OP_AND	7588	7589	7590
// OP_IFNOT	7590	6	0
// OP_LE	7545	7536	7591
// OP_GE	7542	7539	7592
// OP_AND	7591	7592	7593
// OP_IFNOT	7593	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	7533	620	7594
// OP_STORE_ENT	7594	7533	0
// OP_GOTO	-24	0	0
// OP_STORE_ENT	834	7533	0
// OP_IFNOT	7533	25	0
// OP_LOAD_V	7533	105	7595
// OP_LOAD_V	7533	134	7598
// OP_ADD_V	7595	7598	7601
// OP_STORE_V	7601	7543	0
// OP_LOAD_V	7533	105	7604
// OP_LOAD_V	7533	138	7607
// OP_ADD_V	7604	7607	7610
// OP_STORE_V	7610	7540	0
// OP_LE	7543	7534	7613
// OP_GE	7540	7537	7614
// OP_AND	7613	7614	7615
// OP_IFNOT	7615	10	0
// OP_LE	7544	7535	7616
// OP_GE	7541	7538	7617
// OP_AND	7616	7617	7618
// OP_IFNOT	7618	6	0
// OP_LE	7545	7536	7619
// OP_GE	7542	7539	7620
// OP_AND	7619	7620	7621
// OP_IFNOT	7621	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	7533	620	7622
// OP_STORE_ENT	7622	7533	0
// OP_GOTO	-24	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef002694, vector globaldef002695) func000349 = 
{
    local entity globaldef002699;
    local vector globaldef002700;
    local vector globaldef002704;
    local vector globaldef002708;
    local vector globaldef002712;
    globaldef002704 = (globaldef002695 + globaldef002694.mins) - '50 50 50';
    globaldef002700 = (globaldef002695 + globaldef002694.maxs) + '50 50 50';
    globaldef002699 = globaldef000816;
    
    while(globaldef002699)
    {
        globaldef002712 = globaldef002699.origin + globaldef002699.mins;
        globaldef002708 = globaldef002699.origin + globaldef002699.maxs;
        
        if((globaldef002712_x <= globaldef002700_x) && (globaldef002708_x >= globaldef002704_x))
        {
            
            if((0 <= 0) && (0 >= 0))
            {
                
                if((0 <= 0) && (0 >= 0))
                {
                    return TRUE;
                }
                
            }
            
        }
        
        globaldef002699 = globaldef002699.field000297;
    }
    
    globaldef002699 = globaldef000817;
    
    while(globaldef002699)
    {
        globaldef002712 = globaldef002699.origin + globaldef002699.mins;
        globaldef002708 = globaldef002699.origin + globaldef002699.maxs;
        
        if((globaldef002712_x <= globaldef002700_x) && (globaldef002708_x >= globaldef002704_x))
        {
            
            if((0 <= 0) && (0 >= 0))
            {
                
                if((0 <= 0) && (0 >= 0))
                {
                    return TRUE;
                }
                
            }
            
        }
        
        globaldef002699 = globaldef002699.field000297;
    }
    
    return FALSE;
};

// func000350
// function begins at statement 10031, parm_start=7624
// OP_STORE_F	213	7626	0
// OP_CALL0	2814	0	0
// OP_STORE_ENT	1	7625	0
// OP_STORE_V	7624	4	0
// OP_LOAD_V	7625	105	7627
// OP_STORE_V	7627	7	0
// OP_CALL2	7528	0	0
// OP_NOT_F	1	0	7630
// OP_IFNOT	7630	2	0
// OP_RETURN	7625	0	0
// OP_ADD_F	7626	214	7631
// OP_STORE_F	7631	7626	0
// OP_LT	7626	235	7632
// OP_IF	7632	-12	0
// OP_RETURN	7625	0	0
// OP_DONE	0	0	0
entity (entity globaldef002718) func000350 = 
{
    local entity globaldef002719;
    local float globaldef002720;
    globaldef002720 = FALSE;
    do
    {
        globaldef002719 = func000387();
        
        if(!func000349(globaldef002718, globaldef002719.origin))
        {
            return globaldef002719;
        }
        
        globaldef002720 = globaldef002720 + TRUE;
    } while (globaldef002720 < MOVETYPE_BOUNCE);
    return globaldef002719;
};

// func000351
// function begins at statement 10047, parm_start=7634
// OP_LOAD_F	7634	371	7638
// OP_LE	7638	31	7639
// OP_IFNOT	7639	15	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1129	0	0
// OP_STORE_V	1	7635	0
// OP_LOAD_ENT	7634	194	7640
// OP_ADDRESS	7640	194	7641
// OP_LOAD_ENT	7634	194	7642
// OP_STOREP_ENT	7642	7641	0
// OP_LOAD_ENT	7634	194	7643
// OP_STORE_V	7643	4	0
// OP_STORE_V	7635	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	7634	371	7644
// OP_ADD_F	31	228	7645
// OP_STOREP_F	7645	7644	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1128	0	0
// OP_ADDRESS	7634	113	7646
// OP_LOAD_ENT	7634	194	7649
// OP_LOAD_V	7649	105	7650
// OP_LOAD_V	7634	105	7653
// OP_SUB_V	7650	7653	7656
// OP_STOREP_V	7656	7646	0
// OP_ADDRESS	7634	116	7659
// OP_STOREP_F	213	7659	0
// OP_ADDRESS	7634	113	7660
// OP_LOAD_V	7634	113	7663
// OP_STORE_V	7663	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	1	800	7666
// OP_STOREP_V	7666	7660	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	7669
// OP_IFNOT	7669	5	0
// OP_ADDRESS	7634	371	7670
// OP_LOAD_F	7634	371	7671
// OP_SUB_F	7671	214	7672
// OP_STOREP_F	7672	7670	0
// OP_DONE	0	0	0
void (entity globaldef002722) func000351 = 
{
    local vector globaldef002723;
    
    if(globaldef002722.search_time <= time)
    {
        globaldef002723 = func002474(globaldef002722);
        globaldef002722.goalentity.goalentity = globaldef002722.goalentity;
        setorigin(globaldef002722.goalentity, globaldef002723);
        globaldef002722.search_time = time + MOVETYPE_WALK;
    }
    
    func002468(globaldef002722);
    globaldef002722.velocity = globaldef002722.goalentity.origin - globaldef002722.origin;
    globaldef002722.velocity_z = FALSE;
    globaldef002722.velocity = normalize(globaldef002722.velocity) * globaldef000783;
    
    if(!func002446(globaldef002722))
    {
        globaldef002722.search_time = globaldef002722.search_time - TRUE;
    }
    
};

// func000352
// function begins at statement 10089, parm_start=7674
// OP_ADDRESS	7674	611	7675
// OP_STOREP_F	213	7675	0
// OP_ADDRESS	7674	163	7676
// OP_STOREP_F	250	7676	0
// OP_ADDRESS	7674	181	7677
// OP_STOREP_ENT	30	7677	0
// OP_ADDRESS	7674	551	7678
// OP_STOREP_FNC	7633	7678	0
// OP_DONE	0	0	0
void (entity globaldef002728) func000352 = 
{
    globaldef002728.field000288 = FALSE;
    globaldef002728.takedamage = DAMAGE_NO;
    globaldef002728.enemy = world;
    globaldef002728.field000228 = func000351;
};

// func000353
// function begins at statement 10098, parm_start=7679
// OP_STORE_F	213	7683	0
// OP_STORE_F	213	7684	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7689	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_IFNOT	7680	2	0
// OP_RETURN	7680	0	0
// OP_STORE_ENT	30	7688	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_IFNOT	7680	34	0
// OP_ADD_F	7684	214	7690
// OP_STORE_F	7690	7684	0
// OP_LOAD_V	7680	105	7691
// OP_STORE_V	7691	4	0
// OP_STORE_V	7694	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	7682	0
// OP_STORE_F	213	7686	0
// OP_IFNOT	7682	12	0
// OP_LOAD_S	7682	129	7695
// OP_EQ_S	7695	1236	7696
// OP_LOAD_S	7682	129	7697
// OP_EQ_S	7697	1241	7698
// OP_OR	7696	7698	7699
// OP_IFNOT	7699	3	0
// OP_ADD_F	7686	214	7700
// OP_STORE_F	7700	7686	0
// OP_LOAD_ENT	7682	164	7701
// OP_STORE_ENT	7701	7682	0
// OP_GOTO	-11	0	0
// OP_EQ_F	7686	213	7702
// OP_IFNOT	7702	6	0
// OP_ADDRESS	7680	194	7703
// OP_STOREP_ENT	7688	7703	0
// OP_STORE_ENT	7680	7688	0
// OP_ADD_F	7683	214	7704
// OP_STORE_F	7704	7683	0
// OP_STORE_V	7680	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GOTO	-33	0	0
// OP_SUB_F	7684	214	7705
// OP_STORE_F	7705	7684	0
// OP_NOT_F	7683	0	7706
// OP_IFNOT	7706	22	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7684	7707
// OP_STORE_V	7707	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7684	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GT	7684	213	7708
// OP_IFNOT	7708	9	0
// OP_SUB_F	7684	214	7709
// OP_STORE_F	7709	7684	0
// OP_STORE_V	7680	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GOTO	-9	0	0
// OP_RETURN	7680	0	0
// OP_SUB_F	7683	214	7710
// OP_STORE_F	7710	7683	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7683	7711
// OP_STORE_V	7711	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7683	0
// OP_STORE_ENT	7688	7680	0
// OP_GT	7683	213	7712
// OP_IFNOT	7712	6	0
// OP_LOAD_ENT	7680	194	7713
// OP_STORE_ENT	7713	7680	0
// OP_SUB_F	7683	214	7714
// OP_STORE_F	7714	7683	0
// OP_GOTO	-6	0	0
// OP_RETURN	7680	0	0
// OP_DONE	0	0	0
entity (string globaldef002729) func000353 = 
{
    local entity globaldef002730;
    local entity globaldef002731;
    local entity globaldef002732;
    local float globaldef002733;
    local float globaldef002734;
    local float globaldef002735;
    local float globaldef002736;
    local float globaldef002737;
    local entity globaldef002738;
    globaldef002733 = FALSE;
    globaldef002734 = FALSE;
    globaldef002730 = find(world, classname, "testplayerstart");
    
    if(globaldef002730)
    {
        return globaldef002730;
    }
    
    globaldef002738 = world;
    globaldef002730 = find(world, classname, globaldef002729);
    
    while(globaldef002730)
    {
        globaldef002734 = globaldef002734 + TRUE;
        globaldef002732 = findradius(globaldef002730.origin, 84);
        globaldef002736 = FALSE;
        
        while(globaldef002732)
        {
            
            if((globaldef002732.classname == "player") || (globaldef002732.classname == "bot"))
            {
                globaldef002736 = globaldef002736 + TRUE;
            }
            
            globaldef002732 = globaldef002732.chain;
        }
        
        
        if(globaldef002736 == FALSE)
        {
            globaldef002730.goalentity = globaldef002738;
            globaldef002738 = globaldef002730;
            globaldef002733 = globaldef002733 + TRUE;
        }
        
        globaldef002730 = find(globaldef002730, classname, globaldef002729);
    }
    
    globaldef002734 = globaldef002734 - TRUE;
    
    if(!globaldef002733)
    {
        globaldef002734 = rint(random() * globaldef002734);
        globaldef002730 = find(world, classname, globaldef002729);
        
        while(globaldef002734 > FALSE)
        {
            globaldef002734 = globaldef002734 - TRUE;
            globaldef002730 = find(globaldef002730, classname, globaldef002729);
        }
        
        return globaldef002730;
    }
    
    globaldef002733 = globaldef002733 - TRUE;
    globaldef002733 = rint(random() * globaldef002733);
    globaldef002730 = globaldef002738;
    
    while(globaldef002733 > FALSE)
    {
        globaldef002730 = globaldef002730.goalentity;
        globaldef002733 = globaldef002733 - TRUE;
    }
    
    return globaldef002730;
};

// func000354
// function begins at statement 10189, parm_start=7716
// OP_LOAD_F	7716	533	7717
// OP_GT	7717	232	7718
// OP_IFNOT	7718	3	0
// OP_RETURN	7719	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	7716	533	7720
// OP_EQ_F	7720	232	7721
// OP_IFNOT	7721	3	0
// OP_RETURN	7722	0	0
// OP_GOTO	30	0	0
// OP_LOAD_F	7716	533	7723
// OP_EQ_F	7723	231	7724
// OP_IFNOT	7724	3	0
// OP_RETURN	7725	0	0
// OP_GOTO	25	0	0
// OP_LOAD_F	7716	533	7726
// OP_EQ_F	7726	230	7727
// OP_IFNOT	7727	3	0
// OP_RETURN	7728	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	7716	533	7729
// OP_EQ_F	7729	229	7730
// OP_IFNOT	7730	3	0
// OP_RETURN	7731	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	7716	533	7732
// OP_EQ_F	7732	228	7733
// OP_IFNOT	7733	3	0
// OP_RETURN	7734	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	7716	533	7735
// OP_EQ_F	7735	216	7736
// OP_IFNOT	7736	3	0
// OP_RETURN	7737	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	7716	533	7738
// OP_EQ_F	7738	214	7739
// OP_IFNOT	7739	2	0
// OP_RETURN	7740	0	0
// OP_RETURN	7741	0	0
// OP_DONE	0	0	0
string (entity globaldef002742) func000354 = 
{
    if(globaldef002742.statstate > MOVETYPE_PUSH)
    {
        return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
    }
    else
    {
        if(globaldef002742.statstate == MOVETYPE_PUSH)
        {
            return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
        }
        else
        {
            if(globaldef002742.statstate == MOVETYPE_TOSS)
            {
                return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
            }
            else
            {
                if(globaldef002742.statstate == MOVETYPE_FLY)
                {
                    return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                }
                else
                {
                    if(globaldef002742.statstate == MOVETYPE_STEP)
                    {
                        return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                    }
                    else
                    {
                        if(globaldef002742.statstate == MOVETYPE_WALK)
                        {
                            return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                        }
                        else
                        {
                            if(globaldef002742.statstate == FL_SWIM)
                            {
                                return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                            }
                            else
                            {
                                
                                if(globaldef002742.statstate == TRUE)
                                {
                                    return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return "\n\n\n\n\n\n\n\n\n\n\n\n";
};

// func000355
// function begins at statement 10230, parm_start=7743
// OP_ADDRESS	7743	532	7749
// OP_ADD_F	31	539	7750
// OP_STOREP_F	7750	7749	0
// OP_STORE_V	7743	4	0
// OP_CALL1	7715	0	0
// OP_STORE_S	1	7748	0
// OP_STORE_V	7743	4	0
// OP_STORE_V	7748	7	0
// OP_LOAD_S	541	180	7751
// OP_STORE_V	7751	10	0
// OP_STORE_V	7752	13	0
// OP_LOAD_S	542	180	7753
// OP_STORE_V	7753	16	0
// OP_STORE_V	7754	19	0
// OP_CALL6	882	0	0
// OP_LOAD_F	541	152	7755
// OP_GT	7755	213	7756
// OP_IFNOT	7756	4	0
// OP_ADDRESS	28	188	7757
// OP_LOAD_F	541	152	7758
// OP_STOREP_F	7758	7757	0
// OP_LOAD_F	542	152	7759
// OP_GT	7759	213	7760
// OP_IFNOT	7760	4	0
// OP_ADDRESS	28	152	7761
// OP_LOAD_F	542	152	7762
// OP_STOREP_F	7762	7761	0
// OP_ADDRESS	7743	157	7763
// OP_LOAD_F	7743	534	7764
// OP_STOREP_F	7764	7763	0
// OP_DONE	0	0	0
void (entity globaldef002753) func000355 = 
{
    local string globaldef002754;
    local string globaldef002755;
    local string globaldef002756;
    local string globaldef002757;
    local string globaldef002758;
    globaldef002753.laststattime = time + globaldef000522;
    globaldef002758 = func000354(globaldef002753);
    func000076(globaldef002753, globaldef002758, globaldef000524.netname, "          ", globaldef000525.netname, "              ");
    
    if(globaldef000524.health > FALSE)
    {
        self.armorvalue = globaldef000524.health;
    }
    
    
    if(globaldef000525.health > FALSE)
    {
        self.health = globaldef000525.health;
    }
    
    globaldef002753.currentammo = globaldef002753.mypos;
};

// func000356
// function begins at statement 10261, parm_start=7765
// OP_LOAD_S	541	129	7767
// OP_EQ_S	7767	1236	7768
// OP_IFNOT	7768	4	0
// OP_STORE_V	541	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	542	129	7769
// OP_EQ_S	7769	1236	7770
// OP_IFNOT	7770	4	0
// OP_STORE_V	542	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	28	129	7771
// OP_EQ_S	7771	1236	7772
// OP_IFNOT	7772	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_IFNOT	543	9	0
// OP_STORE_ENT	543	7766	0
// OP_STORE_V	7766	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_ENT	7766	528	7773
// OP_STORE_ENT	7773	7766	0
// OP_NE_E	7766	543	7774
// OP_IF	7774	-6	0
// OP_DONE	0	0	0
void (string globaldef002761) func000356 = 
{
    local entity globaldef002762;
    
    if(globaldef000524.classname == "player")
    {
        func000064(globaldef000524, globaldef002761);
    }
    
    
    if(globaldef000525.classname == "player")
    {
        func000064(globaldef000525, globaldef002761);
    }
    
    
    if(self.classname == "player")
    {
        func000064(self, globaldef002761);
    }
    
    
    if(globaldef000526)
    {
        globaldef002762 = globaldef000526;
        do
        {
            func000064(globaldef002762, globaldef002761);
            globaldef002762 = globaldef002762.ra_next;
        } while (globaldef002762 != globaldef000526);
    }
    
};

// readytostart
// function begins at statement 10289, parm_start=7776
// OP_GT	31	544	7776
// OP_NE_E	541	30	7777
// OP_AND	7776	7777	7778
// OP_NE_E	542	30	7779
// OP_AND	7778	7779	7780
// OP_IFNOT	7780	3	0
// OP_RETURN	214	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () readytostart = 
{
    if(((time > globaldef000527) && (globaldef000524 != world)) && (globaldef000525 != world))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
    
};

// func000358
// function begins at statement 10299, parm_start=7782
// OP_ADDRESS	7782	159	7784
// OP_LOAD_F	7782	159	7785
// OP_ADD_F	7785	2805	7786
// OP_STOREP_F	7786	7784	0
// OP_ADDRESS	7782	158	7787
// OP_LOAD_F	7782	158	7788
// OP_ADD_F	7788	309	7789
// OP_STOREP_F	7789	7787	0
// OP_ADDRESS	7782	160	7790
// OP_LOAD_F	7782	160	7791
// OP_ADD_F	7791	309	7792
// OP_STOREP_F	7792	7790	0
// OP_ADDRESS	7782	161	7793
// OP_LOAD_F	7782	161	7794
// OP_ADD_F	7794	309	7795
// OP_STOREP_F	7795	7793	0
// OP_LOAD_F	7782	158	7796
// OP_GT	7796	1997	7797
// OP_IFNOT	7797	3	0
// OP_ADDRESS	7782	158	7798
// OP_STOREP_F	1997	7798	0
// OP_LOAD_F	7782	159	7799
// OP_GT	7799	2044	7800
// OP_IFNOT	7800	3	0
// OP_ADDRESS	7782	159	7801
// OP_STOREP_F	2044	7801	0
// OP_LOAD_F	7782	160	7802
// OP_GT	7802	1997	7803
// OP_IFNOT	7803	3	0
// OP_ADDRESS	7782	160	7804
// OP_STOREP_F	1997	7804	0
// OP_LOAD_F	7782	161	7805
// OP_GT	7805	1997	7806
// OP_IFNOT	7806	3	0
// OP_ADDRESS	7782	161	7807
// OP_STOREP_F	1997	7807	0
// OP_ADDRESS	7782	162	7808
// OP_BITOR	253	254	7809
// OP_STOREP_F	7809	7808	0
// OP_ADDRESS	7782	162	7810
// OP_LOAD_F	7782	162	7811
// OP_BITOR	7811	256	7812
// OP_STOREP_F	7812	7810	0
// OP_ADDRESS	7782	162	7813
// OP_LOAD_F	7782	162	7814
// OP_BITOR	7814	257	7815
// OP_STOREP_F	7815	7813	0
// OP_ADDRESS	7782	162	7816
// OP_LOAD_F	7782	162	7817
// OP_BITOR	7817	255	7818
// OP_STOREP_F	7818	7816	0
// OP_ADDRESS	7782	162	7819
// OP_LOAD_F	7782	162	7820
// OP_BITOR	7820	259	7821
// OP_STOREP_F	7821	7819	0
// OP_ADDRESS	7782	162	7822
// OP_LOAD_F	7782	162	7823
// OP_BITOR	7823	258	7824
// OP_STOREP_F	7824	7822	0
// OP_ADDRESS	7782	162	7825
// OP_LOAD_F	7782	162	7826
// OP_BITOR	7826	260	7827
// OP_STOREP_F	7827	7825	0
// OP_ADDRESS	7782	162	7828
// OP_LOAD_F	7782	162	7829
// OP_LOAD_F	7782	162	7830
// OP_BITOR	266	267	7831
// OP_BITOR	7831	268	7832
// OP_BITAND	7830	7832	7833
// OP_SUB_F	7829	7833	7834
// OP_ADD_F	7834	268	7835
// OP_STOREP_F	7835	7828	0
// OP_ADDRESS	7782	188	7836
// OP_STOREP_F	2044	7836	0
// OP_ADDRESS	7782	187	7837
// OP_STOREP_F	4478	7837	0
// OP_ADDRESS	7782	152	7838
// OP_STOREP_F	1997	7838	0
// OP_ADDRESS	7782	154	7839
// OP_STOREP_F	219	7839	0
// OP_ADDRESS	7782	382	7840
// OP_STOREP_F	213	7840	0
// OP_ADDRESS	7782	383	7841
// OP_STOREP_F	213	7841	0
// OP_ADDRESS	7782	381	7842
// OP_STOREP_F	213	7842	0
// OP_ADDRESS	7782	380	7843
// OP_STOREP_F	213	7843	0
// OP_ADDRESS	7782	133	7844
// OP_STOREP_F	213	7844	0
// OP_ADDRESS	7782	384	7845
// OP_STOREP_F	213	7845	0
// OP_STORE_ENT	28	7783	0
// OP_STORE_ENT	7782	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	7783	28	0
// OP_DONE	0	0	0
void (entity globaldef002765) func000358 = 
{
    local entity globaldef002766;
    globaldef002765.ammo_nails = globaldef002765.ammo_nails + 80;
    globaldef002765.ammo_shells = globaldef002765.ammo_shells + SVC_INTERMISSION;
    globaldef002765.ammo_rockets = globaldef002765.ammo_rockets + SVC_INTERMISSION;
    globaldef002765.ammo_cells = globaldef002765.ammo_cells + SVC_INTERMISSION;
    
    if(globaldef002765.ammo_shells > 100)
    {
        globaldef002765.ammo_shells = 100;
    }
    
    
    if(globaldef002765.ammo_nails > 200)
    {
        globaldef002765.ammo_nails = 200;
    }
    
    
    if(globaldef002765.ammo_rockets > 100)
    {
        globaldef002765.ammo_rockets = 100;
    }
    
    
    if(globaldef002765.ammo_cells > 100)
    {
        globaldef002765.ammo_cells = 100;
    }
    
    globaldef002765.items = IT_AXE | IT_SHOTGUN;
    globaldef002765.items = globaldef002765.items | IT_NAILGUN;
    globaldef002765.items = globaldef002765.items | IT_SUPER_NAILGUN;
    globaldef002765.items = globaldef002765.items | IT_SUPER_SHOTGUN;
    globaldef002765.items = globaldef002765.items | IT_ROCKET_LAUNCHER;
    globaldef002765.items = globaldef002765.items | IT_GRENADE_LAUNCHER;
    globaldef002765.items = globaldef002765.items | IT_LIGHTNING;
    globaldef002765.items = (globaldef002765.items - (globaldef002765.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + IT_ARMOR3;
    globaldef002765.armorvalue = 200;
    globaldef002765.armortype = 0.8;
    globaldef002765.health = 100;
    globaldef002765.weapon = FL_MONSTER;
    globaldef002765.super_damage_finished = FALSE;
    globaldef002765.radsuit_finished = FALSE;
    globaldef002765.invisible_finished = FALSE;
    globaldef002765.invincible_finished = FALSE;
    globaldef002765.effects = FALSE;
    globaldef002765.invincible_time = FALSE;
    globaldef002766 = self;
    self = globaldef002765;
    func000283();
    self = globaldef002766;
};

// setfullhealth
// function begins at statement 10396, parm_start=7847
// OP_ADDRESS	7847	188	7848
// OP_STOREP_F	2044	7848	0
// OP_ADDRESS	7847	187	7849
// OP_STOREP_F	4478	7849	0
// OP_ADDRESS	7847	152	7850
// OP_STOREP_F	1997	7850	0
// OP_DONE	0	0	0
void (entity globaldef002768) setfullhealth = 
{
    globaldef002768.armorvalue = 200;
    globaldef002768.armortype = 0.8;
    globaldef002768.health = 100;
};

// func000360
// function begins at statement 10403, parm_start=7852
// OP_LOAD_V	7852	105	7857
// OP_STORE_V	7857	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	7853	400	7860
// OP_STORE_V	7860	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	7853	105	7863
// OP_MUL_FV	219	59	7866
// OP_ADD_V	7863	7866	7869
// OP_STORE_V	7869	7854	0
// OP_STORE_V	7854	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	7853	105	7872
// OP_STORE_V	7872	4	0
// OP_STORE_V	7852	7	0
// OP_CALL2	7260	0	0
// OP_LOAD_F	7852	152	7875
// OP_NOT_F	7875	0	7876
// OP_IFNOT	7876	12	0
// OP_ADDRESS	7852	105	7877
// OP_LOAD_V	7853	105	7880
// OP_STOREP_V	7880	7877	0
// OP_ADDRESS	7852	113	7883
// OP_LOAD_F	7852	114	7886
// OP_MUL_VF	59	7886	7887
// OP_LOAD_F	7852	115	7890
// OP_MUL_VF	59	7890	7891
// OP_ADD_V	7887	7891	7894
// OP_STOREP_V	7894	7883	0
// OP_RETURN	0	0	0
// OP_STORE_V	7852	4	0
// OP_LOAD_V	7853	105	7897
// OP_STORE_V	7897	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	7852	117	7900
// OP_LOAD_V	7853	400	7903
// OP_STOREP_V	7903	7900	0
// OP_IFNOT	7852	16	0
// OP_ADDRESS	7852	174	7906
// OP_STOREP_F	214	7906	0
// OP_ADDRESS	7852	186	7907
// OP_ADD_F	31	5599	7908
// OP_STOREP_F	7908	7907	0
// OP_LOAD_F	7852	182	7909
// OP_BITAND	7909	223	7910
// OP_IFNOT	7910	5	0
// OP_ADDRESS	7852	182	7911
// OP_LOAD_F	7852	182	7912
// OP_SUB_F	7912	223	7913
// OP_STOREP_F	7913	7911	0
// OP_ADDRESS	7852	113	7914
// OP_MUL_VF	59	540	7917
// OP_STOREP_V	7917	7914	0
// OP_ADDRESS	7852	182	7920
// OP_LOAD_F	7852	182	7921
// OP_LOAD_F	7852	182	7922
// OP_BITAND	7922	223	7923
// OP_SUB_F	7921	7923	7924
// OP_STOREP_F	7924	7920	0
// OP_DONE	0	0	0
void (entity globaldef002770, entity globaldef002771) func000360 = 
{
    local vector globaldef002772;
    func000584(globaldef002770.origin);
    makevectors(globaldef002771.mangle);
    globaldef002772 = globaldef002771.origin + (FL_MONSTER * v_forward);
    func000584(globaldef002772);
    func000586(globaldef002771.origin, globaldef002770);
    
    if(!globaldef002770.health)
    {
        globaldef002770.origin = globaldef002771.origin;
        globaldef002770.velocity = (v_forward * globaldef002770.velocity_x) + (v_forward * globaldef002770.velocity_y);
        return;
    }
    
    setorigin(globaldef002770, globaldef002771.origin);
    globaldef002770.angles = globaldef002771.mangle;
    
    if(globaldef002770)
    {
        globaldef002770.fixangle = TRUE;
        globaldef002770.teleport_time = time + 0.7;
        
        if(globaldef002770.flags & FL_ONGROUND)
        {
            globaldef002770.flags = globaldef002770.flags - FL_ONGROUND;
        }
        
        globaldef002770.velocity = v_forward * globaldef000523;
    }
    
    globaldef002770.flags = globaldef002770.flags - (globaldef002770.flags & FL_ONGROUND);
};

// func000361
// function begins at statement 10463, parm_start=7926
// OP_LOAD_F	7926	182	7928
// OP_BITAND	7928	698	7929
// OP_IFNOT	7929	3	0
// OP_STORE_V	7926	4	0
// OP_CALL1	1143	0	0
// OP_STORE_V	7930	4	0
// OP_CALL1	1220	0	0
// OP_STORE_ENT	1	7927	0
// OP_STORE_V	7926	4	0
// OP_STORE_V	7927	7	0
// OP_CALL2	7851	0	0
// OP_STORE_V	7926	4	0
// OP_LOAD_V	7927	105	7931
// OP_STORE_V	7931	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	7926	4	0
// OP_CALL1	7781	0	0
// OP_STORE_V	7926	4	0
// OP_STORE_V	7934	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	7926	181	7935
// OP_STOREP_ENT	30	7935	0
// OP_NE_E	541	7926	7936
// OP_IFNOT	7936	5	0
// OP_STORE_V	541	4	0
// OP_CALL1	7781	0	0
// OP_ADD_F	31	235	7937
// OP_STORE_F	7937	544	0
// OP_STORE_F	214	816	0
// OP_DONE	0	0	0
void (entity globaldef002777) func000361 = 
{
    local entity globaldef002778;
    
    if(globaldef002777.flags & globaldef000681)
    {
        func002502(globaldef002777);
    }
    
    globaldef002778 = func000353("info_teleport_destination");
    func000360(globaldef002777, globaldef002778);
    setorigin(globaldef002777, globaldef002778.origin);
    func000358(globaldef002777);
    func000064(globaldef002777, "r_drawviewmodel 1\n");
    globaldef002777.enemy = world;
    
    if(globaldef000524 != globaldef002777)
    {
        func000358(globaldef000524);
        globaldef000527 = time + MOVETYPE_BOUNCE;
    }
    
    globaldef000799 = TRUE;
};

// func000362
// function begins at statement 10493, parm_start=7938
// OP_IFNOT	543	36	0
// OP_STORE_ENT	543	542	0
// OP_LOAD_ENT	543	529	7940
// OP_STORE_ENT	7940	7938	0
// OP_LOAD_ENT	543	528	7941
// OP_EQ_E	543	7941	7942
// OP_IFNOT	7942	3	0
// OP_STORE_ENT	30	543	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	543	528	7943
// OP_STORE_ENT	7943	543	0
// OP_ADDRESS	543	529	7944
// OP_STOREP_ENT	7938	7944	0
// OP_ADDRESS	7938	528	7945
// OP_STOREP_ENT	543	7945	0
// OP_STORE_V	542	4	0
// OP_CALL1	7925	0	0
// OP_STORE_V	7946	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	542	180	7947
// OP_STORE_V	7947	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	543	11	0
// OP_STORE_ENT	543	7938	0
// OP_STORE_F	213	7939	0
// OP_ADD_F	7939	214	7948
// OP_STORE_F	7948	7939	0
// OP_ADDRESS	7938	534	7949
// OP_STOREP_F	7939	7949	0
// OP_LOAD_ENT	7938	528	7950
// OP_STORE_ENT	7950	7938	0
// OP_NE_E	7938	543	7951
// OP_IF	7951	-7	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	30	542	0
// OP_STORE_V	7952	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void () func000362 = 
{
    local entity globaldef002781;
    local float globaldef002782;
    if(globaldef000526)
    {
        globaldef000525 = globaldef000526;
        globaldef002781 = globaldef000526.ra_prev;
        if(globaldef000526 == globaldef000526.ra_next)
        {
            globaldef000526 = world;
        }
        else
        {
            globaldef000526 = globaldef000526.ra_next;
            globaldef000526.ra_prev = globaldef002781;
            globaldef002781.ra_next = globaldef000526;
        }
        
        func000361(globaldef000525);
        bprint("The new challenger is ");
        bprint(globaldef000525.netname);
        bprint("\n");
        
        if(globaldef000526)
        {
            globaldef002781 = globaldef000526;
            globaldef002782 = FALSE;
            do
            {
                globaldef002782 = globaldef002782 + TRUE;
                globaldef002781.mypos = globaldef002782;
                globaldef002781 = globaldef002781.ra_next;
            } while (globaldef002781 != globaldef000526);
        }
        
    }
    else
    {
        globaldef000525 = world;
        bprint("Waiting for opponent\n");
    }
    
};

// func000363
// function begins at statement 10533, parm_start=7954
// OP_NOT_ENT	543	0	7957
// OP_IFNOT	7957	12	0
// OP_STORE_ENT	7954	543	0
// OP_ADDRESS	543	528	7958
// OP_STOREP_ENT	543	7958	0
// OP_ADDRESS	543	529	7959
// OP_STOREP_ENT	543	7959	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	7960	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	7954	534	7961
// OP_STOREP_F	214	7961	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	543	529	7962
// OP_STORE_ENT	7962	7955	0
// OP_ADDRESS	7955	528	7963
// OP_STOREP_ENT	7954	7963	0
// OP_ADDRESS	7954	529	7964
// OP_STOREP_ENT	7955	7964	0
// OP_ADDRESS	543	529	7965
// OP_STOREP_ENT	7954	7965	0
// OP_ADDRESS	7954	528	7966
// OP_STOREP_ENT	543	7966	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	7967	7	0
// OP_CALL2	928	0	0
// OP_STORE_ENT	543	7955	0
// OP_STORE_F	214	7956	0
// OP_LOAD_ENT	7955	528	7968
// OP_STORE_ENT	7968	7955	0
// OP_ADD_F	7956	214	7969
// OP_STORE_F	7969	7956	0
// OP_NE_E	7955	7954	7970
// OP_IF	7970	-5	0
// OP_ADDRESS	7954	534	7971
// OP_STOREP_F	7956	7971	0
// OP_LOAD_F	7954	182	7972
// OP_BITAND	7972	698	7973
// OP_IFNOT	7973	3	0
// OP_STORE_V	7954	4	0
// OP_CALL1	7673	0	0
// OP_DONE	0	0	0
void (entity globaldef002786) func000363 = 
{
    local entity globaldef002787;
    local float globaldef002788;
    if(!globaldef000526)
    {
        globaldef000526 = globaldef002786;
        globaldef000526.ra_next = globaldef000526;
        globaldef000526.ra_prev = globaldef000526;
        func000092(globaldef002786, "You are next in line\n");
        globaldef002786.mypos = TRUE;
    }
    else
    {
        globaldef002787 = globaldef000526.ra_prev;
        globaldef002787.ra_next = globaldef002786;
        globaldef002786.ra_prev = globaldef002787;
        globaldef000526.ra_prev = globaldef002786;
        globaldef002786.ra_next = globaldef000526;
        func000092(globaldef002786, "You are last in line\n");
        globaldef002787 = globaldef000526;
        globaldef002788 = TRUE;
        do
        {
            globaldef002787 = globaldef002787.ra_next;
            globaldef002788 = globaldef002788 + TRUE;
        } while (globaldef002787 != globaldef002786);
        globaldef002786.mypos = globaldef002788;
    }
    
    
    if(globaldef002786.flags & globaldef000681)
    {
        func000352(globaldef002786);
    }
    
};

// func000364
// function begins at statement 10575, parm_start=7974
// OP_ADDRESS	7974	158	7976
// OP_STOREP_F	235	7976	0
// OP_ADDRESS	7974	159	7977
// OP_STOREP_F	213	7977	0
// OP_ADDRESS	7974	158	7978
// OP_STOREP_F	213	7978	0
// OP_ADDRESS	7974	160	7979
// OP_STOREP_F	213	7979	0
// OP_ADDRESS	7974	161	7980
// OP_STOREP_F	213	7980	0
// OP_ADDRESS	7974	163	7981
// OP_STOREP_F	250	7981	0
// OP_ADDRESS	7974	162	7982
// OP_STOREP_F	253	7982	0
// OP_ADDRESS	7974	188	7983
// OP_STOREP_F	213	7983	0
// OP_ADDRESS	7974	187	7984
// OP_STOREP_F	213	7984	0
// OP_ADDRESS	7974	152	7985
// OP_STOREP_F	1997	7985	0
// OP_ADDRESS	7974	154	7986
// OP_STOREP_F	226	7986	0
// OP_ADDRESS	7974	530	7987
// OP_STOREP_F	213	7987	0
// OP_ADDRESS	7974	531	7988
// OP_STOREP_F	213	7988	0
// OP_ADDRESS	7974	532	7989
// OP_STOREP_F	213	7989	0
// OP_LOAD_S	7974	180	7990
// OP_EQ_S	7990	7991	7992
// OP_IFNOT	7992	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	541	0	7993
// OP_IFNOT	7993	11	0
// OP_STORE_ENT	7974	541	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7925	0	0
// OP_ADDRESS	7974	528	7994
// OP_STOREP_ENT	7974	7994	0
// OP_ADDRESS	7974	529	7995
// OP_STOREP_ENT	7974	7995	0
// OP_STORE_V	7952	4	0
// OP_CALL1	472	0	0
// OP_GOTO	25	0	0
// OP_NOT_ENT	542	0	7996
// OP_IFNOT	7996	14	0
// OP_STORE_ENT	7974	542	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7925	0	0
// OP_ADDRESS	7974	528	7997
// OP_STOREP_ENT	7974	7997	0
// OP_ADDRESS	7974	529	7998
// OP_STOREP_ENT	7974	7998	0
// OP_LOAD_S	7974	180	7999
// OP_STORE_V	7999	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8000	4	0
// OP_CALL1	472	0	0
// OP_GOTO	10	0	0
// OP_NE_E	541	7974	8001
// OP_NE_E	542	7974	8002
// OP_AND	8001	8002	8003
// OP_IFNOT	8003	6	0
// OP_STORE_V	7974	4	0
// OP_STORE_V	8004	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7953	0	0
// OP_STORE_ENT	28	7975	0
// OP_STORE_ENT	7974	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	7975	28	0
// OP_DONE	0	0	0
void (entity globaldef002791) func000364 = 
{
    local entity globaldef002792;
    globaldef002791.ammo_shells = MOVETYPE_BOUNCE;
    globaldef002791.ammo_nails = FALSE;
    globaldef002791.ammo_shells = FALSE;
    globaldef002791.ammo_rockets = FALSE;
    globaldef002791.ammo_cells = FALSE;
    globaldef002791.takedamage = DAMAGE_NO;
    globaldef002791.items = IT_AXE;
    globaldef002791.armorvalue = FALSE;
    globaldef002791.armortype = FALSE;
    globaldef002791.health = 100;
    globaldef002791.weapon = FL_JUMPRELEASED;
    globaldef002791.idletime = FALSE;
    globaldef002791.lasttime = FALSE;
    globaldef002791.laststattime = FALSE;
    
    if(globaldef002791.netname == "unconnected")
    {
        return;
    }
    
    if(!globaldef000524)
    {
        globaldef000524 = globaldef002791;
        func000361(globaldef002791);
        globaldef002791.ra_next = globaldef002791;
        globaldef002791.ra_prev = globaldef002791;
        bprint("Waiting for opponent\n");
    }
    else
    {
        if(!globaldef000525)
        {
            globaldef000525 = globaldef002791;
            func000361(globaldef002791);
            globaldef002791.ra_next = globaldef002791;
            globaldef002791.ra_prev = globaldef002791;
            bprint(globaldef002791.netname);
            bprint(" is the new challenger\n");
        }
        else
        {
            
            if((globaldef000524 != globaldef002791) && (globaldef000525 != globaldef002791))
            {
                func000064(globaldef002791, "r_drawviewmodel 0\n");
                func000363(globaldef002791);
            }
            
        }
        
    }
    
    globaldef002792 = self;
    self = globaldef002791;
    func000283();
    self = globaldef002792;
};

entity () func000377;
// func000365
// function begins at statement 10648, parm_start=8006
// OP_LOAD_F	8006	538	8010
// OP_EQ_F	8010	214	8011
// OP_IFNOT	8011	9	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8012	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8013	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	8006	538	8014
// OP_STOREP_F	213	8014	0
// OP_SUB_F	544	31	8015
// OP_STORE_V	8015	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	8009	0
// OP_GE	8009	213	8016
// OP_GT	544	213	8017
// OP_AND	8016	8017	8018
// OP_NE_F	8009	545	8019
// OP_AND	8018	8019	8020
// OP_NE_E	541	30	8021
// OP_AND	8020	8021	8022
// OP_NE_E	542	30	8023
// OP_AND	8022	8023	8024
// OP_IFNOT	8024	74	0
// OP_STORE_F	8009	545	0
// OP_EQ_F	8009	213	8025
// OP_IFNOT	8025	36	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8026	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8026	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	541	180	8027
// OP_STORE_V	8027	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8028	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	542	180	8029
// OP_STORE_V	8029	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	543	6	0
// OP_LOAD_S	543	180	8030
// OP_STORE_V	8030	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8031	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	541	163	8032
// OP_STOREP_F	252	8032	0
// OP_ADDRESS	542	163	8033
// OP_STOREP_F	252	8033	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8034	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8034	7	0
// OP_CALL2	852	0	0
// OP_STORE_F	213	816	0
// OP_STORE_F	213	544	0
// OP_GOTO	36	0	0
// OP_STORE_V	8009	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8007	0
// OP_LE	8009	228	8035
// OP_IFNOT	8035	19	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8036	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8037	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8036	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8037	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_LOAD_S	542	180	8038
// OP_STORE_V	8038	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	8007	13	0
// OP_CALL4	865	0	0
// OP_STORE_V	542	4	0
// OP_LOAD_S	541	180	8040
// OP_STORE_V	8040	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	8007	13	0
// OP_CALL4	865	0	0
// OP_LOAD_S	8006	129	8041
// OP_NE_S	8041	2025	8042
// OP_IFNOT	8042	79	0
// OP_LOAD_F	8006	530	8043
// OP_NE_F	8043	213	8044
// OP_IFNOT	8044	63	0
// OP_LOAD_F	8006	530	8045
// OP_SUB_F	8045	31	8046
// OP_STORE_V	8046	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	8009	0
// OP_LOAD_F	8006	531	8047
// OP_NE_F	8009	8047	8048
// OP_IFNOT	8048	53	0
// OP_EQ_F	8009	2019	8049
// OP_IFNOT	8049	7	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8050	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_EQ_F	8009	309	8052
// OP_IFNOT	8052	7	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8053	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_EQ_F	8009	213	8054
// OP_IFNOT	8054	18	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8055	7	0
// OP_CALL2	928	0	0
// OP_LOAD_S	8006	180	8056
// OP_STORE_V	8056	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	8006	530	8057
// OP_STOREP_F	213	8057	0
// OP_STORE_V	8058	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8059	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8060	7	0
// OP_CALL2	839	0	0
// OP_RETURN	0	0	0
// OP_LE	8009	235	8061
// OP_IFNOT	8061	16	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8062	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8009	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8007	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8063	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	8006	531	8064
// OP_STOREP_F	8009	8064	0
// OP_NE_E	8006	542	8065
// OP_NE_E	8006	541	8066
// OP_AND	8065	8066	8067
// OP_IFNOT	8067	10	0
// OP_LOAD_F	8006	532	8068
// OP_LT	8068	31	8069
// OP_NE_E	541	30	8070
// OP_AND	8069	8070	8071
// OP_NE_E	542	30	8072
// OP_AND	8071	8072	8073
// OP_IFNOT	8073	3	0
// OP_STORE_V	8006	4	0
// OP_CALL1	7742	0	0
// OP_DONE	0	0	0
void (entity globaldef002797) func000365 = 
{
    local string globaldef002798;
    local entity globaldef002799;
    local float globaldef002800;
    
    if(globaldef002797.motd == TRUE)
    {
        func000092(globaldef002797, "??????? ?? ?????? ????? v1.2\n");
        func000092(globaldef002797, "by crt - wrightd@stanford.edu\n Port by WhiteFang - matt@lithium.com\n");
        globaldef002797.motd = FALSE;
    }
    
    globaldef002800 = rint(globaldef000527 - time);
    
    if(((((globaldef002800 >= FALSE) && (globaldef000527 > FALSE)) && (globaldef002800 != globaldef000528)) && (globaldef000524 != world)) && (globaldef000525 != world))
    {
        globaldef000528 = globaldef002800;
        if(globaldef002800 == FALSE)
        {
            func000064(globaldef000524, "play ra/fight.wav\n");
            func000064(globaldef000525, "play ra/fight.wav\n");
            bprint(globaldef000524.netname);
            bprint(" vs. ");
            bprint(globaldef000525.netname);
            bprint("\n");
            
            if(globaldef000526)
            {
                bprint(globaldef000526.netname);
                bprint(" is next in line\n");
            }
            
            globaldef000524.takedamage = DAMAGE_AIM;
            globaldef000525.takedamage = DAMAGE_AIM;
            centerprint(globaldef000524, "??????");
            centerprint(globaldef000525, "??????");
            globaldef000799 = FALSE;
            globaldef000527 = FALSE;
        }
        else
        {
            globaldef002798 = ftos(globaldef002800);
            
            if(globaldef002800 <= MOVETYPE_WALK)
            {
                func000064(globaldef000524, "play ra/");
                func000064(globaldef000524, globaldef002798);
                func000064(globaldef000524, ".wav\n");
                func000064(globaldef000525, "play ra/");
                func000064(globaldef000525, globaldef002798);
                func000064(globaldef000525, ".wav\n");
            }
            
            func000074(globaldef000524, globaldef000525.netname, "\n\n", globaldef002798);
            func000074(globaldef000525, globaldef000524.netname, "\n\n", globaldef002798);
        }
        
    }
    
    
    if(globaldef002797.classname != "observer")
    {
        
        if(globaldef002797.idletime != FALSE)
        {
            globaldef002800 = rint(globaldef002797.idletime - time);
            
            if(globaldef002800 != globaldef002797.lasttime)
            {
                
                if(globaldef002800 == 60)
                {
                    func000092(globaldef002797, "You have 1 minute left.\n Impulse 70 to get back in line\n");
                    func000064(globaldef002797, "play player/axhit1.wav\n");
                }
                
                
                if(globaldef002800 == SVC_INTERMISSION)
                {
                    func000092(globaldef002797, "You have 30 seconds left.\n Impulse 70 to get back in line\n");
                    func000064(globaldef002797, "play player/axhit1.wav\n");
                }
                
                
                if(globaldef002800 == FALSE)
                {
                    func000092(globaldef002797, "Sorry, your wait time has expired!\n");
                    bprint(globaldef002797.netname);
                    globaldef002797.idletime = FALSE;
                    bprint(" stood around too long\n");
                    func000064(globaldef002797, "play player/death1.wav\n");
                    func000064(globaldef002797, "disconnect\n");
                    return;
                }
                
                
                if(globaldef002800 <= MOVETYPE_BOUNCE)
                {
                    func000092(globaldef002797, "You have ");
                    globaldef002798 = ftos(globaldef002800);
                    func000092(globaldef002797, globaldef002798);
                    func000092(globaldef002797, " seconds left to get in line\n");
                    func000064(globaldef002797, "play player/axhit1.wav\n");
                }
                
            }
            
            globaldef002797.lasttime = globaldef002800;
        }
        
        
        if((globaldef002797 != globaldef000525) && (globaldef002797 != globaldef000524))
        {
            
            if(((globaldef002797.laststattime < time) && (globaldef000524 != world)) && (globaldef000525 != world))
            {
                func000355(globaldef002797);
            }
            
        }
        
    }
    
};

// func000366
// function begins at statement 10828, parm_start=8074
// OP_EQ_E	8074	541	8078
// OP_IFNOT	8078	19	0
// OP_STORE_V	8079	4	0
// OP_CALL1	472	0	0
// OP_STORE_ENT	542	541	0
// OP_IFNOT	541	11	0
// OP_STORE_V	8080	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	541	180	8081
// OP_STORE_V	8081	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	542	163	8082
// OP_STOREP_F	250	8082	0
// OP_GOTO	3	0	0
// OP_STORE_V	8083	4	0
// OP_CALL1	472	0	0
// OP_CALL0	1218	0	0
// OP_GOTO	41	0	0
// OP_EQ_E	8074	542	8084
// OP_IFNOT	8084	7	0
// OP_STORE_V	8085	4	0
// OP_CALL1	472	0	0
// OP_CALL0	1218	0	0
// OP_ADDRESS	541	163	8086
// OP_STOREP_F	250	8086	0
// OP_GOTO	33	0	0
// OP_EQ_E	8074	543	8087
// OP_IFNOT	8087	17	0
// OP_STORE_V	8088	4	0
// OP_CALL1	472	0	0
// OP_LOAD_ENT	543	528	8089
// OP_EQ_E	8089	543	8090
// OP_IFNOT	8090	3	0
// OP_STORE_ENT	30	543	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	543	529	8091
// OP_STORE_ENT	8091	8076	0
// OP_LOAD_ENT	543	528	8092
// OP_STORE_ENT	8092	543	0
// OP_ADDRESS	543	529	8093
// OP_STOREP_ENT	8076	8093	0
// OP_ADDRESS	8076	528	8094
// OP_STOREP_ENT	543	8094	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	8074	528	8095
// OP_EQ_E	8095	30	8096
// OP_IFNOT	8096	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	8074	528	8097
// OP_STORE_ENT	8097	8076	0
// OP_ADDRESS	8076	529	8098
// OP_LOAD_ENT	8074	529	8099
// OP_STOREP_ENT	8099	8098	0
// OP_LOAD_ENT	8074	529	8100
// OP_STORE_ENT	8100	8076	0
// OP_ADDRESS	8076	528	8101
// OP_LOAD_ENT	8074	528	8102
// OP_STOREP_ENT	8102	8101	0
// OP_DONE	0	0	0
void (entity globaldef002819, float globaldef002820) func000366 = 
{
    local entity globaldef002821;
    local string globaldef002822;
    if(globaldef002819 == globaldef000524)
    {
        bprint("The winner has left\n");
        globaldef000524 = globaldef000525;
        if(globaldef000524)
        {
            bprint("The new winner is ");
            bprint(globaldef000524.netname);
            bprint("\n");
            globaldef000525.takedamage = DAMAGE_NO;
        }
        else
        {
            bprint("Waiting for winner\n");
        }
        
        func000362();
    }
    else
    {
        if(globaldef002819 == globaldef000525)
        {
            bprint("The challenger has left\n");
            func000362();
            globaldef000524.takedamage = DAMAGE_NO;
        }
        else
        {
            if(globaldef002819 == globaldef000526)
            {
                bprint("The line leader has left\n");
                if(globaldef000526.ra_next == globaldef000526)
                {
                    globaldef000526 = world;
                }
                else
                {
                    globaldef002821 = globaldef000526.ra_prev;
                    globaldef000526 = globaldef000526.ra_next;
                    globaldef000526.ra_prev = globaldef002821;
                    globaldef002821.ra_next = globaldef000526;
                }
                
            }
            else
            {
                
                if(globaldef002819.ra_next == world)
                {
                    return;
                }
                
                globaldef002821 = globaldef002819.ra_next;
                globaldef002821.ra_prev = globaldef002819.ra_prev;
                globaldef002821 = globaldef002819.ra_prev;
                globaldef002821.ra_next = globaldef002819.ra_next;
            }
            
        }
        
    }
    
};

// entinfo
// function begins at statement 10889, parm_start=8104
// OP_EQ_F	8104	1997	8106
// OP_IFNOT	8106	3	0
// OP_STORE_V	541	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8107	8108
// OP_IFNOT	8108	3	0
// OP_STORE_V	542	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8109	8110
// OP_IFNOT	8110	3	0
// OP_STORE_V	543	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8111	8112
// OP_IFNOT	8112	5	0
// OP_LOAD_ENT	543	528	8113
// OP_STORE_ENT	8113	8105	0
// OP_STORE_V	8105	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8114	8115
// OP_IFNOT	8115	5	0
// OP_LOAD_ENT	543	529	8116
// OP_STORE_ENT	8116	8105	0
// OP_STORE_V	8105	4	0
// OP_CALL1	479	0	0
// OP_DONE	0	0	0
void (float globaldef002829) entinfo = 
{
    local entity globaldef002830;
    
    if(globaldef002829 == 100)
    {
        eprint(globaldef000524);
    }
    
    
    if(globaldef002829 == 101)
    {
        eprint(globaldef000525);
    }
    
    
    if(globaldef002829 == 102)
    {
        eprint(globaldef000526);
    }
    
    
    if(globaldef002829 == 103)
    {
        globaldef002830 = globaldef000526.ra_next;
        eprint(globaldef002830);
    }
    
    
    if(globaldef002829 == 104)
    {
        globaldef002830 = globaldef000526.ra_prev;
        eprint(globaldef002830);
    }
    
};

// func000368
// function begins at statement 10914, parm_start=8118
// OP_LOAD_S	8118	129	8120
// OP_NE_S	8120	1236	8121
// OP_LOAD_S	8118	129	8122
// OP_NE_S	8122	1241	8123
// OP_AND	8121	8123	8124
// OP_IFNOT	8124	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	8118	536	8125
// OP_LOAD_F	8118	535	8126
// OP_ADD_F	8125	8126	8127
// OP_EQ_F	8127	213	8128
// OP_IFNOT	8128	4	0
// OP_ADDRESS	8118	537	8129
// OP_STOREP_F	213	8129	0
// OP_GOTO	9	0	0
// OP_ADDRESS	8118	537	8130
// OP_LOAD_F	8118	535	8131
// OP_MUL_F	8131	1997	8132
// OP_LOAD_F	8118	536	8133
// OP_LOAD_F	8118	535	8134
// OP_ADD_F	8133	8134	8135
// OP_DIV_F	8132	8135	8136
// OP_STOREP_F	8136	8130	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	8118	180	8137
// OP_STORE_V	8137	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8138	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	535	8139
// OP_STORE_V	8139	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8140	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	536	8141
// OP_STORE_V	8141	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8142	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	537	8143
// OP_STORE_V	8143	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8144	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void (entity globaldef002836) func000368 = 
{
    local string globaldef002837;
    
    if((globaldef002836.classname != "player") && (globaldef002836.classname != "bot"))
    {
        return;
    }
    
    if((globaldef002836.loses + globaldef002836.wins) == FALSE)
    {
        globaldef002836.ratio = FALSE;
    }
    else
    {
        globaldef002836.ratio = (globaldef002836.wins * 100) / (globaldef002836.loses + globaldef002836.wins);
    }
    
    func000092(self, globaldef002836.netname);
    func000092(self, "  W:");
    globaldef002837 = ftos(globaldef002836.wins);
    func000092(self, globaldef002837);
    func000092(self, "  L:");
    globaldef002837 = ftos(globaldef002836.loses);
    func000092(self, globaldef002837);
    func000092(self, "  SKILL:");
    globaldef002837 = ftos(globaldef002836.ratio);
    func000092(self, globaldef002837);
    func000092(self, "%\n");
};

// func000369
// function begins at statement 10975, parm_start=8146
// OP_STORE_V	541	4	0
// OP_CALL1	8117	0	0
// OP_STORE_V	542	4	0
// OP_CALL1	8117	0	0
// OP_IFNOT	543	8	0
// OP_STORE_ENT	543	8146	0
// OP_STORE_V	8146	4	0
// OP_CALL1	8117	0	0
// OP_LOAD_ENT	8146	528	8147
// OP_STORE_ENT	8147	8146	0
// OP_NE_E	8146	543	8148
// OP_IF	8148	-5	0
// OP_DONE	0	0	0
void () func000369 = 
{
    local entity globaldef002843;
    func000368(globaldef000524);
    func000368(globaldef000525);
    
    if(globaldef000526)
    {
        globaldef002843 = globaldef000526;
        do
        {
            func000368(globaldef002843);
            globaldef002843 = globaldef002843.ra_next;
        } while (globaldef002843 != globaldef000526);
    }
    
};

// func000370
// function begins at statement 10988, parm_start=8150
// OP_EQ_E	28	541	8153
// OP_EQ_E	28	542	8154
// OP_OR	8153	8154	8155
// OP_IFNOT	8155	2	0
// OP_RETURN	0	0	0
// OP_EQ_E	28	543	8156
// OP_IFNOT	8156	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8157	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	528	8158
// OP_EQ_E	8158	30	8159
// OP_IFNOT	8159	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8160	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	8150	0
// OP_STORE_ENT	28	8151	0
// OP_LOAD_ENT	8151	529	8161
// OP_STORE_ENT	8161	8151	0
// OP_ADD_F	8150	214	8162
// OP_STORE_F	8162	8150	0
// OP_NE_E	8151	543	8163
// OP_IF	8163	-5	0
// OP_STORE_V	8150	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8152	0
// OP_NE_F	8150	214	8164
// OP_IFNOT	8164	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8165	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8152	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8166	7	0
// OP_CALL2	928	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8167	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void () func000370 = 
{
    local float globaldef002845;
    local entity globaldef002846;
    local string globaldef002847;
    
    if((self == globaldef000524) || (self == globaldef000525))
    {
        return;
    }
    
    
    if(self == globaldef000526)
    {
        func000092(self, "You are next\n");
        return;
    }
    
    
    if(self.ra_next == world)
    {
        func000092(self, "You are out of line\n Impulse 70 to return\n");
        return;
    }
    
    globaldef002845 = FALSE;
    globaldef002846 = self;
    do
    {
        globaldef002846 = globaldef002846.ra_prev;
        globaldef002845 = globaldef002845 + TRUE;
    } while (globaldef002846 != globaldef000526);
    globaldef002847 = ftos(globaldef002845);
    if(globaldef002845 != TRUE)
    {
        func000092(self, "There are ");
        func000092(self, globaldef002847);
        func000092(self, " people ahead of you\n");
    }
    else
    {
        func000092(self, "There is 1 person ahead of you\n");
    }
    
};

// func000371
// function begins at statement 11033, parm_start=8169
// OP_EQ_E	28	541	8170
// OP_EQ_E	28	542	8171
// OP_OR	8170	8171	8172
// OP_IFNOT	8172	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	528	8173
// OP_NE_E	8173	30	8174
// OP_IFNOT	8174	31	0
// OP_EQ_E	28	543	8175
// OP_IFNOT	8175	8	0
// OP_LOAD_ENT	28	528	8176
// OP_NE_E	28	8176	8177
// OP_IFNOT	8177	4	0
// OP_LOAD_ENT	28	528	8178
// OP_STORE_ENT	8178	543	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	543	0
// OP_LOAD_ENT	28	529	8179
// OP_STORE_ENT	8179	8169	0
// OP_ADDRESS	8169	528	8180
// OP_LOAD_ENT	28	528	8181
// OP_STOREP_ENT	8181	8180	0
// OP_LOAD_ENT	28	528	8182
// OP_STORE_ENT	8182	8169	0
// OP_ADDRESS	8169	529	8183
// OP_LOAD_ENT	28	529	8184
// OP_STOREP_ENT	8184	8183	0
// OP_ADDRESS	28	528	8185
// OP_STOREP_ENT	30	8185	0
// OP_ADDRESS	28	529	8186
// OP_STOREP_ENT	30	8186	0
// OP_ADDRESS	28	530	8187
// OP_ADD_F	31	540	8188
// OP_STOREP_F	8188	8187	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8189	7	0
// OP_CALL2	928	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	530	8190
// OP_STOREP_F	213	8190	0
// OP_STORE_V	28	4	0
// OP_CALL1	7953	0	0
// OP_DONE	0	0	0
void () func000371 = 
{
    local entity globaldef002854;
    
    if((self == globaldef000524) || (self == globaldef000525))
    {
        return;
    }
    
    if(self.ra_next != world)
    {
        
        if(self == globaldef000526)
        {
            if(self != self.ra_next)
            {
                globaldef000526 = self.ra_next;
            }
            else
            {
                globaldef000526 = world;
            }
            
        }
        
        globaldef002854 = self.ra_prev;
        globaldef002854.ra_next = self.ra_next;
        globaldef002854 = self.ra_next;
        globaldef002854.ra_prev = self.ra_prev;
        self.ra_next = world;
        self.ra_prev = world;
        self.idletime = time + globaldef000523;
        func000092(self, "You can have up to a 5 minute break.\n Impulse 70 to get back in line\n");
    }
    else
    {
        self.idletime = FALSE;
        func000363(self);
    }
    
};

// func000372
// function begins at statement 11076, parm_start=8191
// OP_BITAND	821	767	8191
// OP_IFNOT	8191	26	0
// OP_LOAD_F	28	173	8192
// OP_EQ_F	8192	8193	8194
// OP_IFNOT	8194	2	0
// OP_CALL0	8145	0	0
// OP_LOAD_F	28	173	8195
// OP_EQ_F	8195	8196	8197
// OP_IFNOT	8197	2	0
// OP_CALL0	8149	0	0
// OP_LOAD_F	28	173	8198
// OP_EQ_F	8198	1536	8199
// OP_IFNOT	8199	2	0
// OP_CALL0	8168	0	0
// OP_LOAD_F	28	173	8200
// OP_GE	8200	8201	8202
// OP_LOAD_F	28	173	8203
// OP_LE	8203	8204	8205
// OP_AND	8202	8205	8206
// OP_IFNOT	8206	8	0
// OP_ADDRESS	28	533	8207
// OP_LOAD_F	28	173	8208
// OP_SUB_F	8208	8201	8209
// OP_STOREP_F	8209	8207	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8210	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void () func000372 = 
{
    
    if(globaldef000804 & globaldef000750)
    {
        
        if(self.impulse == 68)
        {
            func000369();
        }
        
        
        if(self.impulse == 69)
        {
            func000370();
        }
        
        
        if(self.impulse == 70)
        {
            func000371();
        }
        
        
        if((self.impulse >= 71) && (self.impulse <= 81))
        {
            self.statstate = self.impulse - 71;
            func000092(self, "Status bar set\n");
        }
        
    }
    
};

