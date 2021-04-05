void () AC_Explode;
// s_bexplode0
// function begins at statement 4528, parm_start=3798
// OP_STATE	619	3798	0
// OP_DONE	0	0	0
void () s_bexplode0 = [0, s_bexplode1]
{
};

// s_bexplode1
// function begins at statement 4530, parm_start=3799
// OP_STATE	677	3799	0
// OP_DONE	0	0	0
void () s_bexplode1 = [1, s_bexplode2]
{
};

// s_bexplode2
// function begins at statement 4532, parm_start=3800
// OP_STATE	806	3800	0
// OP_DONE	0	0	0
void () s_bexplode2 = [2, s_bexplode3]
{
};

// s_bexplode3
// function begins at statement 4534, parm_start=3801
// OP_STATE	788	3801	0
// OP_DONE	0	0	0
void () s_bexplode3 = [3, s_bexplode4]
{
};

// s_bexplode4
// function begins at statement 4536, parm_start=3802
// OP_STATE	808	3802	0
// OP_DONE	0	0	0
void () s_bexplode4 = [4, s_bexplode5]
{
};

// s_bexplode5
// function begins at statement 4538, parm_start=3803
// OP_STATE	813	568	0
// OP_DONE	0	0	0
void () s_bexplode5 = [5, SUB_Remove]
{
};

// BigExplosion
// function begins at statement 4540, parm_start=3804
// OP_ADDRESS	28	128	3804
// OP_STOREP_F	281	3804	0
// OP_ADDRESS	28	138	3805
// OP_STOREP_V	607	3805	0
// OP_ADDRESS	28	171	3808
// OP_STOREP_FNC	566	3808	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3809	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	3810
// OP_STOREP_F	291	3810	0
// OP_CALL0	2597	0	0
// OP_DONE	0	0	0
void () BigExplosion = 
{
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0.000 0.000 0.000';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_bigbom.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// WaterRadiusDamage
// function begins at statement 4553, parm_start=3812
// OP_LOAD_V	3812	130	3821
// OP_STORE_V	3821	4	0
// OP_ADD_F	3814	1155	3824
// OP_STORE_V	3824	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	3817	0
// OP_IFNOT	3817	54	0
// OP_NE_E	3817	3815	3825
// OP_IFNOT	3825	49	0
// OP_LOAD_F	3817	188	3826
// OP_IFNOT	3826	47	0
// OP_LOAD_V	3817	130	3827
// OP_LOAD_V	3817	159	3830
// OP_LOAD_V	3817	163	3833
// OP_ADD_V	3830	3833	3836
// OP_MUL_VF	3836	972	3839
// OP_ADD_V	3827	3839	3842
// OP_STORE_V	3842	3818	0
// OP_LOAD_V	3812	130	3845
// OP_SUB_V	3845	3818	3848
// OP_STORE_V	3848	4	0
// OP_CALL1	506	0	0
// OP_MUL_F	972	1	3851
// OP_STORE_F	3851	3816	0
// OP_LT	3816	619	3852
// OP_IFNOT	3852	2	0
// OP_STORE_F	619	3816	0
// OP_SUB_F	3814	3816	3853
// OP_STORE_F	3853	3816	0
// OP_EQ_E	3817	3813	3854
// OP_IFNOT	3854	3	0
// OP_MUL_F	3816	972	3855
// OP_STORE_F	3855	3816	0
// OP_GT	3816	619	3856
// OP_IFNOT	3856	23	0
// OP_STORE_V	3817	4	0
// OP_STORE_V	3812	7	0
// OP_CALL2	570	0	0
// OP_LOAD_F	3817	214	3857
// OP_GT	3857	619	3858
// OP_AND	1	3858	3859
// OP_IFNOT	3859	16	0
// OP_LOAD_S	3817	154	3860
// OP_EQ_S	3860	2358	3861
// OP_IFNOT	3861	8	0
// OP_STORE_V	3817	4	0
// OP_STORE_V	3812	7	0
// OP_STORE_V	3813	10	0
// OP_MUL_F	3816	972	3862
// OP_STORE_V	3862	13	0
// OP_CALL4	569	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	3817	4	0
// OP_STORE_V	3812	7	0
// OP_STORE_V	3813	10	0
// OP_STORE_V	3816	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	3817	189	3863
// OP_STORE_ENT	3863	3817	0
// OP_GOTO	-53	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) WaterRadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + 40);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                org = head.origin + ((head.mins + head.maxs) * 0.5);
                points = 0.5 * (vlen(inflictor.origin - org));
                
                if(points < 0)
                {
                    points = 0;
                }
                
                points = damage - points;
                
                if(head == attacker)
                {
                    points = points * 0.5;
                }
                
                
                if(points > 0)
                {
                    
                    if(CanDamage(head, inflictor) && (head.waterlevel > 0))
                    {
                        if(head.classname == "monster_shambler")
                        {
                            T_Damage(head, inflictor, attacker, points * 0.5);
                        }
                        else
                        {
                            T_Damage(head, inflictor, attacker, points);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};

// ACprojectile_expireboom
// function begins at statement 4614, parm_start=3865
// OP_ADDRESS	28	188	3865
// OP_STOREP_F	619	3865	0
// OP_ADDRESS	28	177	3866
// OP_STOREP_F	619	3866	0
// OP_LOAD_S	28	154	3867
// OP_EQ_S	3867	3868	3869
// OP_LOAD_ENT	28	226	3870
// OP_LOAD_S	3870	154	3871
// OP_EQ_S	3871	766	3872
// OP_AND	3869	3872	3873
// OP_IFNOT	3873	7	0
// OP_LOAD_ENT	28	226	3874
// OP_ADDRESS	3874	242	3875
// OP_LOAD_ENT	28	226	3876
// OP_LOAD_F	3876	242	3877
// OP_SUB_F	3877	677	3878
// OP_STOREP_F	3878	3875	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	3879
// OP_STORE_V	3879	7	0
// OP_LOAD_F	28	469	3880
// OP_STORE_V	3880	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	3881
// OP_STORE_V	3881	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	3882
// OP_STORE_V	3882	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	3883
// OP_STORE_V	3883	7	0
// OP_CALL2	546	0	0
// OP_LOAD_ENT	28	206	3884
// OP_LOAD_F	3884	188	3885
// OP_IFNOT	3885	8	0
// OP_LOAD_ENT	28	206	3886
// OP_ADDRESS	3886	239	3887
// OP_LOAD_ENT	28	206	3888
// OP_LOAD_F	3888	239	3889
// OP_LOAD_F	28	469	3890
// OP_SUB_F	3889	3890	3891
// OP_STOREP_F	3891	3887	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () ACprojectile_expireboom = 
{
    self.takedamage = 0;
    self.health = 0;
    
    if((self.classname == "mine") && (self.owner.classname == "player"))
    {
        self.owner.value = self.owner.value - 1;
    }
    
    T_RadiusDamage(self, self.owner, self.dmg, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    
    if(self.enemy.takedamage)
    {
        self.enemy.pdmg = self.enemy.pdmg - self.dmg;
    }
    
    BecomeExplosion();
};

// ACprojectile_touchboom
// function begins at statement 4668, parm_start=3893
// OP_LOAD_S	28	154	3896
// OP_NE_S	3896	3868	3897
// OP_IFNOT	3897	10	0
// OP_LOAD_ENT	28	226	3898
// OP_EQ_E	29	3898	3899
// OP_IFNOT	3899	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	226	3900
// OP_LOAD_ENT	28	226	3901
// OP_EQ_E	3900	3901	3902
// OP_IFNOT	3902	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	188	3903
// OP_STOREP_F	619	3903	0
// OP_ADDRESS	28	177	3904
// OP_STOREP_F	619	3904	0
// OP_LOAD_S	28	154	3905
// OP_EQ_S	3905	3868	3906
// OP_LOAD_ENT	28	226	3907
// OP_LOAD_S	3907	154	3908
// OP_EQ_S	3908	766	3909
// OP_AND	3906	3909	3910
// OP_IFNOT	3910	7	0
// OP_LOAD_ENT	28	226	3911
// OP_ADDRESS	3911	242	3912
// OP_LOAD_ENT	28	226	3913
// OP_LOAD_F	3913	242	3914
// OP_SUB_F	3914	677	3915
// OP_STOREP_F	3915	3912	0
// OP_LOAD_ENT	28	206	3916
// OP_LOAD_F	3916	188	3917
// OP_IFNOT	3917	8	0
// OP_LOAD_ENT	28	206	3918
// OP_ADDRESS	3918	239	3919
// OP_LOAD_ENT	28	206	3920
// OP_LOAD_F	3920	239	3921
// OP_LOAD_F	28	469	3922
// OP_SUB_F	3921	3922	3923
// OP_STOREP_F	3923	3919	0
// OP_LOAD_V	28	130	3924
// OP_STORE_V	3924	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	3927
// OP_IFNOT	3927	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	469	3928
// OP_STORE_F	3928	3893	0
// OP_LOAD_S	28	154	3929
// OP_NE_S	3929	3868	3930
// OP_IFNOT	3930	31	0
// OP_LOAD_F	29	177	3931
// OP_GT	3931	619	3932
// OP_IFNOT	3932	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	3933
// OP_STORE_V	3933	10	0
// OP_STORE_V	3893	13	0
// OP_CALL4	569	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	29	154	3934
// OP_EQ_S	3934	2100	3935
// OP_IFNOT	3935	11	0
// OP_ADDRESS	29	173	3936
// OP_LOAD_FNC	29	411	3937
// OP_STOREP_FNC	3937	3936	0
// OP_ADDRESS	29	175	3938
// OP_ADD_F	31	655	3939
// OP_STOREP_F	3939	3938	0
// OP_ADDRESS	29	188	3940
// OP_STOREP_F	304	3940	0
// OP_ADDRESS	29	129	3941
// OP_STOREP_F	291	3941	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	3942
// OP_STORE_V	3942	7	0
// OP_STORE_V	3893	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	2232	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	3943
// OP_STORE_V	3943	7	0
// OP_STORE_V	3893	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_ADDRESS	28	130	3944
// OP_LOAD_V	28	130	3947
// OP_LOAD_V	28	138	3950
// OP_STORE_V	3950	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	810	1	3953
// OP_SUB_V	3947	3953	3956
// OP_STOREP_V	3956	3944	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	3959
// OP_STORE_V	3959	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	3960
// OP_STORE_V	3960	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	3961
// OP_STORE_V	3961	7	0
// OP_CALL2	546	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () ACprojectile_touchboom = 
{
    local float damg;
    local float tmp;
    local string teststr;
    
    if(self.classname != "mine")
    {
        
        if(other == self.owner)
        {
            return;
        }
        
        
        if(other.owner == self.owner)
        {
            return;
        }
        
    }
    
    self.takedamage = 0;
    self.health = 0;
    
    if((self.classname == "mine") && (self.owner.classname == "player"))
    {
        self.owner.value = self.owner.value - 1;
    }
    
    
    if(self.enemy.takedamage)
    {
        self.enemy.pdmg = self.enemy.pdmg - self.dmg;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    damg = self.dmg;
    if(self.classname != "mine")
    {
        if(other.health > 0)
        {
            T_Damage(other, self, self.owner, damg);
        }
        else
        {
            
            if(other.classname == "monster_drone")
            {
                other.think = other.th_die;
                other.nextthink = time + 0.1;
                other.takedamage = DAMAGE_NO;
                other.solid = SOLID_NOT;
            }
            
        }
        
        T_RadiusDamage(self, self.owner, damg, other);
    }
    else
    {
        T_RadiusDamage(self, self.owner, damg, self);
    }
    
    self.origin = self.origin - (8 * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// ACsuperspike_touch
// function begins at statement 4784, parm_start=3963
// OP_LOAD_V	28	130	3964
// OP_STORE_V	3964	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	3967
// OP_IFNOT	3967	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	469	3968
// OP_STORE_F	3968	3963	0
// OP_LOAD_F	29	177	3969
// OP_GT	3969	619	3970
// OP_IFNOT	3970	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	3971
// OP_STORE_V	3971	10	0
// OP_STORE_V	3963	13	0
// OP_CALL4	569	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	3972
// OP_STORE_V	3972	7	0
// OP_STORE_V	3963	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	2232	0	0
// OP_ADDRESS	28	130	3973
// OP_LOAD_V	28	130	3976
// OP_LOAD_V	28	138	3979
// OP_STORE_V	3979	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	810	1	3982
// OP_SUB_V	3976	3982	3985
// OP_STOREP_V	3985	3973	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2371	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () ACsuperspike_touch = 
{
    local float damg;
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    damg = self.dmg;
    
    if(other.health > 0)
    {
        T_Damage(other, self, self.owner, damg);
    }
    
    T_RadiusDamage(self, self.owner, damg, other);
    self.origin = self.origin - (8 * normalize(self.velocity));
    sound(self, CHAN_WEAPON, "weapons/r_exp3.wav", 1, ATTN_NORM);
    BecomeExplosion();
};

// ACspike_touch
// function begins at statement 4825, parm_start=3989
// OP_LOAD_ENT	28	226	3989
// OP_EQ_E	29	3989	3990
// OP_LOAD_ENT	29	226	3991
// OP_LOAD_ENT	28	226	3992
// OP_EQ_E	3991	3992	3993
// OP_OR	3990	3993	3994
// OP_IFNOT	3994	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	129	3995
// OP_EQ_F	3995	292	3996
// OP_IFNOT	3996	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	3997
// OP_STORE_V	3997	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	4000
// OP_IFNOT	4000	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	188	4001
// OP_IFNOT	4001	10	0
// OP_STORE_V	2764	4	0
// OP_CALL1	2461	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	4002
// OP_STORE_V	4002	10	0
// OP_STORE_V	1145	13	0
// OP_CALL4	569	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	357	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	4003
// OP_STORE_V	4003	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	4004
// OP_STORE_V	4004	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	4005
// OP_STORE_V	4005	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () ACspike_touch = 
{
    
    if((other == self.owner) || (other.owner == self.owner))
    {
        return;
    }
    
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    if(other.takedamage)
    {
        spawn_touchblood(18);
        T_Damage(other, self, self.owner, 25);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_SPIKE);
        WriteCoord(MSG_BROADCAST, self.origin_x);
        WriteCoord(MSG_BROADCAST, self.origin_y);
        WriteCoord(MSG_BROADCAST, self.origin_z);
    }
    
    remove(self);
};

// AC_spike
// function begins at statement 4877, parm_start=4007
// OP_LOAD_ENT	28	206	4014
// OP_STORE_V	4014	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4015	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4016
// OP_NE_E	4013	4016	4017
// OP_IFNOT	4017	5	0
// OP_ADDRESS	394	226	4018
// OP_LOAD_ENT	28	206	4019
// OP_STOREP_ENT	4019	4018	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4020
// OP_STOREP_ENT	28	4020	0
// OP_ADDRESS	394	128	4021
// OP_STOREP_F	288	4021	0
// OP_ADDRESS	394	129	4022
// OP_STOREP_F	293	4022	0
// OP_ADDRESS	394	142	4023
// OP_STORE_V	4010	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4023	0
// OP_ADDRESS	394	171	4026
// OP_STOREP_FNC	3988	4026	0
// OP_ADDRESS	394	154	4027
// OP_STOREP_S	2719	4027	0
// OP_ADDRESS	394	173	4028
// OP_STOREP_FNC	568	4028	0
// OP_ADDRESS	394	175	4029
// OP_ADD_F	31	2571	4030
// OP_STOREP_F	4030	4029	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4031	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	335	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4007	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4032
// OP_MUL_VF	4010	4035	4036
// OP_STOREP_V	4036	4032	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_spike = 
{
    sound(self.enemy, CHAN_WEAPON, "autocann.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.angles = vectoangles(dir);
    newmis.touch = ACspike_touch;
    newmis.classname = "spike";
    newmis.think = SUB_Remove;
    newmis.nextthink = time + 0.7;
    setmodel(newmis, "progs/bullet.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = dir * 1500;
};

// AC_bullet
// function begins at statement 4926, parm_start=4040
// OP_LOAD_ENT	28	206	4047
// OP_STORE_V	4047	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4015	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4048
// OP_NE_E	4046	4048	4049
// OP_IFNOT	4049	5	0
// OP_ADDRESS	394	226	4050
// OP_LOAD_ENT	28	206	4051
// OP_STOREP_ENT	4051	4050	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4052
// OP_STOREP_ENT	28	4052	0
// OP_ADDRESS	394	128	4053
// OP_STOREP_F	288	4053	0
// OP_ADDRESS	394	129	4054
// OP_STOREP_F	293	4054	0
// OP_ADDRESS	394	142	4055
// OP_STORE_V	4043	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4055	0
// OP_ADDRESS	394	171	4058
// OP_STOREP_FNC	3988	4058	0
// OP_ADDRESS	394	154	4059
// OP_STOREP_S	2719	4059	0
// OP_ADDRESS	394	173	4060
// OP_STOREP_FNC	568	4060	0
// OP_ADDRESS	394	175	4061
// OP_ADD_F	31	2571	4062
// OP_STOREP_F	4062	4061	0
// OP_STORE_V	394	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	335	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4040	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4063
// OP_MUL_VF	4043	4035	4066
// OP_STOREP_V	4066	4063	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_bullet = 
{
    sound(self.enemy, CHAN_WEAPON, "autocann.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.angles = vectoangles(dir);
    newmis.touch = ACspike_touch;
    newmis.classname = "spike";
    newmis.think = SUB_Remove;
    newmis.nextthink = time + 0.7;
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = dir * 1500;
};

// AClaser_touch
// function begins at statement 4972, parm_start=4070
// OP_LOAD_ENT	28	226	4073
// OP_EQ_E	29	4073	4074
// OP_LOAD_ENT	29	226	4075
// OP_LOAD_ENT	28	226	4076
// OP_EQ_E	4075	4076	4077
// OP_OR	4074	4077	4078
// OP_IFNOT	4078	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	4079
// OP_STORE_V	4079	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	4082
// OP_IFNOT	4082	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4083	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	377	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	130	4084
// OP_LOAD_V	28	138	4087
// OP_STORE_V	4087	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	810	1	4090
// OP_SUB_V	4084	4090	4093
// OP_STORE_V	4093	4070	0
// OP_LOAD_F	29	177	4096
// OP_IFNOT	4096	14	0
// OP_STORE_V	4070	4	0
// OP_LOAD_V	28	138	4097
// OP_MUL_VF	4097	1349	4100
// OP_STORE_V	4100	7	0
// OP_STORE_V	1111	10	0
// OP_CALL3	2363	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	4103
// OP_STORE_V	4103	10	0
// OP_STORE_V	1111	13	0
// OP_CALL4	569	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	359	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	4070	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	4072	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () AClaser_touch = 
{
    local vector org;
    
    if((other == self.owner) || (other.owner == self.owner))
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", 1, ATTN_STATIC);
    org = self.origin - (8 * normalize(self.velocity));
    if(other.health)
    {
        SpawnBlood(org, self.velocity * 0.2, 20);
        T_Damage(other, self, self.owner, 20);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, 0);
    }
    
    remove(self);
};

// AC_laser
// function begins at statement 5034, parm_start=4105
// OP_LOAD_ENT	28	206	4112
// OP_STORE_V	4112	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4113	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4114
// OP_NE_E	4111	4114	4115
// OP_IFNOT	4115	5	0
// OP_ADDRESS	394	226	4116
// OP_LOAD_ENT	28	206	4117
// OP_STOREP_ENT	4117	4116	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4118
// OP_STOREP_ENT	28	4118	0
// OP_ADDRESS	394	128	4119
// OP_STOREP_F	284	4119	0
// OP_ADDRESS	394	129	4120
// OP_STOREP_F	293	4120	0
// OP_ADDRESS	394	158	4121
// OP_STOREP_F	385	4121	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4122	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	142	4123
// OP_STORE_V	4108	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4123	0
// OP_ADDRESS	394	171	4126
// OP_STOREP_FNC	4069	4126	0
// OP_ADDRESS	394	154	4127
// OP_STOREP_S	4128	4127	0
// OP_ADDRESS	394	173	4129
// OP_STOREP_FNC	568	4129	0
// OP_ADDRESS	394	175	4130
// OP_ADD_F	31	677	4131
// OP_STOREP_F	4131	4130	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4105	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4132
// OP_MUL_VF	4108	4035	4135
// OP_STOREP_V	4135	4132	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_laser = 
{
    sound(self.enemy, CHAN_WEAPON, "enforcer/enfire.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_FLY;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/laser.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.angles = vectoangles(dir);
    newmis.touch = AClaser_touch;
    newmis.classname = "laser";
    newmis.think = SUB_Remove;
    newmis.nextthink = time + 1;
    setorigin(newmis, org);
    newmis.velocity = dir * 1500;
};

// LaunchLaser
// function begins at statement 5085, parm_start=4139
// OP_LOAD_S	28	154	4145
// OP_EQ_S	4145	4146	4147
// OP_IFNOT	4147	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4113	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4142	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	4142	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	226	4148
// OP_STOREP_ENT	28	4148	0
// OP_ADDRESS	394	128	4149
// OP_STOREP_F	284	4149	0
// OP_ADDRESS	394	129	4150
// OP_STOREP_F	293	4150	0
// OP_ADDRESS	394	158	4151
// OP_STOREP_F	385	4151	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4122	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4139	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4152
// OP_MUL_VF	4142	4155	4156
// OP_STOREP_V	4156	4152	0
// OP_ADDRESS	394	142	4159
// OP_LOAD_V	394	138	4162
// OP_STORE_V	4162	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4159	0
// OP_ADDRESS	394	175	4165
// OP_ADD_F	31	813	4166
// OP_STOREP_F	4166	4165	0
// OP_ADDRESS	394	173	4167
// OP_STOREP_FNC	568	4167	0
// OP_ADDRESS	394	171	4168
// OP_STOREP_FNC	4069	4168	0
// OP_DONE	0	0	0
void (vector org, vector vec) LaunchLaser = 
{
    
    if(self.classname == "monster_enforcer")
    {
        sound(self, CHAN_WEAPON, "enforcer/enfire.wav", 1, ATTN_NORM);
    }
    
    vec = normalize(vec);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_FLY;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/laser.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(newmis, org);
    newmis.velocity = vec * 600;
    newmis.angles = vectoangles(newmis.velocity);
    newmis.nextthink = time + 5;
    newmis.think = SUB_Remove;
    newmis.touch = AClaser_touch;
};

// AC_rocket
// function begins at statement 5133, parm_start=4170
// OP_LOAD_ENT	28	206	4177
// OP_STORE_V	4177	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4178	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4179
// OP_NE_E	4176	4179	4180
// OP_IFNOT	4180	5	0
// OP_ADDRESS	394	226	4181
// OP_LOAD_ENT	28	206	4182
// OP_STOREP_ENT	4182	4181	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4183
// OP_STOREP_ENT	28	4183	0
// OP_ADDRESS	394	128	4184
// OP_STOREP_F	288	4184	0
// OP_ADDRESS	394	129	4185
// OP_STOREP_F	293	4185	0
// OP_ADDRESS	394	158	4186
// OP_STOREP_F	385	4186	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4187	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	142	4188
// OP_STORE_V	4173	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4188	0
// OP_ADDRESS	394	171	4191
// OP_STOREP_FNC	3892	4191	0
// OP_ADDRESS	394	469	4192
// OP_STOREP_F	1268	4192	0
// OP_ADDRESS	394	154	4193
// OP_STOREP_S	4194	4193	0
// OP_ADDRESS	394	173	4195
// OP_STOREP_FNC	3864	4195	0
// OP_ADDRESS	394	175	4196
// OP_ADD_F	31	677	4197
// OP_STOREP_F	4197	4196	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4170	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4198
// OP_MUL_VF	4173	1622	4201
// OP_STOREP_V	4201	4198	0
// OP_ADDRESS	28	266	4204
// OP_STOREP_ENT	394	4204	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_rocket = 
{
    sound(self.enemy, CHAN_WEAPON, "rocklnch.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/rocket1.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.angles = vectoangles(dir);
    newmis.touch = ACprojectile_touchboom;
    newmis.dmg = 90;
    newmis.classname = "missile";
    newmis.think = ACprojectile_expireboom;
    newmis.nextthink = time + 1;
    setorigin(newmis, org);
    newmis.velocity = dir * 1000;
    self.lastmiss = newmis;
};

// mine_boom
// function begins at statement 5188, parm_start=4206
// OP_ADDRESS	28	177	4206
// OP_STOREP_F	619	4206	0
// OP_ADDRESS	28	188	4207
// OP_STOREP_F	619	4207	0
// OP_ADDRESS	28	129	4208
// OP_STOREP_F	291	4208	0
// OP_ADDRESS	28	171	4209
// OP_STOREP_FNC	566	4209	0
// OP_ADDRESS	28	173	4210
// OP_STOREP_FNC	3864	4210	0
// OP_ADDRESS	28	175	4211
// OP_ADD_F	31	655	4212
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	4213
// OP_ADD_F	4212	4213	4214
// OP_STOREP_F	4214	4211	0
// OP_DONE	0	0	0
void () mine_boom = 
{
    self.health = 0;
    self.takedamage = 0;
    self.solid = SOLID_NOT;
    self.touch = SUB_Null;
    self.think = ACprojectile_expireboom;
    self.nextthink = (time + 0.1) + (random() * 0.5);
};

// mine_activated
// function begins at statement 5205, parm_start=4216
// OP_LOAD_F	28	422	4216
// OP_GT	31	4216	4217
// OP_IFNOT	4217	6	0
// OP_ADDRESS	28	173	4218
// OP_STOREP_FNC	3864	4218	0
// OP_ADDRESS	28	175	4219
// OP_STOREP_F	655	4219	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	4220
// OP_ADD_V	4220	582	4223
// OP_STORE_V	4223	4	0
// OP_LOAD_V	28	130	4226
// OP_ADD_V	4226	4229	4232
// OP_STORE_V	4232	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	4235
// OP_IFNOT	4235	6	0
// OP_ADDRESS	28	173	4236
// OP_STOREP_FNC	3864	4236	0
// OP_ADDRESS	28	175	4237
// OP_STOREP_F	655	4237	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	4238
// OP_STOREP_FNC	4215	4238	0
// OP_ADDRESS	28	175	4239
// OP_ADD_F	31	655	4240
// OP_STOREP_F	4240	4239	0
// OP_DONE	0	0	0
void () mine_activated = 
{
    
    if(time > self.attack_finished)
    {
        self.think = ACprojectile_expireboom;
        self.nextthink = 0.1;
        return;
    }
    
    traceline(self.origin + '0.000 0.000 1.000', self.origin + '0.000 0.000 24.000', FALSE, self);
    
    if(trace_fraction < 1)
    {
        self.think = ACprojectile_expireboom;
        self.nextthink = 0.1;
        return;
    }
    
    self.think = mine_activated;
    self.nextthink = time + 0.1;
};

// bomb_rotate
// function begins at statement 5235, parm_start=4242
// OP_ADDRESS	28	142	4242
// OP_LOAD_V	28	138	4245
// OP_STORE_V	4245	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4242	0
// OP_LOAD_S	28	154	4248
// OP_EQ_S	4248	3868	4249
// OP_IFNOT	4249	38	0
// OP_LOAD_F	28	207	4250
// OP_BITAND	4250	277	4251
// OP_IFNOT	4251	35	0
// OP_LOAD_ENT	28	176	4252
// OP_EQ_E	4252	30	4253
// OP_LOAD_ENT	28	176	4254
// OP_LOAD_F	4254	129	4255
// OP_EQ_F	4255	295	4256
// OP_OR	4253	4256	4257
// OP_IFNOT	4257	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4258	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	128	4261
// OP_STOREP_F	285	4261	0
// OP_ADDRESS	28	411	4262
// OP_STOREP_FNC	4205	4262	0
// OP_ADDRESS	28	142	4263
// OP_STOREP_V	607	4263	0
// OP_ADDRESS	28	177	4266
// OP_STOREP_F	677	4266	0
// OP_ADDRESS	28	188	4267
// OP_STOREP_F	305	4267	0
// OP_ADDRESS	28	171	4268
// OP_STOREP_FNC	3892	4268	0
// OP_ADDRESS	28	173	4269
// OP_STOREP_FNC	4215	4269	0
// OP_ADDRESS	28	175	4270
// OP_ADD_F	31	655	4271
// OP_STOREP_F	4271	4270	0
// OP_RETURN	0	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	207	4272
// OP_LOAD_F	28	207	4273
// OP_SUB_F	4273	277	4274
// OP_STOREP_F	4274	4272	0
// OP_ADDRESS	28	173	4275
// OP_STOREP_FNC	4241	4275	0
// OP_ADDRESS	28	175	4276
// OP_ADD_F	31	655	4277
// OP_STOREP_F	4277	4276	0
// OP_LOAD_F	28	422	4278
// OP_GT	31	4278	4279
// OP_IFNOT	4279	3	0
// OP_ADDRESS	28	173	4280
// OP_STOREP_FNC	3864	4280	0
// OP_DONE	0	0	0
void () bomb_rotate = 
{
    self.angles = vectoangles(self.velocity);
    
    if(self.classname == "mine")
    {
        
        if(self.flags & FL_ONGROUND)
        {
            if((self.groundentity == world) || (self.groundentity.solid == SOLID_BSP))
            {
                setsize(self, '-8.000 -8.000 0.000', '8.000 8.000 8.000');
                self.movetype = MOVETYPE_TOSS;
                self.th_die = mine_boom;
                self.angles = '0.000 0.000 0.000';
                self.health = 1;
                self.takedamage = DAMAGE_YES;
                self.touch = ACprojectile_touchboom;
                self.think = mine_activated;
                self.nextthink = time + 0.1;
                return;
            }
            else
            {
                self.flags = self.flags - FL_ONGROUND;
            }
            
        }
        
    }
    
    self.think = bomb_rotate;
    self.nextthink = time + 0.1;
    
    if(time > self.attack_finished)
    {
        self.think = ACprojectile_expireboom;
    }
    
};

// AC_bomb
// function begins at statement 5291, parm_start=4282
// OP_LOAD_ENT	28	206	4289
// OP_STORE_V	4289	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4290
// OP_NE_E	4288	4290	4291
// OP_IFNOT	4291	5	0
// OP_ADDRESS	394	226	4292
// OP_LOAD_ENT	28	206	4293
// OP_STOREP_ENT	4293	4292	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4294
// OP_STOREP_ENT	28	4294	0
// OP_ADDRESS	394	128	4295
// OP_STOREP_F	289	4295	0
// OP_ADDRESS	394	129	4296
// OP_STOREP_F	293	4296	0
// OP_STORE_V	394	4	0
// OP_STORE_V	3604	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	142	4297
// OP_STORE_V	4285	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4297	0
// OP_ADDRESS	394	171	4300
// OP_STOREP_FNC	3892	4300	0
// OP_ADDRESS	394	469	4301
// OP_STOREP_F	3237	4301	0
// OP_ADDRESS	394	154	4302
// OP_STOREP_S	4303	4302	0
// OP_ADDRESS	394	173	4304
// OP_STOREP_FNC	4241	4304	0
// OP_ADDRESS	394	175	4305
// OP_ADD_F	31	655	4306
// OP_STOREP_F	4306	4305	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4282	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	4307
// OP_STOREP_V	4285	4307	0
// OP_ADDRESS	394	422	4310
// OP_ADD_F	31	827	4311
// OP_STOREP_F	4311	4310	0
// OP_ADDRESS	28	266	4312
// OP_STOREP_ENT	394	4312	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_bomb = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_BOUNCE;
    newmis.solid = SOLID_BBOX;
    setmodel(newmis, "progs/bomb.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.angles = vectoangles(dir);
    newmis.touch = ACprojectile_touchboom;
    newmis.dmg = 130;
    newmis.classname = "bomb";
    newmis.think = bomb_rotate;
    newmis.nextthink = time + 0.1;
    setorigin(newmis, org);
    newmis.velocity = dir;
    newmis.attack_finished = time + 10;
    self.lastmiss = newmis;
};

// AC_mine
// function begins at statement 5346, parm_start=4314
// OP_LOAD_ENT	28	206	4321
// OP_STORE_V	4321	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2381	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	226	4322
// OP_STOREP_ENT	28	4322	0
// OP_ADDRESS	394	128	4323
// OP_STOREP_F	289	4323	0
// OP_ADDRESS	394	129	4324
// OP_STOREP_F	294	4324	0
// OP_STORE_V	394	4	0
// OP_STORE_V	3622	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	142	4325
// OP_STORE_V	4317	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4325	0
// OP_ADDRESS	394	469	4328
// OP_STOREP_F	986	4328	0
// OP_ADDRESS	394	154	4329
// OP_STOREP_S	3868	4329	0
// OP_ADDRESS	394	173	4330
// OP_STOREP_FNC	4241	4330	0
// OP_ADDRESS	394	175	4331
// OP_ADD_F	31	655	4332
// OP_STOREP_F	4332	4331	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4314	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	422	4333
// OP_ADD_F	31	2627	4334
// OP_STOREP_F	4334	4333	0
// OP_ADDRESS	394	138	4335
// OP_STOREP_V	4317	4335	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_mine = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/bounce.wav", 1, ATTN_NORM);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_BOUNCE;
    newmis.solid = SOLID_SLIDEBOX;
    setmodel(newmis, "progs/mine.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.angles = vectoangles(dir);
    newmis.dmg = 200;
    newmis.classname = "mine";
    newmis.think = bomb_rotate;
    newmis.nextthink = time + 0.1;
    setorigin(newmis, org);
    newmis.attack_finished = time + 120;
    newmis.velocity = dir;
};

// paveway_fly
// function begins at statement 5390, parm_start=4339
// OP_LOAD_ENT	28	206	4345
// OP_IFNOT	4345	24	0
// OP_LOAD_ENT	28	206	4346
// OP_LOAD_V	4346	130	4347
// OP_LOAD_ENT	28	206	4350
// OP_LOAD_V	4350	159	4351
// OP_LOAD_ENT	28	206	4354
// OP_LOAD_V	4354	163	4355
// OP_ADD_V	4351	4355	4358
// OP_MUL_VF	4358	972	4361
// OP_ADD_V	4347	4361	4364
// OP_STORE_V	4364	4339	0
// OP_LOAD_V	28	130	4367
// OP_STORE_V	4367	4	0
// OP_STORE_V	4339	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_NE_F	70	677	4370
// OP_IFNOT	4370	4	0
// OP_ADDRESS	28	206	4371
// OP_STOREP_ENT	30	4371	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	227	4372
// OP_STOREP_V	4339	4372	0
// OP_LOAD_V	28	227	4375
// OP_LOAD_V	28	130	4378
// OP_SUB_V	4375	4378	4381
// OP_STORE_V	4381	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	4339	0
// OP_ADD_F	4339	806	4384
// OP_STORE_F	4384	4339	0
// OP_LOAD_V	28	142	4385
// OP_SUB_V	4339	4385	4388
// OP_STORE_V	4388	4342	0
// OP_STORE_V	4342	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	4342	0
// OP_GT	4342	1827	4391
// OP_IFNOT	4391	3	0
// OP_SUB_F	4342	1459	4392
// OP_STORE_F	4392	4342	0
// OP_STORE_V	4343	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	4343	0
// OP_GT	4343	1827	4393
// OP_IFNOT	4393	3	0
// OP_SUB_F	4343	1459	4394
// OP_STORE_F	4394	4343	0
// OP_LT	4342	4395	4396
// OP_IFNOT	4396	2	0
// OP_STORE_F	4395	4342	0
// OP_GT	4342	856	4397
// OP_IFNOT	4397	2	0
// OP_STORE_F	856	4342	0
// OP_LT	4343	4395	4398
// OP_IFNOT	4398	2	0
// OP_STORE_F	4395	4343	0
// OP_GT	4343	856	4399
// OP_IFNOT	4399	2	0
// OP_STORE_F	856	4343	0
// OP_LOAD_V	28	142	4400
// OP_STORE_V	4400	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	413	4403
// OP_LOAD_F	28	413	4404
// OP_SUB_F	4404	788	4405
// OP_MUL_F	61	827	4406
// OP_ADD_F	4405	4406	4407
// OP_STOREP_F	4407	4403	0
// OP_LOAD_F	28	413	4408
// OP_LT	4408	619	4409
// OP_IFNOT	4409	3	0
// OP_ADDRESS	28	413	4410
// OP_STOREP_F	619	4410	0
// OP_LOAD_F	28	413	4411
// OP_LT	4411	4412	4413
// OP_IFNOT	4413	4	0
// OP_LOAD_F	28	413	4414
// OP_SUB_F	4414	4412	4415
// OP_STORE_F	4415	4342	0
// OP_ADDRESS	28	146	4416
// OP_STOREP_V	4342	4416	0
// OP_SUB_F	619	61	4419
// OP_STORE_F	4419	61	0
// OP_ADDRESS	28	138	4420
// OP_LOAD_F	28	413	4423
// OP_MUL_FV	4423	59	4424
// OP_STOREP_V	4424	4420	0
// OP_ADDRESS	28	173	4427
// OP_STOREP_FNC	4338	4427	0
// OP_ADDRESS	28	175	4428
// OP_ADD_F	31	655	4429
// OP_STOREP_F	4429	4428	0
// OP_DONE	0	0	0
void () paveway_fly = 
{
    local vector v0;
    local vector v1;
    
    if(self.enemy)
    {
        v0 = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5);
        traceline(self.origin, v0, TRUE, world);
        if(trace_fraction != 1)
        {
            self.enemy = world;
        }
        else
        {
            self.movedir = v0;
        }
        
    }
    
    v0 = vectoangles(self.movedir - self.origin);
    v0_x = v0_x + 2;
    v1 = v0 - self.angles;
    v1_x = anglemod(v1_x);
    
    if(v1_x > 180)
    {
        v1_x = v1_x - 360;
    }
    
    v1_y = anglemod(0);
    
    if(0 > 180)
    {
        v1_y = 0 - 360;
    }
    
    
    if(v1_x < -50)
    {
        v1_x = -50;
    }
    
    
    if(v1_x > 50)
    {
        v1_x = 50;
    }
    
    
    if(0 < -50)
    {
        v1_y = -50;
    }
    
    
    if(0 > 50)
    {
        v1_y = 50;
    }
    
    makevectors(self.angles);
    self.speed = (self.speed - 3) + (0 * 10);
    
    if(self.speed < 0)
    {
        self.speed = 0;
    }
    
    
    if(self.speed < 300)
    {
        v1_x = self.speed - 300;
    }
    
    self.avelocity = v1;
    v_forward_z = 0 - 0;
    self.velocity = self.speed * v_forward;
    self.think = paveway_fly;
    self.nextthink = time + 0.1;
};

// AC_paveway
// function begins at statement 5486, parm_start=4431
// OP_LOAD_ENT	28	206	4441
// OP_STORE_V	4441	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4442
// OP_NE_E	4437	4442	4443
// OP_IFNOT	4443	5	0
// OP_ADDRESS	394	226	4444
// OP_LOAD_ENT	28	206	4445
// OP_STOREP_ENT	4445	4444	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4446
// OP_STOREP_ENT	28	4446	0
// OP_ADDRESS	394	206	4447
// OP_STOREP_ENT	4437	4447	0
// OP_LOAD_ENT	394	206	4448
// OP_EQ_E	4448	30	4449
// OP_IFNOT	4449	18	0
// OP_LOAD_V	28	200	4450
// OP_STORE_V	4450	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	4438	0
// OP_LOAD_ENT	28	412	4453
// OP_LOAD_V	4453	130	4454
// OP_STORE_V	4454	4	0
// OP_LOAD_ENT	28	412	4457
// OP_LOAD_V	4457	130	4458
// OP_MUL_VF	4438	1743	4461
// OP_ADD_V	4458	4461	4464
// OP_STORE_V	4464	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_ADDRESS	394	227	4467
// OP_STOREP_V	71	4467	0
// OP_ADDRESS	394	128	4470
// OP_STOREP_F	288	4470	0
// OP_ADDRESS	394	129	4471
// OP_STOREP_F	293	4471	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4472	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	4434	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	4438	0
// OP_ADDRESS	394	142	4473
// OP_STORE_V	4438	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4473	0
// OP_ADDRESS	394	171	4476
// OP_STOREP_FNC	3892	4476	0
// OP_ADDRESS	394	469	4477
// OP_STOREP_F	4478	4477	0
// OP_ADDRESS	394	154	4479
// OP_STOREP_S	4194	4479	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4431	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	4437	188	4480
// OP_IFNOT	4480	6	0
// OP_ADDRESS	4437	239	4481
// OP_LOAD_F	4437	239	4482
// OP_LOAD_F	394	469	4483
// OP_ADD_F	4482	4483	4484
// OP_STOREP_F	4484	4481	0
// OP_ADDRESS	28	266	4485
// OP_STOREP_ENT	394	4485	0
// OP_ADDRESS	394	413	4486
// OP_LOAD_ENT	28	206	4487
// OP_LOAD_F	4487	413	4488
// OP_STOREP_F	4488	4486	0
// OP_ADDRESS	394	422	4489
// OP_ADD_F	31	813	4490
// OP_STOREP_F	4490	4489	0
// OP_ADDRESS	394	138	4491
// OP_STOREP_V	4434	4491	0
// OP_ADDRESS	394	173	4494
// OP_STOREP_FNC	4338	4494	0
// OP_ADDRESS	394	175	4495
// OP_ADD_F	31	655	4496
// OP_STOREP_F	4496	4495	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_paveway = 
{
    local vector v0;
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.enemy = targ;
    
    if(newmis.enemy == world)
    {
        makevectors(self.v_angle);
        v0 = v_forward;
        traceline(self.oldenemy.origin, self.oldenemy.origin + (v0 * 10000), TRUE, world);
        newmis.movedir = trace_endpos;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    setmodel(newmis, "progs/pave.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    v0 = normalize(dir);
    newmis.angles = vectoangles(v0);
    newmis.touch = ACprojectile_touchboom;
    newmis.dmg = 220;
    newmis.classname = "missile";
    setorigin(newmis, org);
    
    if(targ.takedamage)
    {
        targ.pdmg = targ.pdmg + newmis.dmg;
    }
    
    self.lastmiss = newmis;
    newmis.speed = self.enemy.speed;
    newmis.attack_finished = time + 5;
    newmis.velocity = dir;
    newmis.think = paveway_fly;
    newmis.nextthink = time + 0.1;
};

// detpak_boom
// function begins at statement 5577, parm_start=4498
// OP_ADDRESS	28	188	4498
// OP_STOREP_F	619	4498	0
// OP_ADDRESS	28	177	4499
// OP_STOREP_F	619	4499	0
// OP_LOAD_F	28	185	4500
// OP_IFNOT	4500	5	0
// OP_ADDRESS	28	185	4501
// OP_LOAD_F	28	185	4502
// OP_SUB_F	4502	677	4503
// OP_STOREP_F	4503	4501	0
// OP_LOAD_ENT	28	226	4504
// OP_LOAD_S	4504	154	4505
// OP_EQ_S	4505	766	4506
// OP_LOAD_F	28	185	4507
// OP_EQ_F	4507	619	4508
// OP_AND	4506	4508	4509
// OP_IFNOT	4509	7	0
// OP_LOAD_ENT	28	226	4510
// OP_ADDRESS	4510	242	4511
// OP_LOAD_ENT	28	226	4512
// OP_LOAD_F	4512	242	4513
// OP_SUB_F	4513	677	4514
// OP_STOREP_F	4514	4511	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	4515
// OP_STORE_V	4515	7	0
// OP_LOAD_F	28	469	4516
// OP_STORE_V	4516	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	4517
// OP_STORE_V	4517	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	4518
// OP_STORE_V	4518	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	4519
// OP_STORE_V	4519	7	0
// OP_CALL2	546	0	0
// OP_LOAD_ENT	28	206	4520
// OP_LOAD_F	4520	188	4521
// OP_IFNOT	4521	8	0
// OP_LOAD_ENT	28	206	4522
// OP_ADDRESS	4522	239	4523
// OP_LOAD_ENT	28	206	4524
// OP_LOAD_F	4524	239	4525
// OP_LOAD_F	28	469	4526
// OP_SUB_F	4525	4526	4527
// OP_STOREP_F	4527	4523	0
// OP_LOAD_F	28	185	4528
// OP_NOT_F	4528	0	4529
// OP_IFNOT	4529	3	0
// OP_CALL0	2603	0	0
// OP_GOTO	30	0	0
// OP_ADDRESS	28	207	4530
// OP_LOAD_F	28	207	4531
// OP_LOAD_F	28	207	4532
// OP_BITAND	4532	277	4533
// OP_SUB_F	4531	4533	4534
// OP_STOREP_F	4534	4530	0
// OP_ADDRESS	28	139	4535
// OP_LOAD_F	28	139	4536
// OP_CALL0	2383	0	0
// OP_MUL_F	1	1620	4537
// OP_ADD_F	4536	4537	4538
// OP_STOREP_F	4538	4535	0
// OP_ADDRESS	28	140	4539
// OP_LOAD_F	28	140	4540
// OP_CALL0	2383	0	0
// OP_MUL_F	1	1620	4541
// OP_ADD_F	4540	4541	4542
// OP_STOREP_F	4542	4539	0
// OP_ADDRESS	28	141	4543
// OP_LOAD_F	28	141	4544
// OP_CALL0	501	0	0
// OP_MUL_F	1	1620	4545
// OP_ADD_F	4544	4545	4546
// OP_STOREP_F	4546	4543	0
// OP_ADDRESS	28	173	4547
// OP_STOREP_FNC	4497	4547	0
// OP_ADDRESS	28	175	4548
// OP_ADD_F	31	655	4549
// OP_STOREP_F	4549	4548	0
// OP_DONE	0	0	0
void () detpak_boom = 
{
    self.takedamage = 0;
    self.health = 0;
    
    if(self.ammo_rockets)
    {
        self.ammo_rockets = self.ammo_rockets - 1;
    }
    
    
    if((self.owner.classname == "player") && (self.ammo_rockets == 0))
    {
        self.owner.value = self.owner.value - 1;
    }
    
    T_RadiusDamage(self, self.owner, self.dmg, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    
    if(self.enemy.takedamage)
    {
        self.enemy.pdmg = self.enemy.pdmg - self.dmg;
    }
    
    if(!self.ammo_rockets)
    {
        BecomeExplosion();
    }
    else
    {
        self.flags = self.flags - (self.flags & FL_ONGROUND);
        self.velocity_x = self.velocity_x + (crandom() * 500);
        self.velocity_y = self.velocity_y + (crandom() * 500);
        self.velocity_z = self.velocity_z + (random() * 500);
        self.think = detpak_boom;
        self.nextthink = time + 0.1;
    }
    
};

// detpak_active
// function begins at statement 5670, parm_start=4551
// OP_LOAD_ENT	28	226	4551
// OP_LOAD_F	4551	190	4552
// OP_IFNOT	4552	4	0
// OP_ADDRESS	28	422	4553
// OP_SUB_F	31	655	4554
// OP_STOREP_F	4554	4553	0
// OP_LOAD_F	28	422	4555
// OP_GT	31	4555	4556
// OP_IFNOT	4556	7	0
// OP_ADDRESS	28	173	4557
// OP_STOREP_FNC	4497	4557	0
// OP_ADDRESS	28	175	4558
// OP_ADD_F	31	655	4559
// OP_STOREP_F	4559	4558	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	4560
// OP_STOREP_FNC	4550	4560	0
// OP_ADDRESS	28	175	4561
// OP_ADD_F	31	655	4562
// OP_STOREP_F	4562	4561	0
// OP_DONE	0	0	0
void () detpak_active = 
{
    
    if(self.owner.deadflag)
    {
        self.attack_finished = time - 0.1;
    }
    
    
    if(time > self.attack_finished)
    {
        self.think = detpak_boom;
        self.nextthink = time + 0.1;
        return;
    }
    
    self.think = detpak_active;
    self.nextthink = time + 0.1;
};

// detpak_fall
// function begins at statement 5691, parm_start=4564
// OP_LOAD_F	28	207	4564
// OP_BITAND	4564	277	4565
// OP_IFNOT	4565	39	0
// OP_LOAD_ENT	28	176	4566
// OP_EQ_E	4566	30	4567
// OP_LOAD_ENT	28	176	4568
// OP_LOAD_F	4568	129	4569
// OP_EQ_F	4569	295	4570
// OP_OR	4567	4570	4571
// OP_IFNOT	4571	28	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4258	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	128	4572
// OP_STOREP_F	285	4572	0
// OP_ADDRESS	28	411	4573
// OP_STOREP_FNC	4497	4573	0
// OP_ADDRESS	28	177	4574
// OP_STOREP_F	677	4574	0
// OP_ADDRESS	28	188	4575
// OP_STOREP_F	305	4575	0
// OP_ADDRESS	28	171	4576
// OP_STOREP_FNC	566	4576	0
// OP_ADDRESS	28	173	4577
// OP_STOREP_FNC	4550	4577	0
// OP_ADDRESS	28	175	4578
// OP_ADD_F	31	655	4579
// OP_STOREP_F	4579	4578	0
// OP_RETURN	0	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	207	4580
// OP_LOAD_F	28	207	4581
// OP_SUB_F	4581	277	4582
// OP_STOREP_F	4582	4580	0
// OP_LOAD_F	28	422	4583
// OP_GT	31	4583	4584
// OP_IFNOT	4584	7	0
// OP_ADDRESS	28	173	4585
// OP_STOREP_FNC	4497	4585	0
// OP_ADDRESS	28	175	4586
// OP_ADD_F	31	655	4587
// OP_STOREP_F	4587	4586	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	4588
// OP_STOREP_FNC	4563	4588	0
// OP_ADDRESS	28	175	4589
// OP_ADD_F	31	655	4590
// OP_STOREP_F	4590	4589	0
// OP_DONE	0	0	0
void () detpak_fall = 
{
    
    if(self.flags & FL_ONGROUND)
    {
        if((self.groundentity == world) || (self.groundentity.solid == SOLID_BSP))
        {
            sound(self, CHAN_WEAPON, "misc/talk.wav", 1, ATTN_NORM);
            setsize(self, '-8.000 -8.000 0.000', '8.000 8.000 8.000');
            self.movetype = MOVETYPE_TOSS;
            self.th_die = detpak_boom;
            self.health = 1;
            self.takedamage = DAMAGE_YES;
            self.touch = SUB_Null;
            self.think = detpak_active;
            self.nextthink = time + 0.1;
            return;
        }
        else
        {
            self.flags = self.flags - FL_ONGROUND;
        }
        
    }
    
    
    if(time > self.attack_finished)
    {
        self.think = detpak_boom;
        self.nextthink = time + 0.1;
        return;
    }
    
    self.think = detpak_fall;
    self.nextthink = time + 0.1;
};

// AC_detpak
// function begins at statement 5747, parm_start=4592
// OP_LOAD_ENT	28	206	4598
// OP_STORE_V	4598	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2381	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	226	4599
// OP_STOREP_ENT	28	4599	0
// OP_ADDRESS	394	128	4600
// OP_STOREP_F	289	4600	0
// OP_ADDRESS	394	129	4601
// OP_STOREP_F	294	4601	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4602	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4592	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	144	4603
// OP_LOAD_ENT	28	206	4604
// OP_LOAD_F	4604	144	4605
// OP_STOREP_F	4605	4603	0
// OP_ADDRESS	394	469	4606
// OP_STOREP_F	986	4606	0
// OP_ADDRESS	394	154	4607
// OP_STOREP_S	4608	4607	0
// OP_ADDRESS	394	173	4609
// OP_STOREP_FNC	4563	4609	0
// OP_ADDRESS	394	175	4610
// OP_ADD_F	31	655	4611
// OP_STOREP_F	4611	4610	0
// OP_ADDRESS	394	422	4612
// OP_ADD_F	31	2627	4613
// OP_STOREP_F	4613	4612	0
// OP_ADDRESS	394	185	4614
// OP_STOREP_F	788	4614	0
// OP_ADDRESS	394	138	4615
// OP_STOREP_V	4595	4615	0
// OP_ADDRESS	28	266	4618
// OP_STOREP_ENT	394	4618	0
// OP_DONE	0	0	0
void (vector org, vector dir) AC_detpak = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/bounce.wav", 1, ATTN_NORM);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_BOUNCE;
    newmis.solid = SOLID_SLIDEBOX;
    setmodel(newmis, "progs/rcbo.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(newmis, org);
    newmis.angles_y = self.enemy.angles_y;
    newmis.dmg = 200;
    newmis.classname = "detpak";
    newmis.think = detpak_fall;
    newmis.nextthink = time + 0.1;
    newmis.attack_finished = time + 120;
    newmis.ammo_rockets = 3;
    newmis.velocity = dir;
    self.lastmiss = newmis;
};

// ACmissile_home
// function begins at statement 5795, parm_start=4620
// OP_LOAD_F	28	422	4642
// OP_GT	31	4642	4643
// OP_IFNOT	4643	3	0
// OP_CALL0	3864	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	4644
// OP_LOAD_ENT	4644	219	4645
// OP_LOAD_S	4645	154	4646
// OP_EQ_S	4646	766	4647
// OP_LOAD_ENT	28	206	4648
// OP_LOAD_ENT	4648	219	4649
// OP_LOAD_F	4649	434	4650
// OP_LT	4650	31	4651
// OP_AND	4647	4651	4652
// OP_IFNOT	4652	11	0
// OP_LOAD_ENT	28	206	4653
// OP_LOAD_ENT	4653	219	4654
// OP_STORE_V	4654	4	0
// OP_STORE_V	4655	7	0
// OP_CALL2	515	0	0
// OP_LOAD_ENT	28	206	4656
// OP_LOAD_ENT	4656	219	4657
// OP_ADDRESS	4657	434	4658
// OP_ADD_F	31	972	4659
// OP_STOREP_F	4659	4658	0
// OP_LOAD_ENT	28	206	4660
// OP_LOAD_S	4660	155	4661
// OP_EQ_S	4661	1802	4662
// OP_LOAD_ENT	28	206	4663
// OP_LOAD_S	4663	155	4664
// OP_EQ_S	4664	1805	4665
// OP_OR	4662	4665	4666
// OP_IFNOT	4666	14	0
// OP_LOAD_ENT	28	206	4667
// OP_LOAD_F	4667	255	4668
// OP_LT	4668	31	4669
// OP_CALL0	501	0	0
// OP_LT	1	655	4670
// OP_AND	4669	4670	4671
// OP_IFNOT	4671	7	0
// OP_ADDRESS	28	173	4672
// OP_STOREP_FNC	3864	4672	0
// OP_ADDRESS	28	175	4673
// OP_LOAD_F	28	422	4674
// OP_STOREP_F	4674	4673	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	143	4675
// OP_GT	4675	1827	4676
// OP_IFNOT	4676	5	0
// OP_ADDRESS	28	143	4677
// OP_LOAD_F	28	143	4678
// OP_SUB_F	4678	1459	4679
// OP_STOREP_F	4679	4677	0
// OP_LOAD_ENT	28	206	4680
// OP_LOAD_V	4680	130	4681
// OP_LOAD_ENT	28	206	4684
// OP_LOAD_V	4684	159	4685
// OP_LOAD_ENT	28	206	4688
// OP_LOAD_V	4688	163	4689
// OP_ADD_V	4685	4689	4692
// OP_MUL_VF	4692	972	4695
// OP_ADD_V	4681	4695	4698
// OP_STORE_V	4698	4626	0
// OP_LOAD_V	28	130	4701
// OP_STORE_V	4701	4	0
// OP_STORE_V	4626	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_NE_F	70	677	4704
// OP_LOAD_ENT	28	206	4705
// OP_LOAD_V	4705	138	4706
// OP_NE_V	4706	607	4709
// OP_AND	4704	4709	4710
// OP_IFNOT	4710	7	0
// OP_ADDRESS	28	173	4711
// OP_STOREP_FNC	3864	4711	0
// OP_ADDRESS	28	175	4712
// OP_LOAD_F	28	422	4713
// OP_STOREP_F	4713	4712	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	4714
// OP_SUB_V	4626	4714	4717
// OP_STORE_V	4717	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	4629	0
// OP_GT	4629	1827	4720
// OP_IFNOT	4720	3	0
// OP_SUB_F	4629	1459	4721
// OP_STORE_F	4721	4629	0
// OP_STORE_V	607	4632	0
// OP_LOAD_F	28	144	4722
// OP_SUB_F	4630	4722	4723
// OP_STORE_V	4723	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	4633	0
// OP_GT	4633	1827	4724
// OP_IFNOT	4724	3	0
// OP_SUB_F	4633	1459	4725
// OP_STORE_F	4725	4633	0
// OP_LOAD_F	28	143	4726
// OP_SUB_F	4629	4726	4727
// OP_STORE_F	4727	4632	0
// OP_STORE_V	607	4635	0
// OP_LT	4632	619	4728
// OP_IFNOT	4728	4	0
// OP_LOAD_F	28	179	4729
// OP_SUB_F	619	4729	4730
// OP_STORE_F	4730	4635	0
// OP_GT	4632	619	4731
// OP_IFNOT	4731	3	0
// OP_LOAD_F	28	179	4732
// OP_STORE_F	4732	4635	0
// OP_STORE_V	4632	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	179	4733
// OP_MUL_F	4733	655	4734
// OP_LT	1	4734	4735
// OP_IFNOT	4735	4	0
// OP_STORE_F	619	4635	0
// OP_ADDRESS	28	143	4736
// OP_STOREP_F	4629	4736	0
// OP_LT	4633	619	4737
// OP_IFNOT	4737	4	0
// OP_LOAD_F	28	179	4738
// OP_SUB_F	619	4738	4739
// OP_STORE_F	4739	4636	0
// OP_GT	4633	619	4740
// OP_IFNOT	4740	3	0
// OP_LOAD_F	28	179	4741
// OP_STORE_F	4741	4636	0
// OP_STORE_V	4633	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	179	4742
// OP_MUL_F	4742	655	4743
// OP_LT	1	4743	4744
// OP_IFNOT	4744	5	0
// OP_STORE_F	619	4636	0
// OP_ADDRESS	28	144	4745
// OP_STOREP_F	4630	4745	0
// OP_GOTO	6	0	0
// OP_ADDRESS	28	144	4746
// OP_LOAD_F	28	144	4747
// OP_STORE_V	4747	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	4746	0
// OP_ADDRESS	28	146	4748
// OP_STOREP_V	4635	4748	0
// OP_STORE_V	4633	4	0
// OP_CALL1	534	0	0
// OP_GT	1	1268	4751
// OP_IFNOT	4751	27	0
// OP_STORE_V	4633	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	143	4752
// OP_ADD_F	4752	4629	4753
// OP_STORE_V	4753	4	0
// OP_CALL1	534	0	0
// OP_SUB_F	1827	1	4754
// OP_GT	1	4754	4755
// OP_IFNOT	4755	18	0
// OP_ADDRESS	28	144	4756
// OP_LOAD_F	28	144	4757
// OP_ADD_F	4757	1827	4758
// OP_STOREP_F	4758	4756	0
// OP_LOAD_F	28	143	4759
// OP_ADD_F	4759	4629	4760
// OP_GE	4760	619	4761
// OP_IFNOT	4761	6	0
// OP_ADDRESS	28	143	4762
// OP_LOAD_F	28	143	4763
// OP_SUB_F	1827	4763	4764
// OP_STOREP_F	4764	4762	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	143	4765
// OP_LOAD_F	28	143	4767
// OP_SUB_F	4766	4767	4768
// OP_STOREP_F	4768	4765	0
// OP_LOAD_V	28	142	4769
// OP_STORE_V	4769	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	4620	0
// OP_SUB_F	619	4622	4772
// OP_STORE_F	4772	4622	0
// OP_ADDRESS	28	138	4773
// OP_LOAD_F	28	413	4776
// OP_MUL_VF	4620	4776	4777
// OP_STOREP_V	4777	4773	0
// OP_ADDRESS	28	175	4780
// OP_ADD_F	31	655	4781
// OP_STOREP_F	4781	4780	0
// OP_ADDRESS	28	173	4782
// OP_STOREP_FNC	4619	4782	0
// OP_DONE	0	0	0
void () ACmissile_home = 
{
    local vector dir;
    local vector vtemp;
    local vector org;
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float dist;
    
    if(time > self.attack_finished)
    {
        ACprojectile_expireboom();
        return;
    }
    
    
    if((self.enemy.goalentity.classname == "player") && (self.enemy.goalentity.rad_time < time))
    {
        stuffcmd(self.enemy.goalentity, "play in1.wav\n");
        self.enemy.goalentity.rad_time = time + 0.5;
    }
    
    
    if((self.enemy.model == "progs/plane3.mdl") || (self.enemy.model == "progs/plane3b.mdl"))
    {
        
        if((self.enemy.unstealth_finished < time) && (random() < 0.1))
        {
            self.think = ACprojectile_expireboom;
            self.nextthink = self.attack_finished;
            return;
        }
        
    }
    
    
    if(self.angles_x > 180)
    {
        self.angles_x = self.angles_x - 360;
    }
    
    org = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5);
    traceline(self.origin, org, TRUE, self);
    
    if((trace_fraction != 1) && (self.enemy.velocity != '0.000 0.000 0.000'))
    {
        self.think = ACprojectile_expireboom;
        self.nextthink = self.attack_finished;
        return;
    }
    
    v0 = vectoangles(org - self.origin);
    
    if(v0_x > 180)
    {
        v0_x = v0_x - 360;
    }
    
    v1 = '0.000 0.000 0.000';
    v1_y = anglemod(0 - self.angles_y);
    
    if(0 > 180)
    {
        v1_y = 0 - 360;
    }
    
    v1_x = v0_x - self.angles_x;
    v2 = '0.000 0.000 0.000';
    
    if(v1_x < 0)
    {
        v2_x = 0 - self.weapon;
    }
    
    
    if(v1_x > 0)
    {
        v2_x = self.weapon;
    }
    
    
    if(fabs(v1_x) < (self.weapon * 0.1))
    {
        v2_x = 0;
        self.angles_x = v0_x;
    }
    
    
    if(0 < 0)
    {
        v2_y = 0 - self.weapon;
    }
    
    
    if(0 > 0)
    {
        v2_y = self.weapon;
    }
    
    if(fabs(0) < (self.weapon * 0.1))
    {
        v2_y = 0;
        self.angles_y = 0;
    }
    else
    {
        self.angles_y = anglemod(self.angles_y);
    }
    
    self.avelocity = v2;
    
    if(fabs(0) > 90)
    {
        fabs(0);
        
        if((fabs(self.angles_x + v0_x)) > (180 - (fabs(self.angles_x + v0_x))))
        {
            self.angles_y = self.angles_y + 180;
            if((self.angles_x + v0_x) >= 0)
            {
                self.angles_x = 180 - self.angles_x;
            }
            else
            {
                self.angles_x = -180 - self.angles_x;
            }
            
        }
        
    }
    
    makevectors(self.angles);
    dir = v_forward;
    dir_z = 0 - 0;
    self.velocity = dir * self.speed;
    self.nextthink = time + 0.1;
    self.think = ACmissile_home;
};

// AC_seekingmissile
// function begins at statement 5989, parm_start=4784
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	4792
// OP_NE_E	4790	4792	4793
// OP_IFNOT	4793	5	0
// OP_ADDRESS	394	226	4794
// OP_LOAD_ENT	28	206	4795
// OP_STOREP_ENT	4795	4794	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	4796
// OP_STOREP_ENT	28	4796	0
// OP_ADDRESS	394	206	4797
// OP_STOREP_ENT	4790	4797	0
// OP_LOAD_ENT	4790	219	4798
// OP_LOAD_S	4798	154	4799
// OP_EQ_S	4799	766	4800
// OP_IFNOT	4800	13	0
// OP_LOAD_ENT	4790	219	4801
// OP_STORE_V	4801	4	0
// OP_STORE_V	4802	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	4790	219	4803
// OP_STORE_V	4803	4	0
// OP_STORE_V	4655	7	0
// OP_CALL2	515	0	0
// OP_LOAD_ENT	4790	219	4804
// OP_ADDRESS	4804	434	4805
// OP_ADD_F	31	677	4806
// OP_STOREP_F	4806	4805	0
// OP_ADDRESS	394	128	4807
// OP_STOREP_F	288	4807	0
// OP_ADDRESS	394	129	4808
// OP_STOREP_F	293	4808	0
// OP_ADDRESS	394	158	4809
// OP_STOREP_F	385	4809	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4810	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	142	4811
// OP_STORE_V	4787	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	4811	0
// OP_ADDRESS	394	171	4814
// OP_STOREP_FNC	3892	4814	0
// OP_ADDRESS	394	469	4815
// OP_STOREP_F	4791	4815	0
// OP_ADDRESS	394	154	4816
// OP_STOREP_S	4194	4816	0
// OP_LOAD_ENT	394	206	4817
// OP_NE_E	4817	30	4818
// OP_IFNOT	4818	7	0
// OP_ADDRESS	394	173	4819
// OP_STOREP_FNC	4619	4819	0
// OP_ADDRESS	394	175	4820
// OP_ADD_F	31	655	4821
// OP_STOREP_F	4821	4820	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	173	4822
// OP_STOREP_FNC	3864	4822	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4784	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	4790	188	4823
// OP_IFNOT	4823	6	0
// OP_ADDRESS	4790	239	4824
// OP_LOAD_F	4790	239	4825
// OP_LOAD_F	394	469	4826
// OP_ADD_F	4825	4826	4827
// OP_STOREP_F	4827	4824	0
// OP_ADDRESS	28	266	4828
// OP_STOREP_ENT	394	4828	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ, float dm) AC_seekingmissile = 
{
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.enemy = targ;
    
    if(targ.goalentity.classname == "player")
    {
        sprint(targ.goalentity, "Incoming missile!\n");
        stuffcmd(targ.goalentity, "play in1.wav\n");
        targ.goalentity.rad_time = time + 1;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/rocket2.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.angles = vectoangles(dir);
    newmis.touch = ACprojectile_touchboom;
    newmis.dmg = dm;
    newmis.classname = "missile";
    if(newmis.enemy != world)
    {
        newmis.think = ACmissile_home;
        newmis.nextthink = time + 0.1;
    }
    else
    {
        newmis.think = ACprojectile_expireboom;
    }
    
    setorigin(newmis, org);
    
    if(targ.takedamage)
    {
        targ.pdmg = targ.pdmg + newmis.dmg;
    }
    
    self.lastmiss = newmis;
};

// AC_heatseeker
// function begins at statement 6065, parm_start=4830
// OP_LOAD_ENT	28	206	4837
// OP_STORE_V	4837	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4830	4	0
// OP_STORE_V	4833	7	0
// OP_STORE_V	4836	10	0
// OP_STORE_V	2627	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4810	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4838
// OP_STOREP_F	4839	4838	0
// OP_ADDRESS	394	179	4840
// OP_STOREP_F	3338	4840	0
// OP_LOAD_ENT	394	206	4841
// OP_NE_E	4841	30	4842
// OP_IFNOT	4842	5	0
// OP_ADDRESS	394	422	4843
// OP_ADD_F	31	813	4844
// OP_STOREP_F	4844	4843	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4845
// OP_ADD_F	31	813	4846
// OP_STOREP_F	4846	4845	0
// OP_ADDRESS	394	138	4847
// OP_MUL_VF	4833	4839	4850
// OP_STOREP_V	4850	4847	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_heatseeker = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 120);
    setmodel(newmis, "progs/rocket2.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 800;
    newmis.weapon = 150;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 800;
};

// AC_miniseeker
// function begins at statement 6102, parm_start=4854
// OP_LOAD_ENT	28	206	4861
// OP_STORE_V	4861	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4178	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4854	4	0
// OP_STORE_V	4857	7	0
// OP_STORE_V	4860	10	0
// OP_STORE_V	1228	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4187	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4862
// OP_STOREP_F	1622	4862	0
// OP_ADDRESS	394	179	4863
// OP_STOREP_F	2627	4863	0
// OP_LOAD_ENT	394	206	4864
// OP_NE_E	4864	30	4865
// OP_IFNOT	4865	5	0
// OP_ADDRESS	394	422	4866
// OP_ADD_F	31	1798	4867
// OP_STOREP_F	4867	4866	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4868
// OP_ADD_F	31	1798	4869
// OP_STOREP_F	4869	4868	0
// OP_ADDRESS	394	138	4870
// OP_MUL_VF	4857	1622	4873
// OP_STOREP_V	4873	4870	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_miniseeker = 
{
    sound(self.enemy, CHAN_WEAPON, "rocklnch.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 70);
    setmodel(newmis, "progs/rocket1.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 1000;
    newmis.weapon = 120;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 1.5;
    }
    else
    {
        newmis.nextthink = time + 1.5;
    }
    
    newmis.velocity = dir * 1000;
};

// AC_bigseeker
// function begins at statement 6139, parm_start=4877
// OP_LOAD_ENT	28	206	4884
// OP_STORE_V	4884	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4877	4	0
// OP_STORE_V	4880	7	0
// OP_STORE_V	4883	10	0
// OP_STORE_V	986	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4810	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4885
// OP_STOREP_F	1620	4885	0
// OP_ADDRESS	394	179	4886
// OP_STOREP_F	1203	4886	0
// OP_LOAD_ENT	394	206	4887
// OP_NE_E	4887	30	4888
// OP_IFNOT	4888	5	0
// OP_ADDRESS	394	422	4889
// OP_ADD_F	31	813	4890
// OP_STOREP_F	4890	4889	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4891
// OP_ADD_F	31	813	4892
// OP_STOREP_F	4892	4891	0
// OP_ADDRESS	394	138	4893
// OP_MUL_VF	4880	1620	4896
// OP_STOREP_V	4896	4893	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_bigseeker = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 200);
    setmodel(newmis, "progs/rocket2.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 500;
    newmis.weapon = 60;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 500;
};

// AC_sidewinder
// function begins at statement 6176, parm_start=4900
// OP_LOAD_ENT	28	206	4907
// OP_STORE_V	4907	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4900	4	0
// OP_STORE_V	4903	7	0
// OP_STORE_V	4906	10	0
// OP_STORE_V	2627	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4908	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4909
// OP_STOREP_F	4839	4909	0
// OP_ADDRESS	394	179	4910
// OP_STOREP_F	3338	4910	0
// OP_LOAD_ENT	394	206	4911
// OP_NE_E	4911	30	4912
// OP_IFNOT	4912	5	0
// OP_ADDRESS	394	422	4913
// OP_ADD_F	31	813	4914
// OP_STOREP_F	4914	4913	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4915
// OP_ADD_F	31	813	4916
// OP_STOREP_F	4916	4915	0
// OP_ADDRESS	394	138	4917
// OP_MUL_VF	4903	4839	4920
// OP_STOREP_V	4920	4917	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_sidewinder = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 120);
    setmodel(newmis, "progs/sider.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 800;
    newmis.weapon = 150;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 800;
};

// AC_amraam
// function begins at statement 6213, parm_start=4924
// OP_LOAD_ENT	28	206	4931
// OP_STORE_V	4931	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4924	4	0
// OP_STORE_V	4927	7	0
// OP_STORE_V	4930	10	0
// OP_STORE_V	4932	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4933	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4934
// OP_STOREP_F	1622	4934	0
// OP_ADDRESS	394	179	4935
// OP_STOREP_F	2618	4935	0
// OP_LOAD_ENT	394	206	4936
// OP_NE_E	4936	30	4937
// OP_IFNOT	4937	5	0
// OP_ADDRESS	394	422	4938
// OP_ADD_F	31	813	4939
// OP_STOREP_F	4939	4938	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4940
// OP_ADD_F	31	813	4941
// OP_STOREP_F	4941	4940	0
// OP_ADDRESS	394	138	4942
// OP_MUL_VF	4927	1622	4945
// OP_STOREP_V	4945	4942	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_amraam = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 140);
    setmodel(newmis, "progs/amraam.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 1000;
    newmis.weapon = 100;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 1000;
};

// AC_stinger
// function begins at statement 6250, parm_start=4949
// OP_LOAD_ENT	28	206	4956
// OP_STORE_V	4956	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4949	4	0
// OP_STORE_V	4952	7	0
// OP_STORE_V	4955	10	0
// OP_STORE_V	1268	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4957	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4958
// OP_STOREP_F	4839	4958	0
// OP_ADDRESS	394	179	4959
// OP_STOREP_F	1827	4959	0
// OP_LOAD_ENT	394	206	4960
// OP_NE_E	4960	30	4961
// OP_IFNOT	4961	5	0
// OP_ADDRESS	394	422	4962
// OP_ADD_F	31	813	4963
// OP_STOREP_F	4963	4962	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4964
// OP_ADD_F	31	813	4965
// OP_STOREP_F	4965	4964	0
// OP_ADDRESS	394	138	4966
// OP_MUL_VF	4952	4839	4969
// OP_STOREP_V	4969	4966	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_stinger = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 90);
    setmodel(newmis, "progs/sting.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 800;
    newmis.weapon = 180;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 800;
};

// AC_maverick
// function begins at statement 6287, parm_start=4973
// OP_LOAD_ENT	28	206	4980
// OP_STORE_V	4980	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4973	4	0
// OP_STORE_V	4976	7	0
// OP_STORE_V	4979	10	0
// OP_STORE_V	986	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	4981	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	4982
// OP_STOREP_F	1620	4982	0
// OP_ADDRESS	394	179	4983
// OP_STOREP_F	1203	4983	0
// OP_LOAD_ENT	394	206	4984
// OP_NE_E	4984	30	4985
// OP_IFNOT	4985	5	0
// OP_ADDRESS	394	422	4986
// OP_ADD_F	31	813	4987
// OP_STOREP_F	4987	4986	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	4988
// OP_ADD_F	31	813	4989
// OP_STOREP_F	4989	4988	0
// OP_ADDRESS	394	138	4990
// OP_MUL_VF	4976	1620	4993
// OP_STOREP_V	4993	4990	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_maverick = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 200);
    setmodel(newmis, "progs/maver.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 500;
    newmis.weapon = 60;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 500;
};

// AC_hellfire
// function begins at statement 6324, parm_start=4997
// OP_LOAD_ENT	28	206	5004
// OP_STORE_V	5004	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	2373	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	4997	4	0
// OP_STORE_V	5000	7	0
// OP_STORE_V	5003	10	0
// OP_STORE_V	5005	13	0
// OP_CALL4	4783	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	5006	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	413	5007
// OP_STOREP_F	4155	5007	0
// OP_ADDRESS	394	179	5008
// OP_STOREP_F	5009	5008	0
// OP_LOAD_ENT	394	206	5010
// OP_NE_E	5010	30	5011
// OP_IFNOT	5011	5	0
// OP_ADDRESS	394	422	5012
// OP_ADD_F	31	813	5013
// OP_STOREP_F	5013	5012	0
// OP_GOTO	4	0	0
// OP_ADDRESS	394	175	5014
// OP_ADD_F	31	813	5015
// OP_STOREP_F	5015	5014	0
// OP_ADDRESS	394	138	5016
// OP_MUL_VF	5000	4155	5019
// OP_STOREP_V	5019	5016	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_hellfire = 
{
    sound(self.enemy, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    AC_seekingmissile(org, dir, targ, 160);
    setmodel(newmis, "progs/hfire.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.speed = 600;
    newmis.weapon = 75;
    if(newmis.enemy != world)
    {
        newmis.attack_finished = time + 5;
    }
    else
    {
        newmis.nextthink = time + 5;
    }
    
    newmis.velocity = dir * 600;
};

// s_pexplode0
// function begins at statement 6361, parm_start=5023
// OP_STATE	619	5023	0
// OP_DONE	0	0	0
void () s_pexplode0 = [0, s_pexplode1]
{
};

// s_pexplode1
// function begins at statement 6363, parm_start=5024
// OP_STATE	677	5024	0
// OP_DONE	0	0	0
void () s_pexplode1 = [1, s_pexplode2]
{
};

// s_pexplode2
// function begins at statement 6365, parm_start=5025
// OP_STATE	806	5025	0
// OP_DONE	0	0	0
void () s_pexplode2 = [2, s_pexplode3]
{
};

// s_pexplode3
// function begins at statement 6367, parm_start=5026
// OP_STATE	788	5026	0
// OP_DONE	0	0	0
void () s_pexplode3 = [3, s_pexplode4]
{
};

// s_pexplode4
// function begins at statement 6369, parm_start=5027
// OP_STATE	808	5027	0
// OP_DONE	0	0	0
void () s_pexplode4 = [4, s_pexplode5]
{
};

// s_pexplode5
// function begins at statement 6371, parm_start=5028
// OP_STATE	813	568	0
// OP_DONE	0	0	0
void () s_pexplode5 = [5, SUB_Remove]
{
};

// PlasmaExplosion
// function begins at statement 6373, parm_start=5029
// OP_ADDRESS	28	128	5029
// OP_STOREP_F	281	5029	0
// OP_ADDRESS	28	138	5030
// OP_STOREP_V	607	5030	0
// OP_ADDRESS	28	171	5033
// OP_STOREP_FNC	566	5033	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5034	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	5035
// OP_STOREP_F	291	5035	0
// OP_CALL0	5022	0	0
// OP_DONE	0	0	0
void () PlasmaExplosion = 
{
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0.000 0.000 0.000';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_plasma.spr");
    self.solid = SOLID_NOT;
    s_pexplode0();
};

// Plasma_Watercheck
// function begins at statement 6386, parm_start=5037
// OP_LOAD_V	28	130	5038
// OP_STORE_V	5038	4	0
// OP_CALL1	533	0	0
// OP_STORE_F	1	5037	0
// OP_EQ_F	5037	327	5041
// OP_EQ_F	5037	328	5042
// OP_OR	5041	5042	5043
// OP_EQ_F	5037	329	5044
// OP_OR	5043	5044	5045
// OP_IFNOT	5045	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	4083	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	5046
// OP_STORE_V	5046	7	0
// OP_STORE_V	1203	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2232	0	0
// OP_CALL0	5028	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	5047
// OP_GT	31	5047	5048
// OP_IFNOT	5048	3	0
// OP_CALL0	5028	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	5049
// OP_STOREP_FNC	5036	5049	0
// OP_ADDRESS	28	175	5050
// OP_ADD_F	31	655	5051
// OP_STOREP_F	5051	5050	0
// OP_DONE	0	0	0
void () Plasma_Watercheck = 
{
    local float pc;
    pc = pointcontents(self.origin);
    
    if(((pc == CONTENT_WATER) || (pc == CONTENT_SLIME)) || (pc == CONTENT_LAVA))
    {
        sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", 1, ATTN_NORM);
        T_RadiusDamage(self, self.owner, 60, world);
        PlasmaExplosion();
        return;
    }
    
    
    if(time > self.attack_finished)
    {
        PlasmaExplosion();
        return;
    }
    
    self.think = Plasma_Watercheck;
    self.nextthink = time + 0.1;
};

// ACplasma_touch
// function begins at statement 6421, parm_start=5053
// OP_LOAD_ENT	28	226	5054
// OP_EQ_E	29	5054	5055
// OP_LOAD_ENT	29	226	5056
// OP_LOAD_ENT	28	226	5057
// OP_EQ_E	5056	5057	5058
// OP_OR	5055	5058	5059
// OP_IFNOT	5059	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	5060
// OP_STORE_V	5060	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	5063
// OP_IFNOT	5063	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	1155	5064
// OP_ADD_F	1155	5064	5065
// OP_STORE_F	5065	5053	0
// OP_LOAD_F	29	177	5066
// OP_IFNOT	5066	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	5067
// OP_STORE_V	5067	10	0
// OP_STORE_V	5053	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	130	5068
// OP_LOAD_V	28	130	5071
// OP_LOAD_V	28	138	5074
// OP_STORE_V	5074	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	810	1	5077
// OP_SUB_V	5071	5077	5080
// OP_STOREP_V	5080	5068	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	5083	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	5028	0	0
// OP_DONE	0	0	0
void () ACplasma_touch = 
{
    local float damg;
    
    if((other == self.owner) || (other.owner == self.owner))
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    damg = 40 + (random() * 40);
    
    if(other.health)
    {
        T_Damage(other, self, self.owner, damg);
    }
    
    self.origin = self.origin - (8 * normalize(self.velocity));
    sound(self, CHAN_WEAPON, "dsfirxpl.wav", 1, ATTN_NORM);
    PlasmaExplosion();
};

// AC_plasma
// function begins at statement 6465, parm_start=5085
// OP_LOAD_ENT	28	206	5092
// OP_STORE_V	5092	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	5093	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_LOAD_ENT	28	206	5094
// OP_NE_E	5091	5094	5095
// OP_IFNOT	5095	5	0
// OP_ADDRESS	394	226	5096
// OP_LOAD_ENT	28	206	5097
// OP_STOREP_ENT	5097	5096	0
// OP_GOTO	3	0	0
// OP_ADDRESS	394	226	5098
// OP_STOREP_ENT	28	5098	0
// OP_ADDRESS	394	128	5099
// OP_STOREP_F	288	5099	0
// OP_ADDRESS	394	129	5100
// OP_STOREP_F	293	5100	0
// OP_ADDRESS	394	158	5101
// OP_STOREP_F	385	5101	0
// OP_STORE_V	394	4	0
// OP_STORE_V	5102	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	394	157	5103
// OP_STOREP_F	677	5103	0
// OP_ADDRESS	394	171	5104
// OP_STOREP_FNC	5052	5104	0
// OP_ADDRESS	394	154	5105
// OP_STOREP_S	5106	5105	0
// OP_ADDRESS	394	175	5107
// OP_ADD_F	31	655	5108
// OP_STOREP_F	5108	5107	0
// OP_ADDRESS	394	173	5109
// OP_STOREP_FNC	5036	5109	0
// OP_ADDRESS	394	422	5110
// OP_ADD_F	31	1798	5111
// OP_STOREP_F	5111	5110	0
// OP_ADDRESS	394	206	5112
// OP_STOREP_ENT	5091	5112	0
// OP_STORE_V	394	4	0
// OP_STORE_V	5085	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	5113
// OP_MUL_VF	5088	5116	5117
// OP_STOREP_V	5117	5113	0
// OP_ADDRESS	394	146	5120
// OP_STOREP_V	5123	5120	0
// OP_ADDRESS	28	266	5126
// OP_STOREP_ENT	394	5126	0
// OP_DONE	0	0	0
void (vector org, vector dir, entity targ) AC_plasma = 
{
    sound(self.enemy, CHAN_WEAPON, "dsplasma.wav", 1, ATTN_NORM);
    newmis = spawn();
    if(targ != self.enemy)
    {
        newmis.owner = self.enemy;
    }
    else
    {
        newmis.owner = self;
    }
    
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/pbullet.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    newmis.skin = 1;
    newmis.touch = ACplasma_touch;
    newmis.classname = "plasma";
    newmis.nextthink = time + 0.1;
    newmis.think = Plasma_Watercheck;
    newmis.attack_finished = time + 1.5;
    newmis.enemy = targ;
    setorigin(newmis, org);
    newmis.velocity = dir * 1200;
    newmis.avelocity = '300.000 300.000 300.000';
    self.lastmiss = newmis;
};

// flare_touch
// function begins at statement 6523, parm_start=5128
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () flare_touch = 
{
    return;
    remove(self);
};

// AC_Flare
// function begins at statement 6527, parm_start=5128
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	129	5129
// OP_STOREP_F	292	5129	0
// OP_ADDRESS	394	128	5130
// OP_STOREP_F	289	5130	0
// OP_ADDRESS	394	139	5131
// OP_CALL0	501	0	0
// OP_MUL_F	1	986	5132
// OP_SUB_F	5132	2618	5133
// OP_STOREP_F	5133	5131	0
// OP_ADDRESS	394	140	5134
// OP_CALL0	501	0	0
// OP_MUL_F	1	986	5135
// OP_SUB_F	5135	2618	5136
// OP_STOREP_F	5136	5134	0
// OP_ADDRESS	394	141	5137
// OP_CALL0	501	0	0
// OP_MUL_F	1	986	5138
// OP_SUB_F	5138	2618	5139
// OP_STOREP_F	5139	5137	0
// OP_ADDRESS	394	138	5140
// OP_LOAD_V	394	138	5143
// OP_LOAD_ENT	28	206	5146
// OP_LOAD_V	5146	138	5147
// OP_ADD_V	5143	5147	5150
// OP_STOREP_V	5150	5140	0
// OP_LOAD_F	28	404	5153
// OP_GT	5153	816	5154
// OP_IFNOT	5154	5	0
// OP_ADDRESS	394	138	5155
// OP_LOAD_V	394	138	5158
// OP_ADD_V	5158	5161	5164
// OP_STOREP_V	5164	5155	0
// OP_ADDRESS	394	154	5167
// OP_STOREP_S	5168	5167	0
// OP_STORE_V	394	4	0
// OP_STORE_V	5169	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_LOAD_ENT	28	206	5170
// OP_LOAD_V	5170	130	5171
// OP_STORE_V	5171	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	175	5174
// OP_ADD_F	31	813	5175
// OP_STOREP_F	5175	5174	0
// OP_ADDRESS	394	173	5176
// OP_STOREP_FNC	568	5176	0
// OP_ADDRESS	394	171	5177
// OP_STOREP_FNC	5127	5177	0
// OP_ADDRESS	394	158	5178
// OP_STOREP_F	808	5178	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	4194	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	5128	0
// OP_IFNOT	5128	23	0
// OP_LOAD_ENT	5128	206	5179
// OP_LOAD_ENT	28	206	5180
// OP_EQ_E	5179	5180	5181
// OP_IFNOT	5181	13	0
// OP_CALL0	501	0	0
// OP_LT	1	972	5182
// OP_IFNOT	5182	10	0
// OP_LOAD_ENT	5128	206	5183
// OP_ADDRESS	5183	239	5184
// OP_LOAD_ENT	5128	206	5185
// OP_LOAD_F	5185	239	5186
// OP_LOAD_F	5128	469	5187
// OP_SUB_F	5186	5187	5188
// OP_STOREP_F	5188	5184	0
// OP_ADDRESS	5128	206	5189
// OP_STOREP_ENT	394	5189	0
// OP_STORE_V	5128	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	4194	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	5128	0
// OP_GOTO	-22	0	0
// OP_DONE	0	0	0
void () AC_Flare = 
{
    local entity e;
    newmis = spawn();
    newmis.solid = SOLID_TRIGGER;
    newmis.movetype = MOVETYPE_BOUNCE;
    newmis.velocity_x = (random() * 200) - 100;
    newmis.velocity_y = (random() * 200) - 100;
    newmis.velocity_z = (random() * 200) - 100;
    newmis.velocity = newmis.velocity + self.enemy.velocity;
    
    if(self.style > 6)
    {
        newmis.velocity = newmis.velocity + '0.000 0.000 600.000';
    }
    
    newmis.classname = "flare";
    setmodel(newmis, "progs/lavaball.mdl");
    setsize(newmis, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(newmis, self.enemy.origin);
    newmis.nextthink = time + 5;
    newmis.think = SUB_Remove;
    newmis.touch = flare_touch;
    newmis.effects = 4;
    e = find(world, classname, "missile");
    
    while(e)
    {
        
        if(e.enemy == self.enemy)
        {
            
            if(random() < 0.5)
            {
                e.enemy.pdmg = e.enemy.pdmg - e.dmg;
                e.enemy = newmis;
            }
            
        }
        
        e = find(e, classname, "missile");
    }
    
};

