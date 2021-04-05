void (vector tdest, float tspeed, void() func) SUB_CalcMove;
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;
void () SUB_CalcMoveDone;
void () SUB_CalcAngleMoveDone;
void () SUB_Null;
void () SUB_UseTargets;
void () SUB_Remove;
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage;
float (entity e, float healamount, float ignore) T_Heal;
float (entity targ, entity inflictor) CanDamage;
.float(entity e) th_weight;
.float(entity node, float len, entity item) th_cache;
.void() th_update;
.float istrigger;
.float healtype;
.float playerkills;
.float playerdeaths;
.float botkills;
.float botdeaths;
.float suicides;
.vector lastseenpos;
.float enemyrun;
.float goody_time;
.float strafetime;
.float strafeonly;
.void() strafethink;
.float strafeyaw;
.float strafedist;
.entity movetarget2;
.entity movetarget3;
.entity movetarget4;
.entity movetarget5;
.entity movetarget6;
.entity lastbot;
.float lasttime;
.float pather;
.float pathtype;
.float skil;
.float rocketlen;
.entity rocketcache;
.float lightninglen;
.entity lightningcache;
.float armorlen;
.entity armorcache;
.float pendinglen;
.entity pendingcache;
.float naillen;
.entity nailcache;
.float grenadelen;
.entity grenadecache;
.float poweruplen;
.entity powerupcache;
.float enemylen;
.entity enemycache;
.float endpoint;
.string teamname;
float NORMALSCORE = 1;
float MYSCORE = 2;
float MUST_HAVE = 100;
float WANT = 35;
float KINDA_WANT = 20;
float DONT_WANT = 0;
float CANTURN = 1;
float NOTURN = 2;
float SEARCH_RADIUS = 600;
float LOOPTIME = 20;
float MAXPATHERS = 16;
float DROPPED = 2;
float CARRIED = 1;
float NEVERTARGET = 3;
float REGULARTARGET = 0;
float TELEPORT = 4;
float BOTS = 240;
float TEAMBOTS = 3840;
float RESTRICT = 4096;
float SUPERRESTRICT = 8192;
float TEAMFLAG = 16384;
float INITLEVEL = 32768;
float DEDICATED = 4194304;
float LOCAL_TIME = 7;
float STRAFE_DIR = 16;
float FAR_SEEK = 32;
float WATERUPDOWN = 64;
float NODROP = 128;
float RUNAWAY = 256;
float GETGOODY = 512;
float ONTRAIN = 1024;
float MULTIENEMY = 2048;
float VERBOSEBOT = 0;
float BOTSPEED = 0;
float NUMBOTS = 0;
float GRAVITY = 0;
float MAXJUMP = 0;
float INVGRENADELEVELDIST = 0;
float GRENADEMAXHEIGHT = 0;
float LEVELJUMPTIME = 0;
float NUMPATHS = 0;
float NUMGIBS = 0;
float NUMPATHERS = 0;
float SKINSMODE = 0;
float RECURSEDEPTH = 0;
vector REBOUNDSPOT = '0.000 0.000 0.000';
float REBOUND = 0;
float TELEFRAGFLAG = 0;
entity NOISEQUEUE;
float HELPING = 0;
float NAMEBOTS = 0;
void (entity noisemaker, entity noiseobject) signalnoise;
float (entity e) hearnoise;
entity () noisetarget;
// CopyrightNotice
// function begins at statement 1, parm_start=629
// OP_STORE_V	629	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	630	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	631	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () CopyrightNotice = 
{
    dprint(" The Quake C modifications included in this archive are Copyright 1996, Steven Polge.");
    dprint("The original QuakeC source is Copyright 1996, id software.");
    dprint("You MAY NOT use these modifications as a basis for other publicly or commercially available work.");
};

float (entity targ) Spotvisible;
float (entity targ) Platvisible;
float (vector spot) dropline;
void () secret_touch;
// doorweight
// function begins at statement 8, parm_start=637
// OP_STORE_F	576	638	0
// OP_LOAD_ENT	637	201	639
// OP_LOAD_S	639	197	640
// OP_IFNOT	640	3	0
// OP_STORE_F	577	638	0
// OP_GOTO	15	0	0
// OP_LOAD_FNC	637	146	641
// OP_EQ_FNC	641	635	642
// OP_IFNOT	642	3	0
// OP_STORE_F	576	638	0
// OP_GOTO	10	0	0
// OP_LOAD_F	637	433	643
// OP_EQ_F	643	282	644
// OP_IFNOT	644	3	0
// OP_STORE_F	577	638	0
// OP_GOTO	5	0	0
// OP_LOAD_F	637	433	645
// OP_EQ_F	645	284	646
// OP_IFNOT	646	2	0
// OP_STORE_F	576	638	0
// OP_STORE_V	637	4	0
// OP_CALL1	632	0	0
// OP_NOT_F	1	0	647
// OP_IFNOT	647	2	0
// OP_STORE_F	577	638	0
// OP_RETURN	638	0	0
// OP_DONE	0	0	0
float (entity e) doorweight = 
{
    local float weight;
    weight = KINDA_WANT;
    if(e.owner.targetname)
    {
        weight = DONT_WANT;
    }
    else
    {
        if(e.touch == secret_touch)
        {
            weight = KINDA_WANT;
        }
        else
        {
            if(e.state == STATE_TOP)
            {
                weight = DONT_WANT;
            }
            else
            {
                
                if(e.state == STATE_UP)
                {
                    weight = KINDA_WANT;
                }
                
            }
            
        }
        
    }
    
    
    if(!Spotvisible(e))
    {
        weight = DONT_WANT;
    }
    
    return weight;
};

// buttonweight
// function begins at statement 35, parm_start=649
// OP_STORE_F	577	650	0
// OP_LOAD_F	649	433	651
// OP_EQ_F	651	283	652
// OP_IFNOT	652	6	0
// OP_STORE_V	649	4	0
// OP_CALL1	632	0	0
// OP_IFNOT	1	3	0
// OP_ADD_F	576	214	653
// OP_STORE_F	653	650	0
// OP_RETURN	650	0	0
// OP_DONE	0	0	0
float (entity e) buttonweight = 
{
    local float weight;
    weight = DONT_WANT;
    
    if(e.state == STATE_BOTTOM)
    {
        
        if(Spotvisible(e))
        {
            weight = KINDA_WANT + TRUE;
        }
        
    }
    
    return weight;
};

// platweight
// function begins at statement 46, parm_start=655
// OP_STORE_F	576	656	0
// OP_STORE_V	655	4	0
// OP_CALL1	633	0	0
// OP_NOT_F	1	0	657
// OP_IFNOT	657	6	0
// OP_STORE_V	655	4	0
// OP_CALL1	632	0	0
// OP_NOT_F	1	0	658
// OP_IFNOT	658	2	0
// OP_STORE_F	577	656	0
// OP_RETURN	656	0	0
// OP_DONE	0	0	0
float (entity e) platweight = 
{
    local float weight;
    weight = KINDA_WANT;
    
    if(!Platvisible(e))
    {
        
        if(!Spotvisible(e))
        {
            weight = DONT_WANT;
        }
        
    }
    
    return weight;
};

// trigpushweight
// function begins at statement 58, parm_start=660
// OP_STORE_F	577	661	0
// OP_LOAD_V	660	94	668
// OP_LOAD_V	660	98	671
// OP_ADD_V	668	671	674
// OP_MUL_VF	674	677	678
// OP_STORE_V	678	665	0
// OP_LOAD_F	660	97	681
// OP_ADD_F	681	214	682
// OP_STORE_F	682	667	0
// OP_STORE_V	665	662	0
// OP_LOAD_F	28	108	683
// OP_STORE_F	683	664	0
// OP_LOAD_V	28	105	684
// OP_STORE_V	684	4	0
// OP_STORE_V	662	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	687
// OP_IFNOT	687	24	0
// OP_STORE_V	662	4	0
// OP_STORE_V	665	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	688
// OP_IFNOT	688	17	0
// OP_STORE_V	665	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	664	0
// OP_LOAD_F	28	97	689
// OP_GT	689	664	690
// OP_IFNOT	690	3	0
// OP_LOAD_F	28	97	691
// OP_STORE_F	691	664	0
// OP_LOAD_F	28	141	692
// OP_LOAD_F	28	137	693
// OP_SUB_F	692	693	694
// OP_ADD_F	694	664	695
// OP_ADD_F	695	608	696
// OP_LT	667	696	697
// OP_IFNOT	697	2	0
// OP_STORE_F	576	661	0
// OP_RETURN	661	0	0
// OP_DONE	0	0	0
float (entity e) trigpushweight = 
{
    local float weight;
    local vector spot;
    local vector org;
    weight = DONT_WANT;
    org = (e.absmin + e.absmax) * 0.5;
    org_z = e.absmin_z + TRUE;
    spot = org;
    spot_z = self.origin_z;
    traceline(self.origin, spot, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        traceline(spot, org, TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            spot_z = dropline(org);
            
            if(self.absmin_z > 0)
            {
                spot_z = self.absmin_z;
            }
            
            
            if(0 < (((self.maxs_z - self.mins_z) + 0) + MAXJUMP))
            {
                weight = KINDA_WANT;
            }
            
        }
        
    }
    
    return weight;
};

// triggerweight
// function begins at statement 103, parm_start=699
// OP_SUB_F	576	216	702
// OP_STORE_F	702	700	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	701	0
// OP_LT	701	703	704
// OP_IFNOT	704	2	0
// OP_STORE_F	575	700	0
// OP_STORE_V	699	4	0
// OP_CALL1	632	0	0
// OP_NOT_F	1	0	705
// OP_IFNOT	705	2	0
// OP_STORE_F	577	700	0
// OP_RETURN	700	0	0
// OP_DONE	0	0	0
float (entity e) triggerweight = 
{
    local float weight;
    local float rnd;
    weight = KINDA_WANT - FL_SWIM;
    rnd = random();
    
    if(rnd < 0.25)
    {
        weight = WANT;
    }
    
    
    if(!Spotvisible(e))
    {
        weight = DONT_WANT;
    }
    
    return weight;
};

// backpackweight
// function begins at statement 117, parm_start=707
// OP_STORE_F	575	709	0
// OP_LOAD_V	707	94	710
// OP_ADD_V	710	713	716
// OP_STORE_V	716	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	708	0
// OP_LOAD_F	707	162	719
// OP_ADD_F	259	260	720
// OP_BITAND	719	720	721
// OP_IFNOT	721	3	0
// OP_SUB_F	574	214	722
// OP_STORE_F	722	709	0
// OP_EQ_F	708	280	723
// OP_EQ_F	708	279	724
// OP_OR	723	724	725
// OP_IFNOT	725	2	0
// OP_STORE_F	577	709	0
// OP_RETURN	709	0	0
// OP_DONE	0	0	0
float (entity e) backpackweight = 
{
    local float lnd;
    local float weight;
    weight = WANT;
    lnd = pointcontents(e.absmin + '0.000 0.000 1.000');
    
    if(e.items & (IT_ROCKET_LAUNCHER + IT_LIGHTNING))
    {
        weight = MUST_HAVE - TRUE;
    }
    
    
    if((lnd == CONTENT_LAVA) || (lnd == CONTENT_SLIME))
    {
        weight = DONT_WANT;
    }
    
    return weight;
};

// healthweight
// function begins at statement 136, parm_start=727
// OP_STORE_F	575	728	0
// OP_LOAD_F	28	152	729
// OP_LT	729	730	731
// OP_IFNOT	731	4	0
// OP_SUB_F	574	214	732
// OP_STORE_F	732	728	0
// OP_GOTO	10	0	0
// OP_LOAD_F	727	527	733
// OP_EQ_F	733	216	734
// OP_IFNOT	734	3	0
// OP_STORE_F	574	728	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	735
// OP_GT	735	736	737
// OP_IFNOT	737	2	0
// OP_STORE_F	577	728	0
// OP_RETURN	728	0	0
// OP_DONE	0	0	0
float (entity e) healthweight = 
{
    local float weight;
    weight = WANT;
    if(self.health < 60)
    {
        weight = MUST_HAVE - TRUE;
    }
    else
    {
        if(e.healtype == FL_SWIM)
        {
            weight = MUST_HAVE;
        }
        else
        {
            
            if(self.health > 99)
            {
                weight = DONT_WANT;
            }
            
        }
        
    }
    
    return weight;
};

// nailweight
// function begins at statement 154, parm_start=739
// OP_SUB_F	575	214	741
// OP_STORE_F	741	740	0
// OP_LOAD_F	28	159	742
// OP_GT	742	743	744
// OP_IFNOT	744	3	0
// OP_STORE_F	577	740	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	159	745
// OP_GT	745	746	747
// OP_IFNOT	747	3	0
// OP_SUB_F	576	216	748
// OP_STORE_F	748	740	0
// OP_RETURN	740	0	0
// OP_DONE	0	0	0
float (entity e) nailweight = 
{
    local float weight;
    weight = WANT - TRUE;
    if(self.ammo_nails > 199)
    {
        weight = DONT_WANT;
    }
    else
    {
        
        if(self.ammo_nails > 120)
        {
            weight = KINDA_WANT - FL_SWIM;
        }
        
    }
    
    return weight;
};

// shellweight
// function begins at statement 168, parm_start=750
// OP_SUB_F	575	214	752
// OP_STORE_F	752	751	0
// OP_LOAD_F	28	158	753
// OP_GT	753	736	754
// OP_IFNOT	754	3	0
// OP_STORE_F	577	751	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	158	755
// OP_GT	755	756	757
// OP_IFNOT	757	3	0
// OP_SUB_F	576	216	758
// OP_STORE_F	758	751	0
// OP_RETURN	751	0	0
// OP_DONE	0	0	0
float (entity e) shellweight = 
{
    local float weight;
    weight = WANT - TRUE;
    if(self.ammo_shells > 99)
    {
        weight = DONT_WANT;
    }
    else
    {
        
        if(self.ammo_shells > 50)
        {
            weight = KINDA_WANT - FL_SWIM;
        }
        
    }
    
    return weight;
};

// cellweight
// function begins at statement 182, parm_start=760
// OP_STORE_F	575	761	0
// OP_LOAD_F	28	161	762
// OP_GT	762	736	763
// OP_IFNOT	763	2	0
// OP_STORE_F	577	761	0
// OP_RETURN	761	0	0
// OP_DONE	0	0	0
float (entity e) cellweight = 
{
    local float weight;
    weight = WANT;
    
    if(self.ammo_cells > 99)
    {
        weight = DONT_WANT;
    }
    
    return weight;
};

// rocketweight
// function begins at statement 189, parm_start=765
// OP_STORE_F	575	766	0
// OP_LOAD_F	28	160	767
// OP_GT	767	736	768
// OP_IFNOT	768	2	0
// OP_STORE_F	577	766	0
// OP_RETURN	766	0	0
// OP_DONE	0	0	0
float (entity e) rocketweight = 
{
    local float weight;
    weight = WANT;
    
    if(self.ammo_rockets > 99)
    {
        weight = DONT_WANT;
    }
    
    return weight;
};

// rlauncherweight
// function begins at statement 196, parm_start=770
// OP_ADD_F	575	216	772
// OP_STORE_F	772	771	0
// OP_LOAD_F	28	162	773
// OP_BITAND	773	259	774
// OP_NOT_F	774	0	775
// OP_IFNOT	775	2	0
// OP_STORE_F	574	771	0
// OP_RETURN	771	0	0
// OP_DONE	0	0	0
float (entity e) rlauncherweight = 
{
    local float weight;
    weight = WANT + FL_SWIM;
    
    if(!(self.items & IT_ROCKET_LAUNCHER))
    {
        weight = MUST_HAVE;
    }
    
    return weight;
};

// lightningweight
// function begins at statement 205, parm_start=777
// OP_ADD_F	575	216	779
// OP_STORE_F	779	778	0
// OP_LOAD_F	28	162	780
// OP_BITAND	780	260	781
// OP_NOT_F	781	0	782
// OP_IFNOT	782	2	0
// OP_STORE_F	574	778	0
// OP_RETURN	778	0	0
// OP_DONE	0	0	0
float (entity e) lightningweight = 
{
    local float weight;
    weight = WANT + FL_SWIM;
    
    if(!(self.items & IT_LIGHTNING))
    {
        weight = MUST_HAVE;
    }
    
    return weight;
};

// glauncherweight
// function begins at statement 214, parm_start=784
// OP_ADD_F	575	214	786
// OP_STORE_F	786	785	0
// OP_LOAD_F	28	162	787
// OP_BITAND	787	258	788
// OP_NOT_F	788	0	789
// OP_IFNOT	789	3	0
// OP_SUB_F	574	214	790
// OP_STORE_F	790	785	0
// OP_RETURN	785	0	0
// OP_DONE	0	0	0
float (entity e) glauncherweight = 
{
    local float weight;
    weight = WANT + TRUE;
    
    if(!(self.items & IT_GRENADE_LAUNCHER))
    {
        weight = MUST_HAVE - TRUE;
    }
    
    return weight;
};

// nailgunweight
// function begins at statement 224, parm_start=792
// OP_RETURN	575	0	0
// OP_DONE	0	0	0
float (entity e) nailgunweight = 
{
    return WANT;
};

// supernailweight
// function begins at statement 226, parm_start=794
// OP_ADD_F	575	214	796
// OP_STORE_F	796	795	0
// OP_LOAD_F	28	162	797
// OP_BITAND	797	257	798
// OP_NOT_F	798	0	799
// OP_IFNOT	799	3	0
// OP_SUB_F	574	214	800
// OP_STORE_F	800	795	0
// OP_RETURN	795	0	0
// OP_DONE	0	0	0
float (entity e) supernailweight = 
{
    local float weight;
    weight = WANT + TRUE;
    
    if(!(self.items & IT_SUPER_NAILGUN))
    {
        weight = MUST_HAVE - TRUE;
    }
    
    return weight;
};

// ssgweight
// function begins at statement 236, parm_start=802
// OP_RETURN	575	0	0
// OP_DONE	0	0	0
float (entity e) ssgweight = 
{
    return WANT;
};

// armorweight
// function begins at statement 238, parm_start=804
// OP_LOAD_F	804	188	806
// OP_LOAD_F	28	188	807
// OP_SUB_F	806	807	808
// OP_STORE_F	808	805	0
// OP_RETURN	805	0	0
// OP_DONE	0	0	0
float (entity e) armorweight = 
{
    local float weight;
    weight = e.armorvalue - self.armorvalue;
    return weight;
};

// artifactweight
// function begins at statement 244, parm_start=810
// OP_ADD_F	574	216	812
// OP_STORE_F	812	811	0
// OP_LOAD_S	810	129	813
// OP_EQ_S	813	814	815
// OP_IFNOT	815	2	0
// OP_STORE_F	575	811	0
// OP_RETURN	811	0	0
// OP_DONE	0	0	0
float (entity e) artifactweight = 
{
    local float weight;
    weight = MUST_HAVE + FL_SWIM;
    
    if(e.classname == "item_artifact_envirosuit")
    {
        weight = WANT;
    }
    
    return weight;
};

// cacherocket
// function begins at statement 252, parm_start=817
// OP_LOAD_F	817	554	820
// OP_GT	820	213	821
// OP_IFNOT	821	5	0
// OP_LOAD_F	817	554	822
// OP_GE	818	822	823
// OP_IFNOT	823	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	817	554	824
// OP_STOREP_F	818	824	0
// OP_ADDRESS	817	555	825
// OP_STOREP_ENT	819	825	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cacherocket = 
{
    
    if(node.rocketlen > FALSE)
    {
        
        if(len >= node.rocketlen)
        {
            return FALSE;
        }
        
    }
    
    node.rocketlen = len;
    node.rocketcache = item;
    return TRUE;
};

// cachelightning
// function begins at statement 265, parm_start=827
// OP_LOAD_F	827	556	830
// OP_GT	830	213	831
// OP_IFNOT	831	5	0
// OP_LOAD_F	827	556	832
// OP_GE	828	832	833
// OP_IFNOT	833	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	827	556	834
// OP_STOREP_F	828	834	0
// OP_ADDRESS	827	557	835
// OP_STOREP_ENT	829	835	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cachelightning = 
{
    
    if(node.lightninglen > FALSE)
    {
        
        if(len >= node.lightninglen)
        {
            return FALSE;
        }
        
    }
    
    node.lightninglen = len;
    node.lightningcache = item;
    return TRUE;
};

// cachearmor
// function begins at statement 278, parm_start=837
// OP_LOAD_F	837	558	840
// OP_GT	840	213	841
// OP_IFNOT	841	5	0
// OP_LOAD_F	837	558	842
// OP_GE	838	842	843
// OP_IFNOT	843	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	837	558	844
// OP_STOREP_F	838	844	0
// OP_ADDRESS	837	559	845
// OP_STOREP_ENT	839	845	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cachearmor = 
{
    
    if(node.armorlen > FALSE)
    {
        
        if(len >= node.armorlen)
        {
            return FALSE;
        }
        
    }
    
    node.armorlen = len;
    node.armorcache = item;
    return TRUE;
};

// cachenail
// function begins at statement 291, parm_start=847
// OP_LOAD_F	847	562	850
// OP_GT	850	213	851
// OP_IFNOT	851	5	0
// OP_LOAD_F	847	562	852
// OP_GE	848	852	853
// OP_IFNOT	853	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	847	562	854
// OP_STOREP_F	848	854	0
// OP_ADDRESS	847	563	855
// OP_STOREP_ENT	849	855	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cachenail = 
{
    
    if(node.naillen > FALSE)
    {
        
        if(len >= node.naillen)
        {
            return FALSE;
        }
        
    }
    
    node.naillen = len;
    node.nailcache = item;
    return TRUE;
};

// cachegrenade
// function begins at statement 304, parm_start=857
// OP_LOAD_F	857	564	860
// OP_GT	860	213	861
// OP_IFNOT	861	5	0
// OP_LOAD_F	857	564	862
// OP_GE	858	862	863
// OP_IFNOT	863	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	857	564	864
// OP_STOREP_F	858	864	0
// OP_ADDRESS	857	565	865
// OP_STOREP_ENT	859	865	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cachegrenade = 
{
    
    if(node.grenadelen > FALSE)
    {
        
        if(len >= node.grenadelen)
        {
            return FALSE;
        }
        
    }
    
    node.grenadelen = len;
    node.grenadecache = item;
    return TRUE;
};

// cachepowerup
// function begins at statement 317, parm_start=867
// OP_LOAD_F	867	566	870
// OP_GT	870	213	871
// OP_IFNOT	871	5	0
// OP_LOAD_F	867	566	872
// OP_GE	868	872	873
// OP_IFNOT	873	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	867	566	874
// OP_STOREP_F	868	874	0
// OP_ADDRESS	867	567	875
// OP_STOREP_ENT	869	875	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cachepowerup = 
{
    
    if(node.poweruplen > FALSE)
    {
        
        if(len >= node.poweruplen)
        {
            return FALSE;
        }
        
    }
    
    node.poweruplen = len;
    node.powerupcache = item;
    return TRUE;
};

// cacheenemy
// function begins at statement 330, parm_start=877
// OP_LOAD_F	877	568	880
// OP_GT	880	213	881
// OP_IFNOT	881	5	0
// OP_LOAD_F	877	568	882
// OP_GE	878	882	883
// OP_IFNOT	883	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	877	568	884
// OP_STOREP_F	878	884	0
// OP_ADDRESS	877	569	885
// OP_STOREP_ENT	879	885	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity node, float len, entity item) cacheenemy = 
{
    
    if(node.enemylen > FALSE)
    {
        
        if(len >= node.enemylen)
        {
            return FALSE;
        }
        
    }
    
    node.enemylen = len;
    node.enemycache = item;
    return TRUE;
};

// updaterocket
// function begins at statement 343, parm_start=887
// OP_ADDRESS	28	555	887
// OP_LOAD_ENT	28	561	888
// OP_STOREP_ENT	888	887	0
// OP_ADDRESS	28	554	889
// OP_LOAD_F	28	560	890
// OP_STOREP_F	890	889	0
// OP_DONE	0	0	0
void () updaterocket = 
{
    self.rocketcache = self.pendingcache;
    self.rocketlen = self.pendinglen;
};

// updatelightning
// function begins at statement 350, parm_start=892
// OP_ADDRESS	28	557	892
// OP_LOAD_ENT	28	561	893
// OP_STOREP_ENT	893	892	0
// OP_ADDRESS	28	556	894
// OP_LOAD_F	28	560	895
// OP_STOREP_F	895	894	0
// OP_DONE	0	0	0
void () updatelightning = 
{
    self.lightningcache = self.pendingcache;
    self.lightninglen = self.pendinglen;
};

// updatearmor
// function begins at statement 357, parm_start=897
// OP_ADDRESS	28	559	897
// OP_LOAD_ENT	28	561	898
// OP_STOREP_ENT	898	897	0
// OP_ADDRESS	28	558	899
// OP_LOAD_F	28	560	900
// OP_STOREP_F	900	899	0
// OP_DONE	0	0	0
void () updatearmor = 
{
    self.armorcache = self.pendingcache;
    self.armorlen = self.pendinglen;
};

// updatepowerup
// function begins at statement 364, parm_start=902
// OP_ADDRESS	28	567	902
// OP_LOAD_ENT	28	561	903
// OP_STOREP_ENT	903	902	0
// OP_ADDRESS	28	566	904
// OP_LOAD_F	28	560	905
// OP_STOREP_F	905	904	0
// OP_DONE	0	0	0
void () updatepowerup = 
{
    self.powerupcache = self.pendingcache;
    self.poweruplen = self.pendinglen;
};

// updatenail
// function begins at statement 371, parm_start=907
// OP_ADDRESS	28	563	907
// OP_LOAD_ENT	28	561	908
// OP_STOREP_ENT	908	907	0
// OP_ADDRESS	28	562	909
// OP_LOAD_F	28	560	910
// OP_STOREP_F	910	909	0
// OP_DONE	0	0	0
void () updatenail = 
{
    self.nailcache = self.pendingcache;
    self.naillen = self.pendinglen;
};

// updategrenade
// function begins at statement 378, parm_start=912
// OP_ADDRESS	28	565	912
// OP_LOAD_ENT	28	561	913
// OP_STOREP_ENT	913	912	0
// OP_ADDRESS	28	564	914
// OP_LOAD_F	28	560	915
// OP_STOREP_F	915	914	0
// OP_DONE	0	0	0
void () updategrenade = 
{
    self.grenadecache = self.pendingcache;
    self.grenadelen = self.pendinglen;
};

