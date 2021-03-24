/* TYPE: EV_POINTER */ ;
void() OgreGrenadeExplode;
// OgreGrenadeExplode
// function begins at statement 11931
// OP_LOAD_ENT	28	201	7622
// OP_STORE_V	28	4	0
// OP_STORE_V	7622	7	0
// OP_STORE_V	1733	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2616	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	7623
// OP_STORE_V	337	4	0
// OP_STORE_V	7623	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	7624
// OP_STORE_V	337	4	0
// OP_STORE_V	7624	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	7625
// OP_STORE_V	337	4	0
// OP_STORE_V	7625	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	113	7626
// OP_STOREP_V	286	7626	0
// OP_ADDRESS	28	146	7629
// OP_STOREP_FNC	517	7629	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2917	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	104	7630
// OP_STOREP_F	237	7630	0
// OP_CALL0	2905	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () OgreGrenadeExplode =
{
    T_RadiusDamage(self, self.owner, 40.000, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = VEC_ORIGIN;
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

/* TYPE: EV_POINTER */ ;
void() OgreGrenadeTouch;
// OgreGrenadeTouch
// function begins at statement 11972
// OP_LOAD_ENT	28	201	7632
// OP_EQ_E	29	7632	7633
// OP_IFNOT	7633	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	7634
// OP_EQ_F	7634	252	7635
// OP_IFNOT	7635	3	0
// OP_CALL0	7621	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2626	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	113	7636
// OP_EQ_V	7636	286	7639
// OP_IFNOT	7639	3	0
// OP_ADDRESS	28	121	7640
// OP_STOREP_V	286	7640	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () OgreGrenadeTouch =
{
    
    if(other == self.owner)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        OgreGrenadeExplode();
        return; /* TODO retvalue? */
    }
    
    sound(self, CHAN_VOICE, "weapons/bounce.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    
    if(self.velocity == VEC_ORIGIN)
    {
        self.avelocity = VEC_ORIGIN;
    }
    
};

/* TYPE: EV_POINTER */ ;
/* ERROR: NULL TYPE */ ;
/* ERROR: NULL TYPE */ ;
void() OgreFireGrenade;
// OgreFireGrenade
// function begins at statement 11993
// OP_ADDRESS	28	133	7646
// OP_LOAD_F	28	133	7647
// OP_BITOR	7647	334	7648
// OP_STOREP_F	7648	7646	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2625	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7644	0
// OP_ADDRESS	7644	201	7649
// OP_STOREP_ENT	28	7649	0
// OP_ADDRESS	7644	103	7650
// OP_STOREP_F	235	7650	0
// OP_ADDRESS	7644	104	7651
// OP_STOREP_F	239	7651	0
// OP_LOAD_V	28	117	7652
// OP_STORE_V	7652	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	7644	113	7655
// OP_LOAD_ENT	28	181	7658
// OP_LOAD_V	7658	105	7659
// OP_LOAD_V	28	105	7662
// OP_SUB_V	7659	7662	7665
// OP_STORE_V	7665	4	0
// OP_CALL1	454	0	0
// OP_STOREP_V	1	7655	0
// OP_ADDRESS	7644	113	7668
// OP_LOAD_V	7644	113	7671
// OP_MUL_VF	7671	1029	7674
// OP_STOREP_V	7674	7668	0
// OP_ADDRESS	7644	116	7677
// OP_STOREP_F	1965	7677	0
// OP_ADDRESS	7644	121	7678
// OP_STOREP_V	3186	7678	0
// OP_ADDRESS	7644	117	7681
// OP_LOAD_V	7644	113	7684
// OP_STORE_V	7684	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	7681	0
// OP_ADDRESS	7644	146	7687
// OP_STOREP_FNC	7631	7687	0
// OP_ADDRESS	7644	150	7688
// OP_ADD_F	31	3197	7689
// OP_STOREP_F	7689	7688	0
// OP_ADDRESS	7644	148	7690
// OP_STOREP_FNC	7621	7690	0
// OP_STORE_V	7644	4	0
// OP_STORE_V	3200	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	7644	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	7691
// OP_STORE_V	7644	4	0
// OP_STORE_V	7691	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () OgreFireGrenade =
{
    local entity missile;
    local entity mpuff;
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    makevectors(self.angles);
    missile.velocity = normalize(self.enemy.origin - self.origin);
    missile.velocity = missile.velocity * 600.000;
    missile.velocity_z = 200.000;
    missile.avelocity = '300.000 300.000 300.000';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = OgreGrenadeTouch;
    missile.nextthink = time + 2.500;
    missile.think = OgreGrenadeExplode;
    setmodel(missile, "progs/grenade.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, self.origin);
};

vector ;
void() chainsaw;
// chainsaw
// function begins at statement 12054
// OP_LOAD_ENT	28	181	7700
// OP_NOT_ENT	7700	0	7701
// OP_IFNOT	7701	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7702
// OP_STORE_V	7702	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	7703
// OP_IFNOT	7703	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	318	4	0
// OP_CALL1	857	0	0
// OP_LOAD_ENT	28	181	7704
// OP_LOAD_V	7704	105	7705
// OP_LOAD_V	28	105	7708
// OP_SUB_V	7705	7708	7711
// OP_STORE_V	7711	7696	0
// OP_STORE_V	7696	4	0
// OP_CALL1	457	0	0
// OP_GT	1	1884	7714
// OP_IFNOT	7714	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_V	1	7715	0
// OP_CALL0	452	0	0
// OP_ADD_F	7715	1	7718
// OP_CALL0	452	0	0
// OP_ADD_F	7718	1	7719
// OP_MUL_F	7719	6076	7720
// OP_STORE_F	7720	7699	0
// OP_LOAD_ENT	28	181	7721
// OP_STORE_V	7721	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	7699	13	0
// OP_CALL4	520	0	0
// OP_IFNOT	7695	23	0
// OP_LOAD_V	28	117	7722
// OP_STORE_V	7722	4	0
// OP_CALL1	447	0	0
// OP_EQ_F	7695	7368	7725
// OP_IFNOT	7725	11	0
// OP_LOAD_V	28	105	7726
// OP_MUL_VF	59	6078	7729
// OP_ADD_V	7726	7729	7732
// OP_CALL0	2628	0	0
// OP_MUL_F	1	1884	7735
// OP_MUL_FV	7735	65	7736
// OP_STORE_V	7732	4	0
// OP_STORE_V	7736	7	0
// OP_CALL2	2696	0	0
// OP_GOTO	8	0	0
// OP_LOAD_V	28	105	7739
// OP_MUL_VF	59	6078	7742
// OP_ADD_V	7739	7742	7745
// OP_MUL_FV	7695	65	7748
// OP_STORE_V	7745	4	0
// OP_STORE_V	7748	7	0
// OP_CALL2	2696	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% (float side) chainsaw =
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return; /* TODO retvalue? */
    }
    
    ai_charge(TE_LAVASPLASH);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 100.000)
    {
        return; /* TODO retvalue? */
    }
    
    random();
    random();
    ldmg = ((random() + random()) + random()) * SECRET_1ST_DOWN;
    T_Damage(self.enemy, self, self, ldmg);
    
    if(side)
    {
        makevectors(self.angles);
        if(side == SPAWNFLAG_SUPERSPIKE)
        {
            SpawnMeatSpray(self.origin + (v_forward * SECRET_YES_SHOOT), (crandom() * 100.000) * v_right);
        }
        else        
        {
            SpawnMeatSpray(self.origin + (v_forward * SECRET_YES_SHOOT), side * v_right);
        }
        
    }
    
};

vector ;
void() ogre_stand1;
// ogre_stand1
// function begins at statement 12115
// OP_STATE	337	7752	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 337 7752 0
    ai_stand();
};

void() ogre_stand2;
// ogre_stand2
// function begins at statement 12118
// OP_STATE	7368	7753	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7368 7753 0
    ai_stand();
};

void() ogre_stand3;
// ogre_stand3
// function begins at statement 12121
// OP_STATE	7369	7754	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7369 7754 0
    ai_stand();
};

void() ogre_stand4;
// ogre_stand4
// function begins at statement 12124
// OP_STATE	370	7755	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 370 7755 0
    ai_stand();
};

void() ogre_stand5;
// ogre_stand5
// function begins at statement 12127
// OP_STATE	6076	7756	0
// OP_CALL0	452	0	0
// OP_LT	1	836	7757
// OP_IFNOT	7757	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7758	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6076 7756 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_stand();
};

string IMMEDIATE = "ogre/ogidle.wav";
// ogre_stand6
// function begins at statement 12139
// OP_STATE	313	7759	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 313 7759 0
    ai_stand();
};

void() ogre_stand7;
// ogre_stand7
// function begins at statement 12142
// OP_STATE	314	7760	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 314 7760 0
    ai_stand();
};

void() ogre_stand8;
// ogre_stand8
// function begins at statement 12145
// OP_STATE	315	7761	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 315 7761 0
    ai_stand();
};

void() ogre_stand9;
// ogre_stand9
// function begins at statement 12148
// OP_STATE	6077	7751	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_stand9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6077 7751 0
    ai_stand();
};

void() ogre_walk1;
// ogre_walk1
// function begins at statement 12151
// OP_STATE	317	7763	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 317 7763 0
    ai_walk(AS_MELEE);
};

void() ogre_walk2;
// ogre_walk2
// function begins at statement 12155
// OP_STATE	318	7764	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 318 7764 0
    ai_walk(SPAWNFLAG_LASER);
};

void() ogre_walk3;
// ogre_walk3
// function begins at statement 12159
// OP_STATE	319	7765	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_CALL0	452	0	0
// OP_LT	1	836	7766
// OP_IFNOT	7766	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7758	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 319 7765 0
    ai_walk(SPAWNFLAG_LASER);
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
};

float ;
// ogre_walk4
// function begins at statement 12172
// OP_STATE	2250	7767	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2250 7767 0
    ai_walk(SPAWNFLAG_LASER);
};

void() ogre_walk5;
// ogre_walk5
// function begins at statement 12176
// OP_STATE	7768	7769	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7768 7769 0
    ai_walk(SPAWNFLAG_LASER);
};

void() ogre_walk6;
// ogre_walk6
// function begins at statement 12180
// OP_STATE	2901	7770	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_CALL0	452	0	0
// OP_LT	1	603	7771
// OP_IFNOT	7771	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1114	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2901 7770 0
    ai_walk(TE_LIGHTNING1);
    
    if(random() < 0.100)
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
};

float ;
// ogre_walk7
// function begins at statement 12193
// OP_STATE	1876	7772	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1876 7772 0
    ai_walk(AS_MELEE);
};

void() ogre_walk8;
// ogre_walk8
// function begins at statement 12197
// OP_STATE	6078	7773	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6078 7773 0
    ai_walk(SPAWNFLAG_LASER);
};

void() ogre_walk9;
// ogre_walk9
// function begins at statement 12201
// OP_STATE	4861	7774	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4861 7774 0
    ai_walk(AS_MELEE);
};

void() ogre_walk10;
// ogre_walk10
// function begins at statement 12205
// OP_STATE	3319	7775	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3319 7775 0
    ai_walk(SPAWNFLAG_SUPERSPIKE);
};

void() ogre_walk11;
// ogre_walk11
// function begins at statement 12209
// OP_STATE	7776	7777	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7776 7777 0
    ai_walk(SPAWNFLAG_LASER);
};

void() ogre_walk12;
// ogre_walk12
// function begins at statement 12213
// OP_STATE	894	7778	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 894 7778 0
    ai_walk(AS_MELEE);
};

void() ogre_walk13;
// ogre_walk13
// function begins at statement 12217
// OP_STATE	7779	7780	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7779 7780 0
    ai_walk(AS_MELEE);
};

void() ogre_walk14;
// ogre_walk14
// function begins at statement 12221
// OP_STATE	7781	7782	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7781 7782 0
    ai_walk(AS_MELEE);
};

void() ogre_walk15;
// ogre_walk15
// function begins at statement 12225
// OP_STATE	301	7783	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 301 7783 0
    ai_walk(AS_MELEE);
};

void() ogre_walk16;
// ogre_walk16
// function begins at statement 12229
// OP_STATE	4437	7762	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_walk16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4437 7762 0
    ai_walk(SECRET_1ST_DOWN);
};

void() ogre_run1;
// ogre_run1
// function begins at statement 12233
// OP_STATE	1890	7785	0
// OP_STORE_V	317	4	0
// OP_CALL1	1432	0	0
// OP_CALL0	452	0	0
// OP_LT	1	836	7786
// OP_IFNOT	7786	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7787	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1890 7785 0
    ai_run(TE_LIGHTNING3);
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
};

string IMMEDIATE = "ogre/ogidle2.wav";
// ogre_run2
// function begins at statement 12246
// OP_STATE	7788	7789	0
// OP_STORE_V	2250	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7788 7789 0
    ai_run(12.000);
};

void() ogre_run3;
// ogre_run3
// function begins at statement 12250
// OP_STATE	302	7790	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 302 7790 0
    ai_run(SECRET_NO_SHOOT);
};

void() ogre_run4;
// ogre_run4
// function begins at statement 12254
// OP_STATE	303	7791	0
// OP_STORE_V	7781	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 303 7791 0
    ai_run(22.000);
};

void() ogre_run5;
// ogre_run5
// function begins at statement 12258
// OP_STATE	5105	7792	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5105 7792 0
    ai_run(SECRET_YES_SHOOT);
};

void() ogre_run6;
// ogre_run6
// function begins at statement 12262
// OP_STATE	304	7793	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 304 7793 0
    ai_run(SECRET_1ST_DOWN);
};

void() ogre_run7;
// ogre_run7
// function begins at statement 12266
// OP_STATE	305	7794	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 305 7794 0
    ai_run(13.000);
};

void() ogre_run8;
// ogre_run8
// function begins at statement 12270
// OP_STATE	5674	7784	0
// OP_STORE_V	4437	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_run8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5674 7784 0
    ai_run(24.000);
};

// ogre_swing1
// function begins at statement 12274
// OP_STATE	307	7795	0
// OP_STORE_V	319	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	7796	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 307 7795 0
    ai_charge(TE_TELEPORT);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
};

string IMMEDIATE = "ogre/ogsawatk.wav";
// ogre_swing2
// function begins at statement 12284
// OP_STATE	5112	7797	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5112 7797 0
    ai_charge(SPAWNFLAG_SUPERSPIKE);
};

void() ogre_swing3;
// ogre_swing3
// function begins at statement 12288
// OP_STATE	3072	7798	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3072 7798 0
    ai_charge(SECRET_1ST_DOWN);
};

void() ogre_swing4;
// ogre_swing4
// function begins at statement 12292
// OP_STATE	5096	7799	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5096 7799 0
    ai_charge(13.000);
};

void() ogre_swing5;
// ogre_swing5
// function begins at statement 12296
// OP_STATE	5098	7800	0
// OP_STORE_V	317	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7801
// OP_LOAD_F	28	119	7802
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7803
// OP_ADD_F	7802	7803	7804
// OP_STOREP_F	7804	7801	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5098 7800 0
    ai_charge(TE_LIGHTNING3);
    chainsaw(MSG_BROADCAST);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing6
// function begins at statement 12308
// OP_STATE	5100	7805	0
// OP_STORE_V	1965	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7806
// OP_LOAD_F	28	119	7807
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7808
// OP_ADD_F	7807	7808	7809
// OP_STOREP_F	7809	7806	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5100 7805 0
    chainsaw(200.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing7
// function begins at statement 12318
// OP_STATE	5102	7810	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7811
// OP_LOAD_F	28	119	7812
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7813
// OP_ADD_F	7812	7813	7814
// OP_STOREP_F	7814	7811	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5102 7810 0
    chainsaw(MSG_BROADCAST);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing8
// function begins at statement 12328
// OP_STATE	1733	7815	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7816
// OP_LOAD_F	28	119	7817
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7818
// OP_ADD_F	7817	7818	7819
// OP_STOREP_F	7819	7816	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1733 7815 0
    chainsaw(MSG_BROADCAST);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing9
// function begins at statement 12338
// OP_STATE	5443	7820	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7821
// OP_LOAD_F	28	119	7822
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7823
// OP_ADD_F	7822	7823	7824
// OP_STOREP_F	7824	7821	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5443 7820 0
    chainsaw(MSG_BROADCAST);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing10
// function begins at statement 12348
// OP_STATE	5445	7825	0
// OP_STORE_V	5210	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7826
// OP_LOAD_F	28	119	7827
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7828
// OP_ADD_F	7827	7828	7829
// OP_STOREP_F	7829	7826	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5445 7825 0
    chainsaw(-200.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing11
// function begins at statement 12358
// OP_STATE	5447	7830	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	119	7831
// OP_LOAD_F	28	119	7832
// OP_CALL0	452	0	0
// OP_MUL_F	1	1890	7833
// OP_ADD_F	7832	7833	7834
// OP_STOREP_F	7834	7831	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5447 7830 0
    chainsaw(MSG_BROADCAST);
    self.angles_y = self.angles_y + (random() * 25.000);
};

float ;
// ogre_swing12
// function begins at statement 12368
// OP_STATE	5449	7835	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5449 7835 0
    ai_charge(AS_MELEE);
};

void() ogre_swing13;
// ogre_swing13
// function begins at statement 12372
// OP_STATE	1390	7836	0
// OP_STORE_V	6077	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1390 7836 0
    ai_charge(SECRET_NO_SHOOT);
};

void() ogre_swing14;
// ogre_swing14
// function begins at statement 12376
// OP_STATE	5452	7784	0
// OP_STORE_V	317	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_swing14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5452 7784 0
    ai_charge(TE_LIGHTNING3);
};

// ogre_smash1
// function begins at statement 12380
// OP_STATE	5454	7837	0
// OP_STORE_V	314	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	7796	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5454 7837 0
    ai_charge(TE_LIGHTNING2);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
};

void() ogre_smash2;
// ogre_smash2
// function begins at statement 12390
// OP_STATE	5456	7838	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5456 7838 0
    ai_charge(MSG_BROADCAST);
};

void() ogre_smash3;
// ogre_smash3
// function begins at statement 12394
// OP_STATE	5458	7839	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5458 7839 0
    ai_charge(MSG_BROADCAST);
};

void() ogre_smash4;
// ogre_smash4
// function begins at statement 12398
// OP_STATE	2227	7840	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2227 7840 0
    ai_charge(SPAWNFLAG_SUPERSPIKE);
};

void() ogre_smash5;
// ogre_smash5
// function begins at statement 12402
// OP_STATE	5351	7841	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5351 7841 0
    ai_charge(SECRET_1ST_DOWN);
};

void() ogre_smash6;
// ogre_smash6
// function begins at statement 12406
// OP_STATE	5353	7842	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5353 7842 0
    ai_charge(SECRET_1ST_DOWN);
    chainsaw(MSG_BROADCAST);
};

void() ogre_smash7;
// ogre_smash7
// function begins at statement 12412
// OP_STATE	5355	7843	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 7843 0
    ai_charge(SECRET_1ST_DOWN);
    chainsaw(MSG_BROADCAST);
};

void() ogre_smash8;
// ogre_smash8
// function begins at statement 12418
// OP_STATE	5357	7844	0
// OP_STORE_V	318	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5357 7844 0
    ai_charge(TE_LAVASPLASH);
    chainsaw(MSG_BROADCAST);
};

void() ogre_smash9;
// ogre_smash9
// function begins at statement 12424
// OP_STATE	5359	7845	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5359 7845 0
    ai_charge(13.000);
    chainsaw(MSG_BROADCAST);
};

void() ogre_smash10;
// ogre_smash10
// function begins at statement 12430
// OP_STATE	5361	7846	0
// OP_STORE_V	7368	4	0
// OP_CALL1	7694	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5361 7846 0
    chainsaw(SPAWNFLAG_SUPERSPIKE);
};

void() ogre_smash11;
// ogre_smash11
// function begins at statement 12434
// OP_STATE	5363	7847	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	7694	0	0
// OP_ADDRESS	28	150	7848
// OP_LOAD_F	28	150	7849
// OP_CALL0	452	0	0
// OP_MUL_F	1	836	7850
// OP_ADD_F	7849	7850	7851
// OP_STOREP_F	7851	7848	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5363 7847 0
    ai_charge(SPAWNFLAG_LASER);
    chainsaw(MSG_BROADCAST);
    self.nextthink = self.nextthink + (random() * 0.200);
};

float ;
// ogre_smash12
// function begins at statement 12446
// OP_STATE	5365	7852	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5365 7852 0
    ai_charge(MSG_BROADCAST);
};

void() ogre_smash13;
// ogre_smash13
// function begins at statement 12450
// OP_STATE	5367	7853	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5367 7853 0
    ai_charge(SECRET_1ST_DOWN);
};

void() ogre_smash14;
// ogre_smash14
// function begins at statement 12454
// OP_STATE	912	7784	0
// OP_STORE_V	2250	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_smash14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 912 7784 0
    ai_charge(12.000);
};

void() ogre_nail1;
// ogre_nail1
// function begins at statement 12458
// OP_STATE	5369	7855	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5369 7855 0
    ai_face();
};

void() ogre_nail2;
// ogre_nail2
// function begins at statement 12461
// OP_STATE	5371	7856	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 7856 0
    ai_face();
};

void() ogre_nail3;
// ogre_nail3
// function begins at statement 12464
// OP_STATE	5371	7857	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 7857 0
    ai_face();
};

void() ogre_nail4;
// ogre_nail4
// function begins at statement 12467
// OP_STATE	3872	7858	0
// OP_CALL0	758	0	0
// OP_CALL0	7643	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3872 7858 0
    ai_face();
    OgreFireGrenade();
};

void() ogre_nail5;
// ogre_nail5
// function begins at statement 12471
// OP_STATE	260	7859	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 260 7859 0
    ai_face();
};

void() ogre_nail6;
// ogre_nail6
// function begins at statement 12474
// OP_STATE	5375	7860	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5375 7860 0
    ai_face();
};

void() ogre_nail7;
// ogre_nail7
// function begins at statement 12477
// OP_STATE	5377	7784	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_nail7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5377 7784 0
    ai_face();
};

void() ogre_pain1;
// ogre_pain1
// function begins at statement 12480
// OP_STATE	5379	7862	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_pain1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 7862 0
};

void() ogre_pain2;
// ogre_pain2
// function begins at statement 12482
// OP_STATE	5381	7863	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_pain2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 7863 0
};

void() ogre_pain3;
// ogre_pain3
// function begins at statement 12484
// OP_STATE	5383	7864	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_pain3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5383 7864 0
};

void() ogre_pain4;
// ogre_pain4
// function begins at statement 12486
// OP_STATE	5384	7865	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_pain4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5384 7865 0
};

void() ogre_pain5;
// ogre_pain5
// function begins at statement 12488
// OP_STATE	5386	7784	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_pain5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5386 7784 0
};

void() ogre_painb1;
// ogre_painb1
// function begins at statement 12490
// OP_STATE	5388	7867	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5388 7867 0
};

void() ogre_painb2;
// ogre_painb2
// function begins at statement 12492
// OP_STATE	2739	7868	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2739 7868 0
};

void() ogre_painb3;
// ogre_painb3
// function begins at statement 12494
// OP_STATE	5391	7784	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5391 7784 0
};

void() ogre_painc1;
// ogre_painc1
// function begins at statement 12496
// OP_STATE	5393	7870	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5393 7870 0
};

void() ogre_painc2;
// ogre_painc2
// function begins at statement 12498
// OP_STATE	5395	7871	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5395 7871 0
};

void() ogre_painc3;
// ogre_painc3
// function begins at statement 12500
// OP_STATE	5397	7872	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5397 7872 0
};

void() ogre_painc4;
// ogre_painc4
// function begins at statement 12502
// OP_STATE	5399	7873	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5399 7873 0
};

void() ogre_painc5;
// ogre_painc5
// function begins at statement 12504
// OP_STATE	5401	7874	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5401 7874 0
};

void() ogre_painc6;
// ogre_painc6
// function begins at statement 12506
// OP_STATE	788	7784	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_painc6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 788 7784 0
};

void() ogre_paind1;
// ogre_paind1
// function begins at statement 12508
// OP_STATE	5404	7876	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5404 7876 0
};

void() ogre_paind2;
// ogre_paind2
// function begins at statement 12510
// OP_STATE	5406	7877	0
// OP_STORE_V	318	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5406 7877 0
    ai_pain(TE_LAVASPLASH);
};

void() ogre_paind3;
// ogre_paind3
// function begins at statement 12514
// OP_STATE	5408	7878	0
// OP_STORE_V	317	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5408 7878 0
    ai_pain(TE_LIGHTNING3);
};

void() ogre_paind4;
// ogre_paind4
// function begins at statement 12518
// OP_STATE	5410	7879	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5410 7879 0
    ai_pain(SECRET_1ST_DOWN);
};

void() ogre_paind5;
// ogre_paind5
// function begins at statement 12522
// OP_STATE	5411	7880	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5411 7880 0
};

void() ogre_paind6;
// ogre_paind6
// function begins at statement 12524
// OP_STATE	5413	7881	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5413 7881 0
};

void() ogre_paind7;
// ogre_paind7
// function begins at statement 12526
// OP_STATE	5415	7882	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5415 7882 0
};

void() ogre_paind8;
// ogre_paind8
// function begins at statement 12528
// OP_STATE	5417	7883	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5417 7883 0
};

void() ogre_paind9;
// ogre_paind9
// function begins at statement 12530
// OP_STATE	5419	7884	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5419 7884 0
};

void() ogre_paind10;
// ogre_paind10
// function begins at statement 12532
// OP_STATE	1423	7885	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1423 7885 0
};

void() ogre_paind11;
// ogre_paind11
// function begins at statement 12534
// OP_STATE	5422	7886	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5422 7886 0
};

void() ogre_paind12;
// ogre_paind12
// function begins at statement 12536
// OP_STATE	5424	7887	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5424 7887 0
};

void() ogre_paind13;
// ogre_paind13
// function begins at statement 12538
// OP_STATE	5426	7888	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5426 7888 0
};

void() ogre_paind14;
// ogre_paind14
// function begins at statement 12540
// OP_STATE	5427	7889	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5427 7889 0
};

void() ogre_paind15;
// ogre_paind15
// function begins at statement 12542
// OP_STATE	5429	7890	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5429 7890 0
};

void() ogre_paind16;
// ogre_paind16
// function begins at statement 12544
// OP_STATE	5431	7784	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paind16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5431 7784 0
};

void() ogre_paine1;
// ogre_paine1
// function begins at statement 12546
// OP_STATE	5433	7892	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5433 7892 0
};

void() ogre_paine2;
// ogre_paine2
// function begins at statement 12548
// OP_STATE	5435	7893	0
// OP_STORE_V	318	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5435 7893 0
    ai_pain(TE_LAVASPLASH);
};

void() ogre_paine3;
// ogre_paine3
// function begins at statement 12552
// OP_STATE	5437	7894	0
// OP_STORE_V	317	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5437 7894 0
    ai_pain(TE_LIGHTNING3);
};

void() ogre_paine4;
// ogre_paine4
// function begins at statement 12556
// OP_STATE	1884	7895	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1884 7895 0
    ai_pain(SECRET_1ST_DOWN);
};

void() ogre_paine5;
// ogre_paine5
// function begins at statement 12560
// OP_STATE	5440	7896	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5440 7896 0
};

void() ogre_paine6;
// ogre_paine6
// function begins at statement 12562
// OP_STATE	5442	7897	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5442 7897 0
};

void() ogre_paine7;
// ogre_paine7
// function begins at statement 12564
// OP_STATE	4971	7898	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4971 7898 0
};

void() ogre_paine8;
// ogre_paine8
// function begins at statement 12566
// OP_STATE	4986	7899	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4986 7899 0
};

void() ogre_paine9;
// ogre_paine9
// function begins at statement 12568
// OP_STATE	5000	7900	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5000 7900 0
};

void() ogre_paine10;
// ogre_paine10
// function begins at statement 12570
// OP_STATE	5015	7901	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5015 7901 0
};

void() ogre_paine11;
// ogre_paine11
// function begins at statement 12572
// OP_STATE	5029	7902	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5029 7902 0
};

void() ogre_paine12;
// ogre_paine12
// function begins at statement 12574
// OP_STATE	5035	7903	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5035 7903 0
};

void() ogre_paine13;
// ogre_paine13
// function begins at statement 12576
// OP_STATE	5038	7904	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5038 7904 0
};

void() ogre_paine14;
// ogre_paine14
// function begins at statement 12578
// OP_STATE	5041	7905	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5041 7905 0
};

void() ogre_paine15;
// ogre_paine15
// function begins at statement 12580
// OP_STATE	5044	7784	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_paine15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5044 7784 0
};

void() ogre_pain;
// ogre_pain
// function begins at statement 12582
// OP_LOAD_F	28	374	7910
// OP_GT	7910	31	7911
// OP_IFNOT	7911	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7912	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	7909	0
// OP_LT	7909	3461	7913
// OP_IFNOT	7913	6	0
// OP_CALL0	7861	0	0
// OP_ADDRESS	28	374	7914
// OP_ADD_F	31	7368	7915
// OP_STOREP_F	7915	7914	0
// OP_GOTO	26	0	0
// OP_LT	7909	1491	7916
// OP_IFNOT	7916	6	0
// OP_CALL0	7866	0	0
// OP_ADDRESS	28	374	7917
// OP_ADD_F	31	7368	7918
// OP_STOREP_F	7918	7917	0
// OP_GOTO	19	0	0
// OP_LT	7909	3464	7919
// OP_IFNOT	7919	6	0
// OP_CALL0	7869	0	0
// OP_ADDRESS	28	374	7920
// OP_ADD_F	31	7368	7921
// OP_STOREP_F	7921	7920	0
// OP_GOTO	12	0	0
// OP_LT	7909	7922	7923
// OP_IFNOT	7923	6	0
// OP_CALL0	7875	0	0
// OP_ADDRESS	28	374	7924
// OP_ADD_F	31	7369	7925
// OP_STOREP_F	7925	7924	0
// OP_GOTO	5	0	0
// OP_CALL0	7891	0	0
// OP_ADDRESS	28	374	7926
// OP_ADD_F	31	7369	7927
// OP_STOREP_F	7927	7926	0
// OP_DONE	0	0	0
%%RETURNTYPE%% (entity attacker, float damage) ogre_pain =
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return; /* TODO retvalue? */
    }
    
    sound(self, CHAN_VOICE, "ogre/ogpain1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    r = random();
    if(r < 0.250)
    {
        ogre_pain1();
        self.pain_finished = time + SPAWNFLAG_SUPERSPIKE;
    }
    else if(r < IMMEDIATE)
    {
        ogre_painb1();
        self.pain_finished = time + SPAWNFLAG_SUPERSPIKE;
    }
    else if(r < 0.750)
    {
        ogre_painc1();
        self.pain_finished = time + SPAWNFLAG_SUPERSPIKE;
    }
    else if(r < 0.880)
    {
        ogre_paind1();
        self.pain_finished = time + SPAWNFLAG_LASER;
    }
    else    
    {
        ogre_paine1();
        self.pain_finished = time + SPAWNFLAG_LASER;
    }
    
};

float ;
void() ogre_die1;
// ogre_die1
// function begins at statement 12627
// OP_STATE	5047	7929	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5047 7929 0
};

void() ogre_die2;
// ogre_die2
// function begins at statement 12629
// OP_STATE	4909	7930	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4909 7930 0
};

void() ogre_die3;
// ogre_die3
// function begins at statement 12631
// OP_STATE	4915	7931	0
// OP_ADDRESS	28	104	7932
// OP_STOREP_F	237	7932	0
// OP_ADDRESS	28	160	7933
// OP_STOREP_F	7369	7933	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4915 7931 0
    self.solid = SOLID_NOT;
    self.ammo_rockets = SPAWNFLAG_LASER;
    DropBackpack();
};

/* TYPE: EV_POINTER */ ;
// ogre_die4
// function begins at statement 12638
// OP_STATE	4918	7934	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4918 7934 0
};

void() ogre_die5;
// ogre_die5
// function begins at statement 12640
// OP_STATE	4921	7935	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4921 7935 0
};

void() ogre_die6;
// ogre_die6
// function begins at statement 12642
// OP_STATE	4924	7936	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4924 7936 0
};

void() ogre_die7;
// ogre_die7
// function begins at statement 12644
// OP_STATE	4927	7937	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4927 7937 0
};

void() ogre_die8;
// ogre_die8
// function begins at statement 12646
// OP_STATE	4929	7938	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4929 7938 0
};

void() ogre_die9;
// ogre_die9
// function begins at statement 12648
// OP_STATE	1164	7939	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1164 7939 0
};

void() ogre_die10;
// ogre_die10
// function begins at statement 12650
// OP_STATE	4934	7940	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4934 7940 0
};

void() ogre_die11;
// ogre_die11
// function begins at statement 12652
// OP_STATE	4937	7941	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4937 7941 0
};

void() ogre_die12;
// ogre_die12
// function begins at statement 12654
// OP_STATE	7942	7943	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7942 7943 0
};

void() ogre_die13;
// ogre_die13
// function begins at statement 12656
// OP_STATE	7944	7945	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7944 7945 0
};

void() ogre_die14;
// ogre_die14
// function begins at statement 12658
// OP_STATE	4939	7945	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4939 7945 0
};

void() ogre_bdie1;
// ogre_bdie1
// function begins at statement 12660
// OP_STATE	4942	7947	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4942 7947 0
};

void() ogre_bdie2;
// ogre_bdie2
// function begins at statement 12662
// OP_STATE	4945	7948	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4945 7948 0
    ai_forward(TE_LIGHTNING1);
};

void() ogre_bdie3;
// ogre_bdie3
// function begins at statement 12666
// OP_STATE	261	7949	0
// OP_ADDRESS	28	104	7950
// OP_STOREP_F	237	7950	0
// OP_ADDRESS	28	160	7951
// OP_STOREP_F	7369	7951	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 261 7949 0
    self.solid = SOLID_NOT;
    self.ammo_rockets = SPAWNFLAG_LASER;
    DropBackpack();
};

/* TYPE: EV_POINTER */ ;
// ogre_bdie4
// function begins at statement 12673
// OP_STATE	7952	7953	0
// OP_STORE_V	7368	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7952 7953 0
    ai_forward(SPAWNFLAG_SUPERSPIKE);
};

void() ogre_bdie5;
// ogre_bdie5
// function begins at statement 12677
// OP_STATE	7954	7955	0
// OP_STORE_V	370	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7954 7955 0
    ai_forward(AS_MELEE);
};

void() ogre_bdie6;
// ogre_bdie6
// function begins at statement 12681
// OP_STATE	4949	7956	0
// OP_STORE_V	315	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4949 7956 0
    ai_forward(TE_WIZSPIKE);
};

void() ogre_bdie7;
// ogre_bdie7
// function begins at statement 12685
// OP_STATE	4952	7957	0
// OP_STORE_V	1890	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4952 7957 0
    ai_forward(25.000);
};

void() ogre_bdie8;
// ogre_bdie8
// function begins at statement 12689
// OP_STATE	4955	7958	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4955 7958 0
};

void() ogre_bdie9;
// ogre_bdie9
// function begins at statement 12691
// OP_STATE	4958	7959	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4958 7959 0
};

void() ogre_bdie10;
// ogre_bdie10
// function begins at statement 12693
// OP_STATE	7960	7959	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_bdie10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7960 7959 0
};

float IMMEDIATE = 135.000;
void() ogre_die;
// ogre_die
// function begins at statement 12695
// OP_LOAD_F	28	152	7962
// OP_LT	7962	7963	7964
// OP_IFNOT	7964	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	7966
// OP_STORE_V	7965	4	0
// OP_STORE_V	7966	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	7967
// OP_STORE_V	3854	4	0
// OP_STORE_V	7967	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	7968
// OP_STORE_V	3854	4	0
// OP_STORE_V	7968	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	7969
// OP_STORE_V	3854	4	0
// OP_STORE_V	7969	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7970	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_LT	1	1491	7971
// OP_IFNOT	7971	3	0
// OP_CALL0	7928	0	0
// OP_GOTO	2	0	0
// OP_CALL0	7946	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_die =
{
    
    if(self.health < -80.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        ThrowHead(IMMEDIATE, self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return; /* TODO retvalue? */
    }
    
    sound(self, CHAN_VOICE, "ogre/ogdth.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(random() < IMMEDIATE)
    {
        ogre_die1();
    }
    else    
    {
        ogre_bdie1();
    }
    
};

float ;
void() ogre_melee;
// ogre_melee
// function begins at statement 12734
// OP_CALL0	452	0	0
// OP_GT	1	1491	7973
// OP_IFNOT	7973	3	0
// OP_CALL0	750	0	0
// OP_GOTO	2	0	0
// OP_CALL0	751	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ogre_melee =
{
    if(random() > IMMEDIATE)
    {
        ogre_smash1();
    }
    else    
    {
        ogre_swing1();
    }
    
};

float ;
void() monster_ogre;
// monster_ogre
// function begins at statement 12741
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	7975	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	7965	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	3200	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1114	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7970	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7758	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7787	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7912	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7796	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1238	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	7976
// OP_STOREP_F	240	7976	0
// OP_ADDRESS	28	103	7977
// OP_STOREP_F	229	7977	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7975	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	7978
// OP_STOREP_F	1965	7978	0
// OP_ADDRESS	28	356	7979
// OP_STOREP_FNC	7751	7979	0
// OP_ADDRESS	28	357	7980
// OP_STOREP_FNC	7762	7980	0
// OP_ADDRESS	28	358	7981
// OP_STOREP_FNC	7784	7981	0
// OP_ADDRESS	28	362	7982
// OP_STOREP_FNC	7961	7982	0
// OP_ADDRESS	28	360	7983
// OP_STOREP_FNC	7972	7983	0
// OP_ADDRESS	28	359	7984
// OP_STOREP_FNC	7854	7984	0
// OP_ADDRESS	28	361	7985
// OP_STOREP_FNC	7906	7985	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () monster_ogre =
{
    
    if(deathmatch)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    precache_model("progs/ogre.mdl");
    precache_model(IMMEDIATE);
    precache_model("progs/grenade.mdl");
    precache_sound("ogre/ogdrag.wav");
    precache_sound("ogre/ogdth.wav");
    precache_sound("ogre/ogidle.wav");
    precache_sound("ogre/ogidle2.wav");
    precache_sound("ogre/ogpain1.wav");
    precache_sound("ogre/ogsawatk.wav");
    precache_sound("ogre/ogwake.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/ogre.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 200.000;
    self.th_stand = ogre_stand1;
    self.th_walk = ogre_walk1;
    self.th_run = ogre_run1;
    self.th_die = ogre_die;
    self.th_melee = ogre_melee;
    self.th_missile = ogre_nail1;
    self.th_pain = ogre_pain;
    walkmonster_start();
};

/* TYPE: EV_POINTER */ ;
void() monster_ogre_marksman;
// monster_ogre_marksman
// function begins at statement 12794
// OP_CALL0	7974	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () monster_ogre_marksman =
{
    monster_ogre();
};

