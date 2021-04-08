
// monster_boss
// function begins at statement 23921, parm_start=14839
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14823	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6694	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14603	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14605	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	6659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14815	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14839	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14712	4	0
// OP_CALL1	469	0	0
// OP_ADD_F	40	214	14840
// OP_STORE_F	14840	40	0
// OP_ADDRESS	28	147	14841
// OP_STOREP_FNC	14819	14841	0
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
    total_monsters = total_monsters + TRUE;
    self.use = func001676;
};

entity globaldef004954;
entity globaldef004955;
float globaldef004956;

// func001678
// function begins at statement 23948, parm_start=14846
// OP_GE	31	14844	14852
// OP_IFNOT	14852	6	0
// OP_STORE_ENT	14842	28	0
// OP_CALL0	10226	0	0
// OP_STORE_ENT	14843	28	0
// OP_CALL0	10226	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	14842	134	14853
// OP_LOAD_V	14842	138	14856
// OP_ADD_V	14853	14856	14859
// OP_MUL_VF	14859	539	14862
// OP_STORE_V	14862	14846	0
// OP_LOAD_F	14842	97	14865
// OP_SUB_F	14865	218	14866
// OP_STORE_F	14866	14848	0
// OP_LOAD_V	14843	134	14867
// OP_LOAD_V	14843	138	14870
// OP_ADD_V	14867	14870	14873
// OP_MUL_VF	14873	539	14876
// OP_STORE_V	14876	14849	0
// OP_LOAD_F	14843	97	14879
// OP_SUB_F	14879	218	14880
// OP_STORE_F	14880	14851	0
// OP_SUB_V	14849	14846	14881
// OP_STORE_V	14881	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	1	1997	14884
// OP_SUB_V	14849	14884	14887
// OP_STORE_V	14887	14849	0
// OP_ADDRESS	28	150	14890
// OP_ADD_F	31	3036	14891
// OP_STOREP_F	14891	14890	0
// OP_ADDRESS	28	148	14892
// OP_STOREP_FNC	14845	14892	0
// OP_STORE_V	344	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	322	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14846	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14847	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14848	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14849	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14850	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14851	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () func001678 = 
{
    local vector globaldef004958;
    local vector globaldef004962;
    
    if(time >= globaldef004956)
    {
        self = globaldef004954;
        func000539();
        self = globaldef004955;
        func000539();
        return;
    }
    
    globaldef004958 = (globaldef004954.mins + globaldef004954.maxs) * globaldef000522;
    globaldef004958_z = globaldef004954.absmin_z - FL_INWATER;
    globaldef004962 = (globaldef004955.mins + globaldef004955.maxs) * globaldef000522;
    globaldef004962_z = globaldef004955.absmin_z - FL_INWATER;
    globaldef004962 = globaldef004962 - ((normalize(globaldef004962 - globaldef004958)) * 100);
    self.nextthink = time + 0.1;
    self.think = func001678;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, globaldef004958_x);
    WriteCoord(MSG_ALL, globaldef004958_y);
    WriteCoord(MSG_ALL, globaldef004958_z);
    WriteCoord(MSG_ALL, globaldef004962_x);
    WriteCoord(MSG_ALL, globaldef004962_y);
    WriteCoord(MSG_ALL, globaldef004962_z);
};


// func001679
// function begins at statement 24010, parm_start=14894
// OP_ADD_F	31	214	14894
// OP_GE	14844	14894	14895
// OP_IFNOT	14895	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14842	0
// OP_STORE_V	14842	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14843	0
// OP_NOT_ENT	14842	0	14897
// OP_NOT_ENT	14843	0	14898
// OP_OR	14897	14898	14899
// OP_IFNOT	14899	4	0
// OP_STORE_V	14900	4	0
// OP_CALL1	473	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	14842	438	14901
// OP_NE_F	14901	282	14902
// OP_LOAD_F	14842	438	14903
// OP_NE_F	14903	283	14904
// OP_AND	14902	14904	14905
// OP_LOAD_F	14843	438	14906
// OP_NE_F	14906	282	14907
// OP_LOAD_F	14843	438	14908
// OP_NE_F	14908	283	14909
// OP_AND	14907	14909	14910
// OP_OR	14905	14910	14911
// OP_LOAD_F	14842	438	14912
// OP_LOAD_F	14843	438	14913
// OP_NE_F	14912	14913	14914
// OP_OR	14911	14914	14915
// OP_IFNOT	14915	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	14842	150	14916
// OP_STOREP_F	276	14916	0
// OP_ADDRESS	14843	150	14917
// OP_STOREP_F	276	14917	0
// OP_ADD_F	31	214	14918
// OP_STORE_F	14918	14844	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	14845	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	14919	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	14920
// OP_IFNOT	14920	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14921
// OP_STOREP_ENT	351	14921	0
// OP_LOAD_F	14842	438	14922
// OP_EQ_F	14922	282	14923
// OP_LOAD_F	28	152	14924
// OP_GT	14924	213	14925
// OP_AND	14923	14925	14926
// OP_IFNOT	14926	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14839	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	152	14927
// OP_LOAD_F	28	152	14928
// OP_SUB_F	14928	214	14929
// OP_STOREP_F	14929	14927	0
// OP_LOAD_F	28	152	14930
// OP_GE	14930	216	14931
// OP_IFNOT	14931	3	0
// OP_CALL0	14680	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	14932
// OP_EQ_F	14932	214	14933
// OP_IFNOT	14933	3	0
// OP_CALL0	14690	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	14934
// OP_EQ_F	14934	213	14935
// OP_IFNOT	14935	2	0
// OP_CALL0	14700	0	0
// OP_DONE	0	0	0
void () func001679 = 
{
    
    if(globaldef004956 >= (time + TRUE))
    {
        return;
    }
    
    globaldef004954 = find(world, target, "lightning");
    globaldef004955 = find(globaldef004954, target, "lightning");
    
    if(!globaldef004954 || !globaldef004955)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((globaldef004954.state != STATE_TOP) && (globaldef004954.state != STATE_BOTTOM)) || ((globaldef004955.state != STATE_TOP) && (globaldef004955.state != STATE_BOTTOM))) || (globaldef004954.state != globaldef004955.state))
    {
        return;
    }
    
    globaldef004954.nextthink = CONTENT_EMPTY;
    globaldef004955.nextthink = CONTENT_EMPTY;
    globaldef004956 = time + TRUE;
    sound(self, CHAN_VOICE, "misc/power.wav", TRUE, ATTN_NORM);
    func001678();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((globaldef004954.state == STATE_TOP) && (self.health > FALSE))
    {
        sound(self, CHAN_VOICE, "boss1/pain.wav", TRUE, ATTN_NORM);
        self.health = self.health - TRUE;
        if(self.health >= FL_SWIM)
        {
            func001635();
        }
        else
        {
            if(self.health == TRUE)
            {
                func001645();
            }
            else
            {
                
                if(self.health == FALSE)
                {
                    func001655();
                }
                
            }
            
        }
        
    }
    
};


// event_lightning
// function begins at statement 24102, parm_start=14937
// OP_ADDRESS	28	147	14937
// OP_STOREP_FNC	14893	14937	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = func001679;
};

