void () movetarget_f;
void () t_movetarget;
float current_yaw;
entity sight_entity;
float sight_entity_time;
// anglemod
// function begins at statement 9226, parm_start=7761
// OP_GE	7761	867	7762
// OP_IFNOT	7762	4	0
// OP_SUB_F	7761	867	7763
// OP_STORE_F	7763	7761	0
// OP_GOTO	-4	0	0
// OP_LT	7761	817	7764
// OP_IFNOT	7764	4	0
// OP_ADD_F	7761	867	7765
// OP_STORE_F	7765	7761	0
// OP_GOTO	-4	0	0
// OP_RETURN	7761	0	0
// OP_DONE	0	0	0
float (float v) anglemod = 
{
    
    while(v >= 360)
    {
        v = v - 360;
    }
    
    
    while(v < 0)
    {
        v = v + 360;
    }
    
    return v;
};

// movetarget_f
// function begins at statement 9238, parm_start=7766
// OP_LOAD_S	28	197	7766
// OP_NOT_S	7766	0	7767
// OP_IFNOT	7767	3	0
// OP_STORE_V	7768	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	104	7769
// OP_STOREP_F	244	7769	0
// OP_ADDRESS	28	146	7770
// OP_STOREP_FNC	7757	7770	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7771	7	0
// OP_STORE_V	7774	10	0
// OP_CALL3	464	0	0
// OP_DONE	0	0	0
void () movetarget_f = 
{
    
    if(!self.targetname)
    {
        objerror("monster_movetarget: no targetname");
    }
    
    self.solid = SOLID_TRIGGER;
    self.touch = t_movetarget;
    setsize(self, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
};

// path_corner
// function begins at statement 9252, parm_start=7778
// OP_CALL0	7756	0	0
// OP_DONE	0	0	0
void () path_corner = 
{
    movetarget_f();
};

// t_movetarget
// function begins at statement 9254, parm_start=7778
// OP_DONE	0	0	0
void () t_movetarget = 
{
    local entity temp;
};

// range
// function begins at statement 9255, parm_start=7779
// OP_LOAD_V	28	105	7787
// OP_LOAD_V	28	166	7790
// OP_ADD_V	7787	7790	7793
// OP_STORE_V	7793	7780	0
// OP_LOAD_V	7779	105	7796
// OP_LOAD_V	7779	166	7799
// OP_ADD_V	7796	7799	7802
// OP_STORE_V	7802	7783	0
// OP_SUB_V	7780	7783	7805
// OP_STORE_V	7805	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	7786	0
// OP_LT	7786	5807	7808
// OP_IFNOT	7808	2	0
// OP_RETURN	248	0	0
// OP_LT	7786	1820	7809
// OP_IFNOT	7809	2	0
// OP_RETURN	249	0	0
// OP_LT	7786	3337	7810
// OP_IFNOT	7810	2	0
// OP_RETURN	250	0	0
// OP_RETURN	251	0	0
// OP_DONE	0	0	0
float (entity targ) range = 
{
    local vector spot1;
    local vector spot2;
    local float r;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    r = vlen(spot1 - spot2);
    
    if(r < 120)
    {
        return RANGE_MELEE;
    }
    
    
    if(r < 500)
    {
        return RANGE_NEAR;
    }
    
    
    if(r < 1000)
    {
        return RANGE_MID;
    }
    
    return RANGE_FAR;
};

// visible
// function begins at statement 9278, parm_start=7811
// OP_LOAD_V	28	105	7818
// OP_LOAD_V	28	166	7821
// OP_ADD_V	7818	7821	7824
// OP_STORE_V	7824	7812	0
// OP_LOAD_V	7811	105	7827
// OP_LOAD_V	7811	166	7830
// OP_ADD_V	7827	7830	7833
// OP_STORE_V	7833	7815	0
// OP_STORE_V	7812	4	0
// OP_STORE_V	7815	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_AND	79	80	7836
// OP_IFNOT	7836	2	0
// OP_RETURN	218	0	0
// OP_EQ_F	70	819	7837
// OP_IFNOT	7837	2	0
// OP_RETURN	219	0	0
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (entity targ) visible = 
{
    local vector spot1;
    local vector spot2;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    return FALSE;
};

// infront
// function begins at statement 9299, parm_start=7838
// OP_LOAD_V	28	117	7843
// OP_STORE_V	7843	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	7838	105	7846
// OP_LOAD_V	28	105	7849
// OP_SUB_V	7846	7849	7852
// OP_STORE_V	7852	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	7839	0
// OP_MUL_V	7839	59	7855
// OP_STORE_F	7855	7842	0
// OP_GT	7842	2575	7856
// OP_IFNOT	7856	2	0
// OP_RETURN	219	0	0
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (entity targ) infront = 
{
    local vector vec;
    local float dot;
    makevectors(self.angles);
    vec = normalize(targ.origin - self.origin);
    dot = vec * v_forward;
    
    if(dot > 0.3)
    {
        return TRUE;
    }
    
    return FALSE;
};

// HuntTarget
// function begins at statement 9315, parm_start=7858
// OP_ADDRESS	28	194	7858
// OP_LOAD_ENT	28	181	7859
// OP_STOREP_ENT	7859	7858	0
// OP_ADDRESS	28	148	7860
// OP_LOAD_FNC	28	372	7861
// OP_STOREP_FNC	7861	7860	0
// OP_ADDRESS	28	191	7862
// OP_LOAD_ENT	28	181	7863
// OP_LOAD_V	7863	105	7864
// OP_LOAD_V	28	105	7867
// OP_SUB_V	7864	7867	7870
// OP_STORE_V	7870	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	7862	0
// OP_ADDRESS	28	150	7873
// OP_ADD_F	31	2869	7874
// OP_STOREP_F	7874	7873	0
// OP_STORE_V	819	4	0
// OP_CALL1	7573	0	0
// OP_DONE	0	0	0
void () HuntTarget = 
{
    self.goalentity = self.enemy;
    self.think = self.th_run;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.nextthink = time + 0.1;
    SUB_AttackFinished(1);
};

// SightSound
// function begins at statement 9335, parm_start=7876
// OP_LOAD_S	28	129	7877
// OP_EQ_S	7877	7878	7879
// OP_IFNOT	7879	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7880	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	152	0	0
// OP_LOAD_S	28	129	7881
// OP_EQ_S	7881	7882	7883
// OP_IFNOT	7883	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7884	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	142	0	0
// OP_LOAD_S	28	129	7885
// OP_EQ_S	7885	7886	7887
// OP_IFNOT	7887	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7888	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	132	0	0
// OP_LOAD_S	28	129	7889
// OP_EQ_S	7889	7890	7891
// OP_IFNOT	7891	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7892	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	122	0	0
// OP_LOAD_S	28	129	7893
// OP_EQ_S	7893	7894	7895
// OP_IFNOT	7895	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7896	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	112	0	0
// OP_LOAD_S	28	129	7897
// OP_EQ_S	7897	7898	7899
// OP_IFNOT	7899	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7900	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	102	0	0
// OP_LOAD_S	28	129	7901
// OP_EQ_S	7901	7902	7903
// OP_IFNOT	7903	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7904	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	92	0	0
// OP_LOAD_S	28	129	7905
// OP_EQ_S	7905	7906	7907
// OP_IFNOT	7907	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7908	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	82	0	0
// OP_LOAD_S	28	129	7909
// OP_EQ_S	7909	7910	7911
// OP_IFNOT	7911	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7912	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	72	0	0
// OP_LOAD_S	28	129	7913
// OP_EQ_S	7913	7914	7915
// OP_IFNOT	7915	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7916	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	62	0	0
// OP_LOAD_S	28	129	7917
// OP_EQ_S	7917	7918	7919
// OP_IFNOT	7919	40	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	7920
// OP_STORE_V	7920	4	0
// OP_CALL1	494	0	0
// OP_STORE_F	1	7876	0
// OP_EQ_F	7876	819	7921
// OP_IFNOT	7921	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7922	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	7876	821	7923
// OP_IFNOT	7923	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7924	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	7876	817	7925
// OP_IFNOT	7925	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7926	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7927	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	28	129	7928
// OP_EQ_S	7928	7929	7930
// OP_IFNOT	7930	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7931	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	129	7932
// OP_EQ_S	7932	7933	7934
// OP_IFNOT	7934	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7935	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () SightSound = 
{
    local float rsnd;
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogwake.wav", 1, ATTN_NORM);
    }
    else
    {
        if(self.classname == "monster_knight")
        {
            sound(self, CHAN_VOICE, "knight/ksight.wav", 1, ATTN_NORM);
        }
        else
        {
            if(self.classname == "monster_shambler")
            {
                sound(self, CHAN_VOICE, "shambler/ssight.wav", 1, ATTN_NORM);
            }
            else
            {
                if(self.classname == "monster_demon1")
                {
                    sound(self, CHAN_VOICE, "demon/sight2.wav", 1, ATTN_NORM);
                }
                else
                {
                    if(self.classname == "monster_wizard")
                    {
                        sound(self, CHAN_VOICE, "wizard/wsight.wav", 1, ATTN_NORM);
                    }
                    else
                    {
                        if(self.classname == "monster_zombie")
                        {
                            sound(self, CHAN_VOICE, "zombie/z_idle.wav", 1, ATTN_NORM);
                        }
                        else
                        {
                            if(self.classname == "monster_dog")
                            {
                                sound(self, CHAN_VOICE, "dog/dsight.wav", 1, ATTN_NORM);
                            }
                            else
                            {
                                if(self.classname == "monster_hell_knight")
                                {
                                    sound(self, CHAN_VOICE, "hknight/sight1.wav", 1, ATTN_NORM);
                                }
                                else
                                {
                                    if(self.classname == "monster_tarbaby")
                                    {
                                        sound(self, CHAN_VOICE, "blob/sight1.wav", 1, ATTN_NORM);
                                    }
                                    else
                                    {
                                        if(self.classname == "monster_vomit")
                                        {
                                            sound(self, CHAN_VOICE, "vomitus/v_sight1.wav", 1, ATTN_NORM);
                                        }
                                        else
                                        {
                                            if(self.classname == "monster_enforcer")
                                            {
                                                rsnd = rint(random() * 3);
                                                if(rsnd == 1)
                                                {
                                                    sound(self, CHAN_VOICE, "enforcer/sight1.wav", 1, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    if(rsnd == 2)
                                                    {
                                                        sound(self, CHAN_VOICE, "enforcer/sight2.wav", 1, ATTN_NORM);
                                                    }
                                                    else
                                                    {
                                                        if(rsnd == 0)
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight3.wav", 1, ATTN_NORM);
                                                        }
                                                        else
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight4.wav", 1, ATTN_NORM);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(self.classname == "monster_army")
                                                {
                                                    sound(self, CHAN_VOICE, "soldier/sight1.wav", 1, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    
                                                    if(self.classname == "monster_shalrath")
                                                    {
                                                        sound(self, CHAN_VOICE, "shalrath/sight.wav", 1, ATTN_NORM);
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// FoundTarget
// function begins at statement 9497, parm_start=7937
// OP_LOAD_ENT	28	181	7937
// OP_LOAD_S	7937	129	7938
// OP_EQ_S	7938	880	7939
// OP_IFNOT	7939	3	0
// OP_STORE_ENT	28	7759	0
// OP_STORE_F	31	7760	0
// OP_ADDRESS	28	402	7940
// OP_ADD_F	31	819	7941
// OP_STOREP_F	7941	7940	0
// OP_CALL0	7875	0	0
// OP_CALL0	7857	0	0
// OP_DONE	0	0	0
void () FoundTarget = 
{
    
    if(self.enemy.classname == "player")
    {
        sight_entity = self;
        sight_entity_time = time;
    }
    
    self.show_hostile = time + 1;
    SightSound();
    HuntTarget();
};

// FindTarget
// function begins at statement 9509, parm_start=7943
// OP_SUB_F	31	2869	7945
// OP_GE	7760	7945	7946
// OP_LOAD_F	28	195	7947
// OP_BITAND	7947	823	7948
// OP_NOT_F	7948	0	7949
// OP_AND	7946	7949	7950
// OP_IFNOT	7950	8	0
// OP_STORE_ENT	7759	7943	0
// OP_LOAD_ENT	7943	181	7951
// OP_LOAD_ENT	28	181	7952
// OP_EQ_E	7951	7952	7953
// OP_IFNOT	7953	2	0
// OP_RETURN	0	0	0
// OP_GOTO	6	0	0
// OP_CALL0	476	0	0
// OP_STORE_ENT	1	7943	0
// OP_NOT_ENT	7943	0	7954
// OP_IFNOT	7954	2	0
// OP_RETURN	218	0	0
// OP_LOAD_ENT	28	181	7955
// OP_EQ_E	7943	7955	7956
// OP_IFNOT	7956	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	7943	182	7957
// OP_BITAND	7957	226	7958
// OP_IFNOT	7958	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	7943	162	7959
// OP_BITAND	7959	286	7960
// OP_IFNOT	7960	2	0
// OP_RETURN	218	0	0
// OP_STORE_V	7943	4	0
// OP_CALL1	7641	0	0
// OP_STORE_F	1	7944	0
// OP_EQ_F	7944	251	7961
// OP_IFNOT	7961	2	0
// OP_RETURN	218	0	0
// OP_STORE_V	7943	4	0
// OP_CALL1	7579	0	0
// OP_NOT_F	1	0	7962
// OP_IFNOT	7962	2	0
// OP_RETURN	218	0	0
// OP_EQ_F	7944	249	7963
// OP_IFNOT	7963	10	0
// OP_LOAD_F	7943	402	7964
// OP_LT	7964	31	7965
// OP_STORE_V	7943	4	0
// OP_CALL1	7640	0	0
// OP_NOT_F	1	0	7966
// OP_AND	7965	7966	7967
// OP_IFNOT	7967	2	0
// OP_RETURN	218	0	0
// OP_GOTO	8	0	0
// OP_EQ_F	7944	250	7968
// OP_IFNOT	7968	6	0
// OP_STORE_V	7943	4	0
// OP_CALL1	7640	0	0
// OP_NOT_F	1	0	7969
// OP_IFNOT	7969	2	0
// OP_RETURN	218	0	0
// OP_ADDRESS	28	181	7970
// OP_STOREP_ENT	7943	7970	0
// OP_LOAD_ENT	28	181	7971
// OP_LOAD_S	7971	129	7972
// OP_NE_S	7972	880	7973
// OP_IFNOT	7973	12	0
// OP_ADDRESS	28	181	7974
// OP_LOAD_ENT	28	181	7975
// OP_LOAD_ENT	7975	181	7976
// OP_STOREP_ENT	7976	7974	0
// OP_LOAD_ENT	28	181	7977
// OP_LOAD_S	7977	129	7978
// OP_NE_S	7978	880	7979
// OP_IFNOT	7979	4	0
// OP_ADDRESS	28	181	7980
// OP_STOREP_ENT	30	7980	0
// OP_RETURN	218	0	0
// OP_CALL0	7936	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () FindTarget = 
{
    local entity client;
    local float r;
    if((sight_entity_time >= (time - 0.1)) && (!(self.spawnflags & 3)))
    {
        client = sight_entity;
        
        if(client.enemy == self.enemy)
        {
            return;
        }
        
    }
    else
    {
        client = checkclient();
        
        if(!client)
        {
            return FALSE;
        }
        
    }
    
    
    if(client == self.enemy)
    {
        return FALSE;
    }
    
    
    if(client.flags & FL_NOTARGET)
    {
        return FALSE;
    }
    
    
    if(client.items & IT_INVISIBILITY)
    {
        return FALSE;
    }
    
    r = range(client);
    
    if(r == RANGE_FAR)
    {
        return FALSE;
    }
    
    
    if(!visible(client))
    {
        return FALSE;
    }
    
    if(r == RANGE_NEAR)
    {
        
        if((client.show_hostile < time) && !infront(client))
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if(r == RANGE_MID)
        {
            
            if(!infront(client))
            {
                return FALSE;
            }
            
        }
        
    }
    
    self.enemy = client;
    
    if(self.enemy.classname != "player")
    {
        self.enemy = self.enemy.enemy;
        
        if(self.enemy.classname != "player")
        {
            self.enemy = world;
            return FALSE;
        }
        
    }
    
    FoundTarget();
    return TRUE;
};

// ai_forward
// function begins at statement 9589, parm_start=7982
// OP_LOAD_F	28	119	7983
// OP_STORE_V	7983	4	0
// OP_STORE_V	7982	7	0
// OP_CALL2	491	0	0
// OP_DONE	0	0	0
void (float dist) ai_forward = 
{
    walkmove(self.angles_y, dist);
};

// ai_back
// function begins at statement 9594, parm_start=7985
// OP_LOAD_F	28	119	7986
// OP_ADD_F	7986	865	7987
// OP_STORE_V	7987	4	0
// OP_STORE_V	7985	7	0
// OP_CALL2	491	0	0
// OP_DONE	0	0	0
void (float dist) ai_back = 
{
    walkmove(self.angles_y + 180, dist);
};

// ai_pain
// function begins at statement 9600, parm_start=7989
// OP_STORE_V	7989	4	0
// OP_CALL1	7984	0	0
// OP_DONE	0	0	0
void (float dist) ai_pain = 
{
    ai_back(dist);
};

// ai_painforward
// function begins at statement 9603, parm_start=7991
// OP_LOAD_F	28	191	7992
// OP_STORE_V	7992	4	0
// OP_STORE_V	7991	7	0
// OP_CALL2	491	0	0
// OP_DONE	0	0	0
void (float dist) ai_painforward = 
{
    walkmove(self.ideal_yaw, dist);
};

// ai_walk
// function begins at statement 9608, parm_start=7994
// OP_STORE_F	7994	355	0
// OP_LOAD_S	28	129	7998
// OP_EQ_S	7998	7999	8000
// OP_IFNOT	8000	4	0
// OP_STORE_V	7994	4	0
// OP_CALL1	515	0	0
// OP_RETURN	0	0	0
// OP_CALL0	7942	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	7994	4	0
// OP_CALL1	515	0	0
// OP_DONE	0	0	0
void (float dist) ai_walk = 
{
    local vector mtemp;
    movedist = dist;
    
    if(self.classname == "monster_dragon")
    {
        movetogoal(dist);
        return;
    }
    
    
    if(FindTarget())
    {
        return;
    }
    
    movetogoal(dist);
};

// ai_stand
// function begins at statement 9621, parm_start=8002
// OP_CALL0	7942	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	431	8002
// OP_GT	31	8002	8003
// OP_IFNOT	8003	4	0
// OP_LOAD_FNC	28	371	8004
// OP_CALL0	8004	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ai_stand = 
{
    
    if(FindTarget())
    {
        return;
    }
    
    
    if(time > self.pausetime)
    {
        self.th_walk();
        return;
    }
    
};

// ai_turn
// function begins at statement 9631, parm_start=8006
// OP_CALL0	7942	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	505	0	0
// OP_DONE	0	0	0
void () ai_turn = 
{
    
    if(FindTarget())
    {
        return;
    }
    
    ChangeYaw();
};

// ChooseTurn
// function begins at statement 9636, parm_start=8006
// OP_LOAD_V	28	105	8015
// OP_SUB_V	8015	8006	8018
// OP_STORE_V	8018	8009	0
// OP_STORE_F	75	8012	0
// OP_SUB_F	817	74	8021
// OP_STORE_F	8021	8013	0
// OP_STORE_F	817	8014	0
// OP_MUL_V	8009	8012	8022
// OP_GT	8022	817	8023
// OP_IFNOT	8023	5	0
// OP_SUB_F	817	75	8024
// OP_STORE_F	8024	8009	0
// OP_STORE_F	74	8010	0
// OP_GOTO	4	0	0
// OP_STORE_F	75	8009	0
// OP_SUB_F	817	74	8025
// OP_STORE_F	8025	8010	0
// OP_STORE_F	817	8011	0
// OP_ADDRESS	28	191	8026
// OP_STORE_V	8009	4	0
// OP_CALL1	472	0	0
// OP_STOREP_F	1	8026	0
// OP_DONE	0	0	0
void (vector dest3) ChooseTurn = 
{
    local vector dir;
    local vector newdir;
    dir = self.origin - dest3;
    newdir_x = 0;
    newdir_y = 0 - trace_plane_normal_x;
    newdir_z = 0;
    if((dir * newdir) > 0)
    {
        dir_x = 0 - 0;
        dir_y = trace_plane_normal_x;
    }
    else
    {
        dir_x = 0;
        dir_y = 0 - trace_plane_normal_x;
    }
    
    dir_z = 0;
    self.ideal_yaw = vectoyaw(dir);
};

// FacingIdeal
// function begins at statement 9659, parm_start=8028
// OP_LOAD_F	28	119	8029
// OP_LOAD_F	28	191	8030
// OP_SUB_F	8029	8030	8031
// OP_STORE_V	8031	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	8028	0
// OP_GT	8028	2558	8032
// OP_LT	8028	8033	8034
// OP_AND	8032	8034	8035
// OP_IFNOT	8035	2	0
// OP_RETURN	218	0	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float () FacingIdeal = 
{
    local float delta;
    delta = anglemod(self.angles_y - self.ideal_yaw);
    
    if((delta > 45) && (delta < 315))
    {
        return FALSE;
    }
    
    return TRUE;
};

// CheckAnyAttack
// function begins at statement 9672, parm_start=8037
// OP_NOT_F	7591	0	8037
// OP_IFNOT	8037	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7620	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
void () CheckAnyAttack = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    return CheckAttack();
};

// ai_run_melee
// function begins at statement 9678, parm_start=8039
// OP_ADDRESS	28	191	8039
// OP_STOREP_F	7594	8039	0
// OP_CALL0	505	0	0
// OP_CALL0	8027	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	374	8040
// OP_CALL0	8040	0	0
// OP_ADDRESS	28	381	8041
// OP_STOREP_F	382	8041	0
// OP_DONE	0	0	0
void () ai_run_melee = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.th_melee();
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_missile
// function begins at statement 9688, parm_start=8043
// OP_ADDRESS	28	191	8043
// OP_STOREP_F	7594	8043	0
// OP_CALL0	505	0	0
// OP_CALL0	8027	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	373	8044
// OP_CALL0	8044	0	0
// OP_ADDRESS	28	381	8045
// OP_STOREP_F	382	8045	0
// OP_DONE	0	0	0
void () ai_run_missile = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.th_missile();
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_slide
// function begins at statement 9698, parm_start=8047
// OP_ADDRESS	28	191	8048
// OP_STOREP_F	7594	8048	0
// OP_CALL0	505	0	0
// OP_LOAD_F	28	379	8049
// OP_IFNOT	8049	3	0
// OP_STORE_F	7023	8047	0
// OP_GOTO	2	0	0
// OP_STORE_F	8050	8047	0
// OP_LOAD_F	28	191	8051
// OP_ADD_F	8051	8047	8052
// OP_STORE_V	8052	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	491	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	8053
// OP_LOAD_F	28	379	8054
// OP_SUB_F	819	8054	8055
// OP_STOREP_F	8055	8053	0
// OP_LOAD_F	28	191	8056
// OP_SUB_F	8056	8047	8057
// OP_STORE_V	8057	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	491	0	0
// OP_DONE	0	0	0
void () ai_run_slide = 
{
    local float ofs;
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    if(self.lefty)
    {
        ofs = 90;
    }
    else
    {
        ofs = -90;
    }
    
    
    if(walkmove(self.ideal_yaw + ofs, movedist))
    {
        return;
    }
    
    self.lefty = 1 - self.lefty;
    walkmove(self.ideal_yaw - ofs, movedist);
};

// ai_run
// function begins at statement 9723, parm_start=8059
// OP_DONE	0	0	0
void (float dist) ai_run = 
{
    local vector delta;
    local float axis;
    local float direct;
    local float ang_rint;
    local float ang_floor;
    local float ang_ceil;
};

