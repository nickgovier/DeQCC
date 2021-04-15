
// CampingCloudSpawnRain
// function begins at statement 8870, parm_start=6844
// OP_STORE_V	6844	4	0
// OP_STORE_V	6847	7	0
// OP_STORE_V	6850	10	0
// OP_STORE_V	6851	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float color, float num) CampingCloudSpawnRain = 
{
    particle(org, vel, color, num);
};


// CampingCloudSpawnLightning
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
void (vector start, vector end, entity ent) CampingCloudSpawnLightning = 
{
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
    WriteEntity(MSG_BROADCAST, ent);
    WriteCoord(MSG_BROADCAST, start_x);
    WriteCoord(MSG_BROADCAST, start_y);
    WriteCoord(MSG_BROADCAST, start_z);
    WriteCoord(MSG_BROADCAST, end_x);
    WriteCoord(MSG_BROADCAST, end_y);
    WriteCoord(MSG_BROADCAST, end_z);
};


// CampingCloudLightningFlash
// function begins at statement 8904, parm_start=6861
// OP_ADDRESS	28	133	6861
// OP_LOAD_F	28	133	6862
// OP_BITOR	6862	339	6863
// OP_STOREP_F	6863	6861	0
// OP_DONE	0	0	0
void () CampingCloudLightningFlash = 
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

// cloud_a1
// function begins at statement 8909, parm_start=6872
// OP_STATE	213	6872	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a1 = [0, cloud_a2]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, TRUE);
    func000333();
};


// cloud_a2
// function begins at statement 8916, parm_start=6873
// OP_STATE	214	6873	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a2 = [1, cloud_a3]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a3
// function begins at statement 8923, parm_start=6874
// OP_STATE	216	6874	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a3 = [2, cloud_a4]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a4
// function begins at statement 8930, parm_start=6875
// OP_STATE	228	6875	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a4 = [3, cloud_a5]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a5
// function begins at statement 8937, parm_start=6876
// OP_STATE	229	6876	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a5 = [4, cloud_a6]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a6
// function begins at statement 8944, parm_start=6877
// OP_STATE	230	6877	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_CALL0	6870	0	0
// OP_DONE	0	0	0
void () cloud_a6 = [5, cloud_a7]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
    func000325();
};


// cloud_a7
// function begins at statement 8952, parm_start=6878
// OP_STATE	231	6878	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a7 = [6, cloud_a8]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a8
// function begins at statement 8959, parm_start=6879
// OP_STATE	232	6879	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a8 = [7, cloud_a9]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a9
// function begins at statement 8966, parm_start=6880
// OP_STATE	217	6880	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a9 = [8, cloud_a10]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a10
// function begins at statement 8973, parm_start=6881
// OP_STATE	234	6881	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a10 = [9, cloud_a11]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a11
// function begins at statement 8980, parm_start=6882
// OP_STATE	235	6882	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_DONE	0	0	0
void () cloud_a11 = [10, cloud_a12]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
};


// cloud_a12
// function begins at statement 8987, parm_start=6883
// OP_STATE	236	6871	0
// OP_STORE_V	305	4	0
// OP_STORE_V	235	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_CALL0	6869	0	0
// OP_CALL0	6870	0	0
// OP_DONE	0	0	0
void () cloud_a12 = [11, cloud_a1]
{
    func000326(SVC_SIGNONNUM, MOVETYPE_BOUNCE, FALSE);
    func000333();
    func000325();
};


// cloud_b1
// function begins at statement 8995, parm_start=6884
// OP_STATE	791	6884	0
// OP_DONE	0	0	0
void () cloud_b1 = [12, cloud_b2]
{
};


// cloud_b2
// function begins at statement 8997, parm_start=6885
// OP_STATE	792	6885	0
// OP_DONE	0	0	0
void () cloud_b2 = [13, cloud_b3]
{
};


// cloud_b3
// function begins at statement 8999, parm_start=6886
// OP_STATE	5693	6886	0
// OP_DONE	0	0	0
void () cloud_b3 = [14, cloud_b4]
{
};


// cloud_b4
// function begins at statement 9001, parm_start=6887
// OP_STATE	765	6871	0
// OP_DONE	0	0	0
void () cloud_b4 = [15, cloud_a1]
{
};


// cloud_c1
// function begins at statement 9003, parm_start=6888
// OP_STATE	218	6888	0
// OP_STORE_V	765	4	0
// OP_STORE_V	231	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_ADDRESS	28	113	6889
// OP_STOREP_V	286	6889	0
// OP_DONE	0	0	0
void () cloud_c1 = [16, cloud_c2]
{
    func000326(GLOBALDEF748_15, MOVETYPE_TOSS, FALSE);
    self.velocity = VEC_ORIGIN;
};


// cloud_c2
// function begins at statement 9011, parm_start=6892
// OP_STATE	6892	6893	0
// OP_STORE_V	235	4	0
// OP_STORE_V	229	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_DONE	0	0	0
void () cloud_c2 = [17, cloud_c3]
{
    func000326(MOVETYPE_BOUNCE, MOVETYPE_STEP, FALSE);
};


// cloud_c3
// function begins at statement 9017, parm_start=6894
// OP_STATE	6133	6894	0
// OP_STORE_V	230	4	0
// OP_STORE_V	216	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	6868	0	0
// OP_DONE	0	0	0
void () cloud_c3 = [18, cloud_c4]
{
    func000326(MOVETYPE_FLY, FL_SWIM, FALSE);
};


// cloud_c4
// function begins at statement 9023, parm_start=6895
// OP_STATE	6895	6896	0
// OP_DONE	0	0	0
void () cloud_c4 = [19, func000332]
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
    CampingCloudSpawnLightning(self.origin, trace_endpos, self);
    sound(self, CHAN_WEAPON, "cloud/thunder.wav", TRUE, ATTN_NORM);
    CampingCloudLightningFlash();
    LightningDamage(self.origin, trace_endpos + (globaldef002524 * MOVETYPE_STEP), self, 20);
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
        CampingCloudSpawnRain(globaldef002532, '0 0 -300', FL_MONSTER, globaldef002530);
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
        cloud_b1();
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
        cloud_c1();
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
                cloud_c1();
            }
            else
            {
                self.velocity = (globaldef002564 - self.origin) * MOVETYPE_BOUNCE;
                func000329(self);
            }
            
        }
        else
        {
            cloud_c1();
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
            globaldef002574.think = cloud_c1;
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


// CampingPrint
// function begins at statement 9325, parm_start=7105
// OP_STORE_V	7105	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (string s) CampingPrint = 
{
    bprint(s);
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
float CAMP_NO_DETECTION = 0;
float CAMP_DETECT = 1;
float CAMP_DETECT_AND_PUNISH = 2;
float CAMP_DETECT_AND_PUNISH_SEVERE = 3;
float CampingMode;

// CampingToggleMode
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
void () CampingToggleMode = 
{
    CampingPrint("camping mode = ");
    if(CampingMode == CAMP_NO_DETECTION)
    {
        CampingMode = CAMP_DETECT;
        CampingPrint("detect only\n");
    }
    else
    {
        if(CampingMode == CAMP_DETECT)
        {
            CampingMode = CAMP_DETECT_AND_PUNISH;
            CampingPrint("detect & punish\n");
        }
        else
        {
            if(CampingMode == CAMP_DETECT_AND_PUNISH)
            {
                CampingMode = CAMP_DETECT_AND_PUNISH_SEVERE;
                CampingPrint("detect & punish severe\n");
            }
            else
            {
                CampingMode = CAMP_NO_DETECTION;
                CampingPrint("no detection\n");
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

void (vector org) spawn_tfog;
void (vector org, entity death_owner) spawn_tdeath;

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
    globaldef002642 = SelectSpawnPoint();
    globaldef002643 = FALSE;
    
    while(((vlen(globaldef002642.origin - globaldef002641.field000377)) < globaldef002600) && (globaldef002643 < MOVETYPE_FLY))
    {
        globaldef002642 = SelectSpawnPoint();
        globaldef002643 = globaldef002643 + TRUE;
    }
    
    spawn_tfog(globaldef002641.origin);
    setorigin(globaldef002641, globaldef002642.origin + '0 0 1');
    globaldef002641.angles = globaldef002642.angles;
    globaldef002641.fixangle = TRUE;
    globaldef002641.velocity = VEC_ORIGIN;
    globaldef002641.flags = globaldef002641.flags - (globaldef002641.flags & FL_ONGROUND);
    makevectors(globaldef002641.angles);
    spawn_tfog(globaldef002641.origin + (v_forward * 20));
    spawn_tdeath(globaldef002641.origin, globaldef002641);
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
    if(CampingMode == CAMP_DETECT_AND_PUNISH_SEVERE)
    {
        if(!lowMemoryDisableExtraModels && (globaldef002653 < 0.25))
        {
            func000344(globaldef002651);
        }
        else
        {
            if(globaldef002653 < RA_PLAYERSTATTIME)
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
        if(!lowMemoryDisableExtraModels && (globaldef002653 < RA_PLAYERSTATTIME))
        {
            func000344(globaldef002651);
        }
        else
        {
            func000341(globaldef002651);
        }
        
    }
    
    CampingPrint(globaldef002651.netname);
    CampingPrint(" is ");
    CampingPrint("punished");
    CampingPrint(" for camping");
    
    if(globaldef002651.message != string_null)
    {
        CampingPrint(" near the ");
        CampingPrint(globaldef002651.message);
    }
    
    CampingPrint("\n");
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
        CampingPrint(globaldef002659.netname);
        CampingPrint(" is ");
        CampingPrint("suspected of camping");
        
        if(globaldef002659.message != string_null)
        {
            CampingPrint(" near the ");
            CampingPrint(globaldef002659.message);
        }
        
        CampingPrint("\n");
        globaldef002659.field000386 = globaldef002659.field000386 + 0.1;
    }
    else
    {
        
        if(globaldef002659.field000386 == globaldef002602)
        {
            CampingPrint(globaldef002659.netname);
            CampingPrint(" is ");
            globaldef002661 = random();
            if(globaldef002661 < 0.14)
            {
                CampingPrint("building a house");
            }
            else
            {
                if(globaldef002661 < 0.28)
                {
                    CampingPrint("taking up permanent residence");
                }
                else
                {
                    if(globaldef002661 < 0.42)
                    {
                        CampingPrint("fortifying his position");
                    }
                    else
                    {
                        if(globaldef002661 < 0.56)
                        {
                            CampingPrint("not able to break up camp");
                        }
                        else
                        {
                            if(globaldef002661 < 0.7)
                            {
                                CampingPrint("saying 'hi' from his new home");
                            }
                            else
                            {
                                if(globaldef002661 < 0.84)
                                {
                                    CampingPrint("holding a garage sale");
                                }
                                else
                                {
                                    CampingPrint("digging a trench");
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(globaldef002659.message != string_null)
            {
                CampingPrint(" near the ");
                CampingPrint(globaldef002659.message);
            }
            
            CampingPrint("\n");
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
        
        if(CampingMode == CAMP_NO_DETECTION)
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
            
            if((CampingMode == CAMP_DETECT_AND_PUNISH) || (CampingMode == CAMP_DETECT_AND_PUNISH_SEVERE))
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

