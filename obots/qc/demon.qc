
// monster_demon1
// function begins at statement 19413, parm_start=12796
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12789	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12777	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12797	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12798	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12772	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12690	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3667	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	12799
// OP_STOREP_F	240	12799	0
// OP_ADDRESS	28	103	12800
// OP_STOREP_F	229	12800	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12796	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	12801
// OP_STOREP_F	540	12801	0
// OP_ADDRESS	28	361	12802
// OP_STOREP_FNC	12674	12802	0
// OP_ADDRESS	28	362	12803
// OP_STOREP_FNC	12687	12803	0
// OP_ADDRESS	28	363	12804
// OP_STOREP_FNC	12697	12804	0
// OP_ADDRESS	28	367	12805
// OP_STOREP_FNC	12786	12805	0
// OP_ADDRESS	28	365	12806
// OP_STOREP_FNC	12794	12806	0
// OP_ADDRESS	28	364	12807
// OP_STOREP_FNC	12704	12807	0
// OP_ADDRESS	28	366	12808
// OP_STOREP_FNC	12763	12808	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_demon1 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/demon.mdl");
    precache_model("progs/h_demon.mdl");
    precache_sound("demon/ddeath.wav");
    precache_sound("demon/dhit2.wav");
    precache_sound("demon/djump.wav");
    precache_sound("demon/dpain1.wav");
    precache_sound("demon/idle1.wav");
    precache_sound("demon/sight2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/demon.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = globaldef000523;
    self.th_stand = func000812;
    self.th_walk = func000825;
    self.th_run = func000833;
    self.th_die = func000882;
    self.th_melee = func000883;
    self.th_missile = func000839;
    self.th_pain = func000872;
    func000531();
};


// func000885
// function begins at statement 19462, parm_start=12810
// OP_EQ_F	3193	242	12810
// OP_IFNOT	12810	4	0
// OP_ADDRESS	28	372	12811
// OP_STOREP_F	375	12811	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () func000885 = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};


// func000886
// function begins at statement 19469, parm_start=12813
// OP_LOAD_F	28	108	12817
// OP_LOAD_F	28	137	12818
// OP_ADD_F	12817	12818	12819
// OP_LOAD_ENT	28	181	12820
// OP_LOAD_F	12820	108	12821
// OP_LOAD_ENT	28	181	12822
// OP_LOAD_F	12822	137	12823
// OP_ADD_F	12821	12823	12824
// OP_LOAD_ENT	28	181	12825
// OP_LOAD_F	12825	145	12826
// OP_MUL_F	6280	12826	12827
// OP_ADD_F	12824	12827	12828
// OP_GT	12819	12828	12829
// OP_IFNOT	12829	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	12830
// OP_LOAD_F	28	141	12831
// OP_ADD_F	12830	12831	12832
// OP_LOAD_ENT	28	181	12833
// OP_LOAD_F	12833	108	12834
// OP_LOAD_ENT	28	181	12835
// OP_LOAD_F	12835	137	12836
// OP_ADD_F	12834	12836	12837
// OP_LOAD_ENT	28	181	12838
// OP_LOAD_F	12838	145	12839
// OP_MUL_F	6277	12839	12840
// OP_ADD_F	12837	12840	12841
// OP_LT	12832	12841	12842
// OP_IFNOT	12842	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	12843
// OP_LOAD_V	12843	105	12844
// OP_LOAD_V	28	105	12847
// OP_SUB_V	12844	12847	12850
// OP_STORE_V	12850	12813	0
// OP_STORE_F	213	12815	0
// OP_STORE_V	12813	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	12816	0
// OP_LT	12816	1997	12853
// OP_IFNOT	12853	2	0
// OP_RETURN	213	0	0
// OP_GT	12816	2044	12854
// OP_IFNOT	12854	5	0
// OP_CALL0	457	0	0
// OP_LT	1	3263	12855
// OP_IFNOT	12855	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () func000886 = 
{
    local vector globaldef003914;
    local float globaldef003918;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    globaldef003914 = self.enemy.origin - self.origin;
    globaldef003914_z = FALSE;
    globaldef003918 = vlen(globaldef003914);
    
    if(globaldef003918 < 100)
    {
        return FALSE;
    }
    
    
    if(globaldef003918 > 200)
    {
        
        if(random() < 0.9)
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};


// DemonCheckAttack
// function begins at statement 19519, parm_start=12856
// OP_CALL0	12809	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	372	12859
// OP_STOREP_F	375	12859	0
// OP_RETURN	214	0	0
// OP_CALL0	12812	0	0
// OP_IFNOT	1	10	0
// OP_ADDRESS	28	372	12860
// OP_STOREP_F	376	12860	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12798	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DemonCheckAttack = 
{
    local vector globaldef003919;
    
    if(func000885())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(func000886())
    {
        self.attack_state = AS_MISSILE;
        sound(self, CHAN_VOICE, "demon/djump.wav", TRUE, ATTN_NORM);
        return TRUE;
    }
    
    return FALSE;
};


// Demon_Melee
// function begins at statement 19537, parm_start=12861
// OP_CALL0	3190	0	0
// OP_LOAD_F	28	191	12866
// OP_STORE_V	12866	4	0
// OP_STORE_V	791	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	181	12867
// OP_LOAD_V	12867	105	12868
// OP_LOAD_V	28	105	12871
// OP_SUB_V	12868	12871	12874
// OP_STORE_V	12874	12863	0
// OP_STORE_V	12863	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	12877
// OP_IFNOT	12877	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	12878
// OP_STORE_V	12878	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	524	0	0
// OP_NOT_F	1	0	12879
// OP_IFNOT	12879	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12797	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	230	1	12880
// OP_ADD_F	235	12880	12881
// OP_STORE_F	12881	12862	0
// OP_LOAD_ENT	28	181	12882
// OP_STORE_V	12882	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12862	13	0
// OP_CALL4	522	0	0
// OP_LOAD_V	28	117	12883
// OP_STORE_V	12883	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	12886
// OP_MUL_VF	59	218	12889
// OP_ADD_V	12886	12889	12892
// OP_STORE_V	12892	4	0
// OP_MUL_FV	12861	65	12895
// OP_STORE_V	12895	7	0
// OP_CALL2	5444	0	0
// OP_DONE	0	0	0
void (float side) Demon_Melee = 
{
    local float globaldef003924;
    local vector globaldef003925;
    ai_face();
    walkmove(self.ideal_yaw, globaldef000774);
    globaldef003925 = self.enemy.origin - self.origin;
    
    if(vlen(globaldef003925) > 100)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    sound(self, CHAN_WEAPON, "demon/dhit2.wav", TRUE, ATTN_NORM);
    globaldef003924 = MOVETYPE_BOUNCE + (MOVETYPE_FLY * random());
    T_Damage(self.enemy, self, self, globaldef003924);
    makevectors(self.angles);
    func000253(self.origin + (v_forward * FL_INWATER), side * v_right);
};

