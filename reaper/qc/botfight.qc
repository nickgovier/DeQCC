float (entity targ) botrange;
// leadtarget
// function begins at statement 18660, parm_start=10713
// OP_LOAD_ENT	28	181	10726
// OP_LOAD_V	10726	113	10727
// OP_MUL_VF	10727	10719	10730
// OP_SUB_V	10716	10713	10733
// OP_STORE_V	10733	4	0
// OP_CALL1	457	0	0
// OP_MUL_VF	10730	1	10736
// OP_STORE_V	10736	10723	0
// OP_ADD_V	10716	10723	10739
// OP_STORE_V	10739	10720	0
// OP_LOAD_F	28	154	10742
// OP_EQ_F	10742	259	10743
// OP_IFNOT	10743	24	0
// OP_LOAD_F	28	553	10744
// OP_GT	10744	216	10745
// OP_IFNOT	10745	21	0
// OP_STORE_V	10713	4	0
// OP_STORE_V	10720	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	10746
// OP_IFNOT	10746	14	0
// OP_MUL_VF	10723	677	10747
// OP_SUB_V	10720	10747	10750
// OP_STORE_V	10750	10720	0
// OP_STORE_V	10713	4	0
// OP_STORE_V	10720	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	10753
// OP_IFNOT	10753	4	0
// OP_MUL_VF	10723	677	10754
// OP_SUB_V	10720	10754	10757
// OP_STORE_V	10757	10720	0
// OP_RETURN	10720	0	0
// OP_DONE	0	0	0
vector (vector src, vector trg, float invMvel) leadtarget = 
{
    local vector tg;
    local vector lead;
    lead = (self.enemy.velocity * invMvel) * (vlen(trg - src));
    tg = trg + lead;
    
    if(self.weapon == IT_ROCKET_LAUNCHER)
    {
        
        if(self.skil > FL_SWIM)
        {
            traceline(src, tg, TRUE, self);
            
            if(trace_fraction != TRUE)
            {
                tg = tg - (lead * 0.500);
                traceline(src, tg, TRUE, self);
                
                if(trace_fraction != TRUE)
                {
                    tg = tg - (lead * 0.500);
                }
                
            }
            
        }
        
    }
    
    return tg;
};

// adjustgrenade
// function begins at statement 18698, parm_start=10761
// OP_STORE_V	10761	10764	0
// OP_STORE_V	10764	10767	0
// OP_STORE_F	213	10769	0
// OP_LOAD_V	28	105	10777
// OP_STORE_V	10777	10770	0
// OP_STORE_F	213	10772	0
// OP_SUB_V	10767	10770	10780
// OP_STORE_V	10780	4	0
// OP_CALL1	457	0	0
// OP_MUL_F	1	609	10783
// OP_STORE_F	10783	10776	0
// OP_GT	10776	214	10784
// OP_IFNOT	10784	8	0
// OP_LT	10776	2717	10785
// OP_IFNOT	10785	5	0
// OP_SUB_F	10776	214	10786
// OP_MUL_F	610	10786	10787
// OP_ADD_F	10766	10787	10788
// OP_STORE_F	10788	10766	0
// OP_GOTO	5	0	0
// OP_SUB_F	214	10776	10789
// OP_MUL_F	610	10789	10790
// OP_SUB_F	10766	10790	10791
// OP_STORE_F	10791	10766	0
// OP_RETURN	10764	0	0
// OP_DONE	0	0	0
vector (vector trg) adjustgrenade = 
{
    local vector tg;
    local vector tgxy;
    local vector selfxy;
    local vector lead;
    local float xypct;
    tg = trg;
    tgxy = tg;
    tgxy_z = FALSE;
    selfxy = self.origin;
    selfxy_z = FALSE;
    xypct = (vlen(tgxy - selfxy)) * INVGRENADELEVELDIST;
    if(xypct > TRUE)
    {
        
        if(xypct < 12.000)
        {
            tg_z = tg_z + (GRENADEMAXHEIGHT * (xypct - TRUE));
        }
        
    }
    else
    {
        tg_z = tg_z - (GRENADEMAXHEIGHT * (TRUE - xypct));
    }
    
    return tg;
};

// botaim
// function begins at statement 18724, parm_start=10792
// OP_IFNOT	620	3	0
// OP_STORE_V	617	10795	0
// OP_GOTO	88	0	0
// OP_LOAD_V	28	105	10806
// OP_STORE_V	10806	10801	0
// OP_LOAD_F	28	154	10809
// OP_ADD_F	259	257	10810
// OP_ADD_F	10810	256	10811
// OP_BITAND	10809	10811	10812
// OP_IFNOT	10812	3	0
// OP_ADD_V	10801	3119	10813
// OP_STORE_V	10813	10801	0
// OP_LOAD_ENT	28	181	10816
// OP_LOAD_V	10816	105	10817
// OP_STORE_V	10817	10795	0
// OP_STORE_V	10801	4	0
// OP_STORE_V	10795	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	10820
// OP_IFNOT	10820	5	0
// OP_LOAD_ENT	28	181	10821
// OP_LOAD_V	10821	166	10822
// OP_ADD_V	10795	10822	10825
// OP_STORE_V	10825	10795	0
// OP_LOAD_F	28	553	10828
// OP_GT	10828	214	10829
// OP_IFNOT	10829	62	0
// OP_LOAD_F	28	154	10830
// OP_BITAND	10830	259	10831
// OP_IFNOT	10831	36	0
// OP_STORE_V	10801	4	0
// OP_STORE_V	10795	7	0
// OP_STORE_V	10832	10	0
// OP_CALL3	10712	0	0
// OP_STORE_V	1	10795	0
// OP_LOAD_F	28	108	10833
// OP_LOAD_ENT	28	181	10834
// OP_LOAD_F	10834	108	10835
// OP_GE	10833	10835	10836
// OP_IFNOT	10836	25	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	10837	10838
// OP_ADD_F	10838	214	10839
// OP_STORE_F	10839	10805	0
// OP_LOAD_F	28	553	10840
// OP_GT	10840	10805	10841
// OP_IFNOT	10841	18	0
// OP_LOAD_ENT	28	181	10842
// OP_LOAD_F	10842	137	10843
// OP_ADD_F	10797	10843	10844
// OP_ADD_F	10844	216	10845
// OP_STORE_F	10845	10797	0
// OP_STORE_V	10801	4	0
// OP_STORE_V	10795	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	10846
// OP_IFNOT	10846	6	0
// OP_LOAD_ENT	28	181	10847
// OP_LOAD_F	10847	137	10848
// OP_SUB_F	10797	10848	10849
// OP_SUB_F	10849	228	10850
// OP_STORE_F	10850	10797	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	154	10851
// OP_BITAND	10851	258	10852
// OP_IFNOT	10852	7	0
// OP_STORE_V	10801	4	0
// OP_STORE_V	10795	7	0
// OP_STORE_V	10853	10	0
// OP_CALL3	10712	0	0
// OP_STORE_V	1	10795	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	154	10854
// OP_BITAND	10854	257	10855
// OP_LOAD_F	28	154	10856
// OP_BITAND	10856	256	10857
// OP_OR	10855	10857	10858
// OP_IFNOT	10858	9	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	10859	10860
// OP_STORE_F	10860	10805	0
// OP_STORE_V	10801	4	0
// OP_STORE_V	10795	7	0
// OP_STORE_V	10805	10	0
// OP_CALL3	10712	0	0
// OP_STORE_V	1	10795	0
// OP_LOAD_F	28	154	10861
// OP_EQ_F	10861	258	10862
// OP_IFNOT	10862	4	0
// OP_STORE_V	10795	4	0
// OP_CALL1	10760	0	0
// OP_STORE_V	1	10795	0
// OP_LOAD_F	28	553	10863
// OP_STORE_F	10863	10804	0
// OP_LOAD_F	28	154	10864
// OP_EQ_F	10864	260	10865
// OP_IFNOT	10865	4	0
// OP_GT	10804	3736	10866
// OP_IFNOT	10866	2	0
// OP_STORE_F	3736	10804	0
// OP_LT	10804	228	10867
// OP_IFNOT	10867	16	0
// OP_LOAD_ENT	28	181	10868
// OP_LOAD_V	10868	105	10869
// OP_LOAD_ENT	28	181	10872
// OP_LOAD_V	10872	109	10873
// OP_SUB_V	10869	10873	10876
// OP_STORE_V	10876	10798	0
// OP_SUB_F	228	10804	10879
// OP_MUL_VF	10798	10879	10880
// OP_MUL_VF	10880	10837	10883
// OP_CALL0	452	0	0
// OP_SUB_F	1	677	10886
// OP_MUL_VF	10883	10886	10887
// OP_STORE_V	10887	10798	0
// OP_ADD_V	10795	10798	10890
// OP_STORE_V	10890	10795	0
// OP_LOAD_V	28	105	10893
// OP_SUB_V	10795	10893	10896
// OP_STORE_V	10896	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10792	0
// OP_LT	10804	228	10899
// OP_IFNOT	10899	13	0
// OP_SUB_F	228	10804	10900
// OP_CALL0	3103	0	0
// OP_MUL_F	10900	1	10901
// OP_MUL_FV	10901	10902	10905
// OP_ADD_V	10792	10905	10908
// OP_STORE_V	10908	10792	0
// OP_SUB_F	228	10804	10911
// OP_CALL0	3103	0	0
// OP_MUL_F	10911	1	10912
// OP_MUL_FV	10912	10913	10916
// OP_ADD_V	10792	10916	10919
// OP_STORE_V	10919	10792	0
// OP_STORE_V	10792	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10792	0
// OP_RETURN	10792	0	0
// OP_DONE	0	0	0
vector () botaim = 
{
    local vector dir;
    local vector tg;
    local vector lead;
    local vector src;
    local float sk;
    local float rnd;
    if(REBOUND)
    {
        tg = REBOUNDSPOT;
    }
    else
    {
        src = self.origin;
        
        if(self.weapon & ((IT_ROCKET_LAUNCHER + IT_SUPER_NAILGUN) + IT_NAILGUN))
        {
            src = src + '0.000 0.000 16.000';
        }
        
        tg = self.enemy.origin;
        traceline(src, tg, TRUE, self);
        
        if(trace_fraction != TRUE)
        {
            tg = tg + self.enemy.view_ofs;
        }
        
        
        if(self.skil > TRUE)
        {
            if(self.weapon & IT_ROCKET_LAUNCHER)
            {
                tg = leadtarget(src, tg, 0.001);
                
                if(self.origin_z >= self.enemy.origin_z)
                {
                    rnd = (random() * 3.500) + TRUE;
                    
                    if(self.skil > rnd)
                    {
                        tg_z = (tg_z + self.enemy.mins_z) + FL_SWIM;
                        traceline(src, tg, TRUE, self);
                        
                        if(trace_fraction != TRUE)
                        {
                            tg_z = (tg_z - self.enemy.mins_z) - MOVETYPE_WALK;
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                if(self.weapon & IT_GRENADE_LAUNCHER)
                {
                    tg = leadtarget(src, tg, 0.002);
                }
                else
                {
                    
                    if((self.weapon & IT_SUPER_NAILGUN) || (self.weapon & IT_NAILGUN))
                    {
                        rnd = random() * 0.002;
                        tg = leadtarget(src, tg, rnd);
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(self.weapon == IT_GRENADE_LAUNCHER)
    {
        tg = adjustgrenade(tg);
    }
    
    sk = self.skil;
    
    if(self.weapon == IT_LIGHTNING)
    {
        
        if(sk > 2.500)
        {
            sk = 2.500;
        }
        
    }
    
    
    if(sk < MOVETYPE_WALK)
    {
        lead = self.enemy.origin - self.enemy.oldorigin;
        lead = ((lead * (MOVETYPE_WALK - sk)) * 3.500) * (random() - 0.500);
        tg = tg + lead;
    }
    
    dir = normalize(tg - self.origin);
    
    if(sk < MOVETYPE_WALK)
    {
        dir = dir + (((MOVETYPE_WALK - sk) * crandom()) * '0.060 0.000 0.000');
        dir = dir + (((MOVETYPE_WALK - sk) * crandom()) * '0.000 0.060 0.000');
    }
    
    dir = normalize(dir);
    return dir;
};

// CheckBotAttack
// function begins at statement 18869, parm_start=10923
// OP_LOAD_ENT	28	181	10930
// OP_STORE_ENT	10930	10929	0
// OP_LOAD_F	28	373	10931
// OP_LT	31	10931	10932
// OP_IFNOT	10932	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	10933
// OP_LOAD_V	28	166	10936
// OP_ADD_V	10933	10936	10939
// OP_STORE_V	10939	10923	0
// OP_LOAD_V	10929	105	10942
// OP_LOAD_V	10929	166	10945
// OP_ADD_V	10942	10945	10948
// OP_STORE_V	10948	10926	0
// OP_STORE_V	10923	4	0
// OP_STORE_V	10926	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	10929	10951
// OP_IFNOT	10951	2	0
// OP_RETURN	213	0	0
// OP_AND	79	80	10952
// OP_IFNOT	10952	11	0
// OP_LOAD_V	10929	105	10953
// OP_STORE_V	10953	10926	0
// OP_STORE_V	10923	4	0
// OP_STORE_V	10926	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	10956
// OP_IFNOT	10956	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	367	10957
// OP_STOREP_F	370	10957	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckBotAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    targ = self.enemy;
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(trace_inopen && trace_inwater)
    {
        spot2 = targ.origin;
        traceline(spot1, spot2, FALSE, self);
        
        if(trace_inopen && trace_inwater)
        {
            return FALSE;
        }
        
    }
    
    self.attack_state = AS_MELEE;
    return TRUE;
};

// W_BestBotWeapon
// function begins at statement 18907, parm_start=10959
// OP_LOAD_F	28	162	10962
// OP_STORE_F	10962	10959	0
// OP_LOAD_ENT	28	181	10963
// OP_STORE_V	10963	4	0
// OP_CALL1	10711	0	0
// OP_STORE_F	1	10960	0
// OP_NE_F	10960	242	10964
// OP_IFNOT	10964	7	0
// OP_LOAD_F	28	160	10965
// OP_GE	10965	214	10966
// OP_BITAND	10959	259	10967
// OP_AND	10966	10967	10968
// OP_IFNOT	10968	2	0
// OP_RETURN	259	0	0
// OP_LOAD_F	28	161	10969
// OP_GE	10969	214	10970
// OP_BITAND	10959	260	10971
// OP_AND	10970	10971	10972
// OP_IFNOT	10972	14	0
// OP_EQ_F	10960	242	10973
// OP_EQ_F	10960	243	10974
// OP_OR	10973	10974	10975
// OP_IFNOT	10975	10	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	10961	0
// OP_LT	10961	216	10976
// OP_IFNOT	10976	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	162	10977
// OP_BITAND	10977	273	10978
// OP_IFNOT	10978	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	159	10979
// OP_GE	10979	216	10980
// OP_BITAND	10959	257	10981
// OP_AND	10980	10981	10982
// OP_IFNOT	10982	2	0
// OP_RETURN	257	0	0
// OP_EQ_F	10960	243	10983
// OP_IFNOT	10983	13	0
// OP_LOAD_F	28	160	10984
// OP_GE	10984	214	10985
// OP_BITAND	10959	258	10986
// OP_AND	10985	10986	10987
// OP_IFNOT	10987	8	0
// OP_LOAD_ENT	28	181	10988
// OP_LOAD_F	10988	108	10989
// OP_LOAD_F	28	108	10990
// OP_ADD_F	10990	10991	10992
// OP_LT	10989	10992	10993
// OP_IFNOT	10993	2	0
// OP_RETURN	258	0	0
// OP_EQ_F	10960	243	10994
// OP_EQ_F	10960	242	10995
// OP_OR	10994	10995	10996
// OP_IFNOT	10996	7	0
// OP_LOAD_F	28	158	10997
// OP_GE	10997	216	10998
// OP_BITAND	10959	255	10999
// OP_AND	10998	10999	11000
// OP_IFNOT	11000	2	0
// OP_RETURN	255	0	0
// OP_LOAD_F	28	159	11001
// OP_GE	11001	214	11002
// OP_BITAND	10959	256	11003
// OP_AND	11002	11003	11004
// OP_IFNOT	11004	2	0
// OP_RETURN	256	0	0
// OP_LOAD_F	28	158	11005
// OP_GE	11005	214	11006
// OP_BITAND	10959	254	11007
// OP_AND	11006	11007	11008
// OP_IFNOT	11008	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float () W_BestBotWeapon = 
{
    local float it;
    local float rng;
    local float wlevel;
    it = self.items;
    rng = botrange(self.enemy);
    
    if(rng != RANGE_MELEE)
    {
        
        if((self.ammo_rockets >= TRUE) && (it & IT_ROCKET_LAUNCHER))
        {
            return IT_ROCKET_LAUNCHER;
        }
        
    }
    
    
    if((self.ammo_cells >= TRUE) && (it & IT_LIGHTNING))
    {
        
        if((rng == RANGE_MELEE) || (rng == RANGE_NEAR))
        {
            wlevel = CheckWaterLevel();
            
            if(wlevel < FL_SWIM)
            {
                return IT_LIGHTNING;
            }
            
            
            if(self.items & IT_INVULNERABILITY)
            {
                return IT_LIGHTNING;
            }
            
        }
        
    }
    
    
    if((self.ammo_nails >= FL_SWIM) && (it & IT_SUPER_NAILGUN))
    {
        return IT_SUPER_NAILGUN;
    }
    
    
    if(rng == RANGE_NEAR)
    {
        
        if((self.ammo_rockets >= TRUE) && (it & IT_GRENADE_LAUNCHER))
        {
            
            if(self.enemy.origin_z < (self.origin_z + 175.000))
            {
                return IT_GRENADE_LAUNCHER;
            }
            
        }
        
    }
    
    
    if((rng == RANGE_NEAR) || (rng == RANGE_MELEE))
    {
        
        if((self.ammo_shells >= FL_SWIM) && (it & IT_SUPER_SHOTGUN))
        {
            return IT_SUPER_SHOTGUN;
        }
        
    }
    
    
    if((self.ammo_nails >= TRUE) && (it & IT_NAILGUN))
    {
        return IT_NAILGUN;
    }
    
    
    if((self.ammo_shells >= TRUE) && (it & IT_SHOTGUN))
    {
        return IT_SHOTGUN;
    }
    
    return IT_AXE;
};

// W_BestHeldWeapon
// function begins at statement 18983, parm_start=11010
// OP_LOAD_F	28	162	11012
// OP_STORE_F	11012	11010	0
// OP_LOAD_F	28	160	11013
// OP_GE	11013	214	11014
// OP_BITAND	11010	259	11015
// OP_AND	11014	11015	11016
// OP_IFNOT	11016	2	0
// OP_RETURN	259	0	0
// OP_LOAD_F	28	161	11017
// OP_GE	11017	214	11018
// OP_BITAND	11010	260	11019
// OP_AND	11018	11019	11020
// OP_IFNOT	11020	10	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	11011	0
// OP_LT	11011	216	11021
// OP_IFNOT	11021	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	162	11022
// OP_BITAND	11022	273	11023
// OP_IFNOT	11023	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	159	11024
// OP_GE	11024	216	11025
// OP_BITAND	11010	257	11026
// OP_AND	11025	11026	11027
// OP_IFNOT	11027	2	0
// OP_RETURN	257	0	0
// OP_LOAD_F	28	160	11028
// OP_GE	11028	214	11029
// OP_BITAND	11010	258	11030
// OP_AND	11029	11030	11031
// OP_IFNOT	11031	8	0
// OP_LOAD_ENT	28	181	11032
// OP_LOAD_F	11032	108	11033
// OP_LOAD_F	28	108	11034
// OP_ADD_F	11034	10991	11035
// OP_LT	11033	11035	11036
// OP_IFNOT	11036	2	0
// OP_RETURN	258	0	0
// OP_LOAD_F	28	158	11037
// OP_GE	11037	216	11038
// OP_BITAND	11010	255	11039
// OP_AND	11038	11039	11040
// OP_IFNOT	11040	2	0
// OP_RETURN	255	0	0
// OP_LOAD_F	28	159	11041
// OP_GE	11041	214	11042
// OP_BITAND	11010	256	11043
// OP_AND	11042	11043	11044
// OP_IFNOT	11044	2	0
// OP_RETURN	256	0	0
// OP_LOAD_F	28	158	11045
// OP_GE	11045	214	11046
// OP_BITAND	11010	254	11047
// OP_AND	11046	11047	11048
// OP_IFNOT	11048	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float () W_BestHeldWeapon = 
{
    local float it;
    local float wlevel;
    it = self.items;
    
    if((self.ammo_rockets >= TRUE) && (it & IT_ROCKET_LAUNCHER))
    {
        return IT_ROCKET_LAUNCHER;
    }
    
    
    if((self.ammo_cells >= TRUE) && (it & IT_LIGHTNING))
    {
        wlevel = CheckWaterLevel();
        
        if(wlevel < FL_SWIM)
        {
            return IT_LIGHTNING;
        }
        
        
        if(self.items & IT_INVULNERABILITY)
        {
            return IT_LIGHTNING;
        }
        
    }
    
    
    if((self.ammo_nails >= FL_SWIM) && (it & IT_SUPER_NAILGUN))
    {
        return IT_SUPER_NAILGUN;
    }
    
    
    if((self.ammo_rockets >= TRUE) && (it & IT_GRENADE_LAUNCHER))
    {
        
        if(self.enemy.origin_z < (self.origin_z + 175.000))
        {
            return IT_GRENADE_LAUNCHER;
        }
        
    }
    
    
    if((self.ammo_shells >= FL_SWIM) && (it & IT_SUPER_SHOTGUN))
    {
        return IT_SUPER_SHOTGUN;
    }
    
    
    if((self.ammo_nails >= TRUE) && (it & IT_NAILGUN))
    {
        return IT_NAILGUN;
    }
    
    
    if((self.ammo_shells >= TRUE) && (it & IT_SHOTGUN))
    {
        return IT_SHOTGUN;
    }
    
    return IT_AXE;
};

void () bot_axe1;
void () bot_axeb1;
void () bot_axec1;
void () bot_axed1;
void () bot_shot1;
void () bot_nail1;
void () bot_light1;
void () bot_rocket1;
// W_BotAttack
// function begins at statement 19043, parm_start=11058
// OP_CALL0	3982	0	0
// OP_NOT_F	1	0	11060
// OP_IFNOT	11060	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	11061
// OP_LT	31	11061	11062
// OP_IFNOT	11062	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	11059	0
// OP_LOAD_F	28	553	11063
// OP_LT	11063	228	11064
// OP_IFNOT	11064	7	0
// OP_LOAD_F	28	553	11065
// OP_SUB_F	228	11065	11066
// OP_CALL0	452	0	0
// OP_MUL_F	11066	1	11067
// OP_MUL_F	11067	11068	11069
// OP_STORE_F	11069	11059	0
// OP_LOAD_F	28	553	11070
// OP_LT	11070	214	11071
// OP_IFNOT	11071	5	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	1369	11072
// OP_ADD_F	11059	11072	11073
// OP_STORE_F	11073	11059	0
// OP_LOAD_V	28	175	11074
// OP_STORE_V	11074	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	388	11077
// OP_ADD_F	31	214	11078
// OP_STOREP_F	11078	11077	0
// OP_LOAD_F	28	154	11079
// OP_EQ_F	11079	253	11080
// OP_IFNOT	11080	27	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	4006	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	11058	0
// OP_LT	11058	703	11081
// OP_IFNOT	11081	3	0
// OP_CALL0	11049	0	0
// OP_GOTO	10	0	0
// OP_LT	11058	677	11082
// OP_IFNOT	11082	3	0
// OP_CALL0	11050	0	0
// OP_GOTO	6	0	0
// OP_LT	11058	4009	11083
// OP_IFNOT	11083	3	0
// OP_CALL0	11051	0	0
// OP_GOTO	2	0	0
// OP_CALL0	11052	0	0
// OP_ADDRESS	28	373	11084
// OP_ADD_F	31	677	11085
// OP_ADD_F	11085	11059	11086
// OP_STOREP_F	11086	11084	0
// OP_GOTO	67	0	0
// OP_LOAD_F	28	154	11087
// OP_EQ_F	11087	254	11088
// OP_IFNOT	11088	8	0
// OP_CALL0	11053	0	0
// OP_CALL0	3354	0	0
// OP_ADDRESS	28	373	11089
// OP_ADD_F	31	677	11090
// OP_ADD_F	11090	11059	11091
// OP_STOREP_F	11091	11089	0
// OP_GOTO	57	0	0
// OP_LOAD_F	28	154	11092
// OP_EQ_F	11092	255	11093
// OP_IFNOT	11093	8	0
// OP_CALL0	11053	0	0
// OP_CALL0	3369	0	0
// OP_ADDRESS	28	373	11094
// OP_ADD_F	31	3328	11095
// OP_ADD_F	11095	11059	11096
// OP_STOREP_F	11096	11094	0
// OP_GOTO	47	0	0
// OP_LOAD_F	28	154	11097
// OP_EQ_F	11097	256	11098
// OP_IFNOT	11098	4	0
// OP_ADDRESS	28	148	11099
// OP_STOREP_FNC	11054	11099	0
// OP_GOTO	41	0	0
// OP_LOAD_F	28	154	11100
// OP_EQ_F	11100	257	11101
// OP_IFNOT	11101	4	0
// OP_ADDRESS	28	148	11102
// OP_STOREP_FNC	11054	11102	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	154	11103
// OP_EQ_F	11103	258	11104
// OP_IFNOT	11104	8	0
// OP_CALL0	11056	0	0
// OP_CALL0	3644	0	0
// OP_ADDRESS	28	373	11105
// OP_ADD_F	31	2345	11106
// OP_ADD_F	11106	11059	11107
// OP_STOREP_F	11107	11105	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	154	11108
// OP_EQ_F	11108	259	11109
// OP_IFNOT	11109	8	0
// OP_CALL0	11056	0	0
// OP_CALL0	3433	0	0
// OP_ADDRESS	28	373	11110
// OP_ADD_F	31	2355	11111
// OP_ADD_F	11111	11059	11112
// OP_STOREP_F	11112	11110	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	154	11113
// OP_EQ_F	11113	260	11114
// OP_IFNOT	11114	12	0
// OP_ADDRESS	28	148	11115
// OP_STOREP_FNC	11055	11115	0
// OP_ADDRESS	28	373	11116
// OP_ADD_F	31	993	11117
// OP_STOREP_F	11117	11116	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	4037	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () W_BotAttack = 
{
    local float r;
    local float addt;
    
    if(!W_CheckNoAmmo())
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    addt = FALSE;
    
    if(self.skil < MOVETYPE_WALK)
    {
        addt = ((MOVETYPE_WALK - self.skil) * random()) * 0.350;
    }
    
    
    if(self.skil < TRUE)
    {
        addt = addt + (random() * 0.300);
    }
    
    makevectors(self.v_angle);
    self.show_hostile = time + TRUE;
    if(self.weapon == IT_AXE)
    {
        sound(self, CHAN_WEAPON, "weapons/ax1.wav", TRUE, ATTN_NORM);
        r = random();
        if(r < 0.250)
        {
            bot_axe1();
        }
        else
        {
            if(r < 0.500)
            {
                bot_axeb1();
            }
            else
            {
                if(r < 0.750)
                {
                    bot_axec1();
                }
                else
                {
                    bot_axed1();
                }
                
            }
            
        }
        
        self.attack_finished = (time + 0.500) + addt;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            bot_shot1();
            W_FireShotgun();
            self.attack_finished = (time + 0.500) + addt;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                bot_shot1();
                W_FireSuperShotgun();
                self.attack_finished = (time + 0.700) + addt;
            }
            else
            {
                if(self.weapon == IT_NAILGUN)
                {
                    self.think = bot_nail1;
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.think = bot_nail1;
                    }
                    else
                    {
                        if(self.weapon == IT_GRENADE_LAUNCHER)
                        {
                            bot_rocket1();
                            W_FireGrenade();
                            self.attack_finished = (time + 0.600) + addt;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                bot_rocket1();
                                W_FireRocket();
                                self.attack_finished = (time + 0.800) + addt;
                            }
                            else
                            {
                                
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    self.think = bot_light1;
                                    self.attack_finished = time + 0.100;
                                    sound(self, CHAN_AUTO, "weapons/lstart.wav", TRUE, ATTN_NORM);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

void () bot_rebound1;
// CheckReboundAttack
// function begins at statement 19170, parm_start=11120
// OP_LOAD_F	28	553	11131
// OP_LT	11131	214	11132
// OP_IFNOT	11132	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	11133
// OP_GT	11133	31	11134
// OP_IFNOT	11134	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	162	11135
// OP_ADD_F	259	258	11136
// OP_BITAND	11135	11136	11137
// OP_NOT_F	11137	0	11138
// OP_IFNOT	11138	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	160	11139
// OP_LT	11139	228	11140
// OP_IFNOT	11140	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	11141
// OP_STORE_V	11141	11120	0
// OP_LOAD_ENT	28	194	11144
// OP_LOAD_V	11144	105	11145
// OP_STORE_V	11145	11123	0
// OP_STORE_V	11120	4	0
// OP_STORE_V	11123	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	11148
// OP_IFNOT	11148	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	194	11149
// OP_LOAD_V	11149	105	11150
// OP_LOAD_V	28	105	11153
// OP_SUB_V	11150	11153	11156
// OP_STORE_V	11156	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	11126	0
// OP_MUL_FV	2356	11126	11159
// OP_ADD_V	11123	11159	11162
// OP_STORE_V	11162	11123	0
// OP_STORE_V	11120	4	0
// OP_STORE_V	11123	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	11165
// OP_IFNOT	11165	23	0
// OP_LOAD_F	28	108	11166
// OP_LOAD_ENT	28	194	11167
// OP_LOAD_F	11167	108	11168
// OP_LT	11166	11168	11169
// OP_IFNOT	11169	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	194	11170
// OP_LOAD_V	11170	105	11171
// OP_STORE_V	11171	11123	0
// OP_STORE_V	11123	4	0
// OP_CALL1	634	0	0
// OP_ADD_F	1	228	11174
// OP_STORE_F	11174	11125	0
// OP_STORE_V	11120	4	0
// OP_STORE_V	11123	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	11175
// OP_IFNOT	11175	2	0
// OP_RETURN	213	0	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	28	194	11176
// OP_LOAD_V	11176	105	11177
// OP_MUL_FV	2356	11126	11180
// OP_MUL_VF	11180	70	11183
// OP_ADD_V	11177	11183	11186
// OP_STORE_V	11186	11123	0
// OP_LOAD_ENT	28	181	11189
// OP_LOAD_V	11189	105	11190
// OP_SUB_V	11190	11123	11193
// OP_STORE_V	11193	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	11129	0
// OP_STORE_F	2356	11130	0
// OP_LOAD_F	28	162	11196
// OP_BITAND	11196	275	11197
// OP_IFNOT	11197	3	0
// OP_MUL_F	216	11130	11198
// OP_STORE_F	11198	11130	0
// OP_GT	11129	11130	11199
// OP_IFNOT	11199	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	11200
// OP_SUB_V	11200	11123	11203
// OP_STORE_V	11203	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	11129	0
// OP_LOAD_F	28	152	11207
// OP_MUL_F	11207	677	11208
// OP_SUB_F	11206	11208	11209
// OP_LOAD_F	28	188	11210
// OP_LOAD_F	28	187	11211
// OP_MUL_F	11210	11211	11212
// OP_SUB_F	11209	11212	11213
// OP_STORE_F	11213	11130	0
// OP_LOAD_F	28	162	11214
// OP_BITAND	11214	275	11215
// OP_IFNOT	11215	3	0
// OP_MUL_F	216	11130	11216
// OP_STORE_F	11216	11130	0
// OP_LT	11129	11130	11217
// OP_IFNOT	11217	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	11123	617	0
// OP_STORE_F	214	620	0
// OP_ADDRESS	28	191	11218
// OP_LOAD_V	28	105	11219
// OP_SUB_V	11123	11219	11222
// OP_STORE_V	11222	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	11218	0
// OP_CALL0	491	0	0
// OP_CALL0	11118	0	0
// OP_LOAD_F	28	162	11225
// OP_BITAND	11225	259	11226
// OP_IFNOT	11226	3	0
// OP_CALL0	3433	0	0
// OP_GOTO	6	0	0
// OP_CALL0	452	0	0
// OP_MUL_FV	1	11227	11230
// OP_ADD_V	11123	11230	11233
// OP_STORE_V	11233	617	0
// OP_CALL0	3644	0	0
// OP_ADDRESS	28	373	11236
// OP_ADD_F	31	214	11237
// OP_STOREP_F	11237	11236	0
// OP_LOAD_F	28	553	11238
// OP_LT	11238	216	11239
// OP_IFNOT	11239	4	0
// OP_ADDRESS	28	373	11240
// OP_ADD_F	31	7531	11241
// OP_STOREP_F	11241	11240	0
// OP_STORE_F	213	620	0
// OP_DONE	0	0	0
float () CheckReboundAttack = 
{
    local vector spot1;
    local vector spot2;
    local vector dir;
    local float dist;
    local float mel;
    
    if(self.skil < TRUE)
    {
        return FALSE;
    }
    
    
    if(self.attack_finished > time)
    {
        return FALSE;
    }
    
    
    if(!(self.items & (IT_ROCKET_LAUNCHER + IT_GRENADE_LAUNCHER)))
    {
        return FALSE;
    }
    
    
    if(self.ammo_rockets < MOVETYPE_WALK)
    {
        return FALSE;
    }
    
    spot1 = self.origin;
    spot2 = self.goalentity.origin;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    dir = normalize(self.goalentity.origin - self.origin);
    spot2 = spot2 + (200.000 * dir);
    traceline(spot1, spot2, TRUE, self);
    if(trace_fraction == TRUE)
    {
        
        if(self.origin_z < self.goalentity.origin_z)
        {
            return FALSE;
        }
        
        spot2 = self.goalentity.origin;
        spot2_z = dropline(spot2) + MOVETYPE_WALK;
        traceline(spot1, spot2, TRUE, self);
        
        if(trace_fraction != TRUE)
        {
            return FALSE;
        }
        
    }
    else
    {
        spot2 = self.goalentity.origin + ((200.000 * dir) * trace_fraction);
    }
    
    dist = vlen(self.enemy.origin - spot2);
    mel = 200.000;
    
    if(self.items & IT_QUAD)
    {
        mel = FL_SWIM * mel;
    }
    
    
    if(dist > mel)
    {
        return FALSE;
    }
    
    dist = vlen(self.origin - spot2);
    mel = (280.000 - (self.health * 0.500)) - (self.armorvalue * self.armortype);
    
    if(self.items & IT_QUAD)
    {
        mel = FL_SWIM * mel;
    }
    
    
    if(dist < mel)
    {
        return FALSE;
    }
    
    REBOUNDSPOT = spot2;
    REBOUND = TRUE;
    self.ideal_yaw = vectoyaw(spot2 - self.origin);
    ChangeYaw();
    bot_rebound1();
    if(self.items & IT_ROCKET_LAUNCHER)
    {
        W_FireRocket();
    }
    else
    {
        REBOUNDSPOT = spot2 + (random() * '12.000 12.000 12.000');
        W_FireGrenade();
    }
    
    self.attack_finished = time + TRUE;
    
    if(self.skil < FL_SWIM)
    {
        self.attack_finished = time + 1.500;
    }
    
    REBOUND = FALSE;
};

