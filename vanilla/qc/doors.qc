float DOOR_START_OPEN = 1.000;
float DOOR_DONT_LINK = 4.000;
float DOOR_GOLD_KEY = 8.000;
float DOOR_SILVER_KEY = 16.000;
float DOOR_TOGGLE = 32.000;
void () door_go_down;
void () door_go_up;
// door_blocked
// function begins at statement 8722, parm_start=5678
// OP_LOAD_F	28	420	5678
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5678	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	413	5679
// OP_GE	5679	337	5680
// OP_IFNOT	5680	7	0
// OP_LOAD_F	28	433	5681
// OP_EQ_F	5681	285	5682
// OP_IFNOT	5682	3	0
// OP_CALL0	5676	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5675	0	0
// OP_DONE	0	0	0
void () door_blocked =
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= MSG_BROADCAST)
    {
        if(self.state == STATE_DOWN)
        {
            door_go_up();
        }
        else
        {
            door_go_down();
        }
        
    }
    
};

// door_hit_top
// function begins at statement 8738, parm_start=5684
// OP_LOAD_S	28	209	5684
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5684	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	5685
// OP_STOREP_F	282	5685	0
// OP_LOAD_F	28	195	5686
// OP_BITAND	5686	5674	5687
// OP_IFNOT	5687	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	148	5688
// OP_STOREP_FNC	5675	5688	0
// OP_ADDRESS	28	150	5689
// OP_LOAD_F	28	102	5690
// OP_LOAD_F	28	413	5691
// OP_ADD_F	5690	5691	5692
// OP_STOREP_F	5692	5689	0
// OP_DONE	0	0	0
void () door_hit_top =
{
    sound(self, CHAN_VOICE, self.noise1, DOOR_START_OPEN, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        return;
    }
    
    self.think = door_go_down;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 8759, parm_start=5694
// OP_LOAD_S	28	209	5694
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5694	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	5695
// OP_STOREP_F	283	5695	0
// OP_DONE	0	0	0
void () door_hit_bottom =
{
    sound(self, CHAN_VOICE, self.noise1, DOOR_START_OPEN, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// door_go_down
// function begins at statement 8769, parm_start=5696
// OP_LOAD_S	28	210	5696
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5696	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	185	5697
// OP_IFNOT	5697	6	0
// OP_ADDRESS	28	163	5698
// OP_STOREP_F	251	5698	0
// OP_ADDRESS	28	152	5699
// OP_LOAD_F	28	185	5700
// OP_STOREP_F	5700	5699	0
// OP_ADDRESS	28	433	5701
// OP_STOREP_F	285	5701	0
// OP_LOAD_V	28	434	5702
// OP_LOAD_F	28	364	5705
// OP_STORE_V	5702	4	0
// OP_STORE_V	5705	7	0
// OP_STORE_V	5693	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () door_go_down =
{
    sound(self, CHAN_VOICE, self.noise2, DOOR_START_OPEN, ATTN_NORM);
    
    if(self.max_health)
    {
        self.takedamage = DAMAGE_YES;
        self.health = self.max_health;
    }
    
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, door_hit_bottom);
};

// door_go_up
// function begins at statement 8792, parm_start=5706
// OP_LOAD_F	28	433	5706
// OP_EQ_F	5706	284	5707
// OP_IFNOT	5707	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	433	5708
// OP_EQ_F	5708	282	5709
// OP_IFNOT	5709	7	0
// OP_ADDRESS	28	150	5710
// OP_LOAD_F	28	102	5711
// OP_LOAD_F	28	413	5712
// OP_ADD_F	5711	5712	5713
// OP_STOREP_F	5713	5710	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	210	5714
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5714	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	5715
// OP_STOREP_F	284	5715	0
// OP_LOAD_V	28	438	5716
// OP_LOAD_F	28	364	5719
// OP_STORE_V	5716	4	0
// OP_STORE_V	5719	7	0
// OP_STORE_V	5683	10	0
// OP_CALL3	512	0	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () door_go_up =
{
    
    if(self.state == STATE_UP)
    {
        return;
    }
    
    
    if(self.state == STATE_TOP)
    {
        self.nextthink = self.ltime + self.wait;
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise2, DOOR_START_OPEN, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, door_hit_top);
    SUB_UseTargets();
};

// door_fire
// function begins at statement 8822, parm_start=5721
// OP_LOAD_ENT	28	201	5723
// OP_NE_E	5723	28	5724
// OP_IFNOT	5724	3	0
// OP_STORE_V	5725	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	28	162	5726
// OP_IFNOT	5726	8	0
// OP_LOAD_S	28	416	5727
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	5727	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	206	5728
// OP_STOREP_S	343	5728	0
// OP_STORE_ENT	28	5721	0
// OP_LOAD_F	28	195	5729
// OP_BITAND	5729	5674	5730
// OP_IFNOT	5730	17	0
// OP_LOAD_F	28	433	5731
// OP_EQ_F	5731	284	5732
// OP_LOAD_F	28	433	5733
// OP_EQ_F	5733	282	5734
// OP_OR	5732	5734	5735
// OP_IFNOT	5735	11	0
// OP_STORE_ENT	28	5722	0
// OP_CALL0	5675	0	0
// OP_LOAD_ENT	28	181	5736
// OP_STORE_ENT	5736	28	0
// OP_NE_E	28	5722	5737
// OP_NE_E	28	30	5738
// OP_AND	5737	5738	5739
// OP_IF	5739	-6	0
// OP_STORE_ENT	5721	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	5722	0
// OP_CALL0	5676	0	0
// OP_LOAD_ENT	28	181	5740
// OP_STORE_ENT	5740	28	0
// OP_NE_E	28	5722	5741
// OP_NE_E	28	30	5742
// OP_AND	5741	5742	5743
// OP_IF	5743	-6	0
// OP_STORE_ENT	5721	28	0
// OP_DONE	0	0	0
void () door_fire =
{
    local entity oself;
    local entity starte;
    
    if(self.owner != self)
    {
        objerror("door_fire: self.owner != self");
    }
    
    
    if(self.items)
    {
        sound(self, CHAN_ITEM, self.noise4, DOOR_START_OPEN, ATTN_NORM);
    }
    
    self.message = string_null;
    oself = self;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        
        if((self.state == STATE_UP) || (self.state == STATE_TOP))
        {
            starte = self;
            do
            {
                door_go_down();
                self = self.enemy;
            } while ((self != starte) && (self != world));
            self = oself;
            return;
        }
        
    }
    
    starte = self;
    do
    {
        door_go_up();
        self = self.enemy;
    } while ((self != starte) && (self != world));
    self = oself;
};

// door_use
// function begins at statement 8868, parm_start=5745
// OP_ADDRESS	28	206	5746
// OP_STOREP_S	569	5746	0
// OP_LOAD_ENT	28	201	5747
// OP_ADDRESS	5747	206	5748
// OP_STOREP_S	569	5748	0
// OP_LOAD_ENT	28	181	5749
// OP_ADDRESS	5749	206	5750
// OP_STOREP_S	569	5750	0
// OP_STORE_ENT	28	5745	0
// OP_LOAD_ENT	28	201	5751
// OP_STORE_ENT	5751	28	0
// OP_CALL0	5720	0	0
// OP_STORE_ENT	5745	28	0
// OP_DONE	0	0	0
void () door_use =
{
    local entity oself;
    self.message = "";
    self.owner.message = "";
    self.enemy.message = "";
    oself = self;
    self = self.owner;
    door_fire();
    self = oself;
};

// door_trigger_touch
// function begins at statement 8882, parm_start=5753
// OP_LOAD_F	29	152	5753
// OP_LE	5753	337	5754
// OP_IFNOT	5754	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	5755
// OP_LT	31	5755	5756
// OP_IFNOT	5756	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	5757
// OP_ADD_F	31	5670	5758
// OP_STOREP_F	5758	5757	0
// OP_STORE_ENT	29	346	0
// OP_LOAD_ENT	28	201	5759
// OP_STORE_ENT	5759	28	0
// OP_CALL0	5744	0	0
// OP_DONE	0	0	0
void () door_trigger_touch =
{
    
    if(other.health <= MSG_BROADCAST)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + DOOR_START_OPEN;
    activator = other;
    self = self.owner;
    door_use();
};

// door_killed
// function begins at statement 8898, parm_start=5761
// OP_STORE_ENT	28	5761	0
// OP_LOAD_ENT	28	201	5762
// OP_STORE_ENT	5762	28	0
// OP_ADDRESS	28	152	5763
// OP_LOAD_F	28	185	5764
// OP_STOREP_F	5764	5763	0
// OP_ADDRESS	28	163	5765
// OP_STOREP_F	250	5765	0
// OP_CALL0	5744	0	0
// OP_STORE_ENT	5761	28	0
// OP_DONE	0	0	0
void () door_killed =
{
    local entity oself;
    oself = self;
    self = self.owner;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    door_use();
    self = oself;
};

// door_touch
// function begins at statement 8909, parm_start=5767
// OP_LOAD_S	29	129	5767
// OP_NE_S	5767	712	5768
// OP_IFNOT	5768	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	5769
// OP_LOAD_F	5769	373	5770
// OP_GT	5770	31	5771
// OP_IFNOT	5771	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	5772
// OP_ADDRESS	5772	373	5773
// OP_ADD_F	31	2257	5774
// OP_STOREP_F	5774	5773	0
// OP_LOAD_ENT	28	201	5775
// OP_LOAD_S	5775	206	5776
// OP_NE_S	5776	569	5777
// OP_IFNOT	5777	12	0
// OP_LOAD_ENT	28	201	5778
// OP_LOAD_S	5778	206	5779
// OP_STORE_V	29	4	0
// OP_STORE_V	5779	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	720	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	162	5780
// OP_NOT_F	5780	0	5781
// OP_IFNOT	5781	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	5782
// OP_LOAD_F	29	162	5783
// OP_BITAND	5782	5783	5784
// OP_LOAD_F	28	162	5785
// OP_NE_F	5784	5785	5786
// OP_IFNOT	5786	89	0
// OP_LOAD_ENT	28	201	5787
// OP_LOAD_F	5787	162	5788
// OP_EQ_F	5788	270	5789
// OP_IFNOT	5789	43	0
// OP_LOAD_F	30	352	5790
// OP_EQ_F	5790	2257	5791
// OP_IFNOT	5791	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5792	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5793
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5793	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	352	5794
// OP_EQ_F	5794	5670	5795
// OP_IFNOT	5795	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5796	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5797
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5797	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	352	5798
// OP_EQ_F	5798	337	5799
// OP_IFNOT	5799	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5800	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5801
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5801	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	30	352	5802
// OP_EQ_F	5802	2257	5803
// OP_IFNOT	5803	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5804	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5805
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5805	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	352	5806
// OP_EQ_F	5806	5670	5807
// OP_IFNOT	5807	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5808	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5809
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5809	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	352	5810
// OP_EQ_F	5810	337	5811
// OP_IFNOT	5811	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5812	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	211	5813
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	5813	10	0
// OP_STORE_V	5670	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	5814
// OP_LOAD_F	29	162	5815
// OP_LOAD_F	28	162	5816
// OP_SUB_F	5815	5816	5817
// OP_STOREP_F	5817	5814	0
// OP_ADDRESS	28	146	5818
// OP_STOREP_FNC	517	5818	0
// OP_LOAD_ENT	28	181	5819
// OP_IFNOT	5819	4	0
// OP_LOAD_ENT	28	181	5820
// OP_ADDRESS	5820	146	5821
// OP_STOREP_FNC	517	5821	0
// OP_CALL0	5744	0	0
// OP_DONE	0	0	0
void () door_touch =
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.owner.attack_finished > time)
    {
        return;
    }
    
    self.owner.attack_finished = time + WEAPON_ROCKET;
    
    if(self.owner.message != "")
    {
        centerprint(other, self.owner.message);
        sound(other, CHAN_VOICE, "misc/talk.wav", DOOR_START_OPEN, ATTN_NORM);
    }
    
    
    if(!self.items)
    {
        return;
    }
    
    
    if((self.items & other.items) != self.items)
    {
        if(self.owner.items == IT_KEY1)
        {
            if(world.worldtype == WEAPON_ROCKET)
            {
                centerprint(other, "You need the silver keycard");
                sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == DOOR_START_OPEN)
                {
                    centerprint(other, "You need the silver runekey");
                    sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == MSG_BROADCAST)
                    {
                        centerprint(other, "You need the silver key");
                        sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(world.worldtype == WEAPON_ROCKET)
            {
                centerprint(other, "You need the gold keycard");
                sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == DOOR_START_OPEN)
                {
                    centerprint(other, "You need the gold runekey");
                    sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == MSG_BROADCAST)
                    {
                        centerprint(other, "You need the gold key");
                        sound(self, CHAN_VOICE, self.noise3, DOOR_START_OPEN, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    other.items = other.items - self.items;
    self.touch = SUB_Null;
    
    if(self.enemy)
    {
        self.enemy.touch = SUB_Null;
    }
    
    door_use();
};

// spawn_field
// function begins at statement 9049, parm_start=5823
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5829	0
// OP_ADDRESS	5829	103	5836
// OP_STOREP_F	227	5836	0
// OP_ADDRESS	5829	104	5837
// OP_STOREP_F	238	5837	0
// OP_ADDRESS	5829	201	5838
// OP_STOREP_ENT	28	5838	0
// OP_ADDRESS	5829	146	5839
// OP_STOREP_FNC	5752	5839	0
// OP_STORE_V	5823	5830	0
// OP_STORE_V	5826	5833	0
// OP_SUB_V	5830	5840	5843
// OP_ADD_V	5833	5840	5846
// OP_STORE_V	5829	4	0
// OP_STORE_V	5843	7	0
// OP_STORE_V	5846	10	0
// OP_CALL3	450	0	0
// OP_RETURN	5829	0	0
// OP_DONE	0	0	0
entity (vector fmins, vector fmaxs) spawn_field =
{
    local entity trigger;
    local vector t1;
    local vector t2;
    trigger = spawn();
    trigger.movetype = MOVETYPE_NONE;
    trigger.solid = SOLID_TRIGGER;
    trigger.owner = self;
    trigger.touch = door_trigger_touch;
    t1 = fmins;
    t2 = fmaxs;
    setsize(trigger, t1 - '60.000 60.000 8.000', t2 + '60.000 60.000 8.000');
    return trigger;
};

// EntitiesTouching
// function begins at statement 9069, parm_start=5850
// OP_LOAD_F	5850	135	5852
// OP_LOAD_F	5851	139	5853
// OP_GT	5852	5853	5854
// OP_IFNOT	5854	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	5850	136	5855
// OP_LOAD_F	5851	140	5856
// OP_GT	5855	5856	5857
// OP_IFNOT	5857	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	5850	137	5858
// OP_LOAD_F	5851	141	5859
// OP_GT	5858	5859	5860
// OP_IFNOT	5860	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	5850	139	5861
// OP_LOAD_F	5851	135	5862
// OP_LT	5861	5862	5863
// OP_IFNOT	5863	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	5850	140	5864
// OP_LOAD_F	5851	136	5865
// OP_LT	5864	5865	5866
// OP_IFNOT	5866	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	5850	141	5867
// OP_LOAD_F	5851	137	5868
// OP_LT	5867	5868	5869
// OP_IFNOT	5869	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity e1, entity e2) EntitiesTouching =
{
    
    if(e1.mins_x > e2.maxs_x)
    {
        return FALSE;
    }
    
    
    if(e1.mins_y > e2.maxs_y)
    {
        return FALSE;
    }
    
    
    if(e1.mins_z > e2.maxs_z)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_x < e2.mins_x)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_y < e2.mins_y)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_z < e2.mins_z)
    {
        return FALSE;
    }
    
    return TRUE;
};

// LinkDoors
// function begins at statement 9101, parm_start=5871
// OP_LOAD_ENT	28	181	5879
// OP_IFNOT	5879	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	5880
// OP_BITAND	5880	5671	5881
// OP_IFNOT	5881	6	0
// OP_ADDRESS	28	201	5882
// OP_ADDRESS	28	181	5883
// OP_STOREP_ENT	28	5883	0
// OP_STOREP_ENT	28	5882	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	134	5884
// OP_STORE_V	5884	5873	0
// OP_LOAD_V	28	138	5887
// OP_STORE_V	5887	5876	0
// OP_STORE_ENT	28	5872	0
// OP_STORE_ENT	28	5871	0
// OP_ADDRESS	28	201	5890
// OP_STOREP_ENT	5872	5890	0
// OP_LOAD_F	28	152	5891
// OP_IFNOT	5891	4	0
// OP_ADDRESS	5872	152	5892
// OP_LOAD_F	28	152	5893
// OP_STOREP_F	5893	5892	0
// OP_LOAD_S	28	197	5894
// OP_IFNOT	5894	4	0
// OP_ADDRESS	5872	197	5895
// OP_LOAD_S	28	197	5896
// OP_STOREP_S	5896	5895	0
// OP_LOAD_S	28	206	5897
// OP_NE_S	5897	569	5898
// OP_IFNOT	5898	4	0
// OP_ADDRESS	5872	206	5899
// OP_LOAD_S	28	206	5900
// OP_STOREP_S	5900	5899	0
// OP_LOAD_S	28	129	5901
// OP_STORE_V	5871	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5901	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	5871	0
// OP_NOT_ENT	5871	0	5902
// OP_IFNOT	5902	21	0
// OP_ADDRESS	28	181	5903
// OP_STOREP_ENT	5872	5903	0
// OP_LOAD_ENT	28	201	5904
// OP_STORE_ENT	5904	28	0
// OP_LOAD_F	28	152	5905
// OP_IFNOT	5905	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	5906
// OP_IFNOT	5906	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	5907
// OP_IFNOT	5907	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	5908
// OP_ADDRESS	5908	415	5909
// OP_STORE_V	5873	4	0
// OP_STORE_V	5876	7	0
// OP_CALL2	5822	0	0
// OP_STOREP_ENT	1	5909	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5871	7	0
// OP_CALL2	5849	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	5871	181	5910
// OP_IFNOT	5910	3	0
// OP_STORE_V	5911	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	181	5912
// OP_STOREP_ENT	5871	5912	0
// OP_STORE_ENT	5871	28	0
// OP_LOAD_F	5871	135	5913
// OP_LT	5913	5873	5914
// OP_IFNOT	5914	3	0
// OP_LOAD_F	5871	135	5915
// OP_STORE_F	5915	5873	0
// OP_LOAD_F	5871	136	5916
// OP_LT	5916	5874	5917
// OP_IFNOT	5917	3	0
// OP_LOAD_F	5871	136	5918
// OP_STORE_F	5918	5874	0
// OP_LOAD_F	5871	137	5919
// OP_LT	5919	5875	5920
// OP_IFNOT	5920	3	0
// OP_LOAD_F	5871	137	5921
// OP_STORE_F	5921	5875	0
// OP_LOAD_F	5871	139	5922
// OP_GT	5922	5876	5923
// OP_IFNOT	5923	3	0
// OP_LOAD_F	5871	139	5924
// OP_STORE_F	5924	5876	0
// OP_LOAD_F	5871	140	5925
// OP_GT	5925	5877	5926
// OP_IFNOT	5926	3	0
// OP_LOAD_F	5871	140	5927
// OP_STORE_F	5927	5877	0
// OP_LOAD_F	5871	141	5928
// OP_GT	5928	5878	5929
// OP_IFNOT	5929	3	0
// OP_LOAD_F	5871	141	5930
// OP_STORE_F	5930	5878	0
// OP_IF	5670	-87	0
// OP_DONE	0	0	0
void () LinkDoors =
{
    local entity t;
    local entity starte;
    local vector cmins;
    local vector cmaxs;
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.spawnflags & DOOR_DONT_LINK)
    {
        self.enemy = self;
        self.owner = self;
        return;
    }
    
    cmins = self.mins;
    cmaxs = self.maxs;
    starte = self;
    t = self;
    do
    {
        self.owner = starte;
        
        if(self.health)
        {
            starte.health = self.health;
        }
        
        
        if(self.targetname)
        {
            starte.targetname = self.targetname;
        }
        
        
        if(self.message != "")
        {
            starte.message = self.message;
        }
        
        t = find(t, classname, self.classname);
        
        if(!t)
        {
            self.enemy = starte;
            self = self.owner;
            
            if(self.health)
            {
                return;
            }
            
            
            if(self.targetname)
            {
                return;
            }
            
            
            if(self.items)
            {
                return;
            }
            
            self.owner.trigger_field = spawn_field(cmins, cmaxs);
            return;
        }
        
        
        if(EntitiesTouching(self, t))
        {
            
            if(t.enemy)
            {
                objerror("cross connected doors");
            }
            
            self.enemy = t;
            self = t;
            
            if(t.mins_x < cmins_x)
            {
                cmins_x = t.mins_x;
            }
            
            
            if(t.mins_y < cmins_y)
            {
                cmins_y = t.mins_y;
            }
            
            
            if(t.mins_z < cmins_z)
            {
                cmins_z = t.mins_z;
            }
            
            
            if(t.maxs_x > cmaxs_x)
            {
                cmaxs_x = t.maxs_x;
            }
            
            
            if(t.maxs_y > cmaxs_y)
            {
                cmaxs_y = t.maxs_y;
            }
            
            
            if(t.maxs_z > cmaxs_z)
            {
                cmaxs_z = t.maxs_z;
            }
            
        }
        
    } while (DOOR_START_OPEN);
};

// func_door
// function begins at statement 9207, parm_start=5932
// OP_LOAD_F	30	352	5932
// OP_EQ_F	5932	337	5933
// OP_IFNOT	5933	10	0
// OP_STORE_V	5934	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5935	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	5936
// OP_STOREP_S	5934	5936	0
// OP_ADDRESS	28	416	5937
// OP_STOREP_S	5935	5937	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	352	5938
// OP_EQ_F	5938	5670	5939
// OP_IFNOT	5939	10	0
// OP_STORE_V	5940	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5941	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	5942
// OP_STOREP_S	5940	5942	0
// OP_ADDRESS	28	416	5943
// OP_STOREP_S	5941	5943	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	352	5944
// OP_EQ_F	5944	2257	5945
// OP_IFNOT	5945	10	0
// OP_STORE_V	5946	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5947	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	5948
// OP_STOREP_S	5946	5948	0
// OP_ADDRESS	28	416	5949
// OP_STOREP_S	5947	5949	0
// OP_GOTO	3	0	0
// OP_STORE_V	5950	4	0
// OP_CALL1	470	0	0
// OP_LOAD_F	28	207	5951
// OP_EQ_F	5951	337	5952
// OP_IFNOT	5952	9	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	5954
// OP_STOREP_S	5953	5954	0
// OP_ADDRESS	28	210	5955
// OP_STOREP_S	5953	5955	0
// OP_LOAD_F	28	207	5956
// OP_EQ_F	5956	5670	5957
// OP_IFNOT	5957	9	0
// OP_STORE_V	5958	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5959	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	5960
// OP_STOREP_S	5958	5960	0
// OP_ADDRESS	28	210	5961
// OP_STOREP_S	5959	5961	0
// OP_LOAD_F	28	207	5962
// OP_EQ_F	5962	2257	5963
// OP_IFNOT	5963	9	0
// OP_STORE_V	5964	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5965	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	5966
// OP_STOREP_S	5964	5966	0
// OP_ADDRESS	28	209	5967
// OP_STOREP_S	5965	5967	0
// OP_LOAD_F	28	207	5968
// OP_EQ_F	5968	370	5969
// OP_IFNOT	5969	9	0
// OP_STORE_V	5970	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5971	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	5972
// OP_STOREP_S	5970	5972	0
// OP_ADDRESS	28	209	5973
// OP_STOREP_S	5971	5973	0
// OP_LOAD_F	28	207	5974
// OP_EQ_F	5974	5671	5975
// OP_IFNOT	5975	9	0
// OP_STORE_V	5976	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5977	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	5978
// OP_STOREP_S	5977	5978	0
// OP_ADDRESS	28	210	5979
// OP_STOREP_S	5976	5979	0
// OP_CALL0	523	0	0
// OP_ADDRESS	28	185	5980
// OP_LOAD_F	28	152	5981
// OP_STOREP_F	5981	5980	0
// OP_ADDRESS	28	104	5982
// OP_STOREP_F	241	5982	0
// OP_ADDRESS	28	103	5983
// OP_STOREP_F	232	5983	0
// OP_LOAD_V	28	105	5984
// OP_STORE_V	28	4	0
// OP_STORE_V	5984	7	0
// OP_CALL2	448	0	0
// OP_LOAD_S	28	130	5987
// OP_STORE_V	28	4	0
// OP_STORE_V	5987	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	129	5988
// OP_STOREP_S	1687	5988	0
// OP_ADDRESS	28	149	5989
// OP_STOREP_FNC	5677	5989	0
// OP_ADDRESS	28	147	5990
// OP_STOREP_FNC	5744	5990	0
// OP_LOAD_F	28	195	5991
// OP_BITAND	5991	5673	5992
// OP_IFNOT	5992	3	0
// OP_ADDRESS	28	162	5993
// OP_STOREP_F	270	5993	0
// OP_LOAD_F	28	195	5994
// OP_BITAND	5994	5672	5995
// OP_IFNOT	5995	3	0
// OP_ADDRESS	28	162	5996
// OP_STOREP_F	271	5996	0
// OP_LOAD_F	28	364	5997
// OP_NOT_F	5997	0	5998
// OP_IFNOT	5998	3	0
// OP_ADDRESS	28	364	5999
// OP_STOREP_F	1884	5999	0
// OP_LOAD_F	28	413	6000
// OP_NOT_F	6000	0	6001
// OP_IFNOT	6001	3	0
// OP_ADDRESS	28	413	6002
// OP_STOREP_F	370	6002	0
// OP_LOAD_F	28	432	6003
// OP_NOT_F	6003	0	6004
// OP_IFNOT	6004	3	0
// OP_ADDRESS	28	432	6005
// OP_STOREP_F	5672	6005	0
// OP_LOAD_F	28	420	6006
// OP_NOT_F	6006	0	6007
// OP_IFNOT	6007	3	0
// OP_ADDRESS	28	420	6008
// OP_STOREP_F	2257	6008	0
// OP_ADDRESS	28	434	6009
// OP_LOAD_V	28	105	6012
// OP_STOREP_V	6012	6009	0
// OP_ADDRESS	28	438	6015
// OP_LOAD_V	28	434	6018
// OP_LOAD_V	28	202	6021
// OP_LOAD_V	28	202	6024
// OP_LOAD_V	28	142	6027
// OP_MUL_V	6024	6027	6030
// OP_STORE_V	6030	4	0
// OP_CALL1	485	0	0
// OP_LOAD_F	28	432	6031
// OP_SUB_F	1	6031	6032
// OP_MUL_VF	6021	6032	6033
// OP_ADD_V	6018	6033	6036
// OP_STOREP_V	6036	6015	0
// OP_LOAD_F	28	195	6039
// OP_BITAND	6039	5670	6040
// OP_IFNOT	6040	11	0
// OP_LOAD_V	28	438	6041
// OP_STORE_V	28	4	0
// OP_STORE_V	6041	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	438	6044
// OP_LOAD_V	28	434	6047
// OP_STOREP_V	6047	6044	0
// OP_ADDRESS	28	434	6050
// OP_LOAD_V	28	105	6053
// OP_STOREP_V	6053	6050	0
// OP_ADDRESS	28	433	6056
// OP_STOREP_F	283	6056	0
// OP_LOAD_F	28	152	6057
// OP_IFNOT	6057	5	0
// OP_ADDRESS	28	163	6058
// OP_STOREP_F	251	6058	0
// OP_ADDRESS	28	362	6059
// OP_STOREP_FNC	5760	6059	0
// OP_LOAD_F	28	162	6060
// OP_IFNOT	6060	3	0
// OP_ADDRESS	28	413	6061
// OP_STOREP_F	276	6061	0
// OP_ADDRESS	28	146	6062
// OP_STOREP_FNC	5766	6062	0
// OP_ADDRESS	28	148	6063
// OP_STOREP_FNC	5870	6063	0
// OP_ADDRESS	28	150	6064
// OP_LOAD_F	28	102	6065
// OP_ADD_F	6065	603	6066
// OP_STOREP_F	6066	6064	0
// OP_DONE	0	0	0
void () func_door =
{
    if(world.worldtype == MSG_BROADCAST)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == DOOR_START_OPEN)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == WEAPON_ROCKET)
            {
                precache_sound("doors/basetry.wav");
                precache_sound("doors/baseuse.wav");
                self.noise3 = "doors/basetry.wav";
                self.noise4 = "doors/baseuse.wav";
            }
            else
            {
                dprint("no worldtype set!\n");
            }
            
        }
        
    }
    
    
    if(self.sounds == MSG_BROADCAST)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == DOOR_START_OPEN)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == WEAPON_ROCKET)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == AS_MELEE)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == DOOR_DONT_LINK)
    {
        precache_sound("doors/ddoor1.wav");
        precache_sound("doors/ddoor2.wav");
        self.noise1 = "doors/ddoor2.wav";
        self.noise2 = "doors/ddoor1.wav";
    }
    
    SetMovedir();
    self.max_health = self.health;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    self.classname = "door";
    self.blocked = door_blocked;
    self.use = door_use;
    
    if(self.spawnflags & DOOR_SILVER_KEY)
    {
        self.items = IT_KEY1;
    }
    
    
    if(self.spawnflags & DOOR_GOLD_KEY)
    {
        self.items = IT_KEY2;
    }
    
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    
    if(!self.wait)
    {
        self.wait = AS_MELEE;
    }
    
    
    if(!self.lip)
    {
        self.lip = DOOR_GOLD_KEY;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = WEAPON_ROCKET;
    }
    
    self.pos1 = self.origin;
    fabs(self.movedir * self.size);
    self.pos2 = self.pos1 + (self.movedir * (EntitiesTouching(self, t) - self.lip));
    
    if(self.spawnflags & DOOR_START_OPEN)
    {
        setorigin(self, self.pos2);
        self.pos2 = self.pos1;
        self.pos1 = self.origin;
    }
    
    self.state = STATE_BOTTOM;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
        self.th_die = door_killed;
    }
    
    
    if(self.items)
    {
        self.wait = CONTENT_EMPTY;
    }
    
    self.touch = door_touch;
    self.think = LinkDoors;
    self.nextthink = self.ltime + 0.100;
};

void () fd_secret_move1;
void () fd_secret_move2;
void () fd_secret_move3;
void () fd_secret_move4;
void () fd_secret_move5;
void () fd_secret_move6;
void () fd_secret_done;
float SECRET_OPEN_ONCE = 1.000;
float SECRET_1ST_LEFT = 2.000;
float SECRET_1ST_DOWN = 4.000;
float SECRET_NO_SHOOT = 8.000;
float SECRET_YES_SHOOT = 16.000;
// fd_secret_use
// function begins at statement 9402, parm_start=6080
// OP_ADDRESS	28	152	6081
// OP_STOREP_F	3172	6081	0
// OP_LOAD_V	28	105	6082
// OP_LOAD_V	28	109	6085
// OP_NE_V	6082	6085	6088
// OP_IFNOT	6088	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	6089
// OP_STOREP_S	343	6089	0
// OP_CALL0	518	0	0
// OP_LOAD_F	28	195	6090
// OP_BITAND	6090	6077	6091
// OP_NOT_F	6091	0	6092
// OP_IFNOT	6092	5	0
// OP_ADDRESS	28	361	6093
// OP_STOREP_FNC	517	6093	0
// OP_ADDRESS	28	163	6094
// OP_STOREP_F	250	6094	0
// OP_ADDRESS	28	113	6095
// OP_STOREP_V	286	6095	0
// OP_LOAD_S	28	209	6098
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6098	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	150	6099
// OP_LOAD_F	28	102	6100
// OP_ADD_F	6100	603	6101
// OP_STOREP_F	6101	6099	0
// OP_LOAD_F	28	195	6102
// OP_BITAND	6102	6075	6103
// OP_SUB_F	6074	6103	6104
// OP_STORE_F	6104	6080	0
// OP_LOAD_V	28	395	6105
// OP_STORE_V	6105	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	400	6108
// OP_NOT_F	6108	0	6109
// OP_IFNOT	6109	17	0
// OP_LOAD_F	28	195	6110
// OP_BITAND	6110	6076	6111
// OP_IFNOT	6111	8	0
// OP_ADDRESS	28	400	6112
// OP_LOAD_V	28	142	6113
// OP_MUL_V	62	6113	6116
// OP_STORE_V	6116	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6112	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	400	6117
// OP_LOAD_V	28	142	6118
// OP_MUL_V	65	6118	6121
// OP_STORE_V	6121	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6117	0
// OP_LOAD_F	28	399	6122
// OP_NOT_F	6122	0	6123
// OP_IFNOT	6123	7	0
// OP_ADDRESS	28	399	6124
// OP_LOAD_V	28	142	6125
// OP_MUL_V	59	6125	6128
// OP_STORE_V	6128	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6124	0
// OP_LOAD_F	28	195	6129
// OP_BITAND	6129	6076	6130
// OP_IFNOT	6130	8	0
// OP_ADDRESS	28	405	6131
// OP_LOAD_V	28	105	6134
// OP_LOAD_F	28	400	6137
// OP_MUL_VF	62	6137	6138
// OP_SUB_V	6134	6138	6141
// OP_STOREP_V	6141	6131	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	405	6144
// OP_LOAD_V	28	105	6147
// OP_LOAD_F	28	400	6150
// OP_MUL_F	6150	6080	6151
// OP_MUL_VF	65	6151	6152
// OP_ADD_V	6147	6152	6155
// OP_STOREP_V	6155	6144	0
// OP_ADDRESS	28	409	6158
// OP_LOAD_V	28	405	6161
// OP_LOAD_F	28	399	6164
// OP_MUL_VF	59	6164	6165
// OP_ADD_V	6161	6165	6168
// OP_STOREP_V	6168	6158	0
// OP_LOAD_V	28	405	6171
// OP_LOAD_F	28	364	6174
// OP_STORE_V	6171	4	0
// OP_STORE_V	6174	7	0
// OP_STORE_V	6067	10	0
// OP_CALL3	512	0	0
// OP_LOAD_S	28	210	6175
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6175	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_use =
{
    local float temp;
    self.health = 10000.000;
    
    if(self.origin != self.oldorigin)
    {
        return;
    }
    
    self.message = string_null;
    SUB_UseTargets();
    
    if(!(self.spawnflags & SECRET_NO_SHOOT))
    {
        self.th_pain = SUB_Null;
        self.takedamage = DAMAGE_NO;
    }
    
    self.velocity = VEC_ORIGIN;
    sound(self, CHAN_VOICE, self.noise1, SECRET_OPEN_ONCE, ATTN_NORM);
    self.nextthink = self.ltime + 0.100;
    temp = SECRET_OPEN_ONCE - (self.spawnflags & SECRET_1ST_LEFT);
    makevectors(self.mangle);
    
    if(!self.t_width)
    {
        if(self.spawnflags & SECRET_1ST_DOWN)
        {
            self.t_width = fabs(v_up * self.size);
        }
        else
        {
            self.t_width = fabs(v_right * self.size);
        }
        
    }
    
    
    if(!self.t_length)
    {
        self.t_length = fabs(v_forward * self.size);
    }
    
    if(self.spawnflags & SECRET_1ST_DOWN)
    {
        self.dest1 = self.origin - (v_up * self.t_width);
    }
    else
    {
        self.dest1 = self.origin + (v_right * (self.t_width * temp));
    }
    
    self.dest2 = self.dest1 + (v_forward * self.t_length);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move1);
    sound(self, CHAN_VOICE, self.noise2, SECRET_OPEN_ONCE, ATTN_NORM);
};

// fd_secret_move1
// function begins at statement 9505, parm_start=6176
// OP_ADDRESS	28	150	6176
// OP_LOAD_F	28	102	6177
// OP_ADD_F	6177	6074	6178
// OP_STOREP_F	6178	6176	0
// OP_ADDRESS	28	148	6179
// OP_STOREP_FNC	6068	6179	0
// OP_LOAD_S	28	211	6180
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6180	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 =
{
    self.nextthink = self.ltime + SECRET_OPEN_ONCE;
    self.think = fd_secret_move2;
    sound(self, CHAN_VOICE, self.noise3, SECRET_OPEN_ONCE, ATTN_NORM);
};

// fd_secret_move2
// function begins at statement 9519, parm_start=6181
// OP_LOAD_S	28	210	6181
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6181	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	409	6182
// OP_LOAD_F	28	364	6185
// OP_STORE_V	6182	4	0
// OP_STORE_V	6185	7	0
// OP_STORE_V	6069	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move2 =
{
    sound(self, CHAN_VOICE, self.noise2, SECRET_OPEN_ONCE, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

// fd_secret_move3
// function begins at statement 9533, parm_start=6186
// OP_LOAD_S	28	211	6186
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6186	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	195	6187
// OP_BITAND	6187	6074	6188
// OP_NOT_F	6188	0	6189
// OP_IFNOT	6189	8	0
// OP_ADDRESS	28	150	6190
// OP_LOAD_F	28	102	6191
// OP_LOAD_F	28	413	6192
// OP_ADD_F	6191	6192	6193
// OP_STOREP_F	6193	6190	0
// OP_ADDRESS	28	148	6194
// OP_STOREP_FNC	6070	6194	0
// OP_DONE	0	0	0
void () fd_secret_move3 =
{
    sound(self, CHAN_VOICE, self.noise3, SECRET_OPEN_ONCE, ATTN_NORM);
    
    if(!(self.spawnflags & SECRET_OPEN_ONCE))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = fd_secret_move4;
    }
    
};

// fd_secret_move4
// function begins at statement 9552, parm_start=6195
// OP_LOAD_S	28	210	6195
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6195	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	405	6196
// OP_LOAD_F	28	364	6199
// OP_STORE_V	6196	4	0
// OP_STORE_V	6199	7	0
// OP_STORE_V	6071	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move4 =
{
    sound(self, CHAN_VOICE, self.noise2, SECRET_OPEN_ONCE, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

// fd_secret_move5
// function begins at statement 9566, parm_start=6200
// OP_ADDRESS	28	150	6200
// OP_LOAD_F	28	102	6201
// OP_ADD_F	6201	6074	6202
// OP_STOREP_F	6202	6200	0
// OP_ADDRESS	28	148	6203
// OP_STOREP_FNC	6072	6203	0
// OP_LOAD_S	28	211	6204
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6204	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 =
{
    self.nextthink = self.ltime + SECRET_OPEN_ONCE;
    self.think = fd_secret_move6;
    sound(self, CHAN_VOICE, self.noise3, SECRET_OPEN_ONCE, ATTN_NORM);
};

// fd_secret_move6
// function begins at statement 9580, parm_start=6205
// OP_LOAD_S	28	210	6205
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6205	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	109	6206
// OP_LOAD_F	28	364	6209
// OP_STORE_V	6206	4	0
// OP_STORE_V	6209	7	0
// OP_STORE_V	6073	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move6 =
{
    sound(self, CHAN_VOICE, self.noise2, SECRET_OPEN_ONCE, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

// fd_secret_done
// function begins at statement 9594, parm_start=6210
// OP_LOAD_S	28	197	6210
// OP_NOT_S	6210	0	6211
// OP_LOAD_F	28	195	6212
// OP_BITAND	6212	6078	6213
// OP_OR	6211	6213	6214
// OP_IFNOT	6214	7	0
// OP_ADDRESS	28	152	6215
// OP_STOREP_F	3172	6215	0
// OP_ADDRESS	28	163	6216
// OP_STOREP_F	251	6216	0
// OP_ADDRESS	28	361	6217
// OP_STOREP_FNC	6079	6217	0
// OP_LOAD_S	28	211	6218
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6218	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_done =
{
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    sound(self, CHAN_VOICE, self.noise3, SECRET_OPEN_ONCE, ATTN_NORM);
};

// secret_blocked
// function begins at statement 9614, parm_start=6220
// OP_LOAD_F	28	373	6220
// OP_LT	31	6220	6221
// OP_IFNOT	6221	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	6222
// OP_ADD_F	31	1491	6223
// OP_STOREP_F	6223	6222	0
// OP_LOAD_F	28	420	6224
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	6224	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void () secret_blocked =
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.500;
    T_Damage(other, self, self, self.dmg);
};

// secret_touch
// function begins at statement 9628, parm_start=6226
// OP_LOAD_S	29	129	6226
// OP_NE_S	6226	712	6227
// OP_IFNOT	6227	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	6228
// OP_GT	6228	31	6229
// OP_IFNOT	6229	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	6230
// OP_ADD_F	31	6075	6231
// OP_STOREP_F	6231	6230	0
// OP_LOAD_S	28	206	6232
// OP_IFNOT	6232	11	0
// OP_LOAD_S	28	206	6233
// OP_STORE_V	29	4	0
// OP_STORE_V	6233	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	720	10	0
// OP_STORE_V	6074	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () secret_touch =
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.attack_finished > time)
    {
        return;
    }
    
    self.attack_finished = time + SECRET_1ST_LEFT;
    
    if(self.message)
    {
        centerprint(other, self.message);
        sound(other, CHAN_BODY, "misc/talk.wav", SECRET_OPEN_ONCE, ATTN_NORM);
    }
    
};

// func_door_secret
// function begins at statement 9652, parm_start=6235
// OP_LOAD_F	28	207	6235
// OP_EQ_F	6235	337	6236
// OP_IFNOT	6236	3	0
// OP_ADDRESS	28	207	6237
// OP_STOREP_F	370	6237	0
// OP_LOAD_F	28	207	6238
// OP_EQ_F	6238	6074	6239
// OP_IFNOT	6239	13	0
// OP_STORE_V	6240	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6241	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	5958	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	6242
// OP_STOREP_S	6240	6242	0
// OP_ADDRESS	28	210	6243
// OP_STOREP_S	6241	6243	0
// OP_ADDRESS	28	211	6244
// OP_STOREP_S	5958	6244	0
// OP_LOAD_F	28	207	6245
// OP_EQ_F	6245	6075	6246
// OP_IFNOT	6246	11	0
// OP_STORE_V	6247	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6248	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6249
// OP_STOREP_S	6247	6249	0
// OP_ADDRESS	28	209	6250
// OP_STOREP_S	6248	6250	0
// OP_ADDRESS	28	211	6251
// OP_STOREP_S	6248	6251	0
// OP_LOAD_F	28	207	6252
// OP_EQ_F	6252	370	6253
// OP_IFNOT	6253	11	0
// OP_STORE_V	6254	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6255	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6256
// OP_STOREP_S	6254	6256	0
// OP_ADDRESS	28	209	6257
// OP_STOREP_S	6255	6257	0
// OP_ADDRESS	28	211	6258
// OP_STOREP_S	6255	6258	0
// OP_LOAD_F	28	420	6259
// OP_NOT_F	6259	0	6260
// OP_IFNOT	6260	3	0
// OP_ADDRESS	28	420	6261
// OP_STOREP_F	6075	6261	0
// OP_ADDRESS	28	395	6262
// OP_LOAD_V	28	117	6265
// OP_STOREP_V	6265	6262	0
// OP_ADDRESS	28	117	6268
// OP_STOREP_V	286	6268	0
// OP_ADDRESS	28	104	6271
// OP_STOREP_F	241	6271	0
// OP_ADDRESS	28	103	6272
// OP_STOREP_F	232	6272	0
// OP_ADDRESS	28	129	6273
// OP_STOREP_S	1687	6273	0
// OP_LOAD_S	28	130	6274
// OP_STORE_V	28	4	0
// OP_STORE_V	6274	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	105	6275
// OP_STORE_V	28	4	0
// OP_STORE_V	6275	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	146	6278
// OP_STOREP_FNC	6225	6278	0
// OP_ADDRESS	28	149	6279
// OP_STOREP_FNC	6219	6279	0
// OP_ADDRESS	28	364	6280
// OP_STOREP_F	2227	6280	0
// OP_ADDRESS	28	147	6281
// OP_STOREP_FNC	6079	6281	0
// OP_LOAD_S	28	197	6282
// OP_NOT_S	6282	0	6283
// OP_LOAD_F	28	195	6284
// OP_BITAND	6284	6078	6285
// OP_OR	6283	6285	6286
// OP_IFNOT	6286	9	0
// OP_ADDRESS	28	152	6287
// OP_STOREP_F	3172	6287	0
// OP_ADDRESS	28	163	6288
// OP_STOREP_F	251	6288	0
// OP_ADDRESS	28	361	6289
// OP_STOREP_FNC	6079	6289	0
// OP_ADDRESS	28	362	6290
// OP_STOREP_FNC	6079	6290	0
// OP_ADDRESS	28	109	6291
// OP_LOAD_V	28	105	6294
// OP_STOREP_V	6294	6291	0
// OP_LOAD_F	28	413	6297
// OP_NOT_F	6297	0	6298
// OP_IFNOT	6298	3	0
// OP_ADDRESS	28	413	6299
// OP_STOREP_F	313	6299	0
// OP_DONE	0	0	0
void () func_door_secret =
{
    
    if(self.sounds == MSG_BROADCAST)
    {
        self.sounds = AS_MELEE;
    }
    
    
    if(self.sounds == SECRET_OPEN_ONCE)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == SECRET_1ST_LEFT)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == AS_MELEE)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = SECRET_1ST_LEFT;
    }
    
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.classname = "door";
    setmodel(self, self.model);
    setorigin(self, self.origin);
    self.touch = secret_touch;
    self.blocked = secret_blocked;
    self.speed = 50.000;
    self.use = fd_secret_use;
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
        self.th_die = fd_secret_use;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = TE_LIGHTNING1;
    }
    
};

