
// func000889
// function begins at statement 19586, parm_start=12898
// OP_LOAD_F	28	152	12899
// OP_LE	12899	213	12900
// OP_IFNOT	12900	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	12901
// OP_IFNOT	12901	15	0
// OP_LOAD_V	28	113	12902
// OP_STORE_V	12902	4	0
// OP_CALL1	462	0	0
// OP_GT	1	5347	12905
// OP_IFNOT	12905	10	0
// OP_CALL0	457	0	0
// OP_MUL_F	235	1	12906
// OP_ADD_F	746	12906	12907
// OP_STORE_F	12907	12898	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12898	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	486	0	0
// OP_NOT_F	1	0	12908
// OP_IFNOT	12908	12	0
// OP_LOAD_F	28	182	12909
// OP_BITAND	12909	223	12910
// OP_IFNOT	12910	8	0
// OP_ADDRESS	28	146	12911
// OP_STOREP_FNC	519	12911	0
// OP_ADDRESS	28	148	12912
// OP_STOREP_FNC	12704	12912	0
// OP_ADDRESS	28	150	12913
// OP_ADD_F	31	3036	12914
// OP_STOREP_F	12914	12913	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	12915
// OP_STOREP_FNC	519	12915	0
// OP_ADDRESS	28	148	12916
// OP_STOREP_FNC	12740	12916	0
// OP_ADDRESS	28	150	12917
// OP_ADD_F	31	3036	12918
// OP_STOREP_F	12918	12917	0
// OP_DONE	0	0	0
void () func000889 = 
{
    local float globaldef003929;
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 400)
        {
            globaldef003929 = GLOBALDEFSEVENTWONINE + (MOVETYPE_BOUNCE * random());
            T_Damage(other, self, self, globaldef003929);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = func000839;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = func000849;
    self.nextthink = time + 0.1;
};


// func000890
// function begins at statement 19629, parm_start=12920
// OP_STATE	213	12920	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000890 = [0, func000891]
{
    ai_stand();
};


// func000891
// function begins at statement 19632, parm_start=12921
// OP_STATE	214	12921	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000891 = [1, func000892]
{
    ai_stand();
};


// func000892
// function begins at statement 19635, parm_start=12922
// OP_STATE	216	12922	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000892 = [2, func000893]
{
    ai_stand();
};


// func000893
// function begins at statement 19638, parm_start=12923
// OP_STATE	228	12923	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000893 = [3, func000894]
{
    ai_stand();
};


// func000894
// function begins at statement 19641, parm_start=12924
// OP_STATE	229	12924	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000894 = [4, func000895]
{
    ai_stand();
};


// func000895
// function begins at statement 19644, parm_start=12925
// OP_STATE	230	12925	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000895 = [5, func000896]
{
    ai_stand();
};


// func000896
// function begins at statement 19647, parm_start=12926
// OP_STATE	231	12926	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000896 = [6, func000897]
{
    ai_stand();
};


// func000897
// function begins at statement 19650, parm_start=12927
// OP_STATE	232	12927	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000897 = [7, func000898]
{
    ai_stand();
};


// func000898
// function begins at statement 19653, parm_start=12928
// OP_STATE	217	12928	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000898 = [8, func000899]
{
    ai_stand();
};


// func000899
// function begins at statement 19656, parm_start=12929
// OP_STATE	234	12929	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000899 = [9, func000900]
{
    ai_stand();
};


// func000900
// function begins at statement 19659, parm_start=12930
// OP_STATE	235	12930	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000900 = [10, func000901]
{
    ai_stand();
};


// func000901
// function begins at statement 19662, parm_start=12931
// OP_STATE	236	12931	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000901 = [11, func000902]
{
    ai_stand();
};


// func000902
// function begins at statement 19665, parm_start=12932
// OP_STATE	791	12932	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000902 = [12, func000903]
{
    ai_stand();
};


// func000903
// function begins at statement 19668, parm_start=12933
// OP_STATE	792	12933	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000903 = [13, func000904]
{
    ai_stand();
};


// func000904
// function begins at statement 19671, parm_start=12934
// OP_STATE	5693	12934	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000904 = [14, func000905]
{
    ai_stand();
};


// func000905
// function begins at statement 19674, parm_start=12935
// OP_STATE	765	12935	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000905 = [15, func000906]
{
    ai_stand();
};


// func000906
// function begins at statement 19677, parm_start=12936
// OP_STATE	218	12919	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000906 = [16, func000890]
{
    ai_stand();
};


// func000907
// function begins at statement 19680, parm_start=12937
// OP_STATE	6892	12937	0
// OP_STORE_V	235	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000907 = [17, func000908]
{
    ai_walk(MOVETYPE_BOUNCE);
};


// func000908
// function begins at statement 19684, parm_start=12938
// OP_STATE	6133	12938	0
// OP_STORE_V	234	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000908 = [18, func000909]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};


// func000909
// function begins at statement 19688, parm_start=12939
// OP_STATE	6895	12939	0
// OP_STORE_V	234	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000909 = [19, func000910]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};


// func000910
// function begins at statement 19692, parm_start=12940
// OP_STATE	2323	12940	0
// OP_STORE_V	230	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000910 = [20, func000911]
{
    ai_walk(MOVETYPE_FLY);
};


// func000911
// function begins at statement 19696, parm_start=12941
// OP_STATE	12465	12941	0
// OP_STORE_V	231	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000911 = [21, func000912]
{
    ai_walk(MOVETYPE_TOSS);
};


// func000912
// function begins at statement 19700, parm_start=12942
// OP_STATE	12467	12942	0
// OP_STORE_V	791	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000912 = [22, func000913]
{
    ai_walk(globaldef000774);
};


// func000913
// function begins at statement 19704, parm_start=12943
// OP_STATE	304	12943	0
// OP_STORE_V	217	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000913 = [23, func000914]
{
    ai_walk(FL_CLIENT);
};


// func000914
// function begins at statement 19708, parm_start=12944
// OP_STATE	736	12944	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000914 = [24, func000915]
{
    ai_walk(MOVETYPE_WALK);
};


// func000915
// function begins at statement 19712, parm_start=12945
// OP_STATE	305	12945	0
// OP_STORE_V	792	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000915 = [25, func000916]
{
    ai_walk(globaldef000775);
};


// func000916
// function begins at statement 19716, parm_start=12946
// OP_STATE	306	12946	0
// OP_STORE_V	234	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000916 = [26, func000917]
{
    ai_walk(MOVETYPE_FLYMISSILE);
};


// func000917
// function begins at statement 19720, parm_start=12947
// OP_STATE	307	12947	0
// OP_STORE_V	232	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000917 = [27, func000918]
{
    ai_walk(MOVETYPE_PUSH);
};


// func000918
// function begins at statement 19724, parm_start=12948
// OP_STATE	308	12936	0
// OP_STORE_V	232	4	0
// OP_CALL1	3794	0	0
// OP_CALL0	457	0	0
// OP_GT	1	4478	12948
// OP_IFNOT	12948	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12949	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000918 = [28, func000907]
{
    ai_walk(MOVETYPE_PUSH);
    
    if(random() > 0.8)
    {
        sound(self, CHAN_VOICE, "shambler/sidle.wav", TRUE, ATTN_IDLE);
    }
    
};


// func000919
// function begins at statement 19737, parm_start=12951
// OP_STATE	9664	12951	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000919 = [29, func000920]
{
    ai_run(20);
};


// func000920
// function begins at statement 19741, parm_start=12952
// OP_STATE	309	12952	0
// OP_STORE_V	736	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000920 = [30, func000921]
{
    ai_run(globaldef000719);
};


// func000921
// function begins at statement 19745, parm_start=12953
// OP_STATE	310	12953	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000921 = [31, func000922]
{
    ai_run(20);
};


// func000922
// function begins at statement 19749, parm_start=12954
// OP_STATE	219	12954	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000922 = [32, func000923]
{
    ai_run(20);
};


// func000923
// function begins at statement 19753, parm_start=12955
// OP_STATE	312	12955	0
// OP_STORE_V	736	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000923 = [33, func000924]
{
    ai_run(globaldef000719);
};


// func000924
// function begins at statement 19757, parm_start=12956
// OP_STATE	9671	12950	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	457	0	0
// OP_GT	1	4478	12956
// OP_IFNOT	12956	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12949	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000924 = [34, func000919]
{
    ai_run(20);
    
    if(random() > 0.8)
    {
        sound(self, CHAN_VOICE, "shambler/sidle.wav", TRUE, ATTN_IDLE);
    }
    
};

