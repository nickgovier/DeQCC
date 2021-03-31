void (vector tdest, float tspeed, void() func) SUB_CalcMove;
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;
void () SUB_CalcMoveDone;
void () SUB_CalcAngleMoveDone;
void () SUB_UseTargets;
void () SUB_Remove;
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage;
float (entity targ, entity inflictor) CanDamage;
// SUB_Null
// function begins at statement 1, parm_start=571
// OP_DONE	0	0	0
void () SUB_Null = 
{
};

// SUB_Remove
// function begins at statement 2, parm_start=571
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () SUB_Remove = 
{
    remove(self);
};

// SetMovedir
// function begins at statement 5, parm_start=572
// OP_LOAD_V	28	142	572
// OP_EQ_V	572	575	578
// OP_IFNOT	578	4	0
// OP_ADDRESS	28	227	579
// OP_STOREP_V	582	579	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	142	585
// OP_EQ_V	585	588	591
// OP_IFNOT	591	4	0
// OP_ADDRESS	28	227	592
// OP_STOREP_V	595	592	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	142	598
// OP_STORE_V	598	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	227	601
// OP_STOREP_V	59	601	0
// OP_ADDRESS	28	142	604
// OP_STOREP_V	607	604	0
// OP_DONE	0	0	0
void () SetMovedir = 
{
    if(self.angles == '0.000 -1.000 0.000')
    {
        self.movedir = '0.000 0.000 1.000';
    }
    else
    {
        if(self.angles == '0.000 -2.000 0.000')
        {
            self.movedir = '0.000 0.000 -1.000';
        }
        else
        {
            makevectors(self.angles);
            self.movedir = v_forward;
        }
        
    }
    
    self.angles = '0.000 0.000 0.000';
};

// InitTrigger
// function begins at statement 25, parm_start=611
// OP_LOAD_V	28	142	611
// OP_NE_V	611	607	614
// OP_IFNOT	614	2	0
// OP_CALL0	571	0	0
// OP_ADDRESS	28	129	615
// OP_STOREP_F	292	615	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	616
// OP_STORE_V	616	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	128	617
// OP_STOREP_F	281	617	0
// OP_ADDRESS	28	118	618
// OP_STOREP_F	619	618	0
// OP_ADDRESS	28	155	620
// OP_STOREP_S	621	620	0
// OP_DONE	0	0	0
void () InitTrigger = 
{
    
    if(self.angles != '0.000 0.000 0.000')
    {
        SetMovedir();
    }
    
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0.000;
    self.model = "";
};

// SUB_CalcMoveEnt
// function begins at statement 42, parm_start=622
// OP_STORE_ENT	28	628	0
// OP_STORE_ENT	622	28	0
// OP_STORE_V	623	4	0
// OP_STORE_V	626	7	0
// OP_STORE_V	627	10	0
// OP_CALL3	561	0	0
// OP_STORE_ENT	628	28	0
// OP_DONE	0	0	0
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt = 
{
    local entity stemp;
    stemp = self;
    self = ent;
    SUB_CalcMove(tdest, tspeed, func);
    self = stemp;
};

// SUB_CalcMove
// function begins at statement 50, parm_start=629
// OP_NOT_F	632	0	639
// OP_IFNOT	639	3	0
// OP_STORE_V	640	4	0
// OP_CALL1	505	0	0
// OP_ADDRESS	28	471	641
// OP_STOREP_FNC	633	641	0
// OP_ADDRESS	28	472	642
// OP_STOREP_V	629	642	0
// OP_ADDRESS	28	173	645
// OP_STOREP_FNC	564	645	0
// OP_LOAD_V	28	130	646
// OP_EQ_V	629	646	649
// OP_IFNOT	649	8	0
// OP_ADDRESS	28	138	650
// OP_STOREP_V	607	650	0
// OP_ADDRESS	28	175	653
// OP_LOAD_F	28	127	654
// OP_ADD_F	654	655	656
// OP_STOREP_F	656	653	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	657
// OP_SUB_V	629	657	660
// OP_STORE_V	660	634	0
// OP_STORE_V	634	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	637	0
// OP_DIV_F	637	632	663
// OP_STORE_F	663	638	0
// OP_LT	638	655	664
// OP_IFNOT	664	8	0
// OP_ADDRESS	28	138	665
// OP_STOREP_V	607	665	0
// OP_ADDRESS	28	175	668
// OP_LOAD_F	28	127	669
// OP_ADD_F	669	655	670
// OP_STOREP_F	670	668	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	175	671
// OP_LOAD_F	28	127	672
// OP_ADD_F	672	638	673
// OP_STOREP_F	673	671	0
// OP_ADDRESS	28	138	674
// OP_DIV_F	677	638	678
// OP_MUL_VF	634	678	679
// OP_STOREP_V	679	674	0
// OP_DONE	0	0	0
void (vector tdest, float tspeed, void() func) SUB_CalcMove = 
{
    local vector vdestdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
        objerror("No speed is defined!");
    }
    
    self.think1 = func;
    self.finaldest = tdest;
    self.think = SUB_CalcMoveDone;
    
    if(tdest == self.origin)
    {
        self.velocity = '0.000 0.000 0.000';
        self.nextthink = self.ltime + 0.100;
        return;
    }
    
    vdestdelta = tdest - self.origin;
    len = vlen(vdestdelta);
    traveltime = len / tspeed;
    
    if(traveltime < 0.100)
    {
        self.velocity = '0.000 0.000 0.000';
        self.nextthink = self.ltime + 0.100;
        return;
    }
    
    self.nextthink = self.ltime + traveltime;
    self.velocity = vdestdelta * (1.000 / traveltime);
};

// SUB_CalcMoveDone
// function begins at statement 96, parm_start=682
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	472	682
// OP_STORE_V	682	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	138	685
// OP_STOREP_V	607	685	0
// OP_ADDRESS	28	175	688
// OP_STOREP_F	689	688	0
// OP_LOAD_FNC	28	471	690
// OP_IFNOT	690	3	0
// OP_LOAD_FNC	28	471	691
// OP_CALL0	691	0	0
// OP_DONE	0	0	0
void () SUB_CalcMoveDone = 
{
    setorigin(self, self.finaldest);
    self.velocity = '0.000 0.000 0.000';
    self.nextthink = -1.000;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// SUB_CalcAngleMoveEnt
// function begins at statement 109, parm_start=693
// OP_STORE_ENT	28	699	0
// OP_STORE_ENT	693	28	0
// OP_STORE_V	694	4	0
// OP_STORE_V	697	7	0
// OP_STORE_V	698	10	0
// OP_CALL3	563	0	0
// OP_STORE_ENT	699	28	0
// OP_DONE	0	0	0
void (entity ent, vector destangle, float tspeed, void() func) SUB_CalcAngleMoveEnt = 
{
    local entity stemp;
    stemp = self;
    self = ent;
    SUB_CalcAngleMove(destangle, tspeed, func);
    self = stemp;
};

// SUB_CalcAngleMove
// function begins at statement 117, parm_start=700
// OP_NOT_F	703	0	710
// OP_IFNOT	710	3	0
// OP_STORE_V	640	4	0
// OP_CALL1	505	0	0
// OP_LOAD_V	28	142	711
// OP_SUB_V	700	711	714
// OP_STORE_V	714	705	0
// OP_STORE_V	705	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	708	0
// OP_DIV_F	708	703	717
// OP_STORE_F	717	709	0
// OP_ADDRESS	28	175	718
// OP_LOAD_F	28	127	719
// OP_ADD_F	719	709	720
// OP_STOREP_F	720	718	0
// OP_ADDRESS	28	146	721
// OP_DIV_F	677	709	724
// OP_MUL_VF	705	724	725
// OP_STOREP_V	725	721	0
// OP_ADDRESS	28	471	728
// OP_STOREP_FNC	704	728	0
// OP_ADDRESS	28	476	729
// OP_STOREP_V	700	729	0
// OP_ADDRESS	28	173	732
// OP_STOREP_FNC	565	732	0
// OP_DONE	0	0	0
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove = 
{
    local vector destdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
        objerror("No speed is defined!");
    }
    
    destdelta = destangle - self.angles;
    len = vlen(destdelta);
    traveltime = len / tspeed;
    self.nextthink = self.ltime + traveltime;
    self.avelocity = destdelta * (1.000 / traveltime);
    self.think1 = func;
    self.finalangle = destangle;
    self.think = SUB_CalcAngleMoveDone;
};

// SUB_CalcAngleMoveDone
// function begins at statement 144, parm_start=733
// OP_ADDRESS	28	142	733
// OP_LOAD_V	28	476	736
// OP_STOREP_V	736	733	0
// OP_ADDRESS	28	146	739
// OP_STOREP_V	607	739	0
// OP_ADDRESS	28	175	742
// OP_STOREP_F	689	742	0
// OP_LOAD_FNC	28	471	743
// OP_IFNOT	743	3	0
// OP_LOAD_FNC	28	471	744
// OP_CALL0	744	0	0
// OP_DONE	0	0	0
void () SUB_CalcAngleMoveDone = 
{
    self.angles = self.finalangle;
    self.avelocity = '0.000 0.000 0.000';
    self.nextthink = -1.000;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// DelayThink
// function begins at statement 156, parm_start=746
// OP_LOAD_ENT	28	206	746
// OP_STORE_ENT	746	395	0
// OP_CALL0	567	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () DelayThink = 
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 162, parm_start=747
// OP_LOAD_F	28	463	751
// OP_IFNOT	751	23	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	747	0
// OP_ADDRESS	747	154	752
// OP_STOREP_S	753	752	0
// OP_ADDRESS	747	175	754
// OP_LOAD_F	28	463	755
// OP_ADD_F	31	755	756
// OP_STOREP_F	756	754	0
// OP_ADDRESS	747	173	757
// OP_STOREP_FNC	745	757	0
// OP_ADDRESS	747	206	758
// OP_STOREP_ENT	395	758	0
// OP_ADDRESS	747	231	759
// OP_LOAD_S	28	231	760
// OP_STOREP_S	760	759	0
// OP_ADDRESS	747	402	761
// OP_LOAD_S	28	402	762
// OP_STOREP_S	762	761	0
// OP_ADDRESS	747	221	763
// OP_LOAD_S	28	221	764
// OP_STOREP_S	764	763	0
// OP_RETURN	0	0	0
// OP_LOAD_S	395	154	765
// OP_EQ_S	765	766	767
// OP_LOAD_S	28	231	768
// OP_NE_S	768	621	769
// OP_AND	767	769	770
// OP_IFNOT	770	14	0
// OP_STORE_V	395	4	0
// OP_LOAD_S	28	231	771
// OP_STORE_V	771	7	0
// OP_CALL2	555	0	0
// OP_LOAD_S	28	233	772
// OP_NOT_S	772	0	773
// OP_IFNOT	773	7	0
// OP_STORE_V	395	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_S	28	402	775
// OP_IFNOT	775	14	0
// OP_STORE_ENT	30	747	0
// OP_STORE_V	747	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	402	776
// OP_STORE_V	776	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	747	0
// OP_NOT_ENT	747	0	777
// OP_IFNOT	777	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	747	4	0
// OP_CALL1	509	0	0
// OP_IF	677	-11	0
// OP_LOAD_S	28	221	778
// OP_IFNOT	778	27	0
// OP_STORE_ENT	395	750	0
// OP_STORE_ENT	30	747	0
// OP_STORE_V	747	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	779
// OP_STORE_V	779	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	747	0
// OP_NOT_ENT	747	0	780
// OP_IFNOT	780	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	748	0
// OP_STORE_ENT	29	749	0
// OP_STORE_ENT	747	28	0
// OP_STORE_ENT	748	29	0
// OP_LOAD_FNC	28	172	781
// OP_NE_FNC	781	566	782
// OP_IFNOT	782	5	0
// OP_LOAD_FNC	28	172	783
// OP_IFNOT	783	3	0
// OP_LOAD_FNC	28	172	784
// OP_CALL0	784	0	0
// OP_STORE_ENT	748	28	0
// OP_STORE_ENT	749	29	0
// OP_STORE_ENT	750	395	0
// OP_IF	677	-23	0
// OP_DONE	0	0	0
void () SUB_UseTargets = 
{
    local entity t;
    local entity stemp;
    local entity otemp;
    local entity act;
    
    if(self.delay)
    {
        t = spawn();
        t.classname = "DelayedUse";
        t.nextthink = time + self.delay;
        t.think = DelayThink;
        t.enemy = activator;
        t.message = self.message;
        t.killtarget = self.killtarget;
        t.target = self.target;
        return;
    }
    
    
    if((activator.classname == "player") && (self.message != ""))
    {
        centerprint(activator, self.message);
        
        if(!self.noise)
        {
            sound(activator, CHAN_VOICE, "misc/talk.wav", 1.000, ATTN_NORM);
        }
        
    }
    
    
    if(self.killtarget)
    {
        t = world;
        do
        {
            t = find(t, targetname, self.killtarget);
            
            if(!t)
            {
                return;
            }
            
            remove(t);
        } while (1.000);
    }
    
    
    if(self.target)
    {
        act = activator;
        t = world;
        do
        {
            t = find(t, targetname, self.target);
            
            if(!t)
            {
                return;
            }
            
            stemp = self;
            otemp = other;
            self = t;
            other = stemp;
            
            if(self.use != SUB_Null)
            {
                
                if(self.use)
                {
                    self.use();
                }
                
            }
            
            self = stemp;
            other = otemp;
            activator = act;
        } while (1.000);
    }
    
};

// SUB_AttackFinished
// function begins at statement 249, parm_start=786
// OP_ADDRESS	28	470	787
// OP_STOREP_F	619	787	0
// OP_NE_F	398	788	789
// OP_IFNOT	789	4	0
// OP_ADDRESS	28	422	790
// OP_ADD_F	31	786	791
// OP_STOREP_F	791	790	0
// OP_DONE	0	0	0
void (float normal) SUB_AttackFinished = 
{
    self.cnt = 0.000;
    
    if(skill != 3.000)
    {
        self.attack_finished = time + normal;
    }
    
};

float (entity targ) visible;
// SUB_CheckRefire
// function begins at statement 257, parm_start=794
// OP_NE_F	398	788	795
// OP_IFNOT	795	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	470	796
// OP_EQ_F	796	677	797
// OP_IFNOT	797	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	798
// OP_STORE_V	798	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	799
// OP_IFNOT	799	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	470	800
// OP_STOREP_F	677	800	0
// OP_ADDRESS	28	173	801
// OP_STOREP_FNC	794	801	0
// OP_DONE	0	0	0
void (void() thinkst) SUB_CheckRefire = 
{
    
    if(skill != 3.000)
    {
        return;
    }
    
    
    if(self.cnt == 1.000)
    {
        return;
    }
    
    
    if(!visible(self.enemy))
    {
        return;
    }
    
    self.cnt = 1.000;
    self.think = thinkst;
};

