void (vector tdest, float tspeed, void() func) SUB_CalcMove;
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;
void () SUB_CalcMoveDone;
void () SUB_CalcAngleMoveDone;
void () SUB_UseTargets;
void () SUB_Remove;
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage;
float (entity e, float healamount, float ignore) T_Heal;
float (entity targ, entity inflictor) CanDamage;
// SUB_Null
// function begins at statement 1, parm_start=523
// OP_DONE	0	0	0
void () SUB_Null =
{
};

// SUB_Remove
// function begins at statement 2, parm_start=523
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () SUB_Remove =
{
    remove(self);
};

// SetMovedir
// function begins at statement 5, parm_start=524
// OP_LOAD_V	28	117	524
// OP_EQ_V	524	527	530
// OP_IFNOT	530	4	0
// OP_ADDRESS	28	202	531
// OP_STOREP_V	534	531	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	117	537
// OP_EQ_V	537	540	543
// OP_IFNOT	543	4	0
// OP_ADDRESS	28	202	544
// OP_STOREP_V	547	544	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	117	550
// OP_STORE_V	550	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	202	553
// OP_STOREP_V	59	553	0
// OP_ADDRESS	28	117	556
// OP_STOREP_V	286	556	0
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
    
    self.angles = VEC_ORIGIN;
};

// InitTrigger
// function begins at statement 25, parm_start=560
// OP_LOAD_V	28	117	560
// OP_NE_V	560	286	563
// OP_IFNOT	563	2	0
// OP_CALL0	523	0	0
// OP_ADDRESS	28	104	564
// OP_STOREP_F	238	564	0
// OP_LOAD_S	28	130	565
// OP_STORE_V	28	4	0
// OP_STORE_V	565	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	103	566
// OP_STOREP_F	227	566	0
// OP_ADDRESS	28	93	567
// OP_STOREP_F	337	567	0
// OP_ADDRESS	28	130	568
// OP_STOREP_S	569	568	0
// OP_DONE	0	0	0
void () InitTrigger =
{
    
    if(self.angles != VEC_ORIGIN)
    {
        SetMovedir();
    }
    
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = MSG_BROADCAST;
    self.model = "";
};

// SUB_CalcMoveEnt
// function begins at statement 42, parm_start=570
// OP_STORE_ENT	28	576	0
// OP_STORE_ENT	570	28	0
// OP_STORE_V	571	4	0
// OP_STORE_V	574	7	0
// OP_STORE_V	575	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	576	28	0
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
// function begins at statement 50, parm_start=577
// OP_NOT_F	580	0	587
// OP_IFNOT	587	3	0
// OP_STORE_V	588	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	422	589
// OP_STOREP_FNC	581	589	0
// OP_ADDRESS	28	423	590
// OP_STOREP_V	577	590	0
// OP_ADDRESS	28	148	593
// OP_STOREP_FNC	515	593	0
// OP_LOAD_V	28	105	594
// OP_EQ_V	577	594	597
// OP_IFNOT	597	8	0
// OP_ADDRESS	28	113	598
// OP_STOREP_V	286	598	0
// OP_ADDRESS	28	150	601
// OP_LOAD_F	28	102	602
// OP_ADD_F	602	603	604
// OP_STOREP_F	604	601	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	605
// OP_SUB_V	577	605	608
// OP_STORE_V	608	582	0
// OP_STORE_V	582	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	585	0
// OP_DIV_F	585	580	611
// OP_STORE_F	611	586	0
// OP_LT	586	603	612
// OP_IFNOT	612	8	0
// OP_ADDRESS	28	113	613
// OP_STOREP_V	286	613	0
// OP_ADDRESS	28	150	616
// OP_LOAD_F	28	102	617
// OP_ADD_F	617	603	618
// OP_STOREP_F	618	616	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	619
// OP_LOAD_F	28	102	620
// OP_ADD_F	620	586	621
// OP_STOREP_F	621	619	0
// OP_ADDRESS	28	113	622
// OP_DIV_F	368	586	625
// OP_MUL_VF	582	625	626
// OP_STOREP_V	626	622	0
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
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.100;
        return;
    }
    
    vdestdelta = tdest - self.origin;
    len = vlen(vdestdelta);
    traveltime = len / tspeed;
    
    if(traveltime < 0.100)
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.100;
        return;
    }
    
    self.nextthink = self.ltime + traveltime;
    self.velocity = vdestdelta * (AS_STRAIGHT / traveltime);
};

// SUB_CalcMoveDone
// function begins at statement 96, parm_start=629
// OP_LOAD_V	28	423	629
// OP_STORE_V	28	4	0
// OP_STORE_V	629	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	113	632
// OP_STOREP_V	286	632	0
// OP_ADDRESS	28	150	635
// OP_STOREP_F	276	635	0
// OP_LOAD_FNC	28	422	636
// OP_IFNOT	636	3	0
// OP_LOAD_FNC	28	422	637
// OP_CALL0	637	0	0
// OP_DONE	0	0	0
void () SUB_CalcMoveDone =
{
    setorigin(self, self.finaldest);
    self.velocity = VEC_ORIGIN;
    self.nextthink = CONTENT_EMPTY;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// SUB_CalcAngleMoveEnt
// function begins at statement 109, parm_start=639
// OP_STORE_ENT	28	645	0
// OP_STORE_ENT	639	28	0
// OP_STORE_V	640	4	0
// OP_STORE_V	643	7	0
// OP_STORE_V	644	10	0
// OP_CALL3	514	0	0
// OP_STORE_ENT	645	28	0
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
// function begins at statement 117, parm_start=646
// OP_NOT_F	649	0	656
// OP_IFNOT	656	3	0
// OP_STORE_V	588	4	0
// OP_CALL1	456	0	0
// OP_LOAD_V	28	117	657
// OP_SUB_V	646	657	660
// OP_STORE_V	660	651	0
// OP_STORE_V	651	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	654	0
// OP_DIV_F	654	649	663
// OP_STORE_F	663	655	0
// OP_ADDRESS	28	150	664
// OP_LOAD_F	28	102	665
// OP_ADD_F	665	655	666
// OP_STOREP_F	666	664	0
// OP_ADDRESS	28	121	667
// OP_DIV_F	368	655	670
// OP_MUL_VF	651	670	671
// OP_STOREP_V	671	667	0
// OP_ADDRESS	28	422	674
// OP_STOREP_FNC	650	674	0
// OP_ADDRESS	28	427	675
// OP_STOREP_V	646	675	0
// OP_ADDRESS	28	148	678
// OP_STOREP_FNC	516	678	0
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
    self.avelocity = destdelta * (AS_STRAIGHT / traveltime);
    self.think1 = func;
    self.finalangle = destangle;
    self.think = SUB_CalcAngleMoveDone;
};

// SUB_CalcAngleMoveDone
// function begins at statement 144, parm_start=679
// OP_ADDRESS	28	117	679
// OP_LOAD_V	28	427	682
// OP_STOREP_V	682	679	0
// OP_ADDRESS	28	121	685
// OP_STOREP_V	286	685	0
// OP_ADDRESS	28	150	688
// OP_STOREP_F	276	688	0
// OP_LOAD_FNC	28	422	689
// OP_IFNOT	689	3	0
// OP_LOAD_FNC	28	422	690
// OP_CALL0	690	0	0
// OP_DONE	0	0	0
void () SUB_CalcAngleMoveDone =
{
    self.angles = self.finalangle;
    self.avelocity = VEC_ORIGIN;
    self.nextthink = CONTENT_EMPTY;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// DelayThink
// function begins at statement 156, parm_start=692
// OP_LOAD_ENT	28	181	692
// OP_STORE_ENT	692	346	0
// OP_CALL0	518	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () DelayThink =
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 162, parm_start=693
// OP_LOAD_F	28	414	697
// OP_IFNOT	697	23	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	693	0
// OP_ADDRESS	693	129	698
// OP_STOREP_S	699	698	0
// OP_ADDRESS	693	150	700
// OP_LOAD_F	28	414	701
// OP_ADD_F	31	701	702
// OP_STOREP_F	702	700	0
// OP_ADDRESS	693	148	703
// OP_STOREP_FNC	691	703	0
// OP_ADDRESS	693	181	704
// OP_STOREP_ENT	346	704	0
// OP_ADDRESS	693	206	705
// OP_LOAD_S	28	206	706
// OP_STOREP_S	706	705	0
// OP_ADDRESS	693	353	707
// OP_LOAD_S	28	353	708
// OP_STOREP_S	708	707	0
// OP_ADDRESS	693	196	709
// OP_LOAD_S	28	196	710
// OP_STOREP_S	710	709	0
// OP_RETURN	0	0	0
// OP_LOAD_S	346	129	711
// OP_EQ_S	711	712	713
// OP_LOAD_S	28	206	714
// OP_NE_S	714	569	715
// OP_AND	713	715	716
// OP_IFNOT	716	14	0
// OP_LOAD_S	28	206	717
// OP_STORE_V	346	4	0
// OP_STORE_V	717	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	208	718
// OP_NOT_S	718	0	719
// OP_IFNOT	719	7	0
// OP_STORE_V	346	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	720	10	0
// OP_STORE_V	368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	28	353	721
// OP_IFNOT	721	14	0
// OP_STORE_ENT	30	693	0
// OP_LOAD_S	28	353	722
// OP_STORE_V	693	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	722	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	693	0
// OP_NOT_ENT	693	0	723
// OP_IFNOT	723	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	693	4	0
// OP_CALL1	460	0	0
// OP_IF	368	-11	0
// OP_LOAD_S	28	196	724
// OP_IFNOT	724	27	0
// OP_STORE_ENT	346	696	0
// OP_STORE_ENT	30	693	0
// OP_LOAD_S	28	196	725
// OP_STORE_V	693	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	725	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	693	0
// OP_NOT_ENT	693	0	726
// OP_IFNOT	726	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	694	0
// OP_STORE_ENT	29	695	0
// OP_STORE_ENT	693	28	0
// OP_STORE_ENT	694	29	0
// OP_LOAD_FNC	28	147	727
// OP_NE_FNC	727	517	728
// OP_IFNOT	728	5	0
// OP_LOAD_FNC	28	147	729
// OP_IFNOT	729	3	0
// OP_LOAD_FNC	28	147	730
// OP_CALL0	730	0	0
// OP_STORE_ENT	694	28	0
// OP_STORE_ENT	695	29	0
// OP_STORE_ENT	696	346	0
// OP_IF	368	-23	0
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
            sound(activator, CHAN_VOICE, "misc/talk.wav", AS_STRAIGHT, ATTN_NORM);
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
        } while (AS_STRAIGHT);
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
        } while (AS_STRAIGHT);
    }
    
};

// SUB_AttackFinished
// function begins at statement 249, parm_start=732
// OP_ADDRESS	28	421	733
// OP_STOREP_F	337	733	0
// OP_NE_F	349	370	734
// OP_IFNOT	734	4	0
// OP_ADDRESS	28	373	735
// OP_ADD_F	31	732	736
// OP_STOREP_F	736	735	0
// OP_DONE	0	0	0
void (float normal) SUB_AttackFinished =
{
    self.cnt = MSG_BROADCAST;
    
    if(skill != AS_MELEE)
    {
        self.attack_finished = time + normal;
    }
    
};

float (entity targ) visible;
// SUB_CheckRefire
// function begins at statement 257, parm_start=739
// OP_NE_F	349	370	740
// OP_IFNOT	740	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	421	741
// OP_EQ_F	741	368	742
// OP_IFNOT	742	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	743
// OP_STORE_V	743	4	0
// OP_CALL1	737	0	0
// OP_NOT_F	1	0	744
// OP_IFNOT	744	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	421	745
// OP_STOREP_F	368	745	0
// OP_ADDRESS	28	148	746
// OP_STOREP_FNC	739	746	0
// OP_DONE	0	0	0
void (void() thinkst) SUB_CheckRefire =
{
    
    if(skill != AS_MELEE)
    {
        return;
    }
    
    
    if(self.cnt == AS_STRAIGHT)
    {
        return;
    }
    
    
    if(!visible(self.enemy))
    {
        return;
    }
    
    self.cnt = AS_STRAIGHT;
    self.think = thinkst;
};

