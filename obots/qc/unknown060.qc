void () func001304;
void () func001284;

// func001265
// function begins at statement 21949, parm_start=13928
// OP_LOAD_ENT	28	181	13932
// OP_NOT_ENT	13932	0	13933
// OP_IFNOT	13933	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_LOAD_ENT	28	181	13934
// OP_STORE_V	13934	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	524	0	0
// OP_NOT_F	1	0	13935
// OP_IFNOT	13935	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	13936
// OP_LOAD_V	13936	105	13937
// OP_LOAD_V	28	105	13940
// OP_SUB_V	13937	13940	13943
// OP_STORE_V	13943	13928	0
// OP_STORE_V	13928	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	13946
// OP_IFNOT	13946	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_CALL0	457	0	0
// OP_ADD_F	1	1	13947
// OP_CALL0	457	0	0
// OP_ADD_F	13947	1	13948
// OP_MUL_F	13948	217	13949
// OP_STORE_F	13949	13931	0
// OP_LOAD_ENT	28	181	13950
// OP_STORE_V	13950	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	13931	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void () func001265 = 
{
    local vector globaldef004411;
    local float globaldef004415;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(MOVETYPE_BOUNCE);
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    globaldef004411 = self.enemy.origin - self.origin;
    
    if(vlen(globaldef004411) > 100)
    {
        return;
    }
    
    random();
    globaldef004415 = ((random() + random()) + random()) * FL_CLIENT;
    T_Damage(self.enemy, self, self, globaldef004415);
};


// func001266
// function begins at statement 21986, parm_start=13952
// OP_LOAD_F	28	152	13953
// OP_LE	13953	213	13954
// OP_IFNOT	13954	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	13955
// OP_IFNOT	13955	15	0
// OP_LOAD_V	28	113	13956
// OP_STORE_V	13956	4	0
// OP_CALL1	462	0	0
// OP_GT	1	540	13959
// OP_IFNOT	13959	10	0
// OP_CALL0	457	0	0
// OP_MUL_F	235	1	13960
// OP_ADD_F	235	13960	13961
// OP_STORE_F	13961	13952	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	13952	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	486	0	0
// OP_NOT_F	1	0	13962
// OP_IFNOT	13962	12	0
// OP_LOAD_F	28	182	13963
// OP_BITAND	13963	223	13964
// OP_IFNOT	13964	8	0
// OP_ADDRESS	28	146	13965
// OP_STOREP_FNC	519	13965	0
// OP_ADDRESS	28	148	13966
// OP_STOREP_FNC	13925	13966	0
// OP_ADDRESS	28	150	13967
// OP_ADD_F	31	3036	13968
// OP_STOREP_F	13968	13967	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	13969
// OP_STOREP_FNC	519	13969	0
// OP_ADDRESS	28	148	13970
// OP_STOREP_FNC	13926	13970	0
// OP_ADDRESS	28	150	13971
// OP_ADD_F	31	3036	13972
// OP_STOREP_F	13972	13971	0
// OP_DONE	0	0	0
void () func001266 = 
{
    local float globaldef004417;
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > globaldef000523)
        {
            globaldef004417 = MOVETYPE_BOUNCE + (MOVETYPE_BOUNCE * random());
            T_Damage(other, self, self, globaldef004417);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = func001304;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = func001284;
    self.nextthink = time + 0.1;
};


// func001267
// function begins at statement 22029, parm_start=13974
// OP_STATE	8196	13974	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001267 = [69, func001268]
{
    ai_stand();
};


// func001268
// function begins at statement 22032, parm_start=13975
// OP_STATE	1536	13975	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001268 = [70, func001269]
{
    ai_stand();
};


// func001269
// function begins at statement 22035, parm_start=13976
// OP_STATE	8201	13976	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001269 = [71, func001270]
{
    ai_stand();
};


// func001270
// function begins at statement 22038, parm_start=13977
// OP_STATE	9943	13977	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001270 = [72, func001271]
{
    ai_stand();
};


// func001271
// function begins at statement 22041, parm_start=13978
// OP_STATE	5487	13978	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001271 = [73, func001272]
{
    ai_stand();
};


// func001272
// function begins at statement 22044, parm_start=13979
// OP_STATE	9946	13979	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001272 = [74, func001273]
{
    ai_stand();
};


// func001273
// function begins at statement 22047, parm_start=13980
// OP_STATE	9173	13980	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001273 = [75, func001274]
{
    ai_stand();
};


// func001274
// function begins at statement 22050, parm_start=13981
// OP_STATE	9949	13981	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001274 = [76, func001275]
{
    ai_stand();
};


// func001275
// function begins at statement 22053, parm_start=13982
// OP_STATE	9951	13973	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001275 = [77, func001267]
{
    ai_stand();
};


// func001276
// function begins at statement 22056, parm_start=13983
// OP_STATE	9953	13983	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13984
// OP_IFNOT	13984	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13985	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001276 = [78, func001277]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_CLIENT);
};


// func001277
// function begins at statement 22069, parm_start=13986
// OP_STATE	9955	13986	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001277 = [79, func001278]
{
    ai_walk(FL_CLIENT);
};


// func001278
// function begins at statement 22073, parm_start=13987
// OP_STATE	2805	13987	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001278 = [80, func001279]
{
    ai_walk(FL_CLIENT);
};


// func001279
// function begins at statement 22077, parm_start=13988
// OP_STATE	8204	13988	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001279 = [81, func001280]
{
    ai_walk(FL_CLIENT);
};


// func001280
// function begins at statement 22081, parm_start=13989
// OP_STATE	9959	13989	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001280 = [82, func001281]
{
    ai_walk(FL_CLIENT);
};


// func001281
// function begins at statement 22085, parm_start=13990
// OP_STATE	9961	13990	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001281 = [83, func001282]
{
    ai_walk(FL_CLIENT);
};


// func001282
// function begins at statement 22089, parm_start=13991
// OP_STATE	7694	13991	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001282 = [84, func001283]
{
    ai_walk(FL_CLIENT);
};


// func001283
// function begins at statement 22093, parm_start=13992
// OP_STATE	9963	13982	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001283 = [85, func001276]
{
    ai_walk(FL_CLIENT);
};


// func001284
// function begins at statement 22097, parm_start=13992
// OP_STATE	10006	13992	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13993
// OP_IFNOT	13993	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13985	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001284 = [48, func001285]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(FL_INWATER);
};


// func001285
// function begins at statement 22110, parm_start=13994
// OP_STATE	10008	13994	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001285 = [49, func001286]
{
    ai_run(FL_MONSTER);
};


// func001286
// function begins at statement 22114, parm_start=13995
// OP_STATE	1470	13995	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001286 = [50, func001287]
{
    ai_run(FL_MONSTER);
};


// func001287
// function begins at statement 22118, parm_start=13996
// OP_STATE	9911	13996	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001287 = [51, func001288]
{
    ai_run(20);
};


// func001288
// function begins at statement 22122, parm_start=13997
// OP_STATE	9913	13997	0
// OP_STORE_V	220	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001288 = [52, func001289]
{
    ai_run(FL_GODMODE);
};


// func001289
// function begins at statement 22126, parm_start=13998
// OP_STATE	9915	13998	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001289 = [53, func001290]
{
    ai_run(FL_MONSTER);
};


// func001290
// function begins at statement 22130, parm_start=13999
// OP_STATE	9917	13999	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001290 = [54, func001291]
{
    ai_run(FL_INWATER);
};


// func001291
// function begins at statement 22134, parm_start=14000
// OP_STATE	9919	14000	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001291 = [55, func001292]
{
    ai_run(FL_MONSTER);
};


// func001292
// function begins at statement 22138, parm_start=14001
// OP_STATE	9921	14001	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001292 = [56, func001293]
{
    ai_run(FL_MONSTER);
};


// func001293
// function begins at statement 22142, parm_start=14002
// OP_STATE	9923	14002	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001293 = [57, func001294]
{
    ai_run(20);
};


// func001294
// function begins at statement 22146, parm_start=14003
// OP_STATE	9925	14003	0
// OP_STORE_V	220	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001294 = [58, func001295]
{
    ai_run(FL_GODMODE);
};


// func001295
// function begins at statement 22150, parm_start=14004
// OP_STATE	2783	13926	0
// OP_STORE_V	219	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001295 = [59, func001284]
{
    ai_run(FL_MONSTER);
};


// func001296
// function begins at statement 22154, parm_start=14005
// OP_STATE	213	14005	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001296 = [0, func001297]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001297
// function begins at statement 22158, parm_start=14006
// OP_STATE	214	14006	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001297 = [1, func001298]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001298
// function begins at statement 22162, parm_start=14007
// OP_STATE	216	14007	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001298 = [2, func001299]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001299
// function begins at statement 22166, parm_start=14008
// OP_STATE	228	14008	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14009	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	13927	0	0
// OP_DONE	0	0	0
void () func001299 = [3, func001300]
{
    sound(self, CHAN_VOICE, "dog/dattack1.wav", TRUE, ATTN_NORM);
    func001265();
};


// func001300
// function begins at statement 22175, parm_start=14010
// OP_STATE	229	14010	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001300 = [4, func001301]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001301
// function begins at statement 22179, parm_start=14011
// OP_STATE	230	14011	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001301 = [5, func001302]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001302
// function begins at statement 22183, parm_start=14012
// OP_STATE	231	14012	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001302 = [6, func001303]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001303
// function begins at statement 22187, parm_start=14013
// OP_STATE	232	13926	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001303 = [7, func001284]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// func001304
// function begins at statement 22191, parm_start=14013
// OP_STATE	2019	14013	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001304 = [60, func001305]
{
    ai_face();
};


// func001305
// function begins at statement 22194, parm_start=14014
// OP_STATE	9928	14014	0
// OP_CALL0	3190	0	0
// OP_ADDRESS	28	146	14015
// OP_STOREP_FNC	13951	14015	0
// OP_LOAD_V	28	117	14016
// OP_STORE_V	14016	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	108	14019
// OP_LOAD_F	28	108	14020
// OP_ADD_F	14020	214	14021
// OP_STOREP_F	14021	14019	0
// OP_ADDRESS	28	113	14022
// OP_MUL_VF	59	540	14025
// OP_ADD_V	14025	14028	14031
// OP_STOREP_V	14031	14022	0
// OP_LOAD_F	28	182	14034
// OP_BITAND	14034	223	14035
// OP_IFNOT	14035	5	0
// OP_ADDRESS	28	182	14036
// OP_LOAD_F	28	182	14037
// OP_SUB_F	14037	223	14038
// OP_STOREP_F	14038	14036	0
// OP_DONE	0	0	0
void () func001305 = [61, func001306]
{
    ai_face();
    self.touch = func001266;
    makevectors(self.angles);
    self.origin_z = self.origin_z + TRUE;
    self.velocity = (v_forward * globaldef000523) + '0 0 200';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};


// func001306
// function begins at statement 22217, parm_start=14039
// OP_STATE	9930	14039	0
// OP_DONE	0	0	0
void () func001306 = [62, func001307]
{
};


// func001307
// function begins at statement 22219, parm_start=14040
// OP_STATE	6707	14040	0
// OP_DONE	0	0	0
void () func001307 = [63, func001308]
{
};


// func001308
// function begins at statement 22221, parm_start=14041
// OP_STATE	220	14041	0
// OP_DONE	0	0	0
void () func001308 = [64, func001309]
{
};


// func001309
// function begins at statement 22223, parm_start=14042
// OP_STATE	9934	14042	0
// OP_DONE	0	0	0
void () func001309 = [65, func001310]
{
};


// func001310
// function begins at statement 22225, parm_start=14043
// OP_STATE	9936	14043	0
// OP_DONE	0	0	0
void () func001310 = [66, func001311]
{
};


// func001311
// function begins at statement 22227, parm_start=14044
// OP_STATE	9938	14044	0
// OP_DONE	0	0	0
void () func001311 = [67, func001312]
{
};


// func001312
// function begins at statement 22229, parm_start=14045
// OP_STATE	8193	14044	0
// OP_DONE	0	0	0
void () func001312 = [68, func001312]
{
};


// func001313
// function begins at statement 22231, parm_start=14046
// OP_STATE	306	14046	0
// OP_DONE	0	0	0
void () func001313 = [26, func001314]
{
};


// func001314
// function begins at statement 22233, parm_start=14047
// OP_STATE	307	14047	0
// OP_DONE	0	0	0
void () func001314 = [27, func001315]
{
};


// func001315
// function begins at statement 22235, parm_start=14048
// OP_STATE	308	14048	0
// OP_DONE	0	0	0
void () func001315 = [28, func001316]
{
};


// func001316
// function begins at statement 22237, parm_start=14049
// OP_STATE	9664	14049	0
// OP_DONE	0	0	0
void () func001316 = [29, func001317]
{
};


// func001317
// function begins at statement 22239, parm_start=14050
// OP_STATE	309	14050	0
// OP_DONE	0	0	0
void () func001317 = [30, func001318]
{
};


// func001318
// function begins at statement 22241, parm_start=14051
// OP_STATE	310	13926	0
// OP_DONE	0	0	0
void () func001318 = [31, func001284]
{
};


// func001319
// function begins at statement 22243, parm_start=14052
// OP_STATE	219	14052	0
// OP_DONE	0	0	0
void () func001319 = [32, func001320]
{
};


// func001320
// function begins at statement 22245, parm_start=14053
// OP_STATE	312	14053	0
// OP_DONE	0	0	0
void () func001320 = [33, func001321]
{
};


// func001321
// function begins at statement 22247, parm_start=14054
// OP_STATE	9671	14054	0
// OP_STORE_V	229	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001321 = [34, func001322]
{
    ai_pain(MOVETYPE_STEP);
};


// func001322
// function begins at statement 22251, parm_start=14055
// OP_STATE	5878	14055	0
// OP_STORE_V	791	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001322 = [35, func001323]
{
    ai_pain(globaldef000774);
};


// func001323
// function begins at statement 22255, parm_start=14056
// OP_STATE	9655	14056	0
// OP_STORE_V	791	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001323 = [36, func001324]
{
    ai_pain(globaldef000774);
};


// func001324
// function begins at statement 22259, parm_start=14057
// OP_STATE	9657	14057	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001324 = [37, func001325]
{
    ai_pain(FL_SWIM);
};


// func001325
// function begins at statement 22263, parm_start=14058
// OP_STATE	9659	14058	0
// OP_DONE	0	0	0
void () func001325 = [38, func001326]
{
};


// func001326
// function begins at statement 22265, parm_start=14059
// OP_STATE	9661	14059	0
// OP_STORE_V	229	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001326 = [39, func001327]
{
    ai_pain(MOVETYPE_STEP);
};


// func001327
// function begins at statement 22269, parm_start=14060
// OP_STATE	746	14060	0
// OP_DONE	0	0	0
void () func001327 = [40, func001328]
{
};


// func001328
// function begins at statement 22271, parm_start=14061
// OP_STATE	9993	14061	0
// OP_STORE_V	235	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001328 = [41, func001329]
{
    ai_pain(MOVETYPE_BOUNCE);
};


// func001329
// function begins at statement 22275, parm_start=14062
// OP_STATE	9995	14062	0
// OP_DONE	0	0	0
void () func001329 = [42, func001330]
{
};


// func001330
// function begins at statement 22277, parm_start=14063
// OP_STATE	9997	14063	0
// OP_DONE	0	0	0
void () func001330 = [43, func001331]
{
};


// func001331
// function begins at statement 22279, parm_start=14064
// OP_STATE	9999	14064	0
// OP_DONE	0	0	0
void () func001331 = [44, func001332]
{
};


// func001332
// function begins at statement 22281, parm_start=14065
// OP_STATE	2598	14065	0
// OP_DONE	0	0	0
void () func001332 = [45, func001333]
{
};


// func001333
// function begins at statement 22283, parm_start=14066
// OP_STATE	10002	14066	0
// OP_DONE	0	0	0
void () func001333 = [46, func001334]
{
};


// func001334
// function begins at statement 22285, parm_start=14067
// OP_STATE	10004	13926	0
// OP_DONE	0	0	0
void () func001334 = [47, func001284]
{
};


// func001335
// function begins at statement 22287, parm_start=14068
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14068	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	14069
// OP_IFNOT	14069	3	0
// OP_CALL0	14045	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14051	0	0
// OP_DONE	0	0	0
void () func001335 = 
{
    sound(self, CHAN_VOICE, "dog/dpain1.wav", TRUE, ATTN_NORM);
    if(random() > globaldef000522)
    {
        func001313();
    }
    else
    {
        func001319();
    }
    
};


// func001336
// function begins at statement 22300, parm_start=14071
// OP_STATE	217	14071	0
// OP_DONE	0	0	0
void () func001336 = [8, func001337]
{
};


// func001337
// function begins at statement 22302, parm_start=14072
// OP_STATE	234	14072	0
// OP_DONE	0	0	0
void () func001337 = [9, func001338]
{
};


// func001338
// function begins at statement 22304, parm_start=14073
// OP_STATE	235	14073	0
// OP_DONE	0	0	0
void () func001338 = [10, func001339]
{
};


// func001339
// function begins at statement 22306, parm_start=14074
// OP_STATE	236	14074	0
// OP_DONE	0	0	0
void () func001339 = [11, func001340]
{
};


// func001340
// function begins at statement 22308, parm_start=14075
// OP_STATE	791	14075	0
// OP_DONE	0	0	0
void () func001340 = [12, func001341]
{
};


// func001341
// function begins at statement 22310, parm_start=14076
// OP_STATE	792	14076	0
// OP_DONE	0	0	0
void () func001341 = [13, func001342]
{
};


// func001342
// function begins at statement 22312, parm_start=14077
// OP_STATE	5693	14077	0
// OP_DONE	0	0	0
void () func001342 = [14, func001343]
{
};


// func001343
// function begins at statement 22314, parm_start=14078
// OP_STATE	765	14078	0
// OP_DONE	0	0	0
void () func001343 = [15, func001344]
{
};


// func001344
// function begins at statement 22316, parm_start=14079
// OP_STATE	218	14078	0
// OP_DONE	0	0	0
void () func001344 = [16, func001344]
{
};


// func001345
// function begins at statement 22318, parm_start=14080
// OP_STATE	6892	14080	0
// OP_DONE	0	0	0
void () func001345 = [17, func001346]
{
};


// func001346
// function begins at statement 22320, parm_start=14081
// OP_STATE	6133	14081	0
// OP_DONE	0	0	0
void () func001346 = [18, func001347]
{
};


// func001347
// function begins at statement 22322, parm_start=14082
// OP_STATE	6895	14082	0
// OP_DONE	0	0	0
void () func001347 = [19, func001348]
{
};


// func001348
// function begins at statement 22324, parm_start=14083
// OP_STATE	2323	14083	0
// OP_DONE	0	0	0
void () func001348 = [20, func001349]
{
};


// func001349
// function begins at statement 22326, parm_start=14084
// OP_STATE	12465	14084	0
// OP_DONE	0	0	0
void () func001349 = [21, func001350]
{
};


// func001350
// function begins at statement 22328, parm_start=14085
// OP_STATE	12467	14085	0
// OP_DONE	0	0	0
void () func001350 = [22, func001351]
{
};


// func001351
// function begins at statement 22330, parm_start=14086
// OP_STATE	304	14086	0
// OP_DONE	0	0	0
void () func001351 = [23, func001352]
{
};


// func001352
// function begins at statement 22332, parm_start=14087
// OP_STATE	736	14087	0
// OP_DONE	0	0	0
void () func001352 = [24, func001353]
{
};


// func001353
// function begins at statement 22334, parm_start=14088
// OP_STATE	305	14087	0
// OP_DONE	0	0	0
void () func001353 = [25, func001353]
{
};


// func001354
// function begins at statement 22336, parm_start=14089
// OP_LOAD_F	28	152	14089
// OP_LT	14089	13516	14090
// OP_IFNOT	14090	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	14091
// OP_STORE_V	14091	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	14092
// OP_STORE_V	14092	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	14093
// OP_STORE_V	14093	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	14094	4	0
// OP_LOAD_F	28	152	14095
// OP_STORE_V	14095	7	0
// OP_CALL2	9802	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14096	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	104	14097
// OP_STOREP_F	237	14097	0
// OP_CALL0	457	0	0
// OP_GT	1	539	14098
// OP_IFNOT	14098	3	0
// OP_CALL0	14070	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14079	0	0
// OP_DONE	0	0	0
void () func001354 = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        func000462("progs/h_dog.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "dog/ddeath.wav", TRUE, ATTN_NORM);
    self.solid = SOLID_NOT;
    if(random() > globaldef000522)
    {
        func001336();
    }
    else
    {
        func001345();
    }
    
};


// func001355
// function begins at statement 22377, parm_start=14100
// OP_EQ_F	3193	242	14100
// OP_IFNOT	14100	4	0
// OP_ADDRESS	28	372	14101
// OP_STOREP_F	375	14101	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () func001355 = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};


// func001356
// function begins at statement 22384, parm_start=14103
// OP_LOAD_F	28	108	14107
// OP_LOAD_F	28	137	14108
// OP_ADD_F	14107	14108	14109
// OP_LOAD_ENT	28	181	14110
// OP_LOAD_F	14110	108	14111
// OP_LOAD_ENT	28	181	14112
// OP_LOAD_F	14112	137	14113
// OP_ADD_F	14111	14113	14114
// OP_LOAD_ENT	28	181	14115
// OP_LOAD_F	14115	145	14116
// OP_MUL_F	6280	14116	14117
// OP_ADD_F	14114	14117	14118
// OP_GT	14109	14118	14119
// OP_IFNOT	14119	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	14120
// OP_LOAD_F	28	141	14121
// OP_ADD_F	14120	14121	14122
// OP_LOAD_ENT	28	181	14123
// OP_LOAD_F	14123	108	14124
// OP_LOAD_ENT	28	181	14125
// OP_LOAD_F	14125	137	14126
// OP_ADD_F	14124	14126	14127
// OP_LOAD_ENT	28	181	14128
// OP_LOAD_F	14128	145	14129
// OP_MUL_F	6277	14129	14130
// OP_ADD_F	14127	14130	14131
// OP_LT	14122	14131	14132
// OP_IFNOT	14132	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14133
// OP_LOAD_V	14133	105	14134
// OP_LOAD_V	28	105	14137
// OP_SUB_V	14134	14137	14140
// OP_STORE_V	14140	14103	0
// OP_STORE_F	213	14105	0
// OP_STORE_V	14103	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	14106	0
// OP_LT	14106	2805	14143
// OP_IFNOT	14143	2	0
// OP_RETURN	213	0	0
// OP_GT	14106	2003	14144
// OP_IFNOT	14144	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () func001356 = 
{
    local vector globaldef004512;
    local float globaldef004516;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    globaldef004512 = self.enemy.origin - self.origin;
    globaldef004512_z = FALSE;
    globaldef004516 = vlen(globaldef004512);
    
    if(globaldef004516 < 80)
    {
        return FALSE;
    }
    
    
    if(globaldef004516 > 150)
    {
        return FALSE;
    }
    
    return TRUE;
};

