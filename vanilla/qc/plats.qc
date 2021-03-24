/* TYPE: EV_POINTER */ ;
void() plat_center_touch;
void() plat_outside_touch;
void() plat_trigger_use;
void() plat_go_up;
void() plat_go_down;
void() plat_crush;
float PLAT_LOW_TRIGGER = 1.000;
void() plat_spawn_inside_trigger;
// plat_spawn_inside_trigger
// function begins at statement 10616
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	6900	0
// OP_ADDRESS	6900	146	6907
// OP_STOREP_FNC	6892	6907	0
// OP_ADDRESS	6900	103	6908
// OP_STOREP_F	227	6908	0
// OP_ADDRESS	6900	104	6909
// OP_STOREP_F	238	6909	0
// OP_ADDRESS	6900	181	6910
// OP_STOREP_ENT	28	6910	0
// OP_LOAD_V	28	134	6911
// OP_ADD_V	6911	6914	6917
// OP_STORE_V	6917	6901	0
// OP_LOAD_V	28	138	6920
// OP_SUB_V	6920	6923	6926
// OP_STORE_V	6926	6904	0
// OP_LOAD_F	28	437	6929
// OP_LOAD_F	28	441	6930
// OP_SUB_F	6929	6930	6931
// OP_ADD_F	6931	6077	6932
// OP_SUB_F	6906	6932	6933
// OP_STORE_F	6933	6903	0
// OP_LOAD_F	28	195	6934
// OP_BITAND	6934	6898	6935
// OP_IFNOT	6935	3	0
// OP_ADD_F	6903	6077	6936
// OP_STORE_F	6936	6906	0
// OP_LOAD_F	28	143	6937
// OP_LE	6937	2227	6938
// OP_IFNOT	6938	8	0
// OP_LOAD_F	28	135	6939
// OP_LOAD_F	28	139	6940
// OP_ADD_F	6939	6940	6941
// OP_DIV_F	6941	6564	6942
// OP_STORE_F	6942	6901	0
// OP_ADD_F	6901	6898	6943
// OP_STORE_F	6943	6904	0
// OP_LOAD_F	28	144	6944
// OP_LE	6944	2227	6945
// OP_IFNOT	6945	8	0
// OP_LOAD_F	28	136	6946
// OP_LOAD_F	28	140	6947
// OP_ADD_F	6946	6947	6948
// OP_DIV_F	6948	6564	6949
// OP_STORE_F	6949	6902	0
// OP_ADD_F	6902	6898	6950
// OP_STORE_F	6950	6905	0
// OP_STORE_V	6900	4	0
// OP_STORE_V	6901	7	0
// OP_STORE_V	6904	10	0
// OP_CALL3	450	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_spawn_inside_trigger =
{
    local entity trigger;
    local vector tmin;
    local vector tmax;
    trigger = spawn();
    trigger.touch = plat_center_touch;
    trigger.movetype = MOVETYPE_NONE;
    trigger.solid = SOLID_TRIGGER;
    trigger.enemy = self;
    // *** UNPROCESSED OPCODE OP_ADD_V 6911 6914 6917
    tmin = ;
    tmax = self.maxs - '25.000 25.000 -8.000';
    // *** UNPROCESSED OPCODE OP_SUB_F 6929 6930 6931
    // *** UNPROCESSED OPCODE OP_SUB_F 6906 6932 6933
    tmin_z = ;
    
    if(self.spawnflags & PLAT_LOW_TRIGGER)
    {
        tmax_z = tmin_z + SECRET_NO_SHOOT;
    }
    
    
    if(self.size_x <= 50.000)
    {
        tmin = (self.mins_x + self.maxs_x) / SILENT;
        tmax = tmin + PLAT_LOW_TRIGGER;
    }
    
    
    if(self.size_y <= 50.000)
    {
        tmin_y = (self.mins_y + self.maxs_y) / SILENT;
        tmax_y = tmin_y + PLAT_LOW_TRIGGER;
    }
    
    setsize(trigger, tmin, tmax);
};

float ;
void() plat_hit_top;
// plat_hit_top
// function begins at statement 10668
// OP_LOAD_S	28	209	6952
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6952	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6953
// OP_STOREP_F	282	6953	0
// OP_ADDRESS	28	148	6954
// OP_STOREP_FNC	6896	6954	0
// OP_ADDRESS	28	150	6955
// OP_LOAD_F	28	102	6956
// OP_ADD_F	6956	370	6957
// OP_STOREP_F	6957	6955	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_hit_top =
{
    sound(self, CHAN_VOICE, self.noise1, PLAT_LOW_TRIGGER, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = plat_go_down;
    self.nextthink = self.ltime + AS_MELEE;
};

float ;
void() plat_hit_bottom;
// plat_hit_bottom
// function begins at statement 10684
// OP_LOAD_S	28	209	6959
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6959	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6960
// OP_STOREP_F	283	6960	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_hit_bottom =
{
    sound(self, CHAN_VOICE, self.noise1, PLAT_LOW_TRIGGER, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

/* TYPE: EV_POINTER */ ;
// plat_go_down
// function begins at statement 10694
// OP_LOAD_S	28	208	6961
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6961	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6962
// OP_STOREP_F	285	6962	0
// OP_LOAD_V	28	438	6963
// OP_LOAD_F	28	364	6966
// OP_STORE_V	6963	4	0
// OP_STORE_V	6966	7	0
// OP_STORE_V	6958	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_go_down =
{
    sound(self, CHAN_VOICE, self.noise, PLAT_LOW_TRIGGER, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

float ;
// plat_go_up
// function begins at statement 10710
// OP_LOAD_S	28	208	6967
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	6967	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6968
// OP_STOREP_F	284	6968	0
// OP_LOAD_V	28	434	6969
// OP_LOAD_F	28	364	6972
// OP_STORE_V	6969	4	0
// OP_STORE_V	6972	7	0
// OP_STORE_V	6951	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_go_up =
{
    sound(self, CHAN_VOICE, self.noise, PLAT_LOW_TRIGGER, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

float ;
// plat_center_touch
// function begins at statement 10726
// OP_LOAD_S	29	129	6973
// OP_NE_S	6973	712	6974
// OP_IFNOT	6974	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	6975
// OP_LE	6975	337	6976
// OP_IFNOT	6976	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	6977
// OP_STORE_ENT	6977	28	0
// OP_LOAD_F	28	433	6978
// OP_EQ_F	6978	283	6979
// OP_IFNOT	6979	3	0
// OP_CALL0	6895	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	433	6980
// OP_EQ_F	6980	282	6981
// OP_IFNOT	6981	5	0
// OP_ADDRESS	28	150	6982
// OP_LOAD_F	28	102	6983
// OP_ADD_F	6983	6898	6984
// OP_STOREP_F	6984	6982	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_center_touch =
{
    // *** UNPROCESSED OPCODE OP_NE_S 6973 712 6974
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    self = self.enemy;
    if(self.state == STATE_BOTTOM)
    {
        plat_go_up();
    }
    else    
    {
        
        if(self.state == STATE_TOP)
        {
            self.nextthink = self.ltime + PLAT_LOW_TRIGGER;
        }
        
    }
    
};

float ;
// plat_outside_touch
// function begins at statement 10749
// OP_LOAD_S	29	129	6985
// OP_NE_S	6985	712	6986
// OP_IFNOT	6986	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	6987
// OP_LE	6987	337	6988
// OP_IFNOT	6988	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	6989
// OP_STORE_ENT	6989	28	0
// OP_LOAD_F	28	433	6990
// OP_EQ_F	6990	282	6991
// OP_IFNOT	6991	2	0
// OP_CALL0	6896	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_outside_touch =
{
    // *** UNPROCESSED OPCODE OP_NE_S 6985 712 6986
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    self = self.enemy;
    
    if(self.state == STATE_TOP)
    {
        plat_go_down();
    }
    
};

float ;
// plat_trigger_use
// function begins at statement 10764
// OP_LOAD_FNC	28	148	6992
// OP_IFNOT	6992	2	0
// OP_RETURN	0	0	0
// OP_CALL0	6896	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_trigger_use =
{
    
    if(self.think)
    {
        return; /* TODO retvalue? */
    }
    
    plat_go_down();
};

void() ;
// plat_crush
// function begins at statement 10769
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	6898	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	433	6993
// OP_EQ_F	6993	284	6994
// OP_IFNOT	6994	3	0
// OP_CALL0	6896	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	433	6995
// OP_EQ_F	6995	285	6996
// OP_IFNOT	6996	3	0
// OP_CALL0	6895	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	6997	4	0
// OP_CALL1	456	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_crush =
{
    T_Damage(other, self, self, PLAT_LOW_TRIGGER);
    if(self.state == STATE_UP)
    {
        plat_go_down();
    }
    else    
    {
        if(self.state == STATE_DOWN)
        {
            plat_go_up();
        }
        else        
        {
            objerror("plat_crush: bad self.state\n");
        }
        
    }
    
};

string IMMEDIATE = "plat_crush: bad self.state\n";
void() plat_use;
// plat_use
// function begins at statement 10787
// OP_ADDRESS	28	147	6999
// OP_STOREP_FNC	517	6999	0
// OP_LOAD_F	28	433	7000
// OP_NE_F	7000	284	7001
// OP_IFNOT	7001	3	0
// OP_STORE_V	7002	4	0
// OP_CALL1	456	0	0
// OP_CALL0	6896	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () plat_use =
{
    self.use = SUB_Null;
    // *** UNPROCESSED OPCODE OP_NE_F 7000 284 7001
    
    if()
    {
        objerror("plat_use: not in up state");
    }
    
    plat_go_down();
};

string IMMEDIATE = "plat_use: not in up state";
void() func_plat;
// func_plat
// function begins at statement 10796
// OP_LOAD_F	28	399	7005
// OP_NOT_F	7005	0	7006
// OP_IFNOT	7006	3	0
// OP_ADDRESS	28	399	7007
// OP_STOREP_F	788	7007	0
// OP_LOAD_F	28	400	7008
// OP_NOT_F	7008	0	7009
// OP_IFNOT	7009	3	0
// OP_ADDRESS	28	400	7010
// OP_STOREP_F	318	7010	0
// OP_LOAD_F	28	207	7011
// OP_EQ_F	7011	337	7012
// OP_IFNOT	7012	3	0
// OP_ADDRESS	28	207	7013
// OP_STOREP_F	6564	7013	0
// OP_LOAD_F	28	207	7014
// OP_EQ_F	7014	6898	7015
// OP_IFNOT	7015	9	0
// OP_STORE_V	7016	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7017	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7018
// OP_STOREP_S	7016	7018	0
// OP_ADDRESS	28	209	7019
// OP_STOREP_S	7017	7019	0
// OP_LOAD_F	28	207	7020
// OP_EQ_F	7020	6564	7021
// OP_IFNOT	7021	9	0
// OP_STORE_V	7022	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7023	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7024
// OP_STOREP_S	7022	7024	0
// OP_ADDRESS	28	209	7025
// OP_STOREP_S	7023	7025	0
// OP_ADDRESS	28	395	7026
// OP_LOAD_V	28	117	7029
// OP_STOREP_V	7029	7026	0
// OP_ADDRESS	28	117	7032
// OP_STOREP_V	286	7032	0
// OP_ADDRESS	28	129	7035
// OP_STOREP_S	7036	7035	0
// OP_ADDRESS	28	104	7037
// OP_STOREP_F	241	7037	0
// OP_ADDRESS	28	103	7038
// OP_STOREP_F	232	7038	0
// OP_LOAD_V	28	105	7039
// OP_STORE_V	28	4	0
// OP_STORE_V	7039	7	0
// OP_CALL2	448	0	0
// OP_LOAD_S	28	130	7042
// OP_STORE_V	28	4	0
// OP_STORE_V	7042	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	134	7043
// OP_LOAD_V	28	138	7046
// OP_STORE_V	28	4	0
// OP_STORE_V	7043	7	0
// OP_STORE_V	7046	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	149	7049
// OP_STOREP_FNC	6897	7049	0
// OP_LOAD_F	28	364	7050
// OP_NOT_F	7050	0	7051
// OP_IFNOT	7051	3	0
// OP_ADDRESS	28	364	7052
// OP_STOREP_F	1960	7052	0
// OP_ADDRESS	28	434	7053
// OP_LOAD_V	28	105	7056
// OP_STOREP_V	7056	7053	0
// OP_ADDRESS	28	438	7059
// OP_LOAD_V	28	105	7062
// OP_STOREP_V	7062	7059	0
// OP_LOAD_F	28	442	7065
// OP_IFNOT	7065	7	0
// OP_ADDRESS	28	441	7066
// OP_LOAD_F	28	108	7067
// OP_LOAD_F	28	442	7068
// OP_SUB_F	7067	7068	7069
// OP_STOREP_F	7069	7066	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	441	7070
// OP_LOAD_F	28	108	7071
// OP_LOAD_F	28	145	7072
// OP_SUB_F	7071	7072	7073
// OP_ADD_F	7073	6077	7074
// OP_STOREP_F	7074	7070	0
// OP_ADDRESS	28	147	7075
// OP_STOREP_FNC	6894	7075	0
// OP_CALL0	6899	0	0
// OP_LOAD_S	28	197	7076
// OP_IFNOT	7076	6	0
// OP_ADDRESS	28	433	7077
// OP_STOREP_F	284	7077	0
// OP_ADDRESS	28	147	7078
// OP_STOREP_FNC	6998	7078	0
// OP_GOTO	7	0	0
// OP_LOAD_V	28	438	7079
// OP_STORE_V	28	4	0
// OP_STORE_V	7079	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	433	7082
// OP_STOREP_F	283	7082	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () func_plat =
{
    local entity t;
    
    if(!self.t_length)
    {
        self.t_length = 80.000;
    }
    
    
    if(!self.t_width)
    {
        self.t_width = TE_LAVASPLASH;
    }
    
    
    if(self.sounds == MSG_BROADCAST)
    {
        self.sounds = SILENT;
    }
    
    
    if(self.sounds == PLAT_LOW_TRIGGER)
    {
        precache_sound("plats/plat1.wav");
        precache_sound("plats/plat2.wav");
        self.noise = "plats/plat1.wav";
        self.noise1 = "plats/plat2.wav";
    }
    
    
    if(self.sounds == SILENT)
    {
        precache_sound("plats/medplat1.wav");
        precache_sound("plats/medplat2.wav");
        self.noise = "plats/medplat1.wav";
        self.noise1 = "plats/medplat2.wav";
    }
    
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.classname = "plat";
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    self.blocked = plat_crush;
    
    if(!self.speed)
    {
        self.speed = 150.000;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.origin;
    if(self.height)
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 7067 7068 7069
        self.pos2_z = ;
    }
    else    
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 7071 7072 7073
        self.pos2_z =  + SECRET_NO_SHOOT;
    }
    
    self.use = plat_trigger_use;
    plat_spawn_inside_trigger();
    if(self.targetname)
    {
        self.state = STATE_UP;
        self.use = plat_use;
    }
    else    
    {
        setorigin(self, self.pos2);
        self.state = STATE_BOTTOM;
    }
    
};

/* TYPE: EV_POINTER */ ;
void() train_next;
void() func_train_find;
void() train_blocked;
// train_blocked
// function begins at statement 10902
// OP_LOAD_F	28	373	7086
// OP_LT	31	7086	7087
// OP_IFNOT	7087	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	7088
// OP_ADD_F	31	1491	7089
// OP_STOREP_F	7089	7088	0
// OP_LOAD_F	28	420	7090
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	7090	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () train_blocked =
{
    
    if(time < self.attack_finished)
    {
        return; /* TODO retvalue? */
    }
    
    self.attack_finished = time + IMMEDIATE;
    T_Damage(other, self, self, self.dmg);
};

float ;
void() train_use;
// train_use
// function begins at statement 10916
// OP_LOAD_FNC	28	148	7092
// OP_NE_FNC	7092	7084	7093
// OP_IFNOT	7093	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7083	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () train_use =
{
    // *** UNPROCESSED OPCODE OP_NE_FNC 7092 7084 7093
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    train_next();
};

float ;
void() train_wait;
// train_wait
// function begins at statement 10922
// OP_LOAD_F	28	413	7095
// OP_IFNOT	7095	14	0
// OP_ADDRESS	28	150	7096
// OP_LOAD_F	28	102	7097
// OP_LOAD_F	28	413	7098
// OP_ADD_F	7097	7098	7099
// OP_STOREP_F	7099	7096	0
// OP_LOAD_S	28	208	7100
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7100	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	150	7101
// OP_LOAD_F	28	102	7102
// OP_ADD_F	7102	603	7103
// OP_STOREP_F	7103	7101	0
// OP_ADDRESS	28	148	7104
// OP_STOREP_FNC	7083	7104	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () train_wait =
{
    if(self.wait)
    {
        self.nextthink = self.ltime + self.wait;
        sound(self, CHAN_VOICE, self.noise, PLAT_LOW_TRIGGER, ATTN_NORM);
    }
    else    
    {
        self.nextthink = self.ltime + 0.100;
    }
    
    self.think = train_next;
};

/* TYPE: EV_POINTER */ ;
// train_next
// function begins at statement 10944
// OP_LOAD_S	28	196	7106
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	7106	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	7105	0
// OP_ADDRESS	28	196	7107
// OP_LOAD_S	7105	196	7108
// OP_STOREP_S	7108	7107	0
// OP_LOAD_S	28	196	7109
// OP_NOT_S	7109	0	7110
// OP_IFNOT	7110	3	0
// OP_STORE_V	7111	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	7105	413	7112
// OP_IFNOT	7112	5	0
// OP_ADDRESS	28	413	7113
// OP_LOAD_F	7105	413	7114
// OP_STOREP_F	7114	7113	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	413	7115
// OP_STOREP_F	337	7115	0
// OP_LOAD_S	28	209	7116
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7116	10	0
// OP_STORE_V	6898	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	7105	105	7117
// OP_LOAD_V	28	134	7120
// OP_SUB_V	7117	7120	7123
// OP_LOAD_F	28	364	7126
// OP_STORE_V	7123	4	0
// OP_STORE_V	7126	7	0
// OP_STORE_V	7094	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () train_next =
{
    local entity targ;
    targ = find(world, targetname, self.target);
    self.target = targ.target;
    // *** UNPROCESSED OPCODE OP_NOT_S 7109 0 7110
    
    if()
    {
        objerror("train_next: no next target");
    }
    
    if(targ.wait)
    {
        self.wait = targ.wait;
    }
    else    
    {
        self.wait = MSG_BROADCAST;
    }
    
    sound(self, CHAN_VOICE, self.noise1, PLAT_LOW_TRIGGER, ATTN_NORM);
    SUB_CalcMove(targ.origin - self.mins, self.speed, train_wait);
};

float ;
// func_train_find
// function begins at statement 10982
// OP_LOAD_S	28	196	7128
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	7128	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	7127	0
// OP_ADDRESS	28	196	7129
// OP_LOAD_S	7127	196	7130
// OP_STOREP_S	7130	7129	0
// OP_LOAD_V	7127	105	7131
// OP_LOAD_V	28	134	7134
// OP_SUB_V	7131	7134	7137
// OP_STORE_V	28	4	0
// OP_STORE_V	7137	7	0
// OP_CALL2	448	0	0
// OP_LOAD_S	28	197	7140
// OP_NOT_S	7140	0	7141
// OP_IFNOT	7141	7	0
// OP_ADDRESS	28	150	7142
// OP_LOAD_F	28	102	7143
// OP_ADD_F	7143	603	7144
// OP_STOREP_F	7144	7142	0
// OP_ADDRESS	28	148	7145
// OP_STOREP_FNC	7083	7145	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () func_train_find =
{
    local entity targ;
    targ = find(world, targetname, self.target);
    self.target = targ.target;
    setorigin(self, targ.origin - self.mins);
    // *** UNPROCESSED OPCODE OP_NOT_S 7140 0 7141
    
    if()
    {
        self.nextthink = self.ltime + 0.100;
        self.think = train_next;
    }
    
};

/* TYPE: EV_POINTER */ ;
void() func_train;
// func_train
// function begins at statement 11007
// OP_LOAD_F	28	364	7147
// OP_NOT_F	7147	0	7148
// OP_IFNOT	7148	3	0
// OP_ADDRESS	28	364	7149
// OP_STOREP_F	1884	7149	0
// OP_LOAD_S	28	196	7150
// OP_NOT_S	7150	0	7151
// OP_IFNOT	7151	3	0
// OP_STORE_V	7152	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	28	420	7153
// OP_NOT_F	7153	0	7154
// OP_IFNOT	7154	3	0
// OP_ADDRESS	28	420	7155
// OP_STOREP_F	6564	7155	0
// OP_LOAD_F	28	207	7156
// OP_EQ_F	7156	337	7157
// OP_IFNOT	7157	9	0
// OP_ADDRESS	28	208	7158
// OP_STOREP_S	5953	7158	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7159
// OP_STOREP_S	5953	7159	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_LOAD_F	28	207	7160
// OP_EQ_F	7160	6898	7161
// OP_IFNOT	7161	9	0
// OP_ADDRESS	28	208	7162
// OP_STOREP_S	7163	7162	0
// OP_STORE_V	7163	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7164
// OP_STOREP_S	7165	7164	0
// OP_STORE_V	7165	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	421	7166
// OP_STOREP_F	6898	7166	0
// OP_ADDRESS	28	104	7167
// OP_STOREP_F	241	7167	0
// OP_ADDRESS	28	103	7168
// OP_STOREP_F	232	7168	0
// OP_ADDRESS	28	149	7169
// OP_STOREP_FNC	7085	7169	0
// OP_ADDRESS	28	147	7170
// OP_STOREP_FNC	7091	7170	0
// OP_ADDRESS	28	129	7171
// OP_STOREP_S	7172	7171	0
// OP_LOAD_S	28	130	7173
// OP_STORE_V	28	4	0
// OP_STORE_V	7173	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	134	7174
// OP_LOAD_V	28	138	7177
// OP_STORE_V	28	4	0
// OP_STORE_V	7174	7	0
// OP_STORE_V	7177	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	7180
// OP_STORE_V	28	4	0
// OP_STORE_V	7180	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	150	7183
// OP_LOAD_F	28	102	7184
// OP_ADD_F	7184	603	7185
// OP_STOREP_F	7185	7183	0
// OP_ADDRESS	28	148	7186
// OP_STOREP_FNC	7084	7186	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () func_train =
{
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    // *** UNPROCESSED OPCODE OP_NOT_S 7150 0 7151
    
    if()
    {
        objerror("func_train without a target");
    }
    
    
    if(!self.dmg)
    {
        self.dmg = SILENT;
    }
    
    
    if(self.sounds == MSG_BROADCAST)
    {
        self.noise = "misc/null.wav";
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        precache_sound("misc/null.wav");
    }
    
    
    if(self.sounds == PLAT_LOW_TRIGGER)
    {
        self.noise = "plats/train2.wav";
        precache_sound("plats/train2.wav");
        self.noise1 = "plats/train1.wav";
        precache_sound("plats/train1.wav");
    }
    
    self.cnt = PLAT_LOW_TRIGGER;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.classname = "train";
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.100;
    self.think = func_train_find;
};

/* TYPE: EV_POINTER */ ;
void() misc_teleporttrain;
// misc_teleporttrain
// function begins at statement 11077
// OP_LOAD_F	28	364	7188
// OP_NOT_F	7188	0	7189
// OP_IFNOT	7189	3	0
// OP_ADDRESS	28	364	7190
// OP_STOREP_F	1884	7190	0
// OP_LOAD_S	28	196	7191
// OP_NOT_S	7191	0	7192
// OP_IFNOT	7192	3	0
// OP_STORE_V	7152	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	421	7193
// OP_STOREP_F	6898	7193	0
// OP_ADDRESS	28	104	7194
// OP_STOREP_F	237	7194	0
// OP_ADDRESS	28	103	7195
// OP_STOREP_F	232	7195	0
// OP_ADDRESS	28	149	7196
// OP_STOREP_FNC	7085	7196	0
// OP_ADDRESS	28	147	7197
// OP_STOREP_FNC	7091	7197	0
// OP_ADDRESS	28	121	7198
// OP_STOREP_V	7201	7198	0
// OP_ADDRESS	28	208	7204
// OP_STOREP_S	5953	7204	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7205
// OP_STOREP_S	5953	7205	0
// OP_STORE_V	5953	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7206	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7206	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	134	7207
// OP_LOAD_V	28	138	7210
// OP_STORE_V	28	4	0
// OP_STORE_V	7207	7	0
// OP_STORE_V	7210	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	7213
// OP_STORE_V	28	4	0
// OP_STORE_V	7213	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	150	7216
// OP_LOAD_F	28	102	7217
// OP_ADD_F	7217	603	7218
// OP_STOREP_F	7218	7216	0
// OP_ADDRESS	28	148	7219
// OP_STOREP_FNC	7084	7219	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () misc_teleporttrain =
{
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    // *** UNPROCESSED OPCODE OP_NOT_S 7191 0 7192
    
    if()
    {
        objerror("func_train without a target");
    }
    
    self.cnt = PLAT_LOW_TRIGGER;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.avelocity = '100.000 200.000 300.000';
    self.noise = "misc/null.wav";
    precache_sound("misc/null.wav");
    self.noise1 = "misc/null.wav";
    precache_sound("misc/null.wav");
    precache_model2("progs/teleport.mdl");
    setmodel(self, "progs/teleport.mdl");
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.100;
    self.think = func_train_find;
};

