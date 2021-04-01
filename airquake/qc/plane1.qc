// ac1_currentammo
// function begins at statement 9896, parm_start=7621
// OP_ADDRESS	28	183	7621
// OP_LOAD_F	28	245	7622
// OP_STOREP_F	7622	7621	0
// OP_ADDRESS	28	184	7623
// OP_LOAD_F	28	246	7624
// OP_STOREP_F	7624	7623	0
// OP_ADDRESS	28	185	7625
// OP_LOAD_F	28	248	7626
// OP_STOREP_F	7626	7625	0
// OP_ADDRESS	28	186	7627
// OP_LOAD_F	28	249	7628
// OP_STOREP_F	7628	7627	0
// OP_LOAD_F	28	179	7629
// OP_EQ_F	7629	321	7630
// OP_IFNOT	7630	4	0
// OP_ADDRESS	28	180	7631
// OP_STOREP_S	7632	7631	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	7633
// OP_EQ_F	7633	322	7634
// OP_IFNOT	7634	4	0
// OP_ADDRESS	28	180	7635
// OP_STOREP_S	7636	7635	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	7637
// OP_EQ_F	7637	323	7638
// OP_IFNOT	7638	4	0
// OP_ADDRESS	28	180	7639
// OP_STOREP_S	7640	7639	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	7641
// OP_EQ_F	7641	324	7642
// OP_IFNOT	7642	3	0
// OP_ADDRESS	28	180	7643
// OP_STOREP_S	7644	7643	0
// OP_DONE	0	0	0
void () ac1_currentammo = 
{
    self.ammo_shells = self.ammo_auto;
    self.ammo_nails = self.ammo_rock;
    self.ammo_rockets = self.ammo_amsl;
    self.ammo_cells = self.ammo_smsl;
    if(self.weapon == IT_WEP1)
    {
        self.weaponmodel = "progs/v_auto.mdl";
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.weaponmodel = "progs/v_rock.mdl";
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weaponmodel = "progs/v_sider.mdl";
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    self.weaponmodel = "progs/v_amra.mdl";
                }
                
            }
            
        }
        
    }
    
};

// ac1_steer
// function begins at statement 9932, parm_start=7646
// OP_LOAD_F	28	157	7662
// OP_MUL_F	7662	806	7663
// OP_STORE_F	7663	7661	0
// OP_LOAD_ENT	28	206	7664
// OP_STORE_ENT	7664	7646	0
// OP_STORE_V	2618	4	0
// OP_STORE_V	2618	7	0
// OP_STORE_V	986	10	0
// OP_CALL3	6229	0	0
// OP_CALL0	6058	0	0
// OP_LOAD_F	28	177	7665
// OP_LT	7665	1111	7666
// OP_LOAD_S	7646	155	7667
// OP_EQ_S	7667	7668	7669
// OP_AND	7666	7669	7670
// OP_IFNOT	7670	4	0
// OP_STORE_V	7646	4	0
// OP_STORE_V	7671	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	7672
// OP_GE	7672	1111	7673
// OP_LOAD_S	7646	155	7674
// OP_EQ_S	7674	7671	7675
// OP_AND	7673	7675	7676
// OP_IFNOT	7676	4	0
// OP_STORE_V	7646	4	0
// OP_STORE_V	7668	7	0
// OP_CALL2	498	0	0
// OP_LOAD_V	7646	142	7677
// OP_STORE_V	7677	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	7657	0
// OP_SUB_F	619	7659	7680
// OP_STORE_F	7680	7659	0
// OP_LOAD_F	28	466	7681
// OP_GE	31	7681	7682
// OP_IFNOT	7682	6	0
// OP_ADDRESS	7646	413	7683
// OP_LOAD_F	7646	413	7684
// OP_MUL_F	7659	827	7685
// OP_SUB_F	7684	7685	7686
// OP_STOREP_F	7686	7683	0
// OP_LOAD_F	7646	177	7687
// OP_GT	7687	619	7688
// OP_IFNOT	7688	49	0
// OP_LOAD_F	28	197	7689
// OP_IFNOT	7689	28	0
// OP_LOAD_F	7646	241	7690
// OP_NOT_F	7690	0	7691
// OP_IFNOT	7691	3	0
// OP_ADDRESS	7646	240	7692
// OP_STOREP_F	808	7692	0
// OP_LOAD_F	28	466	7693
// OP_GE	31	7693	7694
// OP_IFNOT	7694	5	0
// OP_STORE_V	1620	4	0
// OP_STORE_V	808	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_LOAD_F	7646	157	7695
// OP_ADD_F	7661	677	7696
// OP_NE_F	7695	7696	7697
// OP_IFNOT	7697	3	0
// OP_ADDRESS	28	435	7698
// OP_STOREP_F	31	7698	0
// OP_ADDRESS	7646	157	7699
// OP_ADD_F	7661	677	7700
// OP_STOREP_F	7700	7699	0
// OP_BITAND	112	808	7701
// OP_NOT_F	7701	0	7702
// OP_IFNOT	7702	3	0
// OP_ADDRESS	7646	158	7703
// OP_STOREP_F	808	7703	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	466	7704
// OP_GE	31	7704	7705
// OP_IFNOT	7705	8	0
// OP_LOAD_F	7646	240	7706
// OP_MUL_F	7706	5009	7707
// OP_STORE_F	7707	7660	0
// OP_STORE_V	7660	4	0
// OP_STORE_V	788	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	7646	158	7708
// OP_STOREP_F	619	7708	0
// OP_LOAD_F	7646	157	7709
// OP_NE_F	7709	7661	7710
// OP_IFNOT	7710	3	0
// OP_ADDRESS	28	435	7711
// OP_STOREP_F	31	7711	0
// OP_ADDRESS	7646	157	7712
// OP_STOREP_F	7661	7712	0
// OP_LOAD_F	7646	177	7713
// OP_LT	7713	677	7714
// OP_IFNOT	7714	12	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	7715
// OP_STORE_F	7715	7660	0
// OP_ADDRESS	28	223	7716
// OP_LOAD_F	28	223	7717
// OP_ADD_F	7717	7660	7718
// OP_STOREP_F	7718	7716	0
// OP_ADDRESS	7646	157	7719
// OP_STOREP_F	7661	7719	0
// OP_ADDRESS	7646	158	7720
// OP_STOREP_F	808	7720	0
// OP_LOAD_F	28	466	7721
// OP_GE	31	7721	7722
// OP_IFNOT	7722	4	0
// OP_ADDRESS	28	466	7723
// OP_ADD_F	31	655	7724
// OP_STOREP_F	7724	7723	0
// OP_LOAD_F	7646	413	7725
// OP_LT	7725	619	7726
// OP_IFNOT	7726	3	0
// OP_ADDRESS	7646	413	7727
// OP_STOREP_F	619	7727	0
// OP_ADDRESS	28	213	7728
// OP_LOAD_F	7646	413	7729
// OP_DIV_F	7729	7730	7731
// OP_STOREP_F	7731	7728	0
// OP_ADDRESS	7646	138	7732
// OP_LOAD_F	7646	413	7735
// OP_MUL_VF	7657	7735	7736
// OP_STOREP_V	7736	7732	0
// OP_LOAD_F	7646	241	7739
// OP_IFNOT	7739	3	0
// OP_ADDRESS	7646	141	7740
// OP_STOREP_F	619	7740	0
// OP_LOAD_F	7646	133	7741
// OP_GT	7741	93	7742
// OP_AND	93	7742	7743
// OP_IFNOT	7743	13	0
// OP_LOAD_F	7646	141	7744
// OP_GT	7744	619	7745
// OP_IFNOT	7745	10	0
// OP_ADDRESS	7646	133	7746
// OP_STOREP_F	93	7746	0
// OP_ADDRESS	7646	141	7747
// OP_STOREP_F	619	7747	0
// OP_LOAD_F	7646	143	7748
// OP_GT	7748	619	7749
// OP_IFNOT	7749	3	0
// OP_ADDRESS	7646	143	7750
// OP_STOREP_F	619	7750	0
// OP_STORE_V	7646	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	7646	208	7751
// OP_LOAD_F	28	208	7752
// OP_NE_F	7751	7752	7753
// OP_IFNOT	7753	4	0
// OP_ADDRESS	7646	208	7754
// OP_LOAD_F	28	208	7755
// OP_STOREP_F	7755	7754	0
// OP_LOAD_ENT	28	412	7756
// OP_ADDRESS	7756	138	7757
// OP_LOAD_V	7646	138	7760
// OP_STOREP_V	7760	7757	0
// OP_LOAD_F	28	179	7763
// OP_EQ_F	7763	321	7764
// OP_IFNOT	7764	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7651	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	7767
// OP_EQ_F	7767	322	7768
// OP_IFNOT	7768	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	7770	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7651	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	7771
// OP_EQ_F	7771	323	7772
// OP_IFNOT	7772	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7651	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	7773
// OP_EQ_F	7773	324	7774
// OP_IFNOT	7774	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7775	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7651	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	7776	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7651	0
// OP_LOAD_ENT	28	464	7777
// OP_NOT_ENT	7777	0	7778
// OP_IFNOT	7778	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	7651	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	7651	0
// OP_LOAD_V	7646	130	7779
// OP_STORE_V	7779	4	0
// OP_LOAD_V	7646	130	7782
// OP_MUL_VF	7651	986	7785
// OP_ADD_V	7782	7785	7788
// OP_STORE_V	7788	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	7646	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	7791
// OP_LOAD_ENT	7791	464	7792
// OP_EQ_E	7792	30	7793
// OP_IFNOT	7793	11	0
// OP_LOAD_V	7646	130	7794
// OP_MUL_F	70	986	7797
// OP_SUB_F	7797	810	7798
// OP_MUL_VF	7651	7798	7799
// OP_ADD_V	7794	7799	7802
// OP_STORE_V	7802	7654	0
// OP_LOAD_ENT	28	464	7805
// OP_ADDRESS	7805	156	7806
// OP_STOREP_F	619	7806	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	7654	0
// OP_LOAD_ENT	28	464	7807
// OP_STORE_V	7807	4	0
// OP_STORE_V	7654	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () ac1_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    local float osk;
    osk = self.skin * 2.000;
    stemp = self.enemy;
    Steer_plane(100.000, 100.000, 200.000);
    jet_sound();
    
    if((self.health < 20.000) && (stemp.model == "progs/plane1.mdl"))
    {
        setmodel(stemp, "progs/plane1b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/plane1b.mdl"))
    {
        setmodel(stemp, "progs/plane1.mdl");
    }
    
    makevectors(stemp.angles);
    v3 = v_forward;
    v3_z = 0.000 - 0.000;
    
    if(time >= self.pausetime)
    {
        stemp.speed = stemp.speed - (0.000 * 10.000);
    }
    
    
    if(stemp.health > 0.000)
    {
        if(self.button2)
        {
            
            if(!stemp.landed)
            {
                stemp.thru = 4.000;
            }
            
            
            if(time >= self.pausetime)
            {
                setplanespeed(500.000, 4.000, 4.000);
            }
            
            
            if(stemp.skin != (osk + 1.000))
            {
                self.fly_sound = time;
            }
            
            stemp.skin = osk + 1.000;
            
            if(!(temp1 & 4.000))
            {
                stemp.effects = 4.000;
            }
            
        }
        else
        {
            
            if(time >= self.pausetime)
            {
                tmp = stemp.thru * 75.000;
                setplanespeed(tmp, 3.000, 4.000);
            }
            
            stemp.effects = 0.000;
            
            if(stemp.skin != osk)
            {
                self.fly_sound = time;
            }
            
            stemp.skin = osk;
        }
        
    }
    
    
    if(stemp.health < 1.000)
    {
        tmp = random() * 50.000;
        self.dmg_take = self.dmg_take + tmp;
        stemp.skin = osk;
        stemp.effects = 4.000;
    }
    
    
    if(time >= self.pausetime)
    {
        self.pausetime = time + 0.100;
    }
    
    
    if(stemp.speed < 0.000)
    {
        stemp.speed = 0.000;
    }
    
    self.armorvalue = stemp.speed / 3.300;
    stemp.velocity = v3 * stemp.speed;
    
    if(stemp.landed)
    {
        stemp.velocity_z = 0.000;
    }
    
    
    if(sky_z && (stemp.origin_z > sky_z))
    {
        
        if(stemp.velocity_z > 0.000)
        {
            stemp.origin_z = sky_z;
            stemp.velocity_z = 0.000;
            
            if(stemp.angles_x > 0.000)
            {
                stemp.angles_x = 0.000;
            }
            
        }
        
    }
    
    Check_minsmaxs(stemp);
    
    if(stemp.colormap != self.colormap)
    {
        stemp.colormap = self.colormap;
    }
    
    self.oldenemy.velocity = stemp.velocity;
    if(self.weapon == IT_WEP1)
    {
        v1 = AC_aim(0.970, -500.000);
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            v1 = AC_aim(0.930, -1000.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim(0.930, 1500.000);
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    v1 = AC_aim(0.970, 2500.000);
                }
                else
                {
                    v1 = AC_aim(1.000, -100.000);
                }
                
            }
            
        }
        
    }
    
    
    if(!self.trigger_field)
    {
        return;
    }
    
    v1 = normalize(v1);
    traceline(stemp.origin, stemp.origin + (v1 * 200.000), FALSE, stemp);
    if(self.enemy.trigger_field == world)
    {
        v2 = stemp.origin + (v1 * ((trace_fraction * 200.000) - 8.000));
        self.trigger_field.frame = 0.000;
    }
    else
    {
        v2 = place_targetbox();
    }
    
    setorigin(self.trigger_field, v2);
};

// ac1_attack
// function begins at statement 10164, parm_start=7809
// OP_LOAD_ENT	28	206	7816
// OP_LOAD_V	7816	142	7817
// OP_STORE_V	7817	7809	0
// OP_SUB_F	619	7809	7820
// OP_STORE_F	7820	7809	0
// OP_STORE_V	7809	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	7821
// OP_ADDRESS	7821	464	7822
// OP_STOREP_ENT	30	7822	0
// OP_LOAD_F	28	179	7823
// OP_EQ_F	7823	321	7824
// OP_IFNOT	7824	56	0
// OP_LOAD_F	28	245	7825
// OP_GE	7825	677	7826
// OP_IFNOT	7826	46	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7812	0
// OP_STORE_V	7809	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	245	7827
// OP_BITAND	7827	788	7828
// OP_IFNOT	7828	10	0
// OP_LOAD_ENT	28	206	7829
// OP_LOAD_V	7829	130	7830
// OP_MUL_VF	59	827	7833
// OP_ADD_V	7830	7833	7836
// OP_STORE_V	7836	4	0
// OP_STORE_V	7812	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	206	7839
// OP_LOAD_V	7839	130	7840
// OP_MUL_VF	59	827	7843
// OP_ADD_V	7840	7843	7846
// OP_STORE_V	7846	4	0
// OP_STORE_V	7812	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_ENT	28	206	7849
// OP_ADDRESS	7849	158	7850
// OP_LOAD_ENT	28	206	7851
// OP_LOAD_F	7851	158	7852
// OP_BITOR	7852	383	7853
// OP_STOREP_F	7853	7850	0
// OP_ADDRESS	28	182	7854
// OP_ADDRESS	28	183	7855
// OP_ADDRESS	28	245	7856
// OP_LOAD_F	28	245	7857
// OP_SUB_F	7857	677	7858
// OP_STOREP_F	7858	7856	0
// OP_STOREP_F	7858	7855	0
// OP_STOREP_F	7858	7854	0
// OP_LOAD_ENT	28	206	7859
// OP_ADDRESS	7859	437	7860
// OP_ADD_F	31	677	7861
// OP_STOREP_F	7861	7860	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	7862
// OP_ADD_F	31	1353	7863
// OP_STOREP_F	7863	7862	0
// OP_GOTO	198	0	0
// OP_LOAD_F	28	179	7864
// OP_EQ_F	7864	322	7865
// OP_IFNOT	7865	64	0
// OP_LOAD_F	28	246	7866
// OP_GE	7866	677	7867
// OP_IFNOT	7867	54	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	7770	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7812	0
// OP_STORE_V	7809	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	246	7868
// OP_BITAND	7868	677	7869
// OP_IFNOT	7869	14	0
// OP_LOAD_ENT	28	206	7870
// OP_LOAD_V	7870	130	7871
// OP_MUL_VF	62	827	7874
// OP_SUB_V	7871	7874	7877
// OP_MUL_VF	59	827	7880
// OP_SUB_V	7877	7880	7883
// OP_MUL_VF	65	827	7886
// OP_ADD_V	7883	7886	7889
// OP_STORE_V	7889	4	0
// OP_STORE_V	7812	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4169	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	7892
// OP_LOAD_V	7892	130	7893
// OP_MUL_VF	62	827	7896
// OP_SUB_V	7893	7896	7899
// OP_MUL_VF	59	827	7902
// OP_SUB_V	7899	7902	7905
// OP_MUL_VF	65	827	7908
// OP_SUB_V	7905	7908	7911
// OP_STORE_V	7911	4	0
// OP_STORE_V	7812	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4169	0	0
// OP_LOAD_ENT	28	206	7914
// OP_ADDRESS	7914	158	7915
// OP_LOAD_ENT	28	206	7916
// OP_LOAD_F	7916	158	7917
// OP_BITOR	7917	383	7918
// OP_STOREP_F	7918	7915	0
// OP_ADDRESS	28	182	7919
// OP_ADDRESS	28	184	7920
// OP_ADDRESS	28	246	7921
// OP_LOAD_F	28	246	7922
// OP_SUB_F	7922	677	7923
// OP_STOREP_F	7923	7921	0
// OP_STOREP_F	7923	7920	0
// OP_STOREP_F	7923	7919	0
// OP_LOAD_ENT	28	206	7924
// OP_ADDRESS	7924	437	7925
// OP_ADD_F	31	677	7926
// OP_STOREP_F	7926	7925	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	7927
// OP_ADD_F	31	1350	7928
// OP_STOREP_F	7928	7927	0
// OP_GOTO	132	0	0
// OP_LOAD_F	28	179	7929
// OP_EQ_F	7929	323	7930
// OP_IFNOT	7930	64	0
// OP_LOAD_F	28	248	7931
// OP_GE	7931	677	7932
// OP_IFNOT	7932	54	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7812	0
// OP_STORE_V	7809	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	248	7933
// OP_BITAND	7933	677	7934
// OP_IFNOT	7934	14	0
// OP_LOAD_ENT	28	206	7935
// OP_LOAD_V	7935	130	7936
// OP_MUL_VF	59	827	7939
// OP_SUB_V	7936	7939	7942
// OP_MUL_VF	65	812	7945
// OP_ADD_V	7942	7945	7948
// OP_STORE_V	7948	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	7951
// OP_LOAD_ENT	7951	464	7952
// OP_STORE_V	7952	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	7953
// OP_LOAD_V	7953	130	7954
// OP_MUL_VF	59	827	7957
// OP_SUB_V	7954	7957	7960
// OP_MUL_VF	65	812	7963
// OP_SUB_V	7960	7963	7966
// OP_STORE_V	7966	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	7969
// OP_LOAD_ENT	7969	464	7970
// OP_STORE_V	7970	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	7971
// OP_ADDRESS	7971	158	7972
// OP_LOAD_ENT	28	206	7973
// OP_LOAD_F	7973	158	7974
// OP_BITOR	7974	383	7975
// OP_STOREP_F	7975	7972	0
// OP_ADDRESS	28	182	7976
// OP_ADDRESS	28	185	7977
// OP_ADDRESS	28	248	7978
// OP_LOAD_F	28	248	7979
// OP_SUB_F	7979	677	7980
// OP_STOREP_F	7980	7978	0
// OP_STOREP_F	7980	7977	0
// OP_STOREP_F	7980	7976	0
// OP_LOAD_ENT	28	206	7981
// OP_ADDRESS	7981	437	7982
// OP_ADD_F	31	677	7983
// OP_STOREP_F	7983	7982	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	7984
// OP_ADD_F	31	7985	7986
// OP_STOREP_F	7986	7984	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	179	7987
// OP_EQ_F	7987	324	7988
// OP_IFNOT	7988	63	0
// OP_LOAD_F	28	249	7989
// OP_GE	7989	677	7990
// OP_IFNOT	7990	54	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7775	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	7812	0
// OP_STORE_V	7809	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	249	7991
// OP_BITAND	7991	677	7992
// OP_IFNOT	7992	14	0
// OP_LOAD_ENT	28	206	7993
// OP_LOAD_V	7993	130	7994
// OP_MUL_VF	59	827	7997
// OP_SUB_V	7994	7997	8000
// OP_MUL_VF	65	812	8003
// OP_ADD_V	8000	8003	8006
// OP_STORE_V	8006	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8009
// OP_LOAD_ENT	8009	464	8010
// OP_STORE_V	8010	10	0
// OP_CALL3	4923	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	8011
// OP_LOAD_V	8011	130	8012
// OP_MUL_VF	59	827	8015
// OP_SUB_V	8012	8015	8018
// OP_MUL_VF	65	812	8021
// OP_SUB_V	8018	8021	8024
// OP_STORE_V	8024	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8027
// OP_LOAD_ENT	8027	464	8028
// OP_STORE_V	8028	10	0
// OP_CALL3	4923	0	0
// OP_LOAD_ENT	28	206	8029
// OP_ADDRESS	8029	158	8030
// OP_LOAD_ENT	28	206	8031
// OP_LOAD_F	8031	158	8032
// OP_BITOR	8032	383	8033
// OP_STOREP_F	8033	8030	0
// OP_ADDRESS	28	182	8034
// OP_ADDRESS	28	186	8035
// OP_ADDRESS	28	249	8036
// OP_LOAD_F	28	249	8037
// OP_SUB_F	8037	677	8038
// OP_STOREP_F	8038	8036	0
// OP_STOREP_F	8038	8035	0
// OP_STOREP_F	8038	8034	0
// OP_LOAD_ENT	28	206	8039
// OP_ADDRESS	8039	437	8040
// OP_ADD_F	31	677	8041
// OP_STOREP_F	8041	8040	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8042
// OP_ADD_F	31	7985	8043
// OP_STOREP_F	8043	8042	0
// OP_DONE	0	0	0
void () ac1_attack = 
{
    local vector v1;
    local vector v2;
    local entity stemp;
    v1 = self.enemy.angles;
    v1_x = 0.000 - v1_x;
    makevectors(v1);
    self.enemy.trigger_field = world;
    if(self.weapon == IT_WEP1)
    {
        if(self.ammo_auto >= 1.000)
        {
            v2 = AC_aim(0.970, -500.000);
            makevectors(v1);
            if(self.ammo_auto & 3.000)
            {
                AC_bullet(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            else
            {
                AC_spike(self.enemy.origin + (v_forward * 10.000), v2, world);
            }
            
            self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
            self.currentammo = self.ammo_shells = self.ammo_auto = self.ammo_auto - 1.000;
            self.enemy.show_hostile = time + 1.000;
        }
        else
        {
            sprint(self, "not enough ammo.\n");
        }
        
        self.attack_finished = time + 0.050;
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            if(self.ammo_rock >= 1.000)
            {
                v2 = AC_aim(0.930, -1000.000);
                makevectors(v1);
                if(self.ammo_rock & 1.000)
                {
                    AC_rocket(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) + (v_right * 10.000), v2, world);
                }
                else
                {
                    AC_rocket(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) - (v_right * 10.000), v2, world);
                }
                
                self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                self.currentammo = self.ammo_nails = self.ammo_rock = self.ammo_rock - 1.000;
                self.enemy.show_hostile = time + 1.000;
            }
            else
            {
                sprint(self, "not enough ammo.\n");
            }
            
            self.attack_finished = time + 0.400;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                if(self.ammo_amsl >= 1.000)
                {
                    v2 = AC_aim(0.930, 1500.000);
                    makevectors(v1);
                    if(self.ammo_amsl & 1.000)
                    {
                        AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) + (v_right * 16.000), v_forward, self.enemy.trigger_field);
                    }
                    else
                    {
                        AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) - (v_right * 16.000), v_forward, self.enemy.trigger_field);
                    }
                    
                    self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                    self.currentammo = self.ammo_rockets = self.ammo_amsl = self.ammo_amsl - 1.000;
                    self.enemy.show_hostile = time + 1.000;
                }
                else
                {
                    sprint(self, "not enough ammo.\n");
                }
                
                self.attack_finished = time + 1.200;
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    if(self.ammo_smsl >= 1.000)
                    {
                        v2 = AC_aim(0.970, 2500.000);
                        makevectors(v1);
                        if(self.ammo_smsl & 1.000)
                        {
                            AC_amraam((self.enemy.origin - (v_forward * 10.000)) + (v_right * 16.000), v_forward, self.enemy.trigger_field);
                        }
                        else
                        {
                            AC_amraam((self.enemy.origin - (v_forward * 10.000)) - (v_right * 16.000), v_forward, self.enemy.trigger_field);
                        }
                        
                        self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                        self.currentammo = self.ammo_cells = self.ammo_smsl = self.ammo_smsl - 1.000;
                        self.enemy.show_hostile = time + 1.000;
                    }
                    else
                    {
                        sprint(self, "not enough ammo.\n");
                    }
                    
                    self.attack_finished = time + 1.200;
                }
                
            }
            
        }
        
    }
    
};

// start_aircraft1
// function begins at statement 10430, parm_start=8045
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	8045	0
// OP_STORE_V	8045	4	0
// OP_STORE_V	7668	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	8047
// OP_STORE_ENT	8047	8046	0
// OP_STORE_V	8045	4	0
// OP_LOAD_V	8046	130	8048
// OP_STORE_V	8048	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	8045	142	8051
// OP_LOAD_V	8046	142	8054
// OP_STOREP_V	8054	8051	0
// OP_ADDRESS	8045	154	8057
// OP_STOREP_S	2097	8057	0
// OP_ADDRESS	8045	138	8058
// OP_STOREP_V	607	8058	0
// OP_ADDRESS	8045	128	8061
// OP_STOREP_F	284	8061	0
// OP_STORE_V	8045	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	8045	129	8062
// OP_STOREP_F	294	8062	0
// OP_ADDRESS	8045	171	8063
// OP_STOREP_FNC	2368	8063	0
// OP_ADDRESS	8045	177	8064
// OP_STOREP_F	986	8064	0
// OP_ADDRESS	8045	210	8065
// OP_LOAD_F	8045	177	8066
// OP_STOREP_F	8066	8065	0
// OP_ADDRESS	8045	188	8067
// OP_STOREP_F	306	8067	0
// OP_ADDRESS	8045	411	8068
// OP_STOREP_FNC	2366	8068	0
// OP_ADDRESS	8045	205	8069
// OP_LOAD_S	28	205	8070
// OP_STOREP_S	8070	8069	0
// OP_ADDRESS	8045	413	8071
// OP_STOREP_F	4412	8071	0
// OP_ADDRESS	8045	240	8072
// OP_STOREP_F	808	8072	0
// OP_ADDRESS	28	206	8073
// OP_STOREP_ENT	8045	8073	0
// OP_ADDRESS	8045	219	8074
// OP_STOREP_ENT	28	8074	0
// OP_ADDRESS	8045	226	8075
// OP_STOREP_ENT	28	8075	0
// OP_ADDRESS	28	238	8076
// OP_STOREP_F	619	8076	0
// OP_ADDRESS	28	408	8077
// OP_STOREP_FNC	7808	8077	0
// OP_ADDRESS	28	407	8078
// OP_STOREP_FNC	7645	8078	0
// OP_ADDRESS	28	409	8079
// OP_STOREP_FNC	7620	8079	0
// OP_ADDRESS	28	183	8080
// OP_ADDRESS	28	245	8081
// OP_STOREP_F	986	8081	0
// OP_STOREP_F	986	8080	0
// OP_ADDRESS	28	184	8082
// OP_ADDRESS	28	246	8083
// OP_MUL_F	827	113	8084
// OP_STOREP_F	8084	8083	0
// OP_STOREP_F	8084	8082	0
// OP_ADDRESS	28	185	8085
// OP_ADDRESS	28	248	8086
// OP_MUL_F	808	113	8087
// OP_STOREP_F	8087	8086	0
// OP_STOREP_F	8087	8085	0
// OP_ADDRESS	28	186	8088
// OP_ADDRESS	28	249	8089
// OP_MUL_F	808	113	8090
// OP_STOREP_F	8090	8089	0
// OP_STOREP_F	8090	8088	0
// OP_CALL0	6345	0	0
// OP_LOAD_ENT	28	412	8091
// OP_ADDRESS	8091	404	8092
// OP_STOREP_F	815	8092	0
// OP_DONE	0	0	0
void () start_aircraft1 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/plane1.mdl");
    e2 = self.goalentity;
    setorigin(e, e2.origin);
    e.angles = e2.angles;
    e.classname = "plane";
    e.velocity = '0.000 0.000 0.000';
    e.movetype = MOVETYPE_FLY;
    setsize(e, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    e.solid = SOLID_SLIDEBOX;
    e.touch = T_ACTouch;
    e.health = 200.000;
    e.max_health = e.health;
    e.takedamage = DAMAGE_AIM;
    e.th_die = AC_Die;
    e.netname = self.netname;
    e.speed = 300.000;
    e.thru = 4.000;
    self.enemy = e;
    e.goalentity = self;
    e.owner = self;
    self.toyview = 0.000;
    self.th_missile = ac1_attack;
    self.th_run = ac1_steer;
    self.th_melee = ac1_currentammo;
    self.ammo_shells = self.ammo_auto = 200.000;
    self.ammo_nails = self.ammo_rock = 10.000 * wepmulti;
    self.ammo_rockets = self.ammo_amsl = 4.000 * wepmulti;
    self.ammo_cells = self.ammo_smsl = 4.000 * wepmulti;
    Check_startlanded();
    self.oldenemy.style = 32.000;
};

