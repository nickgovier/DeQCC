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
entity current_turn;
float action_flag;
entity current_selected;
entity current_enemy;
string current_destination;
float current_dest_int;
entity current_brush;
entity player1;
entity player2;
entity message_entity;
string message_text;
entity message_target;
entity castle_to_move;
float castle_destination;
float king_castle_move_flag;
float king_dead;
entity last_highlight;
float time_per_turn;
entity pawning_enemy;
entity ignore_canmove;
float secret_monsters;
float single_player;
entity light_ent;
entity dest_ent;
float en_passant_flag;
.float chess_flags;
.string chess_team;
.float location;
.string location_str;
.float last_voice;
.entity last_voice_entity;
.entity opponent;
.vector last_vel;
.vector orig_angle;
.entity attack_missile;
.float last_color;
.float turn_starttime;
.string last_message;
.entity pointer;
.entity last_moved;
float CF_SELECTED_PIECE = 4;
float CF_HAS_MOVED = 8;
float CF_CHECK_NOTIFY = 16;
float CF_TIME_NOTIFY = 32;
float LASERTARG_ON = 1;
float SVC_SETVIEWANGLES = 10;
float () TwoPlayersInGame;
void () FindSelection;
void () CameraPos;
void (entity plyr) AllocateMonsters;
void () FindLocation;
float (entity ent, float loc, float actual_move) CanMove;
float (float loc) GetX;
float (float loc) GetY;
void () ProcessSelection;
void (entity client) WalkToDest;
void (vector org, vector vel, float damage) SpawnBlood;
entity (float loc) EntityAtLoc;
void () message_think;
void () welcome_mesg;
void () become_queen;
void (vector org) spawn_tfog;
vector (float loc) LocationToVector;
void () next_turn;
entity (entity monst) FindNewEnemy;
void (float loc) HighlightLocation;
void () CheckGameOver;
void (entity plyr) UpdateMonsterColors;
float (entity ent, entity ignore) CanDie;
entity (entity own) get_king;
void (entity ent, string msg) mycentreprint;
void (entity ent, string cmd) mystuffcmd;
// SUB_Null
// function begins at statement 1, parm_start=602
// OP_DONE	0	0	0
void () SUB_Null = 
{
};

// SUB_Remove
// function begins at statement 2, parm_start=602
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () SUB_Remove = 
{
    remove(self);
};

// SetMovedir
// function begins at statement 5, parm_start=603
// OP_LOAD_V	28	117	603
// OP_EQ_V	603	606	609
// OP_IFNOT	609	4	0
// OP_ADDRESS	28	202	610
// OP_STOREP_V	613	610	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	117	616
// OP_EQ_V	616	619	622
// OP_IFNOT	622	4	0
// OP_ADDRESS	28	202	623
// OP_STOREP_V	626	623	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	117	629
// OP_STORE_V	629	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	28	202	632
// OP_STOREP_V	59	632	0
// OP_ADDRESS	28	117	635
// OP_STOREP_V	638	635	0
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
// function begins at statement 25, parm_start=642
// OP_LOAD_V	28	117	642
// OP_NE_V	642	638	645
// OP_IFNOT	645	2	0
// OP_CALL0	602	0	0
// OP_ADDRESS	28	104	646
// OP_STOREP_F	239	646	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	647
// OP_STORE_V	647	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	103	648
// OP_STOREP_F	228	648	0
// OP_ADDRESS	28	93	649
// OP_STOREP_F	650	649	0
// OP_ADDRESS	28	130	651
// OP_STOREP_S	652	651	0
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
// function begins at statement 42, parm_start=653
// OP_STORE_ENT	28	659	0
// OP_STORE_ENT	653	28	0
// OP_STORE_V	654	4	0
// OP_STORE_V	657	7	0
// OP_STORE_V	658	10	0
// OP_CALL3	513	0	0
// OP_STORE_ENT	659	28	0
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
// function begins at statement 50, parm_start=660
// OP_NOT_F	663	0	670
// OP_IFNOT	670	3	0
// OP_STORE_V	671	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	423	672
// OP_STOREP_FNC	664	672	0
// OP_ADDRESS	28	424	673
// OP_STOREP_V	660	673	0
// OP_ADDRESS	28	148	676
// OP_STOREP_FNC	516	676	0
// OP_LOAD_V	28	105	677
// OP_EQ_V	660	677	680
// OP_IFNOT	680	8	0
// OP_ADDRESS	28	113	681
// OP_STOREP_V	638	681	0
// OP_ADDRESS	28	150	684
// OP_LOAD_F	28	102	685
// OP_ADD_F	685	686	687
// OP_STOREP_F	687	684	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	688
// OP_SUB_V	660	688	691
// OP_STORE_V	691	665	0
// OP_STORE_V	665	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	668	0
// OP_DIV_F	668	663	694
// OP_STORE_F	694	669	0
// OP_LT	669	686	695
// OP_IFNOT	695	8	0
// OP_ADDRESS	28	113	696
// OP_STOREP_V	638	696	0
// OP_ADDRESS	28	150	699
// OP_LOAD_F	28	102	700
// OP_ADD_F	700	686	701
// OP_STOREP_F	701	699	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	702
// OP_LOAD_F	28	102	703
// OP_ADD_F	703	669	704
// OP_STOREP_F	704	702	0
// OP_ADDRESS	28	113	705
// OP_DIV_F	708	669	709
// OP_MUL_VF	665	709	710
// OP_STOREP_V	710	705	0
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
// function begins at statement 96, parm_start=713
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	424	713
// OP_STORE_V	713	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	113	716
// OP_STOREP_V	638	716	0
// OP_ADDRESS	28	150	719
// OP_STOREP_F	720	719	0
// OP_LOAD_FNC	28	423	721
// OP_IFNOT	721	3	0
// OP_LOAD_FNC	28	423	722
// OP_CALL0	722	0	0
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
// function begins at statement 109, parm_start=724
// OP_STORE_ENT	28	730	0
// OP_STORE_ENT	724	28	0
// OP_STORE_V	725	4	0
// OP_STORE_V	728	7	0
// OP_STORE_V	729	10	0
// OP_CALL3	515	0	0
// OP_STORE_ENT	730	28	0
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
// function begins at statement 117, parm_start=731
// OP_NOT_F	734	0	741
// OP_IFNOT	741	3	0
// OP_STORE_V	671	4	0
// OP_CALL1	457	0	0
// OP_LOAD_V	28	117	742
// OP_SUB_V	731	742	745
// OP_STORE_V	745	736	0
// OP_STORE_V	736	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	739	0
// OP_DIV_F	739	734	748
// OP_STORE_F	748	740	0
// OP_ADDRESS	28	150	749
// OP_LOAD_F	28	102	750
// OP_ADD_F	750	740	751
// OP_STOREP_F	751	749	0
// OP_ADDRESS	28	121	752
// OP_DIV_F	708	740	755
// OP_MUL_VF	736	755	756
// OP_STOREP_V	756	752	0
// OP_ADDRESS	28	423	759
// OP_STOREP_FNC	735	759	0
// OP_ADDRESS	28	428	760
// OP_STOREP_V	731	760	0
// OP_ADDRESS	28	148	763
// OP_STOREP_FNC	517	763	0
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
// function begins at statement 144, parm_start=764
// OP_ADDRESS	28	117	764
// OP_LOAD_V	28	428	767
// OP_STOREP_V	767	764	0
// OP_ADDRESS	28	121	770
// OP_STOREP_V	638	770	0
// OP_ADDRESS	28	150	773
// OP_STOREP_F	720	773	0
// OP_LOAD_FNC	28	423	774
// OP_IFNOT	774	3	0
// OP_LOAD_FNC	28	423	775
// OP_CALL0	775	0	0
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
// function begins at statement 156, parm_start=777
// OP_LOAD_ENT	28	181	777
// OP_STORE_ENT	777	347	0
// OP_CALL0	519	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () DelayThink = 
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 162, parm_start=778
// OP_LOAD_F	28	415	782
// OP_IFNOT	782	23	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	778	0
// OP_ADDRESS	778	129	783
// OP_STOREP_S	784	783	0
// OP_ADDRESS	778	150	785
// OP_LOAD_F	28	415	786
// OP_ADD_F	31	786	787
// OP_STOREP_F	787	785	0
// OP_ADDRESS	778	148	788
// OP_STOREP_FNC	776	788	0
// OP_ADDRESS	778	181	789
// OP_STOREP_ENT	347	789	0
// OP_ADDRESS	778	206	790
// OP_LOAD_S	28	206	791
// OP_STOREP_S	791	790	0
// OP_ADDRESS	778	354	792
// OP_LOAD_S	28	354	793
// OP_STOREP_S	793	792	0
// OP_ADDRESS	778	196	794
// OP_LOAD_S	28	196	795
// OP_STOREP_S	795	794	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	796
// OP_EQ_S	796	797	798
// OP_LOAD_S	28	206	799
// OP_NE_S	799	652	800
// OP_AND	798	800	801
// OP_IFNOT	801	14	0
// OP_STORE_V	347	4	0
// OP_LOAD_S	28	206	802
// OP_STORE_V	802	7	0
// OP_CALL2	507	0	0
// OP_LOAD_S	28	208	803
// OP_NOT_S	803	0	804
// OP_IFNOT	804	7	0
// OP_STORE_V	347	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	805	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_S	28	354	806
// OP_IFNOT	806	14	0
// OP_STORE_ENT	30	778	0
// OP_STORE_V	778	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	354	807
// OP_STORE_V	807	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	778	0
// OP_NOT_ENT	778	0	808
// OP_IFNOT	808	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	778	4	0
// OP_CALL1	461	0	0
// OP_IF	708	-11	0
// OP_LOAD_S	28	196	809
// OP_IFNOT	809	27	0
// OP_STORE_ENT	347	781	0
// OP_STORE_ENT	30	778	0
// OP_STORE_V	778	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	810
// OP_STORE_V	810	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	778	0
// OP_NOT_ENT	778	0	811
// OP_IFNOT	811	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	779	0
// OP_STORE_ENT	29	780	0
// OP_STORE_ENT	778	28	0
// OP_STORE_ENT	779	29	0
// OP_LOAD_FNC	28	147	812
// OP_NE_FNC	812	518	813
// OP_IFNOT	813	5	0
// OP_LOAD_FNC	28	147	814
// OP_IFNOT	814	3	0
// OP_LOAD_FNC	28	147	815
// OP_CALL0	815	0	0
// OP_STORE_ENT	779	28	0
// OP_STORE_ENT	780	29	0
// OP_STORE_ENT	781	347	0
// OP_IF	708	-23	0
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
// function begins at statement 249, parm_start=817
// OP_ADDRESS	28	422	818
// OP_STOREP_F	650	818	0
// OP_NE_F	350	819	820
// OP_IFNOT	820	4	0
// OP_ADDRESS	28	374	821
// OP_ADD_F	31	817	822
// OP_STOREP_F	822	821	0
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
// function begins at statement 257, parm_start=825
// OP_NE_F	350	819	826
// OP_IFNOT	826	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	827
// OP_EQ_F	827	708	828
// OP_IFNOT	828	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	829
// OP_STORE_V	829	4	0
// OP_CALL1	823	0	0
// OP_NOT_F	1	0	830
// OP_IFNOT	830	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	831
// OP_STOREP_F	708	831	0
// OP_ADDRESS	28	148	832
// OP_STOREP_FNC	825	832	0
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

