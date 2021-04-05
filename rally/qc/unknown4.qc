void (vector dest3) ChooseTurn;
void () ai_face;
float enemy_vis;
float enemy_infront;
float enemy_range;
float enemy_yaw;
// knight_attack
// function begins at statement 9074, parm_start=7596
// OP_LOAD_ENT	28	181	7597
// OP_LOAD_V	7597	105	7598
// OP_LOAD_ENT	28	181	7601
// OP_LOAD_V	7601	166	7602
// OP_ADD_V	7598	7602	7605
// OP_LOAD_V	28	105	7608
// OP_LOAD_V	28	166	7611
// OP_ADD_V	7608	7611	7614
// OP_SUB_V	7605	7614	7617
// OP_STORE_V	7617	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	7596	0
// OP_DONE	0	0	0
void () knight_attack = 
{
    local float len;
    len = vlen((self.enemy.origin + self.enemy.view_ofs) - (self.origin + self.view_ofs));
};

// CheckAttack
// function begins at statement 9087, parm_start=7621
// OP_DONE	0	0	0
void () CheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
};

// ai_face
// function begins at statement 9088, parm_start=7629
// OP_ADDRESS	28	191	7629
// OP_LOAD_ENT	28	181	7630
// OP_LOAD_V	7630	105	7631
// OP_LOAD_V	28	105	7634
// OP_SUB_V	7631	7634	7637
// OP_STORE_V	7637	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	7629	0
// OP_CALL0	505	0	0
// OP_DONE	0	0	0
void () ai_face = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
};

float (entity targ) infront;
float (entity targ) range;
// ai_charge
// function begins at statement 9098, parm_start=7643
// OP_CALL0	7590	0	0
// OP_STORE_V	7643	4	0
// OP_CALL1	515	0	0
// OP_DONE	0	0	0
void (float d) ai_charge = 
{
    ai_face();
    movetogoal(d);
};

// ai_charge_side
// function begins at statement 9102, parm_start=7645
// OP_DONE	0	0	0
void () ai_charge_side = 
{
    local vector dtemp;
    local float heading;
};

// ai_melee
// function begins at statement 9103, parm_start=7650
// OP_DONE	0	0	0
void () ai_melee = 
{
    local vector delta;
    local float ldmg;
};

// ai_melee_side
// function begins at statement 9104, parm_start=7655
// OP_DONE	0	0	0
void () ai_melee_side = 
{
    local vector delta;
    local float ldmg;
};

// SoldierCheckAttack
// function begins at statement 9105, parm_start=7660
// OP_DONE	0	0	0
void () SoldierCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
};

// ShamCheckAttack
// function begins at statement 9106, parm_start=7669
// OP_EQ_F	7593	248	7677
// OP_IFNOT	7677	9	0
// OP_LOAD_ENT	28	181	7678
// OP_STORE_V	7678	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	536	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	381	7679
// OP_STOREP_F	384	7679	0
// OP_RETURN	219	0	0
// OP_LOAD_F	28	387	7680
// OP_LT	31	7680	7681
// OP_IFNOT	7681	2	0
// OP_RETURN	218	0	0
// OP_NOT_F	7591	0	7682
// OP_IFNOT	7682	2	0
// OP_RETURN	218	0	0
// OP_LOAD_ENT	28	181	7683
// OP_STORE_ENT	7683	7675	0
// OP_LOAD_V	28	105	7684
// OP_LOAD_V	28	166	7687
// OP_ADD_V	7684	7687	7690
// OP_STORE_V	7690	7669	0
// OP_LOAD_V	7675	105	7693
// OP_LOAD_V	7675	166	7696
// OP_ADD_V	7693	7696	7699
// OP_STORE_V	7699	7672	0
// OP_SUB_V	7669	7672	7702
// OP_STORE_V	7702	4	0
// OP_CALL1	471	0	0
// OP_GT	1	2127	7705
// OP_IFNOT	7705	2	0
// OP_RETURN	218	0	0
// OP_STORE_V	7669	4	0
// OP_STORE_V	7672	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_AND	79	80	7706
// OP_IFNOT	7706	2	0
// OP_RETURN	218	0	0
// OP_NE_E	78	7675	7707
// OP_IFNOT	7707	2	0
// OP_RETURN	218	0	0
// OP_EQ_F	7593	251	7708
// OP_IFNOT	7708	2	0
// OP_RETURN	218	0	0
// OP_ADDRESS	28	381	7709
// OP_STOREP_F	385	7709	0
// OP_CALL0	466	0	0
// OP_MUL_F	821	1	7710
// OP_ADD_F	821	7710	7711
// OP_STORE_V	7711	4	0
// OP_CALL1	7573	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () ShamCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    
    if((vlen(spot1 - spot2)) > 600)
    {
        return FALSE;
    }
    
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(2 + (2 * random()));
    return TRUE;
};

// OgreCheckAttack
// function begins at statement 9162, parm_start=7713
// OP_EQ_F	7593	248	7721
// OP_IFNOT	7721	9	0
// OP_LOAD_ENT	28	181	7722
// OP_STORE_V	7722	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	536	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	381	7723
// OP_STOREP_F	384	7723	0
// OP_RETURN	219	0	0
// OP_LOAD_F	28	387	7724
// OP_LT	31	7724	7725
// OP_IFNOT	7725	2	0
// OP_RETURN	218	0	0
// OP_NOT_F	7591	0	7726
// OP_IFNOT	7726	2	0
// OP_RETURN	218	0	0
// OP_LOAD_ENT	28	181	7727
// OP_STORE_ENT	7727	7719	0
// OP_LOAD_V	28	105	7728
// OP_LOAD_V	28	166	7731
// OP_ADD_V	7728	7731	7734
// OP_STORE_V	7734	7713	0
// OP_LOAD_V	7719	105	7737
// OP_LOAD_V	7719	166	7740
// OP_ADD_V	7737	7740	7743
// OP_STORE_V	7743	7716	0
// OP_STORE_V	7713	4	0
// OP_STORE_V	7716	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_AND	79	80	7746
// OP_IFNOT	7746	2	0
// OP_RETURN	218	0	0
// OP_NE_E	78	7719	7747
// OP_IFNOT	7747	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	28	387	7748
// OP_LT	31	7748	7749
// OP_IFNOT	7749	2	0
// OP_RETURN	218	0	0
// OP_EQ_F	7593	251	7750
// OP_IFNOT	7750	3	0
// OP_RETURN	218	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	7593	249	7751
// OP_IFNOT	7751	3	0
// OP_STORE_F	2869	7720	0
// OP_GOTO	6	0	0
// OP_EQ_F	7593	250	7752
// OP_IFNOT	7752	3	0
// OP_STORE_F	1988	7720	0
// OP_GOTO	2	0	0
// OP_STORE_F	817	7720	0
// OP_ADDRESS	28	381	7753
// OP_STOREP_F	385	7753	0
// OP_CALL0	466	0	0
// OP_MUL_F	821	1	7754
// OP_ADD_F	819	7754	7755
// OP_STORE_V	7755	4	0
// OP_CALL1	7573	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () OgreCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.1;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.05;
            }
            else
            {
                chance = 0;
            }
            
        }
        
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(1 + (2 * random()));
    return TRUE;
};

