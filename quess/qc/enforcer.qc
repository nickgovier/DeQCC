// Laser_Touch
// function begins at statement 20457, parm_start=11732
// OP_LOAD_ENT	28	201	11735
// OP_EQ_E	29	11735	11736
// OP_IFNOT	11736	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	11737
// OP_STORE_V	11737	4	0
// OP_CALL1	485	0	0
// OP_EQ_F	1	282	11740
// OP_IFNOT	11740	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8082	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	329	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	105	11741
// OP_LOAD_V	28	113	11744
// OP_STORE_V	11744	4	0
// OP_CALL1	455	0	0
// OP_MUL_FV	1502	1	11747
// OP_SUB_V	11741	11747	11750
// OP_STORE_V	11750	11732	0
// OP_LOAD_F	29	152	11753
// OP_IFNOT	11753	14	0
// OP_STORE_V	11732	4	0
// OP_LOAD_V	28	113	11754
// OP_MUL_VF	11754	922	11757
// OP_STORE_V	11757	7	0
// OP_STORE_V	2157	10	0
// OP_CALL3	586	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	11760
// OP_STORE_V	11760	10	0
// OP_STORE_V	2157	13	0
// OP_CALL4	521	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	11732	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	11733	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	11734	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () Laser_Touch = 
{
    local vector org;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", 1, ATTN_STATIC);
    org = self.origin - (8 * normalize(self.velocity));
    if(other.health)
    {
        SpawnBlood(org, self.velocity * 0.2, 15);
        T_Damage(other, self, self.owner, 15);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
    remove(self);
};

// LaunchLaser
// function begins at statement 20515, parm_start=11761
// OP_LOAD_S	28	129	11767
// OP_EQ_S	11767	1366	11768
// OP_IFNOT	11768	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	11764	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	11764	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	346	0
// OP_ADDRESS	346	201	11769
// OP_STOREP_ENT	28	11769	0
// OP_ADDRESS	346	103	11770
// OP_STOREP_F	231	11770	0
// OP_ADDRESS	346	104	11771
// OP_STOREP_F	240	11771	0
// OP_ADDRESS	346	133	11772
// OP_STOREP_F	337	11772	0
// OP_STORE_V	346	4	0
// OP_STORE_V	8081	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	11761	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	346	113	11773
// OP_MUL_VF	11764	3343	11776
// OP_STOREP_V	11776	11773	0
// OP_ADDRESS	346	117	11779
// OP_LOAD_V	346	113	11782
// OP_STORE_V	11782	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	11779	0
// OP_ADDRESS	346	150	11785
// OP_ADD_F	31	1660	11786
// OP_STOREP_F	11786	11785	0
// OP_ADDRESS	346	148	11787
// OP_STOREP_FNC	520	11787	0
// OP_ADDRESS	346	146	11788
// OP_STOREP_FNC	11731	11788	0
// OP_DONE	0	0	0
void (vector org, vector vec) LaunchLaser = 
{
    
    if(self.classname == "monster_enforcer")
    {
        sound(self, CHAN_WEAPON, "enforcer/enfire.wav", 1, ATTN_NORM);
    }
    
    vec = normalize(vec);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_FLY;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/laser.mdl");
    setsize(newmis, '0 0 0', '0 0 0');
    setorigin(newmis, org);
    newmis.velocity = vec * 600;
    newmis.angles = vectoangles(newmis.velocity);
    newmis.nextthink = time + 5;
    newmis.think = SUB_Remove;
    newmis.touch = Laser_Touch;
};

// enforcer_fire
// function begins at statement 20563, parm_start=11790
// OP_ADDRESS	28	133	11793
// OP_LOAD_F	28	133	11794
// OP_BITOR	11794	335	11795
// OP_STOREP_F	11795	11793	0
// OP_LOAD_V	28	117	11796
// OP_STORE_V	11796	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	11799
// OP_MUL_VF	59	1004	11802
// OP_ADD_V	11799	11802	11805
// OP_MUL_VF	65	11808	11809
// OP_ADD_V	11805	11809	11812
// OP_ADD_V	11812	2893	11815
// OP_STORE_V	11815	11790	0
// OP_STORE_V	11790	4	0
// OP_LOAD_ENT	28	181	11818
// OP_LOAD_V	11818	105	11819
// OP_LOAD_V	28	105	11822
// OP_SUB_V	11819	11822	11825
// OP_STORE_V	11825	7	0
// OP_CALL2	8035	0	0
// OP_DONE	0	0	0
void () enforcer_fire = 
{
    local vector org;
    self.effects = self.effects | EF_MUZZLEFLASH;
    makevectors(self.angles);
    org = ((self.origin + (v_forward * 30)) + (v_right * 8.5)) + '0 0 16';
    LaunchLaser(org, self.enemy.origin - self.origin);
};

// enf_stand1
// function begins at statement 20585, parm_start=11829
// OP_STATE	650	11829	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand1 = [0, enf_stand2]
{
    ai_stand();
};

// enf_stand2
// function begins at statement 20588, parm_start=11830
// OP_STATE	708	11830	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand2 = [1, enf_stand3]
{
    ai_stand();
};

// enf_stand3
// function begins at statement 20591, parm_start=11831
// OP_STATE	929	11831	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand3 = [2, enf_stand4]
{
    ai_stand();
};

// enf_stand4
// function begins at statement 20594, parm_start=11832
// OP_STATE	819	11832	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand4 = [3, enf_stand5]
{
    ai_stand();
};

// enf_stand5
// function begins at statement 20597, parm_start=11833
// OP_STATE	1835	11833	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand5 = [4, enf_stand6]
{
    ai_stand();
};

// enf_stand6
// function begins at statement 20600, parm_start=11834
// OP_STATE	1660	11834	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand6 = [5, enf_stand7]
{
    ai_stand();
};

// enf_stand7
// function begins at statement 20603, parm_start=11835
// OP_STATE	2107	11828	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () enf_stand7 = [6, enf_stand1]
{
    ai_stand();
};

// enf_walk1
// function begins at statement 20606, parm_start=11836
// OP_STATE	2307	11836	0
// OP_CALL0	453	0	0
// OP_LT	1	922	11837
// OP_IFNOT	11837	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8281	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk1 = [7, enf_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", 1, ATTN_IDLE);
    }
    
    ai_walk(2);
};

// enf_walk2
// function begins at statement 20619, parm_start=11838
// OP_STATE	1502	11838	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk2 = [8, enf_walk3]
{
    ai_walk(4);
};

// enf_walk3
// function begins at statement 20623, parm_start=11839
// OP_STATE	3556	11839	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk3 = [9, enf_walk4]
{
    ai_walk(4);
};

// enf_walk4
// function begins at statement 20627, parm_start=11840
// OP_STATE	1931	11840	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk4 = [10, enf_walk5]
{
    ai_walk(3);
};

// enf_walk5
// function begins at statement 20631, parm_start=11841
// OP_STATE	3931	11841	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk5 = [11, enf_walk6]
{
    ai_walk(1);
};

// enf_walk6
// function begins at statement 20635, parm_start=11842
// OP_STATE	2532	11842	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk6 = [12, enf_walk7]
{
    ai_walk(2);
};

// enf_walk7
// function begins at statement 20639, parm_start=11843
// OP_STATE	8427	11843	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk7 = [13, enf_walk8]
{
    ai_walk(2);
};

// enf_walk8
// function begins at statement 20643, parm_start=11844
// OP_STATE	3153	11844	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk8 = [14, enf_walk9]
{
    ai_walk(1);
};

// enf_walk9
// function begins at statement 20647, parm_start=11845
// OP_STATE	2157	11845	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk9 = [15, enf_walk10]
{
    ai_walk(2);
};

// enf_walk10
// function begins at statement 20651, parm_start=11846
// OP_STATE	3273	11846	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk10 = [16, enf_walk11]
{
    ai_walk(4);
};

// enf_walk11
// function begins at statement 20655, parm_start=11847
// OP_STATE	5588	11847	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk11 = [17, enf_walk12]
{
    ai_walk(4);
};

// enf_walk12
// function begins at statement 20659, parm_start=11848
// OP_STATE	3576	11848	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk12 = [18, enf_walk13]
{
    ai_walk(1);
};

// enf_walk13
// function begins at statement 20663, parm_start=11849
// OP_STATE	8435	11849	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk13 = [19, enf_walk14]
{
    ai_walk(2);
};

// enf_walk14
// function begins at statement 20667, parm_start=11850
// OP_STATE	1017	11850	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk14 = [20, enf_walk15]
{
    ai_walk(3);
};

// enf_walk15
// function begins at statement 20671, parm_start=11851
// OP_STATE	8438	11851	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk15 = [21, enf_walk16]
{
    ai_walk(4);
};

// enf_walk16
// function begins at statement 20675, parm_start=11852
// OP_STATE	8440	11835	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () enf_walk16 = [22, enf_walk1]
{
    ai_walk(2);
};

// enf_run1
// function begins at statement 20679, parm_start=11853
// OP_STATE	8442	11853	0
// OP_CALL0	453	0	0
// OP_LT	1	922	11854
// OP_IFNOT	11854	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8281	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	3576	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run1 = [23, enf_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", 1, ATTN_IDLE);
    }
    
    ai_run(18);
};

// enf_run2
// function begins at statement 20692, parm_start=11855
// OP_STATE	4969	11855	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run2 = [24, enf_run3]
{
    ai_run(14);
};

// enf_run3
// function begins at statement 20696, parm_start=11856
// OP_STATE	2171	11856	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run3 = [25, enf_run4]
{
    ai_run(7);
};

// enf_run4
// function begins at statement 20700, parm_start=11857
// OP_STATE	8446	11857	0
// OP_STORE_V	2532	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run4 = [26, enf_run5]
{
    ai_run(12);
};

// enf_run5
// function begins at statement 20704, parm_start=11858
// OP_STATE	8448	11858	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run5 = [27, enf_run6]
{
    ai_run(14);
};

// enf_run6
// function begins at statement 20708, parm_start=11859
// OP_STATE	8450	11859	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run6 = [28, enf_run7]
{
    ai_run(14);
};

// enf_run7
// function begins at statement 20712, parm_start=11860
// OP_STATE	5829	11860	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run7 = [29, enf_run8]
{
    ai_run(7);
};

// enf_run8
// function begins at statement 20716, parm_start=11861
// OP_STATE	1004	11852	0
// OP_STORE_V	3931	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () enf_run8 = [30, enf_run1]
{
    ai_run(11);
};

// enf_atk1
// function begins at statement 20720, parm_start=11862
// OP_STATE	3950	11862	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk1 = [31, enf_atk2]
{
    ai_face();
};

// enf_atk2
// function begins at statement 20723, parm_start=11863
// OP_STATE	959	11863	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk2 = [32, enf_atk3]
{
    ai_face();
};

// enf_atk3
// function begins at statement 20726, parm_start=11864
// OP_STATE	5835	11864	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk3 = [33, enf_atk4]
{
    ai_face();
};

// enf_atk4
// function begins at statement 20729, parm_start=11865
// OP_STATE	5837	11865	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk4 = [34, enf_atk5]
{
    ai_face();
};

// enf_atk5
// function begins at statement 20732, parm_start=11866
// OP_STATE	3325	11866	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk5 = [35, enf_atk6]
{
    ai_face();
};

// enf_atk6
// function begins at statement 20735, parm_start=11867
// OP_STATE	5820	11867	0
// OP_CALL0	11789	0	0
// OP_DONE	0	0	0
void () enf_atk6 = [36, enf_atk7]
{
    enforcer_fire();
};

// enf_atk7
// function begins at statement 20738, parm_start=11868
// OP_STATE	5822	11868	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk7 = [37, enf_atk8]
{
    ai_face();
};

// enf_atk8
// function begins at statement 20741, parm_start=11869
// OP_STATE	5824	11869	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk8 = [38, enf_atk9]
{
    ai_face();
};

// enf_atk9
// function begins at statement 20744, parm_start=11870
// OP_STATE	3325	11870	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk9 = [35, enf_atk10]
{
    ai_face();
};

// enf_atk10
// function begins at statement 20747, parm_start=11871
// OP_STATE	5820	11871	0
// OP_CALL0	11789	0	0
// OP_DONE	0	0	0
void () enf_atk10 = [36, enf_atk11]
{
    enforcer_fire();
};

// enf_atk11
// function begins at statement 20750, parm_start=11872
// OP_STATE	5822	11872	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk11 = [37, enf_atk12]
{
    ai_face();
};

// enf_atk12
// function begins at statement 20753, parm_start=11873
// OP_STATE	5824	11873	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk12 = [38, enf_atk13]
{
    ai_face();
};

// enf_atk13
// function begins at statement 20756, parm_start=11874
// OP_STATE	5826	11874	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () enf_atk13 = [39, enf_atk14]
{
    ai_face();
};

// enf_atk14
// function begins at statement 20759, parm_start=11875
// OP_STATE	2007	11852	0
// OP_CALL0	844	0	0
// OP_STORE_V	11861	4	0
// OP_CALL1	824	0	0
// OP_DONE	0	0	0
void () enf_atk14 = [40, enf_run1]
{
    ai_face();
    SUB_CheckRefire(enf_atk1);
};

// enf_paina1
// function begins at statement 20764, parm_start=11876
// OP_STATE	6094	11876	0
// OP_DONE	0	0	0
void () enf_paina1 = [66, enf_paina2]
{
};

// enf_paina2
// function begins at statement 20766, parm_start=11877
// OP_STATE	6096	11877	0
// OP_DONE	0	0	0
void () enf_paina2 = [67, enf_paina3]
{
};

// enf_paina3
// function begins at statement 20768, parm_start=11878
// OP_STATE	6098	11878	0
// OP_DONE	0	0	0
void () enf_paina3 = [68, enf_paina4]
{
};

// enf_paina4
// function begins at statement 20770, parm_start=11879
// OP_STATE	6100	11852	0
// OP_DONE	0	0	0
void () enf_paina4 = [69, enf_run1]
{
};

// enf_painb1
// function begins at statement 20772, parm_start=11880
// OP_STATE	6101	11880	0
// OP_DONE	0	0	0
void () enf_painb1 = [70, enf_painb2]
{
};

// enf_painb2
// function begins at statement 20774, parm_start=11881
// OP_STATE	6103	11881	0
// OP_DONE	0	0	0
void () enf_painb2 = [71, enf_painb3]
{
};

// enf_painb3
// function begins at statement 20776, parm_start=11882
// OP_STATE	6105	11882	0
// OP_DONE	0	0	0
void () enf_painb3 = [72, enf_painb4]
{
};

// enf_painb4
// function begins at statement 20778, parm_start=11883
// OP_STATE	2988	11883	0
// OP_DONE	0	0	0
void () enf_painb4 = [73, enf_painb5]
{
};

// enf_painb5
// function begins at statement 20780, parm_start=11884
// OP_STATE	6108	11852	0
// OP_DONE	0	0	0
void () enf_painb5 = [74, enf_run1]
{
};

// enf_painc1
// function begins at statement 20782, parm_start=11885
// OP_STATE	6110	11885	0
// OP_DONE	0	0	0
void () enf_painc1 = [75, enf_painc2]
{
};

// enf_painc2
// function begins at statement 20784, parm_start=11886
// OP_STATE	6112	11886	0
// OP_DONE	0	0	0
void () enf_painc2 = [76, enf_painc3]
{
};

// enf_painc3
// function begins at statement 20786, parm_start=11887
// OP_STATE	6114	11887	0
// OP_DONE	0	0	0
void () enf_painc3 = [77, enf_painc4]
{
};

// enf_painc4
// function begins at statement 20788, parm_start=11888
// OP_STATE	6116	11888	0
// OP_DONE	0	0	0
void () enf_painc4 = [78, enf_painc5]
{
};

// enf_painc5
// function begins at statement 20790, parm_start=11889
// OP_STATE	6118	11889	0
// OP_DONE	0	0	0
void () enf_painc5 = [79, enf_painc6]
{
};

// enf_painc6
// function begins at statement 20792, parm_start=11890
// OP_STATE	874	11890	0
// OP_DONE	0	0	0
void () enf_painc6 = [80, enf_painc7]
{
};

// enf_painc7
// function begins at statement 20794, parm_start=11891
// OP_STATE	6121	11891	0
// OP_DONE	0	0	0
void () enf_painc7 = [81, enf_painc8]
{
};

// enf_painc8
// function begins at statement 20796, parm_start=11892
// OP_STATE	6123	11852	0
// OP_DONE	0	0	0
void () enf_painc8 = [82, enf_run1]
{
};

// enf_paind1
// function begins at statement 20798, parm_start=11893
// OP_STATE	6125	11893	0
// OP_DONE	0	0	0
void () enf_paind1 = [83, enf_paind2]
{
};

// enf_paind2
// function begins at statement 20800, parm_start=11894
// OP_STATE	6127	11894	0
// OP_DONE	0	0	0
void () enf_paind2 = [84, enf_paind3]
{
};

// enf_paind3
// function begins at statement 20802, parm_start=11895
// OP_STATE	6128	11895	0
// OP_DONE	0	0	0
void () enf_paind3 = [85, enf_paind4]
{
};

// enf_paind4
// function begins at statement 20804, parm_start=11896
// OP_STATE	6130	11896	0
// OP_STORE_V	929	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () enf_paind4 = [86, enf_paind5]
{
    ai_painforward(2);
};

// enf_paind5
// function begins at statement 20808, parm_start=11897
// OP_STATE	6132	11897	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () enf_paind5 = [87, enf_paind6]
{
    ai_painforward(1);
};

// enf_paind6
// function begins at statement 20812, parm_start=11898
// OP_STATE	6134	11898	0
// OP_DONE	0	0	0
void () enf_paind6 = [88, enf_paind7]
{
};

// enf_paind7
// function begins at statement 20814, parm_start=11899
// OP_STATE	6136	11899	0
// OP_DONE	0	0	0
void () enf_paind7 = [89, enf_paind8]
{
};

// enf_paind8
// function begins at statement 20816, parm_start=11900
// OP_STATE	1608	11900	0
// OP_DONE	0	0	0
void () enf_paind8 = [90, enf_paind9]
{
};

// enf_paind9
// function begins at statement 20818, parm_start=11901
// OP_STATE	6139	11901	0
// OP_DONE	0	0	0
void () enf_paind9 = [91, enf_paind10]
{
};

// enf_paind10
// function begins at statement 20820, parm_start=11902
// OP_STATE	6141	11902	0
// OP_DONE	0	0	0
void () enf_paind10 = [92, enf_paind11]
{
};

// enf_paind11
// function begins at statement 20822, parm_start=11903
// OP_STATE	6143	11903	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () enf_paind11 = [93, enf_paind12]
{
    ai_painforward(1);
};

// enf_paind12
// function begins at statement 20826, parm_start=11904
// OP_STATE	6144	11904	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () enf_paind12 = [94, enf_paind13]
{
    ai_painforward(1);
};

// enf_paind13
// function begins at statement 20830, parm_start=11905
// OP_STATE	6146	11905	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () enf_paind13 = [95, enf_paind14]
{
    ai_painforward(1);
};

// enf_paind14
// function begins at statement 20834, parm_start=11906
// OP_STATE	6148	11906	0
// OP_DONE	0	0	0
void () enf_paind14 = [96, enf_paind15]
{
};

// enf_paind15
// function begins at statement 20836, parm_start=11907
// OP_STATE	6150	11907	0
// OP_DONE	0	0	0
void () enf_paind15 = [97, enf_paind16]
{
};

// enf_paind16
// function begins at statement 20838, parm_start=11908
// OP_STATE	6152	11908	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () enf_paind16 = [98, enf_paind17]
{
    ai_pain(1);
};

// enf_paind17
// function begins at statement 20842, parm_start=11909
// OP_STATE	6154	11909	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () enf_paind17 = [99, enf_paind18]
{
    ai_pain(1);
};

// enf_paind18
// function begins at statement 20846, parm_start=11910
// OP_STATE	2165	11910	0
// OP_DONE	0	0	0
void () enf_paind18 = [100, enf_paind19]
{
};

// enf_paind19
// function begins at statement 20848, parm_start=11911
// OP_STATE	6157	11852	0
// OP_DONE	0	0	0
void () enf_paind19 = [101, enf_run1]
{
};

// enf_pain
// function begins at statement 20850, parm_start=11912
// OP_CALL0	453	0	0
// OP_STORE_F	1	11914	0
// OP_LOAD_F	28	375	11915
// OP_GT	11915	31	11916
// OP_IFNOT	11916	2	0
// OP_RETURN	0	0	0
// OP_LT	11914	1727	11917
// OP_IFNOT	11917	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8277	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8279	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LT	11914	922	11918
// OP_IFNOT	11918	6	0
// OP_ADDRESS	28	375	11919
// OP_ADD_F	31	708	11920
// OP_STOREP_F	11920	11919	0
// OP_CALL0	11875	0	0
// OP_GOTO	19	0	0
// OP_LT	11914	923	11921
// OP_IFNOT	11921	6	0
// OP_ADDRESS	28	375	11922
// OP_ADD_F	31	708	11923
// OP_STOREP_F	11923	11922	0
// OP_CALL0	11879	0	0
// OP_GOTO	12	0	0
// OP_LT	11914	3100	11924
// OP_IFNOT	11924	6	0
// OP_ADDRESS	28	375	11925
// OP_ADD_F	31	708	11926
// OP_STOREP_F	11926	11925	0
// OP_CALL0	11884	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	375	11927
// OP_ADD_F	31	929	11928
// OP_STOREP_F	11928	11927	0
// OP_CALL0	11892	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) enf_pain = 
{
    local float r;
    r = random();
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    if(r < 0.5)
    {
        sound(self, CHAN_VOICE, "enforcer/pain1.wav", 1, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_VOICE, "enforcer/pain2.wav", 1, ATTN_NORM);
    }
    
    if(r < 0.2)
    {
        self.pain_finished = time + 1;
        enf_paina1();
    }
    else
    {
        if(r < 0.4)
        {
            self.pain_finished = time + 1;
            enf_painb1();
        }
        else
        {
            if(r < 0.7)
            {
                self.pain_finished = time + 1;
                enf_painc1();
            }
            else
            {
                self.pain_finished = time + 2;
                enf_paind1();
            }
            
        }
        
    }
    
};

// enf_die1
// function begins at statement 20897, parm_start=11930
// OP_STATE	6160	11930	0
// OP_DONE	0	0	0
void () enf_die1 = [41, enf_die2]
{
};

// enf_die2
// function begins at statement 20899, parm_start=11931
// OP_STATE	6162	11931	0
// OP_DONE	0	0	0
void () enf_die2 = [42, enf_die3]
{
};

// enf_die3
// function begins at statement 20901, parm_start=11932
// OP_STATE	6164	11932	0
// OP_ADDRESS	28	104	11933
// OP_STOREP_F	238	11933	0
// OP_ADDRESS	28	161	11934
// OP_STOREP_F	1660	11934	0
// OP_DONE	0	0	0
void () enf_die3 = [43, enf_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = 5;
};

// enf_die4
// function begins at statement 20907, parm_start=11935
// OP_STATE	6166	11935	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die4 = [44, enf_die5]
{
    ai_forward(14);
};

// enf_die5
// function begins at statement 20911, parm_start=11936
// OP_STATE	1572	11936	0
// OP_STORE_V	929	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die5 = [45, enf_die6]
{
    ai_forward(2);
};

// enf_die6
// function begins at statement 20915, parm_start=11937
// OP_STATE	6169	11937	0
// OP_DONE	0	0	0
void () enf_die6 = [46, enf_die7]
{
};

// enf_die7
// function begins at statement 20917, parm_start=11938
// OP_STATE	6171	11938	0
// OP_DONE	0	0	0
void () enf_die7 = [47, enf_die8]
{
};

// enf_die8
// function begins at statement 20919, parm_start=11939
// OP_STATE	6173	11939	0
// OP_DONE	0	0	0
void () enf_die8 = [48, enf_die9]
{
};

// enf_die9
// function begins at statement 20921, parm_start=11940
// OP_STATE	6175	11940	0
// OP_STORE_V	819	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die9 = [49, enf_die10]
{
    ai_forward(3);
};

// enf_die10
// function begins at statement 20925, parm_start=11941
// OP_STATE	2509	11941	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die10 = [50, enf_die11]
{
    ai_forward(5);
};

// enf_die11
// function begins at statement 20929, parm_start=11942
// OP_STATE	6068	11942	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die11 = [51, enf_die12]
{
    ai_forward(5);
};

// enf_die12
// function begins at statement 20933, parm_start=11943
// OP_STATE	6070	11943	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () enf_die12 = [52, enf_die13]
{
    ai_forward(5);
};

// enf_die13
// function begins at statement 20937, parm_start=11944
// OP_STATE	6072	11944	0
// OP_DONE	0	0	0
void () enf_die13 = [53, enf_die14]
{
};

// enf_die14
// function begins at statement 20939, parm_start=11945
// OP_STATE	6074	11944	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () enf_die14 = [54, enf_die14]
{
    SUB_Remove();
};

// enf_fdie1
// function begins at statement 20942, parm_start=11946
// OP_STATE	6076	11946	0
// OP_DONE	0	0	0
void () enf_fdie1 = [55, enf_fdie2]
{
};

// enf_fdie2
// function begins at statement 20944, parm_start=11947
// OP_STATE	6078	11947	0
// OP_DONE	0	0	0
void () enf_fdie2 = [56, enf_fdie3]
{
};

// enf_fdie3
// function begins at statement 20946, parm_start=11948
// OP_STATE	6080	11948	0
// OP_ADDRESS	28	104	11949
// OP_STOREP_F	238	11949	0
// OP_ADDRESS	28	161	11950
// OP_STOREP_F	1660	11950	0
// OP_DONE	0	0	0
void () enf_fdie3 = [57, enf_fdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = 5;
};

// enf_fdie4
// function begins at statement 20952, parm_start=11951
// OP_STATE	6082	11951	0
// OP_DONE	0	0	0
void () enf_fdie4 = [58, enf_fdie5]
{
};

// enf_fdie5
// function begins at statement 20954, parm_start=11952
// OP_STATE	6084	11952	0
// OP_DONE	0	0	0
void () enf_fdie5 = [59, enf_fdie6]
{
};

// enf_fdie6
// function begins at statement 20956, parm_start=11953
// OP_STATE	1035	11953	0
// OP_DONE	0	0	0
void () enf_fdie6 = [60, enf_fdie7]
{
};

// enf_fdie7
// function begins at statement 20958, parm_start=11954
// OP_STATE	6086	11954	0
// OP_DONE	0	0	0
void () enf_fdie7 = [61, enf_fdie8]
{
};

// enf_fdie8
// function begins at statement 20960, parm_start=11955
// OP_STATE	6088	11955	0
// OP_DONE	0	0	0
void () enf_fdie8 = [62, enf_fdie9]
{
};

// enf_fdie9
// function begins at statement 20962, parm_start=11956
// OP_STATE	4345	11956	0
// OP_DONE	0	0	0
void () enf_fdie9 = [63, enf_fdie10]
{
};

// enf_fdie10
// function begins at statement 20964, parm_start=11957
// OP_STATE	1684	11957	0
// OP_DONE	0	0	0
void () enf_fdie10 = [64, enf_fdie11]
{
};

// enf_fdie11
// function begins at statement 20966, parm_start=11958
// OP_STATE	6092	11957	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () enf_fdie11 = [65, enf_fdie11]
{
    SUB_Remove();
};

// enf_die
// function begins at statement 20969, parm_start=11959
// OP_LOAD_F	28	152	11959
// OP_LT	11959	9507	11960
// OP_IFNOT	11960	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	11961	4	0
// OP_LOAD_F	28	152	11962
// OP_STORE_V	11962	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	11963
// OP_STORE_V	11963	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	11964
// OP_STORE_V	11964	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	11965
// OP_STORE_V	11965	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8280	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	11966
// OP_IFNOT	11966	3	0
// OP_CALL0	11929	0	0
// OP_GOTO	2	0	0
// OP_CALL0	11945	0	0
// OP_DONE	0	0	0
void () enf_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_mega.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "enforcer/death1.wav", 1, ATTN_NORM);
    if(random() > 0.5)
    {
        enf_die1();
    }
    else
    {
        enf_fdie1();
    }
    
};

// monster_enforcer
// function begins at statement 21008, parm_start=11968
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	11968	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11961	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8081	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8280	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8039	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8082	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8281	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8277	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8279	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1370	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1372	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1374	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1375	4	0
// OP_CALL1	510	0	0
// OP_ADDRESS	28	104	11969
// OP_STOREP_F	241	11969	0
// OP_ADDRESS	28	103	11970
// OP_STOREP_F	230	11970	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11968	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	11971
// OP_STOREP_F	874	11971	0
// OP_ADDRESS	28	357	11972
// OP_STOREP_FNC	11828	11972	0
// OP_ADDRESS	28	358	11973
// OP_STOREP_FNC	11835	11973	0
// OP_ADDRESS	28	359	11974
// OP_STOREP_FNC	11852	11974	0
// OP_ADDRESS	28	362	11975
// OP_STOREP_FNC	11911	11975	0
// OP_ADDRESS	28	363	11976
// OP_STOREP_FNC	11958	11976	0
// OP_ADDRESS	28	360	11977
// OP_STOREP_FNC	11861	11977	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_enforcer = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/enforcer.mdl");
    precache_model2("progs/h_mega.mdl");
    precache_model2("progs/laser.mdl");
    precache_sound2("enforcer/death1.wav");
    precache_sound2("enforcer/enfire.wav");
    precache_sound2("enforcer/enfstop.wav");
    precache_sound2("enforcer/idle1.wav");
    precache_sound2("enforcer/pain1.wav");
    precache_sound2("enforcer/pain2.wav");
    precache_sound2("enforcer/sight1.wav");
    precache_sound2("enforcer/sight2.wav");
    precache_sound2("enforcer/sight3.wav");
    precache_sound2("enforcer/sight4.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/enforcer.mdl");
    setsize(self, '-16 -16 -24', '16 16 40');
    self.health = 80;
    self.th_stand = enf_stand1;
    self.th_walk = enf_walk1;
    self.th_run = enf_run1;
    self.th_pain = enf_pain;
    self.th_die = enf_die;
    self.th_missile = enf_atk1;
    walkmonster_start();
};

