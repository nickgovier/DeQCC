// noclass
// function begins at statement 4238, parm_start=4305
// OP_STORE_V	4305	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	4306
// OP_STORE_V	4306	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () noclass = 
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};

float globaldef001800;
float globaldef001801;
.float healamount;
.float healtype;
void () func000210;
void () func000211;
// item_health
// function begins at statement 4323, parm_start=4362
// OP_ADDRESS	28	146	4362
// OP_STOREP_FNC	4359	4362	0
// OP_LOAD_F	28	195	4363
// OP_BITAND	4363	4355	4364
// OP_IFNOT	4364	17	0
// OP_STORE_V	4365	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4366	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4365	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4367
// OP_STOREP_S	4366	4367	0
// OP_ADDRESS	28	4357	4368
// OP_STOREP_F	765	4368	0
// OP_ADDRESS	28	4358	4369
// OP_STOREP_F	213	4369	0
// OP_ADDRESS	28	548	4370
// OP_STOREP_FNC	1008	4370	0
// OP_GOTO	39	0	0
// OP_LOAD_F	28	195	4371
// OP_BITAND	4371	4356	4372
// OP_IFNOT	4372	21	0
// OP_STORE_V	4373	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4374	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4373	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4375
// OP_STOREP_S	4374	4375	0
// OP_ADDRESS	28	4357	4376
// OP_STOREP_F	1997	4376	0
// OP_ADDRESS	28	4358	4377
// OP_STOREP_F	216	4377	0
// OP_ADDRESS	28	548	4378
// OP_STOREP_FNC	1010	4378	0
// OP_ADDRESS	28	549	4379
// OP_STOREP_FNC	1028	4379	0
// OP_ADDRESS	28	547	4380
// OP_STOREP_FNC	1186	4380	0
// OP_GOTO	16	0	0
// OP_STORE_V	4381	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4382	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4381	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4383
// OP_STOREP_S	4382	4383	0
// OP_ADDRESS	28	4357	4384
// OP_STOREP_F	305	4384	0
// OP_ADDRESS	28	4358	4385
// OP_STOREP_F	214	4385	0
// OP_ADDRESS	28	548	4386
// OP_STOREP_FNC	1009	4386	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_health = 
{
    self.touch = func000210;
    if(self.spawnflags & globaldef001800)
    {
        precache_model("maps/b_bh10.bsp");
        precache_sound("items/r_item1.wav");
        setmodel(self, "maps/b_bh10.bsp");
        self.noise = "items/r_item1.wav";
        self.healamount = globaldef000748;
        self.healtype = FALSE;
        self.field000225 = func002299;
    }
    else
    {
        if(self.spawnflags & globaldef001801)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = 100;
            self.healtype = FL_SWIM;
            self.field000225 = func002298;
            self.field000226 = func002318;
            self.field000224 = func002647;
        }
        else
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = SVC_SIGNONNUM;
            self.healtype = TRUE;
            self.field000225 = func002300;
        }
        
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    func000207();
};

// item_armor1
// function begins at statement 4633, parm_start=4513
// OP_ADDRESS	28	146	4513
// OP_STOREP_FNC	4454	4513	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4515
// OP_STOREP_F	213	4515	0
// OP_ADDRESS	28	188	4516
// OP_STOREP_F	1997	4516	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4523
// OP_STOREP_FNC	1021	4523	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armor1 = 
{
    self.touch = func000212;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FALSE;
    self.armorvalue = 100;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002311;
    func000207();
};

// item_armor2
// function begins at statement 4652, parm_start=4525
// OP_ADDRESS	28	146	4525
// OP_STOREP_FNC	4454	4525	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4526
// OP_STOREP_F	214	4526	0
// OP_ADDRESS	28	188	4527
// OP_STOREP_F	2003	4527	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4528
// OP_STOREP_FNC	1022	4528	0
// OP_ADDRESS	28	549	4529
// OP_STOREP_FNC	1035	4529	0
// OP_ADDRESS	28	547	4530
// OP_STOREP_FNC	1185	4530	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armor2 = 
{
    self.touch = func000212;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = TRUE;
    self.armorvalue = 150;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002312;
    self.field000226 = func002325;
    self.field000224 = func002646;
    func000207();
};

// item_armorInv
// function begins at statement 4675, parm_start=4532
// OP_ADDRESS	28	146	4532
// OP_STOREP_FNC	4454	4532	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4533
// OP_STOREP_F	216	4533	0
// OP_ADDRESS	28	188	4534
// OP_STOREP_F	2044	4534	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4535
// OP_STOREP_FNC	1023	4535	0
// OP_ADDRESS	28	549	4536
// OP_STOREP_FNC	1036	4536	0
// OP_ADDRESS	28	547	4537
// OP_STOREP_FNC	1185	4537	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armorInv = 
{
    self.touch = func000212;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FL_SWIM;
    self.armorvalue = 200;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002313;
    self.field000226 = func002326;
    self.field000224 = func002646;
    func000207();
};

// weapon_supershotgun
// function begins at statement 4953, parm_start=4672
// OP_STORE_V	4672	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4672	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4673
// OP_STOREP_F	255	4673	0
// OP_ADDRESS	28	180	4674
// OP_STOREP_S	4675	4674	0
// OP_ADDRESS	28	146	4676
// OP_STOREP_FNC	4568	4676	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4677
// OP_STOREP_FNC	1020	4677	0
// OP_ADDRESS	28	549	4678
// OP_STOREP_FNC	1029	4678	0
// OP_ADDRESS	28	547	4679
// OP_STOREP_FNC	1179	4679	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_supershotgun = 
{
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002310;
    self.field000226 = func002319;
    self.field000224 = func002640;
    func000207();
};

// weapon_nailgun
// function begins at statement 4976, parm_start=4681
// OP_STORE_V	4681	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4681	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4682
// OP_STOREP_F	256	4682	0
// OP_ADDRESS	28	180	4683
// OP_STOREP_S	4684	4683	0
// OP_ADDRESS	28	146	4685
// OP_STOREP_FNC	4568	4685	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4686
// OP_STOREP_FNC	1018	4686	0
// OP_ADDRESS	28	549	4687
// OP_STOREP_FNC	1030	4687	0
// OP_ADDRESS	28	547	4688
// OP_STOREP_FNC	1180	4688	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_nailgun = 
{
    precache_model("progs/g_nail.mdl");
    setmodel(self, "progs/g_nail.mdl");
    self.weapon = IT_NAILGUN;
    self.netname = "nailgun";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002308;
    self.field000226 = func002320;
    self.field000224 = func002641;
    func000207();
};

// weapon_supernailgun
// function begins at statement 4999, parm_start=4690
// OP_STORE_V	4690	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4690	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4691
// OP_STOREP_F	257	4691	0
// OP_ADDRESS	28	180	4692
// OP_STOREP_S	4693	4692	0
// OP_ADDRESS	28	146	4694
// OP_STOREP_FNC	4568	4694	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4695
// OP_STOREP_FNC	1019	4695	0
// OP_ADDRESS	28	549	4696
// OP_STOREP_FNC	1031	4696	0
// OP_ADDRESS	28	547	4697
// OP_STOREP_FNC	1181	4697	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_supernailgun = 
{
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002309;
    self.field000226 = func002321;
    self.field000224 = func002642;
    func000207();
};

// weapon_grenadelauncher
// function begins at statement 5022, parm_start=4699
// OP_STORE_V	4699	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4699	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4700
// OP_STOREP_F	228	4700	0
// OP_ADDRESS	28	180	4701
// OP_STOREP_S	4702	4701	0
// OP_ADDRESS	28	146	4703
// OP_STOREP_FNC	4568	4703	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4704
// OP_STOREP_FNC	1017	4704	0
// OP_ADDRESS	28	549	4705
// OP_STOREP_FNC	1032	4705	0
// OP_ADDRESS	28	547	4706
// OP_STOREP_FNC	1182	4706	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_grenadelauncher = 
{
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Grenade Launcher";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002307;
    self.field000226 = func002322;
    self.field000224 = func002643;
    func000207();
};

// weapon_rocketlauncher
// function begins at statement 5045, parm_start=4708
// OP_STORE_V	4708	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4708	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4709
// OP_STOREP_F	228	4709	0
// OP_ADDRESS	28	180	4710
// OP_STOREP_S	4711	4710	0
// OP_ADDRESS	28	146	4712
// OP_STOREP_FNC	4568	4712	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4713
// OP_STOREP_FNC	1015	4713	0
// OP_ADDRESS	28	549	4714
// OP_STOREP_FNC	1033	4714	0
// OP_ADDRESS	28	547	4715
// OP_STOREP_FNC	1183	4715	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_rocketlauncher = 
{
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Rocket Launcher";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002305;
    self.field000226 = func002323;
    self.field000224 = func002644;
    func000207();
};

// weapon_lightning
// function begins at statement 5068, parm_start=4717
// OP_STORE_V	4717	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4717	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4718
// OP_STOREP_F	228	4718	0
// OP_ADDRESS	28	180	4719
// OP_STOREP_S	4720	4719	0
// OP_ADDRESS	28	146	4721
// OP_STOREP_FNC	4568	4721	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4722
// OP_STOREP_FNC	1016	4722	0
// OP_ADDRESS	28	549	4723
// OP_STOREP_FNC	1034	4723	0
// OP_ADDRESS	28	547	4724
// OP_STOREP_FNC	1184	4724	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_lightning = 
{
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Thunderbolt";
    self.touch = func000219;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002306;
    self.field000226 = func002324;
    self.field000224 = func002645;
    func000207();
};

float globaldef001883;
// item_shells
// function begins at statement 5228, parm_start=4791
// OP_ADDRESS	28	146	4791
// OP_STOREP_FNC	4725	4791	0
// OP_LOAD_F	28	195	4792
// OP_BITAND	4792	4789	4793
// OP_IFNOT	4793	9	0
// OP_STORE_V	4794	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4794	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4795
// OP_STOREP_F	746	4795	0
// OP_GOTO	8	0	0
// OP_STORE_V	4796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4796	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4797
// OP_STOREP_F	2323	4797	0
// OP_ADDRESS	28	154	4798
// OP_STOREP_F	214	4798	0
// OP_ADDRESS	28	180	4799
// OP_STOREP_S	4800	4799	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4801
// OP_STOREP_FNC	1012	4801	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_shells = 
{
    self.touch = func000226;
    if(self.spawnflags & globaldef001883)
    {
        precache_model("maps/b_shell1.bsp");
        setmodel(self, "maps/b_shell1.bsp");
        self.aflag = globaldef000729;
    }
    else
    {
        precache_model("maps/b_shell0.bsp");
        setmodel(self, "maps/b_shell0.bsp");
        self.aflag = 20;
    }
    
    self.weapon = TRUE;
    self.netname = "shells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002302;
    func000207();
};

// item_spikes
// function begins at statement 5260, parm_start=4803
// OP_ADDRESS	28	146	4803
// OP_STOREP_FNC	4725	4803	0
// OP_LOAD_F	28	195	4804
// OP_BITAND	4804	4789	4805
// OP_IFNOT	4805	9	0
// OP_STORE_V	4806	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4806	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4807
// OP_STOREP_F	1470	4807	0
// OP_GOTO	8	0	0
// OP_STORE_V	4808	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4808	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4809
// OP_STOREP_F	305	4809	0
// OP_ADDRESS	28	154	4810
// OP_STOREP_F	216	4810	0
// OP_ADDRESS	28	180	4811
// OP_STOREP_S	4812	4811	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4813
// OP_STOREP_FNC	1011	4813	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_spikes = 
{
    self.touch = func000226;
    if(self.spawnflags & globaldef001883)
    {
        precache_model("maps/b_nail1.bsp");
        setmodel(self, "maps/b_nail1.bsp");
        self.aflag = 50;
    }
    else
    {
        precache_model("maps/b_nail0.bsp");
        setmodel(self, "maps/b_nail0.bsp");
        self.aflag = SVC_SIGNONNUM;
    }
    
    self.weapon = FL_SWIM;
    self.netname = "nails";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002301;
    func000207();
};

// item_rockets
// function begins at statement 5292, parm_start=4815
// OP_ADDRESS	28	146	4815
// OP_STOREP_FNC	4725	4815	0
// OP_LOAD_F	28	195	4816
// OP_BITAND	4816	4789	4817
// OP_IFNOT	4817	9	0
// OP_STORE_V	4818	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4818	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4819
// OP_STOREP_F	235	4819	0
// OP_GOTO	8	0	0
// OP_STORE_V	4820	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4820	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4821
// OP_STOREP_F	230	4821	0
// OP_ADDRESS	28	154	4822
// OP_STOREP_F	228	4822	0
// OP_ADDRESS	28	180	4823
// OP_STOREP_S	4824	4823	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4825
// OP_STOREP_FNC	1014	4825	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_rockets = 
{
    self.touch = func000226;
    if(self.spawnflags & globaldef001883)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = MOVETYPE_BOUNCE;
    }
    else
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = MOVETYPE_FLY;
    }
    
    self.weapon = MOVETYPE_WALK;
    self.netname = "rockets";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002304;
    func000207();
};

// item_cells
// function begins at statement 5324, parm_start=4827
// OP_ADDRESS	28	146	4827
// OP_STOREP_FNC	4725	4827	0
// OP_LOAD_F	28	195	4828
// OP_BITAND	4828	4789	4829
// OP_IFNOT	4829	9	0
// OP_STORE_V	4830	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4830	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4831
// OP_STOREP_F	791	4831	0
// OP_GOTO	8	0	0
// OP_STORE_V	4832	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4832	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4833
// OP_STOREP_F	231	4833	0
// OP_ADDRESS	28	154	4834
// OP_STOREP_F	229	4834	0
// OP_ADDRESS	28	180	4835
// OP_STOREP_S	4836	4835	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4837
// OP_STOREP_FNC	1013	4837	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_cells = 
{
    self.touch = func000226;
    if(self.spawnflags & globaldef001883)
    {
        precache_model("maps/b_batt1.bsp");
        setmodel(self, "maps/b_batt1.bsp");
        self.aflag = globaldef000774;
    }
    else
    {
        precache_model("maps/b_batt0.bsp");
        setmodel(self, "maps/b_batt0.bsp");
        self.aflag = MOVETYPE_TOSS;
    }
    
    self.weapon = MOVETYPE_STEP;
    self.netname = "cells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002303;
    func000207();
};

float globaldef001900;
float globaldef001901;
float globaldef001902;
float globaldef001903;
// item_weapon
// function begins at statement 5356, parm_start=4843
// OP_ADDRESS	28	146	4843
// OP_STOREP_FNC	4725	4843	0
// OP_LOAD_F	28	195	4844
// OP_BITAND	4844	4838	4845
// OP_IFNOT	4845	23	0
// OP_LOAD_F	28	195	4846
// OP_BITAND	4846	4841	4847
// OP_IFNOT	4847	9	0
// OP_STORE_V	4794	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4794	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4848
// OP_STOREP_F	746	4848	0
// OP_GOTO	8	0	0
// OP_STORE_V	4796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4796	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4849
// OP_STOREP_F	2323	4849	0
// OP_ADDRESS	28	154	4850
// OP_STOREP_F	214	4850	0
// OP_ADDRESS	28	180	4851
// OP_STOREP_S	4800	4851	0
// OP_LOAD_F	28	195	4852
// OP_BITAND	4852	4840	4853
// OP_IFNOT	4853	23	0
// OP_LOAD_F	28	195	4854
// OP_BITAND	4854	4841	4855
// OP_IFNOT	4855	9	0
// OP_STORE_V	4806	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4806	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4856
// OP_STOREP_F	746	4856	0
// OP_GOTO	8	0	0
// OP_STORE_V	4808	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4808	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4857
// OP_STOREP_F	2323	4857	0
// OP_ADDRESS	28	154	4858
// OP_STOREP_F	216	4858	0
// OP_ADDRESS	28	180	4859
// OP_STOREP_S	4860	4859	0
// OP_LOAD_F	28	195	4861
// OP_BITAND	4861	4839	4862
// OP_IFNOT	4862	23	0
// OP_LOAD_F	28	195	4863
// OP_BITAND	4863	4841	4864
// OP_IFNOT	4864	9	0
// OP_STORE_V	4818	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4818	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4865
// OP_STOREP_F	235	4865	0
// OP_GOTO	8	0	0
// OP_STORE_V	4820	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4820	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4866
// OP_STOREP_F	230	4866	0
// OP_ADDRESS	28	154	4867
// OP_STOREP_F	228	4867	0
// OP_ADDRESS	28	180	4868
// OP_STOREP_S	4824	4868	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_weapon = 
{
    self.touch = func000226;
    
    if(self.spawnflags & globaldef001900)
    {
        if(self.spawnflags & globaldef001903)
        {
            precache_model("maps/b_shell1.bsp");
            setmodel(self, "maps/b_shell1.bsp");
            self.aflag = globaldef000729;
        }
        else
        {
            precache_model("maps/b_shell0.bsp");
            setmodel(self, "maps/b_shell0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = TRUE;
        self.netname = "shells";
    }
    
    
    if(self.spawnflags & globaldef001902)
    {
        if(self.spawnflags & globaldef001903)
        {
            precache_model("maps/b_nail1.bsp");
            setmodel(self, "maps/b_nail1.bsp");
            self.aflag = globaldef000729;
        }
        else
        {
            precache_model("maps/b_nail0.bsp");
            setmodel(self, "maps/b_nail0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = FL_SWIM;
        self.netname = "spikes";
    }
    
    
    if(self.spawnflags & globaldef001901)
    {
        if(self.spawnflags & globaldef001903)
        {
            precache_model("maps/b_rock1.bsp");
            setmodel(self, "maps/b_rock1.bsp");
            self.aflag = MOVETYPE_BOUNCE;
        }
        else
        {
            precache_model("maps/b_rock0.bsp");
            setmodel(self, "maps/b_rock0.bsp");
            self.aflag = MOVETYPE_FLY;
        }
        
        self.weapon = MOVETYPE_WALK;
        self.netname = "rockets";
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    func000207();
};

// item_key1
// function begins at statement 5521, parm_start=4908
// OP_LOAD_F	30	357	4908
// OP_EQ_F	4908	213	4909
// OP_IFNOT	4909	9	0
// OP_STORE_V	4910	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4910	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4911
// OP_STOREP_S	4912	4911	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	357	4913
// OP_EQ_F	4913	214	4914
// OP_IFNOT	4914	9	0
// OP_STORE_V	4915	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4915	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4916
// OP_STOREP_S	4917	4916	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	357	4918
// OP_EQ_F	4918	216	4919
// OP_IFNOT	4919	8	0
// OP_STORE_V	4920	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4920	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4921
// OP_STOREP_S	4922	4921	0
// OP_CALL0	4894	0	0
// OP_ADDRESS	28	146	4923
// OP_STOREP_FNC	4869	4923	0
// OP_ADDRESS	28	162	4924
// OP_STOREP_F	270	4924	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_key1 = 
{
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_model2("progs/b_s_key.mdl");
                setmodel(self, "progs/b_s_key.mdl");
                self.netname = "silver keycard";
            }
            
        }
        
    }
    
    func000233();
    self.touch = func000232;
    self.items = IT_KEY1;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    func000207();
};

// item_key2
// function begins at statement 5564, parm_start=4926
// OP_LOAD_F	30	357	4926
// OP_EQ_F	4926	213	4927
// OP_IFNOT	4927	9	0
// OP_STORE_V	4928	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4928	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4929
// OP_STOREP_S	4930	4929	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	357	4931
// OP_EQ_F	4931	214	4932
// OP_IFNOT	4932	9	0
// OP_STORE_V	4933	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4933	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4934
// OP_STOREP_S	4935	4934	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	357	4936
// OP_EQ_F	4936	216	4937
// OP_IFNOT	4937	8	0
// OP_STORE_V	4938	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4938	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4939
// OP_STOREP_S	4940	4939	0
// OP_CALL0	4894	0	0
// OP_ADDRESS	28	146	4941
// OP_STOREP_FNC	4869	4941	0
// OP_ADDRESS	28	162	4942
// OP_STOREP_F	271	4942	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_key2 = 
{
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_model("progs/m_g_key.mdl");
            setmodel(self, "progs/m_g_key.mdl");
            self.netname = "gold runekey";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_model2("progs/b_g_key.mdl");
                setmodel(self, "progs/b_g_key.mdl");
                self.netname = "gold keycard";
            }
            
        }
        
    }
    
    func000233();
    self.touch = func000232;
    self.items = IT_KEY2;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    func000207();
};

// item_sigil
// function begins at statement 5643, parm_start=4959
// OP_LOAD_F	28	195	4959
// OP_NOT_F	4959	0	4960
// OP_IFNOT	4960	3	0
// OP_STORE_V	4961	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	4901	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4962
// OP_STOREP_S	4901	4962	0
// OP_LOAD_F	28	195	4963
// OP_BITAND	4963	214	4964
// OP_IFNOT	4964	6	0
// OP_STORE_V	4965	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4965	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4966
// OP_BITAND	4966	216	4967
// OP_IFNOT	4967	6	0
// OP_STORE_V	4968	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4968	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4969
// OP_BITAND	4969	229	4970
// OP_IFNOT	4970	6	0
// OP_STORE_V	4971	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4971	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4972
// OP_BITAND	4972	217	4973
// OP_IFNOT	4973	6	0
// OP_STORE_V	4974	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4974	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	146	4975
// OP_STOREP_FNC	4943	4975	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_sigil = 
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & TRUE)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & FL_SWIM)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & MOVETYPE_STEP)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & FL_CLIENT)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = func000236;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    func000207();
};

// item_artifact_invulnerability
// function begins at statement 5807, parm_start=5039
// OP_ADDRESS	28	146	5039
// OP_STOREP_FNC	4976	5039	0
// OP_STORE_V	5040	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5041	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5042	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	4183	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5043
// OP_STOREP_S	5041	5043	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5040	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5044
// OP_STOREP_S	5045	5044	0
// OP_ADDRESS	28	162	5046
// OP_STOREP_F	273	5046	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5047
// OP_STOREP_FNC	1027	5047	0
// OP_ADDRESS	28	549	5048
// OP_STOREP_FNC	1039	5048	0
// OP_ADDRESS	28	547	5049
// OP_STOREP_FNC	1186	5049	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_invulnerability = 
{
    self.touch = func000238;
    precache_model("progs/invulner.mdl");
    precache_sound("items/protect.wav");
    precache_sound("items/protect2.wav");
    precache_sound("items/protect3.wav");
    self.noise = "items/protect.wav";
    setmodel(self, "progs/invulner.mdl");
    self.netname = "Pentagram of Protection";
    self.items = IT_INVULNERABILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002317;
    self.field000226 = func002329;
    self.field000224 = func002647;
    func000207();
};

// item_artifact_envirosuit
// function begins at statement 5838, parm_start=5051
// OP_ADDRESS	28	146	5051
// OP_STOREP_FNC	4976	5051	0
// OP_STORE_V	5052	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5053	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5054	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5055
// OP_STOREP_S	5053	5055	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5052	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5056
// OP_STOREP_S	5057	5056	0
// OP_ADDRESS	28	162	5058
// OP_STOREP_F	274	5058	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5059
// OP_STOREP_FNC	1024	5059	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_envirosuit = 
{
    self.touch = func000238;
    precache_model("progs/suit.mdl");
    precache_sound("items/suit.wav");
    precache_sound("items/suit2.wav");
    self.noise = "items/suit.wav";
    setmodel(self, "progs/suit.mdl");
    self.netname = "Biosuit";
    self.items = IT_SUIT;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002314;
    func000207();
};

// item_artifact_invisibility
// function begins at statement 5863, parm_start=5061
// OP_ADDRESS	28	146	5061
// OP_STOREP_FNC	4976	5061	0
// OP_STORE_V	5062	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5063	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5064	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5065	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5066
// OP_STOREP_S	5063	5066	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5062	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5067
// OP_STOREP_S	5068	5067	0
// OP_ADDRESS	28	162	5069
// OP_STOREP_F	272	5069	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5070
// OP_STOREP_FNC	1025	5070	0
// OP_ADDRESS	28	549	5071
// OP_STOREP_FNC	1037	5071	0
// OP_ADDRESS	28	547	5072
// OP_STOREP_FNC	1186	5072	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_invisibility = 
{
    self.touch = func000238;
    precache_model("progs/invisibl.mdl");
    precache_sound("items/inv1.wav");
    precache_sound("items/inv2.wav");
    precache_sound("items/inv3.wav");
    self.noise = "items/inv1.wav";
    setmodel(self, "progs/invisibl.mdl");
    self.netname = "Ring of Shadows";
    self.items = IT_INVISIBILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002315;
    self.field000226 = func002327;
    self.field000224 = func002647;
    func000207();
};

// item_artifact_super_damage
// function begins at statement 5894, parm_start=5074
// OP_ADDRESS	28	146	5074
// OP_STOREP_FNC	4976	5074	0
// OP_STORE_V	5075	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5076	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5077	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5078	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5079
// OP_STOREP_S	5076	5079	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5075	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5080
// OP_STOREP_S	5081	5080	0
// OP_ADDRESS	28	162	5082
// OP_STOREP_F	275	5082	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5083
// OP_STOREP_FNC	1026	5083	0
// OP_ADDRESS	28	549	5084
// OP_STOREP_FNC	1038	5084	0
// OP_ADDRESS	28	547	5085
// OP_STOREP_FNC	1186	5085	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_super_damage = 
{
    self.touch = func000238;
    precache_model("progs/quaddama.mdl");
    precache_sound("items/damage.wav");
    precache_sound("items/damage2.wav");
    precache_sound("items/damage3.wav");
    self.noise = "items/damage.wav";
    setmodel(self, "progs/quaddama.mdl");
    self.netname = "Quad Damage";
    self.items = IT_QUAD;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002316;
    self.field000226 = func002328;
    self.field000224 = func002647;
    func000207();
};

