// drone_sound
// function begins at statement 28533, parm_start=19625
// OP_STORE_ENT	28	19627	0
// OP_LOAD_F	19627	413	19628
// OP_DIV_F	19628	1228	19629
// OP_STORE_F	19629	19625	0
// OP_STORE_V	19625	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	19625	0
// OP_GT	19625	810	19630
// OP_IFNOT	19630	2	0
// OP_STORE_F	810	19625	0
// OP_LOAD_F	28	435	19631
// OP_GT	31	19631	19632
// OP_LOAD_F	19627	198	19633
// OP_NE_F	19633	19625	19634
// OP_OR	19632	19634	19635
// OP_IFNOT	19635	96	0
// OP_LOAD_F	19627	240	19636
// OP_MUL_F	19636	655	19637
// OP_ADD_F	19637	1349	19638
// OP_STORE_F	19638	19626	0
// OP_LOAD_F	28	157	19639
// OP_BITAND	19639	677	19640
// OP_GT	19640	619	19641
// OP_LOAD_F	28	404	19642
// OP_NE_F	19642	788	19643
// OP_AND	19641	19643	19644
// OP_IFNOT	19644	2	0
// OP_STORE_F	677	19626	0
// OP_EQ_F	19625	619	19645
// OP_IFNOT	19645	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6079	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	19625	677	19646
// OP_IFNOT	19646	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6081	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	61	0	0
// OP_EQ_F	19625	806	19647
// OP_IFNOT	19647	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6083	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	52	0	0
// OP_EQ_F	19625	788	19648
// OP_IFNOT	19648	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6085	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	43	0	0
// OP_EQ_F	19625	808	19649
// OP_IFNOT	19649	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6087	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	19625	813	19650
// OP_IFNOT	19650	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6089	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	19625	816	19651
// OP_IFNOT	19651	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6091	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	19625	819	19652
// OP_IFNOT	19652	8	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6093	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	19627	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	6094	10	0
// OP_STORE_V	19626	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	435	19653
// OP_ADD_F	31	1349	19654
// OP_STOREP_F	19654	19653	0
// OP_ADDRESS	19627	198	19655
// OP_STOREP_F	19625	19655	0
// OP_DONE	0	0	0
void () drone_sound = 
{
    local float tmp;
    local float f1;
    local entity veh;
    veh = self;
    tmp = veh.speed / 70.000;
    tmp = floor(tmp);
    
    if(tmp > 8.000)
    {
        tmp = 8.000;
    }
    
    
    if((time > self.fly_sound) || (veh.impulse != tmp))
    {
        f1 = (veh.thru * 0.100) + 0.200;
        
        if(((self.skin & 1.000) > 0.000) && (self.style != 3.000))
        {
            f1 = 1.000;
        }
        
        if(tmp == 0.000)
        {
            sound(veh, CHAN_BODY, "engines/jet0.wav", f1, ATTN_NORM);
        }
        else
        {
            if(tmp == 1.000)
            {
                sound(veh, CHAN_BODY, "engines/jet1.wav", f1, ATTN_NORM);
            }
            else
            {
                if(tmp == 2.000)
                {
                    sound(veh, CHAN_BODY, "engines/jet2.wav", f1, ATTN_NORM);
                }
                else
                {
                    if(tmp == 3.000)
                    {
                        sound(veh, CHAN_BODY, "engines/jet3.wav", f1, ATTN_NORM);
                    }
                    else
                    {
                        if(tmp == 4.000)
                        {
                            sound(veh, CHAN_BODY, "engines/jet4.wav", f1, ATTN_NORM);
                        }
                        else
                        {
                            if(tmp == 5.000)
                            {
                                sound(veh, CHAN_BODY, "engines/jet5.wav", f1, ATTN_NORM);
                            }
                            else
                            {
                                if(tmp == 6.000)
                                {
                                    sound(veh, CHAN_BODY, "engines/jet6.wav", f1, ATTN_NORM);
                                }
                                else
                                {
                                    if(tmp == 7.000)
                                    {
                                        sound(veh, CHAN_BODY, "engines/jet7.wav", f1, ATTN_NORM);
                                    }
                                    else
                                    {
                                        sound(veh, CHAN_BODY, "engines/jet8.wav", f1, ATTN_NORM);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        self.fly_sound = time + 0.200;
        veh.impulse = tmp;
    }
    
};

// T_DroneTouch
// function begins at statement 28645, parm_start=19657
// OP_LOAD_F	29	129	19659
// OP_EQ_F	19659	292	19660
// OP_IFNOT	19660	2	0
// OP_RETURN	0	0	0
// OP_NE_E	29	30	19661
// OP_IFNOT	19661	8	0
// OP_LOAD_F	29	188	19662
// OP_NOT_F	19662	0	19663
// OP_LOAD_F	29	129	19664
// OP_NE_F	19664	295	19665
// OP_AND	19663	19665	19666
// OP_IFNOT	19666	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	5970	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	19667
// OP_STORE_V	19667	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	19668
// OP_STORE_V	19668	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	19669
// OP_STORE_V	19669	7	0
// OP_CALL2	546	0	0
// OP_EQ_E	29	30	19670
// OP_LOAD_F	29	177	19671
// OP_GT	19671	619	19672
// OP_OR	19670	19672	19673
// OP_LOAD_F	28	177	19674
// OP_LT	19674	677	19675
// OP_LOAD_F	28	423	19676
// OP_GT	31	19676	19677
// OP_AND	19675	19677	19678
// OP_OR	19673	19678	19679
// OP_IFNOT	19679	34	0
// OP_LOAD_F	28	177	19680
// OP_GT	19680	619	19681
// OP_IFNOT	19681	16	0
// OP_LOAD_S	28	205	19682
// OP_STORE_V	19682	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5796	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	19683
// OP_IFNOT	19683	7	0
// OP_LOAD_S	29	205	19684
// OP_STORE_V	19684	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5807	4	0
// OP_CALL1	517	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	173	19685
// OP_STOREP_FNC	2603	19685	0
// OP_ADDRESS	28	175	19686
// OP_ADD_F	31	655	19687
// OP_STOREP_F	19687	19686	0
// OP_GOTO	30	0	0
// OP_ADDRESS	28	423	19688
// OP_ADD_F	31	1687	19689
// OP_STOREP_F	19689	19688	0
// OP_LOAD_F	28	177	19690
// OP_GT	19690	619	19691
// OP_IFNOT	19691	13	0
// OP_LOAD_S	28	205	19692
// OP_STORE_V	19692	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	5796	4	0
// OP_CALL1	517	0	0
// OP_NE_E	29	30	19693
// OP_IFNOT	19693	6	0
// OP_LOAD_S	29	205	19694
// OP_STORE_V	19694	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7671	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	171	19695
// OP_STOREP_FNC	19656	19695	0
// OP_CALL0	5190	0	0
// OP_DONE	0	0	0
void () T_DroneTouch = 
{
    local float damg;
    local entity stemp2;
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(other != world)
    {
        
        if(!other.takedamage && (other.solid != SOLID_BSP))
        {
            return;
        }
        
    }
    
    T_RadiusDamage(self, self, 240.000, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    if(((other == world) || (other.health > 0.000)) || ((self.health < 1.000) && (time > self.pain_finished)))
    {
        
        if(self.health > 0.000)
        {
            bprint(self.netname);
            bprint(" crashed into ");
            if(other != world)
            {
                bprint(other.netname);
                bprint("\n");
            }
            else
            {
                bprint("the ground\n");
            }
            
        }
        
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        T_Damage(self, self, self, 1000.000);
        self.think = BecomeExplosion;
        self.nextthink = time + 0.100;
    }
    else
    {
        self.pain_finished = time + 0.300;
        
        if(self.health > 0.000)
        {
            bprint(self.netname);
            bprint(" crashed into ");
            
            if(other != world)
            {
                bprint(other.netname);
                bprint("\n");
            }
            
        }
        
        T_Damage(self, self, self, 1000.000);
        setmodel(self, "progs/plane1b.mdl");
        self.touch = T_DroneTouch;
        AC_Fall();
    }
    
};

// drone_die
// function begins at statement 28755, parm_start=19697
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	19697
// OP_STORE_V	19697	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	19698
// OP_STORE_V	19698	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	19699
// OP_STORE_V	19699	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7671	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	411	19700
// OP_STOREP_FNC	3796	19700	0
// OP_ADDRESS	28	171	19701
// OP_STOREP_FNC	19656	19701	0
// OP_CALL0	5190	0	0
// OP_DONE	0	0	0
void () drone_die = 
{
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    setmodel(self, "progs/plane1b.mdl");
    self.th_die = AC_Explode;
    self.touch = T_DroneTouch;
    AC_Fall();
};

// drone_fly
// function begins at statement 28782, parm_start=19703
// OP_LOAD_ENT	28	219	19716
// OP_IFNOT	19716	199	0
// OP_LOAD_ENT	28	219	19717
// OP_LOAD_V	19717	130	19718
// OP_STORE_V	19718	19706	0
// OP_LOAD_ENT	28	464	19721
// OP_IFNOT	19721	45	0
// OP_LOAD_ENT	28	464	19722
// OP_LOAD_V	19722	130	19723
// OP_LOAD_V	28	130	19726
// OP_SUB_V	19723	19726	19729
// OP_STORE_V	19729	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19715	0
// OP_LOAD_ENT	28	219	19732
// OP_LOAD_V	19732	130	19733
// OP_LOAD_ENT	28	464	19736
// OP_LOAD_V	19736	130	19737
// OP_SUB_V	19733	19737	19740
// OP_STORE_V	19740	4	0
// OP_CALL1	506	0	0
// OP_DIV_F	19715	1	19743
// OP_STORE_F	19743	19715	0
// OP_MUL_F	19715	2571	19744
// OP_ADD_F	19744	1350	19745
// OP_STORE_F	19745	19715	0
// OP_GT	19715	677	19746
// OP_IFNOT	19746	2	0
// OP_STORE_F	677	19715	0
// OP_LOAD_ENT	28	464	19747
// OP_LOAD_V	19747	130	19748
// OP_LOAD_ENT	28	219	19751
// OP_LOAD_V	19751	130	19752
// OP_LOAD_ENT	28	464	19755
// OP_LOAD_V	19755	130	19756
// OP_SUB_V	19752	19756	19759
// OP_MUL_VF	19759	19715	19762
// OP_ADD_V	19748	19762	19765
// OP_STORE_V	19765	19706	0
// OP_EQ_F	19715	677	19768
// OP_IFNOT	19768	11	0
// OP_ADDRESS	28	464	19769
// OP_LOAD_ENT	28	219	19770
// OP_STOREP_ENT	19770	19769	0
// OP_ADDRESS	28	219	19771
// OP_LOAD_ENT	28	219	19772
// OP_LOAD_ENT	19772	219	19773
// OP_STOREP_ENT	19773	19771	0
// OP_ADDRESS	28	467	19774
// OP_LOAD_ENT	28	219	19775
// OP_STOREP_ENT	19775	19774	0
// OP_LOAD_V	28	130	19776
// OP_SUB_V	19706	19776	19779
// OP_STORE_V	19779	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	19703	0
// OP_STORE_V	607	19706	0
// OP_LOAD_F	28	144	19782
// OP_SUB_F	19704	19782	19783
// OP_STORE_V	19783	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	19707	0
// OP_GT	19707	1827	19784
// OP_IFNOT	19784	3	0
// OP_SUB_F	19707	1459	19785
// OP_STORE_F	19785	19707	0
// OP_LOAD_F	28	143	19786
// OP_SUB_F	19703	19786	19787
// OP_STORE_V	19787	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	19706	0
// OP_GT	19706	1827	19788
// OP_IFNOT	19788	3	0
// OP_SUB_F	19706	1459	19789
// OP_STORE_F	19789	19706	0
// OP_STORE_V	607	19709	0
// OP_LT	19706	619	19790
// OP_IFNOT	19790	2	0
// OP_STORE_F	4395	19709	0
// OP_GT	19706	619	19791
// OP_IFNOT	19791	2	0
// OP_STORE_F	856	19709	0
// OP_STORE_V	19706	4	0
// OP_CALL1	534	0	0
// OP_LT	1	813	19792
// OP_IFNOT	19792	4	0
// OP_STORE_F	619	19709	0
// OP_ADDRESS	28	143	19793
// OP_STOREP_F	19703	19793	0
// OP_MUL_F	19707	813	19794
// OP_STORE_F	19794	19710	0
// OP_LT	19710	7776	19795
// OP_IFNOT	19795	2	0
// OP_STORE_F	7776	19710	0
// OP_GT	19710	2618	19796
// OP_IFNOT	19796	2	0
// OP_STORE_F	2618	19710	0
// OP_STORE_V	19707	4	0
// OP_CALL1	534	0	0
// OP_LT	1	806	19797
// OP_IFNOT	19797	4	0
// OP_STORE_F	619	19710	0
// OP_ADDRESS	28	144	19798
// OP_STOREP_F	19704	19798	0
// OP_STORE_V	19707	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1145	19799
// OP_STORE_V	19706	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1145	19800
// OP_AND	19799	19800	19801
// OP_LOAD_F	28	177	19802
// OP_LT	19802	2627	19803
// OP_AND	19801	19803	19804
// OP_IFNOT	19804	3	0
// OP_STORE_F	677	19715	0
// OP_GOTO	2	0	0
// OP_STORE_F	619	19715	0
// OP_SUB_F	619	19710	19805
// OP_LOAD_F	28	145	19806
// OP_SUB_F	19805	19806	19807
// OP_STORE_F	19807	19708	0
// OP_LT	19708	619	19808
// OP_IFNOT	19808	7	0
// OP_STORE_F	6193	19711	0
// OP_MUL_F	19708	827	19809
// OP_LT	19711	19809	19810
// OP_IFNOT	19810	3	0
// OP_MUL_F	19708	827	19811
// OP_STORE_F	19811	19711	0
// OP_GT	19708	619	19812
// OP_IFNOT	19812	7	0
// OP_STORE_F	986	19711	0
// OP_MUL_F	19708	827	19813
// OP_GT	19711	19813	19814
// OP_IFNOT	19814	3	0
// OP_MUL_F	19708	827	19815
// OP_STORE_F	19815	19711	0
// OP_STORE_V	19708	4	0
// OP_CALL1	534	0	0
// OP_LT	1	813	19816
// OP_IFNOT	19816	5	0
// OP_STORE_F	619	19711	0
// OP_ADDRESS	28	145	19817
// OP_SUB_F	619	19710	19818
// OP_STOREP_F	19818	19817	0
// OP_ADDRESS	28	146	19819
// OP_STOREP_V	19709	19819	0
// OP_LOAD_F	28	207	19822
// OP_BITAND	19822	277	19823
// OP_IFNOT	19823	7	0
// OP_ADDRESS	28	207	19824
// OP_LOAD_F	28	207	19825
// OP_SUB_F	19825	277	19826
// OP_STOREP_F	19826	19824	0
// OP_ADDRESS	28	176	19827
// OP_STOREP_ENT	30	19827	0
// OP_LOAD_F	28	177	19828
// OP_LT	19828	1155	19829
// OP_IFNOT	19829	7	0
// OP_LOAD_S	28	155	19830
// OP_EQ_S	19830	7668	19831
// OP_IFNOT	19831	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7671	7	0
// OP_CALL2	498	0	0
// OP_IFNOT	19715	9	0
// OP_ADDRESS	28	157	19832
// OP_STOREP_F	677	19832	0
// OP_BITAND	112	808	19833
// OP_NOT_F	19833	0	19834
// OP_IFNOT	19834	3	0
// OP_ADDRESS	28	158	19835
// OP_STOREP_F	808	19835	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	19836
// OP_STOREP_F	619	19836	0
// OP_ADDRESS	28	158	19837
// OP_STOREP_F	619	19837	0
// OP_LOAD_V	28	142	19838
// OP_STORE_V	19838	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	19712	0
// OP_SUB_F	619	19714	19841
// OP_STORE_F	19841	19714	0
// OP_ADDRESS	28	240	19842
// OP_STOREP_F	808	19842	0
// OP_NOT_F	19715	0	19843
// OP_IFNOT	19843	6	0
// OP_ADDRESS	28	413	19844
// OP_LOAD_F	28	240	19845
// OP_MUL_F	19845	5009	19846
// OP_STOREP_F	19846	19844	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	413	19847
// OP_STOREP_F	1620	19847	0
// OP_ADDRESS	28	138	19848
// OP_LOAD_F	28	413	19851
// OP_MUL_VF	19712	19851	19852
// OP_STOREP_V	19852	19848	0
// OP_CALL0	19624	0	0
// OP_ADDRESS	28	173	19855
// OP_STOREP_FNC	19702	19855	0
// OP_ADDRESS	28	175	19856
// OP_ADD_F	31	655	19857
// OP_STOREP_F	19857	19856	0
// OP_DONE	0	0	0
void () drone_fly = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float ab;
    
    if(self.goalentity)
    {
        v1 = self.goalentity.origin;
        
        if(self.trigger_field)
        {
            ab = vlen(self.trigger_field.origin - self.origin);
            ab = ab / (vlen(self.goalentity.origin - self.trigger_field.origin));
            ab = (ab * 0.700) + 0.400;
            
            if(ab > 1.000)
            {
                ab = 1.000;
            }
            
            v1 = self.trigger_field.origin + ((self.goalentity.origin - self.trigger_field.origin) * ab);
            
            if(ab == 1.000)
            {
                self.trigger_field = self.goalentity;
                self.goalentity = self.goalentity.goalentity;
                self.movetarget = self.goalentity;
            }
            
        }
        
        v0 = vectoangles(v1 - self.origin);
        v1 = '0.000 0.000 0.000';
        v1_y = anglemod(0.000 - self.angles_y);
        
        if(0.000 > 180.000)
        {
            v1_y = 0.000 - 360.000;
        }
        
        v1_x = anglemod(v0_x - self.angles_x);
        
        if(v1_x > 180.000)
        {
            v1_x = v1_x - 360.000;
        }
        
        v2 = '0.000 0.000 0.000';
        
        if(v1_x < 0.000)
        {
            v2_x = -50.000;
        }
        
        
        if(v1_x > 0.000)
        {
            v2_x = 50.000;
        }
        
        
        if(fabs(v1_x) < 5.000)
        {
            v2_x = 0.000;
            self.angles_x = v0;
        }
        
        v2_y = 0.000 * 5.000;
        
        if(0.000 < -100.000)
        {
            v2_y = -100.000;
        }
        
        
        if(0.000 > 100.000)
        {
            v2_y = 100.000;
        }
        
        
        if(fabs(0.000) < 2.000)
        {
            v2_y = 0.000;
            self.angles_y = 0.000;
        }
        
        if(((fabs(0.000) < 25.000) && (fabs(v1_x) < 25.000)) && (self.health < 120.000))
        {
            ab = 1.000;
        }
        else
        {
            ab = 0.000;
        }
        
        v1_z = (0.000 - 0.000) - self.angles_z;
        
        if(0.000 < 0.000)
        {
            v2_z = -200.000;
            
            if(0.000 < (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(0.000 > 0.000)
        {
            v2_z = 200.000;
            
            if(0.000 > (0.000 * 10.000))
            {
                v2_z = 0.000 * 10.000;
            }
            
        }
        
        
        if(fabs(0.000) < 5.000)
        {
            v2_z = 0.000;
            self.angles_z = 0.000 - 0.000;
        }
        
        self.avelocity = v2;
        
        if(self.flags & FL_ONGROUND)
        {
            self.flags = self.flags - FL_ONGROUND;
            self.groundentity = world;
        }
        
        
        if(self.health < 40.000)
        {
            
            if(self.model == "progs/plane1.mdl")
            {
                setmodel(self, "progs/plane1b.mdl");
            }
            
        }
        
        if(ab)
        {
            self.skin = 1.000;
            
            if(!(temp1 & 4.000))
            {
                self.effects = 4.000;
            }
            
        }
        else
        {
            self.skin = 0.000;
            self.effects = 0.000;
        }
        
        makevectors(self.angles);
        v3 = v_forward;
        v3_z = 0.000 - 0.000;
        self.thru = 4.000;
        if(!ab)
        {
            self.speed = self.thru * 75.000;
        }
        else
        {
            self.speed = 500.000;
        }
        
        self.velocity = v3 * self.speed;
    }
    
    drone_sound();
    self.think = drone_fly;
    self.nextthink = time + 0.100;
};

// drone_start
// function begins at statement 28989, parm_start=19859
// OP_GT	35	619	19859
// OP_LOAD_F	28	209	19860
// OP_EQ_F	19860	619	19861
// OP_EQ_F	37	619	19862
// OP_OR	19861	19862	19863
// OP_AND	19859	19863	19864
// OP_IFNOT	19864	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_NOT_F	35	0	19865
// OP_IFNOT	19865	3	0
// OP_ADD_F	40	677	19866
// OP_STORE_F	19866	40	0
// OP_ADDRESS	28	188	19867
// OP_STOREP_F	306	19867	0
// OP_ADDRESS	28	191	19868
// OP_STOREP_V	582	19868	0
// OP_ADDRESS	28	207	19871
// OP_LOAD_F	28	207	19872
// OP_BITOR	19872	273	19873
// OP_STOREP_F	19873	19871	0
// OP_LOAD_S	28	221	19874
// OP_IFNOT	19874	22	0
// OP_ADDRESS	28	219	19875
// OP_ADDRESS	28	467	19876
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	19877
// OP_STORE_V	19877	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	19876	0
// OP_STOREP_ENT	1	19875	0
// OP_LOAD_ENT	28	467	19878
// OP_NOT_ENT	19878	0	19879
// OP_IFNOT	19879	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	19880
// OP_STORE_V	19880	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	173	19883
// OP_STOREP_FNC	19702	19883	0
// OP_ADDRESS	28	175	19884
// OP_LOAD_F	28	175	19885
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	19886
// OP_ADD_F	19885	19886	19887
// OP_STOREP_F	19887	19884	0
// OP_DONE	0	0	0
void () drone_start = 
{
    
    if((deathmatch > 0.000) && ((self.team == 0.000) || (teamplay == 0.000)))
    {
        remove(self);
        return;
    }
    
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1.000;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.view_ofs = '0.000 0.000 1.000';
    self.flags = self.flags | FL_MONSTER;
    
    if(self.target)
    {
        self.movetarget = find(world, targetname, self.target);
        self.goalentity = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
    }
    
    self.think = drone_fly;
    self.nextthink = self.nextthink + (random() * 0.500);
};

// monster_drone
// function begins at statement 29043, parm_start=19889
// OP_ADDRESS	28	129	19889
// OP_STOREP_F	294	19889	0
// OP_ADDRESS	28	128	19890
// OP_STOREP_F	284	19890	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7668	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_LOAD_F	28	177	19891
// OP_NOT_F	19891	0	19892
// OP_IFNOT	19892	3	0
// OP_ADDRESS	28	177	19893
// OP_STOREP_F	986	19893	0
// OP_ADDRESS	28	205	19894
// OP_STOREP_S	19895	19894	0
// OP_CALL0	1068	0	0
// OP_ADDRESS	28	171	19896
// OP_STOREP_FNC	19656	19896	0
// OP_ADDRESS	28	411	19897
// OP_STOREP_FNC	19696	19897	0
// OP_ADDRESS	28	173	19898
// OP_STOREP_FNC	19858	19898	0
// OP_ADDRESS	28	175	19899
// OP_ADD_F	31	655	19900
// OP_CALL0	501	0	0
// OP_MUL_F	1	655	19901
// OP_ADD_F	19900	19901	19902
// OP_STOREP_F	19902	19899	0
// OP_DONE	0	0	0
void () monster_drone = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_FLY;
    setmodel(self, "progs/plane1.mdl");
    setsize(self, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    
    if(!self.health)
    {
        self.health = 200.000;
    }
    
    self.netname = "Dogfighter";
    setup_teament();
    self.touch = T_DroneTouch;
    self.th_die = drone_die;
    self.think = drone_start;
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

