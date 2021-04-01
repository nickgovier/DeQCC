void () xwall_start;
// xwall_checktrig
// function begins at statement 25824, parm_start=17612
// OP_LOAD_F	28	254	17612
// OP_GT	31	17612	17613
// OP_IFNOT	17613	7	0
// OP_ADDRESS	28	173	17614
// OP_STOREP_FNC	17610	17614	0
// OP_ADDRESS	28	175	17615
// OP_ADD_F	31	655	17616
// OP_STOREP_F	17616	17615	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	17617
// OP_STOREP_FNC	17611	17617	0
// OP_ADDRESS	28	175	17618
// OP_ADD_F	31	655	17619
// OP_STOREP_F	17619	17618	0
// OP_DONE	0	0	0
void () xwall_checktrig = 
{
    
    if(time > self.spawn_finished)
    {
        self.think = xwall_start;
        self.nextthink = time + 0.100;
        return;
    }
    
    self.think = xwall_checktrig;
    self.nextthink = time + 0.100;
};

// xwall_trigtouch
// function begins at statement 25839, parm_start=17621
// OP_ADDRESS	28	254	17621
// OP_ADD_F	31	677	17622
// OP_STOREP_F	17622	17621	0
// OP_DONE	0	0	0
void () xwall_trigtouch = 
{
    self.spawn_finished = time + 1.000;
};

// xwall_preparespawn
// function begins at statement 25843, parm_start=17624
// OP_ADDRESS	28	129	17624
// OP_STOREP_F	292	17624	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	443	17625
// OP_STORE_V	17625	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	128	17626
// OP_STOREP_F	281	17626	0
// OP_ADDRESS	28	118	17627
// OP_STOREP_F	619	17627	0
// OP_ADDRESS	28	155	17628
// OP_STOREP_S	621	17628	0
// OP_ADDRESS	28	171	17629
// OP_STOREP_FNC	17620	17629	0
// OP_ADDRESS	28	254	17630
// OP_ADD_F	31	677	17631
// OP_STOREP_F	17631	17630	0
// OP_ADDRESS	28	173	17632
// OP_STOREP_FNC	17611	17632	0
// OP_ADDRESS	28	175	17633
// OP_ADD_F	31	655	17634
// OP_STOREP_F	17634	17633	0
// OP_DONE	0	0	0
void () xwall_preparespawn = 
{
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.mdl);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0.000;
    self.model = "";
    self.touch = xwall_trigtouch;
    self.spawn_finished = time + 1.000;
    self.think = xwall_checktrig;
    self.nextthink = time + 0.100;
};

// xwall_trigger
// function begins at statement 25866, parm_start=17636
// OP_ADDRESS	28	188	17636
// OP_STOREP_F	304	17636	0
// OP_ADDRESS	28	411	17637
// OP_STOREP_FNC	566	17637	0
// OP_ADDRESS	28	128	17638
// OP_STOREP_F	281	17638	0
// OP_LOAD_ENT	28	206	17639
// OP_STORE_ENT	17639	395	0
// OP_CALL0	567	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	17640
// OP_STOREP_F	291	17640	0
// OP_ADDRESS	28	171	17641
// OP_STOREP_FNC	566	17641	0
// OP_EQ_F	35	619	17642
// OP_IFNOT	17642	7	0
// OP_ADDRESS	28	175	17643
// OP_ADD_F	31	655	17644
// OP_STOREP_F	17644	17643	0
// OP_ADDRESS	28	173	17645
// OP_STOREP_FNC	568	17645	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	175	17646
// OP_LOAD_F	28	462	17647
// OP_ADD_F	31	17647	17648
// OP_STOREP_F	17648	17646	0
// OP_ADDRESS	28	173	17649
// OP_STOREP_FNC	17623	17649	0
// OP_DONE	0	0	0
void () xwall_trigger = 
{
    self.takedamage = DAMAGE_NO;
    self.th_die = SUB_Null;
    self.movetype = MOVETYPE_NONE;
    activator = self.enemy;
    SUB_UseTargets();
    setmodel(self, "");
    self.solid = SOLID_NOT;
    self.touch = SUB_Null;
    
    if(deathmatch == 0.000)
    {
        self.nextthink = time + 0.100;
        self.think = SUB_Remove;
        return;
    }
    
    self.nextthink = time + self.wait;
    self.think = xwall_preparespawn;
};

// xwall_pieces
// function begins at statement 25897, parm_start=17651
// OP_NOT_F	35	0	17651
// OP_IFNOT	17651	5	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () xwall_pieces = 
{
    
    if(!deathmatch)
    {
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    BecomeExplosion();
};

// xwall_boom
// function begins at statement 25905, parm_start=17653
// OP_LOAD_V	28	119	17657
// OP_LOAD_V	28	123	17660
// OP_ADD_V	17657	17660	17663
// OP_MUL_VF	17663	972	17666
// OP_STORE_V	17666	17653	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17653	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17654	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17655	7	0
// OP_CALL2	546	0	0
// OP_LOAD_F	28	469	17669
// OP_IFNOT	17669	17	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	17656	0
// OP_STORE_V	17656	4	0
// OP_STORE_V	17653	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	17656	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_F	28	469	17670
// OP_STORE_V	17670	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_ADDRESS	17656	173	17671
// OP_STOREP_FNC	17650	17671	0
// OP_ADDRESS	17656	175	17672
// OP_ADD_F	31	655	17673
// OP_STOREP_F	17673	17672	0
// OP_CALL0	17635	0	0
// OP_DONE	0	0	0
void () xwall_boom = 
{
    local vector v;
    local entity e;
    v = (self.absmin + self.absmax) * 0.500;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, v_x);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, 0.000);
    
    if(self.dmg)
    {
        e = spawn();
        setorigin(e, v);
        T_RadiusDamage(e, self, self.dmg, self);
        e.think = xwall_pieces;
        e.nextthink = time + 0.100;
    }
    
    xwall_trigger();
};

// xwall_die
// function begins at statement 25945, parm_start=17675
// OP_ADDRESS	28	206	17675
// OP_STOREP_ENT	396	17675	0
// OP_ADDRESS	28	173	17676
// OP_STOREP_FNC	17652	17676	0
// OP_ADDRESS	28	175	17677
// OP_LOAD_F	28	127	17678
// OP_ADD_F	17678	1687	17679
// OP_STOREP_F	17679	17677	0
// OP_DONE	0	0	0
void () xwall_die = 
{
    self.enemy = damage_attacker;
    self.think = xwall_boom;
    self.nextthink = self.ltime + 0.300;
};

// func_xwall_use
// function begins at statement 25954, parm_start=17681
// OP_ADDRESS	28	156	17681
// OP_LOAD_F	28	156	17682
// OP_SUB_F	677	17682	17683
// OP_STOREP_F	17683	17681	0
// OP_DONE	0	0	0
void () func_xwall_use = 
{
    self.frame = 1.000 - self.frame;
};

// xwall_start
// function begins at statement 25959, parm_start=17684
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	443	17684
// OP_STORE_V	17684	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	177	17685
// OP_LOAD_F	28	210	17686
// OP_STOREP_F	17686	17685	0
// OP_ADDRESS	28	411	17687
// OP_STOREP_FNC	17674	17687	0
// OP_LOAD_F	28	462	17688
// OP_NOT_F	17688	0	17689
// OP_IFNOT	17689	4	0
// OP_ADDRESS	28	188	17690
// OP_STOREP_F	305	17690	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	188	17691
// OP_STOREP_F	306	17691	0
// OP_ADDRESS	28	142	17692
// OP_STOREP_V	607	17692	0
// OP_ADDRESS	28	128	17695
// OP_STOREP_F	286	17695	0
// OP_ADDRESS	28	129	17696
// OP_STOREP_F	295	17696	0
// OP_ADDRESS	28	172	17697
// OP_STOREP_FNC	17680	17697	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	17698
// OP_STORE_V	17698	7	0
// OP_LOAD_V	28	163	17701
// OP_STORE_V	17701	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	17704
// OP_STORE_V	17704	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () xwall_start = 
{
    setmodel(self, self.mdl);
    self.health = self.max_health;
    self.th_die = xwall_die;
    if(!self.wait)
    {
        self.takedamage = DAMAGE_YES;
    }
    else
    {
        self.takedamage = DAMAGE_AIM;
    }
    
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_xwall_use;
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
};

// func_xwall
// function begins at statement 25995, parm_start=17708
// OP_CALL0	1068	0	0
// OP_ADDRESS	28	142	17708
// OP_STOREP_V	607	17708	0
// OP_ADDRESS	28	128	17711
// OP_STOREP_F	286	17711	0
// OP_ADDRESS	28	129	17712
// OP_STOREP_F	295	17712	0
// OP_LOAD_F	28	177	17713
// OP_NOT_F	17713	0	17714
// OP_IFNOT	17714	3	0
// OP_ADDRESS	28	177	17715
// OP_STOREP_F	4412	17715	0
// OP_ADDRESS	28	210	17716
// OP_LOAD_F	28	177	17717
// OP_STOREP_F	17717	17716	0
// OP_ADDRESS	28	411	17718
// OP_STOREP_FNC	17674	17718	0
// OP_LOAD_F	28	232	17719
// OP_EQ_F	17719	619	17720
// OP_GT	35	619	17721
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	619	17722
// OP_AND	17721	17722	17723
// OP_OR	17720	17723	17724
// OP_IFNOT	17724	4	0
// OP_ADDRESS	28	188	17725
// OP_STOREP_F	305	17725	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	188	17726
// OP_STOREP_F	306	17726	0
// OP_LOAD_F	28	462	17727
// OP_NOT_F	17727	0	17728
// OP_IFNOT	17728	3	0
// OP_ADDRESS	28	462	17729
// OP_STOREP_F	1130	17729	0
// OP_ADDRESS	28	172	17730
// OP_STOREP_FNC	17680	17730	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17731
// OP_STORE_V	17731	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	443	17732
// OP_LOAD_S	28	155	17733
// OP_STOREP_S	17733	17732	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	17734
// OP_STORE_V	17734	7	0
// OP_LOAD_V	28	163	17737
// OP_STORE_V	17737	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	17740
// OP_STORE_V	17740	7	0
// OP_CALL2	497	0	0
// OP_LOAD_S	28	205	17743
// OP_NOT_S	17743	0	17744
// OP_IFNOT	17744	3	0
// OP_ADDRESS	28	205	17745
// OP_STOREP_S	17746	17745	0
// OP_DONE	0	0	0
void () func_xwall = 
{
    setup_teament();
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    
    if(!self.health)
    {
        self.health = 300.000;
    }
    
    self.max_health = self.health;
    self.th_die = xwall_die;
    if((self.sounds == 0.000) || ((deathmatch > 0.000) && (cvar("teamplay") == 0.000)))
    {
        self.takedamage = DAMAGE_YES;
    }
    else
    {
        self.takedamage = DAMAGE_AIM;
    }
    
    
    if(!self.wait)
    {
        self.wait = 30.000;
    }
    
    self.use = func_xwall_use;
    setmodel(self, self.model);
    self.mdl = self.model;
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    
    if(!self.netname)
    {
        self.netname = "building";
    }
    
};

void () runway_start;
// rway_die
// function begins at statement 26056, parm_start=17749
// OP_LOAD_V	28	119	17753
// OP_LOAD_V	28	123	17756
// OP_ADD_V	17753	17756	17759
// OP_MUL_VF	17759	972	17762
// OP_STORE_V	17762	17749	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17749	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17750	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	17751	7	0
// OP_CALL2	546	0	0
// OP_LOAD_F	28	469	17765
// OP_IFNOT	17765	17	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	17752	0
// OP_STORE_V	17752	4	0
// OP_STORE_V	17749	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	17752	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_F	28	469	17766
// OP_STORE_V	17766	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_ADDRESS	17752	173	17767
// OP_STOREP_FNC	17650	17767	0
// OP_ADDRESS	17752	175	17768
// OP_ADD_F	31	655	17769
// OP_STOREP_F	17769	17768	0
// OP_ADDRESS	28	188	17770
// OP_STOREP_F	304	17770	0
// OP_ADDRESS	28	411	17771
// OP_STOREP_FNC	566	17771	0
// OP_ADDRESS	28	128	17772
// OP_STOREP_F	281	17772	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	17773
// OP_STOREP_F	291	17773	0
// OP_ADDRESS	28	171	17774
// OP_STOREP_FNC	566	17774	0
// OP_NOT_F	35	0	17775
// OP_IFNOT	17775	7	0
// OP_ADDRESS	28	175	17776
// OP_ADD_F	31	655	17777
// OP_STOREP_F	17777	17776	0
// OP_ADDRESS	28	173	17778
// OP_STOREP_FNC	568	17778	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	175	17779
// OP_LOAD_F	28	462	17780
// OP_ADD_F	31	17780	17781
// OP_STOREP_F	17781	17779	0
// OP_ADDRESS	28	173	17782
// OP_STOREP_FNC	17747	17782	0
// OP_DONE	0	0	0
void () rway_die = 
{
    local vector v;
    local entity e;
    v = (self.absmin + self.absmax) * 0.500;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, v_x);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, 0.000);
    
    if(self.dmg)
    {
        e = spawn();
        setorigin(e, v);
        T_RadiusDamage(e, self, self.dmg, self);
        e.think = xwall_pieces;
        e.nextthink = time + 0.100;
    }
    
    self.takedamage = DAMAGE_NO;
    self.th_die = SUB_Null;
    self.movetype = MOVETYPE_NONE;
    setmodel(self, "");
    self.solid = SOLID_NOT;
    self.touch = SUB_Null;
    
    if(!deathmatch)
    {
        self.nextthink = time + 0.100;
        self.think = SUB_Remove;
        return;
    }
    
    self.nextthink = time + self.wait;
    self.think = runway_start;
};

// runway_start
// function begins at statement 26122, parm_start=17783
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	443	17783
// OP_STORE_V	17783	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	177	17784
// OP_LOAD_F	28	210	17785
// OP_STOREP_F	17785	17784	0
// OP_LOAD_F	28	177	17786
// OP_IFNOT	17786	6	0
// OP_ADDRESS	28	411	17787
// OP_STOREP_FNC	17748	17787	0
// OP_ADDRESS	28	188	17788
// OP_STOREP_F	305	17788	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	188	17789
// OP_STOREP_F	304	17789	0
// OP_ADDRESS	28	142	17790
// OP_STOREP_V	607	17790	0
// OP_ADDRESS	28	128	17793
// OP_STOREP_F	286	17793	0
// OP_ADDRESS	28	129	17794
// OP_STOREP_F	295	17794	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	17795
// OP_STORE_V	17795	7	0
// OP_LOAD_V	28	163	17798
// OP_STORE_V	17798	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	17801
// OP_STORE_V	17801	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () runway_start = 
{
    setmodel(self, self.mdl);
    self.health = self.max_health;
    if(self.health)
    {
        self.th_die = rway_die;
        self.takedamage = DAMAGE_YES;
    }
    else
    {
        self.takedamage = DAMAGE_NO;
    }
    
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
};

// func_runway
// function begins at statement 26155, parm_start=17805
// OP_ADDRESS	28	443	17805
// OP_LOAD_S	28	155	17806
// OP_STOREP_S	17806	17805	0
// OP_ADDRESS	28	210	17807
// OP_LOAD_F	28	177	17808
// OP_STOREP_F	17808	17807	0
// OP_LOAD_F	28	462	17809
// OP_NOT_F	17809	0	17810
// OP_IFNOT	17810	3	0
// OP_ADDRESS	28	462	17811
// OP_STOREP_F	1203	17811	0
// OP_CALL0	17747	0	0
// OP_DONE	0	0	0
void () func_runway = 
{
    self.mdl = self.model;
    self.max_health = self.health;
    
    if(!self.wait)
    {
        self.wait = 60.000;
    }
    
    runway_start();
};

