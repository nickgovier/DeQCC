// SUB_Null
// function begins at statement 8800, parm_start=7371
// OP_DONE	0	0	0
void () SUB_Null = 
{
};

// SUB_Remove
// function begins at statement 8801, parm_start=7371
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () SUB_Remove = 
{
    remove(self);
};

// SetMovedir
// function begins at statement 8804, parm_start=7372
// OP_LOAD_V	28	117	7372
// OP_EQ_V	7372	7375	7378
// OP_IFNOT	7378	4	0
// OP_ADDRESS	28	202	7379
// OP_STOREP_V	1215	7379	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	117	7382
// OP_EQ_V	7382	7385	7388
// OP_IFNOT	7388	4	0
// OP_ADDRESS	28	202	7389
// OP_STOREP_V	7392	7389	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	117	7395
// OP_STORE_V	7395	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	202	7398
// OP_STOREP_V	59	7398	0
// OP_ADDRESS	28	117	7401
// OP_STOREP_V	926	7401	0
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
// function begins at statement 8824, parm_start=7405
// OP_LOAD_V	28	117	7405
// OP_NE_V	7405	926	7408
// OP_IFNOT	7408	2	0
// OP_CALL0	7371	0	0
// OP_ADDRESS	28	104	7409
// OP_STOREP_F	244	7409	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7410
// OP_STORE_V	7410	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	7411
// OP_STOREP_F	233	7411	0
// OP_ADDRESS	28	93	7412
// OP_STOREP_F	817	7412	0
// OP_ADDRESS	28	130	7413
// OP_STOREP_S	4128	7413	0
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
    self.modelindex = 0;
    self.model = "";
};

// SUB_CalcMoveEnt
// function begins at statement 8841, parm_start=7414
// OP_STORE_ENT	28	7420	0
// OP_STORE_ENT	7414	28	0
// OP_STORE_V	7415	4	0
// OP_STORE_V	7418	7	0
// OP_STORE_V	7419	10	0
// OP_CALL3	526	0	0
// OP_STORE_ENT	7420	28	0
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
// function begins at statement 8849, parm_start=7421
// OP_NOT_F	7424	0	7431
// OP_IFNOT	7431	3	0
// OP_STORE_V	7432	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	436	7433
// OP_STOREP_FNC	7425	7433	0
// OP_ADDRESS	28	437	7434
// OP_STOREP_V	7421	7434	0
// OP_ADDRESS	28	148	7437
// OP_STOREP_FNC	529	7437	0
// OP_LOAD_V	28	105	7438
// OP_EQ_V	7421	7438	7441
// OP_IFNOT	7441	8	0
// OP_ADDRESS	28	113	7442
// OP_STOREP_V	926	7442	0
// OP_ADDRESS	28	150	7445
// OP_LOAD_F	28	102	7446
// OP_ADD_F	7446	2869	7447
// OP_STOREP_F	7447	7445	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	7448
// OP_SUB_V	7421	7448	7451
// OP_STORE_V	7451	7426	0
// OP_STORE_V	7426	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	7429	0
// OP_DIV_F	7429	7424	7454
// OP_STORE_F	7454	7430	0
// OP_LT	7430	2869	7455
// OP_IFNOT	7455	8	0
// OP_ADDRESS	28	113	7456
// OP_STOREP_V	926	7456	0
// OP_ADDRESS	28	150	7459
// OP_LOAD_F	28	102	7460
// OP_ADD_F	7460	2869	7461
// OP_STOREP_F	7461	7459	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	7462
// OP_LOAD_F	28	102	7463
// OP_ADD_F	7463	7430	7464
// OP_STOREP_F	7464	7462	0
// OP_ADDRESS	28	113	7465
// OP_DIV_F	819	7430	7468
// OP_MUL_VF	7426	7468	7469
// OP_STOREP_V	7469	7465	0
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
        self.nextthink = self.ltime + 0.1;
        return;
    }
    
    vdestdelta = tdest - self.origin;
    len = vlen(vdestdelta);
    traveltime = len / tspeed;
    
    if(traveltime < 0.1)
    {
        self.velocity = '0.000 0.000 0.000';
        self.nextthink = self.ltime + 0.1;
        return;
    }
    
    self.nextthink = self.ltime + traveltime;
    self.velocity = vdestdelta * (1 / traveltime);
};

// SUB_CalcMoveDone
// function begins at statement 8895, parm_start=7472
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	437	7472
// OP_STORE_V	7472	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	113	7475
// OP_STOREP_V	926	7475	0
// OP_ADDRESS	28	150	7478
// OP_STOREP_F	1228	7478	0
// OP_LOAD_FNC	28	436	7479
// OP_IFNOT	7479	3	0
// OP_LOAD_FNC	28	436	7480
// OP_CALL0	7480	0	0
// OP_DONE	0	0	0
void () SUB_CalcMoveDone = 
{
    setorigin(self, self.finaldest);
    self.velocity = '0.000 0.000 0.000';
    self.nextthink = -1;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// SUB_CalcAngleMoveEnt
// function begins at statement 8908, parm_start=7482
// OP_STORE_ENT	28	7488	0
// OP_STORE_ENT	7482	28	0
// OP_STORE_V	7483	4	0
// OP_STORE_V	7486	7	0
// OP_STORE_V	7487	10	0
// OP_CALL3	528	0	0
// OP_STORE_ENT	7488	28	0
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
// function begins at statement 8916, parm_start=7489
// OP_NOT_F	7492	0	7499
// OP_IFNOT	7499	3	0
// OP_STORE_V	7432	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	117	7500
// OP_SUB_V	7489	7500	7503
// OP_STORE_V	7503	7494	0
// OP_STORE_V	7494	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	7497	0
// OP_DIV_F	7497	7492	7506
// OP_STORE_F	7506	7498	0
// OP_ADDRESS	28	150	7507
// OP_LOAD_F	28	102	7508
// OP_ADD_F	7508	7498	7509
// OP_STOREP_F	7509	7507	0
// OP_ADDRESS	28	121	7510
// OP_DIV_F	819	7498	7513
// OP_MUL_VF	7494	7513	7514
// OP_STOREP_V	7514	7510	0
// OP_ADDRESS	28	436	7517
// OP_STOREP_FNC	7493	7517	0
// OP_ADDRESS	28	441	7518
// OP_STOREP_V	7489	7518	0
// OP_ADDRESS	28	148	7521
// OP_STOREP_FNC	530	7521	0
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
    self.avelocity = destdelta * (1 / traveltime);
    self.think1 = func;
    self.finalangle = destangle;
    self.think = SUB_CalcAngleMoveDone;
};

// SUB_CalcAngleMoveDone
// function begins at statement 8943, parm_start=7522
// OP_ADDRESS	28	117	7522
// OP_LOAD_V	28	441	7525
// OP_STOREP_V	7525	7522	0
// OP_ADDRESS	28	121	7528
// OP_STOREP_V	926	7528	0
// OP_ADDRESS	28	150	7531
// OP_STOREP_F	1228	7531	0
// OP_LOAD_FNC	28	436	7532
// OP_IFNOT	7532	3	0
// OP_LOAD_FNC	28	436	7533
// OP_CALL0	7533	0	0
// OP_DONE	0	0	0
void () SUB_CalcAngleMoveDone = 
{
    self.angles = self.finalangle;
    self.avelocity = '0.000 0.000 0.000';
    self.nextthink = -1;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// DelayThink
// function begins at statement 8955, parm_start=7535
// OP_LOAD_ENT	28	181	7535
// OP_STORE_ENT	7535	360	0
// OP_CALL0	532	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () DelayThink = 
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 8961, parm_start=7536
// OP_LOAD_F	28	428	7540
// OP_IFNOT	7540	23	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	7536	0
// OP_ADDRESS	7536	129	7541
// OP_STOREP_S	7542	7541	0
// OP_ADDRESS	7536	150	7543
// OP_LOAD_F	28	428	7544
// OP_ADD_F	31	7544	7545
// OP_STOREP_F	7545	7543	0
// OP_ADDRESS	7536	148	7546
// OP_STOREP_FNC	7534	7546	0
// OP_ADDRESS	7536	181	7547
// OP_STOREP_ENT	360	7547	0
// OP_ADDRESS	7536	206	7548
// OP_LOAD_S	28	206	7549
// OP_STOREP_S	7549	7548	0
// OP_ADDRESS	7536	367	7550
// OP_LOAD_S	28	367	7551
// OP_STOREP_S	7551	7550	0
// OP_ADDRESS	7536	196	7552
// OP_LOAD_S	28	196	7553
// OP_STOREP_S	7553	7552	0
// OP_RETURN	0	0	0
// OP_LOAD_S	360	129	7554
// OP_EQ_S	7554	880	7555
// OP_LOAD_S	28	206	7556
// OP_NE_S	7556	4128	7557
// OP_AND	7555	7557	7558
// OP_IFNOT	7558	14	0
// OP_STORE_V	360	4	0
// OP_LOAD_S	28	206	7559
// OP_STORE_V	7559	7	0
// OP_CALL2	520	0	0
// OP_LOAD_S	28	208	7560
// OP_NOT_S	7560	0	7561
// OP_IFNOT	7561	7	0
// OP_STORE_V	360	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7562	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_S	28	367	7563
// OP_IFNOT	7563	14	0
// OP_STORE_ENT	30	7536	0
// OP_STORE_V	7536	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	367	7564
// OP_STORE_V	7564	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7536	0
// OP_NOT_ENT	7536	0	7565
// OP_IFNOT	7565	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	7536	4	0
// OP_CALL1	474	0	0
// OP_IF	819	-11	0
// OP_LOAD_S	28	196	7566
// OP_IFNOT	7566	27	0
// OP_STORE_ENT	360	7539	0
// OP_STORE_ENT	30	7536	0
// OP_STORE_V	7536	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7567
// OP_STORE_V	7567	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7536	0
// OP_NOT_ENT	7536	0	7568
// OP_IFNOT	7568	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	7537	0
// OP_STORE_ENT	29	7538	0
// OP_STORE_ENT	7536	28	0
// OP_STORE_ENT	7537	29	0
// OP_LOAD_FNC	28	147	7569
// OP_NE_FNC	7569	531	7570
// OP_IFNOT	7570	5	0
// OP_LOAD_FNC	28	147	7571
// OP_IFNOT	7571	3	0
// OP_LOAD_FNC	28	147	7572
// OP_CALL0	7572	0	0
// OP_STORE_ENT	7537	28	0
// OP_STORE_ENT	7538	29	0
// OP_STORE_ENT	7539	360	0
// OP_IF	819	-23	0
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
            sound(activator, CHAN_VOICE, "misc/talk.wav", 1, ATTN_NORM);
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
        } while (1);
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
        } while (1);
    }
    
};

// SUB_AttackFinished
// function begins at statement 9048, parm_start=7574
// OP_ADDRESS	28	435	7575
// OP_STOREP_F	817	7575	0
// OP_NE_F	363	823	7576
// OP_IFNOT	7576	4	0
// OP_ADDRESS	28	387	7577
// OP_ADD_F	31	7574	7578
// OP_STOREP_F	7578	7577	0
// OP_DONE	0	0	0
void (float normal) SUB_AttackFinished = 
{
    self.cnt = 0;
    
    if(skill != 3)
    {
        self.attack_finished = time + normal;
    }
    
};

float (entity targ) visible;
// SUB_CheckRefire
// function begins at statement 9056, parm_start=7581
// OP_NE_F	363	823	7582
// OP_IFNOT	7582	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	435	7583
// OP_EQ_F	7583	819	7584
// OP_IFNOT	7584	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7585
// OP_STORE_V	7585	4	0
// OP_CALL1	7579	0	0
// OP_NOT_F	1	0	7586
// OP_IFNOT	7586	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	435	7587
// OP_STOREP_F	819	7587	0
// OP_ADDRESS	28	148	7588
// OP_STOREP_FNC	7581	7588	0
// OP_DONE	0	0	0
void (void() thinkst) SUB_CheckRefire = 
{
    
    if(skill != 3)
    {
        return;
    }
    
    
    if(self.cnt == 1)
    {
        return;
    }
    
    
    if(!visible(self.enemy))
    {
        return;
    }
    
    self.cnt = 1;
    self.think = thinkst;
};

