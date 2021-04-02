// ac3_currentammo
// function begins at statement 11112, parm_start=8545
// OP_ADDRESS	28	183	8545
// OP_LOAD_F	28	245	8546
// OP_STOREP_F	8546	8545	0
// OP_ADDRESS	28	184	8547
// OP_LOAD_F	28	248	8548
// OP_STOREP_F	8548	8547	0
// OP_ADDRESS	28	185	8549
// OP_LOAD_F	28	250	8550
// OP_STOREP_F	8550	8549	0
// OP_ADDRESS	28	186	8551
// OP_LOAD_F	28	249	8552
// OP_STOREP_F	8552	8551	0
// OP_LOAD_F	28	179	8553
// OP_EQ_F	8553	321	8554
// OP_IFNOT	8554	4	0
// OP_ADDRESS	28	180	8555
// OP_STOREP_S	7632	8555	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	8556
// OP_EQ_F	8556	322	8557
// OP_IFNOT	8557	4	0
// OP_ADDRESS	28	180	8558
// OP_STOREP_S	7640	8558	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	8559
// OP_EQ_F	8559	323	8560
// OP_IFNOT	8560	4	0
// OP_ADDRESS	28	180	8561
// OP_STOREP_S	8562	8561	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	8563
// OP_EQ_F	8563	324	8564
// OP_IFNOT	8564	3	0
// OP_ADDRESS	28	180	8565
// OP_STOREP_S	8115	8565	0
// OP_DONE	0	0	0
void () ac3_currentammo = 
{
    self.ammo_shells = self.ammo_auto;
    self.ammo_nails = self.ammo_amsl;
    self.ammo_rockets = self.ammo_bomb;
    self.ammo_cells = self.ammo_smsl;
    if(self.weapon == IT_WEP1)
    {
        self.weaponmodel = "progs/v_auto.mdl";
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.weaponmodel = "progs/v_sider.mdl";
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weaponmodel = "progs/v_pave.mdl";
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    self.weaponmodel = "progs/v_maver.mdl";
                }
                
            }
            
        }
        
    }
    
};

// ac3_steer
// function begins at statement 11148, parm_start=8567
// OP_LOAD_ENT	28	206	8582
// OP_STORE_ENT	8582	8567	0
// OP_STORE_V	1228	4	0
// OP_STORE_V	1252	7	0
// OP_STORE_V	986	10	0
// OP_CALL3	6229	0	0
// OP_CALL0	6058	0	0
// OP_LOAD_F	28	177	8583
// OP_LT	8583	1111	8584
// OP_LOAD_S	8567	155	8585
// OP_EQ_S	8585	1802	8586
// OP_AND	8584	8586	8587
// OP_IFNOT	8587	4	0
// OP_STORE_V	8567	4	0
// OP_STORE_V	1805	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	8588
// OP_GE	8588	1111	8589
// OP_LOAD_S	8567	155	8590
// OP_EQ_S	8590	1805	8591
// OP_AND	8589	8591	8592
// OP_IFNOT	8592	4	0
// OP_STORE_V	8567	4	0
// OP_STORE_V	1802	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	8567	177	8593
// OP_LT	8593	677	8594
// OP_IFNOT	8594	11	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	8595
// OP_STORE_F	8595	8581	0
// OP_ADDRESS	28	223	8596
// OP_LOAD_F	28	223	8597
// OP_ADD_F	8597	8581	8598
// OP_STOREP_F	8598	8596	0
// OP_ADDRESS	8567	158	8599
// OP_STOREP_F	808	8599	0
// OP_GOTO	3	0	0
// OP_ADDRESS	8567	158	8600
// OP_STOREP_F	619	8600	0
// OP_LOAD_F	28	197	8601
// OP_NE_F	8601	619	8602
// OP_LOAD_F	8567	255	8603
// OP_LT	8603	31	8604
// OP_AND	8602	8604	8605
// OP_IFNOT	8605	4	0
// OP_ADDRESS	8567	255	8606
// OP_ADD_F	31	972	8607
// OP_STOREP_F	8607	8606	0
// OP_LOAD_F	8567	255	8608
// OP_LT	8608	31	8609
// OP_LOAD_F	28	177	8610
// OP_GE	8610	1111	8611
// OP_AND	8609	8611	8612
// OP_IFNOT	8612	12	0
// OP_ADDRESS	8567	157	8613
// OP_STOREP_F	677	8613	0
// OP_LOAD_ENT	28	464	8614
// OP_LOAD_S	8614	155	8615
// OP_EQ_S	8615	8248	8616
// OP_IFNOT	8616	5	0
// OP_LOAD_ENT	28	464	8617
// OP_STORE_V	8617	4	0
// OP_STORE_V	5219	7	0
// OP_CALL2	498	0	0
// OP_GOTO	17	0	0
// OP_ADDRESS	8567	157	8618
// OP_STOREP_F	619	8618	0
// OP_LOAD_ENT	28	464	8619
// OP_LOAD_S	8619	155	8620
// OP_EQ_S	8620	5219	8621
// OP_IFNOT	8621	5	0
// OP_LOAD_ENT	28	464	8622
// OP_STORE_V	8622	4	0
// OP_STORE_V	8248	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	8623
// OP_LT	8623	1111	8624
// OP_IFNOT	8624	4	0
// OP_ADDRESS	8567	255	8625
// OP_ADD_F	31	677	8626
// OP_STOREP_F	8626	8625	0
// OP_LOAD_V	8567	142	8627
// OP_STORE_V	8627	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	8578	0
// OP_SUB_F	619	8580	8630
// OP_STORE_F	8630	8580	0
// OP_LOAD_F	28	466	8631
// OP_GE	31	8631	8632
// OP_IFNOT	8632	16	0
// OP_ADDRESS	8567	413	8633
// OP_LOAD_F	8567	413	8634
// OP_MUL_F	8580	827	8635
// OP_SUB_F	8634	8635	8636
// OP_STOREP_F	8636	8633	0
// OP_LOAD_F	8567	240	8637
// OP_MUL_F	8637	5009	8638
// OP_STORE_F	8638	8581	0
// OP_STORE_V	8581	4	0
// OP_STORE_V	808	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	28	466	8639
// OP_ADD_F	31	655	8640
// OP_STOREP_F	8640	8639	0
// OP_LOAD_F	8567	413	8641
// OP_LT	8641	619	8642
// OP_IFNOT	8642	3	0
// OP_ADDRESS	8567	413	8643
// OP_STOREP_F	619	8643	0
// OP_ADDRESS	28	213	8644
// OP_LOAD_F	8567	413	8645
// OP_DIV_F	8645	7730	8646
// OP_STOREP_F	8646	8644	0
// OP_ADDRESS	8567	138	8647
// OP_LOAD_F	8567	413	8650
// OP_MUL_VF	8578	8650	8651
// OP_STOREP_V	8651	8647	0
// OP_LOAD_F	8567	241	8654
// OP_IFNOT	8654	3	0
// OP_ADDRESS	8567	141	8655
// OP_STOREP_F	619	8655	0
// OP_LOAD_F	8567	133	8656
// OP_GT	8656	93	8657
// OP_AND	93	8657	8658
// OP_IFNOT	8658	13	0
// OP_LOAD_F	8567	141	8659
// OP_GT	8659	619	8660
// OP_IFNOT	8660	10	0
// OP_ADDRESS	8567	133	8661
// OP_STOREP_F	93	8661	0
// OP_ADDRESS	8567	141	8662
// OP_STOREP_F	619	8662	0
// OP_LOAD_F	8567	143	8663
// OP_GT	8663	619	8664
// OP_IFNOT	8664	3	0
// OP_ADDRESS	8567	143	8665
// OP_STOREP_F	619	8665	0
// OP_STORE_V	8567	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	8567	208	8666
// OP_LOAD_F	28	208	8667
// OP_NE_F	8666	8667	8668
// OP_IFNOT	8668	4	0
// OP_ADDRESS	8567	208	8669
// OP_LOAD_F	28	208	8670
// OP_STOREP_F	8670	8669	0
// OP_LOAD_ENT	28	412	8671
// OP_ADDRESS	8671	138	8672
// OP_LOAD_V	8567	138	8675
// OP_STOREP_V	8675	8672	0
// OP_LOAD_F	28	179	8678
// OP_EQ_F	8678	321	8679
// OP_IFNOT	8679	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8572	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	8680
// OP_EQ_F	8680	322	8681
// OP_IFNOT	8681	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8572	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	8682
// OP_EQ_F	8682	323	8683
// OP_IFNOT	8683	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8572	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	8684
// OP_EQ_F	8684	324	8685
// OP_IFNOT	8685	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8572	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	6997	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8572	0
// OP_LOAD_ENT	28	464	8686
// OP_NOT_ENT	8686	0	8687
// OP_IFNOT	8687	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8572	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	8572	0
// OP_LOAD_V	8567	130	8688
// OP_STORE_V	8688	4	0
// OP_LOAD_V	8567	130	8691
// OP_MUL_VF	8572	986	8694
// OP_ADD_V	8691	8694	8697
// OP_STORE_V	8697	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	8567	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	8700
// OP_LOAD_ENT	8700	464	8701
// OP_EQ_E	8701	30	8702
// OP_IFNOT	8702	38	0
// OP_LOAD_F	28	179	8703
// OP_EQ_F	8703	323	8704
// OP_IFNOT	8704	25	0
// OP_LOAD_V	28	200	8705
// OP_STORE_V	8705	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	412	8708
// OP_LOAD_V	8708	130	8709
// OP_ADD_V	8709	582	8712
// OP_STORE_V	8712	4	0
// OP_LOAD_ENT	28	412	8715
// OP_LOAD_V	8715	130	8716
// OP_ADD_V	8716	582	8719
// OP_MUL_VF	59	986	8722
// OP_ADD_V	8719	8722	8725
// OP_STORE_V	8725	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	8567	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	412	8728
// OP_LOAD_V	8728	130	8729
// OP_ADD_V	8729	582	8732
// OP_MUL_VF	59	70	8735
// OP_MUL_VF	8735	986	8738
// OP_ADD_V	8732	8738	8741
// OP_STORE_V	8741	8575	0
// OP_GOTO	7	0	0
// OP_LOAD_V	8567	130	8744
// OP_MUL_F	70	986	8747
// OP_SUB_F	8747	810	8748
// OP_MUL_VF	8572	8748	8749
// OP_ADD_V	8744	8749	8752
// OP_STORE_V	8752	8575	0
// OP_LOAD_ENT	28	464	8755
// OP_ADDRESS	8755	156	8756
// OP_STOREP_F	619	8756	0
// OP_GOTO	9	0	0
// OP_LOAD_F	8567	157	8757
// OP_IFNOT	8757	5	0
// OP_LOAD_ENT	28	464	8758
// OP_ADDRESS	8758	156	8759
// OP_STOREP_F	619	8759	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	8575	0
// OP_LOAD_ENT	28	464	8760
// OP_STORE_V	8760	4	0
// OP_LOAD_ENT	28	206	8761
// OP_LOAD_V	8761	138	8762
// OP_MUL_VF	8762	32	8765
// OP_ADD_V	8575	8765	8768
// OP_STORE_V	8768	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () ac3_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    stemp = self.enemy;
    Steer_plane(70.000, 80.000, 200.000);
    jet_sound();
    
    if((self.health < 20.000) && (stemp.model == "progs/plane3.mdl"))
    {
        setmodel(stemp, "progs/plane3b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/plane3b.mdl"))
    {
        setmodel(stemp, "progs/plane3.mdl");
    }
    
    if(stemp.health < 1.000)
    {
        tmp = random() * 50.000;
        self.dmg_take = self.dmg_take + tmp;
        stemp.effects = 4.000;
    }
    else
    {
        stemp.effects = 0.000;
    }
    
    
    if((self.button2 != 0.000) && (stemp.unstealth_finished < time))
    {
        stemp.unstealth_finished = time + 0.500;
    }
    
    if((stemp.unstealth_finished < time) && (self.health >= 20.000))
    {
        stemp.skin = 1.000;
        
        if(self.trigger_field.model == "progs/s_target.spr")
        {
            setmodel(self.trigger_field, "progs/null.spr");
        }
        
    }
    else
    {
        stemp.skin = 0.000;
        
        if(self.trigger_field.model == "progs/null.spr")
        {
            setmodel(self.trigger_field, "progs/s_target.spr");
        }
        
        
        if(self.health < 20.000)
        {
            stemp.unstealth_finished = time + 1.000;
        }
        
    }
    
    makevectors(stemp.angles);
    v3 = v_forward;
    v3_z = 0.000 - 0.000;
    
    if(time >= self.pausetime)
    {
        stemp.speed = stemp.speed - (0.000 * 10.000);
        tmp = stemp.thru * 75.000;
        setplanespeed(tmp, 4.000, 4.000);
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
            v1 = AC_aim2(0.930, 1500.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim2(0.930, 2000.000);
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    v1 = AC_aim2(0.930, 2000.000);
                }
                else
                {
                    v1 = AC_aim(1.000, -10.000);
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
        if(self.weapon == IT_WEP3)
        {
            makevectors(self.v_angle);
            traceline(self.oldenemy.origin + '0.000 0.000 1.000', (self.oldenemy.origin + '0.000 0.000 1.000') + (v_forward * 200.000), FALSE, stemp);
            v2 = (self.oldenemy.origin + '0.000 0.000 1.000') + ((v_forward * trace_fraction) * 200.000);
        }
        else
        {
            v2 = stemp.origin + (v1 * ((trace_fraction * 200.000) - 8.000));
        }
        
        self.trigger_field.frame = 0.000;
    }
    else
    {
        if(stemp.skin)
        {
            self.trigger_field.frame = 0.000;
        }
        else
        {
            v2 = place_targetbox();
        }
        
    }
    
    setorigin(self.trigger_field, v2 + (self.enemy.velocity * frametime));
};

// ac3_attack
// function begins at statement 11410, parm_start=8772
// OP_LOAD_ENT	28	206	8779
// OP_LOAD_F	8779	255	8780
// OP_LT	8780	31	8781
// OP_IFNOT	8781	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	8782
// OP_LOAD_V	8782	142	8783
// OP_STORE_V	8783	8772	0
// OP_SUB_F	619	8772	8786
// OP_STORE_F	8786	8772	0
// OP_STORE_V	8772	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	8787
// OP_ADDRESS	8787	464	8788
// OP_STOREP_ENT	30	8788	0
// OP_LOAD_F	28	179	8789
// OP_EQ_F	8789	321	8790
// OP_IFNOT	8790	60	0
// OP_LOAD_F	28	245	8791
// OP_GE	8791	677	8792
// OP_IFNOT	8792	50	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	7766	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	8775	0
// OP_STORE_V	8772	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	245	8793
// OP_BITAND	8793	788	8794
// OP_IFNOT	8794	10	0
// OP_LOAD_ENT	28	206	8795
// OP_LOAD_V	8795	130	8796
// OP_MUL_VF	59	827	8799
// OP_ADD_V	8796	8799	8802
// OP_STORE_V	8802	4	0
// OP_STORE_V	8775	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	206	8805
// OP_LOAD_V	8805	130	8806
// OP_MUL_VF	59	827	8809
// OP_ADD_V	8806	8809	8812
// OP_STORE_V	8812	4	0
// OP_STORE_V	8775	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_ENT	28	206	8815
// OP_ADDRESS	8815	158	8816
// OP_LOAD_ENT	28	206	8817
// OP_LOAD_F	8817	158	8818
// OP_BITOR	8818	383	8819
// OP_STOREP_F	8819	8816	0
// OP_ADDRESS	28	182	8820
// OP_ADDRESS	28	183	8821
// OP_ADDRESS	28	245	8822
// OP_LOAD_F	28	245	8823
// OP_SUB_F	8823	677	8824
// OP_STOREP_F	8824	8822	0
// OP_STOREP_F	8824	8821	0
// OP_STOREP_F	8824	8820	0
// OP_LOAD_ENT	28	206	8825
// OP_ADDRESS	8825	437	8826
// OP_ADD_F	31	677	8827
// OP_STOREP_F	8827	8826	0
// OP_LOAD_ENT	28	206	8828
// OP_ADDRESS	8828	255	8829
// OP_ADD_F	31	1349	8830
// OP_STOREP_F	8830	8829	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8831
// OP_ADD_F	31	655	8832
// OP_STOREP_F	8832	8831	0
// OP_GOTO	170	0	0
// OP_LOAD_F	28	179	8833
// OP_EQ_F	8833	322	8834
// OP_IFNOT	8834	68	0
// OP_LOAD_F	28	248	8835
// OP_GE	8835	677	8836
// OP_IFNOT	8836	58	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8775	0
// OP_STORE_V	8772	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	185	8837
// OP_BITAND	8837	677	8838
// OP_IFNOT	8838	14	0
// OP_LOAD_ENT	28	206	8839
// OP_LOAD_V	8839	130	8840
// OP_MUL_VF	59	827	8843
// OP_SUB_V	8840	8843	8846
// OP_MUL_VF	65	812	8849
// OP_ADD_V	8846	8849	8852
// OP_STORE_V	8852	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8855
// OP_LOAD_ENT	8855	464	8856
// OP_STORE_V	8856	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	8857
// OP_LOAD_V	8857	130	8858
// OP_MUL_VF	59	827	8861
// OP_SUB_V	8858	8861	8864
// OP_MUL_VF	65	812	8867
// OP_SUB_V	8864	8867	8870
// OP_STORE_V	8870	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8873
// OP_LOAD_ENT	8873	464	8874
// OP_STORE_V	8874	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	8875
// OP_ADDRESS	8875	158	8876
// OP_LOAD_ENT	28	206	8877
// OP_LOAD_F	8877	158	8878
// OP_BITOR	8878	383	8879
// OP_STOREP_F	8879	8876	0
// OP_ADDRESS	28	182	8880
// OP_ADDRESS	28	184	8881
// OP_ADDRESS	28	248	8882
// OP_LOAD_F	28	248	8883
// OP_SUB_F	8883	677	8884
// OP_STOREP_F	8884	8882	0
// OP_STOREP_F	8884	8881	0
// OP_STOREP_F	8884	8880	0
// OP_LOAD_ENT	28	206	8885
// OP_ADDRESS	8885	437	8886
// OP_ADD_F	31	677	8887
// OP_STOREP_F	8887	8886	0
// OP_LOAD_ENT	28	206	8888
// OP_ADDRESS	8888	255	8889
// OP_ADD_F	31	7985	8890
// OP_STOREP_F	8890	8889	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8891
// OP_ADD_F	31	7985	8892
// OP_STOREP_F	8892	8891	0
// OP_GOTO	100	0	0
// OP_LOAD_F	28	179	8893
// OP_EQ_F	8893	323	8894
// OP_IFNOT	8894	44	0
// OP_LOAD_F	28	250	8895
// OP_GT	8895	619	8896
// OP_IFNOT	8896	34	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8775	0
// OP_STORE_V	8772	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	8897
// OP_LOAD_V	8897	130	8898
// OP_MUL_VF	62	827	8901
// OP_SUB_V	8898	8901	8904
// OP_MUL_VF	59	827	8907
// OP_SUB_V	8904	8907	8910
// OP_STORE_V	8910	4	0
// OP_LOAD_ENT	28	206	8913
// OP_LOAD_V	8913	138	8914
// OP_STORE_V	8914	7	0
// OP_LOAD_ENT	28	206	8917
// OP_LOAD_ENT	8917	464	8918
// OP_STORE_V	8918	10	0
// OP_CALL3	4430	0	0
// OP_ADDRESS	28	182	8919
// OP_ADDRESS	28	185	8920
// OP_ADDRESS	28	250	8921
// OP_LOAD_F	28	250	8922
// OP_SUB_F	8922	677	8923
// OP_STOREP_F	8923	8921	0
// OP_STOREP_F	8923	8920	0
// OP_STOREP_F	8923	8919	0
// OP_LOAD_ENT	28	206	8924
// OP_ADDRESS	8924	255	8925
// OP_ADD_F	31	677	8926
// OP_STOREP_F	8926	8925	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8927
// OP_ADD_F	31	806	8928
// OP_STOREP_F	8928	8927	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	179	8929
// OP_EQ_F	8929	324	8930
// OP_IFNOT	8930	51	0
// OP_LOAD_F	28	249	8931
// OP_GT	8931	619	8932
// OP_IFNOT	8932	42	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	8233	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	8775	0
// OP_STORE_V	8772	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	8933
// OP_LOAD_V	8933	130	8934
// OP_MUL_VF	62	827	8937
// OP_SUB_V	8934	8937	8940
// OP_MUL_VF	59	827	8943
// OP_SUB_V	8940	8943	8946
// OP_STORE_V	8946	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	8949
// OP_LOAD_ENT	8949	464	8950
// OP_STORE_V	8950	10	0
// OP_CALL3	4972	0	0
// OP_LOAD_ENT	28	206	8951
// OP_ADDRESS	8951	158	8952
// OP_LOAD_ENT	28	206	8953
// OP_LOAD_F	8953	158	8954
// OP_BITOR	8954	383	8955
// OP_STOREP_F	8955	8952	0
// OP_ADDRESS	28	182	8956
// OP_ADDRESS	28	186	8957
// OP_ADDRESS	28	249	8958
// OP_LOAD_F	28	249	8959
// OP_SUB_F	8959	677	8960
// OP_STOREP_F	8960	8958	0
// OP_STOREP_F	8960	8957	0
// OP_STOREP_F	8960	8956	0
// OP_LOAD_ENT	28	206	8961
// OP_ADDRESS	8961	437	8962
// OP_ADD_F	31	677	8963
// OP_STOREP_F	8963	8962	0
// OP_LOAD_ENT	28	206	8964
// OP_ADDRESS	8964	255	8965
// OP_ADD_F	31	806	8966
// OP_STOREP_F	8966	8965	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	8967
// OP_ADD_F	31	806	8968
// OP_STOREP_F	8968	8967	0
// OP_DONE	0	0	0
void () ac3_attack = 
{
    local vector v1;
    local vector v2;
    local entity stemp;
    
    if(self.enemy.unstealth_finished < time)
    {
        return;
    }
    
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
            self.enemy.unstealth_finished = time + 0.200;
        }
        else
        {
            sprint(self, "not enough ammo.\n");
        }
        
        self.attack_finished = time + 0.100;
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            if(self.ammo_amsl >= 1.000)
            {
                v2 = AC_aim2(0.930, 1500.000);
                makevectors(v1);
                if(self.ammo_rockets & 1.000)
                {
                    AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) + (v_right * 16.000), v_forward, self.enemy.trigger_field);
                }
                else
                {
                    AC_sidewinder((self.enemy.origin - (v_forward * 10.000)) - (v_right * 16.000), v_forward, self.enemy.trigger_field);
                }
                
                self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                self.currentammo = self.ammo_nails = self.ammo_amsl = self.ammo_amsl - 1.000;
                self.enemy.show_hostile = time + 1.000;
                self.enemy.unstealth_finished = time + 1.200;
            }
            else
            {
                sprint(self, "not enough ammo.\n");
            }
            
            self.attack_finished = time + 1.200;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                if(self.ammo_bomb > 0.000)
                {
                    v2 = AC_aim2(0.930, 2000.000);
                    makevectors(v1);
                    AC_paveway((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000), self.enemy.velocity, self.enemy.trigger_field);
                    self.currentammo = self.ammo_rockets = self.ammo_bomb = self.ammo_bomb - 1.000;
                    self.enemy.unstealth_finished = time + 1.000;
                }
                else
                {
                    sprint(self, "not enough ammo.\n");
                }
                
                self.attack_finished = time + 2.000;
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    if(self.ammo_smsl > 0.000)
                    {
                        v2 = AC_aim2(0.930, 2000.000);
                        makevectors(v1);
                        AC_maverick((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000), v_forward, self.enemy.trigger_field);
                        self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                        self.currentammo = self.ammo_cells = self.ammo_smsl = self.ammo_smsl - 1.000;
                        self.enemy.show_hostile = time + 1.000;
                        self.enemy.unstealth_finished = time + 2.000;
                    }
                    else
                    {
                        sprint(self, "not enough ammo.\n");
                    }
                    
                    self.attack_finished = time + 2.000;
                }
                
            }
            
        }
        
    }
    
};

// start_aircraft3
// function begins at statement 11657, parm_start=8970
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	8970	0
// OP_STORE_V	8970	4	0
// OP_STORE_V	1802	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	8972
// OP_STORE_ENT	8972	8971	0
// OP_STORE_V	8970	4	0
// OP_LOAD_V	8971	130	8973
// OP_STORE_V	8973	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	8970	142	8976
// OP_LOAD_V	8971	142	8979
// OP_STOREP_V	8979	8976	0
// OP_ADDRESS	8970	154	8982
// OP_STOREP_S	2097	8982	0
// OP_ADDRESS	8970	138	8983
// OP_STOREP_V	607	8983	0
// OP_ADDRESS	8970	128	8986
// OP_STOREP_F	284	8986	0
// OP_STORE_V	8970	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	8970	129	8987
// OP_STOREP_F	294	8987	0
// OP_ADDRESS	8970	171	8988
// OP_STOREP_FNC	2368	8988	0
// OP_ADDRESS	8970	177	8989
// OP_STOREP_F	986	8989	0
// OP_ADDRESS	8970	210	8990
// OP_LOAD_F	8970	177	8991
// OP_STOREP_F	8991	8990	0
// OP_ADDRESS	8970	188	8992
// OP_STOREP_F	306	8992	0
// OP_ADDRESS	8970	411	8993
// OP_STOREP_FNC	2366	8993	0
// OP_ADDRESS	8970	205	8994
// OP_LOAD_S	28	205	8995
// OP_STOREP_S	8995	8994	0
// OP_ADDRESS	8970	413	8996
// OP_STOREP_F	4412	8996	0
// OP_ADDRESS	8970	240	8997
// OP_STOREP_F	808	8997	0
// OP_ADDRESS	28	206	8998
// OP_STOREP_ENT	8970	8998	0
// OP_ADDRESS	8970	219	8999
// OP_STOREP_ENT	28	8999	0
// OP_ADDRESS	8970	226	9000
// OP_STOREP_ENT	28	9000	0
// OP_ADDRESS	28	238	9001
// OP_STOREP_F	619	9001	0
// OP_ADDRESS	28	408	9002
// OP_STOREP_FNC	8771	9002	0
// OP_ADDRESS	28	407	9003
// OP_STOREP_FNC	8566	9003	0
// OP_ADDRESS	28	409	9004
// OP_STOREP_FNC	8544	9004	0
// OP_ADDRESS	28	183	9005
// OP_ADDRESS	28	245	9006
// OP_STOREP_F	2618	9006	0
// OP_STOREP_F	2618	9005	0
// OP_ADDRESS	28	184	9007
// OP_ADDRESS	28	248	9008
// OP_MUL_F	808	113	9009
// OP_STOREP_F	9009	9008	0
// OP_STOREP_F	9009	9007	0
// OP_ADDRESS	28	185	9010
// OP_ADDRESS	28	250	9011
// OP_MUL_F	808	113	9012
// OP_STOREP_F	9012	9011	0
// OP_STOREP_F	9012	9010	0
// OP_ADDRESS	28	186	9013
// OP_ADDRESS	28	249	9014
// OP_MUL_F	808	113	9015
// OP_STOREP_F	9015	9014	0
// OP_STOREP_F	9015	9013	0
// OP_CALL0	6345	0	0
// OP_LOAD_ENT	28	412	9016
// OP_ADDRESS	9016	404	9017
// OP_STOREP_F	815	9017	0
// OP_DONE	0	0	0
void () start_aircraft3 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/plane3.mdl");
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
    self.th_missile = ac3_attack;
    self.th_run = ac3_steer;
    self.th_melee = ac3_currentammo;
    self.ammo_auto = 100.000;
    self.ammo_shells = 100.000;
    self.ammo_nails = self.ammo_amsl = 4.000 * wepmulti;
    self.ammo_rockets = self.ammo_bomb = 4.000 * wepmulti;
    self.ammo_cells = self.ammo_smsl = 4.000 * wepmulti;
    Check_startlanded();
    self.oldenemy.style = 32.000;
};

