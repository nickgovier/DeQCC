// t_botpath
// function begins at statement 26743, parm_start=15757
// OP_LOAD_S	29	129	15757
// OP_NE_S	15757	2056	15758
// OP_IFNOT	15758	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	418	15759
// OP_EQ_E	15759	28	15760
// OP_IFNOT	15760	2	0
// OP_RETURN	0	0	0
// OP_CALL0	2170	0	0
// OP_LOAD_ENT	29	418	15761
// OP_LOAD_ENT	15761	418	15762
// OP_STORE_V	15762	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	7287	0	0
// OP_LOAD_ENT	29	418	15763
// OP_ADDRESS	15763	418	15764
// OP_STOREP_ENT	28	15764	0
// OP_DONE	0	0	0
void () t_botpath = 
{
    
    if(other.classname != "dmbot")
    {
        return;
    }
    
    
    if(other.movetarget == self)
    {
        return;
    }
    
    bot_toucheditem();
    addTarget(other.movetarget.movetarget, self);
    other.movetarget.movetarget = self;
};

// botpath
// function begins at statement 26761, parm_start=15766
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	15766	0
// OP_ADDRESS	15766	129	15767
// OP_STOREP_S	5883	15767	0
// OP_ADDRESS	15766	104	15768
// OP_STOREP_F	238	15768	0
// OP_ADDRESS	15766	418	15769
// OP_STOREP_ENT	30	15769	0
// OP_ADDRESS	15766	146	15770
// OP_STOREP_FNC	15756	15770	0
// OP_STORE_V	15766	4	0
// OP_STORE_V	15771	7	0
// OP_STORE_V	15774	10	0
// OP_CALL3	450	0	0
// OP_RETURN	15766	0	0
// OP_DONE	0	0	0
entity () botpath = 
{
    local entity targ;
    targ = spawn();
    targ.classname = "BotPath";
    targ.solid = SOLID_TRIGGER;
    targ.movetarget = world;
    targ.touch = t_botpath;
    setsize(targ, '-4.000 -4.000 -4.000', '4.000 4.000 4.000');
    return targ;
};

// IsUpstream
// function begins at statement 26777, parm_start=15777
// OP_LOAD_ENT	15778	418	15779
// OP_EQ_E	15779	15777	15780
// OP_IFNOT	15780	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	15778	544	15781
// OP_EQ_E	15781	15777	15782
// OP_IFNOT	15782	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	15778	545	15783
// OP_EQ_E	15783	15777	15784
// OP_IFNOT	15784	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	15778	546	15785
// OP_EQ_E	15785	15777	15786
// OP_IFNOT	15786	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	15778	547	15787
// OP_EQ_E	15787	15777	15788
// OP_IFNOT	15788	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	15778	548	15789
// OP_EQ_E	15789	15777	15790
// OP_IFNOT	15790	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity a, entity b) IsUpstream = 
{
    
    if(b.movetarget == a)
    {
        return TRUE;
    }
    
    
    if(b.movetarget2 == a)
    {
        return TRUE;
    }
    
    
    if(b.movetarget3 == a)
    {
        return TRUE;
    }
    
    
    if(b.movetarget4 == a)
    {
        return TRUE;
    }
    
    
    if(b.movetarget5 == a)
    {
        return TRUE;
    }
    
    
    if(b.movetarget6 == a)
    {
        return TRUE;
    }
    
    return FALSE;
};

void (entity node, entity targ, float len, entity item) cacheRouteTarget;
// updateRouteCache
// function begins at statement 26803, parm_start=15793
// OP_STORE_F	15795	616	0
// OP_LOAD_F	15794	554	15796
// OP_GT	15796	213	15797
// OP_IFNOT	15797	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	554	15798
// OP_STORE_V	15798	10	0
// OP_LOAD_ENT	15794	555	15799
// OP_STORE_V	15799	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_F	15794	556	15800
// OP_GT	15800	213	15801
// OP_IFNOT	15801	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	556	15802
// OP_STORE_V	15802	10	0
// OP_LOAD_ENT	15794	557	15803
// OP_STORE_V	15803	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_F	15794	558	15804
// OP_GT	15804	213	15805
// OP_IFNOT	15805	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	558	15806
// OP_STORE_V	15806	10	0
// OP_LOAD_ENT	15794	559	15807
// OP_STORE_V	15807	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_F	15794	566	15808
// OP_GT	15808	213	15809
// OP_IFNOT	15809	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	566	15810
// OP_STORE_V	15810	10	0
// OP_LOAD_ENT	15794	567	15811
// OP_STORE_V	15811	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_F	15794	562	15812
// OP_GT	15812	213	15813
// OP_IFNOT	15813	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	562	15814
// OP_STORE_V	15814	10	0
// OP_LOAD_ENT	15794	563	15815
// OP_STORE_V	15815	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_F	15794	564	15816
// OP_GT	15816	213	15817
// OP_IFNOT	15817	8	0
// OP_STORE_V	15794	4	0
// OP_STORE_V	15793	7	0
// OP_LOAD_F	15794	564	15818
// OP_STORE_V	15818	10	0
// OP_LOAD_ENT	15794	565	15819
// OP_STORE_V	15819	13	0
// OP_CALL4	15791	0	0
// OP_DONE	0	0	0
void (entity a, entity b, float recurse) updateRouteCache = 
{
    RECURSEDEPTH = recurse;
    
    if(b.rocketlen > FALSE)
    {
        cacheRouteTarget(b, a, b.rocketlen, b.rocketcache);
    }
    
    
    if(b.lightninglen > FALSE)
    {
        cacheRouteTarget(b, a, b.lightninglen, b.lightningcache);
    }
    
    
    if(b.armorlen > FALSE)
    {
        cacheRouteTarget(b, a, b.armorlen, b.armorcache);
    }
    
    
    if(b.poweruplen > FALSE)
    {
        cacheRouteTarget(b, a, b.poweruplen, b.powerupcache);
    }
    
    
    if(b.naillen > FALSE)
    {
        cacheRouteTarget(b, a, b.naillen, b.nailcache);
    }
    
    
    if(b.grenadelen > FALSE)
    {
        cacheRouteTarget(b, a, b.grenadelen, b.grenadecache);
    }
    
};

// addTarget
// function begins at statement 26865, parm_start=15820
// OP_EQ_E	15820	15821	15822
// OP_IFNOT	15822	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	15821	418	15823
// OP_EQ_E	15823	15820	15824
// OP_IFNOT	15824	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	15820	0	15825
// OP_IFNOT	15825	3	0
// OP_RETURN	0	0	0
// OP_GOTO	45	0	0
// OP_LOAD_ENT	15821	544	15826
// OP_EQ_E	15826	15820	15827
// OP_IFNOT	15827	7	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	218	10	0
// OP_CALL3	15792	0	0
// OP_RETURN	0	0	0
// OP_GOTO	36	0	0
// OP_LOAD_ENT	15821	545	15828
// OP_EQ_E	15828	15820	15829
// OP_IFNOT	15829	7	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	218	10	0
// OP_CALL3	15792	0	0
// OP_RETURN	0	0	0
// OP_GOTO	27	0	0
// OP_LOAD_ENT	15821	546	15830
// OP_EQ_E	15830	15820	15831
// OP_IFNOT	15831	7	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	218	10	0
// OP_CALL3	15792	0	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_LOAD_ENT	15821	547	15832
// OP_EQ_E	15832	15820	15833
// OP_IFNOT	15833	7	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	218	10	0
// OP_CALL3	15792	0	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	15821	548	15834
// OP_EQ_E	15834	15820	15835
// OP_IFNOT	15835	6	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	218	10	0
// OP_CALL3	15792	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	15821	418	15836
// OP_NOT_ENT	15836	0	15837
// OP_IFNOT	15837	4	0
// OP_ADDRESS	15821	418	15838
// OP_STOREP_ENT	15820	15838	0
// OP_GOTO	30	0	0
// OP_LOAD_ENT	15821	544	15839
// OP_NOT_ENT	15839	0	15840
// OP_IFNOT	15840	4	0
// OP_ADDRESS	15821	544	15841
// OP_STOREP_ENT	15820	15841	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	15821	545	15842
// OP_NOT_ENT	15842	0	15843
// OP_IFNOT	15843	4	0
// OP_ADDRESS	15821	545	15844
// OP_STOREP_ENT	15820	15844	0
// OP_GOTO	18	0	0
// OP_LOAD_ENT	15821	546	15845
// OP_NOT_ENT	15845	0	15846
// OP_IFNOT	15846	4	0
// OP_ADDRESS	15821	546	15847
// OP_STOREP_ENT	15820	15847	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	15821	547	15848
// OP_NOT_ENT	15848	0	15849
// OP_IFNOT	15849	4	0
// OP_ADDRESS	15821	547	15850
// OP_STOREP_ENT	15820	15850	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	15821	548	15851
// OP_NOT_ENT	15851	0	15852
// OP_IFNOT	15852	3	0
// OP_ADDRESS	15821	548	15853
// OP_STOREP_ENT	15820	15853	0
// OP_STORE_V	15820	4	0
// OP_STORE_V	15821	7	0
// OP_STORE_V	235	10	0
// OP_CALL3	15792	0	0
// OP_DONE	0	0	0
void (entity a, entity b) addTarget = 
{
    
    if(a == b)
    {
        return;
    }
    
    
    if(b.movetarget == a)
    {
        return;
    }
    
    if(!a)
    {
        return;
    }
    else
    {
        if(b.movetarget2 == a)
        {
            updateRouteCache(a, b, FL_INWATER);
            return;
        }
        else
        {
            if(b.movetarget3 == a)
            {
                updateRouteCache(a, b, FL_INWATER);
                return;
            }
            else
            {
                if(b.movetarget4 == a)
                {
                    updateRouteCache(a, b, FL_INWATER);
                    return;
                }
                else
                {
                    if(b.movetarget5 == a)
                    {
                        updateRouteCache(a, b, FL_INWATER);
                        return;
                    }
                    else
                    {
                        
                        if(b.movetarget6 == a)
                        {
                            updateRouteCache(a, b, FL_INWATER);
                            return;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    if(!b.movetarget)
    {
        b.movetarget = a;
    }
    else
    {
        if(!b.movetarget2)
        {
            b.movetarget2 = a;
        }
        else
        {
            if(!b.movetarget3)
            {
                b.movetarget3 = a;
            }
            else
            {
                if(!b.movetarget4)
                {
                    b.movetarget4 = a;
                }
                else
                {
                    if(!b.movetarget5)
                    {
                        b.movetarget5 = a;
                    }
                    else
                    {
                        
                        if(!b.movetarget6)
                        {
                            b.movetarget6 = a;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    updateRouteCache(a, b, MOVETYPE_BOUNCE);
};

float () FindAPath;
// FindAltPath
// function begins at statement 26960, parm_start=15856
// OP_LOAD_F	28	365	15862
// OP_BITAND	15862	599	15863
// OP_IFNOT	15863	7	0
// OP_ADDRESS	28	365	15864
// OP_LOAD_F	28	365	15865
// OP_SUB_F	15865	599	15866
// OP_STOREP_F	15866	15864	0
// OP_CALL0	15854	0	0
// OP_RETURN	1	0	0
// OP_LOAD_V	28	105	15867
// OP_STORE_V	15867	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	15856	0
// OP_STORE_F	1548	15860	0
// OP_STORE_F	214	15859	0
// OP_LOAD_ENT	28	418	15870
// OP_STORE_ENT	15870	15857	0
// OP_LOAD_ENT	15857	418	15871
// OP_STORE_ENT	15871	15858	0
// OP_IFNOT	15856	31	0
// OP_LOAD_F	15856	552	15872
// OP_EQ_F	15872	583	15873
// OP_IFNOT	15873	25	0
// OP_LOAD_V	15856	105	15874
// OP_LOAD_V	28	105	15877
// OP_SUB_V	15874	15877	15880
// OP_STORE_V	15880	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	15861	0
// OP_LT	15861	15860	15883
// OP_IFNOT	15883	17	0
// OP_STORE_V	15856	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	13597	0	0
// OP_IFNOT	1	13	0
// OP_LOAD_ENT	15857	418	15884
// OP_STORE_V	15884	4	0
// OP_STORE_V	15856	7	0
// OP_CALL2	13597	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_ENT	15857	418	15885
// OP_STORE_V	15885	4	0
// OP_STORE_V	15856	7	0
// OP_CALL2	7287	0	0
// OP_STORE_ENT	15856	15858	0
// OP_STORE_F	15861	15860	0
// OP_STORE_F	213	15859	0
// OP_LOAD_ENT	15856	164	15886
// OP_STORE_ENT	15886	15856	0
// OP_GOTO	-30	0	0
// OP_ADDRESS	15857	418	15887
// OP_STOREP_ENT	15858	15887	0
// OP_RETURN	15859	0	0
// OP_DONE	0	0	0
float () FindAltPath = 
{
    local entity e;
    local entity carriedPath;
    local entity bestPath;
    local float dropPath;
    local float bestrng;
    local float rng;
    
    if(self.lefty & NODROP)
    {
        self.lefty = self.lefty - NODROP;
        return FindAPath();
    }
    
    e = findradius(self.origin, SEARCH_RADIUS);
    bestrng = 1000;
    dropPath = TRUE;
    carriedPath = self.movetarget;
    bestPath = carriedPath.movetarget;
    
    while(e)
    {
        
        if(e.pathtype == DROPPED)
        {
            rng = vlen(e.origin - self.origin);
            
            if(rng < bestrng)
            {
                
                if(BotReachable(e, self))
                {
                    
                    if(BotReachable(carriedPath.movetarget, e))
                    {
                        addTarget(carriedPath.movetarget, e);
                        bestPath = e;
                        bestrng = rng;
                        dropPath = FALSE;
                    }
                    
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    carriedPath.movetarget = bestPath;
    return dropPath;
};

// FindAPath
// function begins at statement 27015, parm_start=15888
// OP_LOAD_ENT	28	418	15894
// OP_STORE_ENT	15894	15892	0
// OP_STORE_F	214	15888	0
// OP_LOAD_V	28	105	15895
// OP_STORE_V	15895	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	15891	0
// OP_STORE_F	1548	15889	0
// OP_LOAD_ENT	15892	418	15898
// OP_STORE_ENT	15898	15893	0
// OP_IFNOT	15891	26	0
// OP_LOAD_F	15891	552	15899
// OP_EQ_F	15899	583	15900
// OP_IFNOT	15900	20	0
// OP_LOAD_V	15891	105	15901
// OP_LOAD_V	28	105	15904
// OP_SUB_V	15901	15904	15907
// OP_STORE_V	15907	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	15890	0
// OP_LT	15890	15889	15910
// OP_IFNOT	15910	12	0
// OP_STORE_V	15891	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	13597	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_ENT	15892	418	15911
// OP_STORE_V	15911	4	0
// OP_STORE_V	15891	7	0
// OP_CALL2	7287	0	0
// OP_STORE_ENT	15891	15893	0
// OP_STORE_F	15890	15889	0
// OP_STORE_F	213	15888	0
// OP_LOAD_ENT	15891	164	15912
// OP_STORE_ENT	15912	15891	0
// OP_GOTO	-25	0	0
// OP_ADDRESS	15892	418	15913
// OP_STOREP_ENT	15893	15913	0
// OP_RETURN	15888	0	0
// OP_DONE	0	0	0
float () FindAPath = 
{
    local float dropPath;
    local float bestrng;
    local float rng;
    local entity e;
    local entity carriedPath;
    local entity bestPath;
    carriedPath = self.movetarget;
    dropPath = TRUE;
    e = findradius(self.origin, SEARCH_RADIUS);
    bestrng = 1000;
    bestPath = carriedPath.movetarget;
    
    while(e)
    {
        
        if(e.pathtype == DROPPED)
        {
            rng = vlen(e.origin - self.origin);
            
            if(rng < bestrng)
            {
                
                if(BotReachable(e, self))
                {
                    addTarget(carriedPath.movetarget, e);
                    bestPath = e;
                    bestrng = rng;
                    dropPath = FALSE;
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    carriedPath.movetarget = bestPath;
    return dropPath;
};

// CheckDropPath
// function begins at statement 27056, parm_start=15914
// OP_GT	612	8099	15920
// OP_IFNOT	15920	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	418	15921
// OP_STORE_ENT	15921	15914	0
// OP_LOAD_ENT	15914	418	15922
// OP_STORE_ENT	15922	15915	0
// OP_LOAD_V	15914	105	15923
// OP_STORE_V	15923	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	15917	0
// OP_EQ_F	15917	276	15926
// OP_IFNOT	15926	32	0
// OP_LOAD_V	15914	105	15927
// OP_STORE_V	15927	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	15916	0
// OP_LOAD_F	15914	108	15930
// OP_SUB_F	15930	303	15931
// OP_LT	15916	15931	15932
// OP_IFNOT	15932	7	0
// OP_LOAD_F	15914	182	15933
// OP_ADD_F	223	218	15934
// OP_BITAND	15933	15934	15935
// OP_NOT_F	15935	0	15936
// OP_IFNOT	15936	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	15914	105	15937
// OP_LOAD_V	28	134	15940
// OP_ADD_V	15937	15940	15943
// OP_ADD_V	15943	713	15946
// OP_STORE_V	15946	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	15917	0
// OP_NE_F	15917	276	15949
// OP_IFNOT	15949	8	0
// OP_NE_F	15917	278	15950
// OP_IFNOT	15950	6	0
// OP_ADDRESS	28	365	15951
// OP_LOAD_F	28	365	15952
// OP_BITOR	15952	599	15953
// OP_STOREP_F	15953	15951	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_NE_F	15917	278	15954
// OP_IFNOT	15954	6	0
// OP_ADDRESS	28	365	15955
// OP_LOAD_F	28	365	15956
// OP_BITOR	15956	599	15957
// OP_STOREP_F	15957	15955	0
// OP_RETURN	213	0	0
// OP_LOAD_S	78	129	15958
// OP_EQ_S	15958	7808	15959
// OP_LOAD_S	78	129	15960
// OP_EQ_S	15960	7946	15961
// OP_OR	15959	15961	15962
// OP_IFNOT	15962	8	0
// OP_LOAD_FNC	78	148	15963
// OP_IFNOT	15963	6	0
// OP_ADDRESS	28	365	15964
// OP_LOAD_F	28	365	15965
// OP_BITOR	15965	599	15966
// OP_STOREP_F	15966	15964	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	186	15967
// OP_GT	15967	31	15968
// OP_IFNOT	15968	19	0
// OP_ADDRESS	28	365	15969
// OP_LOAD_F	28	365	15970
// OP_BITOR	15970	599	15971
// OP_STOREP_F	15971	15969	0
// OP_LOAD_F	28	186	15972
// OP_ADD_F	31	677	15973
// OP_GT	15972	15973	15974
// OP_IFNOT	15974	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	365	15975
// OP_BITAND	15975	599	15976
// OP_IFNOT	15976	5	0
// OP_ADDRESS	28	365	15977
// OP_LOAD_F	28	365	15978
// OP_SUB_F	15978	599	15979
// OP_STOREP_F	15979	15977	0
// OP_CALL0	15854	0	0
// OP_RETURN	1	0	0
// OP_NOT_ENT	15915	0	15980
// OP_IFNOT	15980	3	0
// OP_CALL0	15854	0	0
// OP_RETURN	1	0	0
// OP_STORE_V	15915	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	13597	0	0
// OP_NOT_F	1	0	15981
// OP_IFNOT	15981	10	0
// OP_LOAD_F	15915	108	15982
// OP_LOAD_F	28	108	15983
// OP_ADD_F	15983	608	15984
// OP_GT	15982	15984	15985
// OP_IFNOT	15985	3	0
// OP_CALL0	15854	0	0
// OP_RETURN	1	0	0
// OP_CALL0	15855	0	0
// OP_RETURN	1	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDropPath = 
{
    local entity carriedPath;
    local entity upstreamPath;
    local float rng;
    local float lnd;
    local float OK_HIGH;
    local string tmp;
    
    if(NUMPATHS > 160)
    {
        return FALSE;
    }
    
    carriedPath = self.movetarget;
    upstreamPath = carriedPath.movetarget;
    lnd = pointcontents(carriedPath.origin);
    if(lnd == CONTENT_EMPTY)
    {
        rng = dropline(carriedPath.origin);
        
        if(rng < (carriedPath.origin_z - SVC_FOUNDSECRET))
        {
            
            if(!(carriedPath.flags & (FL_ONGROUND + FL_INWATER)))
            {
                return FALSE;
            }
            
        }
        
        lnd = pointcontents((carriedPath.origin + self.mins) + '0.000 0.000 1.000');
        
        if(lnd != CONTENT_EMPTY)
        {
            
            if(lnd != CONTENT_WATER)
            {
                self.lefty = self.lefty | NODROP;
                return FALSE;
            }
            
        }
        
    }
    else
    {
        
        if(lnd != CONTENT_WATER)
        {
            self.lefty = self.lefty | NODROP;
            return FALSE;
        }
        
    }
    
    
    if((trace_ent.classname == "plat") || (trace_ent.classname == "train"))
    {
        
        if(trace_ent.think)
        {
            self.lefty = self.lefty | NODROP;
            return FALSE;
        }
        
    }
    
    
    if(self.teleport_time > time)
    {
        self.lefty = self.lefty | NODROP;
        
        if(self.teleport_time > (time + 0.5))
        {
            return FALSE;
        }
        
        
        if(self.lefty & NODROP)
        {
            self.lefty = self.lefty - NODROP;
        }
        
        return FindAPath();
    }
    
    
    if(!upstreamPath)
    {
        return FindAPath();
    }
    
    
    if(!BotReachable(upstreamPath, self))
    {
        
        if(upstreamPath.origin_z > (self.origin_z + MAXJUMP))
        {
            return FindAPath();
        }
        
        return FindAltPath();
    }
    
    return FALSE;
};

// NewCarriedPath
// function begins at statement 27161, parm_start=15986
// OP_ADDRESS	28	418	15986
// OP_CALL0	15765	0	0
// OP_STOREP_ENT	1	15986	0
// OP_LOAD_ENT	28	418	15987
// OP_ADDRESS	15987	552	15988
// OP_STOREP_F	584	15988	0
// OP_LOAD_ENT	28	418	15989
// OP_STORE_V	15989	4	0
// OP_LOAD_V	28	105	15990
// OP_STORE_V	15990	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () NewCarriedPath = 
{
    self.movetarget = botpath();
    self.movetarget.pathtype = CARRIED;
    setorigin(self.movetarget, self.origin);
};

// DropBotPath
// function begins at statement 27173, parm_start=15993
// OP_LOAD_ENT	28	418	15996
// OP_STORE_ENT	15996	15994	0
// OP_LOAD_ENT	15994	418	15997
// OP_IFNOT	15997	28	0
// OP_LOAD_F	15994	108	15998
// OP_LOAD_ENT	15994	418	15999
// OP_LOAD_F	15999	108	16000
// OP_MUL_F	608	2345	16001
// OP_ADD_F	16000	16001	16002
// OP_SUB_F	16002	214	16003
// OP_GT	15998	16003	16004
// OP_IFNOT	16004	20	0
// OP_LOAD_ENT	15994	418	16005
// OP_LOAD_F	16005	108	16006
// OP_LOAD_F	15994	108	16007
// OP_SUB_F	16006	16007	16008
// OP_MUL_F	608	2345	16009
// OP_ADD_F	16008	16009	16010
// OP_SUB_F	16010	214	16011
// OP_STORE_F	16011	15995	0
// OP_LOAD_F	28	137	16012
// OP_ADD_F	16012	216	16013
// OP_LT	15995	16013	16014
// OP_IFNOT	16014	4	0
// OP_LOAD_F	28	137	16015
// OP_ADD_F	16015	216	16016
// OP_STORE_F	16016	15995	0
// OP_ADDRESS	15994	108	16017
// OP_LOAD_F	15994	108	16018
// OP_ADD_F	16018	15995	16019
// OP_STOREP_F	16019	16017	0
// OP_CALL0	4659	0	0
// OP_ADDRESS	15994	552	16020
// OP_STOREP_F	583	16020	0
// OP_LOAD_ENT	28	418	16021
// OP_ADDRESS	16021	418	16022
// OP_STOREP_ENT	15994	16022	0
// OP_ADD_F	612	214	16023
// OP_STORE_F	16023	612	0
// OP_DONE	0	0	0
void () DropBotPath = 
{
    local string tmp;
    local entity oldpath;
    local float drop;
    oldpath = self.movetarget;
    
    if(oldpath.movetarget)
    {
        
        if(oldpath.origin_z > ((oldpath.movetarget.origin_z + (MAXJUMP * 0.6)) - TRUE))
        {
            drop = ((oldpath.movetarget.origin_z - oldpath.origin_z) + (MAXJUMP * 0.6)) - TRUE;
            
            if(drop < (self.mins_z + FL_SWIM))
            {
                drop = self.mins_z + FL_SWIM;
            }
            
            oldpath.origin_z = oldpath.origin_z + drop;
        }
        
    }
    
    NewCarriedPath();
    oldpath.pathtype = DROPPED;
    self.movetarget.movetarget = oldpath;
    NUMPATHS = NUMPATHS + TRUE;
};

void (entity node, float len, entity item) cacheRouteMsg;
// cacheRouteTarget
// function begins at statement 27213, parm_start=16025
// OP_LOAD_V	16025	105	16030
// OP_LOAD_V	16026	105	16033
// OP_SUB_V	16030	16033	16036
// OP_STORE_V	16036	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	16029	0
// OP_LOAD_F	16026	552	16039
// OP_EQ_F	16039	587	16040
// OP_IFNOT	16040	2	0
// OP_STORE_F	2229	16029	0
// OP_ADD_F	16029	16027	16041
// OP_ADD_F	16041	576	16042
// OP_STORE_F	16042	16029	0
// OP_ADD_F	616	216	16043
// OP_STORE_F	16043	616	0
// OP_LT	616	5005	16044
// OP_IFNOT	16044	6	0
// OP_STORE_V	16026	4	0
// OP_STORE_V	16029	7	0
// OP_STORE_V	16028	10	0
// OP_CALL3	16024	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	16025	570	16045
// OP_STOREP_F	214	16045	0
// OP_SUB_F	616	216	16046
// OP_STORE_F	16046	616	0
// OP_DONE	0	0	0
void (entity node, entity targ, float len, entity item) cacheRouteTarget = 
{
    local float rng;
    rng = vlen(node.origin - targ.origin);
    
    if(targ.pathtype == TELEPORT)
    {
        rng = 250;
    }
    
    rng = (rng + len) + KINDA_WANT;
    RECURSEDEPTH = RECURSEDEPTH + FL_SWIM;
    if(RECURSEDEPTH < 24)
    {
        cacheRouteMsg(targ, rng, item);
    }
    else
    {
        node.endpoint = TRUE;
    }
    
    RECURSEDEPTH = RECURSEDEPTH - FL_SWIM;
};

// cacheRoute
// function begins at statement 27240, parm_start=16047
// OP_STORE_F	214	616	0
// OP_STORE_V	16047	4	0
// OP_STORE_V	16048	7	0
// OP_STORE_V	16049	10	0
// OP_STORE_V	16050	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_S	29	129	16051
// OP_EQ_S	16051	2056	16052
// OP_IFNOT	16052	36	0
// OP_LOAD_ENT	29	555	16053
// OP_EQ_E	16053	16050	16054
// OP_IFNOT	16054	4	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_GOTO	30	0	0
// OP_LOAD_ENT	29	557	16055
// OP_EQ_E	16055	16050	16056
// OP_IFNOT	16056	4	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	29	559	16057
// OP_EQ_E	16057	16050	16058
// OP_IFNOT	16058	4	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_GOTO	18	0	0
// OP_LOAD_ENT	29	567	16059
// OP_EQ_E	16059	16050	16060
// OP_IFNOT	16060	4	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	29	563	16061
// OP_EQ_E	16061	16050	16062
// OP_IFNOT	16062	4	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	29	565	16063
// OP_EQ_E	16063	16050	16064
// OP_IFNOT	16064	3	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_DONE	0	0	0
void (entity node, entity targ, float len, entity item) cacheRoute = 
{
    RECURSEDEPTH = TRUE;
    cacheRouteTarget(node, targ, len, item);
    
    if(other.classname == "dmbot")
    {
        if(other.rocketcache == item)
        {
            clearCache(other);
        }
        else
        {
            if(other.lightningcache == item)
            {
                clearCache(other);
            }
            else
            {
                if(other.armorcache == item)
                {
                    clearCache(other);
                }
                else
                {
                    if(other.powerupcache == item)
                    {
                        clearCache(other);
                    }
                    else
                    {
                        if(other.nailcache == item)
                        {
                            clearCache(other);
                        }
                        else
                        {
                            
                            if(other.grenadecache == item)
                            {
                                clearCache(other);
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// cacheRouteMsg
// function begins at statement 27285, parm_start=16065
// OP_LOAD_FNC	16067	524	16068
// OP_IFNOT	16068	10	0
// OP_LOAD_FNC	16067	524	16069
// OP_STORE_V	16065	4	0
// OP_STORE_V	16066	7	0
// OP_STORE_V	16067	10	0
// OP_CALL3	16069	0	0
// OP_NOT_F	1	0	16070
// OP_IFNOT	16070	2	0
// OP_RETURN	0	0	0
// OP_GOTO	2	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	16065	418	16071
// OP_IFNOT	16071	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	418	16072
// OP_STORE_V	16072	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16065	544	16073
// OP_IFNOT	16073	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	544	16074
// OP_STORE_V	16074	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16065	545	16075
// OP_IFNOT	16075	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	545	16076
// OP_STORE_V	16076	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16065	546	16077
// OP_IFNOT	16077	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	546	16078
// OP_STORE_V	16078	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16065	547	16079
// OP_IFNOT	16079	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	547	16080
// OP_STORE_V	16080	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16065	548	16081
// OP_IFNOT	16081	7	0
// OP_STORE_V	16065	4	0
// OP_LOAD_ENT	16065	548	16082
// OP_STORE_V	16082	7	0
// OP_STORE_V	16066	10	0
// OP_STORE_V	16067	13	0
// OP_CALL4	15791	0	0
// OP_DONE	0	0	0
void (entity node, float len, entity item) cacheRouteMsg = 
{
    if(item.th_cache)
    {
        
        if(!item.th_cache(node, len, item))
        {
            return;
        }
        
    }
    else
    {
        return;
    }
    
    
    if(node.movetarget)
    {
        cacheRouteTarget(node, node.movetarget, len, item);
    }
    
    
    if(node.movetarget2)
    {
        cacheRouteTarget(node, node.movetarget2, len, item);
    }
    
    
    if(node.movetarget3)
    {
        cacheRouteTarget(node, node.movetarget3, len, item);
    }
    
    
    if(node.movetarget4)
    {
        cacheRouteTarget(node, node.movetarget4, len, item);
    }
    
    
    if(node.movetarget5)
    {
        cacheRouteTarget(node, node.movetarget5, len, item);
    }
    
    
    if(node.movetarget6)
    {
        cacheRouteTarget(node, node.movetarget6, len, item);
    }
    
};

// clearCache
// function begins at statement 27346, parm_start=16083
// OP_ADDRESS	16083	555	16084
// OP_STOREP_ENT	30	16084	0
// OP_ADDRESS	16083	557	16085
// OP_STOREP_ENT	30	16085	0
// OP_ADDRESS	16083	559	16086
// OP_STOREP_ENT	30	16086	0
// OP_ADDRESS	16083	563	16087
// OP_STOREP_ENT	30	16087	0
// OP_ADDRESS	16083	565	16088
// OP_STOREP_ENT	30	16088	0
// OP_ADDRESS	16083	567	16089
// OP_STOREP_ENT	30	16089	0
// OP_ADDRESS	16083	554	16090
// OP_STOREP_F	213	16090	0
// OP_ADDRESS	16083	556	16091
// OP_STOREP_F	213	16091	0
// OP_ADDRESS	16083	558	16092
// OP_STOREP_F	213	16092	0
// OP_ADDRESS	16083	562	16093
// OP_STOREP_F	213	16093	0
// OP_ADDRESS	16083	564	16094
// OP_STOREP_F	213	16094	0
// OP_ADDRESS	16083	566	16095
// OP_STOREP_F	213	16095	0
// OP_ADDRESS	16083	570	16096
// OP_STOREP_F	213	16096	0
// OP_DONE	0	0	0
void (entity e) clearCache = 
{
    e.rocketcache = world;
    e.lightningcache = world;
    e.armorcache = world;
    e.nailcache = world;
    e.grenadecache = world;
    e.powerupcache = world;
    e.rocketlen = FALSE;
    e.lightninglen = FALSE;
    e.armorlen = FALSE;
    e.naillen = FALSE;
    e.grenadelen = FALSE;
    e.poweruplen = FALSE;
    e.endpoint = FALSE;
};

// RouteToEnemy
// function begins at statement 27373, parm_start=16097
// OP_STORE_F	217	616	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5883	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16098	0
// OP_IFNOT	16098	11	0
// OP_ADDRESS	16098	569	16099
// OP_STOREP_ENT	30	16099	0
// OP_ADDRESS	16098	570	16100
// OP_STOREP_F	213	16100	0
// OP_STORE_V	16098	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5883	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16098	0
// OP_GOTO	-10	0	0
// OP_LOAD_ENT	16097	418	16101
// OP_IFNOT	16101	84	0
// OP_LOAD_ENT	16097	418	16102
// OP_LOAD_ENT	16102	418	16103
// OP_IFNOT	16103	81	0
// OP_LOAD_ENT	16097	418	16104
// OP_STORE_V	16104	4	0
// OP_LOAD_ENT	16097	418	16105
// OP_LOAD_ENT	16105	418	16106
// OP_STORE_V	16106	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5883	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16098	0
// OP_IFNOT	16098	67	0
// OP_LOAD_F	16098	570	16107
// OP_IFNOT	16107	59	0
// OP_LOAD_ENT	16098	569	16108
// OP_EQ_E	16108	16097	16109
// OP_IFNOT	16109	56	0
// OP_STORE_F	217	616	0
// OP_LOAD_ENT	16098	418	16110
// OP_IFNOT	16110	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	418	16111
// OP_STORE_V	16111	7	0
// OP_LOAD_F	16098	568	16112
// OP_STORE_V	16112	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16098	544	16113
// OP_IFNOT	16113	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	544	16114
// OP_STORE_V	16114	7	0
// OP_LOAD_F	16098	568	16115
// OP_STORE_V	16115	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16098	545	16116
// OP_IFNOT	16116	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	545	16117
// OP_STORE_V	16117	7	0
// OP_LOAD_F	16098	568	16118
// OP_STORE_V	16118	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16098	546	16119
// OP_IFNOT	16119	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	546	16120
// OP_STORE_V	16120	7	0
// OP_LOAD_F	16098	568	16121
// OP_STORE_V	16121	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16098	547	16122
// OP_IFNOT	16122	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	547	16123
// OP_STORE_V	16123	7	0
// OP_LOAD_F	16098	568	16124
// OP_STORE_V	16124	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_LOAD_ENT	16098	548	16125
// OP_IFNOT	16125	8	0
// OP_STORE_V	16098	4	0
// OP_LOAD_ENT	16098	548	16126
// OP_STORE_V	16126	7	0
// OP_LOAD_F	16098	568	16127
// OP_STORE_V	16127	10	0
// OP_STORE_V	16097	13	0
// OP_CALL4	15791	0	0
// OP_STORE_V	16098	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5883	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16098	0
// OP_GOTO	-66	0	0
// OP_DONE	0	0	0
void (entity en) RouteToEnemy = 
{
    local entity e;
    RECURSEDEPTH = FL_CLIENT;
    e = find(world, classname, "BotPath");
    
    while(e)
    {
        e.enemycache = world;
        e.endpoint = FALSE;
        e = find(e, classname, "BotPath");
    }
    
    
    if(en.movetarget)
    {
        
        if(en.movetarget.movetarget)
        {
            cacheRouteTarget(en.movetarget, en.movetarget.movetarget, FALSE, en);
            e = find(world, classname, "BotPath");
            
            while(e)
            {
                
                if(e.endpoint)
                {
                    
                    if(e.enemycache == en)
                    {
                        RECURSEDEPTH = FL_CLIENT;
                        
                        if(e.movetarget)
                        {
                            cacheRouteTarget(e, e.movetarget, e.enemylen, en);
                        }
                        
                        
                        if(e.movetarget2)
                        {
                            cacheRouteTarget(e, e.movetarget2, e.enemylen, en);
                        }
                        
                        
                        if(e.movetarget3)
                        {
                            cacheRouteTarget(e, e.movetarget3, e.enemylen, en);
                        }
                        
                        
                        if(e.movetarget4)
                        {
                            cacheRouteTarget(e, e.movetarget4, e.enemylen, en);
                        }
                        
                        
                        if(e.movetarget5)
                        {
                            cacheRouteTarget(e, e.movetarget5, e.enemylen, en);
                        }
                        
                        
                        if(e.movetarget6)
                        {
                            cacheRouteTarget(e, e.movetarget6, e.enemylen, en);
                        }
                        
                    }
                    
                }
                
                e = find(e, classname, "BotPath");
            }
            
        }
        
    }
    
};

