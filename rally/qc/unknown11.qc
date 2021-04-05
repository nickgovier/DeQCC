float BOT_ACCEL = 800;
float BOT_TURNSPEED = 90;
float BOT_MAXSPEED = 800;
float BOT_MAX_SLOWDOWN = 10;
.vector lastpostorg;
.vector backup_velocity;
.float last_think_time;
.float maxspeed;
.float last_changemaxspeed_time;
.float speeding_up;
// FindGoalMarker
// function begins at statement 19079, parm_start=13521
// OP_LOAD_ENT	13521	194	13524
// OP_LOAD_F	13524	158	13525
// OP_EQ_F	13525	733	13526
// OP_IFNOT	13526	3	0
// OP_STORE_F	819	13523	0
// OP_GOTO	5	0	0
// OP_LOAD_ENT	13521	194	13527
// OP_LOAD_F	13527	158	13528
// OP_ADD_F	13528	819	13529
// OP_STORE_F	13529	13523	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	6733	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	13522	0
// OP_NE_E	13522	30	13530
// OP_IFNOT	13530	11	0
// OP_LOAD_F	13522	158	13531
// OP_EQ_F	13531	13523	13532
// OP_IFNOT	13532	2	0
// OP_RETURN	13522	0	0
// OP_STORE_V	13522	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	6733	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	13522	0
// OP_GOTO	-11	0	0
// OP_STORE_V	13533	4	0
// OP_CALL1	484	0	0
// OP_LOAD_ENT	13521	194	13534
// OP_RETURN	13534	0	0
// OP_DONE	0	0	0
entity (entity bot) FindGoalMarker = 
{
    local entity goal;
    local float marker_no;
    if(bot.goalentity.ammo_shells == num_markers)
    {
        marker_no = 1;
    }
    else
    {
        marker_no = bot.goalentity.ammo_shells + 1;
    }
    
    goal = find(world, classname, "rally_bot_marker");
    
    while(goal != world)
    {
        
        if(goal.ammo_shells == marker_no)
        {
            return goal;
        }
        
        goal = find(goal, classname, "rally_bot_marker");
    }
    
    dprint("BOT_ERROR: Unable to find next bot marker\n");
    return bot.goalentity;
};

.entity e_avoid;
// checkforjump
// function begins at statement 19111, parm_start=13537
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (entity mt) checkforjump = 
{
    local float origheight;
    return FALSE;
};

// BotCheckMove
// function begins at statement 19113, parm_start=13540
// OP_MUL_VF	65	13540	13548
// OP_STORE_V	13548	13545	0
// OP_STORE_F	13542	13547	0
// OP_LOAD_ENT	28	432	13551
// OP_STORE_ENT	13551	13544	0
// OP_LOAD_V	28	105	13552
// OP_ADD_V	13552	13545	13555
// OP_STORE_V	13555	4	0
// OP_LOAD_V	13544	105	13558
// OP_ADD_V	13558	13545	13561
// OP_STORE_V	13561	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	13544	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13564
// OP_LT	70	13543	13565
// OP_AND	13564	13565	13566
// OP_IFNOT	13566	3	0
// OP_RETURN	70	0	0
// OP_GOTO	2	0	0
// OP_RETURN	13543	0	0
// OP_DONE	0	0	0
float (vector offset, float frac) BotCheckMove = 
{
    local entity targ;
    local vector trans;
    trans = v_right * offset_x;
    trans_z = 0;
    targ = self.movetarget;
    traceline(self.origin + trans, targ.origin + trans, FALSE, targ);
    if((trace_fraction < 1) && (trace_fraction < frac))
    {
        return trace_fraction;
    }
    else
    {
        return frac;
    }
    
};

void () BotInAir;
// movetotarget
// function begins at statement 19135, parm_start=13569
// OP_STORE_F	817	13582	0
// OP_LOAD_ENT	28	432	13583
// OP_LOAD_V	13583	105	13584
// OP_LOAD_V	28	105	13587
// OP_SUB_V	13584	13587	13590
// OP_STORE_V	13590	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13572	0
// OP_LOAD_V	28	105	13593
// OP_STORE_V	13593	13575	0
// OP_LOAD_V	28	113	13596
// OP_STORE_V	13596	4	0
// OP_CALL1	471	0	0
// OP_LOAD_F	28	13517	13599
// OP_SUB_F	31	13599	13600
// OP_MUL_F	1	13600	13601
// OP_STORE_F	13601	13581	0
// OP_GT	13581	817	13602
// OP_IFNOT	13602	10	0
// OP_LOAD_F	28	119	13603
// OP_STORE_V	13603	4	0
// OP_STORE_V	13581	7	0
// OP_CALL2	491	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	219	0	0
// OP_SUB_F	13581	825	13604
// OP_STORE_F	13604	13581	0
// OP_GOTO	-10	0	0
// OP_RETURN	218	0	0
// OP_LOAD_ENT	28	432	13605
// OP_STORE_ENT	13605	13578	0
// OP_LOAD_F	28	182	13606
// OP_BITAND	13606	228	13607
// OP_IFNOT	13607	20	0
// OP_LOAD_V	28	105	13608
// OP_STORE_V	13608	13572	0
// OP_LOAD_V	28	113	13611
// OP_STORE_V	13611	4	0
// OP_CALL1	471	0	0
// OP_LOAD_F	28	13517	13614
// OP_SUB_F	31	13614	13615
// OP_MUL_F	1	13615	13616
// OP_STORE_F	13616	13581	0
// OP_LOAD_F	28	119	13617
// OP_STORE_V	13617	4	0
// OP_STORE_V	13581	7	0
// OP_CALL2	491	0	0
// OP_IFNOT	1	6	0
// OP_LOAD_F	28	108	13618
// OP_SUB_F	13574	13618	13619
// OP_LT	13619	2657	13620
// OP_IFNOT	13620	2	0
// OP_RETURN	219	0	0
// OP_STORE_V	13621	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	819	13579	0
// OP_LOAD_V	28	117	13622
// OP_STORE_V	13622	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	926	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13625	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13628	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13631	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13634	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13637	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13640	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13643	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_STORE_V	13646	4	0
// OP_STORE_V	13579	7	0
// OP_CALL2	13539	0	0
// OP_STORE_F	1	13579	0
// OP_LT	13579	819	13649
// OP_LOAD_V	13578	105	13650
// OP_LOAD_V	28	105	13653
// OP_SUB_V	13650	13653	13656
// OP_MUL_FV	13579	13656	13659
// OP_STORE_V	13659	4	0
// OP_CALL1	471	0	0
// OP_LE	1	819	13662
// OP_AND	13649	13662	13663
// OP_IFNOT	13663	17	0
// OP_LOAD_F	28	182	13664
// OP_BITAND	13664	228	13665
// OP_NOT_F	13665	0	13666
// OP_IFNOT	13666	11	0
// OP_EQ_E	78	30	13667
// OP_IFNOT	13667	9	0
// OP_ADDRESS	28	113	13668
// OP_LOAD_V	28	113	13671
// OP_STORE_V	13671	4	0
// OP_CALL1	471	0	0
// OP_MUL_FV	1	74	13674
// OP_MUL_VF	13674	1182	13677
// OP_SUB_V	13677	5291	13680
// OP_STOREP_V	13680	13668	0
// OP_RETURN	218	0	0
// OP_GOTO	52	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	13683
// OP_LOAD_V	13578	105	13686
// OP_LOAD_V	28	105	13689
// OP_SUB_V	13686	13689	13692
// OP_MUL_VF	13692	13579	13695
// OP_ADD_V	13683	13695	13698
// OP_STORE_V	13698	7	0
// OP_CALL2	462	0	0
// OP_LT	13579	819	13701
// OP_IFNOT	13701	12	0
// OP_LOAD_V	13578	105	13702
// OP_LOAD_V	28	105	13705
// OP_SUB_V	13702	13705	13708
// OP_STORE_V	13708	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13572	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	13711
// OP_SUB_V	13711	13572	13714
// OP_STORE_V	13714	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	182	13717
// OP_BITAND	13717	228	13718
// OP_STORE_V	28	4	0
// OP_CALL1	497	0	0
// OP_NOT_F	1	0	13719
// OP_AND	13718	13719	13720
// OP_IFNOT	13720	22	0
// OP_CALL0	13567	0	0
// OP_LOAD_V	28	117	13721
// OP_STORE_V	13721	13569	0
// OP_LOAD_ENT	28	548	13724
// OP_LOAD_F	13724	118	13725
// OP_STORE_F	13725	13569	0
// OP_STORE_V	13569	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	113	13726
// OP_LOAD_V	28	113	13729
// OP_STORE_V	13729	4	0
// OP_CALL1	471	0	0
// OP_MUL_VF	59	1	13732
// OP_STOREP_V	13732	13726	0
// OP_LOAD_F	28	116	13735
// OP_LT	13735	817	13736
// OP_IFNOT	13736	3	0
// OP_ADDRESS	28	116	13737
// OP_STOREP_F	817	13737	0
// OP_STORE_V	13738	4	0
// OP_CALL1	482	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () movetotarget = 
{
    local vector trans;
    local vector vect;
    local vector org;
    local entity targ;
    local float frac;
    local float done;
    local float dist;
    local float i;
    i = 0;
    vect = normalize(self.movetarget.origin - self.origin);
    org = self.origin;
    dist = vlen(self.velocity) * (time - self.last_think_time);
    
    while(dist > 0)
    {
        
        if(walkmove(self.angles_y, dist))
        {
            return TRUE;
        }
        
        dist = dist - 4;
    }
    
    return FALSE;
    targ = self.movetarget;
    
    if(self.flags & FL_ONGROUND)
    {
        vect = self.origin;
        dist = vlen(self.velocity) * (time - self.last_think_time);
        
        if(walkmove(self.angles_y, dist))
        {
            
            if((0 - self.origin_z) < 32)
            {
                return TRUE;
            }
            
        }
        
    }
    
    bprint("using custom movement\n");
    frac = 1;
    makevectors(self.angles);
    frac = BotCheckMove('0.000 0.000 0.000', frac);
    frac = BotCheckMove('0.000 0.000 30.000', frac);
    frac = BotCheckMove('0.000 0.000 -14.000', frac);
    frac = BotCheckMove('15.000 0.000 0.000', frac);
    frac = BotCheckMove('-15.000 0.000 0.000', frac);
    frac = BotCheckMove('15.000 0.000 30.000', frac);
    frac = BotCheckMove('-15.000 0.000 30.000', frac);
    frac = BotCheckMove('15.000 0.000 -14.000', frac);
    frac = BotCheckMove('-15.000 0.000 -14.000', frac);
    if((frac < 1) && ((vlen(frac * (targ.origin - self.origin))) <= 1))
    {
        
        if(!(self.flags & FL_ONGROUND))
        {
            
            if(trace_ent == world)
            {
                self.velocity = ((vlen(self.velocity) * trace_plane_normal) * 0.5) - '0.000 0.000 50.000';
            }
            
        }
        
        return FALSE;
    }
    else
    {
        setorigin(self, self.origin + ((targ.origin - self.origin) * frac));
        
        if(frac < 1)
        {
            vect = normalize(targ.origin - self.origin);
            setorigin(self, self.origin - vect);
        }
        
        
        if((self.flags & FL_ONGROUND) && !checkbottom(self))
        {
            BotInAir();
            trans = self.angles;
            trans_x = self.veh_body.angles_x;
            makevectors(trans);
            self.velocity = v_forward * vlen(self.velocity);
            
            if(self.velocity_z < 0)
            {
                self.velocity_z = 0;
            }
            
            bprint("bot now in air: MOVETOTARGET\n");
        }
        
        return TRUE;
    }
    
};

// CheckInAir
// function begins at statement 19308, parm_start=13740
// OP_LOAD_V	28	105	13743
// OP_STORE_V	13743	13740	0
// OP_STORE_V	13740	4	0
// OP_SUB_V	13740	7028	13746
// OP_STORE_V	13746	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13749
// OP_IFNOT	13749	2	0
// OP_RETURN	218	0	0
// OP_ADD_V	13740	13750	13753
// OP_STORE_V	13753	4	0
// OP_ADD_V	13740	13756	13759
// OP_STORE_V	13759	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13762
// OP_IFNOT	13762	2	0
// OP_RETURN	218	0	0
// OP_ADD_V	13740	13763	13766
// OP_STORE_V	13766	4	0
// OP_ADD_V	13740	13769	13772
// OP_STORE_V	13772	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13775
// OP_IFNOT	13775	2	0
// OP_RETURN	218	0	0
// OP_ADD_V	13740	13776	13779
// OP_STORE_V	13779	4	0
// OP_ADD_V	13740	13782	13785
// OP_STORE_V	13785	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13788
// OP_IFNOT	13788	2	0
// OP_RETURN	218	0	0
// OP_ADD_V	13740	13789	13792
// OP_STORE_V	13792	4	0
// OP_ADD_V	13740	13795	13798
// OP_STORE_V	13798	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13801
// OP_IFNOT	13801	2	0
// OP_RETURN	218	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () CheckInAir = 
{
    local vector org;
    org = self.origin;
    traceline(org, org - '0.000 0.000 32.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        return FALSE;
    }
    
    traceline(org + '14.000 14.000 0.000', org + '14.000 14.000 -32.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        return FALSE;
    }
    
    traceline(org + '-14.000 14.000 0.000', org + '-14.000 14.000 -32.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        return FALSE;
    }
    
    traceline(org + '14.000 -14.000 0.000', org + '14.000 -14.000 -32.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        return FALSE;
    }
    
    traceline(org + '-14.000 -14.000 0.000', org + '-14.000 -14.000 -32.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        return FALSE;
    }
    
    return TRUE;
};

// BotInAir
// function begins at statement 19361, parm_start=13802
// OP_STORE_V	13802	4	0
// OP_CALL1	482	0	0
// OP_ADDRESS	28	182	13803
// OP_LOAD_F	28	182	13804
// OP_LOAD_F	28	182	13805
// OP_BITAND	13805	228	13806
// OP_SUB_F	13804	13806	13807
// OP_STOREP_F	13807	13803	0
// OP_ADDRESS	28	683	13808
// OP_LOAD_F	28	683	13809
// OP_BITOR	13809	712	13810
// OP_STOREP_F	13810	13808	0
// OP_ADDRESS	28	592	13811
// OP_STOREP_F	817	13811	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	13812
// OP_ADD_V	13812	1215	13815
// OP_STORE_V	13815	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () BotInAir = 
{
    bprint("bot is in air\n");
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.bot_flags = self.bot_flags | BF_STARTJUMP;
    self.last_jump_z = 0;
    setorigin(self, self.origin + '0.000 0.000 1.000');
};

// bot_think
// function begins at statement 19381, parm_start=13819
// OP_ADDRESS	28	13509	13868
// OP_LOAD_V	28	109	13871
// OP_STOREP_V	13871	13868	0
// OP_ADDRESS	28	109	13874
// OP_LOAD_V	28	105	13877
// OP_STOREP_V	13877	13874	0
// OP_LOAD_F	28	182	13880
// OP_BITAND	13880	228	13881
// OP_NOT_F	13881	0	13882
// OP_STORE_V	28	4	0
// OP_CALL1	497	0	0
// OP_AND	13882	1	13883
// OP_IFNOT	13883	6	0
// OP_ADDRESS	28	182	13884
// OP_LOAD_F	28	182	13885
// OP_BITOR	13885	228	13886
// OP_STOREP_F	13886	13884	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	182	13887
// OP_BITAND	13887	228	13888
// OP_CALL0	13739	0	0
// OP_AND	13888	1	13889
// OP_IFNOT	13889	2	0
// OP_CALL0	13567	0	0
// OP_LOAD_F	28	13519	13890
// OP_SUB_F	31	821	13891
// OP_LT	13890	13891	13892
// OP_IFNOT	13892	52	0
// OP_STORE_F	855	13829	0
// OP_LOAD_F	28	13518	13893
// OP_LT	13893	13507	13894
// OP_IFNOT	13894	14	0
// OP_LOAD_F	28	13518	13895
// OP_SUB_F	13507	2611	13896
// OP_GT	13895	13896	13897
// OP_IFNOT	13897	7	0
// OP_LOAD_F	28	13520	13898
// OP_IFNOT	13898	3	0
// OP_STORE_F	839	13829	0
// OP_GOTO	2	0	0
// OP_STORE_F	837	13829	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	13520	13899
// OP_STOREP_F	219	13899	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	13518	13900
// OP_ADD_F	13507	2611	13901
// OP_LT	13900	13901	13902
// OP_IFNOT	13902	7	0
// OP_LOAD_F	28	13520	13903
// OP_IFNOT	13903	3	0
// OP_STORE_F	839	13829	0
// OP_GOTO	2	0	0
// OP_STORE_F	837	13829	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	13520	13904
// OP_STOREP_F	218	13904	0
// OP_ADDRESS	28	13518	13905
// OP_LOAD_F	28	13518	13906
// OP_CALL0	466	0	0
// OP_MUL_F	1	1112	13907
// OP_ADD_F	13906	13907	13908
// OP_SUB_F	13908	13829	13909
// OP_STOREP_F	13909	13905	0
// OP_LOAD_F	28	13518	13910
// OP_SUB_F	13507	1957	13911
// OP_LT	13910	13911	13912
// OP_IFNOT	13912	5	0
// OP_ADDRESS	28	13518	13913
// OP_SUB_F	13507	1957	13914
// OP_STOREP_F	13914	13913	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	13518	13915
// OP_ADD_F	13507	1957	13916
// OP_GT	13915	13916	13917
// OP_IFNOT	13917	4	0
// OP_ADDRESS	28	13518	13918
// OP_ADD_F	13507	1957	13919
// OP_STOREP_F	13919	13918	0
// OP_LOAD_F	28	182	13920
// OP_BITAND	13920	228	13921
// OP_NOT_F	13921	0	13922
// OP_IFNOT	13922	18	0
// OP_ADDRESS	28	595	13923
// OP_STOREP_V	926	13923	0
// OP_ADDRESS	28	116	13926
// OP_LOAD_F	28	116	13927
// OP_STORE_V	3176	4	0
// OP_CALL1	501	0	0
// OP_LOAD_F	28	13517	13928
// OP_SUB_F	31	13928	13929
// OP_MUL_F	1	13929	13930
// OP_SUB_F	13927	13930	13931
// OP_STOREP_F	13931	13926	0
// OP_LOAD_F	28	116	13932
// OP_LT	13932	13933	13934
// OP_IFNOT	13934	3	0
// OP_ADDRESS	28	116	13935
// OP_STOREP_F	13933	13935	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	13936
// OP_STOREP_F	817	13936	0
// OP_LOAD_F	28	116	13937
// OP_STORE_F	13937	13830	0
// OP_LOAD_F	28	182	13938
// OP_BITAND	13938	228	13939
// OP_IFNOT	13939	94	0
// OP_LOAD_ENT	28	547	13940
// OP_LOAD_V	13940	555	13941
// OP_STORE_V	13941	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13850	0
// OP_STORE_V	13851	4	0
// OP_LOAD_ENT	28	548	13944
// OP_LOAD_F	13944	119	13945
// OP_STORE_V	13945	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	845	13946
// OP_IFNOT	13946	8	0
// OP_ADDRESS	28	113	13947
// OP_LOAD_V	28	113	13950
// OP_CALL0	466	0	0
// OP_MUL_F	1	1988	13953
// OP_SUB_F	2319	13953	13954
// OP_MUL_VF	13950	13954	13955
// OP_STOREP_V	13955	13947	0
// OP_LOAD_ENT	28	194	13958
// OP_LOAD_V	13958	105	13959
// OP_LOAD_V	28	105	13962
// OP_SUB_V	13959	13962	13965
// OP_STORE_V	13965	13819	0
// OP_STORE_V	13819	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13819	0
// OP_LOAD_F	28	13517	13968
// OP_SUB_F	31	13968	13969
// OP_MUL_F	13505	13969	13970
// OP_CALL0	466	0	0
// OP_SUB_F	1	1182	13971
// OP_MUL_F	13971	1152	13972
// OP_ADD_F	819	13972	13973
// OP_MUL_F	13970	13973	13974
// OP_STORE_F	13974	13862	0
// OP_LOAD_V	28	113	13975
// OP_STORE_V	13975	4	0
// OP_CALL1	471	0	0
// OP_EQ_F	1	817	13978
// OP_IFNOT	13978	11	0
// OP_ADDRESS	28	113	13979
// OP_LOAD_ENT	28	194	13982
// OP_LOAD_V	13982	105	13983
// OP_LOAD_V	28	105	13986
// OP_SUB_V	13983	13986	13989
// OP_STORE_V	13989	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	855	13992
// OP_STOREP_V	13992	13979	0
// OP_GOTO	19	0	0
// OP_LT	37	823	13995
// OP_LOAD_F	28	666	13996
// OP_EQ_F	13996	819	13997
// OP_AND	13995	13997	13998
// OP_IFNOT	13998	6	0
// OP_LOAD_F	28	13517	13999
// OP_SUB_F	31	13999	14000
// OP_MUL_F	13505	14000	14001
// OP_MUL_F	14001	2236	14002
// OP_STORE_F	14002	13862	0
// OP_ADDRESS	28	113	14003
// OP_LOAD_V	28	113	14006
// OP_LOAD_V	28	113	14009
// OP_STORE_V	14009	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	13862	14012
// OP_ADD_V	14006	14012	14015
// OP_STOREP_V	14015	14003	0
// OP_STORE_F	819	13864	0
// OP_LT	37	823	14018
// OP_LOAD_F	28	666	14019
// OP_EQ_F	14019	819	14020
// OP_AND	14018	14020	14021
// OP_IFNOT	14021	2	0
// OP_STORE_F	2236	13864	0
// OP_LOAD_V	28	113	14022
// OP_STORE_V	14022	4	0
// OP_CALL1	471	0	0
// OP_LOAD_F	28	13518	14025
// OP_MUL_F	14025	13864	14026
// OP_GT	1	14026	14027
// OP_IFNOT	14027	9	0
// OP_ADDRESS	28	113	14028
// OP_LOAD_V	28	113	14031
// OP_STORE_V	14031	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	13518	14034
// OP_MUL_F	14034	13864	14035
// OP_MUL_VF	1	14035	14036
// OP_STOREP_V	14036	14028	0
// OP_LOAD_V	28	113	14039
// OP_STORE_V	14039	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13828	0
// OP_LOAD_F	28	182	14042
// OP_BITAND	14042	228	14043
// OP_IFNOT	14043	167	0
// OP_LOAD_F	28	683	14044
// OP_BITAND	14044	710	14045
// OP_NOT_F	14045	0	14046
// OP_LOAD_F	28	182	14047
// OP_BITAND	14047	711	14048
// OP_NOT_F	14048	0	14049
// OP_AND	14046	14049	14050
// OP_IFNOT	14050	39	0
// OP_LOAD_V	28	105	14051
// OP_STORE_V	14051	4	0
// OP_LOAD_ENT	28	194	14054
// OP_LOAD_V	14054	105	14055
// OP_STORE_V	14055	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	14058
// OP_IFNOT	14058	3	0
// OP_STORE_F	13820	13829	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	191	14059
// OP_STORE_F	14059	13829	0
// OP_ADDRESS	28	119	14060
// OP_LOAD_F	28	119	14061
// OP_STORE_V	14061	4	0
// OP_STORE_V	13829	7	0
// OP_STORE_V	13506	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14060	0
// OP_LOAD_F	28	119	14062
// OP_STORE_V	14062	4	0
// OP_STORE_V	13829	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	5499	14063
// OP_IFNOT	14063	10	0
// OP_ADDRESS	28	113	14064
// OP_LOAD_V	28	113	14067
// OP_LOAD_V	28	113	14070
// OP_STORE_V	14070	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	13862	14073
// OP_MUL_VF	14073	821	14076
// OP_SUB_V	14067	14076	14079
// OP_STOREP_V	14079	14064	0
// OP_LOAD_F	28	119	14082
// OP_EQ_F	14082	13820	14083
// OP_LOAD_F	28	683	14084
// OP_BITAND	14084	710	14085
// OP_NOT_F	14085	0	14086
// OP_AND	14083	14086	14087
// OP_IFNOT	14087	114	0
// OP_LOAD_V	28	117	14088
// OP_STORE_V	14088	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	14091
// OP_STORE_V	14091	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14095
// OP_ADD_V	13825	14095	14098
// OP_STORE_V	14098	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14101
// OP_IFNOT	14101	12	0
// OP_LOAD_V	28	105	14102
// OP_MUL_VF	65	2670	14105
// OP_SUB_V	14102	14105	14108
// OP_STORE_V	14108	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14111
// OP_ADD_V	13825	14111	14114
// OP_STORE_V	14114	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14117
// OP_IFNOT	14117	12	0
// OP_LOAD_V	28	105	14118
// OP_MUL_VF	65	2670	14121
// OP_ADD_V	14118	14121	14124
// OP_STORE_V	14124	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14127
// OP_ADD_V	13825	14127	14130
// OP_STORE_V	14130	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14133
// OP_IFNOT	14133	12	0
// OP_LOAD_V	28	105	14134
// OP_MUL_VF	65	2657	14137
// OP_SUB_V	14134	14137	14140
// OP_STORE_V	14140	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14143
// OP_ADD_V	13825	14143	14146
// OP_STORE_V	14146	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14149
// OP_IFNOT	14149	12	0
// OP_LOAD_V	28	105	14150
// OP_MUL_VF	65	2657	14153
// OP_ADD_V	14150	14153	14156
// OP_STORE_V	14156	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14159
// OP_ADD_V	13825	14159	14162
// OP_STORE_V	14162	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14165
// OP_IFNOT	14165	12	0
// OP_LOAD_V	28	105	14166
// OP_MUL_VF	65	3330	14169
// OP_SUB_V	14166	14169	14172
// OP_STORE_V	14172	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14175
// OP_ADD_V	13825	14175	14178
// OP_STORE_V	14178	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14181
// OP_IFNOT	14181	12	0
// OP_LOAD_V	28	105	14182
// OP_MUL_VF	65	3330	14185
// OP_ADD_V	14182	14185	14188
// OP_STORE_V	14188	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	14094	14191
// OP_ADD_V	13825	14191	14194
// OP_STORE_V	14194	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_NE_E	78	30	14197
// OP_LOAD_F	78	104	14198
// OP_EQ_F	14198	245	14199
// OP_AND	14197	14199	14200
// OP_LOAD_V	78	113	14201
// OP_STORE_V	14201	4	0
// OP_CALL1	471	0	0
// OP_LT	1	13828	14204
// OP_AND	14200	14204	14205
// OP_IFNOT	14205	8	0
// OP_ADDRESS	28	13535	14206
// OP_STOREP_ENT	78	14206	0
// OP_ADDRESS	28	683	14207
// OP_LOAD_F	28	683	14208
// OP_BITOR	14208	711	14209
// OP_STOREP_F	14209	14207	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	683	14210
// OP_LOAD_F	28	683	14211
// OP_LOAD_F	28	683	14212
// OP_BITAND	14212	711	14213
// OP_SUB_F	14211	14213	14214
// OP_STOREP_F	14214	14210	0
// OP_LOAD_ENT	28	432	14215
// OP_STORE_V	14215	4	0
// OP_LOAD_V	28	105	14216
// OP_LOAD_V	28	113	14219
// OP_LOAD_F	28	13517	14222
// OP_SUB_F	31	14222	14223
// OP_MUL_VF	14219	14223	14224
// OP_ADD_V	14216	14224	14227
// OP_STORE_V	14227	7	0
// OP_CALL2	462	0	0
// OP_LOAD_V	28	105	14230
// OP_LOAD_ENT	28	194	14233
// OP_LOAD_V	14233	105	14234
// OP_SUB_V	14230	14234	14237
// OP_STORE_V	14237	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13865	0
// OP_CALL0	84	0	0
// OP_STORE_F	219	13849	0
// OP_LOAD_F	28	182	14240
// OP_BITAND	14240	228	14241
// OP_IFNOT	14241	37	0
// OP_LOAD_ENT	28	432	14242
// OP_LOAD_V	14242	105	14243
// OP_STORE_V	14243	13825	0
// OP_LOAD_ENT	28	432	14246
// OP_STORE_ENT	14246	28	0
// OP_LOAD_ENT	28	548	14247
// OP_LOAD_V	14247	117	14248
// OP_STORE_V	14248	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	105	14251
// OP_LOAD_V	28	105	14254
// OP_ADD_V	14254	1666	14257
// OP_ADD_F	61	1182	14260
// OP_MUL_VF	1215	14260	14261
// OP_LOAD_V	28	105	14264
// OP_LOAD_ENT	28	201	14267
// OP_LOAD_V	14267	105	14268
// OP_SUB_V	14264	14268	14271
// OP_STORE_V	14271	4	0
// OP_CALL1	471	0	0
// OP_MUL_VF	14261	1	14274
// OP_ADD_V	14257	14274	14277
// OP_STOREP_V	14277	14251	0
// OP_CALL0	492	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_F	28	108	14280
// OP_SUB_F	13827	14280	14281
// OP_GT	14281	13015	14282
// OP_IFNOT	14282	3	0
// OP_ADDRESS	28	105	14283
// OP_STOREP_V	13825	14283	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	105	14286
// OP_STOREP_V	13825	14286	0
// OP_LOAD_ENT	28	201	14289
// OP_STORE_ENT	14289	28	0
// OP_LOAD_F	28	182	14290
// OP_BITAND	14290	228	14291
// OP_IFNOT	14291	231	0
// OP_IFNOT	13849	229	0
// OP_CALL0	13568	0	0
// OP_NOT_F	1	0	14292
// OP_LOAD_F	28	683	14293
// OP_BITAND	14293	711	14294
// OP_OR	14292	14294	14295
// OP_IFNOT	14295	217	0
// OP_LOAD_V	28	105	14296
// OP_LOAD_V	28	109	14299
// OP_EQ_V	14296	14299	14302
// OP_IFNOT	14302	5	0
// OP_ADDRESS	28	683	14303
// OP_LOAD_F	28	683	14304
// OP_BITOR	14304	710	14305
// OP_STOREP_F	14305	14303	0
// OP_LOAD_V	28	105	14306
// OP_LOAD_V	28	109	14309
// OP_SUB_V	14306	14309	14312
// OP_STORE_V	14312	4	0
// OP_CALL1	471	0	0
// OP_LOAD_F	28	13517	14315
// OP_SUB_F	31	14315	14316
// OP_DIV_F	1	14316	14317
// OP_STORE_F	14317	13828	0
// OP_LOAD_V	28	113	14318
// OP_STORE_V	14318	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	13828	14321
// OP_STORE_V	14321	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	471	0	0
// OP_SUB_F	13828	1	14324
// OP_GT	14324	13508	14325
// OP_IFNOT	14325	9	0
// OP_ADDRESS	28	113	14326
// OP_LOAD_V	28	113	14329
// OP_STORE_V	13837	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	13508	14332
// OP_SUB_V	14329	14332	14335
// OP_STOREP_V	14335	14326	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	113	14338
// OP_STOREP_V	13837	14338	0
// OP_LOAD_F	28	683	14341
// OP_BITAND	14341	710	14342
// OP_NOT_F	14342	0	14343
// OP_IFNOT	14343	84	0
// OP_LOAD_F	28	683	14344
// OP_BITAND	14344	711	14345
// OP_IFNOT	14345	80	0
// OP_LOAD_ENT	28	194	14346
// OP_LOAD_V	14346	105	14347
// OP_LOAD_ENT	28	13535	14350
// OP_LOAD_V	14350	105	14351
// OP_SUB_V	14347	14351	14354
// OP_STORE_V	14354	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	13535	14357
// OP_LOAD_V	14357	105	14358
// OP_STORE_V	14358	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	65	14094	14361
// OP_ADD_V	13825	14361	14364
// OP_STORE_V	14364	7	0
// OP_STORE_V	218	10	0
// OP_LOAD_ENT	28	13535	14367
// OP_STORE_V	14367	13	0
// OP_CALL4	475	0	0
// OP_SUB_V	71	13825	14368
// OP_STORE_V	14368	13834	0
// OP_STORE_V	71	13843	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	65	14094	14371
// OP_SUB_V	13825	14371	14374
// OP_STORE_V	14374	7	0
// OP_STORE_V	218	10	0
// OP_LOAD_ENT	28	13535	14377
// OP_STORE_V	14377	13	0
// OP_CALL4	475	0	0
// OP_SUB_V	71	13825	14378
// OP_STORE_V	14378	13831	0
// OP_STORE_V	71	13840	0
// OP_STORE_V	13831	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13846	0
// OP_STORE_V	13834	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13847	0
// OP_GT	13846	13847	14381
// OP_IFNOT	14381	19	0
// OP_LOAD_V	28	105	14382
// OP_SUB_V	13840	14382	14385
// OP_STORE_V	14385	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13837	0
// OP_ADDRESS	28	119	14388
// OP_LOAD_F	28	119	14389
// OP_STORE_V	14389	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_STORE_V	13838	7	0
// OP_STORE_V	13506	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14388	0
// OP_GOTO	19	0	0
// OP_LOAD_V	28	105	14390
// OP_SUB_V	13843	14390	14393
// OP_STORE_V	14393	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13837	0
// OP_ADDRESS	28	119	14396
// OP_LOAD_F	28	119	14397
// OP_STORE_V	14397	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_STORE_V	13838	7	0
// OP_MUL_F	13506	821	14398
// OP_STORE_V	14398	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14396	0
// OP_GOTO	92	0	0
// OP_LOAD_ENT	28	194	14399
// OP_LOAD_V	14399	105	14400
// OP_LOAD_V	28	105	14403
// OP_SUB_V	14400	14403	14406
// OP_STORE_V	14406	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13837	0
// OP_STORE_V	13837	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	14409
// OP_STORE_V	14409	13825	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	59	2223	14412
// OP_ADD_V	13825	14412	14415
// OP_STORE_V	14415	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	14418
// OP_EQ_E	78	30	14419
// OP_AND	14418	14419	14420
// OP_IFNOT	14420	14	0
// OP_STORE_V	74	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	13837	0
// OP_ADDRESS	28	119	14421
// OP_LOAD_F	28	119	14422
// OP_STORE_V	14422	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_STORE_V	13838	7	0
// OP_MUL_F	13506	821	14423
// OP_STORE_V	14423	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14421	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	65	14094	14424
// OP_ADD_V	13825	14424	14427
// OP_STORE_V	14427	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_SUB_V	71	13825	14430
// OP_STORE_V	14430	13834	0
// OP_STORE_V	13825	4	0
// OP_MUL_VF	65	14094	14433
// OP_SUB_V	13825	14433	14436
// OP_STORE_V	14436	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_SUB_V	71	13825	14439
// OP_STORE_V	14439	13831	0
// OP_STORE_V	13831	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13846	0
// OP_STORE_V	13834	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13847	0
// OP_GT	13846	13847	14442
// OP_IFNOT	14442	14	0
// OP_ADDRESS	28	119	14443
// OP_LOAD_F	28	119	14444
// OP_STORE_V	14444	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_LOAD_F	28	119	14445
// OP_ADD_F	14445	13506	14446
// OP_STORE_V	14446	7	0
// OP_DIV_F	13506	819	14447
// OP_STORE_V	14447	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14443	0
// OP_GOTO	15	0	0
// OP_GT	13847	13846	14448
// OP_IFNOT	14448	13	0
// OP_ADDRESS	28	119	14449
// OP_LOAD_F	28	119	14450
// OP_STORE_V	14450	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_LOAD_F	28	119	14451
// OP_SUB_F	14451	13506	14452
// OP_STORE_V	14452	7	0
// OP_DIV_F	13506	819	14453
// OP_STORE_V	14453	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	14449	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	683	14454
// OP_LOAD_F	28	683	14455
// OP_LOAD_F	28	683	14456
// OP_BITAND	14456	710	14457
// OP_SUB_F	14455	14457	14458
// OP_STOREP_F	14458	14454	0
// OP_GOTO	2	0	0
// OP_CALL0	13568	0	0
// OP_LOAD_V	28	105	14459
// OP_LOAD_ENT	28	194	14462
// OP_LOAD_V	14462	105	14463
// OP_SUB_V	14459	14463	14466
// OP_STORE_V	14466	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13866	0
// OP_LT	13866	11267	14469
// OP_LT	13866	13865	14470
// OP_AND	14469	14470	14471
// OP_IFNOT	14471	9	0
// OP_ADDRESS	28	191	14472
// OP_LOAD_ENT	28	194	14473
// OP_LOAD_F	14473	119	14474
// OP_STOREP_F	14474	14472	0
// OP_ADDRESS	28	194	14475
// OP_STORE_V	28	4	0
// OP_CALL1	537	0	0
// OP_STOREP_ENT	1	14475	0
// OP_LOAD_V	28	105	14476
// OP_STORE_V	14476	4	0
// OP_LOAD_ENT	28	194	14479
// OP_LOAD_V	14479	105	14480
// OP_STORE_V	14480	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_E	78	30	14483
// OP_IFNOT	14483	7	0
// OP_ADDRESS	28	683	14484
// OP_LOAD_F	28	683	14485
// OP_LOAD_F	28	683	14486
// OP_BITAND	14486	711	14487
// OP_SUB_F	14485	14487	14488
// OP_STOREP_F	14488	14484	0
// OP_CALL0	85	0	0
// OP_IFNOT	719	17	0
// OP_ADDRESS	28	113	14489
// OP_LOAD_V	28	113	14492
// OP_STORE_V	14492	4	0
// OP_CALL1	468	0	0
// OP_STOREP_V	1	14489	0
// OP_LOAD_ENT	28	194	14495
// OP_LOAD_V	14495	105	14496
// OP_LOAD_V	28	105	14499
// OP_SUB_V	14496	14499	14502
// OP_STORE_V	14502	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	13837	0
// OP_ADDRESS	28	117	14505
// OP_STORE_V	13837	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	14505	0
// OP_ADDRESS	28	13517	14508
// OP_STOREP_F	31	14508	0
// OP_ADDRESS	28	150	14509
// OP_ADD_F	31	1988	14510
// OP_STOREP_F	14510	14509	0
// OP_DONE	0	0	0
void () bot_think = 
{
    local vector heading;
    local vector old_vel;
    local vector org;
    local float vel_speed;
    local float ftemp;
    local float vel_z;
    local vector left;
    local vector right;
    local vector vtemp;
    local vector leftend;
    local vector rightend;
    local float leftlen;
    local float rightlen;
    local float newheading;
    local float can_move;
    local vector tail_angle;
    local vector slide_angle;
    local vector right_end;
    local vector left_end;
    local float accel;
    local float max_speed;
    local float winning_slowdown;
    local float olddist;
    local float newdist;
    local string str;
    self.lastpostorg = self.oldorigin;
    self.oldorigin = self.origin;
    if((!(self.flags & FL_ONGROUND)) && checkbottom(self))
    {
        self.flags = self.flags | FL_ONGROUND;
    }
    else
    {
        
        if((self.flags & FL_ONGROUND) && CheckInAir())
        {
            BotInAir();
        }
        
    }
    
    
    if(self.last_changemaxspeed_time < (time - 2))
    {
        ftemp = 10;
        if(self.maxspeed < BOT_MAXSPEED)
        {
            if(self.maxspeed > (BOT_MAXSPEED - 50))
            {
                if(self.speeding_up)
                {
                    ftemp = 7;
                }
                else
                {
                    ftemp = 13;
                }
                
            }
            else
            {
                self.speeding_up = TRUE;
            }
            
        }
        else
        {
            if(self.maxspeed < (BOT_MAXSPEED + 50))
            {
                if(self.speeding_up)
                {
                    ftemp = 7;
                }
                else
                {
                    ftemp = 13;
                }
                
            }
            else
            {
                self.speeding_up = FALSE;
            }
            
        }
        
        self.maxspeed = (self.maxspeed + (random() * 20)) - ftemp;
        if(self.maxspeed < (BOT_MAXSPEED - 100))
        {
            self.maxspeed = BOT_MAXSPEED - 100;
        }
        else
        {
            
            if(self.maxspeed > (BOT_MAXSPEED + 100))
            {
                self.maxspeed = BOT_MAXSPEED + 100;
            }
            
        }
        
    }
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.roll_velocity = '0.000 0.000 0.000';
        self.velocity_z = self.velocity_z - (cvar("sv_gravity") * (time - self.last_think_time));
        
        if(self.velocity_z < -250)
        {
            self.velocity_z = -250;
        }
        
    }
    else
    {
        self.velocity_z = 0;
    }
    
    vel_z = self.velocity_z;
    
    if(self.flags & FL_ONGROUND)
    {
        tail_angle = vectoangles(self.veh_tail.veh_dir);
        
        if(fabs(angle_diff(0, self.veh_body.angles_y)) > 15)
        {
            self.velocity = self.velocity * (0.9 - (random() * 0.05));
        }
        
        heading = self.goalentity.origin - self.origin;
        heading = vectoangles(heading);
        accel = (BOT_ACCEL * (time - self.last_think_time)) * (1 + ((random() - 0.5) * 0.2));
        if(vlen(self.velocity) == 0)
        {
            self.velocity = (normalize(self.goalentity.origin - self.origin)) * 10;
        }
        else
        {
            
            if((teamplay < 3) && (self.position == 1))
            {
                accel = (BOT_ACCEL * (time - self.last_think_time)) * 0.8;
            }
            
            self.velocity = self.velocity + (normalize(self.velocity) * accel);
        }
        
        winning_slowdown = 1;
        
        if((teamplay < 3) && (self.position == 1))
        {
            winning_slowdown = 0.8;
        }
        
        
        if(vlen(self.velocity) > (self.maxspeed * winning_slowdown))
        {
            self.velocity = normalize(self.velocity) * (self.maxspeed * winning_slowdown);
        }
        
    }
    
    vel_speed = vlen(self.velocity);
    
    if(self.flags & FL_ONGROUND)
    {
        
        if((!(self.bot_flags & BF_STUCK)) && (!(self.flags & BF_AVOID)))
        {
            traceline(self.origin, self.goalentity.origin, TRUE, self);
            if(trace_fraction == 1)
            {
                ftemp = 0;
            }
            else
            {
                ftemp = self.ideal_yaw;
            }
            
            self.angles_y = MoveToAngle(self.angles_y, ftemp, BOT_TURNSPEED);
            
            if(fabs(angle_diff(self.angles_y, ftemp)) > 35)
            {
                self.velocity = self.velocity - ((normalize(self.velocity) * accel) * 2);
            }
            
        }
        
        
        if((self.angles_y == 0) && (!(self.bot_flags & BF_STUCK)))
        {
            makevectors(self.angles);
            org = self.origin;
            traceline(org, org + (v_forward * 512), FALSE, self);
            
            if(trace_ent == world)
            {
                org = self.origin - (v_right * 16);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            
            if(trace_ent == world)
            {
                org = self.origin + (v_right * 16);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            
            if(trace_ent == world)
            {
                org = self.origin - (v_right * 32);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            
            if(trace_ent == world)
            {
                org = self.origin + (v_right * 32);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            
            if(trace_ent == world)
            {
                org = self.origin - (v_right * 48);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            
            if(trace_ent == world)
            {
                org = self.origin + (v_right * 48);
                traceline(org, org + (v_forward * 512), FALSE, self);
            }
            
            if(((trace_ent != world) && (trace_ent.solid == SOLID_BBOX)) && (vlen(trace_ent.velocity) < vel_speed))
            {
                self.e_avoid = trace_ent;
                self.bot_flags = self.bot_flags | BF_AVOID;
            }
            else
            {
                self.bot_flags = self.bot_flags - (self.bot_flags & BF_AVOID);
            }
            
        }
        
    }
    
    setorigin(self.movetarget, self.origin + (self.velocity * (time - self.last_think_time)));
    olddist = vlen(self.origin - self.goalentity.origin);
    PlayerPreThink();
    can_move = TRUE;
    
    if(self.flags & FL_ONGROUND)
    {
        org = self.movetarget.origin;
        self = self.movetarget;
        makevectors(self.veh_body.angles);
        self.origin = (self.origin + '0.000 0.000 8.000') + (('0.000 0.000 1.000' * (0 + 0.5)) * (vlen(self.origin - self.owner.origin)));
        if(droptofloor())
        {
            
            if((0 - self.origin_z) > 24)
            {
                self.origin = org;
            }
            
        }
        else
        {
            self.origin = org;
        }
        
        self = self.owner;
    }
    
    if(self.flags & FL_ONGROUND)
    {
        
        if(can_move)
        {
            if(!movetotarget() || (self.bot_flags & BF_AVOID))
            {
                
                if(self.origin == self.oldorigin)
                {
                    self.bot_flags = self.bot_flags | BF_STUCK;
                }
                
                vel_speed = (vlen(self.origin - self.oldorigin)) / (time - self.last_think_time);
                vtemp = normalize(self.velocity) * vel_speed;
                if((vel_speed - vlen(vtemp)) > BOT_MAX_SLOWDOWN)
                {
                    self.velocity = self.velocity - (normalize(vtemp) * BOT_MAX_SLOWDOWN);
                }
                else
                {
                    self.velocity = vtemp;
                }
                
                if(!(self.bot_flags & BF_STUCK))
                {
                    
                    if(self.bot_flags & BF_AVOID)
                    {
                        vtemp = normalize(self.goalentity.origin - self.e_avoid.origin);
                        makevectors(vtemp);
                        org = self.e_avoid.origin;
                        traceline(org, org + (v_right * 512), FALSE, self.e_avoid);
                        right = trace_endpos - org;
                        rightend = trace_endpos;
                        traceline(org, org - (v_right * 512), FALSE, self.e_avoid);
                        left = trace_endpos - org;
                        leftend = trace_endpos;
                        leftlen = vlen(left);
                        rightlen = vlen(right);
                        if(leftlen > rightlen)
                        {
                            vtemp = normalize(leftend - self.origin);
                            vtemp = vectoangles(vtemp);
                            self.angles_y = MoveToAngle(anglemod(self.angles_y), 0, BOT_TURNSPEED);
                        }
                        else
                        {
                            vtemp = normalize(rightend - self.origin);
                            vtemp = vectoangles(vtemp);
                            self.angles_y = MoveToAngle(anglemod(self.angles_y), 0, BOT_TURNSPEED * 2);
                        }
                        
                    }
                    
                }
                else
                {
                    vtemp = normalize(self.goalentity.origin - self.origin);
                    vtemp = vectoangles(vtemp);
                    makevectors(vtemp);
                    org = self.origin;
                    traceline(org, org + (v_forward * 64), FALSE, self);
                    
                    if((trace_fraction < 1) && (trace_ent == world))
                    {
                        vtemp = vectoangles(trace_plane_normal);
                        self.angles_y = MoveToAngle(anglemod(self.angles_y), 0, BOT_TURNSPEED * 2);
                    }
                    
                    traceline(org, org + (v_right * 512), FALSE, self);
                    right = trace_endpos - org;
                    traceline(org, org - (v_right * 512), FALSE, self);
                    left = trace_endpos - org;
                    leftlen = vlen(left);
                    rightlen = vlen(right);
                    if(leftlen > rightlen)
                    {
                        self.angles_y = MoveToAngle(anglemod(self.angles_y), self.angles_y + BOT_TURNSPEED, BOT_TURNSPEED / 1);
                    }
                    else
                    {
                        
                        if(rightlen > leftlen)
                        {
                            self.angles_y = MoveToAngle(anglemod(self.angles_y), self.angles_y - BOT_TURNSPEED, BOT_TURNSPEED / 1);
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                self.bot_flags = self.bot_flags - (self.bot_flags & BF_STUCK);
            }
            
        }
        
    }
    else
    {
        movetotarget();
    }
    
    newdist = vlen(self.origin - self.goalentity.origin);
    
    if((newdist < 160) && (newdist < olddist))
    {
        self.ideal_yaw = self.goalentity.angles_y;
        self.goalentity = FindGoalMarker(self);
    }
    
    traceline(self.origin, self.goalentity.origin, FALSE, self);
    
    if(trace_ent == world)
    {
        self.bot_flags = self.bot_flags - (self.bot_flags & BF_AVOID);
    }
    
    PlayerPostThink();
    
    if(hold_flag)
    {
        self.velocity = normalize(self.velocity);
        vtemp = normalize(self.goalentity.origin - self.origin);
        self.angles = vectoangles(vtemp);
    }
    
    self.last_think_time = time;
    self.nextthink = time + 0.05;
};

// SetBotNetName
// function begins at statement 20105, parm_start=14512
// OP_EQ_F	734	819	14512
// OP_IFNOT	14512	4	0
// OP_ADDRESS	28	180	14513
// OP_STOREP_S	14514	14513	0
// OP_GOTO	23	0	0
// OP_EQ_F	734	821	14515
// OP_IFNOT	14515	4	0
// OP_ADDRESS	28	180	14516
// OP_STOREP_S	14517	14516	0
// OP_GOTO	18	0	0
// OP_EQ_F	734	823	14518
// OP_IFNOT	14518	4	0
// OP_ADDRESS	28	180	14519
// OP_STOREP_S	14520	14519	0
// OP_GOTO	13	0	0
// OP_EQ_F	734	825	14521
// OP_IFNOT	14521	4	0
// OP_ADDRESS	28	180	14522
// OP_STOREP_S	14523	14522	0
// OP_GOTO	8	0	0
// OP_EQ_F	734	827	14524
// OP_IFNOT	14524	4	0
// OP_ADDRESS	28	180	14525
// OP_STOREP_S	14526	14525	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	180	14527
// OP_STOREP_S	14528	14527	0
// OP_DONE	0	0	0
void () SetBotNetName = 
{
    if(num_bots == 1)
    {
        self.netname = "RidahBot";
    }
    else
    {
        if(num_bots == 2)
        {
            self.netname = "DaKillerBot";
        }
        else
        {
            if(num_bots == 3)
            {
                self.netname = "B-MonEy Bot";
            }
            else
            {
                if(num_bots == 4)
                {
                    self.netname = "SumalethBot";
                }
                else
                {
                    if(num_bots == 5)
                    {
                        self.netname = "[jD] Bot";
                    }
                    else
                    {
                        self.netname = "DruBot";
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// SpawnBot
// function begins at statement 20133, parm_start=14529
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	14529	0
// OP_ADDRESS	14529	432	14532
// OP_CALL0	473	0	0
// OP_STOREP_ENT	1	14532	0
// OP_LOAD_ENT	14529	432	14533
// OP_STORE_ENT	14533	14530	0
// OP_ADDRESS	14530	166	14534
// OP_STOREP_V	6029	14534	0
// OP_LOAD_ENT	14529	432	14537
// OP_ADDRESS	14537	201	14538
// OP_STOREP_ENT	14529	14538	0
// OP_LOAD_ENT	14529	432	14539
// OP_ADDRESS	14539	104	14540
// OP_STOREP_F	243	14540	0
// OP_STORE_V	14530	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_LOAD_ENT	14529	432	14541
// OP_ADDRESS	14541	201	14542
// OP_STOREP_ENT	14529	14542	0
// OP_STORE_ENT	28	14530	0
// OP_STORE_ENT	14529	28	0
// OP_ADD_F	734	819	14543
// OP_STORE_F	14543	734	0
// OP_ADDRESS	14529	129	14544
// OP_STOREP_S	1187	14544	0
// OP_ADDRESS	14529	627	14545
// OP_STOREP_S	1185	14545	0
// OP_CALL0	14511	0	0
// OP_ADDRESS	14529	104	14546
// OP_STOREP_F	246	14546	0
// OP_ADDRESS	14529	103	14547
// OP_STOREP_F	235	14547	0
// OP_ADDRESS	14529	166	14548
// OP_STOREP_V	6029	14548	0
// OP_ADDRESS	14529	163	14551
// OP_STOREP_F	256	14551	0
// OP_ADDRESS	14529	191	14552
// OP_LOAD_V	14529	117	14553
// OP_MUL_V	14553	1224	14556
// OP_STOREP_F	14556	14552	0
// OP_STORE_V	14529	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	14529	152	14557
// OP_STOREP_F	1957	14557	0
// OP_CALL0	12531	0	0
// OP_STORE_ENT	1	14531	0
// OP_STORE_V	14529	4	0
// OP_LOAD_V	14531	105	14558
// OP_ADD_V	14558	1215	14561
// OP_STORE_V	14561	7	0
// OP_CALL2	462	0	0
// OP_CALL0	492	0	0
// OP_ADDRESS	28	182	14564
// OP_LOAD_F	28	182	14565
// OP_BITOR	14565	228	14566
// OP_BITOR	14566	224	14567
// OP_BITOR	14567	220	14568
// OP_STOREP_F	14568	14564	0
// OP_ADDRESS	14529	117	14569
// OP_LOAD_V	14531	117	14572
// OP_STOREP_V	14572	14569	0
// OP_ADDRESS	14529	589	14575
// OP_STOREP_F	219	14575	0
// OP_ADDRESS	14529	654	14576
// OP_STOREP_F	1228	14576	0
// OP_CALL0	87	0	0
// OP_CALL0	1156	0	0
// OP_ADDRESS	28	637	14577
// OP_STOREP_F	817	14577	0
// OP_ADDRESS	28	638	14578
// OP_STOREP_ENT	30	14578	0
// OP_ADDRESS	28	13518	14579
// OP_STOREP_F	13507	14579	0
// OP_ADDRESS	28	194	14580
// OP_STORE_V	28	4	0
// OP_CALL1	537	0	0
// OP_STOREP_ENT	1	14580	0
// OP_ADDRESS	28	117	14581
// OP_LOAD_ENT	28	194	14584
// OP_LOAD_V	14584	105	14585
// OP_LOAD_V	28	105	14588
// OP_SUB_V	14585	14588	14591
// OP_STORE_V	14591	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	14581	0
// OP_LOAD_F	28	644	14594
// OP_BITAND	14594	693	14595
// OP_NOT_F	14595	0	14596
// OP_IFNOT	14596	17	0
// OP_ADDRESS	28	640	14597
// OP_STOREP_F	817	14597	0
// OP_ADDRESS	28	642	14598
// OP_STOREP_F	12762	14598	0
// OP_ADDRESS	28	641	14599
// OP_STOREP_F	817	14599	0
// OP_ADDRESS	28	637	14600
// OP_STOREP_F	817	14600	0
// OP_ADDRESS	28	644	14601
// OP_LOAD_F	28	644	14602
// OP_BITOR	14602	693	14603
// OP_STOREP_F	14603	14601	0
// OP_ADDRESS	28	644	14604
// OP_LOAD_F	28	644	14605
// OP_BITOR	14605	692	14606
// OP_STOREP_F	14606	14604	0
// OP_OR	35	36	14607
// OP_IFNOT	14607	9	0
// OP_LOAD_V	28	117	14608
// OP_STORE_V	14608	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	14611
// OP_MUL_VF	59	1112	14614
// OP_ADD_V	14611	14614	14617
// OP_STORE_V	14617	4	0
// OP_CALL1	858	0	0
// OP_LOAD_V	28	105	14620
// OP_STORE_V	14620	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	12318	0	0
// OP_ADDRESS	28	13517	14623
// OP_STOREP_F	31	14623	0
// OP_ADDRESS	14529	148	14624
// OP_STOREP_FNC	13818	14624	0
// OP_ADDRESS	14529	150	14625
// OP_ADD_F	31	2869	14626
// OP_STOREP_F	14626	14625	0
// OP_ADDRESS	14529	683	14627
// OP_STOREP_F	817	14627	0
// OP_STORE_ENT	14530	28	0
// OP_DONE	0	0	0
void () SpawnBot = 
{
    local entity bot;
    local entity temp;
    local entity espawn;
    bot = spawn();
    bot.movetarget = spawn();
    temp = bot.movetarget;
    temp.view_ofs = '0.000 0.000 7.000';
    bot.movetarget.owner = bot;
    bot.movetarget.solid = SOLID_NOT;
    setsize(temp, VEH_MIN, VEH_MAX);
    bot.movetarget.owner = bot;
    temp = self;
    self = bot;
    num_bots = num_bots + 1;
    bot.classname = "rally_bot";
    bot.is_racer = "yes";
    SetBotNetName();
    bot.solid = SOLID_SLIDEBOX;
    bot.movetype = MOVETYPE_STEP;
    bot.view_ofs = '0.000 0.000 7.000';
    bot.takedamage = DAMAGE_NO;
    bot.ideal_yaw = bot.angles * '0.000 1.000 0.000';
    setsize(bot, VEH_MIN, VEH_MAX);
    bot.health = 100;
    espawn = SelectSpawnPoint();
    setorigin(bot, espawn.origin + '0.000 0.000 1.000');
    droptofloor();
    self.flags = ((self.flags | FL_ONGROUND) | FL_MONSTER) | FL_FLY;
    bot.angles = espawn.angles;
    bot.use_surface_angle = TRUE;
    bot.last_engine_ratio = -1;
    ClientConnect();
    CreateVehicleEntities();
    self.last_marker_num = 0;
    self.last_marker = world;
    self.maxspeed = BOT_MAXSPEED;
    self.goalentity = FindGoalMarker(self);
    self.angles = vectoangles(self.goalentity.origin - self.origin);
    
    if(!(self.racing_flags & QR_RACING))
    {
        self.last_lap = 0;
        self.fastest_lap = 999999;
        self.last_lap_time = 0;
        self.last_marker_num = 0;
        self.racing_flags = self.racing_flags | QR_RACING;
        self.racing_flags = self.racing_flags | QR_START_READY;
    }
    
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * 20));
    }
    
    spawn_tdeath(self.origin, self);
    self.last_think_time = time;
    bot.think = bot_think;
    bot.nextthink = time + 0.1;
    bot.bot_flags = 0;
    self = temp;
};

