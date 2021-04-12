
// sham_smash1
// function begins at statement 19770, parm_start=12957
// OP_STATE	5878	12957	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12958	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () sham_smash1 = [35, func000926]
{
    sound(self, CHAN_VOICE, "shambler/melee1.wav", TRUE, ATTN_NORM);
    ai_charge(FL_SWIM);
};


// func000926
// function begins at statement 19780, parm_start=12959
// OP_STATE	9655	12959	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000926 = [36, func000927]
{
    ai_charge(MOVETYPE_TOSS);
};


// func000927
// function begins at statement 19784, parm_start=12960
// OP_STATE	9657	12960	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000927 = [37, func000928]
{
    ai_charge(MOVETYPE_TOSS);
};


// func000928
// function begins at statement 19788, parm_start=12961
// OP_STATE	9659	12961	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000928 = [38, func000929]
{
    ai_charge(MOVETYPE_FLY);
};


// func000929
// function begins at statement 19792, parm_start=12962
// OP_STATE	9661	12962	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000929 = [39, func000930]
{
    ai_charge(MOVETYPE_STEP);
};


// func000930
// function begins at statement 19796, parm_start=12963
// OP_STATE	746	12963	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000930 = [40, func000931]
{
    ai_charge(TRUE);
};


// func000931
// function begins at statement 19800, parm_start=12964
// OP_STATE	9993	12964	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000931 = [41, func000932]
{
    ai_charge(FALSE);
};


// func000932
// function begins at statement 19804, parm_start=12965
// OP_STATE	9995	12965	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000932 = [42, func000933]
{
    ai_charge(FALSE);
};


// func000933
// function begins at statement 19808, parm_start=12966
// OP_STATE	9997	12966	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000933 = [43, func000934]
{
    ai_charge(FALSE);
};


// func000934
// function begins at statement 19812, parm_start=12967
// OP_STATE	9999	12967	0
// OP_LOAD_ENT	28	181	12972
// OP_NOT_ENT	12972	0	12973
// OP_IFNOT	12973	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_LOAD_ENT	28	181	12974
// OP_LOAD_V	12974	105	12975
// OP_LOAD_V	28	105	12978
// OP_SUB_V	12975	12978	12981
// OP_STORE_V	12981	12968	0
// OP_STORE_V	12968	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	12984
// OP_IFNOT	12984	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	12985
// OP_STORE_V	12985	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	524	0	0
// OP_NOT_F	1	0	12986
// OP_IFNOT	12986	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_CALL0	457	0	0
// OP_ADD_F	1	1	12987
// OP_CALL0	457	0	0
// OP_ADD_F	12987	1	12988
// OP_MUL_F	12988	746	12989
// OP_STORE_F	12989	12971	0
// OP_LOAD_ENT	28	181	12990
// OP_STORE_V	12990	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12971	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12991	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12992
// OP_MUL_VF	59	218	12995
// OP_ADD_V	12992	12995	12998
// OP_STORE_V	12998	4	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	1997	13001
// OP_MUL_FV	13001	65	13002
// OP_STORE_V	13002	7	0
// OP_CALL2	5444	0	0
// OP_LOAD_V	28	105	13005
// OP_MUL_VF	59	218	13008
// OP_ADD_V	13005	13008	13011
// OP_STORE_V	13011	4	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	1997	13014
// OP_MUL_FV	13014	65	13015
// OP_STORE_V	13015	7	0
// OP_CALL2	5444	0	0
// OP_DONE	0	0	0
void () func000934 = [44, func000935]
{
    local vector globaldef003977;
    local float globaldef003981;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(FALSE);
    globaldef003977 = self.enemy.origin - self.origin;
    
    if(vlen(globaldef003977) > 100)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    random();
    globaldef003981 = ((random() + random()) + random()) * GLOBALDEFSEVENTWONINE;
    T_Damage(self.enemy, self, self, globaldef003981);
    sound(self, CHAN_VOICE, "shambler/smack.wav", TRUE, ATTN_NORM);
    func000253(self.origin + (v_forward * FL_INWATER), (func000249() * 100) * v_right);
    func000253(self.origin + (v_forward * FL_INWATER), (func000249() * 100) * v_right);
};


// func000935
// function begins at statement 19874, parm_start=13018
// OP_STATE	2598	13018	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000935 = [45, func000936]
{
    ai_charge(MOVETYPE_FLY);
};


// func000936
// function begins at statement 19878, parm_start=13019
// OP_STATE	10002	12950	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000936 = [46, func000919]
{
    ai_charge(MOVETYPE_STEP);
};


// func000937
// function begins at statement 19882, parm_start=13020
// OP_LOAD_ENT	28	181	13025
// OP_NOT_ENT	13025	0	13026
// OP_IFNOT	13026	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_LOAD_ENT	28	181	13027
// OP_LOAD_V	13027	105	13028
// OP_LOAD_V	28	105	13031
// OP_SUB_V	13028	13031	13034
// OP_STORE_V	13034	13021	0
// OP_STORE_V	13021	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	13037
// OP_IFNOT	13037	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_CALL0	457	0	0
// OP_ADD_F	1	1	13038
// OP_CALL0	457	0	0
// OP_ADD_F	13038	1	13039
// OP_MUL_F	13039	2323	13040
// OP_STORE_F	13040	13024	0
// OP_LOAD_ENT	28	181	13041
// OP_STORE_V	13041	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	13024	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12991	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_IFNOT	13020	11	0
// OP_LOAD_V	28	117	13042
// OP_STORE_V	13042	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	13045
// OP_MUL_VF	59	218	13048
// OP_ADD_V	13045	13048	13051
// OP_STORE_V	13051	4	0
// OP_MUL_FV	13020	65	13054
// OP_STORE_V	13054	7	0
// OP_CALL2	5444	0	0
// OP_DONE	0	0	0
void (float globaldef003985) func000937 = 
{
    local vector globaldef003986;
    local float globaldef003990;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(MOVETYPE_BOUNCE);
    globaldef003986 = self.enemy.origin - self.origin;
    
    if(vlen(globaldef003986) > 100)
    {
        return;
    }
    
    random();
    globaldef003990 = ((random() + random()) + random()) * 20;
    T_Damage(self.enemy, self, self, globaldef003990);
    sound(self, CHAN_VOICE, "shambler/smack.wav", TRUE, ATTN_NORM);
    
    if(globaldef003985)
    {
        makevectors(self.angles);
        func000253(self.origin + (v_forward * FL_INWATER), globaldef003985 * v_right);
    }
    
};


// sham_swingl1
// function begins at statement 19929, parm_start=13057
// OP_STATE	9921	13057	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13058	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () sham_swingl1 = [56, func000939]
{
    sound(self, CHAN_VOICE, "shambler/melee2.wav", TRUE, ATTN_NORM);
    ai_charge(MOVETYPE_FLY);
};


// func000939
// function begins at statement 19939, parm_start=13059
// OP_STATE	9923	13059	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000939 = [57, func000940]
{
    ai_charge(MOVETYPE_WALK);
};


// func000940
// function begins at statement 19943, parm_start=13060
// OP_STATE	9925	13060	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000940 = [58, func000941]
{
    ai_charge(MOVETYPE_PUSH);
};


// func000941
// function begins at statement 19947, parm_start=13061
// OP_STATE	2783	13061	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000941 = [59, func000942]
{
    ai_charge(MOVETYPE_WALK);
};


// func000942
// function begins at statement 19951, parm_start=13062
// OP_STATE	2019	13062	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000942 = [60, func000943]
{
    ai_charge(MOVETYPE_PUSH);
};


// func000943
// function begins at statement 19955, parm_start=13063
// OP_STATE	9928	13063	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000943 = [61, func000944]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};


// func000944
// function begins at statement 19959, parm_start=13064
// OP_STATE	9930	13064	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	738	4	0
// OP_CALL1	13019	0	0
// OP_DONE	0	0	0
void () func000944 = [62, func000945]
{
    ai_charge(MOVETYPE_FLY);
    func000937(GLOBALDEFSEVENTWOONE);
};


// func000945
// function begins at statement 19965, parm_start=13065
// OP_STATE	6707	13065	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000945 = [63, func000946]
{
    ai_charge(MOVETYPE_STEP);
};


// func000946
// function begins at statement 19969, parm_start=13066
// OP_STATE	220	12950	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	13066
// OP_IFNOT	13066	3	0
// OP_ADDRESS	28	148	13067
// OP_STOREP_FNC	3185	13067	0
// OP_DONE	0	0	0
void () func000946 = [64, func000919]
{
    ai_charge(FL_CLIENT);
    
    if(random() < RA_PLAYERSTATTIME)
    {
        self.think = sham_swingr1;
    }
    
};


// sham_swingr1
// function begins at statement 19978, parm_start=13068
// OP_STATE	10004	13068	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12958	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () sham_swingr1 = [47, func000948]
{
    sound(self, CHAN_VOICE, "shambler/melee1.wav", TRUE, ATTN_NORM);
    ai_charge(TRUE);
};


// func000948
// function begins at statement 19988, parm_start=13069
// OP_STATE	10006	13069	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000948 = [48, func000949]
{
    ai_charge(FL_CLIENT);
};


// func000949
// function begins at statement 19992, parm_start=13070
// OP_STATE	10008	13070	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000949 = [49, func000950]
{
    ai_charge(14);
};


// func000950
// function begins at statement 19996, parm_start=13071
// OP_STATE	1470	13071	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000950 = [50, func000951]
{
    ai_charge(MOVETYPE_PUSH);
};


// func000951
// function begins at statement 20000, parm_start=13072
// OP_STATE	9911	13072	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000951 = [51, func000952]
{
    ai_charge(MOVETYPE_WALK);
};


// func000952
// function begins at statement 20004, parm_start=13073
// OP_STATE	9913	13073	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000952 = [52, func000953]
{
    ai_charge(MOVETYPE_TOSS);
};


// func000953
// function begins at statement 20008, parm_start=13074
// OP_STATE	9915	13074	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	13075	4	0
// OP_CALL1	13019	0	0
// OP_DONE	0	0	0
void () func000953 = [53, func000954]
{
    ai_charge(MOVETYPE_TOSS);
    func000937(-250);
};


// func000954
// function begins at statement 20014, parm_start=13076
// OP_STATE	9917	13076	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000954 = [54, func000955]
{
    ai_charge(MOVETYPE_WALK);
};


// func000955
// function begins at statement 20018, parm_start=13077
// OP_STATE	9919	12950	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	13077
// OP_IFNOT	13077	3	0
// OP_ADDRESS	28	148	13078
// OP_STOREP_FNC	3186	13078	0
// OP_DONE	0	0	0
void () func000955 = [55, func000919]
{
    ai_charge(TRUE);
    ai_charge(MOVETYPE_BOUNCE);
    
    if(random() < RA_PLAYERSTATTIME)
    {
        self.think = sham_swingl1;
    }
    
};


// func000956
// function begins at statement 20029, parm_start=13080
// OP_CALL0	457	0	0
// OP_STORE_F	1	13080	0
// OP_GT	13080	4474	13081
// OP_LOAD_F	28	152	13082
// OP_EQ_F	13082	740	13083
// OP_OR	13081	13083	13084
// OP_IFNOT	13084	3	0
// OP_CALL0	3184	0	0
// OP_GOTO	6	0	0
// OP_GT	13080	3409	13085
// OP_IFNOT	13085	3	0
// OP_CALL0	3185	0	0
// OP_GOTO	2	0	0
// OP_CALL0	3186	0	0
// OP_DONE	0	0	0
void () func000956 = 
{
    local float globaldef004010;
    globaldef004010 = random();
    if((globaldef004010 > 0.6) || (self.health == GLOBALDEFSEVENTWOTHREE))
    {
        sham_smash1();
    }
    else
    {
        if(globaldef004010 > 0.3)
        {
            sham_swingr1();
        }
        else
        {
            sham_swingl1();
        }
        
    }
    
};


// func000957
// function begins at statement 20044, parm_start=13087
// OP_ADDRESS	28	133	13093
// OP_LOAD_F	28	133	13094
// OP_BITOR	13094	339	13095
// OP_STOREP_F	13095	13093	0
// OP_CALL0	3190	0	0
// OP_LOAD_V	28	105	13096
// OP_ADD_V	13096	8475	13099
// OP_STORE_V	13099	13087	0
// OP_LOAD_ENT	28	181	13102
// OP_LOAD_V	13102	105	13103
// OP_ADD_V	13103	5392	13106
// OP_SUB_V	13106	13087	13109
// OP_STORE_V	13109	13090	0
// OP_STORE_V	13090	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	13090	0
// OP_STORE_V	13087	4	0
// OP_LOAD_V	28	105	13112
// OP_MUL_VF	13090	740	13115
// OP_ADD_V	13112	13115	13118
// OP_STORE_V	13118	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	13087	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	13088	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	13089	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	13087	4	0
// OP_STORE_V	71	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	5802	0	0
// OP_DONE	0	0	0
void () func000957 = 
{
    local vector globaldef004012;
    local vector globaldef004016;
    self.effects = self.effects | EF_MUZZLEFLASH;
    ai_face();
    globaldef004012 = self.origin + '0 0 40';
    globaldef004016 = (self.enemy.origin + '0 0 16') - globaldef004012;
    globaldef004016 = normalize(globaldef004016);
    traceline(globaldef004012, self.origin + (globaldef004016 * GLOBALDEFSEVENTWOTHREE), TRUE, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING1);
    WriteEntity(MSG_BROADCAST, self);
    WriteCoord(MSG_BROADCAST, globaldef004012_x);
    WriteCoord(MSG_BROADCAST, globaldef004012_y);
    WriteCoord(MSG_BROADCAST, globaldef004012_z);
    WriteCoord(MSG_BROADCAST, trace_endpos_x);
    WriteCoord(MSG_BROADCAST, trace_endpos_y);
    WriteCoord(MSG_BROADCAST, trace_endpos_z);
    func000273(globaldef004012, trace_endpos, self, MOVETYPE_BOUNCE);
};


// func000958
// function begins at statement 20101, parm_start=13122
// OP_STATE	9934	13122	0
// OP_CALL0	3190	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13123	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000958 = [65, func000959]
{
    ai_face();
    sound(self, CHAN_WEAPON, "shambler/sattck1.wav", TRUE, ATTN_NORM);
};


// func000959
// function begins at statement 20110, parm_start=13124
// OP_STATE	9936	13124	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000959 = [66, func000960]
{
    ai_face();
};


// func000960
// function begins at statement 20113, parm_start=13125
// OP_STATE	9938	13125	0
// OP_CALL0	3190	0	0
// OP_ADDRESS	28	150	13126
// OP_LOAD_F	28	150	13127
// OP_ADD_F	13127	3267	13128
// OP_STOREP_F	13128	13126	0
// OP_ADDRESS	28	133	13130
// OP_LOAD_F	28	133	13131
// OP_BITOR	13131	339	13132
// OP_STOREP_F	13132	13130	0
// OP_CALL0	3190	0	0
// OP_ADDRESS	28	201	13133
// OP_CALL0	464	0	0
// OP_STOREP_ENT	1	13133	0
// OP_LOAD_ENT	28	201	13134
// OP_STORE_ENT	13134	13129	0
// OP_STORE_V	13129	4	0
// OP_STORE_V	13135	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	13129	4	0
// OP_LOAD_V	28	105	13136
// OP_STORE_V	13136	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	13129	117	13139
// OP_LOAD_V	28	117	13142
// OP_STOREP_V	13142	13139	0
// OP_ADDRESS	13129	150	13145
// OP_ADD_F	31	5599	13146
// OP_STOREP_F	13146	13145	0
// OP_ADDRESS	13129	148	13147
// OP_STOREP_FNC	521	13147	0
// OP_DONE	0	0	0
void () func000960 = [67, func000961]
{
    local entity globaldef004025;
    ai_face();
    self.nextthink = self.nextthink + 0.2;
    self.effects = self.effects | EF_MUZZLEFLASH;
    ai_face();
    self.owner = spawn();
    globaldef004025 = self.owner;
    setmodel(globaldef004025, "progs/s_light.mdl");
    setorigin(globaldef004025, self.origin);
    globaldef004025.angles = self.angles;
    globaldef004025.nextthink = time + 0.7;
    globaldef004025.think = SUB_Remove;
};


// func000961
// function begins at statement 20145, parm_start=13148
// OP_STATE	8193	13148	0
// OP_ADDRESS	28	133	13149
// OP_LOAD_F	28	133	13150
// OP_BITOR	13150	339	13151
// OP_STOREP_F	13151	13149	0
// OP_LOAD_ENT	28	201	13152
// OP_ADDRESS	13152	131	13153
// OP_STOREP_F	214	13153	0
// OP_DONE	0	0	0
void () func000961 = [68, func000962]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.owner.frame = TRUE;
};


// func000962
// function begins at statement 20154, parm_start=13154
// OP_STATE	8196	13154	0
// OP_ADDRESS	28	133	13155
// OP_LOAD_F	28	133	13156
// OP_BITOR	13156	339	13157
// OP_STOREP_F	13157	13155	0
// OP_LOAD_ENT	28	201	13158
// OP_ADDRESS	13158	131	13159
// OP_STOREP_F	216	13159	0
// OP_DONE	0	0	0
void () func000962 = [69, func000963]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.owner.frame = FL_SWIM;
};


// func000963
// function begins at statement 20163, parm_start=13160
// OP_STATE	1536	13160	0
// OP_LOAD_ENT	28	201	13161
// OP_STORE_V	13161	4	0
// OP_CALL1	465	0	0
// OP_CALL0	13086	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13162	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000963 = [70, func000964]
{
    remove(self.owner);
    func000957();
    sound(self, CHAN_WEAPON, "shambler/sboom.wav", TRUE, ATTN_NORM);
};


// func000964
// function begins at statement 20175, parm_start=13163
// OP_STATE	5487	13163	0
// OP_CALL0	13086	0	0
// OP_DONE	0	0	0
void () func000964 = [73, func000965]
{
    func000957();
};


// func000965
// function begins at statement 20178, parm_start=13164
// OP_STATE	9946	13164	0
// OP_CALL0	13086	0	0
// OP_DONE	0	0	0
void () func000965 = [74, func000966]
{
    func000957();
};


// func000966
// function begins at statement 20181, parm_start=13165
// OP_STATE	9173	13165	0
// OP_EQ_F	354	228	13166
// OP_IFNOT	13166	2	0
// OP_CALL0	13086	0	0
// OP_DONE	0	0	0
void () func000966 = [75, func000967]
{
    
    if(skill == MOVETYPE_WALK)
    {
        func000957();
    }
    
};


// func000967
// function begins at statement 20186, parm_start=13167
// OP_STATE	9949	12950	0
// OP_DONE	0	0	0
void () func000967 = [76, func000919]
{
};


// func000968
// function begins at statement 20188, parm_start=13168
// OP_STATE	9951	13168	0
// OP_DONE	0	0	0
void () func000968 = [77, func000969]
{
};


// func000969
// function begins at statement 20190, parm_start=13169
// OP_STATE	9953	13169	0
// OP_DONE	0	0	0
void () func000969 = [78, func000970]
{
};


// func000970
// function begins at statement 20192, parm_start=13170
// OP_STATE	9955	13170	0
// OP_DONE	0	0	0
void () func000970 = [79, func000971]
{
};


// func000971
// function begins at statement 20194, parm_start=13171
// OP_STATE	2805	13171	0
// OP_DONE	0	0	0
void () func000971 = [80, func000972]
{
};


// func000972
// function begins at statement 20196, parm_start=13172
// OP_STATE	8204	13172	0
// OP_DONE	0	0	0
void () func000972 = [81, func000973]
{
};


// func000973
// function begins at statement 20198, parm_start=13173
// OP_STATE	9959	12950	0
// OP_DONE	0	0	0
void () func000973 = [82, func000919]
{
};


// func000974
// function begins at statement 20200, parm_start=13174
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13176	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	152	13177
// OP_LE	13177	213	13178
// OP_IFNOT	13178	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	5347	13179
// OP_GT	13179	13175	13180
// OP_IFNOT	13180	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	379	13181
// OP_GT	13181	31	13182
// OP_IFNOT	13182	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	13183
// OP_ADD_F	31	216	13184
// OP_STOREP_F	13184	13183	0
// OP_CALL0	13167	0	0
// OP_DONE	0	0	0
void (entity globaldef004041, float globaldef004042) func000974 = 
{
    sound(self, CHAN_VOICE, "shambler/shurt2.wav", TRUE, ATTN_NORM);
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if((random() * 400) > globaldef004042)
    {
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    self.pain_finished = time + FL_SWIM;
    func000968();
};


// func000975
// function begins at statement 20224, parm_start=13186
// OP_STATE	9961	13186	0
// OP_DONE	0	0	0
void () func000975 = [83, func000976]
{
};


// func000976
// function begins at statement 20226, parm_start=13187
// OP_STATE	7694	13187	0
// OP_DONE	0	0	0
void () func000976 = [84, func000977]
{
};


// func000977
// function begins at statement 20228, parm_start=13188
// OP_STATE	9963	13188	0
// OP_ADDRESS	28	104	13189
// OP_STOREP_F	237	13189	0
// OP_DONE	0	0	0
void () func000977 = [85, func000978]
{
    self.solid = SOLID_NOT;
};


// func000978
// function begins at statement 20232, parm_start=13190
// OP_STATE	9965	13190	0
// OP_DONE	0	0	0
void () func000978 = [86, func000979]
{
};


// func000979
// function begins at statement 20234, parm_start=13191
// OP_STATE	9967	13191	0
// OP_DONE	0	0	0
void () func000979 = [87, func000980]
{
};


// func000980
// function begins at statement 20236, parm_start=13192
// OP_STATE	9969	13192	0
// OP_DONE	0	0	0
void () func000980 = [88, func000981]
{
};


// func000981
// function begins at statement 20238, parm_start=13193
// OP_STATE	9971	13193	0
// OP_DONE	0	0	0
void () func000981 = [89, func000982]
{
};


// func000982
// function begins at statement 20240, parm_start=13194
// OP_STATE	2658	13194	0
// OP_DONE	0	0	0
void () func000982 = [90, func000983]
{
};


// func000983
// function begins at statement 20242, parm_start=13195
// OP_STATE	9974	13195	0
// OP_DONE	0	0	0
void () func000983 = [91, func000984]
{
};


// func000984
// function begins at statement 20244, parm_start=13196
// OP_STATE	9976	13196	0
// OP_DONE	0	0	0
void () func000984 = [92, func000985]
{
};


// func000985
// function begins at statement 20246, parm_start=13197
// OP_STATE	9978	13196	0
// OP_DONE	0	0	0
void () func000985 = [93, func000985]
{
};


// func000986
// function begins at statement 20248, parm_start=13198
// OP_LOAD_F	28	152	13198
// OP_LT	13198	13199	13200
// OP_IFNOT	13200	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	13201	4	0
// OP_LOAD_F	28	152	13202
// OP_STORE_V	13202	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	13203
// OP_STORE_V	13203	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13204
// OP_STORE_V	13204	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	13205
// OP_STORE_V	13205	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13206	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	13185	0	0
// OP_DONE	0	0	0
void () func000986 = 
{
    
    if(self.health < -60)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_shams.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "shambler/sdeath.wav", TRUE, ATTN_NORM);
    func000975();
};


// monster_shambler
// function begins at statement 20282, parm_start=13208
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13208	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13135	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13201	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6691	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13123	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13162	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13206	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13176	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12949	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3663	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12958	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13058	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12991	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13209
// OP_STOREP_F	240	13209	0
// OP_ADDRESS	28	103	13210
// OP_STOREP_F	229	13210	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13208	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13211
// OP_STOREP_F	740	13211	0
// OP_ADDRESS	28	361	13212
// OP_STOREP_FNC	12919	13212	0
// OP_ADDRESS	28	362	13213
// OP_STOREP_FNC	12936	13213	0
// OP_ADDRESS	28	363	13214
// OP_STOREP_FNC	12950	13214	0
// OP_ADDRESS	28	367	13215
// OP_STOREP_FNC	13197	13215	0
// OP_ADDRESS	28	365	13216
// OP_STOREP_FNC	13079	13216	0
// OP_ADDRESS	28	364	13217
// OP_STOREP_FNC	13121	13217	0
// OP_ADDRESS	28	366	13218
// OP_STOREP_FNC	13173	13218	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_shambler = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/shambler.mdl");
    precache_model("progs/s_light.mdl");
    precache_model("progs/h_shams.mdl");
    precache_model("progs/bolt.mdl");
    precache_sound("shambler/sattck1.wav");
    precache_sound("shambler/sboom.wav");
    precache_sound("shambler/sdeath.wav");
    precache_sound("shambler/shurt2.wav");
    precache_sound("shambler/sidle.wav");
    precache_sound("shambler/ssight.wav");
    precache_sound("shambler/melee1.wav");
    precache_sound("shambler/melee2.wav");
    precache_sound("shambler/smack.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shambler.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = GLOBALDEFSEVENTWOTHREE;
    self.th_stand = func000890;
    self.th_walk = func000907;
    self.th_run = func000919;
    self.th_die = func000986;
    self.th_melee = func000956;
    self.th_missile = func000958;
    self.th_pain = func000974;
    func000531();
};

