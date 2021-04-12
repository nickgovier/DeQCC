
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
    CamCopyBody(globaldef002470, globaldef002466);
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
    WriteCoord(MSG_BROADCAST, globaldef002484_y);
    WriteCoord(MSG_BROADCAST, globaldef002484_z);
    WriteCoord(MSG_BROADCAST, globaldef002488_x);
    WriteCoord(MSG_BROADCAST, globaldef002488_y);
    WriteCoord(MSG_BROADCAST, globaldef002488_z);
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
    func000326(GLOBALDEFSEVENFOUREIGHT, MOVETYPE_TOSS, FALSE);
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
    globaldef002524_y = globaldef002524_y + random();
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
        globaldef002532_y = (globaldef002532_y - globaldef002529) + ((random() * globaldef002529) * FL_SWIM);
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
    globaldef002544_z = globaldef002544_z + FL_MONSTER;
    globaldef002540 = globaldef002544;
    globaldef002540_z = globaldef002540_z + globaldef002495;
    traceline(globaldef002544, globaldef002540, TRUE, self.movetarget);
    
    if(trace_inwater)
    {
        return FALSE;
    }
    
    
    if((trace_fraction == TRUE) || ((trace_endpos_z - globaldef002544_z) > globaldef002494))
    {
        return trace_endpos_z - globaldef002539.movetarget.origin_z;
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
        globaldef002558_z = globaldef002558_z + globaldef002557;
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
            globaldef002564_z = globaldef002564_z + globaldef002563;
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

