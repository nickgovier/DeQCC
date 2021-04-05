.float last_guide_touch;
.float last_cant_walk;
float unspawned_dudes;
// dude_move
// function begins at statement 25463, parm_start=17702
// OP_LOAD_F	28	177	17702
// OP_STORE_V	17702	4	0
// OP_LOAD_F	28	647	17703
// OP_SUB_F	31	17703	17704
// OP_MUL_F	4664	17704	17705
// OP_STORE_V	17705	7	0
// OP_CALL2	491	0	0
// OP_NOT_F	1	0	17706
// OP_IFNOT	17706	17	0
// OP_ADDRESS	28	177	17707
// OP_LOAD_F	28	177	17708
// OP_CALL0	466	0	0
// OP_GT	1	1182	17709
// OP_MUL_F	17709	821	17710
// OP_SUB_F	17710	819	17711
// OP_MUL_F	17711	17712	17713
// OP_ADD_F	17708	17713	17714
// OP_STOREP_F	17714	17707	0
// OP_ADDRESS	28	177	17715
// OP_LOAD_F	28	177	17716
// OP_STORE_V	17716	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	17715	0
// OP_ADDRESS	28	17699	17717
// OP_STOREP_F	31	17717	0
// OP_ADDRESS	28	647	17718
// OP_STOREP_F	31	17718	0
// OP_DONE	0	0	0
void () dude_move = 
{
    
    if(!(walkmove(self.v_angle_y, 320 * (time - self.last_idle))))
    {
        self.v_angle_y = self.v_angle_y + ((((random() > 0.5) * 2) - 1) * 135);
        self.v_angle_y = anglemod(self.v_angle_y);
        self.last_cant_walk = time;
    }
    
    self.last_idle = time;
};

// DudeSpawnIsClose
// function begins at statement 25491, parm_start=17720
// OP_LOAD_V	17720	105	17722
// OP_STORE_V	17722	4	0
// OP_STORE_V	2223	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	17721	0
// OP_NE_E	17721	30	17725
// OP_IFNOT	17725	8	0
// OP_LOAD_S	17721	129	17726
// OP_EQ_S	17726	11177	17727
// OP_IFNOT	17727	2	0
// OP_RETURN	219	0	0
// OP_LOAD_ENT	17721	164	17728
// OP_STORE_ENT	17728	17721	0
// OP_GOTO	-8	0	0
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (entity dude) DudeSpawnIsClose = 
{
    local entity trav;
    trav = findradius(dude.origin, 64);
    
    while(trav != world)
    {
        
        if(trav.classname == "rally_spawn_dude")
        {
            return TRUE;
        }
        
        trav = trav.chain;
    }
    
    return FALSE;
};

void (entity targ) dude_fire_rocket;
void () dude_fire_grenade;
// dude_run
// function begins at statement 25507, parm_start=17732
// OP_ADDRESS	28	148	17749
// OP_STOREP_FNC	17731	17749	0
// OP_ADDRESS	28	150	17750
// OP_ADD_F	31	1988	17751
// OP_STOREP_F	17751	17750	0
// OP_CALL0	17701	0	0
// OP_LOAD_F	28	131	17752
// OP_EQ_F	17752	817	17753
// OP_LOAD_F	28	131	17754
// OP_EQ_F	17754	823	17755
// OP_OR	17753	17755	17756
// OP_IFNOT	17756	243	0
// OP_STORE_F	218	17747	0
// OP_STORE_V	28	4	0
// OP_CALL1	17719	0	0
// OP_IFNOT	1	3	0
// OP_CALL0	492	0	0
// OP_STORE_F	219	17747	0
// OP_STORE_F	218	17745	0
// OP_LOAD_F	28	160	17757
// OP_EQ_F	17757	817	17758
// OP_IFNOT	17758	89	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8590	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17748	0
// OP_NOT_F	17745	0	17759
// OP_NE_E	17748	30	17760
// OP_AND	17759	17760	17761
// OP_IFNOT	17761	29	0
// OP_LOAD_V	28	105	17762
// OP_ADD_V	17762	1666	17765
// OP_STORE_V	17765	4	0
// OP_LOAD_V	17748	105	17768
// OP_STORE_V	17768	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	17771
// OP_IFNOT	17771	13	0
// OP_LOAD_V	17748	105	17772
// OP_LOAD_V	28	105	17775
// OP_SUB_V	17772	17775	17778
// OP_STORE_V	17778	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	17738	0
// OP_ADDRESS	28	191	17781
// OP_STORE_V	17738	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	17781	0
// OP_STORE_F	219	17745	0
// OP_GOTO	6	0	0
// OP_STORE_V	17748	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8590	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17748	0
// OP_GOTO	-31	0	0
// OP_NOT_F	17745	0	17782
// OP_LOAD_F	28	17698	17783
// OP_SUB_F	31	1112	17784
// OP_LT	17783	17784	17785
// OP_AND	17782	17785	17786
// OP_LOAD_F	28	17699	17787
// OP_SUB_F	31	827	17788
// OP_LT	17787	17788	17789
// OP_AND	17786	17789	17790
// OP_IFNOT	17790	42	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	17791	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17748	0
// OP_NOT_F	17745	0	17792
// OP_NE_E	17748	30	17793
// OP_AND	17792	17793	17794
// OP_IFNOT	17794	33	0
// OP_LOAD_V	28	105	17795
// OP_ADD_V	17795	1666	17798
// OP_STORE_V	17798	4	0
// OP_LOAD_V	17748	105	17801
// OP_STORE_V	17801	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	17804
// OP_IFNOT	17804	13	0
// OP_LOAD_V	17748	105	17805
// OP_LOAD_V	28	105	17808
// OP_SUB_V	17805	17808	17811
// OP_STORE_V	17811	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	17738	0
// OP_ADDRESS	28	191	17814
// OP_STORE_V	17738	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	17814	0
// OP_STORE_F	219	17745	0
// OP_GOTO	6	0	0
// OP_STORE_V	17748	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	17791	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17748	0
// OP_EQ_E	17748	30	17815
// OP_IFNOT	17815	3	0
// OP_ADDRESS	28	17699	17816
// OP_STOREP_F	31	17816	0
// OP_GOTO	-35	0	0
// OP_NOT_F	17745	0	17817
// OP_IFNOT	17817	45	0
// OP_LOAD_V	28	175	17818
// OP_STORE_V	17818	17732	0
// OP_STORE_F	817	17741	0
// OP_STORE_F	817	17743	0
// OP_LOAD_F	28	177	17821
// OP_STORE_F	17821	17742	0
// OP_LOAD_V	28	105	17822
// OP_ADD_V	17822	1535	17825
// OP_STORE_V	17825	17735	0
// OP_LT	17741	7023	17828
// OP_IFNOT	17828	32	0
// OP_LOAD_F	28	177	17829
// OP_ADD_F	17829	17741	17830
// OP_STORE_V	17830	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	17733	0
// OP_STORE_V	17732	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	17735	4	0
// OP_MUL_VF	59	14094	17831
// OP_ADD_V	17735	17831	17834
// OP_STORE_V	17834	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_SUB_V	17735	71	17837
// OP_STORE_V	17837	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	17744	0
// OP_GT	17744	17743	17840
// OP_IFNOT	17840	3	0
// OP_STORE_F	17744	17743	0
// OP_STORE_F	17733	17742	0
// OP_LE	17741	817	17841
// OP_IFNOT	17841	5	0
// OP_MUL_F	1228	17741	17842
// OP_ADD_F	17842	2522	17843
// OP_STORE_F	17843	17741	0
// OP_GOTO	3	0	0
// OP_MUL_F	1228	17741	17844
// OP_STORE_F	17844	17741	0
// OP_GOTO	-32	0	0
// OP_ADDRESS	28	191	17845
// OP_STOREP_F	17742	17845	0
// OP_NOT_F	17747	0	17846
// OP_IFNOT	17846	97	0
// OP_LOAD_F	28	648	17847
// OP_SUB_F	31	1182	17848
// OP_LT	17847	17848	17849
// OP_IFNOT	17849	29	0
// OP_LOAD_V	28	105	17850
// OP_STORE_V	17850	4	0
// OP_STORE_V	4345	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	17748	0
// OP_LOAD_S	17748	129	17853
// OP_EQ_S	17853	880	17854
// OP_IFNOT	17854	2	0
// OP_CALL0	17730	0	0
// OP_NE_E	17748	30	17855
// OP_LOAD_S	17748	129	17856
// OP_NE_S	17856	880	17857
// OP_AND	17855	17857	17858
// OP_IFNOT	17858	8	0
// OP_LOAD_ENT	17748	164	17859
// OP_STORE_ENT	17859	17748	0
// OP_LOAD_S	17748	129	17860
// OP_EQ_S	17860	880	17861
// OP_IFNOT	17861	2	0
// OP_CALL0	17730	0	0
// OP_GOTO	-11	0	0
// OP_LOAD_S	17748	129	17862
// OP_NE_S	17862	880	17863
// OP_IFNOT	17863	5	0
// OP_CALL0	466	0	0
// OP_LT	1	1988	17864
// OP_IFNOT	17864	2	0
// OP_CALL0	17730	0	0
// OP_LOAD_F	28	160	17865
// OP_GT	17865	817	17866
// OP_IFNOT	17866	21	0
// OP_LOAD_F	28	648	17867
// OP_SUB_F	31	819	17868
// OP_LT	17867	17868	17869
// OP_IFNOT	17869	17	0
// OP_LOAD_V	28	117	17870
// OP_STORE_V	17870	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	17873
// OP_STORE_V	17873	4	0
// OP_STORE_V	59	7	0
// OP_STORE_V	5033	10	0
// OP_STORE_V	7023	13	0
// OP_STORE_V	880	16	0
// OP_STORE_V	28	19	0
// OP_CALL6	7210	0	0
// OP_STORE_ENT	1	17748	0
// OP_NE_E	17748	30	17876
// OP_IFNOT	17876	3	0
// OP_STORE_V	17748	4	0
// OP_CALL1	17729	0	0
// OP_LOAD_ENT	28	181	17877
// OP_NE_E	17877	30	17878
// OP_IFNOT	17878	19	0
// OP_LOAD_ENT	28	181	17879
// OP_LOAD_F	17879	152	17880
// OP_LE	17880	817	17881
// OP_LOAD_V	28	105	17882
// OP_LOAD_ENT	28	181	17885
// OP_LOAD_V	17885	105	17886
// OP_SUB_V	17882	17886	17889
// OP_STORE_V	17889	4	0
// OP_CALL1	471	0	0
// OP_GT	1	14094	17892
// OP_OR	17881	17892	17893
// OP_LOAD_F	28	160	17894
// OP_EQ_F	17894	817	17895
// OP_OR	17893	17895	17896
// OP_IFNOT	17896	3	0
// OP_ADDRESS	28	181	17897
// OP_STOREP_ENT	30	17897	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	160	17898
// OP_GT	17898	817	17899
// OP_IFNOT	17899	18	0
// OP_LOAD_V	28	105	17900
// OP_STORE_V	17900	4	0
// OP_STORE_V	5033	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	17748	0
// OP_NE_E	17748	30	17903
// OP_IFNOT	17903	11	0
// OP_LOAD_S	17748	129	17904
// OP_EQ_S	17904	880	17905
// OP_IFNOT	17905	5	0
// OP_ADDRESS	28	181	17906
// OP_STOREP_ENT	17748	17906	0
// OP_STORE_ENT	30	17748	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	17748	164	17907
// OP_STORE_ENT	17907	17748	0
// OP_GOTO	-11	0	0
// OP_ADDRESS	28	177	17908
// OP_LOAD_F	28	177	17909
// OP_STORE_V	17909	4	0
// OP_LOAD_F	28	191	17910
// OP_STORE_V	17910	7	0
// OP_STORE_V	5807	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	17908	0
// OP_LOAD_ENT	28	181	17911
// OP_NE_E	17911	30	17912
// OP_IFNOT	17912	30	0
// OP_LOAD_ENT	28	181	17913
// OP_LOAD_V	17913	105	17914
// OP_LOAD_ENT	28	181	17917
// OP_LOAD_V	17917	113	17918
// OP_LOAD_ENT	28	181	17921
// OP_LOAD_V	17921	105	17922
// OP_LOAD_V	28	105	17925
// OP_SUB_V	17922	17925	17928
// OP_STORE_V	17928	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	17931	17932
// OP_MUL_VF	17918	17932	17933
// OP_ADD_V	17914	17933	17936
// OP_LOAD_V	28	105	17939
// OP_SUB_V	17936	17939	17942
// OP_STORE_V	17942	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	17738	0
// OP_STORE_V	17738	4	0
// OP_CALL1	472	0	0
// OP_STORE_F	1	17746	0
// OP_ADDRESS	28	119	17945
// OP_LOAD_F	28	119	17946
// OP_STORE_V	17946	4	0
// OP_STORE_V	17746	7	0
// OP_STORE_V	17947	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	17945	0
// OP_GOTO	9	0	0
// OP_ADDRESS	28	119	17948
// OP_LOAD_F	28	119	17949
// OP_STORE_V	17949	4	0
// OP_LOAD_F	28	191	17950
// OP_STORE_V	17950	7	0
// OP_STORE_V	5807	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	17948	0
// OP_ADDRESS	28	131	17951
// OP_LOAD_F	28	131	17952
// OP_ADD_F	17952	819	17953
// OP_STOREP_F	17953	17951	0
// OP_LOAD_F	28	131	17954
// OP_GE	17954	829	17955
// OP_IFNOT	17955	3	0
// OP_ADDRESS	28	131	17956
// OP_STOREP_F	817	17956	0
// OP_DONE	0	0	0
void () dude_run = 
{
    local vector look_angle;
    local vector org;
    local vector vec;
    local float look_heading_change;
    local float ideal_heading;
    local float ideal_dist;
    local float this_dist;
    local float found;
    local float enemy_ideal_yaw;
    local float cant_fire;
    local entity trav;
    self.think = dude_run;
    self.nextthink = time + 0.05;
    dude_move();
    
    if((self.frame == 0) || (self.frame == 3))
    {
        cant_fire = FALSE;
        
        if(DudeSpawnIsClose(self))
        {
            droptofloor();
            cant_fire = TRUE;
        }
        
        found = FALSE;
        
        if(self.ammo_rockets == 0)
        {
            trav = find(world, classname, "weapon_rocketlauncher");
            
            while(!found && (trav != world))
            {
                traceline(self.origin + '0.000 0.000 8.000', trav.origin, TRUE, world);
                if(trace_fraction == 1)
                {
                    vec = normalize(trav.origin - self.origin);
                    self.ideal_yaw = vectoyaw(vec);
                    found = TRUE;
                }
                else
                {
                    trav = find(trav, classname, "weapon_rocketlauncher");
                }
                
            }
            
            
            if((!found && (self.last_guide_touch < (time - 20))) && (self.last_cant_walk < (time - 5)))
            {
                trav = find(world, classname, "rally_dude_guide");
                
                while(!found && (trav != world))
                {
                    traceline(self.origin + '0.000 0.000 8.000', trav.origin, TRUE, world);
                    if(trace_fraction == 1)
                    {
                        vec = normalize(trav.origin - self.origin);
                        self.ideal_yaw = vectoyaw(vec);
                        found = TRUE;
                    }
                    else
                    {
                        trav = find(trav, classname, "rally_dude_guide");
                    }
                    
                    
                    if(trav == world)
                    {
                        self.last_cant_walk = time;
                    }
                    
                }
                
            }
            
        }
        
        
        if(!found)
        {
            look_angle = self.v_angle;
            look_heading_change = 0;
            ideal_dist = 0;
            ideal_heading = self.v_angle_y;
            org = self.origin + '0.000 0.000 16.000';
            
            while(look_heading_change < 90)
            {
                look_angle_y = anglemod(self.v_angle_y + look_heading_change);
                makevectors(look_angle);
                traceline(org, org + (v_forward * 512), TRUE, self);
                this_dist = vlen(org - trace_endpos);
                
                if(this_dist > ideal_dist)
                {
                    ideal_dist = this_dist;
                    ideal_heading = 0;
                }
                
                if(look_heading_change <= 0)
                {
                    look_heading_change = (-1 * look_heading_change) + 30;
                }
                else
                {
                    look_heading_change = -1 * look_heading_change;
                }
                
            }
            
            self.ideal_yaw = ideal_heading;
        }
        
        
        if(!cant_fire)
        {
            
            if(self.last_rev < (time - 0.5))
            {
                trav = findradius(self.origin, 384);
                
                if(trav.classname == "player")
                {
                    dude_fire_grenade();
                }
                
                
                while((trav != world) && (trav.classname != "player"))
                {
                    trav = trav.chain;
                    
                    if(trav.classname == "player")
                    {
                        dude_fire_grenade();
                    }
                    
                }
                
                
                if(trav.classname != "player")
                {
                    
                    if(random() < 0.05)
                    {
                        dude_fire_grenade();
                    }
                    
                }
                
            }
            
            
            if(self.ammo_rockets > 0)
            {
                
                if(self.last_rev < (time - 1))
                {
                    makevectors(self.angles);
                    trav = FindSightEnemy(self.origin, v_forward, 900, 90, "player", self);
                    
                    if(trav != world)
                    {
                        dude_fire_rocket(trav);
                    }
                    
                }
                
            }
            
            if(self.enemy != world)
            {
                
                if(((self.enemy.health <= 0) || ((vlen(self.origin - self.enemy.origin)) > 512)) || (self.ammo_rockets == 0))
                {
                    self.enemy = world;
                }
                
            }
            else
            {
                
                if(self.ammo_rockets > 0)
                {
                    trav = findradius(self.origin, 900);
                    
                    while(trav != world)
                    {
                        if(trav.classname == "player")
                        {
                            self.enemy = trav;
                            trav = world;
                        }
                        else
                        {
                            trav = trav.chain;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self.v_angle_y = MoveToAngle(self.v_angle_y, self.ideal_yaw, 120);
    if(self.enemy != world)
    {
        vec = normalize((self.enemy.origin + (self.enemy.velocity * ((vlen(self.enemy.origin - self.origin)) / 720))) - self.origin);
        enemy_ideal_yaw = vectoyaw(vec);
        self.angles_y = MoveToAngle(self.angles_y, enemy_ideal_yaw, 999);
    }
    else
    {
        self.angles_y = MoveToAngle(self.angles_y, self.ideal_yaw, 120);
    }
    
    self.frame = self.frame + 1;
    
    if(self.frame >= 6)
    {
        self.frame = 0;
    }
    
};

// dude_axpain1
// function begins at statement 25819, parm_start=17958
// OP_STATE	3974	17958	0
// OP_CALL0	14752	0	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain1 = [18, dude_axpain2]
{
    PainSound();
    dude_move();
};

// dude_axpain2
// function begins at statement 25823, parm_start=17959
// OP_STATE	3981	17959	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain2 = [19, dude_axpain3]
{
    dude_move();
};

// dude_axpain3
// function begins at statement 25826, parm_start=17960
// OP_STATE	1112	17960	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain3 = [20, dude_axpain4]
{
    dude_move();
};

// dude_axpain4
// function begins at statement 25829, parm_start=17961
// OP_STATE	10944	17961	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain4 = [21, dude_axpain5]
{
    dude_move();
};

// dude_axpain5
// function begins at statement 25832, parm_start=17962
// OP_STATE	17363	17962	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain5 = [22, dude_axpain6]
{
    dude_move();
};

// dude_axpain6
// function begins at statement 25835, parm_start=17963
// OP_STATE	17365	17731	0
// OP_CALL0	17701	0	0
// OP_DONE	0	0	0
void () dude_axpain6 = [23, dude_run]
{
    dude_move();
};

// dude_pain
// function begins at statement 25838, parm_start=17964
// OP_LOAD_F	28	390	17964
// OP_GT	17964	31	17965
// OP_IFNOT	17965	2	0
// OP_RETURN	0	0	0
// OP_CALL0	17957	0	0
// OP_DONE	0	0	0
void () dude_pain = 
{
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    dude_axpain1();
};

void () dude_diea1;
void () dude_dieb1;
void () dude_diec1;
void () dude_died1;
void () dude_diee1;
void () dude_die_ax1;
float () spawn_dude;
// DudeDead
// function begins at statement 25844, parm_start=17974
// OP_ADDRESS	28	150	17974
// OP_ADD_F	31	855	17975
// OP_STOREP_F	17975	17974	0
// OP_ADDRESS	28	148	17976
// OP_STOREP_FNC	533	17976	0
// OP_DONE	0	0	0
void () DudeDead = 
{
    self.nextthink = time + 10;
    self.think = SUB_Remove;
};

// Awake_Boss
// function begins at statement 25850, parm_start=17977
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7228	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17977	0
// OP_NE_E	17977	30	17980
// OP_IFNOT	17980	17	0
// OP_STORE_ENT	28	17978	0
// OP_STORE_ENT	17977	28	0
// OP_CALL0	17582	0	0
// OP_STORE_ENT	17978	28	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	15638	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17979	0
// OP_NE_E	1	30	17981
// OP_IFNOT	17981	6	0
// OP_STORE_V	17979	4	0
// OP_LOAD_V	17979	105	17982
// OP_SUB_V	17982	17985	17988
// OP_STORE_V	17988	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () Awake_Boss = 
{
    local entity boss;
    local entity oself;
    local entity trav;
    boss = find(world, classname, "monster_boss");
    
    if(boss != world)
    {
        oself = self;
        self = boss;
        boss_awake();
        self = oself;
        trav = find(world, classname, "door");
        
        if(find(world, classname, "door") != world)
        {
            setorigin(trav, trav.origin - '0.000 0.000 1024.000');
        }
        
    }
    
};

// CheckCultKills
// function begins at statement 25874, parm_start=17992
// OP_GT	743	792	17997
// OP_NOT_F	689	0	17998
// OP_OR	17997	17998	17999
// OP_IFNOT	17999	15	0
// OP_STORE_F	817	743	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	18000
// OP_STORE_F	18000	17996	0
// OP_LT	17996	819	18001
// OP_IFNOT	18001	4	0
// OP_STORE_V	18002	4	0
// OP_CALL1	482	0	0
// OP_GOTO	5	0	0
// OP_LT	17996	821	18003
// OP_IFNOT	18003	3	0
// OP_STORE_V	18004	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_EQ_F	743	792	18005
// OP_IFNOT	18005	5	0
// OP_STORE_V	18006	4	0
// OP_CALL1	482	0	0
// OP_CALL0	10515	0	0
// OP_RETURN	0	0	0
// OP_SUB_F	792	743	18007
// OP_STORE_V	18007	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	17992	0
// OP_STORE_V	18008	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	17992	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17995	0
// OP_NE_E	17995	30	18009
// OP_IFNOT	18009	9	0
// OP_ADDRESS	17995	153	18010
// OP_STOREP_F	743	18010	0
// OP_STORE_V	17995	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17995	0
// OP_GOTO	-9	0	0
// OP_DONE	0	0	0
void () CheckCultKills = 
{
    local string kills_str;
    local entity boss;
    local entity oself;
    local entity trav;
    local float rnd;
    
    if((cult_kills > NUM_DUKES) || !challenge)
    {
        cult_kills = 0;
        rnd = random() * 5;
        if(rnd < 1)
        {
            bprint("Come get some of THIS!\n");
        }
        else
        {
            
            if(rnd < 2)
            {
                bprint("Time to kick ass and Gib Dukes!\n");
            }
            
        }
        
        return;
    }
    
    
    if(cult_kills == NUM_DUKES)
    {
        bprint("All Cult members have been TERMINATED!\n");
        Awake_Boss();
        return;
    }
    
    kills_str = ftos(NUM_DUKES - cult_kills);
    bprint("Cult members remaining: ");
    bprint(kills_str);
    bprint("\n");
    trav = find(world, classname, "player");
    
    while(trav != world)
    {
        trav.frags = cult_kills;
        trav = find(trav, classname, "player");
    }
    
};

// replenish_dudes
// function begins at statement 25924, parm_start=18012
// OP_ADD_F	17700	819	18013
// OP_STORE_F	18013	17700	0
// OP_STORE_F	817	18012	0
// OP_GT	17700	817	18014
// OP_NOT_F	18012	0	18015
// OP_AND	18014	18015	18016
// OP_IFNOT	18016	8	0
// OP_CALL0	17972	0	0
// OP_IFNOT	1	4	0
// OP_SUB_F	17700	819	18017
// OP_STORE_F	18017	17700	0
// OP_GOTO	2	0	0
// OP_STORE_F	819	18012	0
// OP_GOTO	-10	0	0
// OP_DONE	0	0	0
void () replenish_dudes = 
{
    local float done;
    unspawned_dudes = unspawned_dudes + 1;
    done = 0;
    
    while((unspawned_dudes > 0) && !done)
    {
        if(spawn_dude())
        {
            unspawned_dudes = unspawned_dudes - 1;
        }
        else
        {
            done = 1;
        }
        
    }
    
};

// DudeDie
// function begins at statement 25939, parm_start=18019
// OP_ADDRESS	28	162	18020
// OP_LOAD_F	28	162	18021
// OP_LOAD_F	28	162	18022
// OP_BITAND	18022	286	18023
// OP_SUB_F	18021	18023	18024
// OP_STOREP_F	18024	18020	0
// OP_ADDRESS	28	390	18025
// OP_STOREP_F	817	18025	0
// OP_ADDRESS	28	389	18026
// OP_STOREP_F	817	18026	0
// OP_ADDRESS	28	391	18027
// OP_STOREP_F	817	18027	0
// OP_ADDRESS	28	392	18028
// OP_STOREP_F	817	18028	0
// OP_OR	35	36	18029
// OP_GT	738	819	18030
// OP_AND	18029	18030	18031
// OP_IFNOT	18031	2	0
// OP_CALL0	9121	0	0
// OP_ADDRESS	28	652	18032
// OP_STOREP_F	817	18032	0
// OP_ADDRESS	28	653	18033
// OP_STOREP_F	817	18033	0
// OP_ADDRESS	28	166	18034
// OP_STOREP_V	15090	18034	0
// OP_ADDRESS	28	165	18037
// OP_STOREP_F	253	18037	0
// OP_ADDRESS	28	104	18038
// OP_STOREP_F	243	18038	0
// OP_ADDRESS	28	182	18039
// OP_LOAD_F	28	182	18040
// OP_LOAD_F	28	182	18041
// OP_BITAND	18041	228	18042
// OP_SUB_F	18040	18042	18043
// OP_STOREP_F	18043	18039	0
// OP_ADDRESS	28	103	18044
// OP_STOREP_F	237	18044	0
// OP_LOAD_F	28	116	18045
// OP_LT	18045	855	18046
// OP_IFNOT	18046	7	0
// OP_ADDRESS	28	116	18047
// OP_LOAD_F	28	116	18048
// OP_CALL0	466	0	0
// OP_MUL_F	1	2299	18049
// OP_ADD_F	18048	18049	18050
// OP_STOREP_F	18050	18047	0
// OP_EQ_F	738	825	18051
// OP_IFNOT	18051	4	0
// OP_ADD_F	743	819	18052
// OP_STORE_F	18052	743	0
// OP_CALL0	17991	0	0
// OP_LOAD_F	28	152	18053
// OP_LT	18053	4504	18054
// OP_IFNOT	18054	4	0
// OP_CALL0	15041	0	0
// OP_CALL0	18011	0	0
// OP_RETURN	0	0	0
// OP_CALL0	14873	0	0
// OP_ADDRESS	28	118	18055
// OP_STOREP_F	817	18055	0
// OP_ADDRESS	28	120	18056
// OP_STOREP_F	817	18056	0
// OP_STORE_V	18057	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	18019	0
// OP_NOT_F	18019	0	18058
// OP_IFNOT	18058	7	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	839	18059
// OP_STORE_V	18059	4	0
// OP_CALL1	495	0	0
// OP_ADD_F	819	1	18060
// OP_STORE_F	18060	18019	0
// OP_EQ_F	18019	819	18061
// OP_IFNOT	18061	3	0
// OP_CALL0	17966	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	18019	821	18062
// OP_IFNOT	18062	3	0
// OP_CALL0	17967	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	18019	823	18063
// OP_IFNOT	18063	3	0
// OP_CALL0	17968	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	18019	825	18064
// OP_IFNOT	18064	3	0
// OP_CALL0	17969	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	18019	827	18065
// OP_IFNOT	18065	3	0
// OP_CALL0	17970	0	0
// OP_GOTO	2	0	0
// OP_CALL0	17971	0	0
// OP_CALL0	18011	0	0
// OP_DONE	0	0	0
void () DudeDie = 
{
    local float i;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    
    if((deathmatch || coop) && (rally_type_index > 1))
    {
        DropBackpack();
    }
    
    self.last_engine1 = 0;
    self.last_engine2 = 0;
    self.view_ofs = '0.000 0.000 -8.000';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < 10)
    {
        self.velocity_z = self.velocity_z + (random() * 300);
    }
    
    
    if(rally_type_index == 4)
    {
        cult_kills = cult_kills + 1;
        CheckCultKills();
    }
    
    
    if(self.health < -40)
    {
        GibPlayer();
        replenish_dudes();
        return;
    }
    
    DeathSound();
    self.angles_x = 0;
    self.angles_z = 0;
    i = cvar("temp1");
    
    if(!i)
    {
        i = 1 + (floor(random() * 7));
    }
    
    if(i == 1)
    {
        dude_diea1();
    }
    else
    {
        if(i == 2)
        {
            dude_dieb1();
        }
        else
        {
            if(i == 3)
            {
                dude_diec1();
            }
            else
            {
                if(i == 4)
                {
                    dude_died1();
                }
                else
                {
                    if(i == 5)
                    {
                        dude_diee1();
                    }
                    else
                    {
                        dude_die_ax1();
                    }
                    
                }
                
            }
            
        }
        
    }
    
    replenish_dudes();
};

// dude_diea1
// function begins at statement 26035, parm_start=18066
// OP_STATE	14813	18066	0
// OP_DONE	0	0	0
void () dude_diea1 = [33, dude_diea2]
{
};

// dude_diea2
// function begins at statement 26037, parm_start=18067
// OP_STATE	14815	18067	0
// OP_DONE	0	0	0
void () dude_diea2 = [34, dude_diea3]
{
};

// dude_diea3
// function begins at statement 26039, parm_start=18068
// OP_STATE	5499	18068	0
// OP_DONE	0	0	0
void () dude_diea3 = [35, dude_diea4]
{
};

// dude_diea4
// function begins at statement 26041, parm_start=18069
// OP_STATE	5405	18069	0
// OP_DONE	0	0	0
void () dude_diea4 = [36, dude_diea5]
{
};

// dude_diea5
// function begins at statement 26043, parm_start=18070
// OP_STATE	5376	18070	0
// OP_DONE	0	0	0
void () dude_diea5 = [37, dude_diea6]
{
};

// dude_diea6
// function begins at statement 26045, parm_start=18071
// OP_STATE	14803	18071	0
// OP_DONE	0	0	0
void () dude_diea6 = [38, dude_diea7]
{
};

// dude_diea7
// function begins at statement 26047, parm_start=18072
// OP_STATE	14805	18072	0
// OP_DONE	0	0	0
void () dude_diea7 = [39, dude_diea8]
{
};

// dude_diea8
// function begins at statement 26049, parm_start=18073
// OP_STATE	1632	18073	0
// OP_DONE	0	0	0
void () dude_diea8 = [40, dude_diea9]
{
};

// dude_diea9
// function begins at statement 26051, parm_start=18074
// OP_STATE	10987	18074	0
// OP_DONE	0	0	0
void () dude_diea9 = [41, dude_diea10]
{
};

// dude_diea10
// function begins at statement 26053, parm_start=18075
// OP_STATE	10994	18075	0
// OP_DONE	0	0	0
void () dude_diea10 = [42, dude_diea11]
{
};

// dude_diea11
// function begins at statement 26055, parm_start=18076
// OP_STATE	11000	18075	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_diea11 = [43, dude_diea11]
{
    DudeDead();
};

// dude_dieb1
// function begins at statement 26058, parm_start=18076
// OP_STATE	15203	18076	0
// OP_DONE	0	0	0
void () dude_dieb1 = [44, dude_dieb2]
{
};

// dude_dieb2
// function begins at statement 26060, parm_start=18077
// OP_STATE	2558	18077	0
// OP_DONE	0	0	0
void () dude_dieb2 = [45, dude_dieb3]
{
};

// dude_dieb3
// function begins at statement 26062, parm_start=18078
// OP_STATE	15206	18078	0
// OP_DONE	0	0	0
void () dude_dieb3 = [46, dude_dieb4]
{
};

// dude_dieb4
// function begins at statement 26064, parm_start=18079
// OP_STATE	15208	18079	0
// OP_DONE	0	0	0
void () dude_dieb4 = [47, dude_dieb5]
{
};

// dude_dieb5
// function begins at statement 26066, parm_start=18080
// OP_STATE	3330	18080	0
// OP_DONE	0	0	0
void () dude_dieb5 = [48, dude_dieb6]
{
};

// dude_dieb6
// function begins at statement 26068, parm_start=18081
// OP_STATE	15211	18081	0
// OP_DONE	0	0	0
void () dude_dieb6 = [49, dude_dieb7]
{
};

// dude_dieb7
// function begins at statement 26070, parm_start=18082
// OP_STATE	2611	18082	0
// OP_DONE	0	0	0
void () dude_dieb7 = [50, dude_dieb8]
{
};

// dude_dieb8
// function begins at statement 26072, parm_start=18083
// OP_STATE	15118	18083	0
// OP_DONE	0	0	0
void () dude_dieb8 = [51, dude_dieb9]
{
};

// dude_dieb9
// function begins at statement 26074, parm_start=18084
// OP_STATE	15120	18083	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_dieb9 = [52, dude_dieb9]
{
    DudeDead();
};

// dude_diec1
// function begins at statement 26077, parm_start=18084
// OP_STATE	2779	18084	0
// OP_DONE	0	0	0
void () dude_diec1 = [53, dude_diec2]
{
};

// dude_diec2
// function begins at statement 26079, parm_start=18085
// OP_STATE	15123	18085	0
// OP_DONE	0	0	0
void () dude_diec2 = [54, dude_diec3]
{
};

// dude_diec3
// function begins at statement 26081, parm_start=18086
// OP_STATE	11012	18086	0
// OP_DONE	0	0	0
void () dude_diec3 = [55, dude_diec4]
{
};

// dude_diec4
// function begins at statement 26083, parm_start=18087
// OP_STATE	11018	18087	0
// OP_DONE	0	0	0
void () dude_diec4 = [56, dude_diec5]
{
};

// dude_diec5
// function begins at statement 26085, parm_start=18088
// OP_STATE	15127	18088	0
// OP_DONE	0	0	0
void () dude_diec5 = [57, dude_diec6]
{
};

// dude_diec6
// function begins at statement 26087, parm_start=18089
// OP_STATE	15129	18089	0
// OP_DONE	0	0	0
void () dude_diec6 = [58, dude_diec7]
{
};

// dude_diec7
// function begins at statement 26089, parm_start=18090
// OP_STATE	15131	18090	0
// OP_DONE	0	0	0
void () dude_diec7 = [59, dude_diec8]
{
};

// dude_diec8
// function begins at statement 26091, parm_start=18091
// OP_STATE	2228	18091	0
// OP_DONE	0	0	0
void () dude_diec8 = [60, dude_diec9]
{
};

// dude_diec9
// function begins at statement 26093, parm_start=18092
// OP_STATE	15133	18092	0
// OP_DONE	0	0	0
void () dude_diec9 = [61, dude_diec10]
{
};

// dude_diec10
// function begins at statement 26095, parm_start=18093
// OP_STATE	15135	18093	0
// OP_DONE	0	0	0
void () dude_diec10 = [62, dude_diec11]
{
};

// dude_diec11
// function begins at statement 26097, parm_start=18094
// OP_STATE	12183	18094	0
// OP_DONE	0	0	0
void () dude_diec11 = [63, dude_diec12]
{
};

// dude_diec12
// function begins at statement 26099, parm_start=18095
// OP_STATE	2223	18095	0
// OP_DONE	0	0	0
void () dude_diec12 = [64, dude_diec13]
{
};

// dude_diec13
// function begins at statement 26101, parm_start=18096
// OP_STATE	15139	18096	0
// OP_DONE	0	0	0
void () dude_diec13 = [65, dude_diec14]
{
};

// dude_diec14
// function begins at statement 26103, parm_start=18097
// OP_STATE	15141	18097	0
// OP_DONE	0	0	0
void () dude_diec14 = [66, dude_diec15]
{
};

// dude_diec15
// function begins at statement 26105, parm_start=18098
// OP_STATE	15143	18097	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_diec15 = [67, dude_diec15]
{
    DudeDead();
};

// dude_died1
// function begins at statement 26108, parm_start=18098
// OP_STATE	15145	18098	0
// OP_DONE	0	0	0
void () dude_died1 = [68, dude_died2]
{
};

// dude_died2
// function begins at statement 26110, parm_start=18099
// OP_STATE	15147	18099	0
// OP_DONE	0	0	0
void () dude_died2 = [69, dude_died3]
{
};

// dude_died3
// function begins at statement 26112, parm_start=18100
// OP_STATE	15148	18100	0
// OP_DONE	0	0	0
void () dude_died3 = [70, dude_died4]
{
};

// dude_died4
// function begins at statement 26114, parm_start=18101
// OP_STATE	15150	18101	0
// OP_DONE	0	0	0
void () dude_died4 = [71, dude_died5]
{
};

// dude_died5
// function begins at statement 26116, parm_start=18102
// OP_STATE	15152	18102	0
// OP_DONE	0	0	0
void () dude_died5 = [72, dude_died6]
{
};

// dude_died6
// function begins at statement 26118, parm_start=18103
// OP_STATE	9292	18103	0
// OP_DONE	0	0	0
void () dude_died6 = [73, dude_died7]
{
};

// dude_died7
// function begins at statement 26120, parm_start=18104
// OP_STATE	15155	18104	0
// OP_DONE	0	0	0
void () dude_died7 = [74, dude_died8]
{
};

// dude_died8
// function begins at statement 26122, parm_start=18105
// OP_STATE	15157	18105	0
// OP_DONE	0	0	0
void () dude_died8 = [75, dude_died9]
{
};

// dude_died9
// function begins at statement 26124, parm_start=18106
// OP_STATE	15159	18105	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_died9 = [76, dude_died9]
{
    DudeDead();
};

// dude_diee1
// function begins at statement 26127, parm_start=18106
// OP_STATE	15161	18106	0
// OP_DONE	0	0	0
void () dude_diee1 = [77, dude_diee2]
{
};

// dude_diee2
// function begins at statement 26129, parm_start=18107
// OP_STATE	15163	18107	0
// OP_DONE	0	0	0
void () dude_diee2 = [78, dude_diee3]
{
};

// dude_diee3
// function begins at statement 26131, parm_start=18108
// OP_STATE	15165	18108	0
// OP_DONE	0	0	0
void () dude_diee3 = [79, dude_diee4]
{
};

// dude_diee4
// function begins at statement 26133, parm_start=18109
// OP_STATE	2677	18109	0
// OP_DONE	0	0	0
void () dude_diee4 = [80, dude_diee5]
{
};

// dude_diee5
// function begins at statement 26135, parm_start=18110
// OP_STATE	11033	18110	0
// OP_DONE	0	0	0
void () dude_diee5 = [81, dude_diee6]
{
};

// dude_diee6
// function begins at statement 26137, parm_start=18111
// OP_STATE	15169	18111	0
// OP_DONE	0	0	0
void () dude_diee6 = [82, dude_diee7]
{
};

// dude_diee7
// function begins at statement 26139, parm_start=18112
// OP_STATE	15171	18112	0
// OP_DONE	0	0	0
void () dude_diee7 = [83, dude_diee8]
{
};

// dude_diee8
// function begins at statement 26141, parm_start=18113
// OP_STATE	15173	18113	0
// OP_DONE	0	0	0
void () dude_diee8 = [84, dude_diee9]
{
};

// dude_diee9
// function begins at statement 26143, parm_start=18114
// OP_STATE	11037	18113	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_diee9 = [85, dude_diee9]
{
    DudeDead();
};

// dude_die_ax1
// function begins at statement 26146, parm_start=18114
// OP_STATE	13015	18114	0
// OP_DONE	0	0	0
void () dude_die_ax1 = [24, dude_die_ax2]
{
};

// dude_die_ax2
// function begins at statement 26148, parm_start=18115
// OP_STATE	1380	18115	0
// OP_DONE	0	0	0
void () dude_die_ax2 = [25, dude_die_ax3]
{
};

// dude_die_ax3
// function begins at statement 26150, parm_start=18116
// OP_STATE	17369	18116	0
// OP_DONE	0	0	0
void () dude_die_ax3 = [26, dude_die_ax4]
{
};

// dude_die_ax4
// function begins at statement 26152, parm_start=18117
// OP_STATE	17371	18117	0
// OP_DONE	0	0	0
void () dude_die_ax4 = [27, dude_die_ax5]
{
};

// dude_die_ax5
// function begins at statement 26154, parm_start=18118
// OP_STATE	17373	18118	0
// OP_DONE	0	0	0
void () dude_die_ax5 = [28, dude_die_ax6]
{
};

// dude_die_ax6
// function begins at statement 26156, parm_start=18119
// OP_STATE	14808	18119	0
// OP_DONE	0	0	0
void () dude_die_ax6 = [29, dude_die_ax7]
{
};

// dude_die_ax7
// function begins at statement 26158, parm_start=18120
// OP_STATE	2522	18120	0
// OP_DONE	0	0	0
void () dude_die_ax7 = [30, dude_die_ax8]
{
};

// dude_die_ax8
// function begins at statement 26160, parm_start=18121
// OP_STATE	10956	18121	0
// OP_DONE	0	0	0
void () dude_die_ax8 = [31, dude_die_ax9]
{
};

// dude_die_ax9
// function begins at statement 26162, parm_start=18122
// OP_STATE	2657	18121	0
// OP_CALL0	17973	0	0
// OP_DONE	0	0	0
void () dude_die_ax9 = [32, dude_die_ax9]
{
    DudeDead();
};

// spawn_dude
// function begins at statement 26165, parm_start=18122
// OP_STORE_F	817	18122	0
// OP_STORE_ENT	740	18124	0
// OP_NOT_F	18122	0	18125
// OP_IFNOT	18125	39	0
// OP_STORE_V	740	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11177	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	740	0
// OP_EQ_E	740	30	18126
// OP_IFNOT	18126	6	0
// OP_STORE_V	740	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11177	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	740	0
// OP_STORE_F	819	18122	0
// OP_LOAD_V	740	105	18127
// OP_STORE_V	18127	4	0
// OP_STORE_V	2223	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	18123	0
// OP_NE_E	18123	30	18130
// OP_AND	18130	18122	18131
// OP_IFNOT	18131	12	0
// OP_LOAD_F	18123	104	18132
// OP_EQ_F	18132	243	18133
// OP_LOAD_F	18123	104	18134
// OP_EQ_F	18134	244	18135
// OP_OR	18133	18135	18136
// OP_NOT_F	18136	0	18137
// OP_IFNOT	18137	2	0
// OP_STORE_F	817	18122	0
// OP_LOAD_ENT	18123	164	18138
// OP_STORE_ENT	18138	18123	0
// OP_GOTO	-13	0	0
// OP_NOT_F	18122	0	18139
// OP_EQ_E	740	18124	18140
// OP_AND	18139	18140	18141
// OP_IFNOT	18141	2	0
// OP_RETURN	817	0	0
// OP_GOTO	-39	0	0
// OP_STORE_ENT	740	28	0
// OP_CALL0	10910	0	0
// OP_RETURN	819	0	0
// OP_DONE	0	0	0
float () spawn_dude = 
{
    local float clear;
    local entity trav;
    local entity first_spot;
    clear = 0;
    first_spot = last_dude_spawn;
    
    while(!clear)
    {
        last_dude_spawn = find(last_dude_spawn, classname, "rally_spawn_dude");
        
        if(last_dude_spawn == world)
        {
            last_dude_spawn = find(last_dude_spawn, classname, "rally_spawn_dude");
        }
        
        clear = 1;
        trav = findradius(last_dude_spawn.origin, 64);
        
        while((trav != world) && clear)
        {
            
            if(!((trav.solid == SOLID_NOT) || (trav.solid == SOLID_TRIGGER)))
            {
                clear = 0;
            }
            
            trav = trav.chain;
        }
        
        
        if(!clear && (last_dude_spawn == first_spot))
        {
            return 0;
        }
        
    }
    
    self = last_dude_spawn;
    rally_spawn_dude();
    return 1;
};

// ThrowDudeGib
// function begins at statement 26211, parm_start=18143
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18147	0
// OP_ADDRESS	18147	105	18148
// OP_LOAD_V	28	105	18151
// OP_STOREP_V	18151	18148	0
// OP_STORE_V	18147	4	0
// OP_STORE_V	18143	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	18147	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	18147	113	18154
// OP_MUL_VF	18144	883	18157
// OP_CALL0	466	0	0
// OP_MUL_FV	1	18160	18163
// OP_ADD_V	18157	18163	18166
// OP_CALL0	466	0	0
// OP_MUL_FV	1	18169	18172
// OP_ADD_V	18166	18172	18175
// OP_ADD_V	18175	18178	18181
// OP_STOREP_V	18181	18154	0
// OP_ADDRESS	18147	103	18184
// OP_STOREP_F	241	18184	0
// OP_ADDRESS	18147	104	18185
// OP_STOREP_F	243	18185	0
// OP_ADDRESS	18147	122	18186
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	18187
// OP_STOREP_F	18187	18186	0
// OP_ADDRESS	18147	123	18188
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	18189
// OP_STOREP_F	18189	18188	0
// OP_ADDRESS	18147	124	18190
// OP_CALL0	466	0	0
// OP_MUL_F	1	2127	18191
// OP_STOREP_F	18191	18190	0
// OP_ADDRESS	18147	148	18192
// OP_STOREP_FNC	533	18192	0
// OP_ADDRESS	18147	102	18193
// OP_STOREP_F	31	18193	0
// OP_ADDRESS	18147	150	18194
// OP_ADD_F	31	855	18195
// OP_CALL0	466	0	0
// OP_MUL_F	1	855	18196
// OP_ADD_F	18195	18196	18197
// OP_STOREP_F	18197	18194	0
// OP_ADDRESS	18147	131	18198
// OP_STOREP_F	817	18198	0
// OP_ADDRESS	18147	182	18199
// OP_STOREP_F	817	18199	0
// OP_DONE	0	0	0
void (string gibname, vector impact) ThrowDudeGib = 
{
    local entity new;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, '0.000 0.000 0.000', '0.000 0.000 0.000');
    new.velocity = (((impact * 1.5) + (random() * '500.000 0.000 0.000')) + (random() * '0.000 500.000 0.000')) + '-250.000 -250.000 220.000';
    new.movetype = MOVETYPE_BOUNCE;
    new.solid = SOLID_NOT;
    new.avelocity_x = random() * 600;
    new.avelocity_y = random() * 600;
    new.avelocity_z = random() * 600;
    new.think = SUB_Remove;
    new.ltime = time;
    new.nextthink = (time + 10) + (random() * 10);
    new.frame = 0;
    new.flags = 0;
};

// GibDude
// function begins at statement 26264, parm_start=18201
// OP_STORE_V	12129	4	0
// OP_STORE_V	18201	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12130	4	0
// OP_STORE_V	18201	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12131	4	0
// OP_STORE_V	18201	7	0
// OP_CALL2	18142	0	0
// OP_ADDRESS	28	165	18204
// OP_STOREP_F	254	18204	0
// OP_LOAD_S	361	129	18205
// OP_EQ_S	18205	13360	18206
// OP_IFNOT	18206	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12077	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	361	129	18207
// OP_EQ_S	18207	13372	18208
// OP_IFNOT	18208	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12077	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	18209
// OP_IFNOT	18209	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12086	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12087	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	12128	4	0
// OP_LOAD_F	28	152	18210
// OP_STORE_V	18210	7	0
// OP_CALL2	14958	0	0
// OP_DONE	0	0	0
void (vector impact_vec) GibDude = 
{
    ThrowDudeGib("progs/gib1.mdl", impact_vec);
    ThrowDudeGib("progs/gib2.mdl", impact_vec);
    ThrowDudeGib("progs/gib3.mdl", impact_vec);
    self.deadflag = DEAD_DEAD;
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", 1, ATTN_NONE);
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath2")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", 1, ATTN_NONE);
        return;
    }
    
    if(random() < 0.5)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", 1, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NONE);
    }
    
    ThrowHead("progs/h_player.mdl", self.health);
};

// dude_touch
// function begins at statement 26316, parm_start=18212
// OP_LOAD_S	29	129	18214
// OP_NE_S	18214	880	18215
// OP_IFNOT	18215	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	117	18216
// OP_STORE_V	18216	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	29	113	18219
// OP_MUL_VF	59	4664	18222
// OP_SUB_V	18219	18222	18225
// OP_STORE_V	18225	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	18213	0
// OP_LOAD_F	29	154	18228
// OP_EQ_F	18228	277	18229
// OP_LOAD_F	29	217	18230
// OP_GT	18230	817	18231
// OP_AND	18229	18231	18232
// OP_IFNOT	18232	23	0
// OP_MUL_F	18213	825	18233
// OP_STORE_F	18233	18213	0
// OP_ADDRESS	29	157	18234
// OP_ADDRESS	29	217	18235
// OP_LOAD_F	29	217	18236
// OP_SUB_F	18236	825	18237
// OP_STOREP_F	18237	18235	0
// OP_STOREP_F	18237	18234	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3631	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_ENT	29	548	18238
// OP_ADDRESS	18238	133	18239
// OP_LOAD_ENT	29	548	18240
// OP_LOAD_F	18240	133	18241
// OP_BITOR	18241	350	18242
// OP_STOREP_F	18242	18239	0
// OP_ADDRESS	29	656	18243
// OP_STOREP_F	31	18243	0
// OP_DIV_F	778	821	18244
// OP_LT	18213	18244	18245
// OP_IFNOT	18245	24	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	18246
// OP_IFNOT	18246	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3649	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3650	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	29	7	0
// OP_STORE_V	29	10	0
// OP_DIV_F	18213	1632	18247
// OP_STORE_V	18247	13	0
// OP_CALL4	534	0	0
// OP_GOTO	34	0	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	18248
// OP_IFNOT	18248	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3649	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3650	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	152	18249
// OP_MUL_F	18250	18213	18251
// OP_STOREP_F	18251	18249	0
// OP_LOAD_V	29	113	18252
// OP_STORE_V	18252	4	0
// OP_CALL1	18200	0	0
// OP_EQ_F	738	825	18255
// OP_IFNOT	18255	9	0
// OP_ADD_F	743	819	18256
// OP_STORE_F	18256	743	0
// OP_ADD_F	42	819	18257
// OP_STORE_F	18257	42	0
// OP_STORE_V	353	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	507	0	0
// OP_CALL0	17991	0	0
// OP_CALL0	17972	0	0
// OP_DONE	0	0	0
void () dude_touch = 
{
    local float veh_speed;
    local float impact;
    
    if(other.classname != "player")
    {
        return;
    }
    
    makevectors(self.angles);
    impact = vlen(other.velocity - (v_forward * 320));
    
    if((other.weapon == IT_ROOBAR) && (other.ammo_roobar > 0))
    {
        impact = impact * 4;
        other.currentammo = other.ammo_roobar = other.ammo_roobar - 4;
        sound(self, CHAN_AUTO, "rally/process/elect02.wav", 1, ATTN_NORM);
        other.veh_body.effects = other.veh_body.effects | EF_DIMLIGHT;
        other.last_crash = time;
    }
    
    if(impact < (MAX_SPEED / 2))
    {
        if(random() < 0.5)
        {
            sound(self, CHAN_AUTO, "rally/dude/sevpain1.wav", 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_AUTO, "rally/dude/sevpain2.wav", 1, ATTN_NORM);
        }
        
        T_Damage(self, other, other, impact / 40);
    }
    else
    {
        if(random() < 0.5)
        {
            sound(self, CHAN_AUTO, "rally/dude/sevpain1.wav", 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_AUTO, "rally/dude/sevpain2.wav", 1, ATTN_NORM);
        }
        
        self.health = -0.2 * impact;
        GibDude(other.velocity);
        
        if(rally_type_index == 4)
        {
            cult_kills = cult_kills + 1;
            killed_monsters = killed_monsters + 1;
            WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
            CheckCultKills();
        }
        
        spawn_dude();
    }
    
};

// dude_fire_grenade
// function begins at statement 26417, parm_start=18258
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9184	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18258	0
// OP_ADDRESS	18258	201	18260
// OP_STOREP_ENT	28	18260	0
// OP_ADDRESS	18258	103	18261
// OP_STOREP_F	241	18261	0
// OP_ADDRESS	18258	104	18262
// OP_STOREP_F	245	18262	0
// OP_ADDRESS	18258	129	18263
// OP_STOREP_S	9795	18263	0
// OP_ADDRESS	18258	113	18264
// OP_STOREP_V	1584	18264	0
// OP_ADDRESS	18258	121	18267
// OP_STOREP_V	9806	18267	0
// OP_ADDRESS	18258	146	18270
// OP_STOREP_FNC	9730	18270	0
// OP_ADDRESS	18258	647	18271
// OP_ADD_F	31	827	18272
// OP_STOREP_F	18272	18271	0
// OP_ADDRESS	18258	109	18273
// OP_LOAD_V	18258	105	18276
// OP_STOREP_V	18276	18273	0
// OP_ADDRESS	18258	150	18279
// OP_ADD_F	31	819	18280
// OP_STOREP_F	18280	18279	0
// OP_ADDRESS	18258	148	18281
// OP_STOREP_FNC	9754	18281	0
// OP_STORE_V	18258	4	0
// OP_STORE_V	9821	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	18258	4	0
// OP_STORE_V	6124	7	0
// OP_STORE_V	18282	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	18258	4	0
// OP_LOAD_V	28	105	18285
// OP_STORE_V	18285	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	648	18288
// OP_STOREP_F	31	18288	0
// OP_DONE	0	0	0
void () dude_fire_grenade = 
{
    local entity missile;
    local entity mpuff;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", 1, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "grenade";
    missile.velocity = '0.000 0.000 200.000';
    missile.avelocity = '0.000 300.000 0.000';
    missile.touch = GrenadeTouch;
    missile.last_idle = time + 5;
    missile.oldorigin = missile.origin;
    missile.nextthink = time + 1;
    missile.think = GrenadeThink;
    setmodel(missile, "models/detnator.mdl");
    setsize(missile, '-4.000 -4.000 0.000', '4.000 4.000 12.000');
    setorigin(missile, self.origin);
    self.last_rev = time;
};

// dude_fire_rocket
// function begins at statement 26464, parm_start=18289
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9177	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18290	0
// OP_ADDRESS	18290	647	18299
// OP_STOREP_F	31	18299	0
// OP_ADDRESS	18290	201	18300
// OP_STOREP_ENT	28	18300	0
// OP_ADDRESS	18290	103	18301
// OP_STOREP_F	240	18301	0
// OP_ADDRESS	18290	104	18302
// OP_STOREP_F	245	18302	0
// OP_STORE_V	59	18296	0
// OP_LOAD_V	28	175	18303
// OP_STORE_V	18303	18293	0
// OP_STORE_F	817	18293	0
// OP_STORE_V	18293	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	59	18293	0
// OP_STORE_ENT	18289	18292	0
// OP_NE_E	18289	30	18306
// OP_IFNOT	18306	15	0
// OP_STORE_V	18292	4	0
// OP_STORE_V	18307	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	18292	4	0
// OP_STORE_V	9539	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	18290	181	18308
// OP_STOREP_ENT	18292	18308	0
// OP_ADDRESS	18290	150	18309
// OP_ADD_F	31	32	18310
// OP_STOREP_F	18310	18309	0
// OP_ADDRESS	18290	148	18311
// OP_STOREP_FNC	7269	18311	0
// OP_GOTO	6	0	0
// OP_ADDRESS	18290	150	18312
// OP_ADD_F	31	827	18313
// OP_STOREP_F	18313	18312	0
// OP_ADDRESS	18290	148	18314
// OP_STOREP_FNC	533	18314	0
// OP_STORE_V	18296	59	0
// OP_ADDRESS	18290	113	18315
// OP_STOREP_V	59	18315	0
// OP_ADDRESS	18290	113	18318
// OP_LOAD_V	18290	113	18321
// OP_MUL_VF	18321	1820	18324
// OP_STOREP_V	18324	18318	0
// OP_ADDRESS	18290	117	18327
// OP_LOAD_V	18290	113	18330
// OP_STORE_V	18330	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	18327	0
// OP_ADDRESS	18290	146	18333
// OP_STOREP_FNC	7268	18333	0
// OP_STORE_V	18290	4	0
// OP_STORE_V	9570	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	18290	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	18290	4	0
// OP_LOAD_V	28	105	18334
// OP_MUL_VF	59	843	18337
// OP_ADD_V	18334	18337	18340
// OP_STORE_V	18340	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	648	18343
// OP_STOREP_F	31	18343	0
// OP_DONE	0	0	0
void (entity targ) dude_fire_rocket = 
{
    local entity missile;
    local entity mpuff;
    local entity missile_enemy;
    local vector dir;
    local vector old_forward;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    missile = spawn();
    missile.last_idle = time;
    missile.owner = self;
    missile.movetype = MOVETYPE_FLYMISSILE;
    missile.solid = SOLID_BBOX;
    old_forward = v_forward;
    dir = self.v_angle;
    dir_x = 0;
    makevectors(dir);
    dir = v_forward;
    missile_enemy = targ;
    if(targ != world)
    {
        sprint(missile_enemy, "Missile lock!\n");
        commentary(missile_enemy, "process/buzztst1.wav");
        missile.enemy = missile_enemy;
        missile.nextthink = time + frametime;
        missile.think = RocketSeek;
    }
    else
    {
        missile.nextthink = time + 5;
        missile.think = SUB_Remove;
    }
    
    v_forward = old_forward;
    missile.velocity = v_forward;
    missile.velocity = missile.velocity * 500;
    missile.angles = vectoangles(missile.velocity);
    missile.touch = T_MissileTouch;
    setmodel(missile, "models/missile.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, self.origin + (v_forward * 8));
    self.last_rev = time;
};

float dukes_spawned;
// rally_spawn_dude
// function begins at statement 26539, parm_start=18345
// OP_EQ_F	738	825	18346
// OP_AND	689	18346	18347
// OP_GE	18344	792	18348
// OP_AND	18347	18348	18349
// OP_IFNOT	18349	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	18344	819	18350
// OP_STORE_F	18350	18344	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18345	0
// OP_ADDRESS	18345	117	18351
// OP_LOAD_V	28	117	18354
// OP_STOREP_V	18354	18351	0
// OP_ADDRESS	18345	175	18357
// OP_LOAD_V	18345	117	18360
// OP_STOREP_V	18360	18357	0
// OP_STORE_V	18345	4	0
// OP_LOAD_V	28	105	18363
// OP_STORE_V	18363	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	18345	182	18366
// OP_LOAD_F	18345	182	18367
// OP_BITOR	18367	224	18368
// OP_STOREP_F	18368	18366	0
// OP_STORE_ENT	18345	28	0
// OP_ADDRESS	28	129	18369
// OP_STOREP_S	3609	18369	0
// OP_ADDRESS	28	104	18370
// OP_STOREP_F	246	18370	0
// OP_ADDRESS	28	103	18371
// OP_STOREP_F	235	18371	0
// OP_ADDRESS	28	163	18372
// OP_STOREP_F	258	18372	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12147	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	303	7	0
// OP_STORE_V	306	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	152	18373
// OP_STOREP_F	4760	18373	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	18374
// OP_IFNOT	18374	10	0
// OP_STORE_V	18375	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	18376
// OP_STORE_V	18376	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_ADDRESS	28	191	18379
// OP_LOAD_F	28	119	18380
// OP_STOREP_F	18380	18379	0
// OP_ADDRESS	28	146	18381
// OP_STOREP_FNC	18211	18381	0
// OP_ADDRESS	28	370	18382
// OP_STOREP_FNC	17731	18382	0
// OP_ADDRESS	28	371	18383
// OP_STOREP_FNC	17731	18383	0
// OP_ADDRESS	28	372	18384
// OP_STOREP_FNC	17731	18384	0
// OP_ADDRESS	28	376	18385
// OP_STOREP_FNC	18018	18385	0
// OP_ADDRESS	28	375	18386
// OP_STOREP_FNC	17957	18386	0
// OP_ADDRESS	28	648	18387
// OP_STOREP_F	817	18387	0
// OP_ADDRESS	28	17698	18388
// OP_STOREP_F	9155	18388	0
// OP_CALL0	15294	0	0
// OP_DONE	0	0	0
void () rally_spawn_dude = 
{
    local entity dude;
    
    if((challenge && (rally_type_index == 4)) && (dukes_spawned >= NUM_DUKES))
    {
        return;
    }
    
    dukes_spawned = dukes_spawned + 1;
    dude = spawn();
    dude.angles = self.angles;
    dude.v_angle = dude.angles;
    setorigin(dude, self.origin);
    dude.flags = dude.flags | FL_MONSTER;
    self = dude;
    self.classname = "rally_dude";
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_AIM;
    setmodel(self, "models/dude.mdl");
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.health = 200;
    
    if(!droptofloor())
    {
        dprint("dude fell out of level at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.ideal_yaw = self.angles_y;
    self.touch = dude_touch;
    self.th_stand = dude_run;
    self.th_walk = dude_run;
    self.th_run = dude_run;
    self.th_die = DudeDie;
    self.th_pain = dude_axpain1;
    self.last_rev = 0;
    self.last_guide_touch = -100;
    walkmonster_start();
};

// dude_guide_touch
// function begins at statement 26614, parm_start=18390
// OP_LOAD_S	29	129	18390
// OP_EQ_S	18390	3609	18391
// OP_IFNOT	18391	6	0
// OP_ADDRESS	29	117	18392
// OP_LOAD_V	28	117	18395
// OP_STOREP_V	18395	18392	0
// OP_ADDRESS	29	17698	18398
// OP_STOREP_F	31	18398	0
// OP_ADDRESS	28	104	18399
// OP_STOREP_F	244	18399	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	18400
// OP_STORE_V	18400	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () dude_guide_touch = 
{
    
    if(other.classname == "rally_dude")
    {
        other.angles = self.angles;
        other.last_guide_touch = time;
    }
    
    self.solid = SOLID_TRIGGER;
    setorigin(self, self.origin);
};

// rally_dude_guide
// function begins at statement 26629, parm_start=18404
// OP_STORE_V	28	4	0
// OP_STORE_V	303	7	0
// OP_STORE_V	306	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	104	18404
// OP_STOREP_F	244	18404	0
// OP_ADDRESS	28	103	18405
// OP_STOREP_F	233	18405	0
// OP_ADDRESS	28	146	18406
// OP_STOREP_FNC	18389	18406	0
// OP_DONE	0	0	0
void () rally_dude_guide = 
{
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_NONE;
    self.touch = dude_guide_touch;
};

