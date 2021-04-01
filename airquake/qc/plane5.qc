// ac5_currentammo
// function begins at statement 12400, parm_start=9559
// OP_ADDRESS	28	183	9559
// OP_LOAD_F	28	245	9560
// OP_STOREP_F	9560	9559	0
// OP_ADDRESS	28	184	9561
// OP_LOAD_F	28	251	9562
// OP_STOREP_F	9562	9561	0
// OP_ADDRESS	28	185	9563
// OP_LOAD_F	28	246	9564
// OP_STOREP_F	9564	9563	0
// OP_ADDRESS	28	186	9565
// OP_LOAD_F	28	248	9566
// OP_STOREP_F	9566	9565	0
// OP_LOAD_F	28	179	9567
// OP_EQ_F	9567	321	9568
// OP_IFNOT	9568	4	0
// OP_ADDRESS	28	180	9569
// OP_STOREP_S	7632	9569	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	9570
// OP_EQ_F	9570	322	9571
// OP_IFNOT	9571	4	0
// OP_ADDRESS	28	180	9572
// OP_STOREP_S	9573	9572	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	9574
// OP_EQ_F	9574	323	9575
// OP_IFNOT	9575	4	0
// OP_ADDRESS	28	180	9576
// OP_STOREP_S	7636	9576	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	9577
// OP_EQ_F	9577	324	9578
// OP_IFNOT	9578	3	0
// OP_ADDRESS	28	180	9579
// OP_STOREP_S	7640	9579	0
// OP_DONE	0	0	0
void () ac5_currentammo = 
{
    self.ammo_shells = self.ammo_auto;
    self.ammo_nails = self.ammo_cell;
    self.ammo_rockets = self.ammo_rock;
    self.ammo_cells = self.ammo_amsl;
    if(self.weapon == IT_WEP1)
    {
        self.weaponmodel = "progs/v_auto.mdl";
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.weaponmodel = "progs/v_plas.mdl";
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weaponmodel = "progs/v_rock.mdl";
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    self.weaponmodel = "progs/v_sider.mdl";
                }
                
            }
            
        }
        
    }
    
};

// ac5_steer
// function begins at statement 12436, parm_start=9581
// OP_LOAD_ENT	28	206	9596
// OP_STORE_ENT	9596	9581	0
// OP_STORE_V	3007	4	0
// OP_STORE_V	3007	7	0
// OP_STORE_V	3338	10	0
// OP_CALL3	6229	0	0
// OP_CALL0	6058	0	0
// OP_LOAD_F	28	177	9597
// OP_LT	9597	1111	9598
// OP_LOAD_S	9581	155	9599
// OP_EQ_S	9599	9600	9601
// OP_AND	9598	9601	9602
// OP_IFNOT	9602	4	0
// OP_STORE_V	9581	4	0
// OP_STORE_V	9603	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	177	9604
// OP_GE	9604	1111	9605
// OP_LOAD_S	9581	155	9606
// OP_EQ_S	9606	9603	9607
// OP_AND	9605	9607	9608
// OP_IFNOT	9608	4	0
// OP_STORE_V	9581	4	0
// OP_STORE_V	9600	7	0
// OP_CALL2	498	0	0
// OP_LOAD_V	9581	142	9609
// OP_STORE_V	9609	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	9592	0
// OP_SUB_F	619	9594	9612
// OP_STORE_F	9612	9594	0
// OP_LOAD_F	28	466	9613
// OP_GE	31	9613	9614
// OP_IFNOT	9614	6	0
// OP_ADDRESS	9581	413	9615
// OP_LOAD_F	9581	413	9616
// OP_MUL_F	9594	827	9617
// OP_SUB_F	9616	9617	9618
// OP_STOREP_F	9618	9615	0
// OP_LOAD_F	9581	177	9619
// OP_GT	9619	619	9620
// OP_IFNOT	9620	40	0
// OP_LOAD_F	28	197	9621
// OP_IFNOT	9621	21	0
// OP_LOAD_F	9581	241	9622
// OP_NOT_F	9622	0	9623
// OP_IFNOT	9623	3	0
// OP_ADDRESS	9581	240	9624
// OP_STOREP_F	808	9624	0
// OP_LOAD_F	28	466	9625
// OP_GE	31	9625	9626
// OP_IFNOT	9626	5	0
// OP_STORE_V	1620	4	0
// OP_STORE_V	808	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	9581	157	9627
// OP_STOREP_F	677	9627	0
// OP_BITAND	112	808	9628
// OP_NOT_F	9628	0	9629
// OP_IFNOT	9629	3	0
// OP_ADDRESS	9581	158	9630
// OP_STOREP_F	808	9630	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	466	9631
// OP_GE	31	9631	9632
// OP_IFNOT	9632	8	0
// OP_LOAD_F	9581	240	9633
// OP_MUL_F	9633	5009	9634
// OP_STORE_F	9634	9595	0
// OP_STORE_V	9595	4	0
// OP_STORE_V	788	7	0
// OP_STORE_V	808	10	0
// OP_CALL3	6378	0	0
// OP_ADDRESS	9581	158	9635
// OP_STOREP_F	619	9635	0
// OP_LOAD_F	9581	157	9636
// OP_EQ_F	9636	677	9637
// OP_IFNOT	9637	3	0
// OP_ADDRESS	9581	157	9638
// OP_STOREP_F	619	9638	0
// OP_LOAD_F	9581	177	9639
// OP_LT	9639	677	9640
// OP_IFNOT	9640	12	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	856	9641
// OP_STORE_F	9641	9595	0
// OP_ADDRESS	28	223	9642
// OP_LOAD_F	28	223	9643
// OP_ADD_F	9643	9595	9644
// OP_STOREP_F	9644	9642	0
// OP_ADDRESS	9581	157	9645
// OP_STOREP_F	619	9645	0
// OP_ADDRESS	9581	158	9646
// OP_STOREP_F	808	9646	0
// OP_LOAD_F	28	466	9647
// OP_GE	31	9647	9648
// OP_IFNOT	9648	4	0
// OP_ADDRESS	28	466	9649
// OP_ADD_F	31	655	9650
// OP_STOREP_F	9650	9649	0
// OP_LOAD_F	9581	413	9651
// OP_LT	9651	619	9652
// OP_IFNOT	9652	3	0
// OP_ADDRESS	9581	413	9653
// OP_STOREP_F	619	9653	0
// OP_ADDRESS	28	213	9654
// OP_LOAD_F	9581	413	9655
// OP_DIV_F	9655	7730	9656
// OP_STOREP_F	9656	9654	0
// OP_ADDRESS	9581	138	9657
// OP_LOAD_F	9581	413	9660
// OP_MUL_VF	9592	9660	9661
// OP_STOREP_V	9661	9657	0
// OP_LOAD_F	9581	241	9664
// OP_IFNOT	9664	3	0
// OP_ADDRESS	9581	141	9665
// OP_STOREP_F	619	9665	0
// OP_LOAD_F	9581	133	9666
// OP_GT	9666	93	9667
// OP_AND	93	9667	9668
// OP_IFNOT	9668	13	0
// OP_LOAD_F	9581	141	9669
// OP_GT	9669	619	9670
// OP_IFNOT	9670	10	0
// OP_ADDRESS	9581	133	9671
// OP_STOREP_F	93	9671	0
// OP_ADDRESS	9581	141	9672
// OP_STOREP_F	619	9672	0
// OP_LOAD_F	9581	143	9673
// OP_GT	9673	619	9674
// OP_IFNOT	9674	3	0
// OP_ADDRESS	9581	143	9675
// OP_STOREP_F	619	9675	0
// OP_STORE_V	9581	4	0
// OP_CALL1	5239	0	0
// OP_LOAD_F	9581	208	9676
// OP_LOAD_F	28	208	9677
// OP_NE_F	9676	9677	9678
// OP_IFNOT	9678	4	0
// OP_ADDRESS	9581	208	9679
// OP_LOAD_F	28	208	9680
// OP_STOREP_F	9680	9679	0
// OP_LOAD_ENT	28	412	9681
// OP_ADDRESS	9681	138	9682
// OP_LOAD_V	9581	138	9685
// OP_STOREP_V	9685	9682	0
// OP_LOAD_F	28	179	9688
// OP_EQ_F	9688	321	9689
// OP_IFNOT	9689	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	9690	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9586	0
// OP_GOTO	29	0	0
// OP_LOAD_F	28	179	9691
// OP_EQ_F	9691	322	9692
// OP_IFNOT	9692	6	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	9690	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9586	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	179	9693
// OP_EQ_F	9693	323	9694
// OP_IFNOT	9694	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	1622	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9586	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	179	9695
// OP_EQ_F	9695	324	9696
// OP_IFNOT	9696	6	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	9586	0
// OP_GOTO	5	0	0
// OP_STORE_V	677	4	0
// OP_STORE_V	7776	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9586	0
// OP_LOAD_ENT	28	464	9697
// OP_NOT_ENT	9697	0	9698
// OP_IFNOT	9698	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	9586	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	9586	0
// OP_LOAD_V	9581	130	9699
// OP_STORE_V	9699	4	0
// OP_LOAD_V	9581	130	9702
// OP_MUL_VF	9586	986	9705
// OP_ADD_V	9702	9705	9708
// OP_STORE_V	9708	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	9581	13	0
// OP_CALL4	510	0	0
// OP_LOAD_ENT	28	206	9711
// OP_LOAD_ENT	9711	464	9712
// OP_EQ_E	9712	30	9713
// OP_IFNOT	9713	11	0
// OP_LOAD_V	9581	130	9714
// OP_MUL_F	70	986	9717
// OP_SUB_F	9717	810	9718
// OP_MUL_VF	9586	9718	9719
// OP_ADD_V	9714	9719	9722
// OP_STORE_V	9722	9589	0
// OP_LOAD_ENT	28	464	9725
// OP_ADDRESS	9725	156	9726
// OP_STOREP_F	619	9726	0
// OP_GOTO	3	0	0
// OP_CALL0	945	0	0
// OP_STORE_V	1	9589	0
// OP_LOAD_ENT	28	464	9727
// OP_STORE_V	9727	4	0
// OP_STORE_V	9589	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () ac5_steer = 
{
    local entity stemp;
    local entity stemp2;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float tmp;
    stemp = self.enemy;
    Steer_plane(105.000, 105.000, 150.000);
    jet_sound();
    
    if((self.health < 20.000) && (stemp.model == "progs/plane5.mdl"))
    {
        setmodel(stemp, "progs/plane5b.mdl");
    }
    
    
    if((self.health >= 20.000) && (stemp.model == "progs/plane5b.mdl"))
    {
        setmodel(stemp, "progs/plane5.mdl");
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
            
            stemp.skin = 1.000;
            
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
            
            if(stemp.skin == 1.000)
            {
                stemp.skin = 0.000;
            }
            
        }
        
    }
    
    
    if(stemp.health < 1.000)
    {
        tmp = random() * 50.000;
        self.dmg_take = self.dmg_take + tmp;
        stemp.skin = 0.000;
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
        v1 = AC_aim(0.970, -800.000);
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            v1 = AC_aim(0.970, -800.000);
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                v1 = AC_aim(0.930, 1000.000);
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    v1 = AC_aim2(0.930, 1500.000);
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

// ac5_attack
// function begins at statement 12656, parm_start=9729
// OP_LOAD_ENT	28	206	9736
// OP_LOAD_V	9736	142	9737
// OP_STORE_V	9737	9729	0
// OP_SUB_F	619	9729	9740
// OP_STORE_F	9740	9729	0
// OP_STORE_V	9729	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	9741
// OP_ADDRESS	9741	464	9742
// OP_STOREP_ENT	30	9742	0
// OP_LOAD_F	28	179	9743
// OP_EQ_F	9743	321	9744
// OP_IFNOT	9744	56	0
// OP_LOAD_F	28	245	9745
// OP_GE	9745	677	9746
// OP_IFNOT	9746	46	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	9690	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9732	0
// OP_STORE_V	9729	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	245	9747
// OP_BITAND	9747	788	9748
// OP_IFNOT	9748	10	0
// OP_LOAD_ENT	28	206	9749
// OP_LOAD_V	9749	130	9750
// OP_MUL_VF	59	827	9753
// OP_ADD_V	9750	9753	9756
// OP_STORE_V	9756	4	0
// OP_STORE_V	9732	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	206	9759
// OP_LOAD_V	9759	130	9760
// OP_MUL_VF	59	827	9763
// OP_ADD_V	9760	9763	9766
// OP_STORE_V	9766	4	0
// OP_STORE_V	9732	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_ENT	28	206	9769
// OP_ADDRESS	9769	158	9770
// OP_LOAD_ENT	28	206	9771
// OP_LOAD_F	9771	158	9772
// OP_BITOR	9772	383	9773
// OP_STOREP_F	9773	9770	0
// OP_ADDRESS	28	182	9774
// OP_ADDRESS	28	183	9775
// OP_ADDRESS	28	245	9776
// OP_LOAD_F	28	245	9777
// OP_SUB_F	9777	677	9778
// OP_STOREP_F	9778	9776	0
// OP_STOREP_F	9778	9775	0
// OP_STOREP_F	9778	9774	0
// OP_LOAD_ENT	28	206	9779
// OP_ADDRESS	9779	437	9780
// OP_ADD_F	31	677	9781
// OP_STOREP_F	9781	9780	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9782
// OP_ADD_F	31	1353	9783
// OP_STOREP_F	9783	9782	0
// OP_GOTO	190	0	0
// OP_LOAD_F	28	179	9784
// OP_EQ_F	9784	322	9785
// OP_IFNOT	9785	52	0
// OP_LOAD_F	28	251	9786
// OP_GE	9786	806	9787
// OP_IFNOT	9787	42	0
// OP_STORE_V	7765	4	0
// OP_STORE_V	9690	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9732	0
// OP_STORE_V	9729	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	9788
// OP_LOAD_V	9788	130	9789
// OP_MUL_VF	65	827	9792
// OP_ADD_V	9789	9792	9795
// OP_STORE_V	9795	4	0
// OP_STORE_V	9732	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	5084	0	0
// OP_LOAD_ENT	28	206	9798
// OP_LOAD_V	9798	130	9799
// OP_MUL_VF	65	827	9802
// OP_SUB_V	9799	9802	9805
// OP_STORE_V	9805	4	0
// OP_STORE_V	9732	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	5084	0	0
// OP_LOAD_ENT	28	206	9808
// OP_ADDRESS	9808	158	9809
// OP_LOAD_ENT	28	206	9810
// OP_LOAD_F	9810	158	9811
// OP_BITOR	9811	383	9812
// OP_STOREP_F	9812	9809	0
// OP_ADDRESS	28	182	9813
// OP_ADDRESS	28	184	9814
// OP_ADDRESS	28	251	9815
// OP_LOAD_F	28	251	9816
// OP_SUB_F	9816	806	9817
// OP_STOREP_F	9817	9815	0
// OP_STOREP_F	9817	9814	0
// OP_STOREP_F	9817	9813	0
// OP_LOAD_ENT	28	206	9818
// OP_ADDRESS	9818	437	9819
// OP_ADD_F	31	677	9820
// OP_STOREP_F	9820	9819	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9821
// OP_ADD_F	31	1687	9822
// OP_STOREP_F	9822	9821	0
// OP_GOTO	136	0	0
// OP_LOAD_F	28	179	9823
// OP_EQ_F	9823	323	9824
// OP_IFNOT	9824	68	0
// OP_LOAD_F	28	246	9825
// OP_GE	9825	677	9826
// OP_IFNOT	9826	58	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	1622	7	0
// OP_CALL2	2367	0	0
// OP_STORE_V	1	9732	0
// OP_STORE_V	9729	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	246	9827
// OP_BITAND	9827	677	9828
// OP_IFNOT	9828	16	0
// OP_LOAD_ENT	28	206	9829
// OP_LOAD_V	9829	130	9830
// OP_MUL_VF	62	827	9833
// OP_SUB_V	9830	9833	9836
// OP_MUL_VF	59	827	9839
// OP_SUB_V	9836	9839	9842
// OP_MUL_VF	65	827	9845
// OP_ADD_V	9842	9845	9848
// OP_STORE_V	9848	4	0
// OP_STORE_V	9732	7	0
// OP_LOAD_ENT	28	206	9851
// OP_LOAD_ENT	9851	464	9852
// OP_STORE_V	9852	10	0
// OP_CALL3	4853	0	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	28	206	9853
// OP_LOAD_V	9853	130	9854
// OP_MUL_VF	62	827	9857
// OP_SUB_V	9854	9857	9860
// OP_MUL_VF	59	827	9863
// OP_SUB_V	9860	9863	9866
// OP_MUL_VF	65	827	9869
// OP_SUB_V	9866	9869	9872
// OP_STORE_V	9872	4	0
// OP_STORE_V	9732	7	0
// OP_LOAD_ENT	28	206	9875
// OP_LOAD_ENT	9875	464	9876
// OP_STORE_V	9876	10	0
// OP_CALL3	4853	0	0
// OP_LOAD_ENT	28	206	9877
// OP_ADDRESS	9877	158	9878
// OP_LOAD_ENT	28	206	9879
// OP_LOAD_F	9879	158	9880
// OP_BITOR	9880	383	9881
// OP_STOREP_F	9881	9878	0
// OP_ADDRESS	28	182	9882
// OP_ADDRESS	28	185	9883
// OP_ADDRESS	28	246	9884
// OP_LOAD_F	28	246	9885
// OP_SUB_F	9885	677	9886
// OP_STOREP_F	9886	9884	0
// OP_STOREP_F	9886	9883	0
// OP_STOREP_F	9886	9882	0
// OP_LOAD_ENT	28	206	9887
// OP_ADDRESS	9887	437	9888
// OP_ADD_F	31	677	9889
// OP_STOREP_F	9889	9888	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9890
// OP_ADD_F	31	972	9891
// OP_STOREP_F	9891	9890	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	179	9892
// OP_EQ_F	9892	324	9893
// OP_IFNOT	9893	63	0
// OP_LOAD_F	28	248	9894
// OP_GE	9894	677	9895
// OP_IFNOT	9895	54	0
// OP_STORE_V	7769	4	0
// OP_STORE_V	4035	7	0
// OP_CALL2	5537	0	0
// OP_STORE_V	1	9732	0
// OP_STORE_V	9729	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	248	9896
// OP_BITAND	9896	677	9897
// OP_IFNOT	9897	14	0
// OP_LOAD_ENT	28	206	9898
// OP_LOAD_V	9898	130	9899
// OP_MUL_VF	59	827	9902
// OP_SUB_V	9899	9902	9905
// OP_MUL_VF	65	812	9908
// OP_ADD_V	9905	9908	9911
// OP_STORE_V	9911	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9914
// OP_LOAD_ENT	9914	464	9915
// OP_STORE_V	9915	10	0
// OP_CALL3	4899	0	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	28	206	9916
// OP_LOAD_V	9916	130	9917
// OP_MUL_VF	59	827	9920
// OP_SUB_V	9917	9920	9923
// OP_MUL_VF	65	812	9926
// OP_SUB_V	9923	9926	9929
// OP_STORE_V	9929	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	9932
// OP_LOAD_ENT	9932	464	9933
// OP_STORE_V	9933	10	0
// OP_CALL3	4899	0	0
// OP_LOAD_ENT	28	206	9934
// OP_ADDRESS	9934	158	9935
// OP_LOAD_ENT	28	206	9936
// OP_LOAD_F	9936	158	9937
// OP_BITOR	9937	383	9938
// OP_STOREP_F	9938	9935	0
// OP_ADDRESS	28	182	9939
// OP_ADDRESS	28	186	9940
// OP_ADDRESS	28	248	9941
// OP_LOAD_F	28	248	9942
// OP_SUB_F	9942	677	9943
// OP_STOREP_F	9943	9941	0
// OP_STOREP_F	9943	9940	0
// OP_STOREP_F	9943	9939	0
// OP_LOAD_ENT	28	206	9944
// OP_ADDRESS	9944	437	9945
// OP_ADD_F	31	677	9946
// OP_STOREP_F	9946	9945	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	422	9947
// OP_ADD_F	31	7985	9948
// OP_STOREP_F	9948	9947	0
// OP_DONE	0	0	0
void () ac5_attack = 
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
            v2 = AC_aim(0.970, -800.000);
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
            if(self.ammo_cell >= 2.000)
            {
                v2 = AC_aim(0.970, -800.000);
                makevectors(v1);
                AC_plasma(self.enemy.origin + (v_right * 10.000), v2, world);
                AC_plasma(self.enemy.origin - (v_right * 10.000), v2, world);
                self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                self.currentammo = self.ammo_nails = self.ammo_cell = self.ammo_cell - 2.000;
                self.enemy.show_hostile = time + 1.000;
            }
            else
            {
                sprint(self, "not enough ammo.\n");
            }
            
            self.attack_finished = time + 0.300;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                if(self.ammo_rock >= 1.000)
                {
                    v2 = AC_aim(0.930, 1000.000);
                    makevectors(v1);
                    if(self.ammo_rock & 1.000)
                    {
                        AC_miniseeker(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) + (v_right * 10.000), v2, self.enemy.trigger_field);
                    }
                    else
                    {
                        AC_miniseeker(((self.enemy.origin - (v_up * 10.000)) - (v_forward * 10.000)) - (v_right * 10.000), v2, self.enemy.trigger_field);
                    }
                    
                    self.enemy.effects = self.enemy.effects | EF_MUZZLEFLASH;
                    self.currentammo = self.ammo_rockets = self.ammo_rock = self.ammo_rock - 1.000;
                    self.enemy.show_hostile = time + 1.000;
                }
                else
                {
                    sprint(self, "not enough ammo.\n");
                }
                
                self.attack_finished = time + 0.500;
            }
            else
            {
                
                if(self.weapon == IT_WEP4)
                {
                    if(self.ammo_amsl >= 1.000)
                    {
                        v2 = AC_aim2(0.930, 1500.000);
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
                        self.currentammo = self.ammo_cells = self.ammo_amsl = self.ammo_amsl - 1.000;
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

// start_aircraft5
// function begins at statement 12914, parm_start=9950
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	9950	0
// OP_STORE_V	9950	4	0
// OP_STORE_V	9600	7	0
// OP_CALL2	498	0	0
// OP_LOAD_ENT	28	219	9952
// OP_STORE_ENT	9952	9951	0
// OP_STORE_V	9950	4	0
// OP_LOAD_V	9951	130	9953
// OP_STORE_V	9953	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	9950	142	9956
// OP_LOAD_V	9951	142	9959
// OP_STOREP_V	9959	9956	0
// OP_ADDRESS	9950	154	9962
// OP_STOREP_S	2097	9962	0
// OP_ADDRESS	9950	138	9963
// OP_STOREP_V	607	9963	0
// OP_ADDRESS	9950	128	9966
// OP_STOREP_F	284	9966	0
// OP_STORE_V	9950	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	9950	129	9967
// OP_STOREP_F	294	9967	0
// OP_ADDRESS	9950	171	9968
// OP_STOREP_FNC	2368	9968	0
// OP_ADDRESS	9950	177	9969
// OP_STOREP_F	9970	9969	0
// OP_ADDRESS	9950	210	9971
// OP_LOAD_F	9950	177	9972
// OP_STOREP_F	9972	9971	0
// OP_ADDRESS	9950	188	9973
// OP_STOREP_F	306	9973	0
// OP_ADDRESS	9950	411	9974
// OP_STOREP_FNC	2366	9974	0
// OP_ADDRESS	9950	205	9975
// OP_LOAD_S	28	205	9976
// OP_STOREP_S	9976	9975	0
// OP_ADDRESS	9950	413	9977
// OP_STOREP_F	4412	9977	0
// OP_ADDRESS	9950	240	9978
// OP_STOREP_F	808	9978	0
// OP_ADDRESS	28	206	9979
// OP_STOREP_ENT	9950	9979	0
// OP_ADDRESS	9950	219	9980
// OP_STOREP_ENT	28	9980	0
// OP_ADDRESS	9950	226	9981
// OP_STOREP_ENT	28	9981	0
// OP_ADDRESS	28	238	9982
// OP_STOREP_F	619	9982	0
// OP_ADDRESS	28	408	9983
// OP_STOREP_FNC	9728	9983	0
// OP_ADDRESS	28	407	9984
// OP_STOREP_FNC	9580	9984	0
// OP_ADDRESS	28	409	9985
// OP_STOREP_FNC	9558	9985	0
// OP_ADDRESS	28	183	9986
// OP_ADDRESS	28	245	9987
// OP_STOREP_F	3237	9987	0
// OP_STOREP_F	3237	9986	0
// OP_ADDRESS	28	184	9988
// OP_ADDRESS	28	251	9989
// OP_MUL_F	1155	113	9990
// OP_STOREP_F	9990	9989	0
// OP_STOREP_F	9990	9988	0
// OP_ADDRESS	28	185	9991
// OP_ADDRESS	28	246	9992
// OP_MUL_F	810	113	9993
// OP_STOREP_F	9993	9992	0
// OP_STOREP_F	9993	9991	0
// OP_ADDRESS	28	186	9994
// OP_ADDRESS	28	248	9995
// OP_MUL_F	808	113	9996
// OP_STOREP_F	9996	9995	0
// OP_STOREP_F	9996	9994	0
// OP_CALL0	6345	0	0
// OP_LOAD_ENT	28	412	9997
// OP_ADDRESS	9997	404	9998
// OP_STOREP_F	815	9998	0
// OP_DONE	0	0	0
void () start_aircraft5 = 
{
    local entity e;
    local entity e2;
    e = spawn();
    setmodel(e, "progs/plane5.mdl");
    e2 = self.goalentity;
    setorigin(e, e2.origin);
    e.angles = e2.angles;
    e.classname = "plane";
    e.velocity = '0.000 0.000 0.000';
    e.movetype = MOVETYPE_FLY;
    setsize(e, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    e.solid = SOLID_SLIDEBOX;
    e.touch = T_ACTouch;
    e.health = 170.000;
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
    self.th_missile = ac5_attack;
    self.th_run = ac5_steer;
    self.th_melee = ac5_currentammo;
    self.ammo_shells = self.ammo_auto = 130.000;
    self.ammo_nails = self.ammo_cell = 40.000 * wepmulti;
    self.ammo_rockets = self.ammo_rock = 8.000 * wepmulti;
    self.ammo_cells = self.ammo_amsl = 4.000 * wepmulti;
    Check_startlanded();
    self.oldenemy.style = 32.000;
};

