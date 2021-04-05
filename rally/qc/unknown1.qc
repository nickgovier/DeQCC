void (vector tdest, float tspeed, void() func) SUB_CalcMove;
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;
void () SUB_CalcMoveDone;
void () SUB_CalcAngleMoveDone;
void () SUB_Null;
void () SUB_UseTargets;
void () SUB_Remove;
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage;
float (entity e, float healamount, float ignore) T_Heal;
float (entity targ, entity inflictor) CanDamage;
entity (entity bot) FindGoalMarker;
void () BecomeExplosion;
void () W_Attack;
void () ImpulseCommands;
vector plyr_angles;
vector plyr_velocity;
.entity veh_tail;
.entity veh_body;
.entity fwhl;
.entity rwhl;
.entity hl_l;
.entity hl_r;
.entity hl_m;
.entity gun;
.vector veh_dir;
.vector steer_angles;
.vector old_angles;
.vector old_velocity;
.vector back_vel;
.vector lastmove;
.float num_skins;
.vector body_roll;
.float body_lean;
.vector body_roll_vel;
.float use_surface_angle;
.float last_speed;
.float last_engine;
.float last_jump_z;
.float slide_ratio;
.float slide_donut_vel;
.vector roll_velocity;
.vector last_roll;
.float old_dir;
.float reversing;
.float reversekey;
.float accelerating;
.float zoomin;
.float zoomout;
.float reverse_release;
.float current_surface;
.float cam;
.float tracking_speed;
.float chasecam_zoom;
.float last_prevsurf;
.float prev_surfangle1;
.float prev_surfangle2;
.float prev_surfangle3;
.float prev_surfangle4;
.float prev_surfangle5;
.float last_jump_touch;
.vector last_velocity;
.entity chasecam;
.float last_flat_z;
.string is_racer;
.float car_index;
.vector fwhl_offset;
.vector rwhl_offset;
.float last_marker_num;
.entity last_marker;
.entity next_marker;
.float last_lap;
.float last_lap_time;
.float fastest_lap;
.float race_time;
.float racing_flags;
.float horn_time;
.float slide_time;
.float last_idle;
.float last_rev;
.float last_backrev;
.float last_slide;
.float last_steerchange;
.float last_engine1;
.float last_engine2;
.float last_engine_ratio;
.float last_engine_chan;
.float last_crash;
.float last_boost;
.float last_turnaround;
.float last_bot_marker;
.float last_comment;
.float last_land;
.float last_flags;
.float last_drift;
.float leave_ground_time;
.float ignition_time;
.float position;
.entity ahead;
.entity behind;
.float SNDLEN_ENGINE1;
.float SNDLEN_ENGINE2;
.string SAMP_ENGINE1;
.string SAMP_ENGINE2;
.entity mine_attached;
.entity death_thinker;
.float last_heading;
.float steering;
.float time_remaining;
.float last_time_remaining;
.float nailfire;
.float client_settings;
.float full_traction_time;
.float cult_cars;
.float bot_flags;
.float misc_flags;
.float basemodel;
.string nexttrack;
.string race_type;
.float start_challenge;
float challenge;
float QR_NOT_RACING = 1;
float QR_FINISHED_RACE = 2;
float QR_START_READY = 4;
float QR_RACING = 8;
float QR_HEADLIGHTS_ON = 16;
float QR_SOMEONE_FINISHED = 32;
float QR_NO_STARTFINISH = 64;
float QR_JUST_LANDED = 128;
float QR_OBSERVER = 256;
float QR_FULL_TRACTION = 512;
float QR_MINE_EXPLODED = 1024;
float QR_NO_SIDEWAYS_ROLL = 2048;
float QR_OUT_OF_TIME = 4096;
float QR_RESPAWN_FLAG = 8192;
float MISC_HORN_ON = 1;
float CS_CAM = 1;
float CS_CAR = 2;
float CS_WHEEL = 4;
float CS_ZOOM = 8;
float CS_TRACKING = 16;
float BF_STUCK = 1;
float BF_AVOID = 2;
float BF_STARTJUMP = 4;
float CAM_CHASECLOSE = 1;
float CAM_CHASEFAR = 2;
float CAM_INCAR = 3;
float CAM_TEST = 4;
float RT_TIME_TRIAL = 1;
float RT_BEAT_BOTS = 2;
float hold_flag;
entity starter;
entity positioner;
float all_fastest_lap;
float global_racing_flags;
float first_startfinish_flag;
float first_engine_start;
entity current_leader;
float race_start_time;
float race_finish_time;
float inter_race_time;
float allow_newplayer;
float init_done;
float SetInterRaceTime;
float num_markers;
float num_bots;
float lose_speed_on_slide;
float num_finished;
float racing_type;
float rally_type_index;
entity last_roo_spawn;
entity last_dude_spawn;
entity last_observer_cam;
entity first_observer_cam;
float cult_kills;
entity server_client;
float SVC_SETVIEWPORT = 5;
float SVC_SOUND = 6;
float SVC_SETVIEWANGLES = 10;
float VEH_WIDTH = 30;
float VEH_LENGTH = 30;
float VEH_HEIGHT = 34;
float TAIL_DIST = 60;
float SURFACE_ANGLE_WIDTH = 12;
float SURFACE_ANGLE_LENGTH = -19;
vector VEH_MIN = '-16.000 -16.000 -24.000';
vector VEH_MAX = '16.000 16.000 32.000';
float GUN_ZOFS = 6;
float STEERING_CENTERSPEED = 35;
float STEERING_TURNSPEED = 25;
vector VEH_WHEEL_MIN = '-4.000 -14.000 -14.000';
vector VEH_WHEEL_MAX = '4.000 14.000 14.000';
vector VEH_BODY_OFFSET = '0.000 0.000 -5.000';
vector VEH_WHEEL_OFFSET = '0.000 -4.000 -1.000';
float VEH_MAX_STEER = 30;
float VEH_ACCEL_SLOWDOWN = 0.1;
float REAR_TRACTION = 15;
float MAX_SPEED = 900;
float REVERSE_SPEED = 1200;
float MAX_SLIDING_ANGLE = 90;
float STEER_CORRECTION_RATIO = 0.4;
float SLIDING_LOSE_CONTROL_ANGLE = 25;
vector ROLL_PER_SECOND = '60.000 0.000 80.000';
float MAX_ANGLE_PER_SECOND = 5;
float dist_infront;
float SLIDING_SLOWDOWN = 0.9;
float ZOOM_SPEED = 60;
float DEFAULT_CHASECAM_ZOOM = 30;
float NUM_CARS = 5;
float NUM_DUKES = 20;
float DEFAULT_TRACKING_SPEED = 10;
float TIMETRIAL_STARTTIME = 25;
float OUT_OF_TIME_SLOWDOWN = 300;
float SNDLEN_IDLE = 0.7;
float SNDLEN_REV = 0.9;
float SNDLEN_HIGHREV = 3;
float SNDLEN_SLIDE = 0.3;
float SNDLEN_IGNITION = 1.2;
float SNDLEN_CRASH = 0.5;
float SNDLEN_HORN = 0.4;
float SNDLEN_BOOST = 1;
float SNDLEN_TURNAROUND = 2;
float SNDLEN_LAND = 1;
float SNDLEN_DRIFT = 1.5;
float SURF_UNKNOWN = 0;
float SURF_MUD = 1;
float SURF_ASPHALT = 2;
float SURF_GRASS = 3;
float STEER_CENTER = 0;
float STEER_LEFT = 1;
float STEER_RIGHT = 2;
float FRAGS_PER_LAP = 5;
float FRAGS_FASTEST_LAP = 5;
// rally_centre
// function begins at statement 1, parm_start=817
// OP_STATE	817	816	0
// OP_DONE	0	0	0
void () rally_centre = [0, rally_centre]
{
};

// rally_right10
// function begins at statement 3, parm_start=819
// OP_STATE	819	818	0
// OP_DONE	0	0	0
void () rally_right10 = [1, rally_right10]
{
};

// rally_right20
// function begins at statement 5, parm_start=821
// OP_STATE	821	820	0
// OP_DONE	0	0	0
void () rally_right20 = [2, rally_right20]
{
};

// rally_right30
// function begins at statement 7, parm_start=823
// OP_STATE	823	822	0
// OP_DONE	0	0	0
void () rally_right30 = [3, rally_right30]
{
};

// rally_left10
// function begins at statement 9, parm_start=825
// OP_STATE	825	824	0
// OP_DONE	0	0	0
void () rally_left10 = [4, rally_left10]
{
};

// rally_left20
// function begins at statement 11, parm_start=827
// OP_STATE	827	826	0
// OP_DONE	0	0	0
void () rally_left20 = [5, rally_left20]
{
};

// rally_left30
// function begins at statement 13, parm_start=829
// OP_STATE	829	828	0
// OP_DONE	0	0	0
void () rally_left30 = [6, rally_left30]
{
};

// steer_centre
// function begins at statement 15, parm_start=831
// OP_STATE	831	830	0
// OP_ADDRESS	28	156	832
// OP_STOREP_F	827	832	0
// OP_DONE	0	0	0
void () steer_centre = [11, steer_centre]
{
    self.weaponframe = 5;
};

// steer_right10
// function begins at statement 19, parm_start=834
// OP_STATE	834	833	0
// OP_ADDRESS	28	156	835
// OP_STOREP_F	829	835	0
// OP_DONE	0	0	0
void () steer_right10 = [12, steer_right10]
{
    self.weaponframe = 6;
};

// steer_right20
// function begins at statement 23, parm_start=837
// OP_STATE	837	836	0
// OP_ADDRESS	28	156	838
// OP_STOREP_F	839	838	0
// OP_DONE	0	0	0
void () steer_right20 = [13, steer_right20]
{
    self.weaponframe = 7;
};

// steer_right30
// function begins at statement 27, parm_start=841
// OP_STATE	841	840	0
// OP_ADDRESS	28	156	842
// OP_STOREP_F	843	842	0
// OP_DONE	0	0	0
void () steer_right30 = [14, steer_right30]
{
    self.weaponframe = 8;
};

// steer_right40
// function begins at statement 31, parm_start=845
// OP_STATE	845	844	0
// OP_ADDRESS	28	156	846
// OP_STOREP_F	847	846	0
// OP_DONE	0	0	0
void () steer_right40 = [15, steer_right40]
{
    self.weaponframe = 9;
};

// steer_left10
// function begins at statement 35, parm_start=849
// OP_STATE	839	848	0
// OP_ADDRESS	28	156	849
// OP_STOREP_F	819	849	0
// OP_DONE	0	0	0
void () steer_left10 = [7, steer_left10]
{
    self.weaponframe = 1;
};

// steer_left20
// function begins at statement 39, parm_start=851
// OP_STATE	843	850	0
// OP_ADDRESS	28	156	851
// OP_STOREP_F	821	851	0
// OP_DONE	0	0	0
void () steer_left20 = [8, steer_left20]
{
    self.weaponframe = 2;
};

// steer_left30
// function begins at statement 43, parm_start=853
// OP_STATE	847	852	0
// OP_ADDRESS	28	156	853
// OP_STOREP_F	823	853	0
// OP_DONE	0	0	0
void () steer_left30 = [9, steer_left30]
{
    self.weaponframe = 3;
};

// steer_left40
// function begins at statement 47, parm_start=855
// OP_STATE	855	854	0
// OP_ADDRESS	28	156	856
// OP_STOREP_F	825	856	0
// OP_DONE	0	0	0
void () steer_left40 = [10, steer_left40]
{
    self.weaponframe = 4;
};

void () StartDemoCredits;
void (vector org) spawn_tfog;
float (float v) anglemod;
// angle_diff
// function begins at statement 51, parm_start=861
// OP_GT	862	861	863
// OP_IFNOT	863	11	0
// OP_SUB_F	862	861	864
// OP_GT	864	865	866
// OP_IFNOT	866	5	0
// OP_SUB_F	862	867	868
// OP_SUB_F	861	868	869
// OP_RETURN	869	0	0
// OP_GOTO	3	0	0
// OP_SUB_F	861	862	870
// OP_RETURN	870	0	0
// OP_GOTO	10	0	0
// OP_SUB_F	861	862	871
// OP_GT	871	865	872
// OP_IFNOT	872	5	0
// OP_ADD_F	862	867	873
// OP_SUB_F	861	873	874
// OP_RETURN	874	0	0
// OP_GOTO	3	0	0
// OP_SUB_F	861	862	875
// OP_RETURN	875	0	0
// OP_DONE	0	0	0
float (float a1, float a2) angle_diff = 
{
    if(a2 > a1)
    {
        if((a2 - a1) > 180)
        {
            return a1 - (a2 - 360);
        }
        else
        {
            return a1 - a2;
        }
        
    }
    else
    {
        if((a1 - a2) > 180)
        {
            return a1 - (a2 + 360);
        }
        else
        {
            return a1 - a2;
        }
        
    }
    
};

// commentary
// function begins at statement 73, parm_start=877
// OP_LOAD_S	877	129	879
// OP_EQ_S	879	880	881
// OP_LOAD_F	28	660	882
// OP_SUB_F	31	883	884
// OP_LT	882	884	885
// OP_AND	881	885	886
// OP_IFNOT	886	12	0
// OP_STORE_V	877	4	0
// OP_STORE_V	887	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	877	4	0
// OP_STORE_V	878	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	877	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	660	889
// OP_STOREP_F	31	889	0
// OP_DONE	0	0	0
void (entity player, string sample) commentary = 
{
    
    if((player.classname == "player") && (self.last_comment < (time - 1.5)))
    {
        stuffcmd(player, "play rally/");
        stuffcmd(player, sample);
        stuffcmd(player, "\n");
        self.last_comment = time;
    }
    
};

// SpawnPart
// function begins at statement 92, parm_start=891
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	897	0
// OP_ADDRESS	897	117	905
// OP_LOAD_V	28	117	908
// OP_STOREP_V	908	905	0
// OP_ADDRESS	897	104	911
// OP_STOREP_F	243	911	0
// OP_ADDRESS	897	103	912
// OP_STOREP_F	239	912	0
// OP_STORE_V	897	4	0
// OP_STORE_V	891	7	0
// OP_STORE_V	894	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	897	4	0
// OP_LOAD_V	28	105	913
// OP_ADD_V	913	916	919
// OP_STORE_V	919	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	897	201	922
// OP_STOREP_ENT	28	922	0
// OP_ADDRESS	897	113	923
// OP_STOREP_V	926	923	0
// OP_STORE_ENT	28	904	0
// OP_STORE_ENT	897	28	0
// OP_ADDRESS	897	182	929
// OP_STOREP_F	228	929	0
// OP_STORE_ENT	904	28	0
// OP_RETURN	897	0	0
// OP_DONE	0	0	0
entity (vector vec_min, vector vec_max) SpawnPart = 
{
    local entity w;
    local vector vect_offset_fwd;
    local vector vect_offset_side;
    local entity temp_e;
    w = spawn();
    w.angles = self.angles;
    w.solid = SOLID_NOT;
    w.movetype = MOVETYPE_NOCLIP;
    setsize(w, vec_min, vec_max);
    setorigin(w, self.origin + '0.000 0.000 4.000');
    w.owner = self;
    w.velocity = '0.000 0.000 0.000';
    temp_e = self;
    self = w;
    w.flags = FL_ONGROUND;
    self = temp_e;
    return w;
};

void (entity plyr) CallClientPrefs;
void () W_SetCurrentAmmo;
// SetCarDetails
// function begins at statement 121, parm_start=933
// OP_LOAD_ENT	28	550	933
// OP_NE_E	933	30	934
// OP_IFNOT	934	4	0
// OP_LOAD_ENT	28	550	935
// OP_ADDRESS	935	131	936
// OP_STOREP_F	817	936	0
// OP_LOAD_F	28	628	937
// OP_LE	937	821	938
// OP_IFNOT	938	52	0
// OP_ADDRESS	28	579	939
// OP_STOREP_F	821	939	0
// OP_LOAD_ENT	28	548	940
// OP_ADDRESS	940	132	941
// OP_LOAD_F	28	132	942
// OP_STOREP_F	942	941	0
// OP_ADDRESS	28	631	943
// OP_STOREP_F	829	943	0
// OP_ADDRESS	28	635	944
// OP_STOREP_F	945	944	0
// OP_ADDRESS	28	632	946
// OP_STOREP_F	947	946	0
// OP_ADDRESS	28	636	948
// OP_STOREP_F	947	948	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	950
// OP_EQ_F	738	819	951
// OP_AND	950	951	952
// OP_IFNOT	952	6	0
// OP_LOAD_ENT	28	548	953
// OP_STORE_V	953	4	0
// OP_STORE_V	954	7	0
// OP_CALL2	463	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	548	955
// OP_STORE_V	955	4	0
// OP_STORE_V	956	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	685	957
// OP_LOAD_ENT	28	548	958
// OP_LOAD_F	958	93	959
// OP_STOREP_F	959	957	0
// OP_LOAD_ENT	28	548	960
// OP_LOAD_V	960	105	961
// OP_STORE_V	961	4	0
// OP_CALL1	858	0	0
// OP_LOAD_S	28	129	964
// OP_EQ_S	964	880	965
// OP_IFNOT	965	11	0
// OP_LOAD_F	28	132	966
// OP_EQ_F	966	817	967
// OP_IFNOT	967	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	968	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	969	7	0
// OP_CALL2	520	0	0
// OP_GOTO	161	0	0
// OP_LOAD_F	28	628	970
// OP_EQ_F	970	823	971
// OP_IFNOT	971	45	0
// OP_ADDRESS	28	579	972
// OP_STOREP_F	819	972	0
// OP_LOAD_ENT	28	548	973
// OP_ADDRESS	973	132	974
// OP_LOAD_F	28	132	975
// OP_STOREP_F	975	974	0
// OP_ADDRESS	28	631	976
// OP_STOREP_F	829	976	0
// OP_ADDRESS	28	635	977
// OP_STOREP_F	945	977	0
// OP_ADDRESS	28	632	978
// OP_STOREP_F	947	978	0
// OP_ADDRESS	28	636	979
// OP_STOREP_F	947	979	0
// OP_LOAD_S	28	129	980
// OP_EQ_S	980	880	981
// OP_IFNOT	981	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	982	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	983
// OP_EQ_F	738	819	984
// OP_AND	983	984	985
// OP_IFNOT	985	6	0
// OP_LOAD_ENT	28	548	986
// OP_STORE_V	986	4	0
// OP_STORE_V	987	7	0
// OP_CALL2	463	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	548	988
// OP_STORE_V	988	4	0
// OP_STORE_V	989	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	685	990
// OP_LOAD_ENT	28	548	991
// OP_LOAD_F	991	93	992
// OP_STOREP_F	992	990	0
// OP_LOAD_ENT	28	548	993
// OP_LOAD_V	993	105	994
// OP_STORE_V	994	4	0
// OP_CALL1	858	0	0
// OP_GOTO	114	0	0
// OP_LOAD_F	28	628	997
// OP_EQ_F	997	825	998
// OP_IFNOT	998	58	0
// OP_ADDRESS	28	579	999
// OP_STOREP_F	821	999	0
// OP_LOAD_ENT	28	548	1000
// OP_ADDRESS	1000	132	1001
// OP_LOAD_F	28	132	1002
// OP_STOREP_F	1002	1001	0
// OP_ADDRESS	28	631	1003
// OP_STOREP_F	829	1003	0
// OP_ADDRESS	28	635	1004
// OP_STOREP_F	1005	1004	0
// OP_ADDRESS	28	632	1006
// OP_STOREP_F	947	1006	0
// OP_ADDRESS	28	636	1007
// OP_STOREP_F	947	1007	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	1008
// OP_EQ_F	738	819	1009
// OP_AND	1008	1009	1010
// OP_IFNOT	1010	6	0
// OP_LOAD_ENT	28	548	1011
// OP_STORE_V	1011	4	0
// OP_STORE_V	1012	7	0
// OP_CALL2	463	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	548	1013
// OP_STORE_V	1013	4	0
// OP_STORE_V	1014	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	685	1015
// OP_LOAD_ENT	28	548	1016
// OP_LOAD_F	1016	93	1017
// OP_STOREP_F	1017	1015	0
// OP_LOAD_ENT	28	550	1018
// OP_NE_E	1018	30	1019
// OP_IFNOT	1019	4	0
// OP_LOAD_ENT	28	550	1020
// OP_ADDRESS	1020	131	1021
// OP_STOREP_F	839	1021	0
// OP_LOAD_ENT	28	548	1022
// OP_LOAD_V	1022	105	1023
// OP_STORE_V	1023	4	0
// OP_CALL1	858	0	0
// OP_LOAD_S	28	129	1026
// OP_EQ_S	1026	880	1027
// OP_IFNOT	1027	11	0
// OP_LOAD_F	28	132	1028
// OP_EQ_F	1028	817	1029
// OP_IFNOT	1029	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1030	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1031	7	0
// OP_CALL2	520	0	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	628	1032
// OP_EQ_F	1032	827	1033
// OP_IFNOT	1033	51	0
// OP_ADDRESS	28	579	1034
// OP_STOREP_F	821	1034	0
// OP_LOAD_ENT	28	548	1035
// OP_ADDRESS	1035	132	1036
// OP_LOAD_F	28	132	1037
// OP_STOREP_F	1037	1036	0
// OP_ADDRESS	28	631	1038
// OP_STOREP_F	829	1038	0
// OP_ADDRESS	28	635	1039
// OP_STOREP_F	945	1039	0
// OP_ADDRESS	28	632	1040
// OP_STOREP_F	947	1040	0
// OP_ADDRESS	28	636	1041
// OP_STOREP_F	947	1041	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	1042
// OP_EQ_F	738	819	1043
// OP_AND	1042	1043	1044
// OP_IFNOT	1044	6	0
// OP_LOAD_ENT	28	548	1045
// OP_STORE_V	1045	4	0
// OP_STORE_V	1046	7	0
// OP_CALL2	463	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	548	1047
// OP_STORE_V	1047	4	0
// OP_STORE_V	1048	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	685	1049
// OP_LOAD_ENT	28	548	1050
// OP_LOAD_F	1050	93	1051
// OP_STOREP_F	1051	1049	0
// OP_LOAD_ENT	28	548	1052
// OP_LOAD_V	1052	105	1053
// OP_STORE_V	1053	4	0
// OP_CALL1	858	0	0
// OP_LOAD_S	28	129	1056
// OP_EQ_S	1056	880	1057
// OP_IFNOT	1057	11	0
// OP_LOAD_F	28	132	1058
// OP_EQ_F	1058	817	1059
// OP_IFNOT	1059	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1060	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1061	7	0
// OP_CALL2	520	0	0
// OP_GT	738	819	1062
// OP_IFNOT	1062	2	0
// OP_CALL0	931	0	0
// OP_DONE	0	0	0
void () SetCarDetails = 
{
    
    if(self.rwhl != world)
    {
        self.rwhl.frame = 0;
    }
    
    if(self.car_index <= 2)
    {
        self.num_skins = 2;
        self.veh_body.skin = self.skin;
        self.fwhl_offset_y = 6;
        self.rwhl_offset_y = -26.5;
        self.fwhl_offset_z = -2;
        self.rwhl_offset_z = -2;
        if(!cvar("deathmatch") && (rally_type_index == 1))
        {
            setmodel(self.veh_body, "models/sumacar.mdl");
        }
        else
        {
            setmodel(self.veh_body, "models/sumabase.mdl");
            self.basemodel = self.veh_body.modelindex;
        }
        
        spawn_tfog(self.veh_body.origin);
        
        if(self.classname == "player")
        {
            if(self.skin == 0)
            {
                centerprint(self, "Stock Car selected");
            }
            else
            {
                centerprint(self, "Commodore selected");
            }
            
        }
        
    }
    else
    {
        if(self.car_index == 3)
        {
            self.num_skins = 1;
            self.veh_body.skin = self.skin;
            self.fwhl_offset_y = 6;
            self.rwhl_offset_y = -26.5;
            self.fwhl_offset_z = -2;
            self.rwhl_offset_z = -2;
            
            if(self.classname == "player")
            {
                centerprint(self, "4WD Hatchback selected");
            }
            
            if(!cvar("deathmatch") && (rally_type_index == 1))
            {
                setmodel(self.veh_body, "models/zumacar.mdl");
            }
            else
            {
                setmodel(self.veh_body, "models/zumabase.mdl");
                self.basemodel = self.veh_body.modelindex;
            }
            
            spawn_tfog(self.veh_body.origin);
        }
        else
        {
            if(self.car_index == 4)
            {
                self.num_skins = 2;
                self.veh_body.skin = self.skin;
                self.fwhl_offset_y = 6;
                self.rwhl_offset_y = -22;
                self.fwhl_offset_z = -2;
                self.rwhl_offset_z = -2;
                if(!cvar("deathmatch") && (rally_type_index == 1))
                {
                    setmodel(self.veh_body, "models/mycar.mdl");
                }
                else
                {
                    setmodel(self.veh_body, "models/mgnabase.mdl");
                    self.basemodel = self.veh_body.modelindex;
                }
                
                
                if(self.rwhl != world)
                {
                    self.rwhl.frame = 7;
                }
                
                spawn_tfog(self.veh_body.origin);
                
                if(self.classname == "player")
                {
                    if(self.skin == 0)
                    {
                        centerprint(self, "Magna selected");
                    }
                    else
                    {
                        centerprint(self, "BMW Z3 selected");
                    }
                    
                }
                
            }
            else
            {
                
                if(self.car_index == 5)
                {
                    self.num_skins = 2;
                    self.veh_body.skin = self.skin;
                    self.fwhl_offset_y = 6;
                    self.rwhl_offset_y = -26.5;
                    self.fwhl_offset_z = -2;
                    self.rwhl_offset_z = -2;
                    if(!cvar("deathmatch") && (rally_type_index == 1))
                    {
                        setmodel(self.veh_body, "models/triton.mdl");
                    }
                    else
                    {
                        setmodel(self.veh_body, "models/tritbase.mdl");
                        self.basemodel = self.veh_body.modelindex;
                    }
                    
                    spawn_tfog(self.veh_body.origin);
                    
                    if(self.classname == "player")
                    {
                        if(self.skin == 0)
                        {
                            centerprint(self, "Triton selected");
                        }
                        else
                        {
                            centerprint(self, "Hilux selected");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(rally_type_index > 1)
    {
        W_SetCurrentAmmo();
    }
    
};

// CallClientPrefs
// function begins at statement 345, parm_start=1063
// OP_LOAD_S	1063	129	1065
// OP_NE_S	1065	880	1066
// OP_IFNOT	1066	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1064	0
// OP_STORE_ENT	1063	28	0
// OP_LOAD_F	28	680	1067
// OP_BITAND	1067	705	1068
// OP_NOT_F	1068	0	1069
// OP_IFNOT	1069	9	0
// OP_STORE_V	1063	4	0
// OP_STORE_V	1070	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	680	1071
// OP_LOAD_F	28	680	1072
// OP_BITOR	1072	705	1073
// OP_STOREP_F	1073	1071	0
// OP_GOTO	48	0	0
// OP_LOAD_F	28	680	1074
// OP_BITAND	1074	707	1075
// OP_NOT_F	1075	0	1076
// OP_IFNOT	1076	9	0
// OP_STORE_V	1063	4	0
// OP_STORE_V	1077	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	680	1078
// OP_LOAD_F	28	680	1079
// OP_BITOR	1079	707	1080
// OP_STOREP_F	1080	1078	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	680	1081
// OP_BITAND	1081	706	1082
// OP_NOT_F	1082	0	1083
// OP_IFNOT	1083	9	0
// OP_STORE_V	1063	4	0
// OP_STORE_V	1084	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	680	1085
// OP_LOAD_F	28	680	1086
// OP_BITOR	1086	706	1087
// OP_STOREP_F	1087	1085	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	680	1088
// OP_BITAND	1088	708	1089
// OP_NOT_F	1089	0	1090
// OP_IFNOT	1090	9	0
// OP_STORE_V	1063	4	0
// OP_STORE_V	1091	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	680	1092
// OP_LOAD_F	28	680	1093
// OP_BITOR	1093	708	1094
// OP_STOREP_F	1094	1092	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	680	1095
// OP_BITAND	1095	709	1096
// OP_NOT_F	1096	0	1097
// OP_IFNOT	1097	8	0
// OP_STORE_V	1063	4	0
// OP_STORE_V	1098	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	680	1099
// OP_LOAD_F	28	680	1100
// OP_BITOR	1100	709	1101
// OP_STOREP_F	1101	1099	0
// OP_STORE_ENT	1064	28	0
// OP_DONE	0	0	0
void (entity plyr) CallClientPrefs = 
{
    local entity oself;
    
    if(plyr.classname != "player")
    {
        return;
    }
    
    oself = self;
    self = plyr;
    if(!(self.client_settings & CS_CAM))
    {
        stuffcmd(plyr, "setcam\n");
        self.client_settings = self.client_settings | CS_CAM;
    }
    else
    {
        if(!(self.client_settings & CS_WHEEL))
        {
            stuffcmd(plyr, "setwheel\n");
            self.client_settings = self.client_settings | CS_WHEEL;
        }
        else
        {
            if(!(self.client_settings & CS_CAR))
            {
                stuffcmd(plyr, "setcar\n");
                self.client_settings = self.client_settings | CS_CAR;
            }
            else
            {
                if(!(self.client_settings & CS_ZOOM))
                {
                    stuffcmd(plyr, "setzoom\n");
                    self.client_settings = self.client_settings | CS_ZOOM;
                }
                else
                {
                    
                    if(!(self.client_settings & CS_TRACKING))
                    {
                        stuffcmd(plyr, "settracking\n");
                        self.client_settings = self.client_settings | CS_TRACKING;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self = oself;
};

// FindFirstMarker
// function begins at statement 412, parm_start=1103
// OP_STORE_ENT	30	1103	0
// OP_STORE_V	1103	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1104	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	1103	0
// OP_NE_E	1	30	1105
// OP_IFNOT	1105	6	0
// OP_LOAD_F	1103	158	1106
// OP_EQ_F	1106	819	1107
// OP_IFNOT	1107	2	0
// OP_RETURN	1103	0	0
// OP_GOTO	-11	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity () FindFirstMarker = 
{
    local entity trav;
    trav = world;
    trav = find(trav, classname, "rally_marker");
    
    while(find(trav, classname, "rally_marker") != world)
    {
        
        if(trav.ammo_shells == 1)
        {
            return trav;
        }
        
    }
    
    return world;
};

// angle_think
// function begins at statement 427, parm_start=1109
// OP_LOAD_ENT	28	201	1109
// OP_STORE_ENT	1109	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	745	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_ENT	28	201	1110
// OP_LOAD_ENT	1110	625	1111
// OP_STORE_V	1111	7	0
// OP_CALL2	514	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1112	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	81	119	1113
// OP_STORE_V	1113	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	81	120	1114
// OP_STORE_V	1114	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1115	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1116	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1117	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1118	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1119	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1120	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1121	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1122	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1123	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1124	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1125	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1126	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	81	4	0
// OP_STORE_V	1123	7	0
// OP_CALL2	483	0	0
// OP_LOAD_ENT	28	201	1127
// OP_STORE_V	1127	4	0
// OP_CALL1	930	0	0
// OP_LT	738	823	1128
// OP_IFNOT	1128	5	0
// OP_LOAD_ENT	28	201	1129
// OP_ADDRESS	1129	639	1130
// OP_CALL0	1102	0	0
// OP_STOREP_ENT	1	1130	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () angle_think = 
{
    msg_entity = self.owner;
    WriteByte(MSG_ONE, SVC_SETVIEWPORT);
    WriteEntity(MSG_ONE, self.owner.chasecam);
    WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
    WriteAngle(MSG_ONE, 20);
    WriteAngle(MSG_ONE, msg_entity.angles_y);
    WriteAngle(MSG_ONE, msg_entity.angles_z);
    stuffcmd(msg_entity, "+mlook\n");
    stuffcmd(msg_entity, "cl_movespeedkey 1\n");
    stuffcmd(msg_entity, "cl_anglespeedkey 1.5\n");
    stuffcmd(msg_entity, "cl_forwardspeed 2300\n");
    stuffcmd(msg_entity, "cl_rollangle 0\n");
    stuffcmd(msg_entity, "cl_sidespeed 0\n");
    stuffcmd(msg_entity, "cl_backspeed 0\n");
    stuffcmd(msg_entity, "cl_bob 0\n");
    sprint(msg_entity, "-----------------------------------\n");
    sprint(msg_entity, " Welcome to QuakeRally!       v1.2 \n");
    sprint(msg_entity, " Brought to you by the IMPACT TEAM \n");
    sprint(msg_entity, "  ->  http://impact.frag.com  <-   \n");
    sprint(msg_entity, "-----------------------------------\n");
    CallClientPrefs(self.owner);
    
    if(rally_type_index < 3)
    {
        self.owner.next_marker = FindFirstMarker();
    }
    
    remove(self);
};

// fade_to_normal
// function begins at statement 502, parm_start=1132
// OP_ADDRESS	28	378	1133
// OP_LOAD_F	28	378	1134
// OP_LOAD_F	28	647	1136
// OP_SUB_F	31	1136	1137
// OP_MUL_F	1135	1137	1138
// OP_SUB_F	1134	1138	1139
// OP_STOREP_F	1139	1133	0
// OP_LOAD_F	28	378	1140
// OP_LT	1140	817	1141
// OP_IFNOT	1141	3	0
// OP_ADDRESS	28	378	1142
// OP_STOREP_F	817	1142	0
// OP_LOAD_F	28	378	1143
// OP_STORE_V	1143	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	1132	0
// OP_LOAD_ENT	28	201	1144
// OP_STORE_V	1144	4	0
// OP_STORE_V	1145	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	201	1146
// OP_STORE_V	1146	4	0
// OP_STORE_V	1132	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	201	1147
// OP_STORE_V	1147	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	378	1148
// OP_EQ_F	1148	817	1149
// OP_IFNOT	1149	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	647	1150
// OP_STOREP_F	31	1150	0
// OP_ADDRESS	28	150	1151
// OP_ADD_F	31	1152	1153
// OP_STOREP_F	1153	1151	0
// OP_DONE	0	0	0
void () fade_to_normal = 
{
    local string intensity;
    self.speed = self.speed - (250 * (time - self.last_idle));
    
    if(self.speed < 0)
    {
        self.speed = 0;
    }
    
    intensity = ftos(self.speed);
    stuffcmd(self.owner, "v_cshift 0 0 0 ");
    stuffcmd(self.owner, intensity);
    stuffcmd(self.owner, "\n");
    
    if(self.speed == 0)
    {
        remove(self);
        return;
    }
    
    self.last_idle = time;
    self.nextthink = time + 0.2;
};

void () MoveVehicle;
void (entity targ_owner) LaserTargeterToggle;
// CreateVehicleEntities
// function begins at statement 542, parm_start=1157
// OP_STORE_V	1171	4	0
// OP_STORE_V	1172	7	0
// OP_CALL2	519	0	0
// OP_STORE_V	1173	4	0
// OP_STORE_V	1172	7	0
// OP_CALL2	519	0	0
// OP_LOAD_S	28	129	1174
// OP_EQ_S	1174	880	1175
// OP_IFNOT	1175	14	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1160	0
// OP_ADDRESS	1160	378	1176
// OP_STOREP_F	1177	1176	0
// OP_ADDRESS	1160	201	1178
// OP_STOREP_ENT	28	1178	0
// OP_ADDRESS	1160	647	1179
// OP_STOREP_F	31	1179	0
// OP_ADDRESS	1160	148	1180
// OP_STOREP_FNC	1131	1180	0
// OP_ADDRESS	1160	150	1181
// OP_ADD_F	31	1182	1183
// OP_STOREP_F	1183	1181	0
// OP_STORE_F	817	735	0
// OP_ADDRESS	28	627	1184
// OP_STOREP_S	1185	1184	0
// OP_LOAD_S	28	129	1186
// OP_EQ_S	1186	1187	1188
// OP_IFNOT	1188	8	0
// OP_ADDRESS	28	628	1189
// OP_CALL0	466	0	0
// OP_MUL_F	1	1190	1191
// OP_STORE_V	1191	4	0
// OP_CALL1	495	0	0
// OP_ADD_F	1	821	1192
// OP_STOREP_F	1192	1189	0
// OP_MUL_VF	303	1182	1193
// OP_STORE_V	1193	4	0
// OP_MUL_VF	306	1182	1196
// OP_STORE_V	1196	7	0
// OP_CALL2	890	0	0
// OP_STORE_ENT	1	1157	0
// OP_NE_E	1	30	1199
// OP_IFNOT	1199	33	0
// OP_ADDRESS	1157	129	1200
// OP_STOREP_S	1201	1200	0
// OP_ADDRESS	1157	103	1202
// OP_STOREP_F	236	1202	0
// OP_LOAD_V	28	117	1203
// OP_STORE_V	1203	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	1157	4	0
// OP_LOAD_V	28	105	1206
// OP_MUL_VF	59	751	1209
// OP_SUB_V	1206	1209	1212
// OP_ADD_V	1212	1215	1218
// OP_STORE_V	1218	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	1157	555	1221
// OP_STOREP_V	1224	1221	0
// OP_ADDRESS	1157	192	1227
// OP_STOREP_F	777	1227	0
// OP_STORE_F	1228	1162	0
// OP_STORE_F	1228	1163	0
// OP_STORE_F	756	1164	0
// OP_STORE_F	819	1165	0
// OP_STORE_F	819	1166	0
// OP_STORE_F	759	1167	0
// OP_STORE_V	1157	4	0
// OP_STORE_V	1162	7	0
// OP_STORE_V	1165	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	1157	593	1229
// OP_STOREP_F	817	1229	0
// OP_ADDRESS	28	547	1230
// OP_STOREP_ENT	1157	1230	0
// OP_STORE_V	754	4	0
// OP_STORE_V	757	7	0
// OP_CALL2	890	0	0
// OP_STORE_ENT	1	1158	0
// OP_NE_E	1	30	1231
// OP_IFNOT	1231	31	0
// OP_ADDRESS	1158	129	1232
// OP_STOREP_S	1233	1232	0
// OP_ADDRESS	28	548	1234
// OP_STOREP_ENT	1158	1234	0
// OP_LOAD_S	28	129	1235
// OP_EQ_S	1235	1187	1236
// OP_IFNOT	1236	3	0
// OP_CALL0	932	0	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	628	1237
// OP_STOREP_F	823	1237	0
// OP_CALL0	932	0	0
// OP_STORE_V	1158	4	0
// OP_LOAD_V	1158	105	1238
// OP_ADD_V	1238	769	1241
// OP_STORE_V	1241	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	548	1244
// OP_ADDRESS	1244	117	1245
// OP_STOREP_V	926	1245	0
// OP_LOAD_ENT	28	548	1248
// OP_ADDRESS	1248	121	1249
// OP_STOREP_V	926	1249	0
// OP_LOAD_ENT	28	548	1252
// OP_ADDRESS	1252	595	1253
// OP_STOREP_V	926	1253	0
// OP_LOAD_ENT	28	548	1256
// OP_ADDRESS	1256	555	1257
// OP_STOREP_V	926	1257	0
// OP_GOTO	3	0	0
// OP_STORE_V	1260	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	1261
// OP_IFNOT	1261	32	0
// OP_STORE_V	763	4	0
// OP_STORE_V	766	7	0
// OP_CALL2	890	0	0
// OP_STORE_ENT	1	1160	0
// OP_NE_E	1	30	1262
// OP_IFNOT	1262	8	0
// OP_ADDRESS	1160	129	1263
// OP_STOREP_S	1264	1263	0
// OP_STORE_V	1160	4	0
// OP_STORE_V	1265	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	549	1266
// OP_STOREP_ENT	1160	1266	0
// OP_STORE_V	763	4	0
// OP_STORE_V	766	7	0
// OP_CALL2	890	0	0
// OP_STORE_ENT	1	1160	0
// OP_NE_E	1	30	1267
// OP_IFNOT	1267	13	0
// OP_ADDRESS	1160	129	1268
// OP_STOREP_S	1264	1268	0
// OP_STORE_V	1160	4	0
// OP_STORE_V	1265	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	550	1269
// OP_STOREP_ENT	1160	1269	0
// OP_LOAD_F	28	628	1270
// OP_EQ_F	1270	825	1271
// OP_IFNOT	1271	3	0
// OP_ADDRESS	1160	131	1272
// OP_STOREP_F	839	1272	0
// OP_EQ_F	689	821	1273
// OP_NOT_F	35	0	1274
// OP_OR	1273	1274	1275
// OP_IFNOT	1275	68	0
// OP_ADDRESS	28	644	1276
// OP_LOAD_F	28	644	1277
// OP_BITOR	1277	694	1278
// OP_STOREP_F	1278	1276	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1159	0
// OP_NE_E	1	30	1279
// OP_IFNOT	1279	18	0
// OP_ADDRESS	1159	129	1280
// OP_STOREP_S	1281	1280	0
// OP_ADDRESS	1159	201	1282
// OP_STOREP_ENT	28	1282	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_EQ_F	689	821	1284
// OP_IFNOT	1284	3	0
// OP_ADDRESS	1159	133	1285
// OP_STOREP_F	350	1285	0
// OP_ADDRESS	28	552	1286
// OP_STOREP_ENT	1159	1286	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1159	0
// OP_NE_E	1	30	1287
// OP_IFNOT	1287	18	0
// OP_ADDRESS	1159	129	1288
// OP_STOREP_S	1281	1288	0
// OP_ADDRESS	1159	201	1289
// OP_STOREP_ENT	28	1289	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_EQ_F	689	821	1290
// OP_IFNOT	1290	3	0
// OP_ADDRESS	1159	133	1291
// OP_STOREP_F	350	1291	0
// OP_ADDRESS	28	551	1292
// OP_STOREP_ENT	1159	1292	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1159	0
// OP_NE_E	1	30	1293
// OP_IFNOT	1293	18	0
// OP_ADDRESS	1159	129	1294
// OP_STOREP_S	1281	1294	0
// OP_ADDRESS	1159	201	1295
// OP_STOREP_ENT	28	1295	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	1159	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_EQ_F	689	821	1296
// OP_IFNOT	1296	3	0
// OP_ADDRESS	1159	133	1297
// OP_STOREP_F	350	1297	0
// OP_ADDRESS	28	553	1298
// OP_STOREP_ENT	1159	1298	0
// OP_ADDRESS	28	620	1299
// OP_STOREP_F	817	1299	0
// OP_LOAD_F	28	614	1300
// OP_ADDRESS	28	615	1301
// OP_STOREP_F	817	1301	0
// OP_ADDRESS	28	616	1302
// OP_STOREP_F	817	1302	0
// OP_ADDRESS	28	617	1303
// OP_STOREP_F	817	1303	0
// OP_ADDRESS	28	618	1304
// OP_STOREP_F	817	1304	0
// OP_ADDRESS	28	619	1305
// OP_STOREP_F	817	1305	0
// OP_CALL0	492	0	0
// OP_LOAD_V	28	117	1306
// OP_STORE_V	1306	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	109	1309
// OP_LOAD_V	28	105	1312
// OP_MUL_VF	59	843	1315
// OP_SUB_V	1312	1315	1318
// OP_STOREP_V	1318	1309	0
// OP_LOAD_ENT	28	547	1321
// OP_ADDRESS	1321	555	1322
// OP_STOREP_V	59	1322	0
// OP_LOAD_ENT	28	547	1325
// OP_STORE_V	1325	4	0
// OP_LOAD_V	28	105	1326
// OP_MUL_VF	59	751	1329
// OP_SUB_V	1326	1329	1332
// OP_STORE_V	1332	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	119	1335
// OP_STORE_F	1335	542	0
// OP_ADDRESS	28	580	1336
// OP_STOREP_V	926	1336	0
// OP_ADDRESS	28	585	1339
// OP_STOREP_V	1342	1339	0
// OP_ADDRESS	28	604	1345
// OP_STOREP_F	218	1345	0
// OP_ADDRESS	28	609	1346
// OP_STOREP_F	817	1346	0
// OP_ADDRESS	28	610	1347
// OP_LOAD_F	30	610	1348
// OP_STOREP_F	1348	1347	0
// OP_LOAD_F	28	610	1349
// OP_EQ_F	1349	817	1350
// OP_IFNOT	1350	3	0
// OP_ADDRESS	28	610	1351
// OP_STOREP_F	808	1351	0
// OP_ADDRESS	28	613	1352
// OP_STOREP_F	790	1352	0
// OP_ADDRESS	28	611	1353
// OP_STOREP_F	713	1353	0
// OP_ADDRESS	28	638	1354
// OP_STOREP_ENT	30	1354	0
// OP_ADDRESS	28	594	1355
// OP_STOREP_F	817	1355	0
// OP_EQ_F	737	717	1356
// OP_IFNOT	1356	3	0
// OP_ADDRESS	28	157	1357
// OP_STOREP_F	794	1357	0
// OP_ADDRESS	28	674	1358
// OP_CALL0	473	0	0
// OP_STOREP_ENT	1	1358	0
// OP_LOAD_ENT	28	674	1359
// OP_ADDRESS	1359	201	1360
// OP_STOREP_ENT	28	1360	0
// OP_EQ_F	738	825	1361
// OP_IFNOT	1361	3	0
// OP_ADDRESS	28	682	1362
// OP_STOREP_F	791	1362	0
// OP_ADDRESS	28	612	1363
// OP_STOREP_F	793	1363	0
// OP_CALL0	1154	0	0
// OP_LOAD_S	28	129	1364
// OP_EQ_S	1364	880	1365
// OP_IFNOT	1365	39	0
// OP_ADDRESS	28	155	1366
// OP_STOREP_S	1367	1366	0
// OP_ADDRESS	28	156	1368
// OP_STOREP_F	827	1368	0
// OP_LOAD_ENT	28	547	1369
// OP_ADDRESS	1369	555	1370
// OP_LOAD_V	28	555	1373
// OP_STOREP_V	1373	1370	0
// OP_LOAD_ENT	28	548	1376
// OP_LOAD_V	1376	117	1377
// OP_STORE_V	1377	1168	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1380	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1169	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1170	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	1157	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1161	0
// OP_ADDRESS	1161	201	1381
// OP_STOREP_ENT	28	1381	0
// OP_ADDRESS	1161	148	1382
// OP_STOREP_FNC	1108	1382	0
// OP_ADDRESS	1161	150	1383
// OP_ADD_F	31	1182	1384
// OP_STOREP_F	1384	1383	0
// OP_DONE	0	0	0
void () CreateVehicleEntities = 
{
    local entity tail;
    local entity body;
    local entity hl;
    local entity w;
    local entity angle_think_ent;
    local vector plyrBoxMin;
    local vector plyrBoxMax;
    local vector cam_angles;
    cvar_set("cl_rollangle", "0");
    cvar_set("cl_bob", "0");
    
    if(self.classname == "player")
    {
        w = spawn();
        w.speed = 254;
        w.owner = self;
        w.last_idle = time;
        w.think = fade_to_normal;
        w.nextthink = time + 0.5;
    }
    
    lose_speed_on_slide = 0;
    self.is_racer = "yes";
    
    if(self.classname == "rally_bot")
    {
        self.car_index = (floor(random() * 3.9)) + 2;
    }
    
    tail = SpawnPart(VEC_HULL_MIN * 0.5, VEC_HULL_MAX * 0.5);
    
    if((SpawnPart(VEC_HULL_MIN * 0.5, VEC_HULL_MAX * 0.5)) != world)
    {
        tail.classname = "veh_tail";
        tail.movetype = MOVETYPE_FLY;
        makevectors(self.angles);
        setorigin(tail, (self.origin - (v_forward * TAIL_DIST)) + '0.000 0.000 1.000');
        tail.veh_dir = '0.000 1.000 0.000';
        tail.yaw_speed = REAR_TRACTION;
        plyrBoxMin_x = -1;
        plyrBoxMin_y = -1;
        plyrBoxMin_z = -24;
        plyrBoxMax_x = 1;
        plyrBoxMax_y = 1;
        plyrBoxMax_z = 32;
        setsize(tail, plyrBoxMin, plyrBoxMax);
        tail.slide_ratio = 0;
        self.veh_tail = tail;
    }
    
    body = SpawnPart(VEH_MIN, VEH_MAX);
    if(SpawnPart(VEH_MIN, VEH_MAX) != world)
    {
        body.classname = "veh_body";
        self.veh_body = body;
        if(self.classname == "rally_bot")
        {
            SetCarDetails();
        }
        else
        {
            self.car_index = 3;
            SetCarDetails();
        }
        
        setorigin(body, body.origin + VEH_BODY_OFFSET);
        self.veh_body.angles = '0.000 0.000 0.000';
        self.veh_body.avelocity = '0.000 0.000 0.000';
        self.veh_body.roll_velocity = '0.000 0.000 0.000';
        self.veh_body.veh_dir = '0.000 0.000 0.000';
    }
    else
    {
        bprint("couldn't create vehicle body\n");
    }
    
    
    if(!cvar("deathmatch"))
    {
        w = SpawnPart(VEH_WHEEL_MIN, VEH_WHEEL_MAX);
        
        if(SpawnPart(VEH_WHEEL_MIN, VEH_WHEEL_MAX) != world)
        {
            w.classname = "veh_wheel";
            setmodel(w, "models/fwhl.mdl");
            self.fwhl = w;
        }
        
        w = SpawnPart(VEH_WHEEL_MIN, VEH_WHEEL_MAX);
        
        if(SpawnPart(VEH_WHEEL_MIN, VEH_WHEEL_MAX) != world)
        {
            w.classname = "veh_wheel";
            setmodel(w, "models/fwhl.mdl");
            self.rwhl = w;
            
            if(self.car_index == 4)
            {
                w.frame = 7;
            }
            
        }
        
    }
    
    
    if((challenge == 2) || !deathmatch)
    {
        self.racing_flags = self.racing_flags | QR_HEADLIGHTS_ON;
        hl = spawn();
        
        if(spawn() != world)
        {
            hl.classname = "veh_headlight";
            hl.owner = self;
            setsize(hl, '0.000 0.000 0.000', '0.000 0.000 0.000');
            setmodel(hl, "models/null.mdl");
            
            if(challenge == 2)
            {
                hl.effects = EF_DIMLIGHT;
            }
            
            self.hl_r = hl;
        }
        
        hl = spawn();
        
        if(spawn() != world)
        {
            hl.classname = "veh_headlight";
            hl.owner = self;
            setsize(hl, '0.000 0.000 0.000', '0.000 0.000 0.000');
            setmodel(hl, "models/null.mdl");
            
            if(challenge == 2)
            {
                hl.effects = EF_DIMLIGHT;
            }
            
            self.hl_l = hl;
        }
        
        hl = spawn();
        
        if(spawn() != world)
        {
            hl.classname = "veh_headlight";
            hl.owner = self;
            setsize(hl, '0.000 0.000 0.000', '0.000 0.000 0.000');
            setmodel(hl, "models/null.mdl");
            
            if(challenge == 2)
            {
                hl.effects = EF_DIMLIGHT;
            }
            
            self.hl_m = hl;
        }
        
    }
    
    self.last_jump_touch = 0;
    self.prev_surfangle1 = 0;
    self.prev_surfangle2 = 0;
    self.prev_surfangle3 = 0;
    self.prev_surfangle4 = 0;
    self.prev_surfangle5 = 0;
    droptofloor();
    makevectors(self.angles);
    self.oldorigin = self.origin - (v_forward * 8);
    self.veh_tail.veh_dir = v_forward;
    setorigin(self.veh_tail, self.origin - (v_forward * TAIL_DIST));
    plyr_angles_y = self.angles_y;
    self.body_roll = '0.000 0.000 0.000';
    self.body_roll_vel = '2.000 0.000 5.000';
    self.reversing = FALSE;
    self.reverse_release = 0;
    self.current_surface = world.current_surface;
    
    if(self.current_surface == 0)
    {
        self.current_surface = SURF_MUD;
    }
    
    self.chasecam_zoom = DEFAULT_CHASECAM_ZOOM;
    self.cam = CAM_CHASECLOSE;
    self.last_marker = world;
    self.slide_donut_vel = 0;
    
    if(racing_type == RT_TIME_TRIAL)
    {
        self.currentammo = TIMETRIAL_STARTTIME;
    }
    
    self.death_thinker = spawn();
    self.death_thinker.owner = self;
    
    if(rally_type_index == 4)
    {
        self.cult_cars = NUM_CARS;
    }
    
    self.tracking_speed = DEFAULT_TRACKING_SPEED;
    MoveVehicle();
    
    if(self.classname == "player")
    {
        self.weaponmodel = "models/wheel.mdl";
        self.weaponframe = 5;
        self.veh_tail.veh_dir = self.veh_dir;
        cam_angles = self.veh_body.angles;
        msg_entity = self;
        WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
        WriteAngle(MSG_ONE, 25);
        WriteAngle(MSG_ONE, 0);
        WriteAngle(MSG_ONE, 0);
        tail = find(world, classname, "player");
        angle_think_ent = spawn();
        angle_think_ent.owner = self;
        angle_think_ent.think = angle_think;
        angle_think_ent.nextthink = time + 0.5;
    }
    
};

// CalcVehPosition
// function begins at statement 878, parm_start=1386
// OP_LOAD_ENT	28	548	1404
// OP_LOAD_V	1404	117	1405
// OP_LOAD_V	28	580	1408
// OP_SUB_V	1405	1408	1411
// OP_STORE_V	1411	1401	0
// OP_GT	1401	865	1414
// OP_IFNOT	1414	3	0
// OP_SUB_F	1401	867	1415
// OP_STORE_F	1415	1401	0
// OP_MUL_F	1228	1401	1416
// OP_STORE_F	1416	1401	0
// OP_STORE_V	1401	4	0
// OP_CALL1	461	0	0
// OP_MUL_VF	59	1390	1417
// OP_MUL_VF	59	787	1420
// OP_SUB_V	1417	1420	1423
// OP_STORE_V	1423	1392	0
// OP_MUL_VF	65	1389	1426
// OP_STORE_V	1426	1395	0
// OP_MUL_VF	62	1391	1429
// OP_STORE_V	1429	1398	0
// OP_ADD_V	1386	1392	1432
// OP_STORE_V	1432	1401	0
// OP_ADD_V	1401	1395	1435
// OP_STORE_V	1435	1401	0
// OP_ADD_V	1401	1398	1438
// OP_STORE_V	1438	1401	0
// OP_RETURN	1401	0	0
// OP_DONE	0	0	0
vector (vector source, float right, float forward, float up) CalcVehPosition = 
{
    local vector vect_offset_fwd;
    local vector vect_offset_side;
    local vector vect_offset_up;
    local vector temp;
    temp = self.veh_body.angles - self.body_roll;
    
    if(temp_x > 180)
    {
        temp_x = temp_x - 360;
    }
    
    temp_x = -1 * temp_x;
    makevectors(temp);
    vect_offset_fwd = (v_forward * forward) - (v_forward * dist_infront);
    vect_offset_side = v_right * right;
    vect_offset_up = v_up * up;
    temp = source + vect_offset_fwd;
    temp = temp + vect_offset_side;
    temp = temp + vect_offset_up;
    return temp;
};

// SetVehPosition
// function begins at statement 907, parm_start=1442
// OP_LOAD_V	1442	105	1450
// OP_STORE_V	1450	4	0
// OP_STORE_V	1444	7	0
// OP_STORE_V	1445	10	0
// OP_STORE_V	1446	13	0
// OP_CALL4	1385	0	0
// OP_STORE_V	1	1447	0
// OP_STORE_V	1443	4	0
// OP_STORE_V	1447	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void (entity source, entity w, float right, float forward, float up) SetVehPosition = 
{
    local vector newpos;
    newpos = CalcVehPosition(source.origin, right, forward, up);
    setorigin(w, newpos);
};

// MoveToAngle
// function begins at statement 918, parm_start=1454
// OP_GT	1454	1455	1458
// OP_SUB_F	1454	1455	1459
// OP_GT	1459	865	1460
// OP_AND	1458	1460	1461
// OP_IFNOT	1461	4	0
// OP_ADD_F	1455	867	1462
// OP_STORE_F	1462	1455	0
// OP_GOTO	8	0	0
// OP_GT	1455	1454	1463
// OP_SUB_F	1455	1454	1464
// OP_GT	1464	865	1465
// OP_AND	1463	1465	1466
// OP_IFNOT	1466	3	0
// OP_ADD_F	1454	867	1467
// OP_STORE_F	1467	1454	0
// OP_GT	1454	1455	1468
// OP_IFNOT	1468	8	0
// OP_MUL_F	1456	32	1469
// OP_SUB_F	1454	1469	1470
// OP_STORE_F	1470	1457	0
// OP_LT	1457	1455	1471
// OP_IFNOT	1471	2	0
// OP_STORE_F	1455	1457	0
// OP_GOTO	7	0	0
// OP_MUL_F	1456	32	1472
// OP_ADD_F	1454	1472	1473
// OP_STORE_F	1473	1457	0
// OP_GT	1457	1455	1474
// OP_IFNOT	1474	2	0
// OP_STORE_F	1455	1457	0
// OP_GE	1457	867	1475
// OP_IFNOT	1475	3	0
// OP_SUB_F	1457	867	1476
// OP_STORE_F	1476	1457	0
// OP_LT	1457	817	1477
// OP_IFNOT	1477	3	0
// OP_ADD_F	1457	867	1478
// OP_STORE_F	1478	1457	0
// OP_RETURN	1457	0	0
// OP_DONE	0	0	0
float (float s_angle, float e_angle, float rate) MoveToAngle = 
{
    local float result;
    if((s_angle > e_angle) && ((s_angle - e_angle) > 180))
    {
        e_angle = e_angle + 360;
    }
    else
    {
        
        if((e_angle > s_angle) && ((e_angle - s_angle) > 180))
        {
            s_angle = s_angle + 360;
        }
        
    }
    
    if(s_angle > e_angle)
    {
        result = s_angle - (rate * frametime);
        
        if(result < e_angle)
        {
            result = e_angle;
        }
        
    }
    else
    {
        result = s_angle + (rate * frametime);
        
        if(result > e_angle)
        {
            result = e_angle;
        }
        
    }
    
    
    if(result >= 360)
    {
        result = result - 360;
    }
    
    
    if(result < 0)
    {
        result = result + 360;
    }
    
    return result;
};

// BodyRoll
// function begins at statement 958, parm_start=1480
// OP_LOAD_F	28	120	1480
// OP_LT	1480	827	1481
// OP_LOAD_F	28	120	1482
// OP_GT	1482	1483	1484
// OP_AND	1481	1484	1485
// OP_IFNOT	1485	5	0
// OP_ADDRESS	28	124	1486
// OP_STOREP_F	817	1486	0
// OP_ADDRESS	28	120	1487
// OP_STOREP_F	817	1487	0
// OP_LOAD_F	28	118	1488
// OP_LT	1488	827	1489
// OP_LOAD_F	28	118	1490
// OP_GT	1490	1483	1491
// OP_AND	1489	1491	1492
// OP_IFNOT	1492	5	0
// OP_ADDRESS	28	122	1493
// OP_STOREP_F	817	1493	0
// OP_ADDRESS	28	118	1494
// OP_STOREP_F	817	1494	0
// OP_DONE	0	0	0
void () BodyRoll = 
{
    
    if((self.angles_z < 5) && (self.angles_z > -5))
    {
        self.avelocity_z = 0;
        self.angles_z = 0;
    }
    
    
    if((self.angles_x < 5) && (self.angles_x > -5))
    {
        self.avelocity_x = 0;
        self.angles_x = 0;
    }
    
};

vector (float dm) VelocityForDamage;
void () MoveWheels;
// CheckCultCars
// function begins at statement 979, parm_start=1498
// OP_NOT_F	689	0	1499
// OP_IFNOT	1499	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	682	1500
// OP_LE	1500	817	1501
// OP_IFNOT	1501	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1502	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	34	4	0
// OP_CALL1	518	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	682	1503
// OP_STORE_V	1503	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	1498	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1504	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1498	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	682	1505
// OP_GT	1505	819	1506
// OP_IFNOT	1506	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1507	7	0
// OP_CALL2	483	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1508	7	0
// OP_CALL2	483	0	0
// OP_DONE	0	0	0
void () CheckCultCars = 
{
    local string str;
    
    if(!challenge)
    {
        return;
    }
    
    if(self.cult_cars <= 0)
    {
        sprint(self, "You are out of cars!\nYou failed to destroy the Cult.\n");
        changelevel(mapname);
    }
    else
    {
        str = ftos(self.cult_cars);
        sprint(self, "You have ");
        sprint(self, str);
        if(self.cult_cars > 1)
        {
            sprint(self, " cars left\n");
        }
        else
        {
            sprint(self, " car left\n");
        }
        
    }
    
};

// SpawnDeathWheel
// function begins at statement 1012, parm_start=1510
// OP_LOAD_ENT	28	201	1513
// OP_LOAD_ENT	1513	548	1514
// OP_LOAD_V	1514	117	1515
// OP_STORE_V	1515	4	0
// OP_CALL1	461	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1512	0
// OP_ADDRESS	1512	103	1518
// OP_STOREP_F	241	1518	0
// OP_ADDRESS	1512	104	1519
// OP_STOREP_F	243	1519	0
// OP_ADDRESS	1512	117	1520
// OP_LOAD_ENT	28	201	1523
// OP_LOAD_ENT	1523	548	1524
// OP_LOAD_V	1524	117	1525
// OP_STOREP_V	1525	1520	0
// OP_STORE_V	1512	4	0
// OP_STORE_V	1528	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	1512	4	0
// OP_ADD_V	303	1529	1532
// OP_STORE_V	1532	7	0
// OP_SUB_V	306	1535	1538
// OP_STORE_V	1538	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	1512	4	0
// OP_LOAD_ENT	28	201	1541
// OP_LOAD_ENT	1541	548	1542
// OP_LOAD_V	1542	105	1543
// OP_MUL_VF	65	1510	1546
// OP_DIV_F	748	821	1549
// OP_MUL_VF	1546	1549	1550
// OP_ADD_V	1543	1550	1553
// OP_MUL_VF	59	1511	1556
// OP_DIV_F	749	821	1559
// OP_MUL_VF	1556	1559	1560
// OP_ADD_V	1553	1560	1563
// OP_STORE_V	1563	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	1512	113	1566
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1569	1572
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1575	1578
// OP_ADD_V	1572	1578	1581
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1584	1587
// OP_ADD_V	1581	1587	1590
// OP_ADD_V	1590	1593	1596
// OP_SUB_V	1596	1599	1602
// OP_STOREP_V	1602	1566	0
// OP_ADDRESS	1512	121	1605
// OP_LOAD_V	1512	113	1608
// OP_STOREP_V	1608	1605	0
// OP_ADDRESS	1512	124	1611
// OP_STOREP_F	843	1611	0
// OP_ADDRESS	1512	121	1612
// OP_LOAD_V	1512	121	1615
// OP_MUL_VF	1615	827	1618
// OP_STOREP_V	1618	1612	0
// OP_ADDRESS	1512	148	1621
// OP_STOREP_FNC	533	1621	0
// OP_ADDRESS	1512	150	1622
// OP_ADD_F	31	823	1623
// OP_STOREP_F	1623	1622	0
// OP_DONE	0	0	0
void (float right, float forward) SpawnDeathWheel = 
{
    local entity part;
    makevectors(self.owner.veh_body.angles);
    part = spawn();
    part.movetype = MOVETYPE_BOUNCE;
    part.solid = SOLID_NOT;
    part.angles = self.owner.veh_body.angles;
    setmodel(part, "models/whl.mdl");
    setsize(part, VEC_HULL_MIN + '0.000 0.000 12.000', VEC_HULL_MAX - '0.000 0.000 16.000');
    setorigin(part, (self.owner.veh_body.origin + ((v_right * right) * (VEH_WIDTH / 2))) + ((v_forward * forward) * (VEH_LENGTH / 2)));
    part.velocity = ((((random() * '128.000 0.000 0.000') + (random() * '0.000 128.000 0.000')) + (random() * '0.000 0.000 200.000')) + '0.000 0.000 150.000') - '64.000 64.000 0.000';
    part.avelocity = part.velocity;
    part.avelocity_z = 8;
    part.avelocity = part.avelocity * 5;
    part.think = SUB_Remove;
    part.nextthink = time + 3;
};

// DeathThink
// function begins at statement 1078, parm_start=1625
// OP_LOAD_F	28	378	1628
// OP_NOT_F	1628	0	1629
// OP_LOAD_ENT	28	201	1630
// OP_LOAD_F	1630	152	1631
// OP_LT	1631	1632	1633
// OP_LOAD_F	28	647	1634
// OP_SUB_F	31	821	1635
// OP_LT	1634	1635	1636
// OP_OR	1633	1636	1637
// OP_AND	1629	1637	1638
// OP_IFNOT	1638	134	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	1626	0
// OP_ADDRESS	1626	103	1639
// OP_STOREP_F	241	1639	0
// OP_ADDRESS	1626	104	1640
// OP_STOREP_F	243	1640	0
// OP_ADDRESS	1626	117	1641
// OP_LOAD_ENT	28	548	1644
// OP_LOAD_V	1644	117	1645
// OP_STOREP_V	1645	1641	0
// OP_ADDRESS	1626	183	1648
// OP_LOAD_ENT	28	548	1649
// OP_LOAD_F	1649	183	1650
// OP_STOREP_F	1650	1648	0
// OP_LOAD_ENT	28	201	1651
// OP_LOAD_F	1651	628	1652
// OP_EQ_F	1652	821	1653
// OP_IFNOT	1653	5	0
// OP_STORE_V	1626	4	0
// OP_STORE_V	954	7	0
// OP_CALL2	463	0	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	28	201	1654
// OP_LOAD_F	1654	628	1655
// OP_EQ_F	1655	823	1656
// OP_IFNOT	1656	5	0
// OP_STORE_V	1626	4	0
// OP_STORE_V	987	7	0
// OP_CALL2	463	0	0
// OP_GOTO	16	0	0
// OP_LOAD_ENT	28	201	1657
// OP_LOAD_F	1657	628	1658
// OP_EQ_F	1658	825	1659
// OP_IFNOT	1659	5	0
// OP_STORE_V	1626	4	0
// OP_STORE_V	1012	7	0
// OP_CALL2	463	0	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	201	1660
// OP_LOAD_F	1660	628	1661
// OP_EQ_F	1661	827	1662
// OP_IFNOT	1662	4	0
// OP_STORE_V	1626	4	0
// OP_STORE_V	1046	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	1626	132	1663
// OP_LOAD_ENT	28	548	1664
// OP_LOAD_F	1664	132	1665
// OP_STOREP_F	1665	1663	0
// OP_STORE_V	1626	4	0
// OP_ADD_V	303	1666	1669
// OP_STORE_V	1669	7	0
// OP_STORE_V	306	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	1626	4	0
// OP_LOAD_ENT	28	548	1672
// OP_LOAD_V	1672	105	1673
// OP_STORE_V	1673	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	1626	113	1676
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1679	1682
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1685	1688
// OP_ADD_V	1682	1688	1691
// OP_CALL0	466	0	0
// OP_MUL_FV	1	1584	1694
// OP_ADD_V	1691	1694	1697
// OP_ADD_V	1697	1700	1703
// OP_SUB_V	1703	1706	1709
// OP_STOREP_V	1709	1676	0
// OP_ADDRESS	1626	121	1712
// OP_LOAD_V	1626	113	1715
// OP_STOREP_V	1715	1712	0
// OP_ADDRESS	1626	122	1718
// OP_STOREP_F	817	1718	0
// OP_ADDRESS	1626	148	1719
// OP_STOREP_FNC	533	1719	0
// OP_ADDRESS	1626	150	1720
// OP_ADD_F	31	827	1721
// OP_STOREP_F	1721	1720	0
// OP_STORE_V	819	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	1509	0	0
// OP_STORE_V	1228	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	1509	0	0
// OP_STORE_V	819	4	0
// OP_STORE_V	1228	7	0
// OP_CALL2	1509	0	0
// OP_STORE_V	1228	4	0
// OP_STORE_V	1228	7	0
// OP_CALL2	1509	0	0
// OP_LOAD_ENT	28	201	1722
// OP_LOAD_F	1722	152	1723
// OP_LE	1723	817	1724
// OP_IFNOT	1724	33	0
// OP_LOAD_ENT	28	201	1725
// OP_LOAD_ENT	1725	548	1726
// OP_STORE_V	1726	4	0
// OP_STORE_V	1727	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	1730
// OP_LOAD_ENT	1730	549	1731
// OP_NE_E	1731	30	1732
// OP_IFNOT	1732	6	0
// OP_LOAD_ENT	28	201	1733
// OP_LOAD_ENT	1733	549	1734
// OP_STORE_V	1734	4	0
// OP_STORE_V	1727	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	1735
// OP_LOAD_ENT	1735	550	1736
// OP_NE_E	1736	30	1737
// OP_IFNOT	1737	6	0
// OP_LOAD_ENT	28	201	1738
// OP_LOAD_ENT	1738	550	1739
// OP_STORE_V	1739	4	0
// OP_STORE_V	1727	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	1740
// OP_LOAD_ENT	1740	554	1741
// OP_NE_E	1741	30	1742
// OP_IFNOT	1742	6	0
// OP_LOAD_ENT	28	201	1743
// OP_LOAD_ENT	1743	554	1744
// OP_STORE_V	1744	4	0
// OP_STORE_V	1727	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	548	1745
// OP_STOREP_ENT	1626	1745	0
// OP_ADDRESS	28	378	1746
// OP_STOREP_F	819	1746	0
// OP_LOAD_F	28	647	1747
// OP_SUB_F	31	1748	1749
// OP_GT	1747	1749	1750
// OP_IFNOT	1750	5	0
// OP_ADDRESS	28	150	1751
// OP_ADD_F	31	1182	1752
// OP_STOREP_F	1752	1751	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	150	1753
// OP_STOREP_F	1228	1753	0
// OP_DONE	0	0	0
void () DeathThink = 
{
    local entity exp;
    local entity part;
    local float rnd;
    
    if(!self.speed && ((self.owner.health < 40) || (self.last_idle < (time - 2))))
    {
        part = spawn();
        part.movetype = MOVETYPE_BOUNCE;
        part.solid = SOLID_NOT;
        part.angles = self.veh_body.angles;
        part.colormap = self.veh_body.colormap;
        if(self.owner.car_index == 2)
        {
            setmodel(part, "models/sumacar.mdl");
        }
        else
        {
            if(self.owner.car_index == 3)
            {
                setmodel(part, "models/zumacar.mdl");
            }
            else
            {
                if(self.owner.car_index == 4)
                {
                    setmodel(part, "models/mycar.mdl");
                }
                else
                {
                    
                    if(self.owner.car_index == 5)
                    {
                        setmodel(part, "models/triton.mdl");
                    }
                    
                }
                
            }
            
        }
        
        part.skin = self.veh_body.skin;
        setsize(part, VEC_HULL_MIN + '0.000 0.000 8.000', VEC_HULL_MAX);
        setorigin(part, self.veh_body.origin);
        part.velocity = ((((random() * '32.000 0.000 0.000') + (random() * '0.000 32.000 0.000')) + (random() * '0.000 0.000 200.000')) + '0.000 0.000 400.000') - '16.000 16.000 0.000';
        part.avelocity = part.velocity;
        part.avelocity_x = 0;
        part.think = SUB_Remove;
        part.nextthink = time + 5;
        SpawnDeathWheel(1, 1);
        SpawnDeathWheel(-1, 1);
        SpawnDeathWheel(1, -1);
        SpawnDeathWheel(-1, -1);
        
        if(self.owner.health <= 0)
        {
            setorigin(self.owner.veh_body, '0.000 0.000 -3900.000');
            
            if(self.owner.fwhl != world)
            {
                setorigin(self.owner.fwhl, '0.000 0.000 -3900.000');
            }
            
            
            if(self.owner.rwhl != world)
            {
                setorigin(self.owner.rwhl, '0.000 0.000 -3900.000');
            }
            
            
            if(self.owner.gun != world)
            {
                setorigin(self.owner.gun, '0.000 0.000 -3900.000');
            }
            
        }
        
        self.veh_body = part;
        self.speed = 1;
    }
    
    if(self.last_idle > (time - 2.5))
    {
        self.nextthink = time + 0.5;
    }
    else
    {
        self.nextthink = -1;
    }
    
};

.float spawn_time;
// DestroyVehicle
// function begins at statement 1233, parm_start=1756
// OP_LOAD_F	28	1754	1757
// OP_SUB_F	31	819	1758
// OP_GT	1757	1758	1759
// OP_IFNOT	1759	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	548	1760
// OP_ADDRESS	1760	595	1761
// OP_STOREP_V	926	1761	0
// OP_LOAD_ENT	28	548	1764
// OP_ADDRESS	1764	121	1765
// OP_STOREP_V	926	1765	0
// OP_LOAD_ENT	28	548	1768
// OP_STORE_V	1768	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_LOAD_ENT	28	548	1769
// OP_ADDRESS	1769	118	1770
// OP_STOREP_F	817	1770	0
// OP_LOAD_ENT	28	548	1771
// OP_STORE_ENT	1771	28	0
// OP_CALL0	492	0	0
// OP_LOAD_ENT	28	201	1772
// OP_STORE_ENT	1772	28	0
// OP_LOAD_ENT	28	548	1773
// OP_LOAD_V	1773	117	1774
// OP_STORE_V	1774	4	0
// OP_CALL1	461	0	0
// OP_LT	64	817	1777
// OP_IFNOT	1777	10	0
// OP_LOAD_ENT	28	548	1778
// OP_STORE_V	1778	4	0
// OP_LOAD_ENT	28	548	1779
// OP_LOAD_V	1779	105	1780
// OP_MUL_VF	1783	1228	1786
// OP_MUL_VF	1786	64	1789
// OP_ADD_V	1780	1789	1792
// OP_STORE_V	1792	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	64	4	0
// OP_CALL1	499	0	0
// OP_STORE_F	1	1756	0
// OP_LOAD_ENT	28	548	1795
// OP_STORE_V	1795	4	0
// OP_LOAD_ENT	28	548	1796
// OP_LOAD_V	1796	105	1797
// OP_SUB_F	819	1756	1800
// OP_MUL_FV	1800	1666	1801
// OP_ADD_V	1797	1801	1804
// OP_STORE_V	1804	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	548	1807
// OP_LOAD_V	1807	117	1808
// OP_STORE_V	1808	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	555	1811
// OP_STOREP_V	59	1811	0
// OP_CALL0	1496	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	1814	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	1815	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	407	1816
// OP_STOREP_S	1817	1816	0
// OP_LOAD_F	28	152	1818
// OP_GT	1818	817	1819
// OP_IFNOT	1819	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1820	13	0
// OP_CALL4	534	0	0
// OP_DONE	0	0	0
void () DestroyVehicle = 
{
    local float ftemp;
    
    if(self.spawn_time > (time - 1))
    {
        return;
    }
    
    self.veh_body.roll_velocity = '0.000 0.000 0.000';
    self.veh_body.avelocity = '0.000 0.000 0.000';
    setsize(self.veh_body, VEH_MIN, VEH_MAX);
    self.veh_body.angles_x = 0;
    self = self.veh_body;
    droptofloor();
    self = self.owner;
    makevectors(self.veh_body.angles);
    
    if(0 < 0)
    {
        setorigin(self.veh_body, self.veh_body.origin + (('0.000 0.000 6.000' * -1) * 0));
    }
    
    ftemp = fabs(0);
    setorigin(self.veh_body, self.veh_body.origin + ((1 - ftemp) * '0.000 0.000 8.000'));
    makevectors(self.veh_body.angles);
    self.veh_dir = v_forward;
    MoveWheels();
    sound(self, CHAN_VOICE, "player/lburn1.wav", 1, ATTN_STATIC);
    sound(self, CHAN_BODY, "player/lburn2.wav", 1, ATTN_STATIC);
    self.deathtype = "rolled_car";
    
    if(self.health > 0)
    {
        T_Damage(self, world, world, 500);
    }
    
};

// GetAveragePrevRoll
// function begins at statement 1314, parm_start=1822
// OP_LOAD_F	28	615	1823
// OP_STORE_V	1823	4	0
// OP_LOAD_F	28	619	1824
// OP_STORE_V	1824	7	0
// OP_CALL2	860	0	0
// OP_DIV_F	1	825	1825
// OP_STORE_F	1825	1822	0
// OP_LT	1822	1826	1827
// OP_IFNOT	1827	3	0
// OP_STORE_F	1826	1822	0
// OP_GOTO	4	0	0
// OP_GT	1822	855	1828
// OP_IFNOT	1828	2	0
// OP_STORE_F	855	1822	0
// OP_RETURN	1822	0	0
// OP_DONE	0	0	0
float () GetAveragePrevRoll = 
{
    local float ave_roll;
    ave_roll = angle_diff(self.prev_surfangle1, self.prev_surfangle5) / 4;
    if(ave_roll < -10)
    {
        ave_roll = -10;
    }
    else
    {
        
        if(ave_roll > 10)
        {
            ave_roll = 10;
        }
        
    }
    
    return ave_roll;
};

// CarAirborne
// function begins at statement 1330, parm_start=1830
// OP_LOAD_ENT	28	548	1835
// OP_LOAD_V	1835	117	1836
// OP_STORE_V	1836	4	0
// OP_CALL1	461	0	0
// OP_LT	64	817	1839
// OP_IFNOT	1839	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	547	1840
// OP_LOAD_V	1840	555	1841
// OP_STORE_V	1841	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	1831	0
// OP_LOAD_ENT	28	547	1844
// OP_ADDRESS	1844	612	1845
// OP_LOAD_ENT	28	548	1846
// OP_LOAD_F	1846	119	1847
// OP_STORE_V	1847	4	0
// OP_STORE_V	1832	7	0
// OP_CALL2	860	0	0
// OP_STOREP_F	1	1845	0
// OP_LOAD_F	28	620	1848
// OP_SUB_F	31	1848	1849
// OP_GE	1849	821	1850
// OP_LOAD_F	28	578	1851
// OP_DIV_F	1851	32	1852
// OP_GT	1852	825	1853
// OP_AND	1850	1853	1854
// OP_IFNOT	1854	85	0
// OP_LT	738	823	1855
// OP_IFNOT	1855	6	0
// OP_LOAD_ENT	28	548	1856
// OP_ADDRESS	1856	598	1857
// OP_CALL0	1821	0	0
// OP_STOREP_F	1	1857	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	548	1858
// OP_ADDRESS	1858	598	1859
// OP_LOAD_ENT	28	548	1860
// OP_LOAD_F	1860	558	1861
// OP_STOREP_F	1861	1859	0
// OP_LOAD_F	28	112	1862
// OP_LOAD_F	28	108	1863
// OP_GE	1862	1863	1864
// OP_IFNOT	1864	7	0
// OP_LOAD_ENT	28	548	1865
// OP_ADDRESS	1865	598	1866
// OP_LOAD_ENT	28	548	1867
// OP_LOAD_F	1867	598	1868
// OP_DIV_F	1868	855	1869
// OP_STOREP_F	1869	1866	0
// OP_LOAD_ENT	28	548	1870
// OP_LOAD_F	1870	598	1871
// OP_GT	1871	865	1872
// OP_IFNOT	1872	7	0
// OP_LOAD_ENT	28	548	1873
// OP_ADDRESS	1873	598	1874
// OP_LOAD_ENT	28	548	1875
// OP_LOAD_F	1875	598	1876
// OP_SUB_F	1876	867	1877
// OP_STOREP_F	1877	1874	0
// OP_LOAD_ENT	28	548	1878
// OP_ADDRESS	1878	598	1879
// OP_LOAD_ENT	28	548	1880
// OP_LOAD_F	1880	598	1881
// OP_MUL_F	1881	855	1882
// OP_STOREP_F	1882	1879	0
// OP_LOAD_ENT	28	548	1883
// OP_LOAD_F	1883	598	1884
// OP_GT	1884	1885	1886
// OP_IFNOT	1886	5	0
// OP_LOAD_ENT	28	548	1887
// OP_ADDRESS	1887	598	1888
// OP_STOREP_F	1885	1888	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	548	1889
// OP_LOAD_F	1889	598	1890
// OP_LT	1890	1891	1892
// OP_IFNOT	1892	4	0
// OP_LOAD_ENT	28	548	1893
// OP_ADDRESS	1893	598	1894
// OP_STOREP_F	1891	1894	0
// OP_BITAND	723	701	1895
// OP_NOT_F	1895	0	1896
// OP_IFNOT	1896	13	0
// OP_LOAD_ENT	28	548	1897
// OP_ADDRESS	1897	597	1898
// OP_LOAD_ENT	28	548	1899
// OP_LOAD_F	1899	565	1900
// OP_STORE_V	1900	4	0
// OP_LOAD_ENT	28	548	1901
// OP_LOAD_F	1901	119	1902
// OP_STORE_V	1902	7	0
// OP_CALL2	860	0	0
// OP_MUL_F	1228	1	1903
// OP_DIV_F	1903	32	1904
// OP_STOREP_F	1904	1898	0
// OP_LOAD_ENT	28	548	1905
// OP_LOAD_F	1905	597	1906
// OP_GT	1906	1380	1907
// OP_IFNOT	1907	5	0
// OP_LOAD_ENT	28	548	1908
// OP_ADDRESS	1908	597	1909
// OP_STOREP_F	1380	1909	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	548	1910
// OP_LOAD_F	1910	597	1911
// OP_LT	1911	1912	1913
// OP_IFNOT	1913	4	0
// OP_LOAD_ENT	28	548	1914
// OP_ADDRESS	1914	597	1915
// OP_STOREP_F	1912	1915	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	548	1916
// OP_ADDRESS	1916	598	1917
// OP_STOREP_F	817	1917	0
// OP_ADDRESS	28	664	1918
// OP_STOREP_F	31	1918	0
// OP_ADDRESS	28	592	1919
// OP_STOREP_F	817	1919	0
// OP_LOAD_ENT	28	548	1920
// OP_LOAD_V	1920	117	1921
// OP_STORE_V	1921	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	548	1924
// OP_ADDRESS	1924	596	1925
// OP_DIV_F	1830	778	1926
// OP_MUL_F	1926	847	1927
// OP_SUB_F	1927	855	1928
// OP_MUL_F	1928	827	1929
// OP_STOREP_F	1929	1925	0
// OP_GT	61	1930	1931
// OP_IFNOT	1931	8	0
// OP_LOAD_ENT	28	548	1932
// OP_ADDRESS	1932	596	1933
// OP_LOAD_ENT	28	548	1934
// OP_LOAD_F	1934	596	1935
// OP_MUL_F	61	827	1936
// OP_ADD_F	1935	1936	1937
// OP_STOREP_F	1937	1933	0
// OP_LOAD_F	28	112	1938
// OP_LOAD_F	28	108	1939
// OP_LT	1938	1939	1940
// OP_LOAD_F	28	620	1941
// OP_SUB_F	31	1941	1942
// OP_LT	1942	821	1943
// OP_AND	1940	1943	1944
// OP_IFNOT	1944	30	0
// OP_LOAD_S	30	130	1945
// OP_EQ_S	1945	1946	1947
// OP_GT	1830	1948	1949
// OP_AND	1947	1949	1950
// OP_IFNOT	1950	15	0
// OP_ADDRESS	28	113	1951
// OP_LOAD_V	28	113	1954
// OP_STORE_V	1954	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	1957	1958
// OP_STOREP_V	1958	1951	0
// OP_ADDRESS	28	621	1961
// OP_ADDRESS	28	567	1964
// OP_LOAD_V	28	113	1967
// OP_STOREP_V	1967	1964	0
// OP_STOREP_V	1967	1961	0
// OP_ADDRESS	28	590	1970
// OP_STOREP_F	1957	1970	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	113	1971
// OP_LOAD_V	28	113	1974
// OP_MUL_VF	1974	883	1977
// OP_STOREP_V	1977	1971	0
// OP_ADDRESS	28	116	1980
// OP_LOAD_F	28	116	1981
// OP_ADD_F	1981	1135	1982
// OP_STOREP_F	1982	1980	0
// OP_ADDRESS	28	620	1983
// OP_STOREP_F	817	1983	0
// OP_DONE	0	0	0
void () CarAirborne = 
{
    local float vspeed;
    local vector tail_angle;
    local string str;
    makevectors(self.veh_body.angles);
    
    if(0 < 0)
    {
        return;
    }
    
    tail_angle = vectoangles(self.veh_tail.veh_dir);
    self.veh_tail.tracking_speed = angle_diff(self.veh_body.angles_y, 0);
    if(((time - self.last_jump_touch) >= 2) && ((self.lastmove_z / frametime) > 4))
    {
        if(rally_type_index < 3)
        {
            self.veh_body.roll_velocity_z = GetAveragePrevRoll();
        }
        else
        {
            self.veh_body.roll_velocity_z = self.veh_body.veh_dir_z;
        }
        
        
        if(self.oldorigin_z >= self.origin_z)
        {
            self.veh_body.roll_velocity_z = self.veh_body.roll_velocity_z / 10;
        }
        
        
        if(self.veh_body.roll_velocity_z > 180)
        {
            self.veh_body.roll_velocity_z = self.veh_body.roll_velocity_z - 360;
        }
        
        self.veh_body.roll_velocity_z = self.veh_body.roll_velocity_z * 10;
        if(self.veh_body.roll_velocity_z > 150)
        {
            self.veh_body.roll_velocity_z = 150;
        }
        else
        {
            
            if(self.veh_body.roll_velocity_z < -150)
            {
                self.veh_body.roll_velocity_z = -150;
            }
            
        }
        
        
        if(!(global_racing_flags & QR_NO_SIDEWAYS_ROLL))
        {
            self.veh_body.roll_velocity_y = (-1 * angle_diff(self.veh_body.old_angles_y, self.veh_body.angles_y)) / frametime;
        }
        
        if(self.veh_body.roll_velocity_y > 25)
        {
            self.veh_body.roll_velocity_y = 25;
        }
        else
        {
            
            if(self.veh_body.roll_velocity_y < -25)
            {
                self.veh_body.roll_velocity_y = -25;
            }
            
        }
        
    }
    else
    {
        self.veh_body.roll_velocity_z = 0;
    }
    
    self.leave_ground_time = time;
    self.last_jump_z = 0;
    makevectors(self.veh_body.angles);
    self.veh_body.roll_velocity_x = (((vspeed / MAX_SPEED) * 9) - 10) * 5;
    
    if(0 > 0.4)
    {
        self.veh_body.roll_velocity_x = self.veh_body.roll_velocity_x + (0 * 5);
    }
    
    
    if((self.oldorigin_z < self.origin_z) && ((time - self.last_jump_touch) < 2))
    {
        if((world.model == "maps/qrally02.bsp") && (vspeed > 400))
        {
            self.velocity = normalize(self.velocity) * 100;
            self.last_velocity = self.old_velocity = self.velocity;
            self.last_speed = 100;
        }
        else
        {
            self.velocity = self.velocity * 1.5;
        }
        
        self.velocity_z = self.velocity_z + 250;
        self.last_jump_touch = 0;
    }
    
};

void () dirt9;
// dirt1
// function begins at statement 1507, parm_start=1986
// OP_STATE	821	1986	0
// OP_ADDRESS	28	150	1987
// OP_ADD_F	31	1988	1989
// OP_STOREP_F	1989	1987	0
// OP_DONE	0	0	0
void () dirt1 = [2, dirt2]
{
    self.nextthink = time + 0.05;
};

// dirt2
// function begins at statement 1512, parm_start=1990
// OP_STATE	823	1990	0
// OP_ADDRESS	28	150	1991
// OP_ADD_F	31	1992	1993
// OP_STOREP_F	1993	1991	0
// OP_DONE	0	0	0
void () dirt2 = [3, dirt3]
{
    self.nextthink = time + 0.15;
};

// dirt3
// function begins at statement 1517, parm_start=1994
// OP_STATE	825	1994	0
// OP_ADDRESS	28	150	1995
// OP_ADD_F	31	1988	1996
// OP_STOREP_F	1996	1995	0
// OP_LOAD_ENT	28	201	1997
// OP_LOAD_V	1997	113	1998
// OP_STORE_V	1998	4	0
// OP_CALL1	471	0	0
// OP_LT	1	1957	2001
// OP_IFNOT	2001	3	0
// OP_ADDRESS	28	148	2002
// OP_STOREP_FNC	1984	2002	0
// OP_DONE	0	0	0
void () dirt3 = [4, dirt5]
{
    self.nextthink = time + 0.05;
    
    if(vlen(self.owner.velocity) < 100)
    {
        self.think = dirt9;
    }
    
};

// dirt5
// function begins at statement 1530, parm_start=2003
// OP_STATE	827	2003	0
// OP_LOAD_ENT	28	201	2004
// OP_LOAD_V	2004	113	2005
// OP_STORE_V	2005	4	0
// OP_CALL1	471	0	0
// OP_LT	1	1957	2008
// OP_IFNOT	2008	6	0
// OP_ADDRESS	28	148	2009
// OP_STOREP_FNC	1984	2009	0
// OP_ADDRESS	28	150	2010
// OP_ADD_F	31	1988	2011
// OP_STOREP_F	2011	2010	0
// OP_DONE	0	0	0
void () dirt5 = [5, dirt6]
{
    
    if(vlen(self.owner.velocity) < 100)
    {
        self.think = dirt9;
        self.nextthink = time + 0.05;
    }
    
};

// dirt6
// function begins at statement 1543, parm_start=2012
// OP_STATE	825	2012	0
// OP_DONE	0	0	0
void () dirt6 = [4, dirt7]
{
};

// dirt7
// function begins at statement 1545, parm_start=2013
// OP_STATE	827	2013	0
// OP_DONE	0	0	0
void () dirt7 = [5, dirt8]
{
};

// dirt8
// function begins at statement 1547, parm_start=2014
// OP_STATE	825	1984	0
// OP_DONE	0	0	0
void () dirt8 = [4, dirt9]
{
};

// dirt9
// function begins at statement 1549, parm_start=2014
// OP_STATE	823	2014	0
// OP_DONE	0	0	0
void () dirt9 = [3, dirt10]
{
};

// dirt10
// function begins at statement 1551, parm_start=2015
// OP_STATE	821	2015	0
// OP_DONE	0	0	0
void () dirt10 = [2, dirt11]
{
};

// dirt11
// function begins at statement 1553, parm_start=2016
// OP_STATE	823	2016	0
// OP_DONE	0	0	0
void () dirt11 = [3, dirt12]
{
};

// dirt12
// function begins at statement 1555, parm_start=2017
// OP_STATE	821	2017	0
// OP_DONE	0	0	0
void () dirt12 = [2, dirt13]
{
};

// dirt13
// function begins at statement 1557, parm_start=2018
// OP_STATE	819	2018	0
// OP_DONE	0	0	0
void () dirt13 = [1, dirt14]
{
};

// dirt14
// function begins at statement 1559, parm_start=2019
// OP_STATE	817	2018	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () dirt14 = [0, dirt14]
{
    remove(self);
};

// SpawnDirt
// function begins at statement 1563, parm_start=2020
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	2030	0
// OP_STORE_V	2030	4	0
// OP_STORE_V	2021	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	2030	4	0
// OP_STORE_V	2037	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	2030	113	2038
// OP_STOREP_V	2024	2038	0
// OP_LOAD_V	2020	113	2041
// OP_STORE_V	2041	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2034	0
// OP_STORE_V	2034	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2031	0
// OP_ADDRESS	2030	117	2044
// OP_STOREP_V	2027	2044	0
// OP_ADDRESS	2030	119	2047
// OP_STOREP_F	2032	2047	0
// OP_ADDRESS	2030	201	2048
// OP_STOREP_ENT	2020	2048	0
// OP_ADDRESS	2030	148	2049
// OP_STOREP_FNC	1985	2049	0
// OP_ADDRESS	2030	150	2050
// OP_ADD_F	31	1988	2051
// OP_STOREP_F	2051	2050	0
// OP_DONE	0	0	0
void (entity own, vector org, vector vel, vector ang) SpawnDirt = 
{
    local entity dirt;
    local vector vang;
    local vector vunit;
    dirt = spawn();
    setorigin(dirt, org);
    setmodel(dirt, "models/dirt.mdl");
    dirt.velocity = vel;
    vunit = normalize(own.velocity);
    vang = vectoangles(vunit);
    dirt.angles = ang;
    dirt.angles_y = 0;
    dirt.owner = own;
    dirt.think = dirt1;
    dirt.nextthink = time + 0.05;
};

// MoveTail
// function begins at statement 1592, parm_start=2053
// OP_LOAD_F	28	662	2099
// OP_BITAND	2099	228	2100
// OP_LOAD_F	28	182	2101
// OP_BITAND	2101	228	2102
// OP_NOT_F	2102	0	2103
// OP_AND	2100	2103	2104
// OP_IFNOT	2104	2	0
// OP_CALL0	1829	0	0
// OP_LOAD_ENT	28	547	2105
// OP_STORE_ENT	2105	2080	0
// OP_LOAD_V	28	113	2106
// OP_STORE_V	2106	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	2092	0
// OP_ADDRESS	28	662	2109
// OP_LOAD_F	28	182	2110
// OP_STOREP_F	2110	2109	0
// OP_LOAD_ENT	28	548	2111
// OP_ADDRESS	2111	563	2112
// OP_LOAD_ENT	28	548	2115
// OP_LOAD_V	2115	117	2116
// OP_STOREP_V	2116	2112	0
// OP_LOAD_F	28	182	2119
// OP_BITAND	2119	228	2120
// OP_LOAD_F	2080	182	2121
// OP_BITAND	2121	228	2122
// OP_AND	2120	2122	2123
// OP_STORE_V	28	4	0
// OP_CALL1	497	0	0
// OP_NOT_F	1	0	2124
// OP_AND	2123	2124	2125
// OP_IFNOT	2125	25	0
// OP_CALL0	466	0	0
// OP_LT	1	1930	2126
// OP_GT	2092	2127	2128
// OP_AND	2126	2128	2129
// OP_IFNOT	2129	14	0
// OP_LOAD_V	28	105	2130
// OP_STORE_V	2130	4	0
// OP_LOAD_V	28	105	2133
// OP_SUB_V	2133	2136	2139
// OP_STORE_V	2139	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_GT	70	1182	2142
// OP_IFNOT	2142	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2143	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	28	182	2144
// OP_LOAD_F	28	182	2145
// OP_SUB_F	2145	228	2146
// OP_STOREP_F	2146	2144	0
// OP_CALL0	1829	0	0
// OP_GOTO	160	0	0
// OP_LOAD_F	28	182	2147
// OP_BITAND	2147	228	2148
// OP_NOT_F	2148	0	2149
// OP_IFNOT	2149	156	0
// OP_LOAD_ENT	28	547	2150
// OP_ADDRESS	2150	593	2151
// OP_STOREP_F	817	2151	0
// OP_LOAD_F	28	108	2152
// OP_LOAD_F	28	112	2153
// OP_LT	2152	2153	2154
// OP_IFNOT	2154	8	0
// OP_ADDRESS	28	592	2155
// OP_LOAD_F	28	592	2156
// OP_LOAD_F	28	112	2157
// OP_LOAD_F	28	108	2158
// OP_SUB_F	2157	2158	2159
// OP_ADD_F	2156	2159	2160
// OP_STOREP_F	2160	2155	0
// OP_LOAD_ENT	28	547	2161
// OP_STORE_V	2161	4	0
// OP_LOAD_V	28	105	2162
// OP_LOAD_V	28	555	2165
// OP_MUL_VF	2165	751	2168
// OP_SUB_V	2162	2168	2171
// OP_STORE_V	2171	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	497	0	0
// OP_LOAD_F	28	683	2174
// OP_AND	2174	712	2175
// OP_NOT_F	2175	0	2176
// OP_AND	1	2176	2177
// OP_IFNOT	2177	108	0
// OP_ADDRESS	28	182	2178
// OP_LOAD_F	28	182	2179
// OP_ADD_F	2179	228	2180
// OP_STOREP_F	2180	2178	0
// OP_ADDRESS	28	644	2181
// OP_LOAD_F	28	644	2182
// OP_BITOR	2182	697	2183
// OP_STOREP_F	2183	2181	0
// OP_LOAD_F	2080	182	2184
// OP_BITAND	2184	228	2185
// OP_IFNOT	2185	5	0
// OP_ADDRESS	2080	182	2186
// OP_LOAD_F	2080	182	2187
// OP_SUB_F	2187	228	2188
// OP_STOREP_F	2188	2186	0
// OP_LOAD_ENT	28	548	2189
// OP_LOAD_V	2189	117	2190
// OP_STORE_V	2190	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	547	2193
// OP_STORE_V	2193	4	0
// OP_LOAD_V	28	105	2194
// OP_MUL_VF	59	751	2197
// OP_SUB_V	2194	2197	2200
// OP_STORE_V	2200	7	0
// OP_CALL2	462	0	0
// OP_LOAD_V	28	555	2203
// OP_STORE_V	2203	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2056	0
// OP_LOAD_ENT	28	548	2206
// OP_LOAD_F	2206	119	2207
// OP_LOAD_ENT	28	547	2208
// OP_LOAD_F	2208	612	2209
// OP_SUB_F	2207	2209	2210
// OP_STORE_V	2210	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	2057	0
// OP_STORE_V	2056	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	547	2211
// OP_ADDRESS	2211	555	2212
// OP_STOREP_V	59	2212	0
// OP_LOAD_F	28	661	2215
// OP_SUB_F	31	805	2216
// OP_LT	2215	2216	2217
// OP_LOAD_F	28	664	2218
// OP_SUB_F	31	1930	2219
// OP_LT	2218	2219	2220
// OP_AND	2217	2220	2221
// OP_IFNOT	2221	56	0
// OP_LOAD_F	28	592	2222
// OP_DIV_F	2222	2223	2224
// OP_STORE_F	2224	2094	0
// OP_GT	2094	819	2225
// OP_IFNOT	2225	2	0
// OP_STORE_F	819	2094	0
// OP_LOAD_ENT	28	548	2226
// OP_LOAD_F	2226	120	2227
// OP_STORE_V	2227	4	0
// OP_CALL1	499	0	0
// OP_LT	1	2228	2229
// OP_IFNOT	2229	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	2230	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	2097	0
// OP_LT	2097	1930	2231
// OP_IFNOT	2231	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	2232	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	25	0	0
// OP_LT	2097	2233	2234
// OP_IFNOT	2234	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	2235	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	16	0	0
// OP_LT	2097	2236	2237
// OP_IFNOT	2237	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	2238	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	2239	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	661	2240
// OP_STOREP_F	31	2240	0
// OP_GOTO	13	0	0
// OP_LOAD_V	2080	105	2241
// OP_LOAD_V	28	105	2244
// OP_SUB_V	2241	2244	2247
// OP_STORE_V	2247	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	751	2250
// OP_STORE_V	2250	2053	0
// OP_STORE_V	2080	4	0
// OP_LOAD_V	28	105	2253
// OP_ADD_V	2253	2053	2256
// OP_STORE_V	2256	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	683	2259
// OP_AND	2259	712	2260
// OP_IFNOT	2260	5	0
// OP_ADDRESS	28	683	2261
// OP_LOAD_F	28	683	2262
// OP_SUB_F	2262	712	2263
// OP_STOREP_F	2263	2261	0
// OP_LOAD_F	28	644	2264
// OP_BITAND	2264	697	2265
// OP_LOAD_F	28	182	2266
// OP_BITAND	2266	228	2267
// OP_AND	2265	2267	2268
// OP_IFNOT	2268	93	0
// OP_LOAD_ENT	28	548	2269
// OP_LOAD_V	2269	117	2270
// OP_STORE_V	2270	4	0
// OP_CALL1	461	0	0
// OP_LT	64	1152	2273
// OP_IFNOT	2273	87	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2274	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	407	2275
// OP_STOREP_S	1817	2275	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	821	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	152	2276
// OP_LT	2276	817	2277
// OP_IFNOT	2277	3	0
// OP_CALL0	1755	0	0
// OP_RETURN	817	0	0
// OP_LOAD_V	28	105	2278
// OP_STORE_V	2278	4	0
// OP_LOAD_V	28	105	2281
// OP_SUB_V	2281	2284	2287
// OP_STORE_V	2287	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	475	0	0
// OP_GT	76	1182	2290
// OP_IFNOT	2290	16	0
// OP_ADDRESS	28	116	2291
// OP_LOAD_F	28	592	2292
// OP_DIV_F	2292	821	2293
// OP_STOREP_F	2293	2291	0
// OP_LOAD_F	28	116	2294
// OP_LT	2294	2295	2296
// OP_IFNOT	2296	4	0
// OP_ADDRESS	28	116	2297
// OP_STOREP_F	2295	2297	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	116	2298
// OP_GT	2298	2299	2300
// OP_IFNOT	2300	3	0
// OP_ADDRESS	28	116	2301
// OP_STOREP_F	2299	2301	0
// OP_LOAD_ENT	28	548	2302
// OP_LOAD_F	2302	598	2303
// OP_STORE_V	2303	4	0
// OP_CALL1	499	0	0
// OP_LT	1	845	2304
// OP_IFNOT	2304	7	0
// OP_LOAD_ENT	28	548	2305
// OP_ADDRESS	2305	598	2306
// OP_LOAD_ENT	28	548	2307
// OP_LOAD_F	2307	598	2308
// OP_MUL_F	2308	2309	2310
// OP_STOREP_F	2310	2306	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	2311
// OP_ADD_V	2311	1215	2314
// OP_STORE_V	2314	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	592	2317
// OP_LOAD_F	28	592	2318
// OP_MUL_F	2318	2319	2320
// OP_STOREP_F	2320	2317	0
// OP_ADDRESS	28	182	2321
// OP_LOAD_F	28	182	2322
// OP_SUB_F	2322	228	2323
// OP_STOREP_F	2323	2321	0
// OP_LOAD_F	28	598	2324
// OP_LT	2324	817	2325
// OP_LOAD_F	28	598	2326
// OP_GT	2326	1826	2327
// OP_AND	2325	2327	2328
// OP_IFNOT	2328	4	0
// OP_ADDRESS	28	598	2329
// OP_STOREP_F	1826	2329	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	598	2330
// OP_GT	2330	817	2331
// OP_LOAD_F	28	598	2332
// OP_LT	2332	855	2333
// OP_AND	2331	2333	2334
// OP_IFNOT	2334	3	0
// OP_ADDRESS	28	598	2335
// OP_STOREP_F	855	2335	0
// OP_RETURN	819	0	0
// OP_ADDRESS	28	644	2336
// OP_LOAD_F	28	644	2337
// OP_LOAD_F	28	644	2338
// OP_BITAND	2338	697	2339
// OP_SUB_F	2337	2339	2340
// OP_STOREP_F	2340	2336	0
// OP_LOAD_F	28	182	2341
// OP_BITAND	2341	228	2342
// OP_IFNOT	2342	80	0
// OP_STORE_F	817	2096	0
// OP_LOAD_V	28	105	2343
// OP_LOAD_ENT	28	547	2346
// OP_LOAD_V	2346	105	2347
// OP_SUB_V	2343	2347	2350
// OP_STORE_V	2350	2053	0
// OP_STORE_V	2053	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	2077	0
// OP_STORE_V	2053	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2074	0
// OP_STORE_F	817	2055	0
// OP_STORE_V	2053	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2053	0
// OP_LOAD_V	28	105	2353
// OP_MUL_VF	2053	841	2356
// OP_ADD_V	2353	2356	2359
// OP_ADD_V	2359	1529	2362
// OP_STORE_V	2362	2065	0
// OP_STORE_V	2065	4	0
// OP_SUB_V	2065	2365	2368
// OP_STORE_V	2368	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2371
// OP_IFNOT	2371	3	0
// OP_STORE_V	71	2065	0
// OP_GOTO	2	0	0
// OP_STORE_F	819	2096	0
// OP_STORE_V	2053	2071	0
// OP_LOAD_V	28	105	2372
// OP_MUL_VF	2071	751	2375
// OP_SUB_V	2372	2375	2378
// OP_ADD_V	2378	1529	2381
// OP_STORE_V	2381	2068	0
// OP_STORE_V	2065	4	0
// OP_STORE_V	2068	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2384
// OP_IFNOT	2384	6	0
// OP_LOAD_V	28	105	2385
// OP_MUL_VF	2053	841	2388
// OP_SUB_V	2385	2388	2391
// OP_ADD_V	2391	1529	2394
// OP_STORE_V	2394	2068	0
// OP_STORE_V	2068	4	0
// OP_SUB_V	2068	2365	2397
// OP_STORE_V	2397	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2400
// OP_IFNOT	2400	3	0
// OP_STORE_V	71	2068	0
// OP_GOTO	2	0	0
// OP_STORE_F	819	2096	0
// OP_SUB_V	2068	2065	2401
// OP_STORE_V	2401	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2062	0
// OP_IFNOT	2096	8	0
// OP_STORE_V	2080	4	0
// OP_LOAD_V	28	105	2404
// OP_MUL_VF	2074	2077	2407
// OP_SUB_V	2404	2407	2410
// OP_STORE_V	2410	7	0
// OP_CALL2	462	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	2080	4	0
// OP_LOAD_V	28	105	2413
// OP_MUL_VF	2062	2077	2416
// OP_ADD_V	2413	2416	2419
// OP_STORE_V	2419	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	182	2422
// OP_BITAND	2422	228	2423
// OP_NOT_F	2423	0	2424
// OP_IFNOT	2424	2	0
// OP_RETURN	819	0	0
// OP_LOAD_V	28	113	2425
// OP_STORE_V	2425	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2053	0
// OP_LOAD_F	28	604	2428
// OP_LT	2092	1957	2429
// OP_LOAD_V	28	555	2430
// OP_ADD_V	2053	2430	2433
// OP_STORE_V	2433	4	0
// OP_CALL1	471	0	0
// OP_LT	1	883	2436
// OP_OR	2429	2436	2437
// OP_AND	2428	2437	2438
// OP_IFNOT	2438	12	0
// OP_LOAD_ENT	28	547	2439
// OP_STORE_V	2439	4	0
// OP_LOAD_ENT	28	547	2440
// OP_LOAD_V	2440	105	2441
// OP_LOAD_V	28	105	2444
// OP_LOAD_V	28	109	2447
// OP_SUB_V	2444	2447	2450
// OP_ADD_V	2441	2450	2453
// OP_STORE_V	2453	7	0
// OP_CALL2	462	0	0
// OP_GOTO	515	0	0
// OP_LOAD_V	28	105	2456
// OP_LOAD_ENT	28	547	2459
// OP_LOAD_V	2459	105	2460
// OP_SUB_V	2456	2460	2463
// OP_STORE_V	2463	2053	0
// OP_STORE_V	2053	4	0
// OP_CALL1	471	0	0
// OP_SUB_F	1	751	2466
// OP_STORE_F	2466	2077	0
// OP_LOAD_V	28	113	2467
// OP_STORE_V	2467	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	2092	0
// OP_STORE_V	2053	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	2053	0
// OP_LOAD_V	28	105	2470
// OP_LOAD_V	28	109	2473
// OP_SUB_V	2470	2473	2476
// OP_STORE_V	2476	4	0
// OP_CALL1	471	0	0
// OP_MUL_VF	2053	1	2479
// OP_STORE_V	2479	2053	0
// OP_LOAD_V	28	105	2482
// OP_LOAD_V	28	109	2485
// OP_NE_V	2482	2485	2488
// OP_IFNOT	2488	6	0
// OP_DIV_F	2092	778	2489
// OP_SUB_F	819	2489	2490
// OP_MUL_VF	2053	2490	2491
// OP_MUL_VF	2491	827	2494
// OP_STORE_V	2494	2053	0
// OP_LOAD_ENT	28	547	2497
// OP_LOAD_V	2497	555	2498
// OP_STORE_V	2498	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2056	0
// OP_LOAD_F	28	182	2501
// OP_BITAND	2501	228	2502
// OP_IFNOT	2502	2	0
// OP_STORE_F	817	2056	0
// OP_STORE_V	2053	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2059	0
// OP_LOAD_F	28	119	2503
// OP_STORE_V	2503	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	4	0
// OP_STORE_V	2060	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2093	0
// OP_GT	2093	865	2504
// OP_IFNOT	2504	3	0
// OP_SUB_F	2093	867	2505
// OP_STORE_F	2505	2093	0
// OP_STORE_V	2060	4	0
// OP_ADD_F	2060	2093	2506
// OP_STORE_V	2506	4	0
// OP_CALL1	859	0	0
// OP_STORE_V	1	7	0
// OP_STORE_V	867	10	0
// OP_CALL3	1453	0	0
// OP_STORE_F	1	2093	0
// OP_LOAD_F	2080	192	2507
// OP_LOAD_F	28	611	2508
// OP_EQ_F	2508	715	2509
// OP_MUL_F	2509	821	2510
// OP_ADD_F	2510	819	2511
// OP_MUL_F	2507	2511	2512
// OP_STORE_F	2512	2088	0
// OP_LOAD_F	28	610	2513
// OP_EQ_F	2513	809	2514
// OP_IFNOT	2514	3	0
// OP_MUL_F	2088	821	2515
// OP_STORE_F	2515	2088	0
// OP_DIV_F	778	823	2516
// OP_GT	2092	2516	2517
// OP_LOAD_F	28	644	2518
// OP_BITAND	2518	699	2519
// OP_AND	2517	2519	2520
// OP_IFNOT	2520	15	0
// OP_LOAD_F	28	681	2521
// OP_SUB_F	31	2522	2523
// OP_LT	2521	2523	2524
// OP_IFNOT	2524	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2525	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	644	2526
// OP_LOAD_F	28	644	2527
// OP_SUB_F	2527	699	2528
// OP_STOREP_F	2528	2526	0
// OP_GOTO	3	0	0
// OP_MUL_F	2088	821	2529
// OP_STORE_F	2529	2088	0
// OP_STORE_V	2057	4	0
// OP_LOAD_F	28	119	2530
// OP_STORE_V	2530	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2089	0
// OP_STORE_V	2089	4	0
// OP_CALL1	499	0	0
// OP_STORE_F	1	2089	0
// OP_GT	2089	865	2531
// OP_IFNOT	2531	3	0
// OP_SUB_F	867	2089	2532
// OP_STORE_F	2532	2089	0
// OP_STORE_V	2057	4	0
// OP_STORE_V	2060	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2095	0
// OP_STORE_V	2095	4	0
// OP_CALL1	499	0	0
// OP_STORE_F	1	2090	0
// OP_GT	2090	865	2533
// OP_IFNOT	2533	3	0
// OP_SUB_F	867	2090	2534
// OP_STORE_F	2534	2090	0
// OP_GT	2090	821	2535
// OP_LT	2089	2090	2536
// OP_AND	2535	2536	2537
// OP_IFNOT	2537	9	0
// OP_DIV_F	778	821	2538
// OP_LT	2092	2538	2539
// OP_MUL_F	2539	825	2540
// OP_STORE_F	2540	2094	0
// OP_SUB_F	2090	2089	2541
// OP_MUL_F	2541	781	2542
// OP_MUL_F	2088	2542	2543
// OP_STORE_F	2543	2088	0
// OP_GT	2090	827	2544
// OP_GT	2092	1957	2545
// OP_AND	2544	2545	2546
// OP_LOAD_F	28	182	2547
// OP_BITAND	2547	228	2548
// OP_AND	2546	2548	2549
// OP_NOT_F	719	0	2550
// OP_AND	2549	2550	2551
// OP_LOAD_F	28	604	2552
// OP_NOT_F	2552	0	2553
// OP_AND	2551	2553	2554
// OP_LOAD_S	28	129	2555
// OP_EQ_S	2555	880	2556
// OP_AND	2554	2556	2557
// OP_IFNOT	2557	96	0
// OP_DIV_F	2090	2558	2559
// OP_STORE_F	2559	2094	0
// OP_GT	2094	819	2560
// OP_IFNOT	2560	2	0
// OP_STORE_F	819	2094	0
// OP_LOAD_F	28	646	2561
// OP_SUB_F	31	799	2562
// OP_LT	2561	2562	2563
// OP_LOAD_S	28	129	2564
// OP_EQ_S	2564	880	2565
// OP_AND	2563	2565	2566
// OP_IFNOT	2566	70	0
// OP_LOAD_F	28	610	2567
// OP_EQ_F	2567	808	2568
// OP_IFNOT	2568	36	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2569	10	0
// OP_MUL_F	2094	1930	2570
// OP_STORE_V	2570	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	2097	0
// OP_LOAD_F	28	646	2571
// OP_MUL_F	799	821	2572
// OP_SUB_F	31	2572	2573
// OP_GT	2571	2573	2574
// OP_LT	2097	2575	2576
// OP_AND	2574	2576	2577
// OP_LOAD_S	28	129	2578
// OP_EQ_S	2578	880	2579
// OP_AND	2577	2579	2580
// OP_IFNOT	2580	16	0
// OP_LT	2097	1992	2581
// OP_IFNOT	2581	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2582	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2583	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	30	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	2584
// OP_STORE_F	2584	2097	0
// OP_LE	2097	819	2585
// OP_IFNOT	2585	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2586	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	18	0	0
// OP_LE	2097	821	2587
// OP_IFNOT	2587	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2588	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	9	0	0
// OP_LE	2097	823	2589
// OP_IFNOT	2589	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2590	10	0
// OP_STORE_V	2094	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	646	2591
// OP_STOREP_F	31	2591	0
// OP_IFNOT	735	14	0
// OP_LOAD_V	28	113	2592
// OP_STORE_V	2592	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	778	2595
// OP_STORE_F	2595	2094	0
// OP_ADDRESS	28	113	2596
// OP_LOAD_V	28	113	2599
// OP_SUB_F	819	2094	2602
// OP_DIV_F	2602	1112	2603
// OP_MUL_F	788	2603	2604
// OP_ADD_F	2604	2605	2606
// OP_MUL_VF	2599	2606	2607
// OP_STOREP_V	2607	2596	0
// OP_GT	2090	827	2610
// OP_GT	2092	2611	2612
// OP_AND	2610	2612	2613
// OP_NOT_F	719	0	2614
// OP_AND	2613	2614	2615
// OP_LOAD_F	28	604	2616
// OP_NOT_F	2616	0	2617
// OP_AND	2615	2617	2618
// OP_CALL0	466	0	0
// OP_LT	1	2619	2620
// OP_AND	2618	2620	2621
// OP_LOAD_V	28	105	2622
// OP_SUB_V	2622	1535	2625
// OP_STORE_V	2625	4	0
// OP_CALL1	498	0	0
// OP_NE_F	1	292	2628
// OP_AND	2621	2628	2629
// OP_IFNOT	2629	140	0
// OP_DIV_F	2090	2558	2630
// OP_STORE_F	2630	2094	0
// OP_GT	2094	819	2631
// OP_IFNOT	2631	2	0
// OP_STORE_F	819	2094	0
// OP_LOAD_ENT	28	548	2632
// OP_LOAD_V	2632	117	2633
// OP_LOAD_V	28	580	2636
// OP_SUB_V	2633	2636	2639
// OP_STORE_V	2639	4	0
// OP_CALL1	461	0	0
// OP_NE_F	35	855	2642
// OP_IFNOT	2642	127	0
// OP_LOAD_F	28	610	2643
// OP_EQ_F	2643	808	2644
// OP_IFNOT	2644	39	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	2645
// OP_STORE_F	2645	2079	0
// OP_STORE_V	2079	4	0
// OP_CALL1	495	0	0
// OP_ADD_F	2646	1	2647
// OP_STORE_F	2647	2079	0
// OP_LOAD_V	28	105	2648
// OP_SUB_V	2648	1666	2651
// OP_LOAD_V	28	555	2654
// OP_MUL_VF	2654	2657	2658
// OP_SUB_V	2651	2658	2661
// OP_STORE_V	2661	4	0
// OP_LOAD_V	28	113	2664
// OP_MUL_VF	2664	1182	2667
// OP_MUL_VF	65	2670	2671
// OP_ADD_V	2667	2671	2674
// OP_STORE_V	2674	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	2677	2678
// OP_STORE_V	2678	13	0
// OP_CALL4	504	0	0
// OP_LOAD_V	28	105	2679
// OP_SUB_V	2679	1666	2682
// OP_LOAD_V	28	555	2685
// OP_MUL_VF	2685	2657	2688
// OP_SUB_V	2682	2688	2691
// OP_STORE_V	2691	4	0
// OP_LOAD_V	28	113	2694
// OP_MUL_VF	2694	1182	2697
// OP_MUL_VF	65	2670	2700
// OP_SUB_V	2697	2700	2703
// OP_STORE_V	2703	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	2677	2706
// OP_STORE_V	2706	13	0
// OP_CALL4	504	0	0
// OP_GOTO	86	0	0
// OP_LOAD_F	28	610	2707
// OP_EQ_F	2707	809	2708
// OP_IFNOT	2708	41	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	2709
// OP_STORE_F	2709	2079	0
// OP_STORE_V	2079	4	0
// OP_CALL1	495	0	0
// OP_ADD_F	825	1	2710
// OP_STORE_F	2710	2079	0
// OP_LOAD_V	28	105	2711
// OP_SUB_V	2711	1666	2714
// OP_LOAD_V	28	555	2717
// OP_MUL_VF	2717	2657	2720
// OP_SUB_V	2714	2720	2723
// OP_STORE_V	2723	4	0
// OP_LOAD_V	28	113	2726
// OP_MUL_VF	2726	1182	2729
// OP_MUL_VF	65	2670	2732
// OP_ADD_V	2729	2732	2735
// OP_ADD_V	2735	2738	2741
// OP_STORE_V	2741	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	1632	2744
// OP_STORE_V	2744	13	0
// OP_CALL4	504	0	0
// OP_LOAD_V	28	105	2745
// OP_SUB_V	2745	1666	2748
// OP_LOAD_V	28	555	2751
// OP_MUL_VF	2751	2657	2754
// OP_SUB_V	2748	2754	2757
// OP_STORE_V	2757	4	0
// OP_LOAD_V	28	113	2760
// OP_MUL_VF	2760	1182	2763
// OP_MUL_VF	65	2670	2766
// OP_SUB_V	2763	2766	2769
// OP_ADD_V	2769	2738	2772
// OP_STORE_V	2772	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	1632	2775
// OP_STORE_V	2775	13	0
// OP_CALL4	504	0	0
// OP_GOTO	43	0	0
// OP_LOAD_F	28	610	2776
// OP_EQ_F	2776	810	2777
// OP_IFNOT	2777	40	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	829	2778
// OP_STORE_F	2778	2079	0
// OP_STORE_V	2079	4	0
// OP_CALL1	495	0	0
// OP_ADD_F	2779	1	2780
// OP_STORE_F	2780	2079	0
// OP_LOAD_V	28	105	2781
// OP_SUB_V	2781	1666	2784
// OP_LOAD_V	28	555	2787
// OP_MUL_VF	2787	2657	2790
// OP_SUB_V	2784	2790	2793
// OP_STORE_V	2793	4	0
// OP_LOAD_V	28	113	2796
// OP_MUL_VF	2796	1182	2799
// OP_MUL_VF	65	2670	2802
// OP_ADD_V	2799	2802	2805
// OP_ADD_V	2805	2738	2808
// OP_STORE_V	2808	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	2228	2811
// OP_STORE_V	2811	13	0
// OP_CALL4	504	0	0
// OP_LOAD_V	28	105	2812
// OP_SUB_V	2812	1666	2815
// OP_LOAD_V	28	555	2818
// OP_MUL_VF	2818	2657	2821
// OP_SUB_V	2815	2821	2824
// OP_STORE_V	2824	4	0
// OP_LOAD_V	28	113	2827
// OP_MUL_VF	2827	1182	2830
// OP_MUL_VF	65	2670	2833
// OP_SUB_V	2830	2833	2836
// OP_ADD_V	2836	2738	2839
// OP_STORE_V	2839	7	0
// OP_STORE_V	2079	10	0
// OP_MUL_F	2094	2228	2842
// OP_STORE_V	2842	13	0
// OP_CALL4	504	0	0
// OP_STORE_V	2057	4	0
// OP_STORE_V	2060	7	0
// OP_STORE_V	2088	10	0
// OP_CALL3	1453	0	0
// OP_STORE_F	1	2057	0
// OP_STORE_V	2060	4	0
// OP_STORE_V	2057	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2085	0
// OP_GT	2085	865	2843
// OP_IFNOT	2843	3	0
// OP_SUB_F	2085	867	2844
// OP_STORE_F	2844	2085	0
// OP_STORE_V	2060	4	0
// OP_LOAD_F	2080	590	2845
// OP_STORE_V	2845	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2086	0
// OP_GT	2086	865	2846
// OP_IFNOT	2846	3	0
// OP_SUB_F	2086	867	2847
// OP_STORE_F	2847	2086	0
// OP_STORE_V	2060	4	0
// OP_STORE_V	2057	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	2084	0
// OP_GT	2084	821	2848
// OP_LT	2084	947	2849
// OP_OR	2848	2849	2850
// OP_IFNOT	2850	41	0
// OP_ADDRESS	2080	593	2851
// OP_LOAD_F	2080	593	2852
// OP_DIV_F	2092	778	2854
// OP_SUB_F	819	2854	2855
// OP_MUL_F	2853	2855	2856
// OP_MUL_F	2856	823	2857
// OP_ADD_F	2852	2857	2858
// OP_STOREP_F	2858	2851	0
// OP_LOAD_F	2080	593	2859
// OP_GT	2859	819	2860
// OP_DIV_F	778	823	2861
// OP_LT	2092	2861	2862
// OP_AND	2860	2862	2863
// OP_LOAD_F	28	594	2864
// OP_LT	2864	1632	2865
// OP_AND	2863	2865	2866
// OP_IFNOT	2866	11	0
// OP_ADDRESS	2080	593	2867
// OP_LOAD_F	2080	593	2868
// OP_ADD_F	2868	2869	2870
// OP_STOREP_F	2870	2867	0
// OP_ADDRESS	28	594	2871
// OP_LOAD_F	28	594	2872
// OP_MUL_F	1112	32	2873
// OP_ADD_F	2872	2873	2874
// OP_STOREP_F	2874	2871	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	594	2875
// OP_LOAD_F	28	594	2876
// OP_MUL_F	1632	32	2877
// OP_SUB_F	2876	2877	2878
// OP_STOREP_F	2878	2875	0
// OP_LOAD_F	28	594	2879
// OP_LT	2879	817	2880
// OP_IFNOT	2880	3	0
// OP_ADDRESS	28	594	2881
// OP_STOREP_F	817	2881	0
// OP_LOAD_F	2080	593	2882
// OP_STORE_F	2882	2078	0
// OP_GOTO	6	0	0
// OP_STORE_F	817	2078	0
// OP_ADDRESS	28	594	2883
// OP_STOREP_F	817	2883	0
// OP_ADDRESS	2080	593	2884
// OP_STOREP_F	817	2884	0
// OP_GT	2078	819	2885
// OP_IFNOT	2885	2	0
// OP_STORE_F	819	2078	0
// OP_GT	2084	780	2886
// OP_IFNOT	2886	6	0
// OP_SUB_F	2060	780	2887
// OP_STORE_V	2887	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	2057	0
// OP_GOTO	8	0	0
// OP_MUL_F	1228	780	2888
// OP_LT	2084	2888	2889
// OP_IFNOT	2889	5	0
// OP_ADD_F	2060	780	2890
// OP_STORE_V	2890	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	2057	0
// OP_ADDRESS	2080	590	2891
// OP_STOREP_F	2057	2891	0
// OP_STORE_V	2056	4	0
// OP_CALL1	461	0	0
// OP_MUL_F	2077	2078	2892
// OP_MUL_FV	2892	59	2893
// OP_STORE_V	2893	2053	0
// OP_LOAD_ENT	28	547	2896
// OP_LOAD_V	2896	105	2897
// OP_ADD_V	2897	2053	2900
// OP_STORE_V	2900	2062	0
// OP_LOAD_V	28	105	2903
// OP_SUB_V	2062	2903	2906
// OP_STORE_V	2906	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	751	2909
// OP_STORE_V	2909	2053	0
// OP_LOAD_ENT	28	547	2912
// OP_STORE_V	2912	4	0
// OP_LOAD_V	28	105	2913
// OP_ADD_V	2913	2053	2916
// OP_STORE_V	2916	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	547	2919
// OP_ADDRESS	2919	555	2920
// OP_STOREP_V	59	2920	0
// OP_ADDRESS	28	555	2923
// OP_LOAD_V	28	105	2926
// OP_LOAD_ENT	28	547	2929
// OP_LOAD_V	2929	105	2930
// OP_SUB_V	2926	2930	2933
// OP_STORE_V	2933	4	0
// OP_CALL1	468	0	0
// OP_STOREP_V	1	2923	0
// OP_STORE_V	2053	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2056	0
// OP_LOAD_ENT	28	547	2936
// OP_ADDRESS	2936	117	2937
// OP_STOREP_V	2056	2937	0
// OP_RETURN	819	0	0
// OP_DONE	0	0	0
float () MoveTail = 
{
    local vector tail_vect;
    local vector tail_angles;
    local vector veh_angles;
    local vector v1;
    local vector vfront;
    local vector vback;
    local vector vtemp;
    local vector vtemp2;
    local float dist;
    local float this_slide;
    local float ftemp;
    local entity tail;
    local entity efloor;
    local entity temp_e;
    local float floor_dist;
    local float rear_dir;
    local float new_angle;
    local float old_angle;
    local float old_vel_z;
    local float this_yaw;
    local float steer_angle;
    local float slide_angle;
    local float forwardspeed;
    local float vspeed;
    local float targ_heading;
    local float vol;
    local float real_slide_angle;
    local float unstable_ground;
    local float rand;
    local string str;
    
    if((self.last_flags & FL_ONGROUND) && (!(self.flags & FL_ONGROUND)))
    {
        CarAirborne();
    }
    
    tail = self.veh_tail;
    vspeed = vlen(self.velocity);
    self.last_flags = self.flags;
    self.veh_body.old_angles = self.veh_body.angles;
    if(((self.flags & FL_ONGROUND) && (tail.flags & FL_ONGROUND)) && !checkbottom(self))
    {
        
        if((random() < 0.4) && (vspeed > 600))
        {
            traceline(self.origin, self.origin - '0.000 0.000 256.000', TRUE, self);
            
            if(trace_fraction > 0.5)
            {
                commentary(self, "voice/yeah.wav");
            }
            
        }
        
        self.flags = self.flags - FL_ONGROUND;
        CarAirborne();
    }
    else
    {
        
        if(!(self.flags & FL_ONGROUND))
        {
            self.veh_tail.slide_ratio = 0;
            
            if(self.origin_z < self.oldorigin_z)
            {
                self.last_jump_z = self.last_jump_z + (self.oldorigin_z - self.origin_z);
            }
            
            setorigin(self.veh_tail, self.origin - (self.veh_dir * TAIL_DIST));
            if(checkbottom(self) && (!(self.bot_flags && BF_STARTJUMP)))
            {
                self.flags = self.flags + FL_ONGROUND;
                self.racing_flags = self.racing_flags | QR_JUST_LANDED;
                
                if(tail.flags & FL_ONGROUND)
                {
                    tail.flags = tail.flags - FL_ONGROUND;
                }
                
                makevectors(self.veh_body.angles);
                setorigin(self.veh_tail, self.origin - (v_forward * TAIL_DIST));
                tail_angles = vectoangles(self.veh_dir);
                tail_angles_y = anglemod(self.veh_body.angles_y - self.veh_tail.tracking_speed);
                makevectors(tail_angles);
                self.veh_tail.veh_dir = v_forward;
                
                if((self.last_land < (time - SNDLEN_LAND)) && (self.leave_ground_time < (time - 0.4)))
                {
                    vol = self.last_jump_z / 64;
                    
                    if(vol > 1)
                    {
                        vol = 1;
                    }
                    
                    
                    if(fabs(self.veh_body.angles_z) < 60)
                    {
                        sound(self, CHAN_ITEM, "rally/ray/susp1.wav", vol, ATTN_STATIC);
                    }
                    
                    rand = random();
                    if(rand < 0.4)
                    {
                        sound(self, CHAN_WEAPON, "rally/bangbang.wav", vol, ATTN_STATIC);
                    }
                    else
                    {
                        if(rand < 0.6)
                        {
                            sound(self, CHAN_WEAPON, "rally/process/bang01.wav", vol, ATTN_STATIC);
                        }
                        else
                        {
                            if(rand < 0.8)
                            {
                                sound(self, CHAN_WEAPON, "rally/process/bang02.wav", vol, ATTN_STATIC);
                            }
                            else
                            {
                                sound(self, CHAN_WEAPON, "rally/process/bang03.wav", vol, ATTN_STATIC);
                            }
                            
                        }
                        
                    }
                    
                    self.last_land = time;
                }
                
            }
            else
            {
                tail_vect = (normalize(tail.origin - self.origin)) * TAIL_DIST;
                setorigin(tail, self.origin + tail_vect);
            }
            
            
            if(self.bot_flags && BF_STARTJUMP)
            {
                self.bot_flags = self.bot_flags - BF_STARTJUMP;
            }
            
        }
        
    }
    
    
    if((self.racing_flags & QR_JUST_LANDED) && (self.flags & FL_ONGROUND))
    {
        makevectors(self.veh_body.angles);
        
        if(0 < 0.2)
        {
            sound(self, CHAN_AUTO, "rally/process/rolltest.wav", 1, ATTN_STATIC);
            self.deathtype = "rolled_car";
            T_Damage(self, world, world, 2);
            
            if(self.health < 0)
            {
                DestroyVehicle();
                return 0;
            }
            
            traceline(self.origin, self.origin - '0.000 0.000 64.000', TRUE, world);
            
            if(0 > 0.5)
            {
                self.velocity_z = self.last_jump_z / 2;
                if(self.velocity_z < 220)
                {
                    self.velocity_z = 220;
                }
                else
                {
                    
                    if(self.velocity_z > 300)
                    {
                        self.velocity_z = 300;
                    }
                    
                }
                
            }
            
            
            if(fabs(self.veh_body.roll_velocity_z) < 15)
            {
                self.veh_body.roll_velocity_z = self.veh_body.roll_velocity_z * 1.2;
            }
            
            setorigin(self, self.origin + '0.000 0.000 1.000');
            self.last_jump_z = self.last_jump_z * 0.9;
            self.flags = self.flags - FL_ONGROUND;
            if((self.roll_velocity_z < 0) && (self.roll_velocity_z > -10))
            {
                self.roll_velocity_z = -10;
            }
            else
            {
                
                if((self.roll_velocity_z > 0) && (self.roll_velocity_z < 10))
                {
                    self.roll_velocity_z = 10;
                }
                
            }
            
            return 1;
        }
        
    }
    
    self.racing_flags = self.racing_flags - (self.racing_flags & QR_JUST_LANDED);
    
    if(self.flags & FL_ONGROUND)
    {
        unstable_ground = 0;
        tail_vect = self.origin - self.veh_tail.origin;
        dist = vlen(tail_vect);
        vtemp2 = normalize(tail_vect);
        tail_vect_z = 0;
        tail_vect = normalize(tail_vect);
        vfront = (self.origin + (tail_vect * 14)) + '0.000 0.000 12.000';
        traceline(vfront, vfront - '0.000 0.000 96.000', TRUE, self);
        if(trace_fraction < 1)
        {
            vfront = trace_endpos;
        }
        else
        {
            unstable_ground = 1;
        }
        
        vtemp = tail_vect;
        vback = (self.origin - (vtemp * TAIL_DIST)) + '0.000 0.000 12.000';
        traceline(vfront, vback, TRUE, self);
        
        if(trace_fraction < 1)
        {
            vback = (self.origin - (tail_vect * 14)) + '0.000 0.000 12.000';
        }
        
        traceline(vback, vback - '0.000 0.000 96.000', TRUE, self);
        if(trace_fraction < 1)
        {
            vback = trace_endpos;
        }
        else
        {
            unstable_ground = 1;
        }
        
        v1 = normalize(vback - vfront);
        if(unstable_ground)
        {
            setorigin(tail, self.origin - (vtemp2 * dist));
        }
        else
        {
            setorigin(tail, self.origin + (v1 * dist));
        }
        
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        return 1;
    }
    
    tail_vect = normalize(self.velocity);
    if(self.reversing && ((vspeed < 100) || ((vlen(tail_vect + self.veh_dir)) < 1.5)))
    {
        setorigin(self.veh_tail, self.veh_tail.origin + (self.origin - self.oldorigin));
    }
    else
    {
        tail_vect = self.origin - self.veh_tail.origin;
        dist = vlen(tail_vect) - TAIL_DIST;
        vspeed = vlen(self.velocity);
        tail_vect = normalize(tail_vect);
        tail_vect = tail_vect * (vlen(self.origin - self.oldorigin));
        
        if(self.origin != self.oldorigin)
        {
            tail_vect = (tail_vect * (1 - (vspeed / MAX_SPEED))) * 5;
        }
        
        tail_angles = vectoangles(self.veh_tail.veh_dir);
        
        if(self.flags & FL_ONGROUND)
        {
            tail_angles_x = 0;
        }
        
        veh_angles = vectoangles(normalize(tail_vect));
        targ_heading = angle_diff(anglemod(self.angles_y), 0);
        
        if(targ_heading > 180)
        {
            targ_heading = targ_heading - 360;
        }
        
        targ_heading = MoveToAngle(0 + targ_heading, anglemod(0 + targ_heading), 360);
        this_yaw = tail.yaw_speed * (((self.cam == CAM_INCAR) * 2) + 1);
        
        if(self.current_surface == SURF_ASPHALT)
        {
            this_yaw = this_yaw * 2;
        }
        
        
        if((vspeed > (MAX_SPEED / 3)) && (self.racing_flags & QR_FULL_TRACTION))
        {
            if(self.full_traction_time < (time - 30))
            {
                sprint(self, "Extra traction has worn out\n");
                self.racing_flags = self.racing_flags - QR_FULL_TRACTION;
            }
            else
            {
                this_yaw = this_yaw * 2;
            }
            
        }
        
        steer_angle = angle_diff(0, self.angles_y);
        steer_angle = fabs(steer_angle);
        
        if(steer_angle > 180)
        {
            steer_angle = 360 - steer_angle;
        }
        
        real_slide_angle = angle_diff(0, 0);
        slide_angle = fabs(real_slide_angle);
        
        if(slide_angle > 180)
        {
            slide_angle = 360 - slide_angle;
        }
        
        
        if((slide_angle > 2) && (steer_angle < slide_angle))
        {
            vol = (vspeed < (MAX_SPEED / 2)) * 4;
            this_yaw = this_yaw * ((slide_angle - steer_angle) * STEER_CORRECTION_RATIO);
        }
        
        
        if((((((slide_angle > 5) && (vspeed > 100)) && (self.flags & FL_ONGROUND)) && !hold_flag) && !self.reversing) && (self.classname == "player"))
        {
            vol = slide_angle / 45;
            
            if(vol > 1)
            {
                vol = 1;
            }
            
            
            if((self.slide_time < (time - SNDLEN_SLIDE)) && (self.classname == "player"))
            {
                if(self.current_surface == SURF_MUD)
                {
                    sound(self, CHAN_AUTO, "rally/skidmud.wav", vol * 0.4, ATTN_STATIC);
                    rand = random();
                    
                    if(((self.slide_time > (time - (SNDLEN_SLIDE * 2))) && (rand < 0.3)) && (self.classname == "player"))
                    {
                        if(rand < 0.15)
                        {
                            sound(self, CHAN_AUTO, "rally/process/drft02.wav", vol, ATTN_STATIC);
                        }
                        else
                        {
                            sound(self, CHAN_AUTO, "rally/ray/skidgrav.wav", vol, ATTN_STATIC);
                        }
                        
                    }
                    
                }
                else
                {
                    rand = random() * 3;
                    if(rand <= 1)
                    {
                        sound(self, CHAN_AUTO, "rally/ray/screech1.wav", vol, ATTN_STATIC);
                    }
                    else
                    {
                        if(rand <= 2)
                        {
                            sound(self, CHAN_AUTO, "rally/ray/screech2.wav", vol, ATTN_STATIC);
                        }
                        else
                        {
                            
                            if(rand <= 3)
                            {
                                sound(self, CHAN_AUTO, "rally/ray/screech3.wav", vol, ATTN_STATIC);
                            }
                            
                        }
                        
                    }
                    
                }
                
                self.slide_time = time;
            }
            
            
            if(lose_speed_on_slide)
            {
                vol = vlen(self.velocity) / MAX_SPEED;
                self.velocity = self.velocity * ((SLIDING_SLOWDOWN * ((1 - vol) / 20)) + 0.95);
            }
            
        }
        
        
        if((((((slide_angle > 5) && (vspeed > 50)) && !hold_flag) && !self.reversing) && (random() < 0.7)) && ((pointcontents(self.origin - '0.000 0.000 16.000')) != CONTENT_WATER))
        {
            vol = slide_angle / 45;
            
            if(vol > 1)
            {
                vol = 1;
            }
            
            makevectors(self.veh_body.angles - self.body_roll);
            
            if(deathmatch != 10)
            {
                if(self.current_surface == SURF_MUD)
                {
                    ftemp = random() * 3;
                    ftemp = 112 + floor(ftemp);
                    particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), (self.velocity * 0.5) + (v_right * 16), ftemp, vol * 80);
                    particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), (self.velocity * 0.5) - (v_right * 16), ftemp, vol * 80);
                }
                else
                {
                    if(self.current_surface == SURF_ASPHALT)
                    {
                        ftemp = random() * 5;
                        ftemp = 4 + floor(ftemp);
                        particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), ((self.velocity * 0.5) + (v_right * 16)) + '0.000 0.000 10.000', ftemp, vol * 40);
                        particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), ((self.velocity * 0.5) - (v_right * 16)) + '0.000 0.000 10.000', ftemp, vol * 40);
                    }
                    else
                    {
                        
                        if(self.current_surface == SURF_GRASS)
                        {
                            ftemp = random() * 6;
                            ftemp = 53 + floor(ftemp);
                            particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), ((self.velocity * 0.5) + (v_right * 16)) + '0.000 0.000 10.000', ftemp, vol * 60);
                            particle((self.origin - '0.000 0.000 8.000') - (self.veh_dir * 32), ((self.velocity * 0.5) - (v_right * 16)) + '0.000 0.000 10.000', ftemp, vol * 60);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        tail_angles_y = MoveToAngle(0, 0, this_yaw);
        new_angle = angle_diff(0, 0);
        
        if(new_angle > 180)
        {
            new_angle = new_angle - 360;
        }
        
        old_angle = angle_diff(0, tail.last_speed);
        
        if(old_angle > 180)
        {
            old_angle = old_angle - 360;
        }
        
        rear_dir = angle_diff(0, 0);
        if((rear_dir > 2) || (rear_dir < -2))
        {
            tail.slide_ratio = tail.slide_ratio + ((0.09 * (1 - (vspeed / MAX_SPEED))) * 3);
            if(((tail.slide_ratio > 1) && (vspeed < (MAX_SPEED / 3))) && (self.slide_donut_vel < 40))
            {
                tail.slide_ratio = tail.slide_ratio + 0.1;
                self.slide_donut_vel = self.slide_donut_vel + (20 * frametime);
            }
            else
            {
                self.slide_donut_vel = self.slide_donut_vel - (40 * frametime);
                
                if(self.slide_donut_vel < 0)
                {
                    self.slide_donut_vel = 0;
                }
                
            }
            
            this_slide = tail.slide_ratio;
        }
        else
        {
            this_slide = 0;
            self.slide_donut_vel = 0;
            tail.slide_ratio = 0;
        }
        
        
        if(this_slide > 1)
        {
            this_slide = 1;
        }
        
        if(rear_dir > MAX_SLIDING_ANGLE)
        {
            tail_angles_y = anglemod(0 - MAX_SLIDING_ANGLE);
        }
        else
        {
            
            if(rear_dir < (-1 * MAX_SLIDING_ANGLE))
            {
                tail_angles_y = anglemod(0 + MAX_SLIDING_ANGLE);
            }
            
        }
        
        tail.last_speed = 0;
        makevectors(tail_angles);
        tail_vect = (dist * this_slide) * v_forward;
        v1 = self.veh_tail.origin + tail_vect;
        tail_vect = (normalize(v1 - self.origin)) * TAIL_DIST;
        setorigin(self.veh_tail, self.origin + tail_vect);
    }
    
    self.veh_tail.veh_dir = v_forward;
    self.veh_dir = normalize(self.origin - self.veh_tail.origin);
    tail_angles = vectoangles(tail_vect);
    self.veh_tail.angles = tail_angles;
    return 1;
};

// MoveWheels
// function begins at statement 2556, parm_start=2940
// OP_LOAD_ENT	28	552	2945
// OP_NE_E	2945	30	2946
// OP_IFNOT	2946	25	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	552	2947
// OP_STORE_V	2947	7	0
// OP_MUL_F	748	825	2948
// OP_STORE_V	2948	10	0
// OP_MUL_F	749	829	2949
// OP_STORE_V	2949	13	0
// OP_STORE_V	817	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_V	28	105	2950
// OP_STORE_V	2950	4	0
// OP_LOAD_ENT	28	552	2953
// OP_LOAD_V	2953	105	2954
// OP_STORE_V	2954	7	0
// OP_STORE_V	817	10	0
// OP_LOAD_ENT	28	552	2957
// OP_STORE_V	2957	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2958
// OP_IFNOT	2958	5	0
// OP_LOAD_ENT	28	552	2959
// OP_STORE_V	2959	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	551	2960
// OP_NE_E	2960	30	2961
// OP_IFNOT	2961	26	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	551	2962
// OP_STORE_V	2962	7	0
// OP_MUL_F	1228	748	2963
// OP_MUL_F	2963	825	2964
// OP_STORE_V	2964	10	0
// OP_MUL_F	749	829	2965
// OP_STORE_V	2965	13	0
// OP_STORE_V	817	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_V	28	105	2966
// OP_STORE_V	2966	4	0
// OP_LOAD_ENT	28	551	2969
// OP_LOAD_V	2969	105	2970
// OP_STORE_V	2970	7	0
// OP_STORE_V	817	10	0
// OP_LOAD_ENT	28	551	2973
// OP_STORE_V	2973	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2974
// OP_IFNOT	2974	5	0
// OP_LOAD_ENT	28	551	2975
// OP_STORE_V	2975	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	553	2976
// OP_NE_E	2976	30	2977
// OP_IFNOT	2977	24	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	553	2978
// OP_STORE_V	2978	7	0
// OP_STORE_V	817	10	0
// OP_MUL_F	749	855	2979
// OP_STORE_V	2979	13	0
// OP_STORE_V	817	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_V	28	105	2980
// OP_STORE_V	2980	4	0
// OP_LOAD_ENT	28	553	2983
// OP_LOAD_V	2983	105	2984
// OP_STORE_V	2984	7	0
// OP_STORE_V	817	10	0
// OP_LOAD_ENT	28	553	2987
// OP_STORE_V	2987	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	2988
// OP_IFNOT	2988	5	0
// OP_LOAD_ENT	28	553	2989
// OP_STORE_V	2989	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	2990
// OP_IFNOT	2990	82	0
// OP_LOAD_V	28	555	2991
// OP_STORE_V	2991	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	2940	0
// OP_LOAD_ENT	28	549	2994
// OP_ADDRESS	2994	117	2995
// OP_LOAD_ENT	28	548	2998
// OP_LOAD_V	2998	117	2999
// OP_LOAD_V	28	580	3002
// OP_SUB_V	2999	3002	3005
// OP_STOREP_V	3005	2995	0
// OP_LOAD_ENT	28	548	3008
// OP_STORE_V	3008	4	0
// OP_LOAD_ENT	28	549	3009
// OP_STORE_V	3009	7	0
// OP_STORE_V	817	10	0
// OP_LOAD_F	28	631	3010
// OP_STORE_V	3010	13	0
// OP_LOAD_F	28	632	3011
// OP_STORE_V	3011	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_ENT	28	550	3012
// OP_ADDRESS	3012	117	3013
// OP_LOAD_ENT	28	548	3016
// OP_LOAD_V	3016	117	3017
// OP_LOAD_V	28	580	3020
// OP_SUB_V	3017	3020	3023
// OP_STOREP_V	3023	3013	0
// OP_LOAD_ENT	28	548	3026
// OP_STORE_V	3026	4	0
// OP_LOAD_ENT	28	550	3027
// OP_STORE_V	3027	7	0
// OP_STORE_V	817	10	0
// OP_LOAD_F	28	635	3028
// OP_STORE_V	3028	13	0
// OP_LOAD_F	28	636	3029
// OP_STORE_V	3029	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_ENT	28	549	3030
// OP_STORE_ENT	3030	2943	0
// OP_LOAD_V	28	575	3031
// OP_STORE_V	3031	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	821	3034
// OP_STORE_V	3034	4	0
// OP_CALL1	495	0	0
// OP_STORE_F	1	2944	0
// OP_GT	2944	839	3035
// OP_IFNOT	3035	2	0
// OP_STORE_F	1228	2944	0
// OP_LOAD_F	28	604	3036
// OP_IFNOT	3036	6	0
// OP_ADDRESS	2943	132	3037
// OP_LOAD_F	2943	132	3038
// OP_ADD_F	3038	2944	3039
// OP_STOREP_F	3039	3037	0
// OP_GOTO	5	0	0
// OP_ADDRESS	2943	132	3040
// OP_LOAD_F	2943	132	3041
// OP_SUB_F	3041	2944	3042
// OP_STOREP_F	3042	3040	0
// OP_LOAD_F	2943	132	3043
// OP_LT	3043	817	3044
// OP_IFNOT	3044	6	0
// OP_ADDRESS	2943	132	3045
// OP_LOAD_F	2943	132	3046
// OP_ADD_F	3046	839	3047
// OP_STOREP_F	3047	3045	0
// OP_GOTO	-7	0	0
// OP_LOAD_F	2943	132	3048
// OP_GT	3048	829	3049
// OP_IFNOT	3049	6	0
// OP_ADDRESS	2943	132	3050
// OP_LOAD_F	2943	132	3051
// OP_SUB_F	3051	839	3052
// OP_STOREP_F	3052	3050	0
// OP_GOTO	-7	0	0
// OP_LOAD_ENT	28	550	3053
// OP_ADDRESS	3053	132	3054
// OP_LOAD_F	2943	132	3055
// OP_STOREP_F	3055	3054	0
// OP_LOAD_ENT	28	554	3056
// OP_NE_E	3056	30	3057
// OP_IFNOT	3057	45	0
// OP_LOAD_ENT	28	548	3058
// OP_LOAD_V	3058	117	3059
// OP_STORE_V	3059	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	628	3062
// OP_EQ_F	3062	823	3063
// OP_LOAD_F	28	628	3064
// OP_EQ_F	3064	827	3065
// OP_OR	3063	3065	3066
// OP_IFNOT	3066	10	0
// OP_LOAD_ENT	28	554	3067
// OP_STORE_V	3067	4	0
// OP_LOAD_ENT	28	548	3068
// OP_LOAD_V	3068	105	3069
// OP_MUL_VF	62	760	3072
// OP_ADD_V	3069	3072	3075
// OP_STORE_V	3075	7	0
// OP_CALL2	462	0	0
// OP_GOTO	10	0	0
// OP_LOAD_ENT	28	554	3078
// OP_STORE_V	3078	4	0
// OP_LOAD_ENT	28	548	3079
// OP_LOAD_V	3079	105	3080
// OP_MUL_F	760	3083	3084
// OP_MUL_VF	62	3084	3085
// OP_ADD_V	3080	3085	3088
// OP_STORE_V	3088	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	154	3091
// OP_EQ_F	3091	277	3092
// OP_IFNOT	3092	9	0
// OP_LOAD_ENT	28	554	3093
// OP_STORE_V	3093	4	0
// OP_LOAD_ENT	28	554	3094
// OP_LOAD_V	3094	105	3095
// OP_MUL_VF	62	843	3098
// OP_SUB_V	3095	3098	3101
// OP_STORE_V	3101	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	554	3104
// OP_ADDRESS	3104	117	3105
// OP_LOAD_ENT	28	548	3108
// OP_LOAD_V	3108	117	3109
// OP_STOREP_V	3109	3105	0
// OP_DONE	0	0	0
void () MoveWheels = 
{
    local vector heading;
    local entity w;
    local float dist;
    
    if(self.hl_r != world)
    {
        SetVehPosition(self, self.hl_r, VEH_WIDTH * 4, VEH_LENGTH * 6, 0);
        traceline(self.origin, self.hl_r.origin, 0, self.hl_r);
        
        if(trace_fraction < 1)
        {
            setorigin(self.hl_r, trace_endpos);
        }
        
    }
    
    
    if(self.hl_l != world)
    {
        SetVehPosition(self, self.hl_l, (-1 * VEH_WIDTH) * 4, VEH_LENGTH * 6, 0);
        traceline(self.origin, self.hl_l.origin, 0, self.hl_l);
        
        if(trace_fraction < 1)
        {
            setorigin(self.hl_l, trace_endpos);
        }
        
    }
    
    
    if(self.hl_m != world)
    {
        SetVehPosition(self, self.hl_m, 0, VEH_LENGTH * 10, 0);
        traceline(self.origin, self.hl_m.origin, 0, self.hl_m);
        
        if(trace_fraction < 1)
        {
            setorigin(self.hl_m, trace_endpos);
        }
        
    }
    
    
    if(!cvar("deathmatch"))
    {
        heading = vectoangles(self.veh_dir);
        self.fwhl.angles = self.veh_body.angles - self.body_roll;
        SetVehPosition(self.veh_body, self.fwhl, 0, self.fwhl_offset_y, self.fwhl_offset_z);
        self.rwhl.angles = self.veh_body.angles - self.body_roll;
        SetVehPosition(self.veh_body, self.rwhl, 0, self.rwhl_offset_y, self.rwhl_offset_z);
        w = self.fwhl;
        dist = floor(vlen(self.lastmove) / 2);
        
        if(dist > 7)
        {
            dist = -1;
        }
        
        if(self.reversing)
        {
            w.skin = w.skin + dist;
        }
        else
        {
            w.skin = w.skin - dist;
        }
        
        
        while(w.skin < 0)
        {
            w.skin = w.skin + 7;
        }
        
        
        while(w.skin > 6)
        {
            w.skin = w.skin - 7;
        }
        
        self.rwhl.skin = w.skin;
    }
    
    
    if(self.gun != world)
    {
        makevectors(self.veh_body.angles);
        if((self.car_index == 3) || (self.car_index == 5))
        {
            setorigin(self.gun, self.veh_body.origin + (v_up * GUN_ZOFS));
        }
        else
        {
            setorigin(self.gun, self.veh_body.origin + (v_up * (GUN_ZOFS * 0.75)));
        }
        
        
        if(self.weapon == IT_ROOBAR)
        {
            setorigin(self.gun, self.gun.origin - (v_up * 8));
        }
        
        self.gun.angles = self.veh_body.angles;
    }
    
};

// ReduceVelocity
// function begins at statement 2770, parm_start=3113
// OP_LOAD_V	3113	113	3116
// OP_STORE_V	3116	4	0
// OP_CALL1	471	0	0
// OP_SUB_F	819	3114	3119
// OP_MUL_F	1	3119	3120
// OP_STORE_F	3120	3115	0
// OP_ADDRESS	3113	113	3121
// OP_LOAD_V	3113	113	3124
// OP_STORE_V	3124	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	3115	3127
// OP_STOREP_V	3127	3121	0
// OP_DONE	0	0	0
void (entity e, float ratio) ReduceVelocity = 
{
    local float new_length;
    new_length = vlen(e.velocity) * (1 - ratio);
    e.velocity = normalize(e.velocity) * new_length;
};

// SetPrevSurfAngle
// function begins at statement 2783, parm_start=3131
// OP_ADDRESS	28	619	3132
// OP_LOAD_F	28	618	3133
// OP_STOREP_F	3133	3132	0
// OP_ADDRESS	28	618	3134
// OP_LOAD_F	28	617	3135
// OP_STOREP_F	3135	3134	0
// OP_ADDRESS	28	617	3136
// OP_LOAD_F	28	616	3137
// OP_STOREP_F	3137	3136	0
// OP_ADDRESS	28	616	3138
// OP_LOAD_F	28	615	3139
// OP_STOREP_F	3139	3138	0
// OP_ADDRESS	28	614	3140
// OP_STOREP_F	31	3140	0
// OP_ADDRESS	28	615	3141
// OP_STOREP_F	3131	3141	0
// OP_DONE	0	0	0
void (float newangle) SetPrevSurfAngle = 
{
    self.prev_surfangle5 = self.prev_surfangle4;
    self.prev_surfangle4 = self.prev_surfangle3;
    self.prev_surfangle3 = self.prev_surfangle2;
    self.prev_surfangle2 = self.prev_surfangle1;
    self.last_prevsurf = time;
    self.prev_surfangle1 = newangle;
};

// SetSurfaceAngle
// function begins at statement 2800, parm_start=3143
// OP_LOAD_F	28	558	3167
// OP_GT	3167	2236	3168
// OP_LOAD_F	28	558	3169
// OP_LT	3169	3170	3171
// OP_OR	3168	3171	3172
// OP_IFNOT	3172	2	0
// OP_RETURN	817	0	0
// OP_LOAD_F	28	182	3173
// OP_BITAND	3173	228	3174
// OP_NOT_F	3174	0	3175
// OP_IFNOT	3175	2	0
// OP_RETURN	817	0	0
// OP_STORE_V	3176	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	3162	0
// OP_LOAD_V	28	105	3177
// OP_LOAD_V	28	109	3180
// OP_SUB_V	3177	3180	3183
// OP_STORE_V	3183	4	0
// OP_CALL1	471	0	0
// OP_GT	1	817	3186
// OP_IFNOT	3186	195	0
// OP_LOAD_V	28	113	3187
// OP_STORE_V	3187	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3166	0
// OP_GT	3166	1885	3190
// OP_IFNOT	3190	74	0
// OP_LOAD_V	28	113	3191
// OP_STORE_V	3191	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	3156	0
// OP_STORE_V	3156	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	3156	0
// OP_LOAD_ENT	28	548	3194
// OP_LOAD_F	3194	119	3195
// OP_STORE_V	3195	4	0
// OP_STORE_V	3157	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	3165	0
// OP_GT	3165	827	3196
// OP_IFNOT	3196	14	0
// OP_ADDRESS	28	584	3197
// OP_LOAD_F	28	584	3198
// OP_DIV_F	3166	778	3199
// OP_MUL_F	1380	3199	3200
// OP_MUL_F	3200	32	3201
// OP_ADD_F	3198	3201	3202
// OP_STOREP_F	3202	3197	0
// OP_LOAD_F	28	584	3203
// OP_GT	3203	845	3204
// OP_IFNOT	3204	3	0
// OP_ADDRESS	28	584	3205
// OP_STOREP_F	845	3205	0
// OP_GOTO	45	0	0
// OP_LT	3165	1483	3206
// OP_IFNOT	3206	14	0
// OP_ADDRESS	28	584	3207
// OP_LOAD_F	28	584	3208
// OP_DIV_F	3166	778	3209
// OP_MUL_F	1380	3209	3210
// OP_MUL_F	3210	32	3211
// OP_SUB_F	3208	3211	3212
// OP_STOREP_F	3212	3207	0
// OP_LOAD_F	28	584	3213
// OP_LT	3213	3214	3215
// OP_IFNOT	3215	3	0
// OP_ADDRESS	28	584	3216
// OP_STOREP_F	3214	3216	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	584	3217
// OP_STORE_V	3217	4	0
// OP_CALL1	499	0	0
// OP_GT	1	817	3218
// OP_IFNOT	3218	25	0
// OP_LOAD_F	28	584	3219
// OP_LT	3219	817	3220
// OP_IFNOT	3220	12	0
// OP_ADDRESS	28	584	3221
// OP_LOAD_F	28	584	3222
// OP_MUL_F	2522	32	3223
// OP_ADD_F	3222	3223	3224
// OP_STOREP_F	3224	3221	0
// OP_LOAD_F	28	584	3225
// OP_GT	3225	817	3226
// OP_IFNOT	3226	3	0
// OP_ADDRESS	28	584	3227
// OP_STOREP_F	817	3227	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	584	3228
// OP_LOAD_F	28	584	3229
// OP_MUL_F	2522	32	3230
// OP_SUB_F	3229	3230	3231
// OP_STOREP_F	3231	3228	0
// OP_LOAD_F	28	584	3232
// OP_LT	3232	817	3233
// OP_IFNOT	3233	3	0
// OP_ADDRESS	28	584	3234
// OP_STOREP_F	817	3234	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	584	3235
// OP_STORE_V	3235	4	0
// OP_CALL1	499	0	0
// OP_GT	1	817	3236
// OP_IFNOT	3236	25	0
// OP_LOAD_F	28	584	3237
// OP_LT	3237	817	3238
// OP_IFNOT	3238	12	0
// OP_ADDRESS	28	584	3239
// OP_LOAD_F	28	584	3240
// OP_MUL_F	2522	32	3241
// OP_ADD_F	3240	3241	3242
// OP_STOREP_F	3242	3239	0
// OP_LOAD_F	28	584	3243
// OP_GT	3243	817	3244
// OP_IFNOT	3244	3	0
// OP_ADDRESS	28	584	3245
// OP_STOREP_F	817	3245	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	584	3246
// OP_LOAD_F	28	584	3247
// OP_MUL_F	2522	32	3248
// OP_SUB_F	3247	3248	3249
// OP_STOREP_F	3249	3246	0
// OP_LOAD_F	28	584	3250
// OP_LT	3250	817	3251
// OP_IFNOT	3251	3	0
// OP_ADDRESS	28	584	3252
// OP_STOREP_F	817	3252	0
// OP_ADDRESS	28	583	3253
// OP_LOAD_F	28	583	3254
// OP_LOAD_F	28	584	3255
// OP_SUB_F	3254	3255	3256
// OP_STOREP_F	3256	3253	0
// OP_LOAD_F	28	610	3257
// OP_NE_F	3257	809	3258
// OP_IFNOT	3258	72	0
// OP_ADDRESS	28	581	3259
// OP_LOAD_F	28	581	3260
// OP_LOAD_F	28	586	3261
// OP_LOAD_V	28	113	3262
// OP_STORE_V	3262	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	778	3265
// OP_MUL_F	3261	3265	3266
// OP_CALL0	466	0	0
// OP_MUL_F	1	821	3267
// OP_MUL_F	3266	3267	3268
// OP_LOAD_F	28	611	3269
// OP_EQ_F	3269	715	3270
// OP_ADD_F	3270	819	3271
// OP_DIV_F	819	3271	3272
// OP_MUL_F	3268	3272	3273
// OP_ADD_F	3260	3273	3274
// OP_STOREP_F	3274	3259	0
// OP_ADDRESS	28	583	3275
// OP_LOAD_F	28	583	3276
// OP_LOAD_F	28	588	3277
// OP_LOAD_V	28	113	3278
// OP_STORE_V	3278	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	778	3281
// OP_MUL_F	3277	3281	3282
// OP_CALL0	466	0	0
// OP_MUL_F	1	821	3283
// OP_MUL_F	3282	3283	3284
// OP_LOAD_F	28	611	3285
// OP_EQ_F	3285	715	3286
// OP_ADD_F	3286	819	3287
// OP_DIV_F	819	3287	3288
// OP_MUL_F	3284	3288	3289
// OP_ADD_F	3276	3289	3290
// OP_STOREP_F	3290	3275	0
// OP_LOAD_F	28	581	3291
// OP_STORE_V	3291	4	0
// OP_CALL1	499	0	0
// OP_GT	1	1182	3292
// OP_IFNOT	3292	13	0
// OP_ADDRESS	28	586	3293
// OP_LOAD_F	28	586	3294
// OP_MUL_F	1228	3294	3295
// OP_STOREP_F	3295	3293	0
// OP_ADDRESS	28	581	3296
// OP_LOAD_F	28	581	3297
// OP_LOAD_F	28	581	3298
// OP_STORE_V	3298	4	0
// OP_CALL1	499	0	0
// OP_DIV_F	3297	1	3299
// OP_MUL_F	3299	821	3300
// OP_STOREP_F	3300	3296	0
// OP_LOAD_F	28	583	3301
// OP_STORE_V	3301	4	0
// OP_CALL1	499	0	0
// OP_GT	1	827	3302
// OP_IFNOT	3302	13	0
// OP_ADDRESS	28	588	3303
// OP_LOAD_F	28	588	3304
// OP_MUL_F	1228	3304	3305
// OP_STOREP_F	3305	3303	0
// OP_ADDRESS	28	583	3306
// OP_LOAD_F	28	583	3307
// OP_LOAD_F	28	583	3308
// OP_STORE_V	3308	4	0
// OP_CALL1	499	0	0
// OP_DIV_F	3307	1	3309
// OP_MUL_F	3309	821	3310
// OP_STOREP_F	3310	3306	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	580	3311
// OP_STOREP_V	926	3311	0
// OP_ADDRESS	28	583	3314
// OP_LOAD_F	28	583	3315
// OP_LOAD_F	28	584	3316
// OP_ADD_F	3315	3316	3317
// OP_STOREP_F	3317	3314	0
// OP_LOAD_V	28	555	3318
// OP_STORE_V	3318	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	3159	0
// OP_STORE_F	817	3161	0
// OP_STORE_F	817	3159	0
// OP_STORE_V	3159	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	3321
// OP_MUL_VF	65	841	3324
// OP_SUB_V	3321	3324	3327
// OP_STORE_V	3327	3144	0
// OP_MUL_FV	3330	62	3331
// OP_ADD_V	3144	3331	3334
// OP_STORE_V	3334	3150	0
// OP_MUL_FV	3337	62	3338
// OP_SUB_V	3144	3338	3341
// OP_STORE_V	3341	3153	0
// OP_STORE_V	3150	4	0
// OP_STORE_V	3153	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	3344
// OP_IFNOT	3344	3	0
// OP_RETURN	817	0	0
// OP_GOTO	9	0	0
// OP_SUB_V	3144	71	3345
// OP_STORE_V	3345	4	0
// OP_CALL1	471	0	0
// OP_GT	1	3143	3348
// OP_IFNOT	3348	3	0
// OP_RETURN	817	0	0
// OP_GOTO	2	0	0
// OP_STORE_V	71	3144	0
// OP_LOAD_V	28	105	3349
// OP_MUL_VF	65	841	3352
// OP_ADD_V	3349	3352	3355
// OP_STORE_V	3355	3147	0
// OP_MUL_FV	3330	62	3358
// OP_ADD_V	3147	3358	3361
// OP_STORE_V	3361	3150	0
// OP_MUL_FV	3337	62	3364
// OP_SUB_V	3147	3364	3367
// OP_STORE_V	3367	3153	0
// OP_STORE_V	3150	4	0
// OP_STORE_V	3153	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	3370
// OP_IFNOT	3370	3	0
// OP_RETURN	817	0	0
// OP_GOTO	9	0	0
// OP_SUB_V	3147	71	3371
// OP_STORE_V	3371	4	0
// OP_CALL1	471	0	0
// OP_GT	1	3143	3374
// OP_IFNOT	3374	3	0
// OP_RETURN	817	0	0
// OP_GOTO	2	0	0
// OP_STORE_V	71	3147	0
// OP_SUB_V	3144	3147	3375
// OP_STORE_V	3375	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	3156	0
// OP_STORE_V	3156	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	3156	0
// OP_LOAD_ENT	28	548	3378
// OP_LOAD_V	3378	555	3379
// OP_STORE_V	3379	3159	0
// OP_STORE_V	3161	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	3161	0
// OP_STORE_V	3161	4	0
// OP_STORE_V	3156	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_MUL_F	785	32	3382
// OP_GT	1	3382	3383
// OP_IFNOT	3383	6	0
// OP_STORE_V	3161	4	0
// OP_STORE_V	3156	7	0
// OP_STORE_V	785	10	0
// OP_CALL3	1453	0	0
// OP_STORE_F	1	3156	0
// OP_LOAD_F	28	614	3384
// OP_SUB_F	31	1152	3385
// OP_LT	3384	3385	3386
// OP_IFNOT	3386	3	0
// OP_STORE_V	3156	4	0
// OP_CALL1	3130	0	0
// OP_LOAD_ENT	28	548	3387
// OP_ADDRESS	3387	602	3388
// OP_LOAD_ENT	28	548	3389
// OP_LOAD_F	3389	558	3390
// OP_SUB_F	3156	3390	3391
// OP_STOREP_F	3391	3388	0
// OP_LOAD_ENT	28	548	3392
// OP_ADDRESS	3392	558	3393
// OP_STOREP_F	3156	3393	0
// OP_RETURN	819	0	0
// OP_DONE	0	0	0
float () SetSurfaceAngle = 
{
    local float MAX_DIST;
    local vector left;
    local vector right;
    local vector spos;
    local vector epos;
    local vector angle;
    local vector veh_angle;
    local float gravity;
    local float temp_z;
    local float dist;
    local float diff;
    local float vspeed;
    
    if((self.veh_dir_z > 0.8) || (self.veh_dir_z < -0.8))
    {
        return 0;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        return 0;
    }
    
    gravity = cvar("sv_gravity");
    
    if((vlen(self.origin - self.oldorigin)) > 0)
    {
        vspeed = vlen(self.velocity);
        if(vspeed > 150)
        {
            angle = normalize(self.velocity);
            angle = vectoangles(angle);
            diff = angle_diff(self.veh_body.angles_y, 0);
            if(diff > 5)
            {
                self.body_lean = self.body_lean + ((25 * (vspeed / MAX_SPEED)) * frametime);
                
                if(self.body_lean > 15)
                {
                    self.body_lean = 15;
                }
                
            }
            else
            {
                if(diff < -5)
                {
                    self.body_lean = self.body_lean - ((25 * (vspeed / MAX_SPEED)) * frametime);
                    
                    if(self.body_lean < -15)
                    {
                        self.body_lean = -15;
                    }
                    
                }
                else
                {
                    
                    if(fabs(self.body_lean) > 0)
                    {
                        if(self.body_lean < 0)
                        {
                            self.body_lean = self.body_lean + (30 * frametime);
                            
                            if(self.body_lean > 0)
                            {
                                self.body_lean = 0;
                            }
                            
                        }
                        else
                        {
                            self.body_lean = self.body_lean - (30 * frametime);
                            
                            if(self.body_lean < 0)
                            {
                                self.body_lean = 0;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            
            if(fabs(self.body_lean) > 0)
            {
                if(self.body_lean < 0)
                {
                    self.body_lean = self.body_lean + (30 * frametime);
                    
                    if(self.body_lean > 0)
                    {
                        self.body_lean = 0;
                    }
                    
                }
                else
                {
                    self.body_lean = self.body_lean - (30 * frametime);
                    
                    if(self.body_lean < 0)
                    {
                        self.body_lean = 0;
                    }
                    
                }
                
            }
            
        }
        
        self.body_roll_z = self.body_roll_z - self.body_lean;
        if(self.current_surface != SURF_ASPHALT)
        {
            self.body_roll_x = self.body_roll_x + (((self.body_roll_vel_x * (vlen(self.velocity) / MAX_SPEED)) * (random() * 2)) * (1 / ((self.cam == CAM_INCAR) + 1)));
            self.body_roll_z = self.body_roll_z + (((self.body_roll_vel_z * (vlen(self.velocity) / MAX_SPEED)) * (random() * 2)) * (1 / ((self.cam == CAM_INCAR) + 1)));
            
            if(fabs(self.body_roll_x) > 0.5)
            {
                self.body_roll_vel_x = -1 * self.body_roll_vel_x;
                self.body_roll_x = (self.body_roll_x / fabs(self.body_roll_x)) * 2;
            }
            
            
            if(fabs(self.body_roll_z) > 5)
            {
                self.body_roll_vel_z = -1 * self.body_roll_vel_z;
                self.body_roll_z = (self.body_roll_z / fabs(self.body_roll_z)) * 2;
            }
            
        }
        else
        {
            self.body_roll = '0.000 0.000 0.000';
        }
        
        self.body_roll_z = self.body_roll_z + self.body_lean;
    }
    
    veh_angle = vectoangles(self.veh_dir);
    veh_angle_z = 0;
    veh_angle_x = 0;
    makevectors(veh_angle);
    left = self.origin - (v_right * 14);
    spos = left + (48 * v_up);
    epos = left - (1000 * v_up);
    traceline(spos, epos, TRUE, self);
    if(trace_fraction == 1)
    {
        return 0;
    }
    else
    {
        if((vlen(left - trace_endpos)) > MAX_DIST)
        {
            return 0;
        }
        else
        {
            left = trace_endpos;
        }
        
    }
    
    right = self.origin + (v_right * 14);
    spos = right + (48 * v_up);
    epos = right - (1000 * v_up);
    traceline(spos, epos, TRUE, self);
    if(trace_fraction == 1)
    {
        return 0;
    }
    else
    {
        if((vlen(right - trace_endpos)) > MAX_DIST)
        {
            return 0;
        }
        else
        {
            right = trace_endpos;
        }
        
    }
    
    angle = normalize(left - right);
    angle = vectoangles(angle);
    veh_angle = self.veh_body.veh_dir;
    veh_angle_z = anglemod(0);
    
    if(fabs(angle_diff(0, angle_x)) > (80 * frametime))
    {
        angle_x = MoveToAngle(0, angle_x, 80);
    }
    
    
    if(self.last_prevsurf < (time - 0.2))
    {
        SetPrevSurfAngle(angle_x);
    }
    
    self.veh_body.last_roll_z = angle_x - self.veh_body.veh_dir_z;
    self.veh_body.veh_dir_z = angle_x;
    return 1;
};

// checkHealth
// function begins at statement 3121, parm_start=3395
// OP_LOAD_F	28	152	3395
// OP_LE	3395	821	3396
// OP_IFNOT	3396	2	0
// OP_CALL0	1755	0	0
// OP_DONE	0	0	0
void () checkHealth = 
{
    
    if(self.health <= 2)
    {
        DestroyVehicle();
    }
    
};

// CarCollision
// function begins at statement 3126, parm_start=3398
// OP_LOAD_V	3399	105	3407
// OP_LOAD_V	3398	105	3410
// OP_SUB_V	3407	3410	3413
// OP_STORE_V	3413	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	3400	0
// OP_LOAD_V	3398	113	3416
// OP_STORE_V	3416	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3403	0
// OP_LOAD_V	3399	113	3419
// OP_STORE_V	3419	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3404	0
// OP_ADDRESS	3398	113	3422
// OP_LOAD_V	3398	113	3425
// OP_STORE_V	3425	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	3404	3428
// OP_MUL_VF	3428	2605	3431
// OP_STOREP_V	3431	3422	0
// OP_ADDRESS	3399	113	3434
// OP_LOAD_V	3399	113	3437
// OP_STORE_V	3400	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	3404	3440
// OP_ADD_V	3437	3440	3443
// OP_MUL_VF	3443	1182	3446
// OP_STOREP_V	3446	3434	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	3449
// OP_STORE_F	3449	3405	0
// OP_LT	3405	819	3450
// OP_IFNOT	3450	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3451	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	36	0	0
// OP_LT	3405	821	3452
// OP_IFNOT	3452	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3453	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	27	0	0
// OP_LT	3405	823	3454
// OP_IFNOT	3454	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3455	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	18	0	0
// OP_LT	3405	825	3456
// OP_IFNOT	3456	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3457	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	9	0	0
// OP_LT	3405	827	3458
// OP_IFNOT	3458	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3459	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	3398	113	3460
// OP_LOAD_V	3399	113	3463
// OP_SUB_V	3460	3463	3466
// OP_STORE_V	3466	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	855	3469
// OP_STORE_F	3469	3406	0
// OP_LOAD_F	3398	154	3470
// OP_NE_F	3470	277	3471
// OP_IFNOT	3471	3	0
// OP_ADDRESS	3399	407	3472
// OP_STOREP_S	3473	3472	0
// OP_STORE_V	3399	4	0
// OP_STORE_V	3398	7	0
// OP_STORE_V	3398	10	0
// OP_DIV_F	3406	855	3474
// OP_STORE_V	3474	13	0
// OP_CALL4	534	0	0
// OP_DONE	0	0	0
void (entity veh1, entity veh2) CarCollision = 
{
    local vector veh1_to_veh2;
    local float veh1_speed;
    local float veh2_speed;
    local float rnd;
    local float impact;
    veh1_to_veh2 = normalize(veh2.origin - veh1.origin);
    veh1_speed = vlen(veh1.velocity);
    veh2_speed = vlen(veh2.velocity);
    veh1.velocity = (normalize(veh1.velocity) * veh2_speed) * 0.95;
    veh2.velocity = (veh2.velocity + (normalize(veh1_to_veh2) * veh2_speed)) * 0.5;
    rnd = random() * 5;
    if(rnd < 1)
    {
        sound(self, CHAN_AUTO, "rally/nexus/wall.wav", 1, ATTN_NORM);
    }
    else
    {
        if(rnd < 2)
        {
            sound(self, CHAN_AUTO, "rally/ray/crash2.wav", 1, ATTN_NORM);
        }
        else
        {
            if(rnd < 3)
            {
                sound(self, CHAN_AUTO, "rally/ray/crash3.wav", 1, ATTN_NORM);
            }
            else
            {
                if(rnd < 4)
                {
                    sound(self, CHAN_AUTO, "rally/ray/crash4.wav", 1, ATTN_NORM);
                }
                else
                {
                    
                    if(rnd < 5)
                    {
                        sound(self, CHAN_AUTO, "rally/ray/crash5.wav", 1, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        
    }
    
    impact = (vlen(veh1.velocity - veh2.velocity)) / 10;
    
    if(veh1.weapon != IT_ROOBAR)
    {
        veh2.deathtype = "car_collision";
    }
    
    T_Damage(veh2, veh1, veh1, impact / 10);
};

// CarGib
// function begins at statement 3221, parm_start=3476
// OP_EQ_F	35	855	3484
// OP_IFNOT	3484	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	3482	0
// OP_ADDRESS	3482	104	3485
// OP_STOREP_F	245	3485	0
// OP_ADDRESS	3482	103	3486
// OP_STOREP_F	241	3486	0
// OP_STORE_V	3482	4	0
// OP_STORE_V	3487	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	3482	4	0
// OP_STORE_V	3476	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	3482	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	3488
// OP_STORE_F	3488	3483	0
// OP_ADDRESS	3482	131	3489
// OP_STORE_V	3483	4	0
// OP_CALL1	495	0	0
// OP_STOREP_F	1	3489	0
// OP_ADDRESS	3482	113	3490
// OP_STOREP_V	3479	3490	0
// OP_ADDRESS	3482	121	3493
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	3499
// OP_ADD_F	3499	1182	3500
// OP_MUL_VF	3496	3500	3501
// OP_STOREP_V	3501	3493	0
// OP_ADDRESS	3482	183	3504
// OP_LOAD_F	28	183	3505
// OP_STOREP_F	3505	3504	0
// OP_ADDRESS	3482	148	3506
// OP_STOREP_FNC	533	3506	0
// OP_ADDRESS	3482	150	3507
// OP_ADD_F	31	3083	3508
// OP_STOREP_F	3508	3507	0
// OP_DONE	0	0	0
void (vector pos, vector vel) CarGib = 
{
    local entity gib;
    local float f;
    
    if(deathmatch == 10)
    {
        return;
    }
    
    gib = spawn();
    gib.solid = SOLID_BBOX;
    gib.movetype = MOVETYPE_BOUNCE;
    setmodel(gib, "models/gibs.mdl");
    setorigin(gib, pos);
    setsize(gib, '0.000 0.000 0.000', '0.000 0.000 0.000');
    f = random() * 4;
    gib.frame = floor(f);
    gib.velocity = vel;
    gib.avelocity = '300.000 300.000 300.000' * ((random() * 0.5) + 0.5);
    gib.colormap = self.colormap;
    gib.think = SUB_Remove;
    gib.nextthink = time + 0.75;
};

// CarGibs
// function begins at statement 3264, parm_start=3510
// OP_MUL_F	3516	821	3521
// OP_STORE_V	3521	4	0
// OP_CALL1	495	0	0
// OP_STORE_F	1	3517	0
// OP_GT	3517	817	3522
// OP_IFNOT	3522	21	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	3523
// OP_STORE_F	3523	3518	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	3524
// OP_STORE_F	3524	3519	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	821	3525
// OP_STORE_F	3525	3520	0
// OP_SUB_V	3518	3526	3529
// OP_STORE_V	3529	3518	0
// OP_ADD_V	3510	3518	3532
// OP_STORE_V	3532	4	0
// OP_MUL_VF	3518	2611	3535
// OP_ADD_V	3513	3535	3538
// OP_STORE_V	3538	7	0
// OP_CALL2	3475	0	0
// OP_SUB_F	3517	819	3541
// OP_STORE_F	3541	3517	0
// OP_GOTO	-21	0	0
// OP_DONE	0	0	0
void (vector pos, vector vel, float dam) CarGibs = 
{
    local float num_gibs;
    local vector randvect;
    num_gibs = floor(dam * 2);
    
    while(num_gibs > 0)
    {
        randvect_x = random() * 4;
        randvect_y = random() * 4;
        randvect_z = random() * 2;
        randvect = randvect - '2.000 2.000 1.000';
        CarGib(pos + randvect, vel + (randvect * 50));
        num_gibs = num_gibs - 1;
    }
    
};

// CheckForCollision
// function begins at statement 3291, parm_start=3543
// OP_LOAD_V	28	113	3558
// OP_STORE_V	3558	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3556	0
// OP_LOAD_V	28	621	3561
// OP_STORE_V	3561	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3557	0
// OP_LOAD_F	28	590	3564
// OP_LT	3543	3564	3565
// OP_LOAD_F	28	656	3566
// OP_SUB_F	31	801	3567
// OP_LT	3566	3567	3568
// OP_AND	3565	3568	3569
// OP_IFNOT	3569	443	0
// OP_LOAD_ENT	28	548	3570
// OP_LOAD_V	3570	117	3571
// OP_STORE_V	3571	3544	0
// OP_MUL_F	1228	3544	3574
// OP_STORE_F	3574	3544	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	821	3575
// OP_STORE_F	3575	3551	0
// OP_LT	3551	819	3576
// OP_IFNOT	3576	3	0
// OP_STORE_S	3577	3553	0
// OP_GOTO	2	0	0
// OP_STORE_S	3578	3553	0
// OP_STORE_V	3544	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	3579
// OP_MUL_VF	59	757	3582
// OP_MUL_VF	3582	821	3585
// OP_ADD_V	3579	3585	3588
// OP_STORE_V	3588	3547	0
// OP_LOAD_V	28	105	3591
// OP_STORE_V	3591	4	0
// OP_STORE_V	3547	7	0
// OP_STORE_V	817	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	3594
// OP_IFNOT	3594	152	0
// OP_LOAD_F	28	590	3595
// OP_SUB_F	3595	3543	3596
// OP_DIV_F	3596	1632	3597
// OP_STORE_F	3597	3550	0
// OP_GT	3550	819	3598
// OP_IFNOT	3598	2	0
// OP_STORE_F	819	3550	0
// OP_LT	3550	817	3599
// OP_IFNOT	3599	2	0
// OP_STORE_F	817	3550	0
// OP_LOAD_F	28	154	3600
// OP_EQ_F	3600	277	3601
// OP_LOAD_F	28	217	3602
// OP_GT	3602	817	3603
// OP_AND	3601	3603	3604
// OP_IFNOT	3604	64	0
// OP_LOAD_S	78	129	3605
// OP_EQ_S	3605	3606	3607
// OP_LOAD_S	78	129	3608
// OP_EQ_S	3608	3609	3610
// OP_OR	3607	3610	3611
// OP_IFNOT	3611	8	0
// OP_STORE_ENT	28	3555	0
// OP_STORE_ENT	28	29	0
// OP_STORE_ENT	78	28	0
// OP_LOAD_FNC	28	146	3612
// OP_CALL0	3612	0	0
// OP_STORE_ENT	3555	28	0
// OP_GOTO	37	0	0
// OP_LOAD_S	78	129	3613
// OP_EQ_S	3613	880	3614
// OP_IFNOT	3614	18	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_MUL_F	3550	1885	3615
// OP_STORE_V	3615	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	78	154	3616
// OP_EQ_F	3616	277	3617
// OP_IFNOT	3617	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	3550	1885	3618
// OP_STORE_V	3618	13	0
// OP_CALL4	534	0	0
// OP_ADDRESS	28	407	3619
// OP_STOREP_S	3620	3619	0
// OP_LOAD_F	28	217	3621
// OP_MUL_F	3550	834	3622
// OP_GT	3621	3622	3623
// OP_IFNOT	3623	9	0
// OP_ADDRESS	28	157	3624
// OP_ADDRESS	28	217	3625
// OP_LOAD_F	28	217	3626
// OP_MUL_F	3550	834	3627
// OP_SUB_F	3626	3627	3628
// OP_STOREP_F	3628	3625	0
// OP_STOREP_F	3628	3624	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	3629
// OP_ADDRESS	28	217	3630
// OP_STOREP_F	817	3630	0
// OP_STOREP_F	817	3629	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3631	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_ENT	28	548	3632
// OP_ADDRESS	3632	133	3633
// OP_LOAD_ENT	28	548	3634
// OP_LOAD_F	3634	133	3635
// OP_BITOR	3635	350	3636
// OP_STOREP_F	3636	3633	0
// OP_CALL0	539	0	0
// OP_GOTO	65	0	0
// OP_EQ_E	78	30	3637
// OP_LOAD_V	28	555	3638
// OP_ADD_V	74	3638	3641
// OP_STORE_V	3641	4	0
// OP_CALL1	471	0	0
// OP_LT	1	1182	3644
// OP_AND	3637	3644	3645
// OP_GT	3556	1820	3646
// OP_AND	3645	3646	3647
// OP_IFNOT	3647	32	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	2522	13	0
// OP_CALL4	534	0	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	3648
// OP_IFNOT	3648	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3649	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3650	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3459	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3651	7	0
// OP_CALL2	520	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	3550	825	3652
// OP_STORE_V	3652	13	0
// OP_CALL4	534	0	0
// OP_MUL_VF	59	829	3653
// OP_SUB_V	71	3653	3656
// OP_STORE_V	3656	4	0
// OP_LOAD_V	28	113	3659
// OP_MUL_VF	3659	3083	3662
// OP_ADD_V	3662	1593	3665
// OP_STORE_V	3665	7	0
// OP_MUL_F	3550	825	3668
// OP_STORE_V	3668	10	0
// OP_CALL3	3509	0	0
// OP_CALL0	3394	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3553	10	0
// OP_STORE_V	3550	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_NE_E	78	30	3669
// OP_IFNOT	3669	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	78	7	0
// OP_CALL2	3397	0	0
// OP_ADDRESS	28	656	3670
// OP_STOREP_F	31	3670	0
// OP_RETURN	0	0	0
// OP_ADD_V	65	59	3671
// OP_STORE_V	3671	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	3544	0
// OP_LOAD_V	28	105	3674
// OP_MUL_VF	3544	757	3677
// OP_MUL_VF	3677	821	3680
// OP_ADD_V	3674	3680	3683
// OP_STORE_V	3683	3547	0
// OP_LOAD_V	28	105	3686
// OP_STORE_V	3686	4	0
// OP_STORE_V	3547	7	0
// OP_STORE_V	817	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	3689
// OP_IFNOT	3689	100	0
// OP_LOAD_F	28	590	3690
// OP_SUB_F	3690	3543	3691
// OP_DIV_F	3691	1632	3692
// OP_STORE_F	3692	3550	0
// OP_GT	3550	819	3693
// OP_IFNOT	3693	2	0
// OP_STORE_F	819	3550	0
// OP_LT	3550	817	3694
// OP_IFNOT	3694	2	0
// OP_STORE_F	817	3550	0
// OP_LOAD_F	28	154	3695
// OP_EQ_F	3695	277	3696
// OP_LOAD_F	28	217	3697
// OP_GT	3697	817	3698
// OP_AND	3696	3698	3699
// OP_IFNOT	3699	53	0
// OP_LOAD_S	78	129	3700
// OP_EQ_S	3700	3606	3701
// OP_LOAD_S	78	129	3702
// OP_EQ_S	3702	3609	3703
// OP_OR	3701	3703	3704
// OP_IFNOT	3704	8	0
// OP_STORE_ENT	28	3555	0
// OP_STORE_ENT	28	29	0
// OP_STORE_ENT	78	28	0
// OP_LOAD_FNC	28	146	3705
// OP_CALL0	3705	0	0
// OP_STORE_ENT	3555	28	0
// OP_GOTO	26	0	0
// OP_LOAD_S	78	129	3706
// OP_EQ_S	3706	880	3707
// OP_IFNOT	3707	7	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_MUL_F	3550	1885	3708
// OP_STORE_V	3708	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	217	3709
// OP_MUL_F	3550	834	3710
// OP_GT	3709	3710	3711
// OP_IFNOT	3711	9	0
// OP_ADDRESS	28	157	3712
// OP_ADDRESS	28	217	3713
// OP_LOAD_F	28	217	3714
// OP_MUL_F	3550	834	3715
// OP_SUB_F	3714	3715	3716
// OP_STOREP_F	3716	3713	0
// OP_STOREP_F	3716	3712	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	3717
// OP_ADDRESS	28	217	3718
// OP_STOREP_F	817	3718	0
// OP_STOREP_F	817	3717	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3631	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_ENT	28	548	3719
// OP_ADDRESS	3719	133	3720
// OP_LOAD_ENT	28	548	3721
// OP_LOAD_F	3721	133	3722
// OP_BITOR	3722	350	3723
// OP_STOREP_F	3723	3720	0
// OP_CALL0	539	0	0
// OP_GOTO	24	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	3550	825	3724
// OP_STORE_V	3724	13	0
// OP_CALL4	534	0	0
// OP_MUL_VF	3544	825	3725
// OP_SUB_V	71	3725	3728
// OP_STORE_V	3728	4	0
// OP_LOAD_V	28	113	3731
// OP_MUL_VF	3731	3083	3734
// OP_ADD_V	3734	1593	3737
// OP_STORE_V	3737	7	0
// OP_MUL_F	3550	825	3740
// OP_STORE_V	3740	10	0
// OP_CALL3	3509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3553	10	0
// OP_STORE_V	3550	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_CALL0	3394	0	0
// OP_NE_E	78	30	3741
// OP_IFNOT	3741	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	78	7	0
// OP_CALL2	3397	0	0
// OP_ADDRESS	28	656	3742
// OP_STOREP_F	31	3742	0
// OP_RETURN	0	0	0
// OP_MUL_FV	1228	65	3743
// OP_ADD_V	3743	59	3746
// OP_STORE_V	3746	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	3544	0
// OP_LOAD_V	28	105	3749
// OP_MUL_VF	3544	757	3752
// OP_MUL_VF	3752	821	3755
// OP_ADD_V	3749	3755	3758
// OP_STORE_V	3758	3547	0
// OP_LOAD_V	28	105	3761
// OP_STORE_V	3761	4	0
// OP_STORE_V	3547	7	0
// OP_STORE_V	817	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	3764
// OP_IFNOT	3764	100	0
// OP_LOAD_F	28	590	3765
// OP_SUB_F	3765	3543	3766
// OP_DIV_F	3766	1632	3767
// OP_STORE_F	3767	3550	0
// OP_GT	3550	819	3768
// OP_IFNOT	3768	2	0
// OP_STORE_F	819	3550	0
// OP_LT	3550	817	3769
// OP_IFNOT	3769	2	0
// OP_STORE_F	817	3550	0
// OP_LOAD_F	28	154	3770
// OP_EQ_F	3770	277	3771
// OP_LOAD_F	28	217	3772
// OP_GT	3772	817	3773
// OP_AND	3771	3773	3774
// OP_IFNOT	3774	53	0
// OP_LOAD_S	78	129	3775
// OP_EQ_S	3775	3606	3776
// OP_LOAD_S	78	129	3777
// OP_EQ_S	3777	3609	3778
// OP_OR	3776	3778	3779
// OP_IFNOT	3779	8	0
// OP_STORE_ENT	28	3555	0
// OP_STORE_ENT	28	29	0
// OP_STORE_ENT	78	28	0
// OP_LOAD_FNC	28	146	3780
// OP_CALL0	3780	0	0
// OP_STORE_ENT	3555	28	0
// OP_GOTO	26	0	0
// OP_LOAD_S	78	129	3781
// OP_EQ_S	3781	880	3782
// OP_IFNOT	3782	7	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_MUL_F	3550	1885	3783
// OP_STORE_V	3783	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	217	3784
// OP_MUL_F	3550	834	3785
// OP_GT	3784	3785	3786
// OP_IFNOT	3786	9	0
// OP_ADDRESS	28	157	3787
// OP_ADDRESS	28	217	3788
// OP_LOAD_F	28	217	3789
// OP_MUL_F	3550	834	3790
// OP_SUB_F	3789	3790	3791
// OP_STOREP_F	3791	3788	0
// OP_STOREP_F	3791	3787	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	3792
// OP_ADDRESS	28	217	3793
// OP_STOREP_F	817	3793	0
// OP_STOREP_F	817	3792	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3631	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_ENT	28	548	3794
// OP_ADDRESS	3794	133	3795
// OP_LOAD_ENT	28	548	3796
// OP_LOAD_F	3796	133	3797
// OP_BITOR	3797	350	3798
// OP_STOREP_F	3798	3795	0
// OP_CALL0	539	0	0
// OP_GOTO	24	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	3550	825	3799
// OP_STORE_V	3799	13	0
// OP_CALL4	534	0	0
// OP_MUL_VF	3544	825	3800
// OP_SUB_V	71	3800	3803
// OP_STORE_V	3803	4	0
// OP_LOAD_V	28	113	3806
// OP_MUL_VF	3806	3083	3809
// OP_ADD_V	3809	1593	3812
// OP_STORE_V	3812	7	0
// OP_MUL_F	3550	825	3815
// OP_STORE_V	3815	10	0
// OP_CALL3	3509	0	0
// OP_CALL0	3394	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3553	10	0
// OP_STORE_V	3550	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_NE_E	78	30	3816
// OP_IFNOT	3816	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	78	7	0
// OP_CALL2	3397	0	0
// OP_ADDRESS	28	656	3817
// OP_STOREP_F	31	3817	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3818
// OP_STORE_V	3818	4	0
// OP_STORE_V	2223	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	3554	0
// OP_NE_E	3554	30	3821
// OP_IFNOT	3821	24	0
// OP_EQ_E	3554	28	3822
// OP_LOAD_S	3554	129	3823
// OP_NE_S	3823	880	3824
// OP_OR	3822	3824	3825
// OP_LOAD_S	3554	129	3826
// OP_NE_S	3826	1187	3827
// OP_OR	3825	3827	3828
// OP_IFNOT	3828	4	0
// OP_LOAD_ENT	3554	164	3829
// OP_STORE_ENT	3829	3554	0
// OP_GOTO	12	0	0
// OP_LOAD_V	3554	113	3830
// OP_STORE_V	3830	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	3552	0
// OP_ADDRESS	28	113	3833
// OP_LOAD_V	28	113	3836
// OP_STORE_V	3836	4	0
// OP_CALL1	468	0	0
// OP_MUL_F	3552	2605	3839
// OP_MUL_VF	1	3839	3840
// OP_STOREP_V	3840	3833	0
// OP_GOTO	-24	0	0
// OP_LOAD_F	28	644	3843
// OP_BITAND	3843	702	3844
// OP_LOAD_F	28	628	3845
// OP_NE_F	3845	823	3846
// OP_OR	3844	3846	3847
// OP_IFNOT	3847	2	0
// OP_RETURN	0	0	0
// OP_GT	3556	3557	3848
// OP_LOAD_F	28	644	3849
// OP_BITAND	3849	692	3850
// OP_AND	3848	3850	3851
// OP_LOAD_F	28	648	3852
// OP_SUB_F	31	798	3853
// OP_LT	3852	3853	3854
// OP_AND	3851	3854	3855
// OP_LOAD_F	28	182	3856
// OP_BITAND	3856	228	3857
// OP_AND	3855	3857	3858
// OP_IFNOT	3858	48	0
// OP_GT	3556	3859	3860
// OP_LT	3556	3861	3862
// OP_AND	3860	3862	3863
// OP_IFNOT	3863	33	0
// OP_LOAD_ENT	28	547	3864
// OP_LOAD_V	3864	555	3865
// OP_STORE_V	3865	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	3544	0
// OP_STORE_V	3545	4	0
// OP_LOAD_ENT	28	548	3868
// OP_LOAD_F	3868	119	3869
// OP_STORE_V	3869	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	845	3870
// OP_IFNOT	3870	18	0
// OP_GT	3556	3871	3872
// OP_IFNOT	3872	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	829	7	0
// OP_STORE_V	3873	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	829	7	0
// OP_STORE_V	3874	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	648	3875
// OP_STOREP_F	31	3875	0
// OP_GOTO	11	0	0
// OP_LT	3557	1135	3876
// OP_IFNOT	3876	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	829	7	0
// OP_STORE_V	3877	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	648	3878
// OP_STOREP_F	31	3878	0
// OP_GOTO	45	0	0
// OP_LT	3556	3557	3879
// OP_LOAD_F	28	649	3880
// OP_SUB_F	31	798	3881
// OP_LT	3880	3881	3882
// OP_AND	3879	3882	3883
// OP_IFNOT	3883	39	0
// OP_GT	3556	3884	3885
// OP_LT	3556	3886	3887
// OP_AND	3885	3887	3888
// OP_IFNOT	3888	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	827	7	0
// OP_STORE_V	3889	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	649	3890
// OP_STOREP_F	31	3890	0
// OP_GOTO	26	0	0
// OP_GT	3556	2127	3891
// OP_LT	3556	3892	3893
// OP_AND	3891	3893	3894
// OP_IFNOT	3894	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	827	7	0
// OP_STORE_V	3895	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	649	3896
// OP_STOREP_F	31	3896	0
// OP_GOTO	13	0	0
// OP_GT	3556	1948	3897
// OP_LT	3556	3871	3898
// OP_AND	3897	3898	3899
// OP_IFNOT	3899	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	827	7	0
// OP_STORE_V	3900	10	0
// OP_STORE_V	3083	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	649	3901
// OP_STOREP_F	31	3901	0
// OP_DONE	0	0	0
void (float vel_speed) CheckForCollision = 
{
    local vector dir;
    local vector pos;
    local float vol;
    local float rnd;
    local float ent_speed;
    local string crash_snd;
    local entity ent;
    local entity oldself;
    local float vspeed;
    local float lspeed;
    vspeed = vlen(self.velocity);
    lspeed = vlen(self.last_velocity);
    
    if((vel_speed < self.last_speed) && (self.last_crash < (time - SNDLEN_CRASH)))
    {
        dir = self.veh_body.angles;
        dir_x = -1 * dir_x;
        rnd = random() * 2;
        if(rnd < 1)
        {
            crash_snd = "rally/crash5.wav";
        }
        else
        {
            crash_snd = "rally/process/crsh01.wav";
        }
        
        makevectors(dir);
        pos = self.origin + ((v_forward * VEH_MAX_x) * 2);
        traceline(self.origin, pos, 0, self);
        
        if(trace_fraction < 1)
        {
            vol = (self.last_speed - vel_speed) / 40;
            
            if(vol > 1)
            {
                vol = 1;
            }
            
            
            if(vol < 0)
            {
                vol = 0;
            }
            
            if((self.weapon == IT_ROOBAR) && (self.ammo_roobar > 0))
            {
                if((trace_ent.classname == "rally_roo") || (trace_ent.classname == "rally_dude"))
                {
                    other = oldself = self;
                    self = trace_ent;
                    self.touch();
                    self = oldself;
                }
                else
                {
                    
                    if(trace_ent.classname == "player")
                    {
                        T_Damage(trace_ent, self, self, vol * 150);
                        
                        if(trace_ent.weapon == IT_ROOBAR)
                        {
                            T_Damage(self, world, world, vol * 150);
                            self.deathtype = "repulsor_feedback";
                        }
                        
                    }
                    
                    if(self.ammo_roobar > (vol * 12))
                    {
                        self.currentammo = self.ammo_roobar = self.ammo_roobar - (vol * 12);
                    }
                    else
                    {
                        self.ammo_roobar = 0;
                        self.currentammo = 0;
                    }
                    
                }
                
                sound(self, CHAN_AUTO, "rally/process/elect02.wav", 1, ATTN_NORM);
                self.veh_body.effects = self.veh_body.effects | EF_DIMLIGHT;
                W_Attack();
            }
            else
            {
                if(((trace_ent == world) && ((vlen(trace_plane_normal + self.veh_dir)) < 0.5)) && (vspeed > 500))
                {
                    T_Damage(self, world, world, 30);
                    if(random() < 0.5)
                    {
                        sound(self, CHAN_AUTO, "rally/dude/sevpain1.wav", 1, ATTN_NORM);
                    }
                    else
                    {
                        sound(self, CHAN_AUTO, "rally/dude/sevpain2.wav", 1, ATTN_NORM);
                    }
                    
                    sound(self, CHAN_AUTO, "rally/ray/crash5.wav", 1, ATTN_NORM);
                    centerprint(self, "Whiplash damage!");
                }
                else
                {
                    T_Damage(self, world, world, vol * 4);
                }
                
                CarGibs(trace_endpos - (v_forward * 6), (self.velocity * 0.75) + '0.000 0.000 150.000', vol * 4);
                checkHealth();
                sound(self, CHAN_AUTO, crash_snd, vol, ATTN_STATIC);
            }
            
            
            if(trace_ent != world)
            {
                CarCollision(self, trace_ent);
            }
            
            self.last_crash = time;
            return;
        }
        
        dir = normalize(v_right + v_forward);
        pos = self.origin + ((dir * VEH_MAX_x) * 2);
        traceline(self.origin, pos, 0, self);
        
        if(trace_fraction < 1)
        {
            vol = (self.last_speed - vel_speed) / 40;
            
            if(vol > 1)
            {
                vol = 1;
            }
            
            
            if(vol < 0)
            {
                vol = 0;
            }
            
            if((self.weapon == IT_ROOBAR) && (self.ammo_roobar > 0))
            {
                if((trace_ent.classname == "rally_roo") || (trace_ent.classname == "rally_dude"))
                {
                    other = oldself = self;
                    self = trace_ent;
                    self.touch();
                    self = oldself;
                }
                else
                {
                    
                    if(trace_ent.classname == "player")
                    {
                        T_Damage(trace_ent, self, self, vol * 150);
                    }
                    
                    if(self.ammo_roobar > (vol * 12))
                    {
                        self.currentammo = self.ammo_roobar = self.ammo_roobar - (vol * 12);
                    }
                    else
                    {
                        self.ammo_roobar = 0;
                        self.currentammo = 0;
                    }
                    
                }
                
                sound(self, CHAN_AUTO, "rally/process/elect02.wav", 1, ATTN_NORM);
                self.veh_body.effects = self.veh_body.effects | EF_DIMLIGHT;
                W_Attack();
            }
            else
            {
                T_Damage(self, world, world, vol * 4);
                CarGibs(trace_endpos - (dir * 4), (self.velocity * 0.75) + '0.000 0.000 150.000', vol * 4);
                sound(self, CHAN_AUTO, crash_snd, vol, ATTN_STATIC);
                checkHealth();
            }
            
            
            if(trace_ent != world)
            {
                CarCollision(self, trace_ent);
            }
            
            self.last_crash = time;
            return;
        }
        
        dir = normalize((-1 * v_right) + v_forward);
        pos = self.origin + ((dir * VEH_MAX_x) * 2);
        traceline(self.origin, pos, 0, self);
        
        if(trace_fraction < 1)
        {
            vol = (self.last_speed - vel_speed) / 40;
            
            if(vol > 1)
            {
                vol = 1;
            }
            
            
            if(vol < 0)
            {
                vol = 0;
            }
            
            if((self.weapon == IT_ROOBAR) && (self.ammo_roobar > 0))
            {
                if((trace_ent.classname == "rally_roo") || (trace_ent.classname == "rally_dude"))
                {
                    other = oldself = self;
                    self = trace_ent;
                    self.touch();
                    self = oldself;
                }
                else
                {
                    
                    if(trace_ent.classname == "player")
                    {
                        T_Damage(trace_ent, self, self, vol * 150);
                    }
                    
                    if(self.ammo_roobar > (vol * 12))
                    {
                        self.currentammo = self.ammo_roobar = self.ammo_roobar - (vol * 12);
                    }
                    else
                    {
                        self.ammo_roobar = 0;
                        self.currentammo = 0;
                    }
                    
                }
                
                sound(self, CHAN_AUTO, "rally/process/elect02.wav", 1, ATTN_NORM);
                self.veh_body.effects = self.veh_body.effects | EF_DIMLIGHT;
                W_Attack();
            }
            else
            {
                T_Damage(self, world, world, vol * 4);
                CarGibs(trace_endpos - (dir * 4), (self.velocity * 0.75) + '0.000 0.000 150.000', vol * 4);
                checkHealth();
                sound(self, CHAN_AUTO, crash_snd, vol, ATTN_STATIC);
            }
            
            
            if(trace_ent != world)
            {
                CarCollision(self, trace_ent);
            }
            
            self.last_crash = time;
            return;
        }
        
        ent = findradius(self.origin, 64);
        
        while(ent != world)
        {
            if(((ent == self) || (ent.classname != "player")) || (ent.classname != "rally_bot"))
            {
                ent = ent.chain;
            }
            else
            {
                ent_speed = vlen(ent.velocity);
                self.velocity = normalize(self.velocity) * (ent_speed * 0.95);
            }
            
        }
        
    }
    
    
    if((self.racing_flags & QR_OUT_OF_TIME) || (self.car_index != 3))
    {
        return;
    }
    
    if((((vspeed > lspeed) && (self.racing_flags & QR_START_READY)) && (self.last_rev < (time - SNDLEN_HIGHREV))) && (self.flags & FL_ONGROUND))
    {
        if((vspeed > 450) && (vspeed < 650))
        {
            dir = vectoangles(self.veh_tail.veh_dir);
            
            if(fabs(angle_diff(0, self.veh_body.angles_y)) > 15)
            {
                if(vspeed > 550)
                {
                    sound(self, 6, "rally/engine/rev/highrev2.wav", 0.75, ATTN_NORM);
                }
                else
                {
                    sound(self, 6, "rally/engine/rev/highrev.wav", 0.75, ATTN_NORM);
                }
                
                self.last_rev = time;
            }
            
        }
        else
        {
            
            if(lspeed < 250)
            {
                sound(self, 6, "rally/engine/rev/takeoff.wav", 0.75, ATTN_NORM);
                self.last_rev = time;
            }
            
        }
        
    }
    else
    {
        
        if((vspeed < lspeed) && (self.last_backrev < (time - SNDLEN_HIGHREV)))
        {
            if((vspeed > 800) && (vspeed < 950))
            {
                sound(self, 5, "rally/engine/rev/backrev2.wav", 0.75, ATTN_NORM);
                self.last_backrev = time;
            }
            else
            {
                if((vspeed > 600) && (vspeed < 750))
                {
                    sound(self, 5, "rally/engine/rev/backrev.wav", 0.75, ATTN_NORM);
                    self.last_backrev = time;
                }
                else
                {
                    
                    if((vspeed > 400) && (vspeed < 550))
                    {
                        sound(self, 5, "rally/engine/rev/backrev3.wav", 0.75, ATTN_NORM);
                        self.last_backrev = time;
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// DoEngineNoises
// function begins at statement 3859, parm_start=3903
// OP_LOAD_F	28	644	3910
// OP_BITAND	3910	702	3911
// OP_IFNOT	3911	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	591	3912
// OP_SUB_F	31	2869	3913
// OP_LT	3912	3913	3914
// OP_IFNOT	3914	625	0
// OP_ADDRESS	28	591	3915
// OP_STOREP_F	31	3915	0
// OP_LOAD_F	28	644	3916
// OP_BITAND	3916	692	3917
// OP_NOT_F	719	0	3918
// OP_AND	3917	3918	3919
// OP_BITAND	723	696	3920
// OP_SUB_F	31	819	3921
// OP_LT	727	3921	3922
// OP_AND	3920	3922	3923
// OP_OR	3919	3923	3924
// OP_GE	738	823	3925
// OP_OR	3924	3925	3926
// OP_IFNOT	3926	458	0
// OP_LOAD_F	28	182	3927
// OP_BITAND	3927	228	3928
// OP_IFNOT	3928	20	0
// OP_DIV_F	3903	778	3929
// OP_MUL_F	1112	3929	3930
// OP_STORE_F	3930	3904	0
// OP_LT	3904	829	3931
// OP_IFNOT	3931	4	0
// OP_MUL_F	3904	821	3932
// OP_STORE_F	3932	3904	0
// OP_GOTO	11	0	0
// OP_LT	3904	834	3933
// OP_IFNOT	3933	6	0
// OP_SUB_F	3904	829	3934
// OP_ADD_F	3934	823	3935
// OP_MUL_F	3935	883	3936
// OP_STORE_F	3936	3904	0
// OP_GOTO	4	0	0
// OP_SUB_F	3904	829	3937
// OP_MUL_F	3937	3938	3939
// OP_STORE_F	3939	3904	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	654	3940
// OP_ADD_F	3940	819	3941
// OP_STORE_F	3941	3904	0
// OP_GT	3904	1112	3942
// OP_IFNOT	3942	2	0
// OP_STORE_F	1112	3904	0
// OP_STORE_V	3904	4	0
// OP_CALL1	495	0	0
// OP_STORE_F	1	3904	0
// OP_GT	3904	1112	3943
// OP_IFNOT	3943	2	0
// OP_STORE_F	1112	3904	0
// OP_GT	3904	819	3944
// OP_LOAD_F	28	654	3945
// OP_EQ_F	3904	3945	3946
// OP_AND	3944	3946	3947
// OP_IFNOT	3947	11	0
// OP_LOAD_F	28	654	3948
// OP_EQ_F	3948	1112	3949
// OP_IFNOT	3949	5	0
// OP_LOAD_F	28	654	3950
// OP_SUB_F	3950	819	3951
// OP_STORE_F	3951	3904	0
// OP_GOTO	4	0	0
// OP_LOAD_F	28	654	3952
// OP_ADD_F	3952	819	3953
// OP_STORE_F	3953	3904	0
// OP_LOAD_F	28	628	3954
// OP_EQ_F	3954	825	3955
// OP_IFNOT	3955	97	0
// OP_LOAD_F	28	132	3956
// OP_EQ_F	3956	817	3957
// OP_IFNOT	3957	48	0
// OP_STORE_S	3958	3909	0
// OP_LE	3904	821	3959
// OP_IFNOT	3959	3	0
// OP_STORE_S	3960	3908	0
// OP_GOTO	42	0	0
// OP_LE	3904	825	3961
// OP_IFNOT	3961	3	0
// OP_STORE_S	3960	3908	0
// OP_GOTO	38	0	0
// OP_LE	3904	829	3962
// OP_IFNOT	3962	3	0
// OP_STORE_S	3963	3908	0
// OP_GOTO	34	0	0
// OP_LE	3904	843	3964
// OP_IFNOT	3964	3	0
// OP_STORE_S	3965	3908	0
// OP_GOTO	30	0	0
// OP_LE	3904	855	3966
// OP_IFNOT	3966	3	0
// OP_STORE_S	3967	3908	0
// OP_GOTO	26	0	0
// OP_LE	3904	834	3968
// OP_IFNOT	3968	3	0
// OP_STORE_S	3969	3908	0
// OP_GOTO	22	0	0
// OP_LE	3904	841	3970
// OP_IFNOT	3970	3	0
// OP_STORE_S	3971	3908	0
// OP_GOTO	18	0	0
// OP_LE	3904	2670	3972
// OP_IFNOT	3972	3	0
// OP_STORE_S	3973	3908	0
// OP_GOTO	14	0	0
// OP_LE	3904	3974	3975
// OP_IFNOT	3975	3	0
// OP_STORE_S	3976	3908	0
// OP_GOTO	10	0	0
// OP_LE	3904	1112	3977
// OP_IFNOT	3977	8	0
// OP_LOAD_F	28	182	3978
// OP_BITAND	3978	228	3979
// OP_IFNOT	3979	4	0
// OP_STORE_S	3980	3908	0
// OP_STORE_F	3981	3904	0
// OP_GOTO	2	0	0
// OP_STORE_S	3982	3908	0
// OP_GOTO	47	0	0
// OP_STORE_S	3983	3909	0
// OP_LE	3904	821	3984
// OP_IFNOT	3984	3	0
// OP_STORE_S	3985	3908	0
// OP_GOTO	42	0	0
// OP_LE	3904	825	3986
// OP_IFNOT	3986	3	0
// OP_STORE_S	3985	3908	0
// OP_GOTO	38	0	0
// OP_LE	3904	829	3987
// OP_IFNOT	3987	3	0
// OP_STORE_S	3988	3908	0
// OP_GOTO	34	0	0
// OP_LE	3904	843	3989
// OP_IFNOT	3989	3	0
// OP_STORE_S	3990	3908	0
// OP_GOTO	30	0	0
// OP_LE	3904	855	3991
// OP_IFNOT	3991	3	0
// OP_STORE_S	3992	3908	0
// OP_GOTO	26	0	0
// OP_LE	3904	834	3993
// OP_IFNOT	3993	3	0
// OP_STORE_S	3994	3908	0
// OP_GOTO	22	0	0
// OP_LE	3904	841	3995
// OP_IFNOT	3995	3	0
// OP_STORE_S	3996	3908	0
// OP_GOTO	18	0	0
// OP_LE	3904	2670	3997
// OP_IFNOT	3997	3	0
// OP_STORE_S	3998	3908	0
// OP_GOTO	14	0	0
// OP_LE	3904	3974	3999
// OP_IFNOT	3999	3	0
// OP_STORE_S	4000	3908	0
// OP_GOTO	10	0	0
// OP_LE	3904	1112	4001
// OP_IFNOT	4001	8	0
// OP_LOAD_F	28	182	4002
// OP_BITAND	4002	228	4003
// OP_IFNOT	4003	4	0
// OP_STORE_S	4004	3908	0
// OP_STORE_F	3981	3904	0
// OP_GOTO	2	0	0
// OP_STORE_S	4005	3908	0
// OP_LOAD_F	28	628	4006
// OP_EQ_F	4006	821	4007
// OP_IFNOT	4007	88	0
// OP_STORE_S	4008	3909	0
// OP_LE	3904	819	4009
// OP_IFNOT	4009	3	0
// OP_STORE_S	4010	3908	0
// OP_GOTO	82	0	0
// OP_EQ_F	3904	821	4011
// OP_IFNOT	4011	3	0
// OP_STORE_S	4012	3908	0
// OP_GOTO	78	0	0
// OP_EQ_F	3904	823	4013
// OP_IFNOT	4013	3	0
// OP_STORE_S	4014	3908	0
// OP_GOTO	74	0	0
// OP_EQ_F	3904	825	4015
// OP_IFNOT	4015	3	0
// OP_STORE_S	4016	3908	0
// OP_GOTO	70	0	0
// OP_EQ_F	3904	827	4017
// OP_IFNOT	4017	3	0
// OP_STORE_S	4018	3908	0
// OP_GOTO	66	0	0
// OP_EQ_F	3904	829	4019
// OP_IFNOT	4019	3	0
// OP_STORE_S	4020	3908	0
// OP_GOTO	62	0	0
// OP_EQ_F	3904	839	4021
// OP_IFNOT	4021	3	0
// OP_STORE_S	4022	3908	0
// OP_GOTO	58	0	0
// OP_EQ_F	3904	843	4023
// OP_IFNOT	4023	3	0
// OP_STORE_S	4024	3908	0
// OP_GOTO	54	0	0
// OP_EQ_F	3904	847	4025
// OP_IFNOT	4025	3	0
// OP_STORE_S	4026	3908	0
// OP_GOTO	50	0	0
// OP_EQ_F	3904	855	4027
// OP_IFNOT	4027	3	0
// OP_STORE_S	4028	3908	0
// OP_GOTO	46	0	0
// OP_EQ_F	3904	831	4029
// OP_IFNOT	4029	3	0
// OP_STORE_S	4030	3908	0
// OP_GOTO	42	0	0
// OP_EQ_F	3904	834	4031
// OP_IFNOT	4031	3	0
// OP_STORE_S	4032	3908	0
// OP_GOTO	38	0	0
// OP_EQ_F	3904	837	4033
// OP_IFNOT	4033	3	0
// OP_STORE_S	4034	3908	0
// OP_GOTO	34	0	0
// OP_EQ_F	3904	841	4035
// OP_IFNOT	4035	3	0
// OP_STORE_S	4036	3908	0
// OP_GOTO	30	0	0
// OP_EQ_F	3904	845	4037
// OP_IFNOT	4037	3	0
// OP_STORE_S	4038	3908	0
// OP_GOTO	26	0	0
// OP_EQ_F	3904	2670	4039
// OP_IFNOT	4039	3	0
// OP_STORE_S	4040	3908	0
// OP_GOTO	22	0	0
// OP_EQ_F	3904	4041	4042
// OP_IFNOT	4042	3	0
// OP_STORE_S	4043	3908	0
// OP_GOTO	18	0	0
// OP_EQ_F	3904	3974	4044
// OP_IFNOT	4044	3	0
// OP_STORE_S	4045	3908	0
// OP_GOTO	14	0	0
// OP_EQ_F	3904	3981	4046
// OP_IFNOT	4046	3	0
// OP_STORE_S	4047	3908	0
// OP_GOTO	10	0	0
// OP_LE	3904	1112	4048
// OP_IFNOT	4048	8	0
// OP_LOAD_F	28	182	4049
// OP_BITAND	4049	228	4050
// OP_IFNOT	4050	4	0
// OP_STORE_S	4047	3908	0
// OP_STORE_F	3981	3904	0
// OP_GOTO	2	0	0
// OP_STORE_S	4051	3908	0
// OP_GOTO	100	0	0
// OP_LOAD_F	28	628	4052
// OP_EQ_F	4052	823	4053
// OP_IFNOT	4053	48	0
// OP_STORE_S	4054	3909	0
// OP_LE	3904	821	4055
// OP_IFNOT	4055	3	0
// OP_STORE_S	4056	3908	0
// OP_GOTO	42	0	0
// OP_LE	3904	825	4057
// OP_IFNOT	4057	3	0
// OP_STORE_S	4056	3908	0
// OP_GOTO	38	0	0
// OP_LE	3904	829	4058
// OP_IFNOT	4058	3	0
// OP_STORE_S	4059	3908	0
// OP_GOTO	34	0	0
// OP_LE	3904	843	4060
// OP_IFNOT	4060	3	0
// OP_STORE_S	4061	3908	0
// OP_GOTO	30	0	0
// OP_LE	3904	855	4062
// OP_IFNOT	4062	3	0
// OP_STORE_S	4063	3908	0
// OP_GOTO	26	0	0
// OP_LE	3904	834	4064
// OP_IFNOT	4064	3	0
// OP_STORE_S	4065	3908	0
// OP_GOTO	22	0	0
// OP_LE	3904	841	4066
// OP_IFNOT	4066	3	0
// OP_STORE_S	4067	3908	0
// OP_GOTO	18	0	0
// OP_LE	3904	2670	4068
// OP_IFNOT	4068	3	0
// OP_STORE_S	4069	3908	0
// OP_GOTO	14	0	0
// OP_LE	3904	3974	4070
// OP_IFNOT	4070	3	0
// OP_STORE_S	4071	3908	0
// OP_GOTO	10	0	0
// OP_LE	3904	1112	4072
// OP_IFNOT	4072	8	0
// OP_LOAD_F	28	182	4073
// OP_BITAND	4073	228	4074
// OP_IFNOT	4074	4	0
// OP_STORE_S	4075	3908	0
// OP_STORE_F	3981	3904	0
// OP_GOTO	2	0	0
// OP_STORE_S	4076	3908	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	628	4077
// OP_EQ_F	4077	827	4078
// OP_IFNOT	4078	47	0
// OP_STORE_S	4079	3909	0
// OP_LE	3904	821	4080
// OP_IFNOT	4080	3	0
// OP_STORE_S	4081	3908	0
// OP_GOTO	42	0	0
// OP_LE	3904	825	4082
// OP_IFNOT	4082	3	0
// OP_STORE_S	4081	3908	0
// OP_GOTO	38	0	0
// OP_LE	3904	829	4083
// OP_IFNOT	4083	3	0
// OP_STORE_S	4084	3908	0
// OP_GOTO	34	0	0
// OP_LE	3904	843	4085
// OP_IFNOT	4085	3	0
// OP_STORE_S	4086	3908	0
// OP_GOTO	30	0	0
// OP_LE	3904	855	4087
// OP_IFNOT	4087	3	0
// OP_STORE_S	4088	3908	0
// OP_GOTO	26	0	0
// OP_LE	3904	834	4089
// OP_IFNOT	4089	3	0
// OP_STORE_S	4090	3908	0
// OP_GOTO	22	0	0
// OP_LE	3904	841	4091
// OP_IFNOT	4091	3	0
// OP_STORE_S	4092	3908	0
// OP_GOTO	18	0	0
// OP_LE	3904	2670	4093
// OP_IFNOT	4093	3	0
// OP_STORE_S	4094	3908	0
// OP_GOTO	14	0	0
// OP_LE	3904	3974	4095
// OP_IFNOT	4095	3	0
// OP_STORE_S	4096	3908	0
// OP_GOTO	10	0	0
// OP_LE	3904	1112	4097
// OP_IFNOT	4097	8	0
// OP_LOAD_F	28	182	4098
// OP_BITAND	4098	228	4099
// OP_IFNOT	4099	4	0
// OP_STORE_S	4100	3908	0
// OP_STORE_F	3981	3904	0
// OP_GOTO	2	0	0
// OP_STORE_S	4101	3908	0
// OP_LOAD_F	28	655	4102
// OP_EQ_F	4102	821	4103
// OP_IFNOT	4103	8	0
// OP_ADDRESS	28	671	4104
// OP_STOREP_S	3908	4104	0
// OP_ADDRESS	28	669	4105
// OP_STOREP_F	1152	4105	0
// OP_ADDRESS	28	655	4106
// OP_STOREP_F	819	4106	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	672	4107
// OP_STOREP_S	3908	4107	0
// OP_ADDRESS	28	670	4108
// OP_STOREP_F	1152	4108	0
// OP_ADDRESS	28	655	4109
// OP_STOREP_F	821	4109	0
// OP_ADDRESS	28	654	4110
// OP_STOREP_F	3904	4110	0
// OP_DIV_F	3904	1112	4111
// OP_MUL_F	4111	2575	4112
// OP_ADD_F	1992	4112	4113
// OP_STORE_F	4113	3905	0
// OP_LOAD_F	28	628	4114
// OP_GE	4114	823	4115
// OP_LOAD_F	28	628	4116
// OP_LE	4116	825	4117
// OP_AND	4115	4117	4118
// OP_IFNOT	4118	3	0
// OP_MUL_F	3905	883	4119
// OP_STORE_F	4119	3905	0
// OP_DIV_F	3904	821	4120
// OP_STORE_V	4120	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	1	3907	0
// OP_GT	3907	855	4121
// OP_IFNOT	4121	3	0
// OP_STORE_F	855	3907	0
// OP_GOTO	4	0	0
// OP_LT	3907	819	4122
// OP_IFNOT	4122	2	0
// OP_STORE_F	819	3907	0
// OP_LOAD_F	28	652	4123
// OP_LOAD_F	28	669	4124
// OP_SUB_F	31	4124	4125
// OP_LT	4123	4125	4126
// OP_LOAD_S	28	671	4127
// OP_NE_S	4127	4128	4129
// OP_AND	4126	4129	4130
// OP_IFNOT	4130	32	0
// OP_LT	35	855	4131
// OP_LOAD_F	28	578	4132
// OP_GT	4132	817	4133
// OP_OR	4131	4133	4134
// OP_IFNOT	4134	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	671	4135
// OP_STORE_V	4135	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	819	16	0
// OP_CALL5	467	0	0
// OP_GOTO	13	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3909	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	3907	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	3908	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3908	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	652	4136
// OP_STOREP_F	31	4136	0
// OP_ADDRESS	28	653	4137
// OP_STOREP_F	31	4137	0
// OP_ADDRESS	28	647	4138
// OP_STOREP_F	817	4138	0
// OP_LOAD_F	28	653	4139
// OP_LOAD_F	28	670	4140
// OP_SUB_F	31	4140	4141
// OP_LT	4139	4141	4142
// OP_LOAD_S	28	672	4143
// OP_NE_S	4143	4128	4144
// OP_AND	4142	4144	4145
// OP_IFNOT	4145	32	0
// OP_LT	35	855	4146
// OP_LOAD_F	28	578	4147
// OP_GT	4147	817	4148
// OP_OR	4146	4148	4149
// OP_IFNOT	4149	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_LOAD_S	28	672	4150
// OP_STORE_V	4150	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	819	16	0
// OP_CALL5	467	0	0
// OP_GOTO	13	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3909	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	3907	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	3908	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3908	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	652	4151
// OP_STOREP_F	31	4151	0
// OP_ADDRESS	28	653	4152
// OP_STOREP_F	31	4152	0
// OP_ADDRESS	28	647	4153
// OP_STOREP_F	817	4153	0
// OP_GOTO	154	0	0
// OP_LOAD_F	28	590	4154
// OP_GT	3903	4154	4155
// OP_AND	719	4155	4156
// OP_LOAD_F	28	644	4157
// OP_BITAND	4157	692	4158
// OP_AND	4156	4158	4159
// OP_LOAD_F	28	648	4160
// OP_SUB_F	31	797	4161
// OP_LT	4160	4161	4162
// OP_AND	4159	4162	4163
// OP_IFNOT	4163	32	0
// OP_ADDRESS	28	648	4164
// OP_STOREP_F	31	4164	0
// OP_LOAD_F	28	628	4165
// OP_EQ_F	4165	825	4166
// OP_IFNOT	4166	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	4167	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	648	4168
// OP_SUB_F	31	1182	4169
// OP_STOREP_F	4169	4168	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	628	4170
// OP_EQ_F	4170	823	4171
// OP_IFNOT	4171	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	4172	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	4173	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	647	4174
// OP_SUB_F	31	796	4175
// OP_LT	4174	4175	4176
// OP_LOAD_F	28	644	4177
// OP_BITAND	4177	692	4178
// OP_AND	4176	4178	4179
// OP_LOAD_F	28	665	4180
// OP_SUB_F	31	800	4181
// OP_LT	4180	4181	4182
// OP_AND	4179	4182	4183
// OP_IFNOT	4183	101	0
// OP_LOAD_F	28	628	4184
// OP_EQ_F	4184	819	4185
// OP_IFNOT	4185	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	4186	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	4186	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	81	0	0
// OP_LOAD_F	28	628	4187
// OP_EQ_F	4187	821	4188
// OP_IFNOT	4188	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	4189	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	4189	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	65	0	0
// OP_LOAD_F	28	628	4190
// OP_EQ_F	4190	823	4191
// OP_IFNOT	4191	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	4056	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	4056	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	49	0	0
// OP_LOAD_F	28	628	4192
// OP_EQ_F	4192	825	4193
// OP_IFNOT	4193	31	0
// OP_LOAD_ENT	28	548	4194
// OP_LOAD_F	4194	132	4195
// OP_EQ_F	4195	817	4196
// OP_IFNOT	4196	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	3985	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	3985	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	13	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	3960	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	3960	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	628	4197
// OP_EQ_F	4197	827	4198
// OP_IFNOT	4198	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	4081	10	0
// OP_STORE_V	1930	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	4081	10	0
// OP_STORE_V	817	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	647	4199
// OP_STOREP_F	31	4199	0
// OP_ADDRESS	28	652	4200
// OP_STOREP_F	817	4200	0
// OP_DONE	0	0	0
void (float vel_speed) DoEngineNoises = 
{
    local float speed_ratio;
    local float vol;
    local float snd_delay;
    local float samp;
    local string new_sample;
    local string ch;
    
    if(self.racing_flags & QR_OUT_OF_TIME)
    {
        return;
    }
    
    
    if(self.last_engine < (time - 0.1))
    {
        self.last_engine = time;
        if((((self.racing_flags & QR_START_READY) && !hold_flag) || ((global_racing_flags & QR_NO_STARTFINISH) && (race_start_time < (time - 1)))) || (rally_type_index >= 3))
        {
            if(self.flags & FL_ONGROUND)
            {
                speed_ratio = 20 * (vel_speed / MAX_SPEED);
                if(speed_ratio < 6)
                {
                    speed_ratio = speed_ratio * 2;
                }
                else
                {
                    if(speed_ratio < 12)
                    {
                        speed_ratio = ((speed_ratio - 6) + 3) * 1.5;
                    }
                    else
                    {
                        speed_ratio = (speed_ratio - 6) * 1.6;
                    }
                    
                }
                
            }
            else
            {
                speed_ratio = self.last_engine_ratio + 1;
                
                if(speed_ratio > 20)
                {
                    speed_ratio = 20;
                }
                
            }
            
            speed_ratio = floor(speed_ratio);
            
            if(speed_ratio > 20)
            {
                speed_ratio = 20;
            }
            
            
            if((speed_ratio > 1) && (speed_ratio == self.last_engine_ratio))
            {
                if(self.last_engine_ratio == 20)
                {
                    speed_ratio = self.last_engine_ratio - 1;
                }
                else
                {
                    speed_ratio = self.last_engine_ratio + 1;
                }
                
            }
            
            
            if(self.car_index == 4)
            {
                if(self.skin == 0)
                {
                    ch = "m";
                    if(speed_ratio <= 2)
                    {
                        new_sample = "rally/engine/ma01.wav";
                    }
                    else
                    {
                        if(speed_ratio <= 4)
                        {
                            new_sample = "rally/engine/ma01.wav";
                        }
                        else
                        {
                            if(speed_ratio <= 6)
                            {
                                new_sample = "rally/engine/ma02.wav";
                            }
                            else
                            {
                                if(speed_ratio <= 8)
                                {
                                    new_sample = "rally/engine/ma03.wav";
                                }
                                else
                                {
                                    if(speed_ratio <= 10)
                                    {
                                        new_sample = "rally/engine/ma04.wav";
                                    }
                                    else
                                    {
                                        if(speed_ratio <= 12)
                                        {
                                            new_sample = "rally/engine/ma05.wav";
                                        }
                                        else
                                        {
                                            if(speed_ratio <= 14)
                                            {
                                                new_sample = "rally/engine/ma06.wav";
                                            }
                                            else
                                            {
                                                if(speed_ratio <= 16)
                                                {
                                                    new_sample = "rally/engine/ma07.wav";
                                                }
                                                else
                                                {
                                                    if(speed_ratio <= 18)
                                                    {
                                                        new_sample = "rally/engine/ma08.wav";
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(speed_ratio <= 20)
                                                        {
                                                            if(self.flags & FL_ONGROUND)
                                                            {
                                                                new_sample = "rally/engine/ma09.wav";
                                                                speed_ratio = 19;
                                                            }
                                                            else
                                                            {
                                                                new_sample = "rally/engine/ma10.wav";
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
                else
                {
                    ch = "t";
                    if(speed_ratio <= 2)
                    {
                        new_sample = "rally/engine/test01.wav";
                    }
                    else
                    {
                        if(speed_ratio <= 4)
                        {
                            new_sample = "rally/engine/test01.wav";
                        }
                        else
                        {
                            if(speed_ratio <= 6)
                            {
                                new_sample = "rally/engine/test02.wav";
                            }
                            else
                            {
                                if(speed_ratio <= 8)
                                {
                                    new_sample = "rally/engine/test03.wav";
                                }
                                else
                                {
                                    if(speed_ratio <= 10)
                                    {
                                        new_sample = "rally/engine/test04.wav";
                                    }
                                    else
                                    {
                                        if(speed_ratio <= 12)
                                        {
                                            new_sample = "rally/engine/test05.wav";
                                        }
                                        else
                                        {
                                            if(speed_ratio <= 14)
                                            {
                                                new_sample = "rally/engine/test06.wav";
                                            }
                                            else
                                            {
                                                if(speed_ratio <= 16)
                                                {
                                                    new_sample = "rally/engine/test07.wav";
                                                }
                                                else
                                                {
                                                    if(speed_ratio <= 18)
                                                    {
                                                        new_sample = "rally/engine/test08.wav";
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(speed_ratio <= 20)
                                                        {
                                                            if(self.flags & FL_ONGROUND)
                                                            {
                                                                new_sample = "rally/engine/test09.wav";
                                                                speed_ratio = 19;
                                                            }
                                                            else
                                                            {
                                                                new_sample = "rally/engine/test10.wav";
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
            
            if(self.car_index == 2)
            {
                ch = "s";
                if(speed_ratio <= 1)
                {
                    new_sample = "rally/engine/su01.wav";
                }
                else
                {
                    if(speed_ratio == 2)
                    {
                        new_sample = "rally/engine/su02.wav";
                    }
                    else
                    {
                        if(speed_ratio == 3)
                        {
                            new_sample = "rally/engine/su03.wav";
                        }
                        else
                        {
                            if(speed_ratio == 4)
                            {
                                new_sample = "rally/engine/su04.wav";
                            }
                            else
                            {
                                if(speed_ratio == 5)
                                {
                                    new_sample = "rally/engine/su05.wav";
                                }
                                else
                                {
                                    if(speed_ratio == 6)
                                    {
                                        new_sample = "rally/engine/su06.wav";
                                    }
                                    else
                                    {
                                        if(speed_ratio == 7)
                                        {
                                            new_sample = "rally/engine/su07.wav";
                                        }
                                        else
                                        {
                                            if(speed_ratio == 8)
                                            {
                                                new_sample = "rally/engine/su08.wav";
                                            }
                                            else
                                            {
                                                if(speed_ratio == 9)
                                                {
                                                    new_sample = "rally/engine/su09.wav";
                                                }
                                                else
                                                {
                                                    if(speed_ratio == 10)
                                                    {
                                                        new_sample = "rally/engine/su10.wav";
                                                    }
                                                    else
                                                    {
                                                        if(speed_ratio == 11)
                                                        {
                                                            new_sample = "rally/engine/su11.wav";
                                                        }
                                                        else
                                                        {
                                                            if(speed_ratio == 12)
                                                            {
                                                                new_sample = "rally/engine/su12.wav";
                                                            }
                                                            else
                                                            {
                                                                if(speed_ratio == 13)
                                                                {
                                                                    new_sample = "rally/engine/su13.wav";
                                                                }
                                                                else
                                                                {
                                                                    if(speed_ratio == 14)
                                                                    {
                                                                        new_sample = "rally/engine/su14.wav";
                                                                    }
                                                                    else
                                                                    {
                                                                        if(speed_ratio == 15)
                                                                        {
                                                                            new_sample = "rally/engine/su15.wav";
                                                                        }
                                                                        else
                                                                        {
                                                                            if(speed_ratio == 16)
                                                                            {
                                                                                new_sample = "rally/engine/su16.wav";
                                                                            }
                                                                            else
                                                                            {
                                                                                if(speed_ratio == 17)
                                                                                {
                                                                                    new_sample = "rally/engine/su17.wav";
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(speed_ratio == 18)
                                                                                    {
                                                                                        new_sample = "rally/engine/su18.wav";
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(speed_ratio == 19)
                                                                                        {
                                                                                            new_sample = "rally/engine/su19.wav";
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(speed_ratio <= 20)
                                                                                            {
                                                                                                if(self.flags & FL_ONGROUND)
                                                                                                {
                                                                                                    new_sample = "rally/engine/su19.wav";
                                                                                                    speed_ratio = 19;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    new_sample = "rally/engine/su20.wav";
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
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                if(self.car_index == 3)
                {
                    ch = "a";
                    if(speed_ratio <= 2)
                    {
                        new_sample = "rally/engine/aa01.wav";
                    }
                    else
                    {
                        if(speed_ratio <= 4)
                        {
                            new_sample = "rally/engine/aa01.wav";
                        }
                        else
                        {
                            if(speed_ratio <= 6)
                            {
                                new_sample = "rally/engine/aa02.wav";
                            }
                            else
                            {
                                if(speed_ratio <= 8)
                                {
                                    new_sample = "rally/engine/aa03.wav";
                                }
                                else
                                {
                                    if(speed_ratio <= 10)
                                    {
                                        new_sample = "rally/engine/aa04.wav";
                                    }
                                    else
                                    {
                                        if(speed_ratio <= 12)
                                        {
                                            new_sample = "rally/engine/aa05.wav";
                                        }
                                        else
                                        {
                                            if(speed_ratio <= 14)
                                            {
                                                new_sample = "rally/engine/aa06.wav";
                                            }
                                            else
                                            {
                                                if(speed_ratio <= 16)
                                                {
                                                    new_sample = "rally/engine/aa07.wav";
                                                }
                                                else
                                                {
                                                    if(speed_ratio <= 18)
                                                    {
                                                        new_sample = "rally/engine/aa08.wav";
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(speed_ratio <= 20)
                                                        {
                                                            if(self.flags & FL_ONGROUND)
                                                            {
                                                                new_sample = "rally/engine/aa09.wav";
                                                                speed_ratio = 19;
                                                            }
                                                            else
                                                            {
                                                                new_sample = "rally/engine/aa10.wav";
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
                else
                {
                    
                    if(self.car_index == 5)
                    {
                        ch = "r";
                        if(speed_ratio <= 2)
                        {
                            new_sample = "rally/engine/tri01.wav";
                        }
                        else
                        {
                            if(speed_ratio <= 4)
                            {
                                new_sample = "rally/engine/tri01.wav";
                            }
                            else
                            {
                                if(speed_ratio <= 6)
                                {
                                    new_sample = "rally/engine/tri02.wav";
                                }
                                else
                                {
                                    if(speed_ratio <= 8)
                                    {
                                        new_sample = "rally/engine/tri03.wav";
                                    }
                                    else
                                    {
                                        if(speed_ratio <= 10)
                                        {
                                            new_sample = "rally/engine/tri04.wav";
                                        }
                                        else
                                        {
                                            if(speed_ratio <= 12)
                                            {
                                                new_sample = "rally/engine/tri05.wav";
                                            }
                                            else
                                            {
                                                if(speed_ratio <= 14)
                                                {
                                                    new_sample = "rally/engine/tri06.wav";
                                                }
                                                else
                                                {
                                                    if(speed_ratio <= 16)
                                                    {
                                                        new_sample = "rally/engine/tri07.wav";
                                                    }
                                                    else
                                                    {
                                                        if(speed_ratio <= 18)
                                                        {
                                                            new_sample = "rally/engine/tri08.wav";
                                                        }
                                                        else
                                                        {
                                                            
                                                            if(speed_ratio <= 20)
                                                            {
                                                                if(self.flags & FL_ONGROUND)
                                                                {
                                                                    new_sample = "rally/engine/tri09.wav";
                                                                    speed_ratio = 19;
                                                                }
                                                                else
                                                                {
                                                                    new_sample = "rally/engine/tri10.wav";
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
                
            }
            
            if(self.last_engine_chan == 2)
            {
                self.SAMP_ENGINE1 = new_sample;
                self.SNDLEN_ENGINE1 = 0.2;
                self.last_engine_chan = 1;
            }
            else
            {
                self.SAMP_ENGINE2 = new_sample;
                self.SNDLEN_ENGINE2 = 0.2;
                self.last_engine_chan = 2;
            }
            
            self.last_engine_ratio = speed_ratio;
            vol = 0.15 + ((speed_ratio / 20) * 0.3);
            
            if((self.car_index >= 3) && (self.car_index <= 4))
            {
                vol = vol * 1.5;
            }
            
            samp = ceil(speed_ratio / 2);
            if(samp > 10)
            {
                samp = 10;
            }
            else
            {
                
                if(samp < 1)
                {
                    samp = 1;
                }
                
            }
            
            
            if((self.last_engine1 < (time - self.SNDLEN_ENGINE1)) && (self.SAMP_ENGINE1 != ""))
            {
                if((deathmatch < 10) || (self.lastmove_z > 0))
                {
                    sound(self, CHAN_VOICE, self.SAMP_ENGINE1, 1, 1);
                }
                else
                {
                    stuffcmd(self, ch);
                    new_sample = ftos(samp);
                    stuffcmd(self, new_sample);
                    stuffcmd(self, "\n");
                }
                
                self.last_engine1 = time;
                self.last_engine2 = time;
                self.last_idle = 0;
            }
            
            
            if((self.last_engine2 < (time - self.SNDLEN_ENGINE2)) && (self.SAMP_ENGINE2 != ""))
            {
                if((deathmatch < 10) || (self.lastmove_z > 0))
                {
                    sound(self, CHAN_BODY, self.SAMP_ENGINE2, 1, 1);
                }
                else
                {
                    stuffcmd(self, ch);
                    new_sample = ftos(samp);
                    stuffcmd(self, new_sample);
                    stuffcmd(self, "\n");
                }
                
                self.last_engine1 = time;
                self.last_engine2 = time;
                self.last_idle = 0;
            }
            
        }
        else
        {
            
            if(((hold_flag && (vel_speed > self.last_speed)) && (self.racing_flags & QR_START_READY)) && (self.last_rev < (time - SNDLEN_REV)))
            {
                self.last_rev = time;
                if(self.car_index == 4)
                {
                    sound(self, CHAN_WEAPON, "rally/rev3.wav", 1, ATTN_STATIC);
                    self.last_rev = time - 0.5;
                }
                else
                {
                    if(self.car_index == 3)
                    {
                        sound(self, CHAN_WEAPON, "rally/rev4.wav", 1, ATTN_STATIC);
                    }
                    else
                    {
                        sound(self, CHAN_WEAPON, "rally/rev2.wav", 1, ATTN_STATIC);
                    }
                    
                }
                
            }
            
            
            if(((self.last_idle < (time - SNDLEN_IDLE)) && (self.racing_flags & QR_START_READY)) && (self.ignition_time < (time - SNDLEN_IGNITION)))
            {
                if(self.car_index == 1)
                {
                    sound(self, CHAN_VOICE, "rally/engine/co01.wav", 0.4, ATTN_STATIC);
                    sound(self, CHAN_BODY, "rally/engine/co01.wav", 0, ATTN_STATIC);
                }
                else
                {
                    if(self.car_index == 2)
                    {
                        sound(self, CHAN_VOICE, "rally/engine/suidle.wav", 0.4, ATTN_STATIC);
                        sound(self, CHAN_BODY, "rally/engine/suidle.wav", 0, ATTN_STATIC);
                    }
                    else
                    {
                        if(self.car_index == 3)
                        {
                            sound(self, CHAN_VOICE, "rally/engine/aa01.wav", 0.4, ATTN_STATIC);
                            sound(self, CHAN_BODY, "rally/engine/aa01.wav", 0, ATTN_STATIC);
                        }
                        else
                        {
                            if(self.car_index == 4)
                            {
                                if(self.veh_body.skin == 0)
                                {
                                    sound(self, CHAN_VOICE, "rally/engine/test01.wav", 0.4, ATTN_STATIC);
                                    sound(self, CHAN_BODY, "rally/engine/test01.wav", 0, ATTN_STATIC);
                                }
                                else
                                {
                                    sound(self, CHAN_VOICE, "rally/engine/ma01.wav", 0.4, ATTN_STATIC);
                                    sound(self, CHAN_BODY, "rally/engine/ma01.wav", 0, ATTN_STATIC);
                                }
                                
                            }
                            else
                            {
                                
                                if(self.car_index == 5)
                                {
                                    sound(self, CHAN_VOICE, "rally/engine/tri01.wav", 0.4, ATTN_STATIC);
                                    sound(self, CHAN_BODY, "rally/engine/tri01.wav", 0, ATTN_STATIC);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
                self.last_idle = time;
                self.last_engine1 = 0;
            }
            
        }
        
    }
    
};

// body_close_to_ground
// function begins at statement 4492, parm_start=4202
// OP_LOAD_V	28	105	4208
// OP_STORE_V	4208	4205	0
// OP_STORE_V	4205	4	0
// OP_MUL_VF	1215	4202	4211
// OP_SUB_V	4205	4211	4214
// OP_STORE_V	4214	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	4217
// OP_IFNOT	4217	4	0
// OP_EQ_E	78	30	4218
// OP_IFNOT	4218	2	0
// OP_RETURN	219	0	0
// OP_DONE	0	0	0
float (float max_dist) body_close_to_ground = 
{
    local entity e;
    local entity etemp;
    local vector org;
    org = self.origin;
    traceline(org, org - ('0.000 0.000 1.000' * max_dist), FALSE, self);
    
    if(trace_fraction < 1)
    {
        
        if(trace_ent == world)
        {
            return TRUE;
        }
        
    }
    
};

// FindNextMarker
// function begins at statement 4507, parm_start=4220
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4224	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	4221	0
// OP_NE_E	4221	30	4225
// OP_IFNOT	4225	10	0
// OP_LOAD_F	4221	158	4226
// OP_STORE_F	4226	4222	0
// OP_LOAD_F	4220	158	4227
// OP_ADD_F	4227	819	4228
// OP_STORE_F	4228	4223	0
// OP_GT	4223	4222	4229
// OP_IFNOT	4229	2	0
// OP_STORE_F	819	4223	0
// OP_GOTO	4	0	0
// OP_STORE_V	4230	4	0
// OP_CALL1	482	0	0
// OP_RETURN	30	0	0
// OP_STORE_ENT	30	4221	0
// OP_STORE_V	4221	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1104	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	4221	0
// OP_NE_E	1	30	4231
// OP_IFNOT	4231	6	0
// OP_LOAD_F	4221	158	4232
// OP_EQ_F	4232	4223	4233
// OP_IFNOT	4233	2	0
// OP_RETURN	4221	0	0
// OP_GOTO	-11	0	0
// OP_STORE_V	4234	4	0
// OP_CALL1	482	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity old_next) FindNextMarker = 
{
    local entity trav;
    local float marker_count;
    local float next_index;
    trav = find(world, classname, "rally_startfinish");
    if(trav != world)
    {
        marker_count = trav.ammo_shells;
        next_index = old_next.ammo_shells + 1;
        
        if(next_index > marker_count)
        {
            next_index = 1;
        }
        
    }
    else
    {
        bprint("Unable to find Start/Finish entity\n");
        return world;
    }
    
    trav = world;
    trav = find(trav, classname, "rally_marker");
    
    while(find(trav, classname, "rally_marker") != world)
    {
        
        if(trav.ammo_shells == next_index)
        {
            return trav;
        }
        
    }
    
    bprint("Unable to find next marker entity\n");
    return world;
};

void () Keep_cam_chasing_owner;
void () marker_touch;
// MoveVehicle
// function begins at statement 4543, parm_start=4237
// OP_LOAD_ENT	28	548	4285
// OP_LOAD_F	4285	108	4286
// OP_STORE_F	4286	4263	0
// OP_LOAD_F	28	108	4287
// OP_LT	4287	4288	4289
// OP_LOAD_S	28	129	4290
// OP_EQ_S	4290	880	4291
// OP_AND	4289	4291	4292
// OP_IFNOT	4292	12	0
// OP_LOAD_S	28	180	4293
// OP_STORE_V	4293	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	4294	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1820	13	0
// OP_CALL4	534	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	113	4295
// OP_STORE_V	4295	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4262	0
// OP_ADDRESS	28	575	4298
// OP_LOAD_V	28	105	4301
// OP_LOAD_V	28	109	4304
// OP_SUB_V	4301	4304	4307
// OP_STOREP_V	4307	4298	0
// OP_LOAD_F	28	578	4310
// OP_EQ_F	4310	817	4311
// OP_IFNOT	4311	4	0
// OP_ADDRESS	28	626	4312
// OP_LOAD_F	28	108	4313
// OP_STOREP_F	4313	4312	0
// OP_LT	738	823	4314
// OP_BITAND	723	696	4315
// OP_NOT_F	4315	0	4316
// OP_AND	4314	4316	4317
// OP_IFNOT	4317	56	0
// OP_LOAD_V	28	105	4318
// OP_LOAD_ENT	28	639	4321
// OP_LOAD_V	4321	105	4322
// OP_SUB_V	4318	4322	4325
// OP_STORE_V	4325	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4273	0
// OP_LOAD_V	28	109	4328
// OP_LOAD_ENT	28	639	4331
// OP_LOAD_V	4331	105	4332
// OP_SUB_V	4328	4332	4335
// OP_STORE_V	4335	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4272	0
// OP_LT	4273	2223	4338
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_LE	1	819	4340
// OP_NOT_F	689	0	4341
// OP_OR	4340	4341	4342
// OP_GT	4273	4272	4343
// OP_AND	4342	4343	4344
// OP_LT	4272	4345	4346
// OP_AND	4344	4346	4347
// OP_OR	4338	4347	4348
// OP_IFNOT	4348	13	0
// OP_STORE_ENT	28	4283	0
// OP_LOAD_ENT	28	639	4349
// OP_STORE_ENT	4349	28	0
// OP_STORE_ENT	4283	29	0
// OP_CALL0	4236	0	0
// OP_STORE_ENT	4283	28	0
// OP_ADDRESS	28	639	4350
// OP_LOAD_ENT	28	639	4351
// OP_STORE_V	4351	4	0
// OP_CALL1	4219	0	0
// OP_STOREP_ENT	1	4350	0
// OP_GOTO	18	0	0
// OP_GT	4273	4272	4352
// OP_AND	689	4352	4353
// OP_LT	4272	4354	4355
// OP_AND	4353	4355	4356
// OP_LOAD_F	28	658	4357
// OP_SUB_F	31	819	4358
// OP_LT	4357	4358	4359
// OP_AND	4356	4359	4360
// OP_IFNOT	4360	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4361	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4362	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	28	658	4363
// OP_STOREP_F	31	4363	0
// OP_LOAD_S	28	129	4364
// OP_EQ_S	4364	880	4365
// OP_LT	4262	1380	4366
// OP_AND	4365	4366	4367
// OP_LOAD_F	28	604	4368
// OP_NOT_F	4368	0	4369
// OP_AND	4367	4369	4370
// OP_LOAD_F	28	606	4371
// OP_NOT_F	4371	0	4372
// OP_AND	4370	4372	4373
// OP_IFNOT	4373	18	0
// OP_LOAD_V	28	105	4374
// OP_STORE_V	4374	4	0
// OP_LOAD_V	28	105	4377
// OP_SUB_V	4377	2284	4380
// OP_STORE_V	4380	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	76	819	4383
// OP_IFNOT	4383	8	0
// OP_ADDRESS	28	113	4384
// OP_STOREP_V	926	4384	0
// OP_ADDRESS	28	105	4387
// OP_LOAD_V	28	109	4390
// OP_STOREP_V	4390	4387	0
// OP_ADDRESS	28	575	4393
// OP_STOREP_V	926	4393	0
// OP_LOAD_F	28	182	4396
// OP_BITAND	4396	228	4397
// OP_IFNOT	4397	8	0
// OP_LOAD_F	28	644	4398
// OP_BITAND	4398	700	4399
// OP_IFNOT	4399	5	0
// OP_ADDRESS	28	644	4400
// OP_LOAD_F	28	644	4401
// OP_SUB_F	4401	700	4402
// OP_STOREP_F	4402	4400	0
// OP_CALL0	2052	0	0
// OP_NOT_F	1	0	4403
// OP_IFNOT	4403	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	113	4404
// OP_STORE_V	4404	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4262	0
// OP_LOAD_F	28	182	4407
// OP_BITAND	4407	228	4408
// OP_LOAD_F	28	589	4409
// OP_AND	4408	4409	4410
// OP_IFNOT	4410	3	0
// OP_CALL0	3142	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	182	4411
// OP_BITAND	4411	228	4412
// OP_NOT_F	4412	0	4413
// OP_LOAD_F	28	662	4414
// OP_BITAND	4414	228	4415
// OP_NOT_F	4415	0	4416
// OP_AND	4413	4416	4417
// OP_IFNOT	4417	20	0
// OP_LOAD_ENT	28	548	4418
// OP_ADDRESS	4418	558	4419
// OP_LOAD_ENT	28	548	4420
// OP_LOAD_F	4420	558	4421
// OP_LOAD_ENT	28	548	4422
// OP_LOAD_F	4422	598	4423
// OP_MUL_F	4423	32	4424
// OP_ADD_F	4421	4424	4425
// OP_STOREP_F	4425	4419	0
// OP_LOAD_ENT	28	548	4426
// OP_LOAD_F	4426	558	4427
// OP_LT	4427	4428	4429
// OP_IFNOT	4429	7	0
// OP_LOAD_ENT	28	548	4430
// OP_ADDRESS	4430	558	4431
// OP_LOAD_ENT	28	548	4432
// OP_LOAD_F	4432	558	4433
// OP_ADD_F	4433	867	4434
// OP_STOREP_F	4434	4431	0
// OP_LOAD_V	28	555	4435
// OP_STORE_V	4435	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	4238	0
// OP_LOAD_ENT	28	548	4438
// OP_ADDRESS	4438	119	4439
// OP_STOREP_F	4239	4439	0
// OP_LOAD_F	28	182	4440
// OP_BITAND	4440	228	4441
// OP_IFNOT	4441	5	0
// OP_LOAD_ENT	28	548	4442
// OP_ADDRESS	4442	118	4443
// OP_STOREP_F	4238	4443	0
// OP_GOTO	110	0	0
// OP_LOAD_S	28	129	4444
// OP_EQ_S	4444	880	4445
// OP_IFNOT	4445	107	0
// OP_LOAD_ENT	28	548	4446
// OP_LOAD_V	4446	117	4447
// OP_STORE_V	4447	4277	0
// OP_STORE_V	4277	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	4278	4	0
// OP_LOAD_ENT	28	548	4450
// OP_LOAD_F	4450	597	4451
// OP_MUL_F	4451	32	4452
// OP_ADD_F	4278	4452	4453
// OP_STORE_V	4453	7	0
// OP_STORE_V	3337	10	0
// OP_CALL3	1453	0	0
// OP_STORE_F	1	4278	0
// OP_LOAD_ENT	28	548	4454
// OP_ADDRESS	4454	119	4455
// OP_STOREP_F	4278	4455	0
// OP_LOAD_F	28	664	4456
// OP_SUB_F	31	819	4457
// OP_GT	4456	4457	4458
// OP_IFNOT	4458	14	0
// OP_LOAD_ENT	28	548	4459
// OP_ADDRESS	4459	118	4460
// OP_LOAD_ENT	28	548	4461
// OP_LOAD_F	4461	118	4462
// OP_LOAD_ENT	28	548	4463
// OP_LOAD_F	4463	596	4464
// OP_LOAD_F	28	664	4465
// OP_SUB_F	31	4465	4466
// OP_MUL_F	4464	4466	4467
// OP_MUL_F	4467	32	4468
// OP_ADD_F	4462	4468	4469
// OP_STOREP_F	4469	4460	0
// OP_GOTO	11	0	0
// OP_LOAD_ENT	28	548	4470
// OP_ADDRESS	4470	118	4471
// OP_LOAD_ENT	28	548	4472
// OP_LOAD_F	4472	118	4473
// OP_LOAD_ENT	28	548	4474
// OP_LOAD_F	4474	596	4475
// OP_DIV_F	4475	825	4476
// OP_MUL_F	4476	32	4477
// OP_ADD_F	4473	4477	4478
// OP_STOREP_F	4478	4471	0
// OP_LOAD_ENT	28	548	4479
// OP_LOAD_F	4479	118	4480
// OP_GT	4480	865	4481
// OP_IFNOT	4481	8	0
// OP_LOAD_ENT	28	548	4482
// OP_ADDRESS	4482	118	4483
// OP_LOAD_ENT	28	548	4484
// OP_LOAD_F	4484	118	4485
// OP_SUB_F	4485	867	4486
// OP_STOREP_F	4486	4483	0
// OP_GOTO	11	0	0
// OP_LOAD_ENT	28	548	4487
// OP_LOAD_F	4487	118	4488
// OP_LT	4488	4428	4489
// OP_IFNOT	4489	7	0
// OP_LOAD_ENT	28	548	4490
// OP_ADDRESS	4490	118	4491
// OP_LOAD_ENT	28	548	4492
// OP_LOAD_F	4492	118	4493
// OP_ADD_F	4493	867	4494
// OP_STOREP_F	4494	4491	0
// OP_LOAD_ENT	28	548	4495
// OP_LOAD_F	4495	118	4496
// OP_GT	4496	1632	4497
// OP_LOAD_ENT	28	548	4498
// OP_LOAD_F	4498	596	4499
// OP_GT	4499	817	4500
// OP_AND	4497	4500	4501
// OP_LOAD_ENT	28	548	4502
// OP_LOAD_F	4502	118	4503
// OP_LT	4503	4504	4505
// OP_LOAD_ENT	28	548	4506
// OP_LOAD_F	4506	596	4507
// OP_LT	4507	817	4508
// OP_AND	4505	4508	4509
// OP_OR	4501	4509	4510
// OP_IFNOT	4510	4	0
// OP_LOAD_ENT	28	548	4511
// OP_ADDRESS	4511	596	4512
// OP_STOREP_F	817	4512	0
// OP_LOAD_ENT	28	548	4513
// OP_LOAD_F	4513	118	4514
// OP_GT	4514	1380	4515
// OP_LOAD_ENT	28	548	4516
// OP_LOAD_F	4516	596	4517
// OP_GT	4517	817	4518
// OP_AND	4515	4518	4519
// OP_LOAD_ENT	28	548	4520
// OP_LOAD_F	4520	118	4521
// OP_LT	4521	1912	4522
// OP_LOAD_ENT	28	548	4523
// OP_LOAD_F	4523	596	4524
// OP_LT	4524	817	4525
// OP_AND	4522	4525	4526
// OP_OR	4519	4526	4527
// OP_IFNOT	4527	7	0
// OP_LOAD_ENT	28	548	4528
// OP_ADDRESS	4528	596	4529
// OP_LOAD_ENT	28	548	4530
// OP_LOAD_F	4530	596	4531
// OP_MUL_F	4531	2319	4532
// OP_STOREP_F	4532	4529	0
// OP_LOAD_ENT	28	548	4533
// OP_LOAD_F	4533	558	4534
// OP_GT	4534	865	4535
// OP_IFNOT	4535	8	0
// OP_LOAD_ENT	28	548	4536
// OP_ADDRESS	4536	120	4537
// OP_LOAD_ENT	28	548	4538
// OP_LOAD_F	4538	558	4539
// OP_SUB_F	4539	867	4540
// OP_STOREP_F	4540	4537	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	548	4541
// OP_ADDRESS	4541	120	4542
// OP_LOAD_ENT	28	548	4543
// OP_LOAD_F	4543	558	4544
// OP_STOREP_F	4544	4542	0
// OP_LOAD_ENT	28	548	4545
// OP_ADDRESS	4545	120	4546
// OP_LOAD_ENT	28	548	4547
// OP_LOAD_F	4547	120	4548
// OP_LOAD_F	28	120	4549
// OP_ADD_F	4548	4549	4550
// OP_STOREP_F	4550	4546	0
// OP_LOAD_ENT	28	548	4551
// OP_LOAD_V	4551	117	4552
// OP_STORE_V	4552	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	555	4555
// OP_STOREP_V	59	4555	0
// OP_LOAD_F	28	182	4558
// OP_BITAND	4558	228	4559
// OP_IFNOT	4559	9	0
// OP_LOAD_ENT	28	548	4560
// OP_ADDRESS	4560	117	4561
// OP_LOAD_ENT	28	548	4564
// OP_LOAD_V	4564	117	4565
// OP_LOAD_V	28	580	4568
// OP_ADD_V	4565	4568	4571
// OP_STOREP_V	4571	4561	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	548	4574
// OP_ADDRESS	4574	120	4575
// OP_LOAD_ENT	28	548	4576
// OP_LOAD_F	4576	120	4577
// OP_LOAD_F	28	583	4578
// OP_ADD_F	4577	4578	4579
// OP_STOREP_F	4579	4575	0
// OP_LOAD_ENT	28	548	4580
// OP_STORE_V	4580	4	0
// OP_LOAD_V	28	105	4581
// OP_DIV_F	749	821	4584
// OP_MUL_VF	59	4584	4585
// OP_SUB_V	4581	4585	4588
// OP_MUL_VF	59	787	4591
// OP_SUB_V	4588	4591	4594
// OP_ADD_V	4594	769	4597
// OP_DIV_F	4262	778	4600
// OP_MUL_VF	59	4600	4601
// OP_MUL_VF	4601	843	4604
// OP_SUB_F	819	719	4607
// OP_MUL_VF	4604	4607	4608
// OP_ADD_V	4597	4608	4611
// OP_STORE_V	4611	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	628	4614
// OP_EQ_F	4614	827	4615
// OP_IFNOT	4615	8	0
// OP_LOAD_ENT	28	548	4616
// OP_STORE_V	4616	4	0
// OP_LOAD_ENT	28	548	4617
// OP_LOAD_V	4617	105	4618
// OP_ADD_V	4618	916	4621
// OP_STORE_V	4621	7	0
// OP_CALL2	462	0	0
// OP_LOAD_S	28	129	4624
// OP_EQ_S	4624	1187	4625
// OP_IFNOT	4625	7	0
// OP_LOAD_ENT	28	548	4626
// OP_ADDRESS	4626	105	4627
// OP_LOAD_ENT	28	548	4630
// OP_LOAD_V	4630	105	4631
// OP_SUB_V	4631	1666	4634
// OP_STOREP_V	4634	4627	0
// OP_LOAD_ENT	28	548	4637
// OP_LOAD_V	4637	621	4638
// OP_EQ_V	4638	926	4641
// OP_IFNOT	4641	6	0
// OP_LOAD_ENT	28	548	4642
// OP_ADDRESS	4642	621	4643
// OP_LOAD_ENT	28	548	4646
// OP_LOAD_V	4646	105	4647
// OP_STOREP_V	4647	4643	0
// OP_LOAD_ENT	28	548	4650
// OP_LOAD_F	4650	118	4651
// OP_GT	4651	1632	4652
// OP_LOAD_ENT	28	548	4653
// OP_LOAD_F	4653	118	4654
// OP_LT	4654	865	4655
// OP_AND	4652	4655	4656
// OP_IFNOT	4656	4	0
// OP_LOAD_ENT	28	548	4657
// OP_ADDRESS	4657	118	4658
// OP_STOREP_F	1632	4658	0
// OP_LOAD_ENT	28	548	4659
// OP_LOAD_F	4659	118	4660
// OP_GE	4660	865	4661
// OP_LOAD_ENT	28	548	4662
// OP_LOAD_F	4662	118	4663
// OP_LT	4663	4664	4665
// OP_AND	4661	4665	4666
// OP_IFNOT	4666	4	0
// OP_LOAD_ENT	28	548	4667
// OP_ADDRESS	4667	118	4668
// OP_STOREP_F	4664	4668	0
// OP_LOAD_ENT	28	548	4669
// OP_LOAD_V	4669	117	4670
// OP_STORE_V	4670	4253	0
// OP_LOAD_ENT	28	548	4673
// OP_LOAD_V	4673	555	4674
// OP_STORE_V	4674	4244	0
// OP_STORE_V	4244	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	4244	0
// OP_LOAD_V	28	105	4677
// OP_STORE_V	4677	4	0
// OP_LOAD_V	28	105	4680
// OP_SUB_V	4680	2284	4683
// OP_STORE_V	4683	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	4686
// OP_LT	76	2605	4687
// OP_AND	4686	4687	4688
// OP_IFNOT	4688	3	0
// OP_STORE_F	2611	4271	0
// OP_GOTO	2	0	0
// OP_STORE_F	785	4271	0
// OP_STORE_V	4244	4	0
// OP_STORE_V	4253	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_MUL_F	4271	32	4689
// OP_GT	1	4689	4690
// OP_IFNOT	4690	9	0
// OP_STORE_V	4244	4	0
// OP_STORE_V	4253	7	0
// OP_STORE_V	4271	10	0
// OP_CALL3	1453	0	0
// OP_STORE_F	1	4253	0
// OP_LOAD_ENT	28	548	4691
// OP_ADDRESS	4691	118	4692
// OP_STOREP_F	4253	4692	0
// OP_LOAD_ENT	28	548	4693
// OP_ADDRESS	4693	556	4694
// OP_STOREP_F	4253	4694	0
// OP_LOAD_ENT	28	548	4695
// OP_LOAD_V	4695	117	4696
// OP_STORE_V	4696	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	548	4699
// OP_STORE_V	4699	4	0
// OP_LOAD_ENT	28	548	4700
// OP_LOAD_V	4700	105	4701
// OP_MUL_VF	1215	771	4704
// OP_ADD_V	4701	4704	4707
// OP_STORE_V	4707	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	108	4710
// OP_LOAD_F	28	112	4711
// OP_GT	4710	4711	4712
// OP_LOAD_F	28	182	4713
// OP_BITAND	4713	228	4714
// OP_AND	4712	4714	4715
// OP_LOAD_F	28	606	4716
// OP_AND	4715	4716	4717
// OP_DIV_F	778	821	4718
// OP_GT	4262	4718	4719
// OP_AND	4717	4719	4720
// OP_LOAD_F	28	604	4721
// OP_NOT_F	4721	0	4722
// OP_AND	4720	4722	4723
// OP_IFNOT	4723	46	0
// OP_STORE_V	59	4256	0
// OP_STORE_F	817	4258	0
// OP_STORE_V	4256	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	4256	0
// OP_LOAD_V	28	105	4724
// OP_STORE_V	4724	4	0
// OP_LOAD_V	28	105	4727
// OP_MUL_VF	4256	2223	4730
// OP_ADD_V	4727	4730	4733
// OP_STORE_V	4733	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	475	0	0
// OP_STORE_F	218	4265	0
// OP_LT	70	819	4736
// OP_IFNOT	4736	4	0
// OP_LT	76	2575	4737
// OP_IFNOT	4737	2	0
// OP_STORE_F	219	4265	0
// OP_NOT_F	4265	0	4738
// OP_IFNOT	4738	24	0
// OP_ADDRESS	28	113	4739
// OP_LOAD_V	28	113	4742
// OP_STORE_V	4742	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	590	4745
// OP_MUL_VF	1	4745	4746
// OP_STOREP_V	4746	4739	0
// OP_DIV_F	778	821	4749
// OP_LT	4262	4749	4750
// OP_IFNOT	4750	10	0
// OP_ADDRESS	28	113	4751
// OP_LOAD_V	28	113	4754
// OP_LOAD_V	28	113	4757
// OP_STORE_V	4757	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	4760	4761
// OP_MUL_VF	4761	32	4764
// OP_ADD_V	4754	4764	4767
// OP_STOREP_V	4767	4751	0
// OP_LOAD_V	28	113	4770
// OP_STORE_V	4770	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4262	0
// OP_STORE_F	219	4270	0
// OP_IFNOT	4270	76	0
// OP_LOAD_ENT	28	548	4773
// OP_LOAD_V	4773	621	4774
// OP_LOAD_ENT	28	548	4777
// OP_LOAD_V	4777	105	4778
// OP_LOAD_ENT	28	548	4781
// OP_LOAD_V	4781	621	4782
// OP_SUB_V	4778	4782	4785
// OP_ADD_V	4774	4785	4788
// OP_STORE_V	4788	4280	0
// OP_LOAD_ENT	28	548	4791
// OP_LOAD_V	4791	105	4792
// OP_STORE_V	4792	4259	0
// OP_LT	64	817	4795
// OP_IFNOT	4795	3	0
// OP_ADD_V	4259	1666	4796
// OP_STORE_V	4796	4259	0
// OP_STORE_V	64	4	0
// OP_CALL1	499	0	0
// OP_STORE_F	1	4264	0
// OP_SUB_F	819	4264	4799
// OP_MUL_FV	4799	1535	4800
// OP_ADD_V	4259	4800	4803
// OP_STORE_V	4803	4259	0
// OP_LT	61	817	4806
// OP_IFNOT	4806	2	0
// OP_STORE_F	817	61	0
// OP_MUL_FV	61	4807	4810
// OP_ADD_V	4259	4810	4813
// OP_STORE_V	4813	4259	0
// OP_LOAD_F	28	664	4816
// OP_SUB_F	31	819	4817
// OP_GT	4816	4817	4818
// OP_IFNOT	4818	12	0
// OP_LOAD_ENT	28	548	4819
// OP_LOAD_V	4819	105	4820
// OP_LOAD_ENT	28	548	4823
// OP_LOAD_V	4823	105	4824
// OP_SUB_V	4259	4824	4827
// OP_LOAD_F	28	664	4830
// OP_SUB_F	31	4830	4831
// OP_MUL_VF	4827	4831	4832
// OP_ADD_V	4820	4832	4835
// OP_STORE_V	4835	4259	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	661	4838
// OP_SUB_F	31	819	4839
// OP_LT	4838	4839	4840
// OP_LOAD_F	28	664	4841
// OP_SUB_F	31	819	4842
// OP_LT	4841	4842	4843
// OP_AND	4840	4843	4844
// OP_IFNOT	4844	13	0
// OP_LOAD_ENT	28	548	4845
// OP_LOAD_F	4845	108	4846
// OP_SUB_F	4261	4846	4847
// OP_MUL_F	4847	821	4848
// OP_STORE_F	4848	4264	0
// OP_GT	4264	3330	4849
// OP_IFNOT	4849	2	0
// OP_STORE_F	3330	4264	0
// OP_LOAD_ENT	28	548	4850
// OP_LOAD_F	4850	108	4851
// OP_SUB_F	4851	4264	4852
// OP_STORE_F	4852	4261	0
// OP_LOAD_ENT	28	548	4853
// OP_ADDRESS	4853	108	4854
// OP_SUB_F	4261	4282	4855
// OP_MUL_F	4855	32	4856
// OP_ADD_F	4282	4856	4857
// OP_STOREP_F	4857	4854	0
// OP_LOAD_ENT	28	548	4858
// OP_ADDRESS	4858	621	4859
// OP_LOAD_ENT	28	548	4862
// OP_LOAD_V	4862	105	4863
// OP_STOREP_V	4863	4859	0
// OP_LOAD_S	28	129	4866
// OP_EQ_S	4866	880	4867
// OP_IFNOT	4867	62	0
// OP_ADDRESS	28	188	4868
// OP_LOAD_V	28	575	4869
// OP_STORE_V	4869	4	0
// OP_CALL1	471	0	0
// OP_MUL_F	1	4872	4873
// OP_DIV_F	4873	32	4874
// OP_DIV_F	4874	2223	4875
// OP_DIV_F	4875	1957	4876
// OP_STORE_V	4876	4	0
// OP_CALL1	496	0	0
// OP_STOREP_F	1	4868	0
// OP_LOAD_F	28	188	4877
// OP_LT	4877	817	4878
// OP_IFNOT	4878	3	0
// OP_ADDRESS	28	188	4879
// OP_STOREP_F	817	4879	0
// OP_EQ_F	738	819	4880
// OP_LOAD_F	28	644	4881
// OP_BITAND	4881	691	4882
// OP_NOT_F	4882	0	4883
// OP_AND	4880	4883	4884
// OP_LOAD_F	28	644	4885
// OP_BITAND	4885	702	4886
// OP_NOT_F	4886	0	4887
// OP_AND	4884	4887	4888
// OP_EQ_F	737	717	4889
// OP_AND	4888	4889	4890
// OP_NOT_F	719	0	4891
// OP_AND	4890	4891	4892
// OP_IFNOT	4892	32	0
// OP_ADDRESS	28	677	4893
// OP_LOAD_F	28	677	4894
// OP_SUB_F	4894	32	4895
// OP_STOREP_F	4895	4893	0
// OP_ADDRESS	28	157	4896
// OP_LOAD_F	28	677	4897
// OP_STOREP_F	4897	4896	0
// OP_LOAD_F	28	677	4898
// OP_LT	4898	819	4899
// OP_IFNOT	4899	9	0
// OP_ADDRESS	28	644	4900
// OP_LOAD_F	28	644	4901
// OP_BITOR	4901	702	4902
// OP_STOREP_F	4902	4900	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4903	7	0
// OP_CALL2	520	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	677	4904
// OP_LT	4904	827	4905
// OP_LOAD_F	28	677	4906
// OP_LOAD_F	28	678	4907
// OP_NE_F	4906	4907	4908
// OP_AND	4905	4908	4909
// OP_IFNOT	4909	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4910	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	28	678	4911
// OP_LOAD_F	28	677	4912
// OP_STOREP_F	4912	4911	0
// OP_STORE_V	4913	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	4268	0
// OP_STORE_V	4262	4	0
// OP_CALL1	3542	0	0
// OP_LOAD_F	28	165	4914
// OP_NOT_F	4914	0	4915
// OP_IFNOT	4915	3	0
// OP_STORE_V	4262	4	0
// OP_CALL1	3902	0	0
// OP_ADDRESS	28	590	4916
// OP_STOREP_F	4262	4916	0
// OP_IFNOT	719	3	0
// OP_ADDRESS	28	113	4917
// OP_STOREP_V	926	4917	0
// OP_LOAD_V	28	105	4920
// OP_STORE_V	4920	4	0
// OP_LOAD_V	28	105	4923
// OP_SUB_V	4923	4926	4929
// OP_STORE_V	4929	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LOAD_ENT	28	548	4932
// OP_LOAD_F	4932	108	4933
// OP_SUB_F	4933	4263	4934
// OP_GT	4934	825	4935
// OP_LOAD_ENT	28	548	4936
// OP_LOAD_F	4936	108	4937
// OP_SUB_F	4937	4263	4938
// OP_LT	4938	2657	4939
// OP_AND	4935	4939	4940
// OP_EQ_F	76	819	4941
// OP_AND	4940	4941	4942
// OP_IFNOT	4942	26	0
// OP_LOAD_ENT	28	548	4943
// OP_LOAD_V	4943	105	4944
// OP_STORE_V	4944	4274	0
// OP_LOAD_ENT	28	548	4947
// OP_LOAD_F	4947	108	4948
// OP_SUB_F	4948	4263	4949
// OP_MUL_F	4949	829	4950
// OP_DIV_F	4262	778	4951
// OP_MUL_F	4951	825	4952
// OP_ADD_F	819	4952	4953
// OP_MUL_F	4950	4953	4954
// OP_MUL_F	4954	32	4955
// OP_ADD_F	4263	4955	4956
// OP_STORE_F	4956	4276	0
// OP_LOAD_ENT	28	548	4957
// OP_LOAD_F	4957	108	4958
// OP_GT	4276	4958	4959
// OP_IFNOT	4959	4	0
// OP_LOAD_ENT	28	548	4960
// OP_LOAD_F	4960	108	4961
// OP_STORE_F	4961	4276	0
// OP_LOAD_ENT	28	548	4962
// OP_STORE_V	4962	4	0
// OP_STORE_V	4274	7	0
// OP_CALL2	462	0	0
// OP_CALL0	1496	0	0
// OP_LOAD_ENT	28	625	4963
// OP_NE_E	4963	30	4964
// OP_IFNOT	4964	6	0
// OP_LOAD_ENT	28	625	4965
// OP_STORE_ENT	4965	28	0
// OP_CALL0	4235	0	0
// OP_LOAD_ENT	28	201	4966
// OP_STORE_ENT	4966	28	0
// OP_ADDRESS	28	571	4967
// OP_LOAD_V	28	113	4970
// OP_STOREP_V	4970	4967	0
// OP_DONE	0	0	0
void () MoveVehicle = 
{
    local float MAX_COLLISIONS;
    local vector vel_angles;
    local vector veh_dir_angles;
    local vector veh_angles;
    local vector reb_vect;
    local vector body_vect;
    local vector angle;
    local vector vtemp;
    local vector ideal_org;
    local float vel_speed;
    local float old_z;
    local float ftemp;
    local float too_steep;
    local float num_collisions;
    local float last_collision;
    local float max_speed;
    local float collision_type;
    local float adjust_body;
    local float this_pitch;
    local float old_dist;
    local float new_dist;
    local vector new_org;
    local vector dir_angles;
    local vector old_org;
    local entity oself;
    local string str;
    old_z = self.veh_body.origin_z;
    
    if((self.origin_z < -3000) && (self.classname == "player"))
    {
        bprint(self.netname);
        bprint(" visits the angels\n");
        T_Damage(self, world, world, 500);
        return;
    }
    
    vel_speed = vlen(self.velocity);
    self.lastmove = self.origin - self.oldorigin;
    
    if(self.lastmove_z == 0)
    {
        self.last_flat_z = self.origin_z;
    }
    
    
    if((rally_type_index < 3) && (!(global_racing_flags & QR_NO_STARTFINISH)))
    {
        new_dist = vlen(self.origin - self.next_marker.origin);
        old_dist = vlen(self.oldorigin - self.next_marker.origin);
        if((new_dist < 64) || ((((cvar("skill") <= 1) || !challenge) && (new_dist > old_dist)) && (old_dist < 384)))
        {
            oself = self;
            self = self.next_marker;
            other = oself;
            marker_touch();
            self = oself;
            self.next_marker = FindNextMarker(self.next_marker);
        }
        else
        {
            
            if(((challenge && (new_dist > old_dist)) && (old_dist < 312)) && (self.last_turnaround < (time - 1)))
            {
                centerprint(self, "Marker missed!");
                commentary(self, "voice/wrongway.wav");
                self.last_turnaround = time;
            }
            
        }
        
    }
    
    
    if((((self.classname == "player") && (vel_speed < 25)) && !self.reversing) && !self.accelerating)
    {
        traceline(self.origin, self.origin - '0.000 0.000 64.000', TRUE, self);
        
        if(0 < 1)
        {
            self.velocity = '0.000 0.000 0.000';
            self.origin = self.oldorigin;
            self.lastmove = '0.000 0.000 0.000';
        }
        
    }
    
    
    if(self.flags & FL_ONGROUND)
    {
        
        if(self.racing_flags & QR_MINE_EXPLODED)
        {
            self.racing_flags = self.racing_flags - QR_MINE_EXPLODED;
        }
        
    }
    
    
    if(!MoveTail())
    {
        return;
    }
    
    vel_speed = vlen(self.velocity);
    if((self.flags & FL_ONGROUND) && self.use_surface_angle)
    {
        SetSurfaceAngle();
    }
    else
    {
        
        if((!(self.flags & FL_ONGROUND)) && (!(self.last_flags & FL_ONGROUND)))
        {
            self.veh_body.veh_dir_z = self.veh_body.veh_dir_z + (self.veh_body.roll_velocity_z * frametime);
            
            if(self.veh_body.veh_dir_z < -180)
            {
                self.veh_body.veh_dir_z = self.veh_body.veh_dir_z + 360;
            }
            
        }
        
    }
    
    vel_angles = vectoangles(self.veh_dir);
    self.veh_body.angles_y = 0;
    if(self.flags & FL_ONGROUND)
    {
        self.veh_body.angles_x = vel_angles_x;
    }
    else
    {
        
        if(self.classname == "player")
        {
            dir_angles = self.veh_body.angles;
            makevectors(dir_angles);
            dir_angles_y = MoveToAngle(0, 0 + (self.veh_body.roll_velocity_y * frametime), 1000);
            self.veh_body.angles_y = 0;
            if(self.leave_ground_time > (time - 1))
            {
                self.veh_body.angles_x = self.veh_body.angles_x + ((self.veh_body.roll_velocity_x * (time - self.leave_ground_time)) * frametime);
            }
            else
            {
                self.veh_body.angles_x = self.veh_body.angles_x + ((self.veh_body.roll_velocity_x / 4) * frametime);
            }
            
            if(self.veh_body.angles_x > 180)
            {
                self.veh_body.angles_x = self.veh_body.angles_x - 360;
            }
            else
            {
                
                if(self.veh_body.angles_x < -180)
                {
                    self.veh_body.angles_x = self.veh_body.angles_x + 360;
                }
                
            }
            
            
            if(((self.veh_body.angles_x > 40) && (self.veh_body.roll_velocity_x > 0)) || ((self.veh_body.angles_x < -40) && (self.veh_body.roll_velocity_x < 0)))
            {
                self.veh_body.roll_velocity_x = 0;
            }
            
            
            if(((self.veh_body.angles_x > 25) && (self.veh_body.roll_velocity_x > 0)) || ((self.veh_body.angles_x < -25) && (self.veh_body.roll_velocity_x < 0)))
            {
                self.veh_body.roll_velocity_x = self.veh_body.roll_velocity_x * 0.9;
            }
            
        }
        
    }
    
    if(self.veh_body.veh_dir_z > 180)
    {
        self.veh_body.angles_z = self.veh_body.veh_dir_z - 360;
    }
    else
    {
        self.veh_body.angles_z = self.veh_body.veh_dir_z;
    }
    
    self.veh_body.angles_z = self.veh_body.angles_z + self.angles_z;
    makevectors(self.veh_body.angles);
    self.veh_dir = v_forward;
    if(self.flags & FL_ONGROUND)
    {
        self.veh_body.angles = self.veh_body.angles + self.body_roll;
    }
    else
    {
        self.veh_body.angles_z = self.veh_body.angles_z + self.body_roll_z;
    }
    
    setorigin(self.veh_body, (((self.origin - (v_forward * (VEH_LENGTH / 2))) - (v_forward * dist_infront)) + VEH_BODY_OFFSET) + (((v_forward * (vel_speed / MAX_SPEED)) * 8) * (1 - hold_flag)));
    
    if(self.car_index == 5)
    {
        setorigin(self.veh_body, self.veh_body.origin + '0.000 0.000 4.000');
    }
    
    
    if(self.classname == "rally_bot")
    {
        self.veh_body.origin = self.veh_body.origin - '0.000 0.000 8.000';
    }
    
    
    if(self.veh_body.last_velocity == '0.000 0.000 0.000')
    {
        self.veh_body.last_velocity = self.veh_body.origin;
    }
    
    
    if((self.veh_body.angles_x > 40) && (self.veh_body.angles_x < 180))
    {
        self.veh_body.angles_x = 40;
    }
    
    
    if((self.veh_body.angles_x >= 180) && (self.veh_body.angles_x < 320))
    {
        self.veh_body.angles_x = 320;
    }
    
    angle = self.veh_body.angles;
    veh_angles = self.veh_body.veh_dir;
    veh_angles_x = anglemod(veh_angles_x);
    traceline(self.origin, self.origin - '0.000 0.000 64.000', TRUE, self);
    if((trace_fraction < 1) && (0 < 0.95))
    {
        this_pitch = 50;
    }
    else
    {
        this_pitch = 80;
    }
    
    
    if(fabs(angle_diff(veh_angles_x, angle_x)) > (this_pitch * frametime))
    {
        angle_x = MoveToAngle(veh_angles_x, angle_x, this_pitch);
        self.veh_body.angles_x = angle_x;
    }
    
    self.veh_body.veh_dir_x = angle_x;
    makevectors(self.veh_body.angles);
    setorigin(self.veh_body, self.veh_body.origin + ('0.000 0.000 1.000' * -5));
    
    if(((((self.origin_z > self.oldorigin_z) && (self.flags & FL_ONGROUND)) && self.accelerating) && (vel_speed > (MAX_SPEED / 2))) && !self.reversing)
    {
        vtemp = v_forward;
        vtemp_z = 0;
        vtemp = normalize(vtemp);
        traceline(self.origin, self.origin + (vtemp * 64), TRUE, world);
        too_steep = FALSE;
        
        if(trace_fraction < 1)
        {
            
            if(0 < 0.3)
            {
                too_steep = TRUE;
            }
            
        }
        
        
        if(!too_steep)
        {
            self.velocity = normalize(self.velocity) * self.last_speed;
            
            if(vel_speed < (MAX_SPEED / 2))
            {
                self.velocity = self.velocity + ((normalize(self.velocity) * 200) * frametime);
            }
            
            vel_speed = vlen(self.velocity);
        }
        
    }
    
    adjust_body = TRUE;
    
    if(adjust_body)
    {
        old_org = self.veh_body.last_velocity + (self.veh_body.origin - self.veh_body.last_velocity);
        ideal_org = self.veh_body.origin;
        
        if(0 < 0)
        {
            ideal_org = ideal_org + '0.000 0.000 8.000';
        }
        
        ftemp = fabs(0);
        ideal_org = ideal_org + ((1 - ftemp) * '0.000 0.000 16.000');
        
        if(0 < 0)
        {
            v_forward_z = 0;
        }
        
        ideal_org = ideal_org + (0 * '0.000 0.000 20.000');
        if(self.leave_ground_time > (time - 1))
        {
            ideal_org = self.veh_body.origin + ((ideal_org - self.veh_body.origin) * (time - self.leave_ground_time));
        }
        else
        {
            
            if((self.last_land < (time - 1)) && (self.leave_ground_time < (time - 1)))
            {
                ftemp = (0 - self.veh_body.origin_z) * 2;
                
                if(ftemp > 48)
                {
                    ftemp = 48;
                }
                
                ideal_org_z = self.veh_body.origin_z - ftemp;
            }
            
        }
        
        self.veh_body.origin_z = 0 + ((0 - 0) * frametime);
        self.veh_body.last_velocity = self.veh_body.origin;
    }
    
    
    if(self.classname == "player")
    {
        self.armorvalue = ceil((((vlen(self.lastmove) * 1600) / frametime) / 64) / 100);
        
        if(self.armorvalue < 0)
        {
            self.armorvalue = 0;
        }
        
        
        if(((((rally_type_index == 1) && (!(self.racing_flags & QR_FINISHED_RACE))) && (!(self.racing_flags & QR_OUT_OF_TIME))) && (racing_type == RT_TIME_TRIAL)) && !hold_flag)
        {
            self.time_remaining = self.time_remaining - frametime;
            self.currentammo = self.time_remaining;
            if(self.time_remaining < 1)
            {
                self.racing_flags = self.racing_flags | QR_OUT_OF_TIME;
                centerprint(self, "You are out of time.\n");
            }
            else
            {
                
                if((self.time_remaining < 5) && (self.time_remaining != self.last_time_remaining))
                {
                    commentary(self, "voice/tone05.wav");
                }
                
            }
            
            self.last_time_remaining = self.time_remaining;
        }
        
    }
    
    max_speed = cvar("sv_maxspeed");
    CheckForCollision(vel_speed);
    
    if(!self.deadflag)
    {
        DoEngineNoises(vel_speed);
    }
    
    self.last_speed = vel_speed;
    
    if(hold_flag)
    {
        self.velocity = '0.000 0.000 0.000';
    }
    
    traceline(self.origin, self.origin - '0.000 0.000 48.000', FALSE, self);
    
    if((((self.veh_body.origin_z - old_z) > 4) && ((self.veh_body.origin_z - old_z) < 32)) && (0 == 1))
    {
        new_org = self.veh_body.origin;
        new_org_z = old_z + ((((self.veh_body.origin_z - old_z) * 6) * (1 + ((vel_speed / MAX_SPEED) * 4))) * frametime);
        
        if(0 > self.veh_body.origin_z)
        {
            new_org_z = self.veh_body.origin_z;
        }
        
        setorigin(self.veh_body, new_org);
    }
    
    MoveWheels();
    
    if(self.chasecam != world)
    {
        self = self.chasecam;
        Keep_cam_chasing_owner();
        self = self.owner;
    }
    
    self.back_vel = self.velocity;
};

// checkSteering
// function begins at statement 5284, parm_start=4974
// OP_LOAD_V	28	113	4984
// OP_STORE_V	4984	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	4983	0
// OP_LOAD_V	28	113	4987
// OP_STORE_V	4987	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	4979	0
// OP_LOAD_V	28	555	4990
// OP_STORE_V	4990	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	4976	0
// OP_LOAD_F	28	119	4993
// OP_ADD_F	4993	4994	4995
// OP_STORE_V	4995	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	4982	0
// OP_STORE_V	4982	4	0
// OP_LOAD_F	28	565	4996
// OP_STORE_V	4996	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	4974	0
// OP_LOAD_F	28	676	4997
// OP_EQ_F	4997	811	4998
// OP_IFNOT	4998	22	0
// OP_LOAD_F	28	561	4999
// OP_STORE_F	4999	4975	0
// OP_LOAD_F	28	561	5000
// OP_STORE_V	5000	4	0
// OP_STORE_V	4977	7	0
// OP_CALL2	860	0	0
// OP_LT	1	827	5001
// OP_STORE_V	5001	4	0
// OP_CALL1	499	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	561	5002
// OP_STOREP_F	4977	5002	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	561	5003
// OP_LOAD_F	28	561	5004
// OP_STORE_V	5004	4	0
// OP_STORE_V	4977	7	0
// OP_STORE_V	761	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	5003	0
// OP_GOTO	48	0	0
// OP_LOAD_F	28	676	5005
// OP_EQ_F	5005	813	5006
// OP_IFNOT	5006	22	0
// OP_ADDRESS	28	561	5007
// OP_LOAD_F	28	561	5008
// OP_MUL_F	762	32	5009
// OP_ADD_F	5008	5009	5010
// OP_STORE_V	5010	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	5007	0
// OP_LOAD_F	28	561	5011
// OP_STORE_V	5011	4	0
// OP_STORE_V	4977	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	775	5012
// OP_IFNOT	5012	6	0
// OP_ADDRESS	28	561	5013
// OP_ADD_F	4977	775	5014
// OP_STORE_V	5014	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	5013	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	676	5015
// OP_EQ_F	5015	812	5016
// OP_IFNOT	5016	21	0
// OP_ADDRESS	28	561	5017
// OP_LOAD_F	28	561	5018
// OP_MUL_F	762	32	5019
// OP_SUB_F	5018	5019	5020
// OP_STORE_V	5020	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	5017	0
// OP_LOAD_F	28	561	5021
// OP_STORE_V	5021	4	0
// OP_STORE_V	4977	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	775	5022
// OP_IFNOT	5022	6	0
// OP_ADDRESS	28	561	5023
// OP_SUB_F	4977	775	5024
// OP_STORE_V	5024	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	5023	0
// OP_LOAD_F	28	561	5025
// OP_STORE_V	5025	4	0
// OP_CALL1	485	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	5026	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	4977	4	0
// OP_CALL1	485	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	5027	4	0
// OP_CALL1	482	0	0
// OP_LOAD_ENT	28	548	5028
// OP_ADDRESS	5028	561	5029
// OP_LOAD_ENT	28	548	5030
// OP_LOAD_F	5030	561	5031
// OP_STORE_V	5031	4	0
// OP_LOAD_F	28	561	5032
// OP_STORE_V	5032	7	0
// OP_STORE_V	5033	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	5029	0
// OP_LOAD_F	28	604	5034
// OP_NOT_F	5034	0	5035
// OP_IFNOT	5035	17	0
// OP_LOAD_ENT	28	548	5036
// OP_LOAD_F	5036	561	5037
// OP_STORE_F	5037	4980	0
// OP_STORE_V	4979	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	113	5038
// OP_LOAD_ENT	28	547	5041
// OP_LOAD_V	5041	555	5042
// OP_MUL_F	778	821	5045
// OP_DIV_F	4983	5045	5046
// OP_MUL_VF	5042	5046	5047
// OP_ADD_V	59	5047	5050
// OP_STORE_V	5050	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	4983	5053
// OP_STOREP_V	5053	5038	0
// OP_DONE	0	0	0
void () checkSteering = 
{
    local float head_diff;
    local float ftemp;
    local vector veh_angles;
    local vector vel;
    local float new_heading;
    local float vel_speed;
    vel_speed = vlen(self.velocity);
    vel = vectoangles(self.velocity);
    veh_angles = vectoangles(self.veh_dir);
    new_heading = anglemod(self.angles_y + 1.9);
    head_diff = angle_diff(new_heading, self.old_angles_y);
    if(self.steering == STEER_CENTER)
    {
        ftemp = self.steer_angles_y;
        if(fabs(angle_diff(self.steer_angles_y, 0) < 5))
        {
            self.steer_angles_y = 0;
        }
        else
        {
            self.steer_angles_y = MoveToAngle(self.steer_angles_y, 0, STEERING_CENTERSPEED);
        }
        
    }
    else
    {
        if(self.steering == STEER_RIGHT)
        {
            self.steer_angles_y = anglemod(self.steer_angles_y + (STEERING_TURNSPEED * frametime));
            
            if(fabs(angle_diff(self.steer_angles_y, 0)) > VEH_MAX_STEER)
            {
                self.steer_angles_y = anglemod(0 + VEH_MAX_STEER);
            }
            
        }
        else
        {
            
            if(self.steering == STEER_LEFT)
            {
                self.steer_angles_y = anglemod(self.steer_angles_y - (STEERING_TURNSPEED * frametime));
                
                if(fabs(angle_diff(self.steer_angles_y, 0)) > VEH_MAX_STEER)
                {
                    self.steer_angles_y = anglemod(0 - VEH_MAX_STEER);
                }
                
            }
            
        }
        
    }
    
    bprint(ftos(self.steer_angles_y));
    bprint(" - (");
    bprint(ftos(0));
    bprint(")\n");
    self.veh_body.steer_angles_y = MoveToAngle(self.veh_body.steer_angles_y, self.steer_angles_y, 900);
    
    if(!self.reversing)
    {
        vel_y = self.veh_body.steer_angles_y;
        makevectors(vel);
        self.velocity = (normalize(v_forward + (self.veh_tail.veh_dir * (vel_speed / (MAX_SPEED * 2))))) * vel_speed;
    }
    
};

// SteerChange
// function begins at statement 5420, parm_start=5057
// OP_STORE_F	5057	5058	0
// OP_LOAD_ENT	28	201	5059
// OP_LOAD_F	5059	156	5060
// OP_SUB_F	5060	5057	5061
// OP_STORE_V	5061	4	0
// OP_CALL1	499	0	0
// OP_GT	1	819	5062
// OP_IFNOT	5062	12	0
// OP_LOAD_ENT	28	201	5063
// OP_LOAD_F	5063	156	5064
// OP_LOAD_ENT	28	201	5065
// OP_LOAD_F	5065	156	5066
// OP_GT	5057	5066	5067
// OP_MUL_F	5067	821	5068
// OP_SUB_F	5068	819	5069
// OP_MUL_F	5069	32	5070
// OP_MUL_F	5070	1112	5071
// OP_ADD_F	5064	5071	5072
// OP_STORE_F	5072	5057	0
// OP_EQ_F	5058	5057	5073
// OP_IFNOT	5073	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	5074
// OP_LOAD_F	5074	156	5075
// OP_LT	5058	5075	5076
// OP_LT	5057	5058	5077
// OP_AND	5076	5077	5078
// OP_IFNOT	5078	3	0
// OP_STORE_F	5058	5057	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	201	5079
// OP_LOAD_F	5079	156	5080
// OP_GT	5058	5080	5081
// OP_GT	5057	5058	5082
// OP_AND	5081	5082	5083
// OP_IFNOT	5083	2	0
// OP_STORE_F	5058	5057	0
// OP_GT	5057	2670	5084
// OP_IFNOT	5084	3	0
// OP_STORE_F	2670	5057	0
// OP_GOTO	4	0	0
// OP_LT	5057	817	5085
// OP_IFNOT	5085	2	0
// OP_STORE_F	817	5057	0
// OP_LOAD_ENT	28	201	5086
// OP_ADDRESS	5086	156	5087
// OP_STOREP_F	5057	5087	0
// OP_LOAD_ENT	28	201	5088
// OP_ADDRESS	5088	651	5089
// OP_STOREP_F	31	5089	0
// OP_DONE	0	0	0
void (float index) SteerChange = 
{
    local float real_index;
    real_index = index;
    
    if((fabs(self.owner.weaponframe - index)) > 1)
    {
        index = self.owner.weaponframe + (((((index > self.owner.weaponframe) * 2) - 1) * frametime) * 20);
    }
    
    
    if(real_index == index)
    {
        return;
    }
    
    if((real_index < self.owner.weaponframe) && (index < real_index))
    {
        index = real_index;
    }
    else
    {
        
        if((real_index > self.owner.weaponframe) && (index > real_index))
        {
            index = real_index;
        }
        
    }
    
    if(index > 16)
    {
        index = 16;
    }
    else
    {
        
        if(index < 0)
        {
            index = 0;
        }
        
    }
    
    self.owner.weaponframe = index;
    self.owner.last_steerchange = time;
};

// calc_steering_controls
// function begins at statement 5471, parm_start=5091
// OP_LOAD_F	28	675	5095
// OP_STORE_V	5095	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	5092	0
// OP_LOAD_F	28	119	5096
// OP_STORE_V	5096	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	5093	0
// OP_STORE_V	5092	4	0
// OP_STORE_V	5093	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	5091	0
// OP_GT	5091	865	5097
// OP_IFNOT	5097	3	0
// OP_SUB_F	5091	867	5098
// OP_STORE_F	5098	5091	0
// OP_STORE_V	5091	4	0
// OP_CALL1	499	0	0
// OP_LT	1	823	5099
// OP_IFNOT	5099	4	0
// OP_ADDRESS	28	676	5100
// OP_STOREP_F	811	5100	0
// OP_GOTO	10	0	0
// OP_GT	5091	817	5101
// OP_IFNOT	5101	4	0
// OP_ADDRESS	28	676	5102
// OP_STOREP_F	812	5102	0
// OP_GOTO	5	0	0
// OP_LT	5091	817	5103
// OP_IFNOT	5103	3	0
// OP_ADDRESS	28	676	5104
// OP_STOREP_F	813	5104	0
// OP_DONE	0	0	0
void () calc_steering_controls = 
{
    local float steer;
    local float before;
    local float after;
    local string str;
    before = anglemod(self.last_heading);
    after = anglemod(self.angles_y);
    steer = angle_diff(before, after);
    
    if(steer > 180)
    {
        steer = steer - 360;
    }
    
    if(fabs(steer) < 3)
    {
        self.steering = STEER_CENTER;
    }
    else
    {
        if(steer > 0)
        {
            self.steering = STEER_LEFT;
        }
        else
        {
            
            if(steer < 0)
            {
                self.steering = STEER_RIGHT;
            }
            
        }
        
    }
    
};

// VehiclePreThink
// function begins at statement 5504, parm_start=5106
// OP_LOAD_V	28	113	5134
// OP_STORE_V	5134	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5131	0
// OP_LOAD_ENT	28	548	5137
// OP_ADDRESS	5137	183	5138
// OP_LOAD_F	28	183	5139
// OP_STOREP_F	5139	5138	0
// OP_LOAD_V	28	571	5140
// OP_STORE_V	5140	4	0
// OP_CALL1	471	0	0
// OP_SUB_F	5131	1	5143
// OP_STORE_F	5143	5113	0
// OP_LOAD_F	28	644	5144
// OP_BITAND	5144	702	5145
// OP_IFNOT	5145	28	0
// OP_LOAD_F	28	182	5146
// OP_BITAND	5146	228	5147
// OP_IFNOT	5147	22	0
// OP_LOAD_V	28	567	5148
// OP_STORE_V	5148	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5132	0
// OP_LOAD_V	28	567	5151
// OP_STORE_V	5151	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	795	5154
// OP_MUL_VF	5154	32	5157
// OP_STORE_V	5157	5117	0
// OP_STORE_V	5117	4	0
// OP_CALL1	471	0	0
// OP_LT	1	5132	5160
// OP_IFNOT	5160	6	0
// OP_ADDRESS	28	113	5161
// OP_LOAD_V	28	567	5164
// OP_SUB_V	5164	5117	5167
// OP_STOREP_V	5167	5161	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	113	5170
// OP_STOREP_V	926	5170	0
// OP_LT	5131	855	5173
// OP_IFNOT	5173	2	0
// OP_CALL0	1755	0	0
// OP_LOAD_F	28	607	5174
// OP_IFNOT	5174	12	0
// OP_ADDRESS	28	613	5175
// OP_LOAD_F	28	613	5176
// OP_MUL_F	789	32	5177
// OP_SUB_F	5176	5177	5178
// OP_STOREP_F	5178	5175	0
// OP_LOAD_F	28	613	5179
// OP_LT	5179	827	5180
// OP_IFNOT	5180	3	0
// OP_ADDRESS	28	613	5181
// OP_STOREP_F	827	5181	0
// OP_GOTO	13	0	0
// OP_LOAD_F	28	608	5182
// OP_IFNOT	5182	11	0
// OP_ADDRESS	28	613	5183
// OP_LOAD_F	28	613	5184
// OP_MUL_F	789	32	5185
// OP_ADD_F	5184	5185	5186
// OP_STOREP_F	5186	5183	0
// OP_LOAD_F	28	613	5187
// OP_GT	5187	4760	5188
// OP_IFNOT	5188	3	0
// OP_ADDRESS	28	613	5189
// OP_STOREP_F	4760	5189	0
// OP_LOAD_F	28	611	5190
// OP_EQ_F	5190	716	5191
// OP_IFNOT	5191	2	0
// OP_CALL0	5090	0	0
// OP_LOAD_V	28	105	5192
// OP_STORE_V	5192	4	0
// OP_CALL1	498	0	0
// OP_EQ_F	1	294	5195
// OP_IFNOT	5195	3	0
// OP_CALL0	1755	0	0
// OP_RETURN	0	0	0
// OP_CALL0	3394	0	0
// OP_LOAD_ENT	28	548	5196
// OP_LOAD_F	5196	133	5197
// OP_BITAND	5197	350	5198
// OP_IFNOT	5198	11	0
// OP_LOAD_F	28	656	5199
// OP_SUB_F	31	1182	5200
// OP_LT	5199	5200	5201
// OP_IFNOT	5201	7	0
// OP_LOAD_ENT	28	548	5202
// OP_ADDRESS	5202	133	5203
// OP_LOAD_ENT	28	548	5204
// OP_LOAD_F	5204	133	5205
// OP_SUB_F	5205	350	5206
// OP_STOREP_F	5206	5203	0
// OP_LOAD_F	28	684	5207
// OP_BITAND	5207	704	5208
// OP_LOAD_F	28	645	5209
// OP_SUB_F	31	802	5210
// OP_LT	5209	5210	5211
// OP_AND	5208	5211	5212
// OP_IFNOT	5212	19	0
// OP_LOAD_F	28	628	5213
// OP_LT	5213	823	5214
// OP_IFNOT	5214	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5215	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5216	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	645	5217
// OP_STOREP_F	31	5217	0
// OP_LOAD_ENT	28	548	5218
// OP_LOAD_V	5218	117	5219
// OP_STORE_V	5219	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	673	5222
// OP_NE_E	5222	30	5223
// OP_IFNOT	5223	11	0
// OP_LT	64	2869	5224
// OP_IFNOT	5224	9	0
// OP_LOAD_ENT	28	673	5225
// OP_STORE_V	5225	4	0
// OP_CALL1	474	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5226	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	673	5227
// OP_STOREP_ENT	30	5227	0
// OP_LOAD_F	28	182	5228
// OP_BITAND	5228	228	5229
// OP_IFNOT	5229	72	0
// OP_LT	64	2869	5230
// OP_IFNOT	5230	28	0
// OP_ADDRESS	28	589	5231
// OP_STOREP_F	218	5231	0
// OP_LOAD_F	28	116	5232
// OP_STORE_F	5232	5107	0
// OP_LOAD_V	28	567	5233
// OP_STORE_V	5233	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5106	0
// OP_ADDRESS	28	113	5236
// OP_LOAD_V	28	105	5239
// OP_LOAD_V	28	109	5242
// OP_SUB_V	5239	5242	5245
// OP_STORE_V	5245	4	0
// OP_CALL1	468	0	0
// OP_STOREP_V	1	5236	0
// OP_GT	5106	855	5248
// OP_IFNOT	5248	7	0
// OP_ADDRESS	28	113	5249
// OP_LOAD_V	28	113	5252
// OP_MUL_F	5106	2236	5255
// OP_MUL_VF	5252	5255	5256
// OP_STOREP_V	5256	5249	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	113	5259
// OP_STOREP_V	926	5259	0
// OP_CALL0	1755	0	0
// OP_GOTO	43	0	0
// OP_GT	64	1182	5262
// OP_IFNOT	5262	16	0
// OP_LOAD_F	28	589	5263
// OP_NOT_F	5263	0	5264
// OP_IFNOT	5264	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5265	10	0
// OP_STORE_V	1182	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	589	5266
// OP_STOREP_F	219	5266	0
// OP_LOAD_ENT	28	548	5267
// OP_ADDRESS	5267	120	5268
// OP_STOREP_F	817	5268	0
// OP_GOTO	26	0	0
// OP_LOAD_ENT	28	548	5269
// OP_LOAD_F	5269	598	5270
// OP_GT	5270	817	5271
// OP_IFNOT	5271	5	0
// OP_LOAD_ENT	28	548	5272
// OP_ADDRESS	5272	598	5273
// OP_STOREP_F	1112	5273	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	548	5274
// OP_ADDRESS	5274	598	5275
// OP_STOREP_F	5276	5275	0
// OP_ADDRESS	28	182	5277
// OP_LOAD_F	28	182	5278
// OP_SUB_F	5278	228	5279
// OP_STOREP_F	5279	5277	0
// OP_ADDRESS	28	662	5280
// OP_LOAD_F	28	662	5281
// OP_LOAD_F	28	662	5282
// OP_BITAND	5282	228	5283
// OP_SUB_F	5281	5283	5284
// OP_STOREP_F	5284	5280	0
// OP_ADDRESS	28	113	5285
// OP_LOAD_V	28	113	5288
// OP_ADD_V	5288	5291	5294
// OP_STOREP_V	5294	5285	0
// OP_LOAD_F	28	182	5297
// OP_BITAND	5297	228	5298
// OP_IFNOT	5298	6	0
// OP_LOAD_ENT	28	547	5299
// OP_LOAD_V	5299	555	5300
// OP_STORE_V	5300	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	5117	0
// OP_STORE_V	5118	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	5111	0
// OP_LOAD_V	28	555	5303
// OP_STORE_V	5303	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	5117	0
// OP_STORE_V	5118	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	5110	0
// OP_STORE_V	5110	4	0
// OP_STORE_V	5111	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	5108	0
// OP_STORE_V	5108	4	0
// OP_CALL1	499	0	0
// OP_STORE_F	1	5108	0
// OP_LOAD_V	28	113	5306
// OP_STORE_V	5306	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5106	0
// OP_LOAD_F	28	590	5309
// OP_GT	1	5309	5310
// OP_IFNOT	5310	73	0
// OP_DIV_F	5106	778	5311
// OP_SUB_F	819	5311	5312
// OP_MUL_F	5312	821	5313
// OP_ADD_F	819	5313	5314
// OP_STORE_F	5314	5129	0
// OP_MUL_F	778	5129	5315
// OP_STORE_F	5315	5130	0
// OP_LOAD_F	28	108	5316
// OP_LOAD_F	28	112	5317
// OP_SUB_F	5316	5317	5318
// OP_LE	5318	817	5319
// OP_IFNOT	5319	13	0
// OP_LOAD_F	28	590	5320
// OP_LOAD_F	28	590	5321
// OP_SUB_F	5106	5321	5322
// OP_MUL_F	5322	776	5323
// OP_LOAD_F	28	611	5324
// OP_EQ_F	5324	715	5325
// OP_ADD_F	5325	819	5326
// OP_MUL_F	5323	5326	5327
// OP_MUL_F	5327	5129	5328
// OP_ADD_F	5320	5328	5329
// OP_STORE_F	5329	5107	0
// OP_GOTO	5	0	0
// OP_LOAD_V	28	113	5330
// OP_STORE_V	5330	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5107	0
// OP_GT	5107	5130	5333
// OP_IFNOT	5333	2	0
// OP_STORE_F	5130	5107	0
// OP_ADDRESS	28	113	5334
// OP_LOAD_V	28	113	5337
// OP_STORE_V	5337	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	5107	5340
// OP_STOREP_V	5340	5334	0
// OP_DIV_F	778	821	5343
// OP_LT	5106	5343	5344
// OP_LOAD_F	28	650	5345
// OP_SUB_F	31	799	5346
// OP_LT	5345	5346	5347
// OP_AND	5344	5347	5348
// OP_LOAD_F	28	590	5349
// OP_LT	5349	5106	5350
// OP_AND	5348	5350	5351
// OP_GT	5131	1957	5352
// OP_AND	5351	5352	5353
// OP_NOT_F	719	0	5354
// OP_AND	5353	5354	5355
// OP_LOAD_F	28	604	5356
// OP_NOT_F	5356	0	5357
// OP_AND	5355	5357	5358
// OP_IFNOT	5358	19	0
// OP_LOAD_F	28	610	5359
// OP_EQ_F	5359	808	5360
// OP_IFNOT	5360	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	2569	10	0
// OP_STORE_V	2236	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5361	10	0
// OP_STORE_V	2236	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	650	5362
// OP_STOREP_F	31	5362	0
// OP_LOAD_V	28	113	5363
// OP_STORE_V	5363	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5131	0
// OP_NE_F	35	855	5366
// OP_LOAD_F	28	189	5367
// OP_AND	5366	5367	5368
// OP_DIV_F	778	823	5369
// OP_GT	5131	5369	5370
// OP_AND	5368	5370	5371
// OP_IFNOT	5371	43	0
// OP_LOAD_ENT	28	548	5372
// OP_LOAD_V	5372	117	5373
// OP_STORE_V	5373	4	0
// OP_CALL1	461	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	829	5377
// OP_ADD_F	5376	5377	5378
// OP_STORE_F	5378	5113	0
// OP_LOAD_V	28	105	5379
// OP_MUL_VF	65	834	5382
// OP_ADD_V	5379	5382	5385
// OP_STORE_V	5385	4	0
// OP_ADD_V	62	65	5388
// OP_MUL_VF	5388	1957	5391
// OP_LOAD_V	28	113	5394
// OP_MUL_VF	5394	3083	5397
// OP_ADD_V	5391	5397	5400
// OP_STORE_V	5400	7	0
// OP_STORE_V	5113	10	0
// OP_DIV_F	5131	778	5403
// OP_MUL_F	5403	2677	5404
// OP_STORE_V	5404	13	0
// OP_CALL4	504	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	829	5406
// OP_ADD_F	5405	5406	5407
// OP_STORE_F	5407	5113	0
// OP_LOAD_V	28	105	5408
// OP_MUL_VF	65	834	5411
// OP_SUB_V	5408	5411	5414
// OP_STORE_V	5414	4	0
// OP_SUB_V	62	65	5417
// OP_MUL_VF	5417	1957	5420
// OP_LOAD_V	28	113	5423
// OP_MUL_VF	5423	3083	5426
// OP_ADD_V	5420	5426	5429
// OP_STORE_V	5429	7	0
// OP_STORE_V	5113	10	0
// OP_DIV_F	5131	778	5432
// OP_MUL_F	5432	2677	5433
// OP_STORE_V	5433	13	0
// OP_CALL4	504	0	0
// OP_EQ_F	5131	817	5434
// OP_LOAD_F	28	604	5435
// OP_NOT_F	5435	0	5436
// OP_AND	5434	5436	5437
// OP_LOAD_F	28	611	5438
// OP_NE_F	5438	715	5439
// OP_AND	5437	5439	5440
// OP_LOAD_F	28	611	5441
// OP_NE_F	5441	716	5442
// OP_AND	5440	5442	5443
// OP_IFNOT	5443	31	0
// OP_LOAD_V	28	555	5444
// OP_STORE_V	5444	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	5117	0
// OP_STORE_V	5118	4	0
// OP_LOAD_F	28	119	5447
// OP_STORE_V	5447	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	5113	0
// OP_STORE_V	5113	4	0
// OP_CALL1	499	0	0
// OP_LT	1	865	5448
// OP_IFNOT	5448	7	0
// OP_GT	5113	817	5449
// OP_IFNOT	5449	3	0
// OP_STORE_F	1380	5109	0
// OP_GOTO	2	0	0
// OP_STORE_F	1912	5109	0
// OP_GOTO	2	0	0
// OP_STORE_F	817	5109	0
// OP_ADD_F	5118	5109	5450
// OP_STORE_V	5450	4	0
// OP_CALL1	859	0	0
// OP_STORE_F	1	5118	0
// OP_STORE_V	5117	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	547	5451
// OP_ADDRESS	5451	555	5452
// OP_STOREP_V	59	5452	0
// OP_GOTO	10	0	0
// OP_LOAD_V	28	575	5455
// OP_STORE_V	5455	4	0
// OP_CALL1	471	0	0
// OP_LT	1	819	5458
// OP_IFNOT	5458	5	0
// OP_LOAD_ENT	28	547	5459
// OP_ADDRESS	5459	555	5460
// OP_LOAD_V	28	555	5463
// OP_STOREP_V	5463	5460	0
// OP_LOAD_F	28	611	5466
// OP_EQ_F	5466	716	5467
// OP_IFNOT	5467	3	0
// OP_CALL0	4973	0	0
// OP_GOTO	23	0	0
// OP_LOAD_V	28	113	5468
// OP_STORE_V	5468	5114	0
// OP_LOAD_V	28	117	5471
// OP_STORE_V	5471	541	0
// OP_LOAD_V	28	555	5474
// OP_STORE_V	5474	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	5120	0
// OP_ADDRESS	28	119	5477
// OP_LOAD_F	28	119	5478
// OP_STORE_V	5478	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	5477	0
// OP_STORE_V	5121	4	0
// OP_LOAD_F	28	119	5479
// OP_STORE_V	5479	7	0
// OP_CALL2	860	0	0
// OP_STORE_F	1	5108	0
// OP_LOAD_V	28	113	5480
// OP_STORE_V	5480	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	5106	0
// OP_LOAD_F	28	604	5483
// OP_IFNOT	5483	3	0
// OP_STORE_F	1228	5109	0
// OP_GOTO	2	0	0
// OP_STORE_F	819	5109	0
// OP_LOAD_ENT	28	549	5484
// OP_NE_E	5484	30	5485
// OP_IFNOT	5485	4	0
// OP_LOAD_ENT	28	549	5486
// OP_STORE_ENT	5486	28	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	548	5487
// OP_STORE_ENT	5487	28	0
// OP_STORE_V	5108	4	0
// OP_CALL1	499	0	0
// OP_LT	1	855	5488
// OP_LOAD_F	28	604	5489
// OP_OR	5488	5489	5490
// OP_IFNOT	5490	17	0
// OP_NOT_F	35	0	5491
// OP_IFNOT	5491	2	0
// OP_CALL0	816	0	0
// OP_GE	5108	827	5492
// OP_IFNOT	5492	4	0
// OP_STORE_V	839	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	8	0	0
// OP_LE	5108	1483	5493
// OP_IFNOT	5493	4	0
// OP_STORE_V	847	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	843	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	92	0	0
// OP_GT	5108	817	5494
// OP_IFNOT	5494	46	0
// OP_GE	5108	1632	5495
// OP_IFNOT	5495	7	0
// OP_NOT_F	35	0	5496
// OP_IFNOT	5496	2	0
// OP_CALL0	822	0	0
// OP_STORE_V	817	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	37	0	0
// OP_GE	5108	2522	5497
// OP_IFNOT	5497	12	0
// OP_NOT_F	35	0	5498
// OP_IFNOT	5498	2	0
// OP_CALL0	822	0	0
// OP_GE	5108	5499	5500
// OP_IFNOT	5500	4	0
// OP_STORE_V	819	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	821	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	24	0	0
// OP_GE	5108	1112	5501
// OP_IFNOT	5501	12	0
// OP_NOT_F	35	0	5502
// OP_IFNOT	5502	2	0
// OP_CALL0	820	0	0
// OP_GE	5108	1380	5503
// OP_IFNOT	5503	4	0
// OP_STORE_V	823	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	825	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	11	0	0
// OP_NOT_F	35	0	5504
// OP_IFNOT	5504	2	0
// OP_CALL0	818	0	0
// OP_GE	5108	845	5505
// OP_IFNOT	5505	4	0
// OP_STORE_V	827	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	829	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	45	0	0
// OP_LE	5108	4504	5506
// OP_IFNOT	5506	7	0
// OP_NOT_F	35	0	5507
// OP_IFNOT	5507	2	0
// OP_CALL0	828	0	0
// OP_STORE_V	2670	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	37	0	0
// OP_LE	5108	5508	5509
// OP_IFNOT	5509	12	0
// OP_NOT_F	35	0	5510
// OP_IFNOT	5510	2	0
// OP_CALL0	828	0	0
// OP_LE	5108	5511	5512
// OP_IFNOT	5512	4	0
// OP_STORE_V	845	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	841	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	24	0	0
// OP_LE	5108	5276	5513
// OP_IFNOT	5513	12	0
// OP_NOT_F	35	0	5514
// OP_IFNOT	5514	2	0
// OP_CALL0	826	0	0
// OP_LE	5108	1912	5515
// OP_IFNOT	5515	4	0
// OP_STORE_V	837	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	834	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	11	0	0
// OP_NOT_F	35	0	5516
// OP_IFNOT	5516	2	0
// OP_CALL0	824	0	0
// OP_LE	5108	3214	5517
// OP_IFNOT	5517	4	0
// OP_STORE_V	831	4	0
// OP_CALL1	5056	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	855	4	0
// OP_CALL1	5056	0	0
// OP_LOAD_ENT	28	201	5518
// OP_STORE_ENT	5518	28	0
// OP_IFNOT	35	28	0
// OP_LE	5108	5508	5519
// OP_IFNOT	5519	5	0
// OP_LOAD_ENT	28	548	5520
// OP_ADDRESS	5520	131	5521
// OP_STOREP_F	825	5521	0
// OP_GOTO	22	0	0
// OP_LE	5108	3214	5522
// OP_IFNOT	5522	5	0
// OP_LOAD_ENT	28	548	5523
// OP_ADDRESS	5523	131	5524
// OP_STOREP_F	823	5524	0
// OP_GOTO	16	0	0
// OP_GE	5108	2522	5525
// OP_IFNOT	5525	5	0
// OP_LOAD_ENT	28	548	5526
// OP_ADDRESS	5526	131	5527
// OP_STOREP_F	821	5527	0
// OP_GOTO	10	0	0
// OP_GE	5108	845	5528
// OP_IFNOT	5528	5	0
// OP_LOAD_ENT	28	548	5529
// OP_ADDRESS	5529	131	5530
// OP_STOREP_F	819	5530	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	548	5531
// OP_ADDRESS	5531	131	5532
// OP_STOREP_F	817	5532	0
// OP_ADDRESS	28	603	5533
// OP_STOREP_F	5109	5533	0
// OP_DIV_F	5131	778	5534
// OP_MUL_F	5534	1182	5535
// OP_ADD_F	5535	819	5536
// OP_MUL_F	775	5536	5537
// OP_STORE_F	5537	5112	0
// OP_LOAD_F	28	604	5538
// OP_IFNOT	5538	9	0
// OP_ADDRESS	28	119	5539
// OP_MUL_F	5108	5540	5541
// OP_ADD_F	5121	5541	5542
// OP_STOREP_F	5542	5539	0
// OP_MUL_F	5108	5540	5543
// OP_STORE_F	5543	5108	0
// OP_MUL_F	5112	5540	5544
// OP_STORE_F	5544	5112	0
// OP_LOAD_S	28	129	5545
// OP_EQ_S	5545	880	5546
// OP_LOAD_F	28	609	5547
// OP_SUB_F	31	3083	5548
// OP_LT	5547	5548	5549
// OP_LOAD_F	28	611	5550
// OP_NE_F	5550	716	5551
// OP_LOAD_F	28	604	5552
// OP_OR	5551	5552	5553
// OP_AND	5549	5553	5554
// OP_AND	5546	5554	5555
// OP_IFNOT	5555	156	0
// OP_GT	5108	817	5556
// OP_IFNOT	5556	77	0
// OP_GT	5108	5112	5557
// OP_LOAD_F	28	604	5558
// OP_OR	5557	5558	5559
// OP_IFNOT	5559	72	0
// OP_GT	5108	5112	5560
// OP_IFNOT	5560	4	0
// OP_ADDRESS	28	119	5561
// OP_SUB_F	5121	5112	5562
// OP_STOREP_F	5562	5561	0
// OP_LOAD_F	28	119	5563
// OP_LT	5563	817	5564
// OP_IFNOT	5564	6	0
// OP_ADDRESS	28	119	5565
// OP_LOAD_F	28	119	5566
// OP_ADD_F	5566	867	5567
// OP_STOREP_F	5567	5565	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	119	5568
// OP_GE	5568	867	5569
// OP_IFNOT	5569	5	0
// OP_ADDRESS	28	119	5570
// OP_LOAD_F	28	119	5571
// OP_SUB_F	5571	867	5572
// OP_STOREP_F	5572	5570	0
// OP_LOAD_F	28	182	5573
// OP_BITAND	5573	228	5574
// OP_LOAD_F	28	661	5575
// OP_SUB_F	31	821	5576
// OP_GT	5575	5576	5577
// OP_LT	5106	4760	5578
// OP_OR	5577	5578	5579
// OP_AND	5574	5579	5580
// OP_IFNOT	5580	43	0
// OP_EQ_F	5109	1228	5581
// OP_STORE_V	5582	4	0
// OP_CALL1	501	0	0
// OP_GT	5106	1	5583
// OP_AND	5581	5583	5584
// OP_IFNOT	5584	4	0
// OP_STORE_V	5582	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	5106	0
// OP_LOAD_V	28	113	5585
// OP_STORE_V	5585	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	544	0
// OP_LOAD_F	28	119	5588
// OP_STORE_F	5588	545	0
// OP_STORE_V	544	4	0
// OP_CALL1	461	0	0
// OP_GT	5106	4760	5589
// OP_IFNOT	5589	19	0
// OP_MUL_VF	59	5109	5590
// OP_MUL_VF	5590	5106	5593
// OP_MUL_VF	5593	817	5596
// OP_LOAD_V	28	113	5599
// OP_ADD_V	5596	5599	5602
// OP_STORE_V	5602	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	544	0
// OP_SUB_F	5108	5112	5605
// OP_DIV_F	5605	2558	5606
// OP_MUL_F	3892	5606	5607
// OP_DIV_F	5106	778	5608
// OP_MUL_F	5607	5608	5609
// OP_MUL_F	5609	32	5610
// OP_SUB_F	5106	5610	5611
// OP_MUL_VF	544	5611	5612
// OP_STORE_V	5612	544	0
// OP_GOTO	4	0	0
// OP_MUL_VF	59	5109	5615
// OP_MUL_VF	5615	5106	5618
// OP_STORE_V	5618	544	0
// OP_ADDRESS	28	113	5621
// OP_STOREP_V	544	5621	0
// OP_GOTO	78	0	0
// OP_MUL_F	1228	5112	5624
// OP_LT	5108	5624	5625
// OP_LOAD_F	28	604	5626
// OP_OR	5625	5626	5627
// OP_IFNOT	5627	73	0
// OP_MUL_F	1228	5112	5628
// OP_LT	5108	5628	5629
// OP_IFNOT	5629	4	0
// OP_ADDRESS	28	119	5630
// OP_ADD_F	5121	5112	5631
// OP_STOREP_F	5631	5630	0
// OP_LOAD_F	28	119	5632
// OP_LT	5632	817	5633
// OP_IFNOT	5633	6	0
// OP_ADDRESS	28	119	5634
// OP_LOAD_F	28	119	5635
// OP_ADD_F	5635	867	5636
// OP_STOREP_F	5636	5634	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	119	5637
// OP_GE	5637	867	5638
// OP_IFNOT	5638	5	0
// OP_ADDRESS	28	119	5639
// OP_LOAD_F	28	119	5640
// OP_SUB_F	5640	867	5641
// OP_STOREP_F	5641	5639	0
// OP_LOAD_F	28	182	5642
// OP_BITAND	5642	228	5643
// OP_LOAD_F	28	661	5644
// OP_SUB_F	31	821	5645
// OP_GT	5644	5645	5646
// OP_LT	5106	4760	5647
// OP_OR	5646	5647	5648
// OP_AND	5643	5648	5649
// OP_IFNOT	5649	43	0
// OP_EQ_F	5109	1228	5650
// OP_STORE_V	5582	4	0
// OP_CALL1	501	0	0
// OP_GT	5106	1	5651
// OP_AND	5650	5651	5652
// OP_IFNOT	5652	4	0
// OP_STORE_V	5582	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	5106	0
// OP_LOAD_V	28	113	5653
// OP_STORE_V	5653	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	544	0
// OP_LOAD_F	28	119	5656
// OP_STORE_F	5656	545	0
// OP_STORE_V	544	4	0
// OP_CALL1	461	0	0
// OP_GT	5106	4760	5657
// OP_IFNOT	5657	19	0
// OP_MUL_VF	59	5109	5658
// OP_MUL_VF	5658	5106	5661
// OP_MUL_VF	5661	817	5664
// OP_LOAD_V	28	113	5667
// OP_ADD_V	5664	5667	5670
// OP_STORE_V	5670	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	544	0
// OP_SUB_F	5112	5108	5673
// OP_DIV_F	5673	2558	5674
// OP_MUL_F	3892	5674	5675
// OP_DIV_F	5106	778	5676
// OP_MUL_F	5675	5676	5677
// OP_MUL_F	5677	32	5678
// OP_SUB_F	5106	5678	5679
// OP_MUL_VF	544	5679	5680
// OP_STORE_V	5680	544	0
// OP_GOTO	4	0	0
// OP_MUL_VF	59	5109	5683
// OP_MUL_VF	5683	5106	5686
// OP_STORE_V	5686	544	0
// OP_ADDRESS	28	113	5689
// OP_STOREP_V	544	5689	0
// OP_ADDRESS	28	116	5692
// OP_STOREP_F	5116	5692	0
// OP_LOAD_V	28	117	5693
// OP_STORE_V	5693	5120	0
// OP_ADDRESS	28	117	5696
// OP_STOREP_V	541	5696	0
// OP_LOAD_F	28	611	5699
// OP_EQ_F	5699	716	5700
// OP_NOT_F	5700	0	5701
// OP_IFNOT	5701	4	0
// OP_ADDRESS	28	559	5702
// OP_LOAD_V	28	117	5705
// OP_STOREP_V	5705	5702	0
// OP_LOAD_F	28	182	5708
// OP_BITAND	5708	228	5709
// OP_IFNOT	5709	95	0
// OP_LOAD_F	28	605	5710
// OP_LOAD_F	28	644	5711
// OP_BITAND	5711	702	5712
// OP_NOT_F	5712	0	5713
// OP_AND	5710	5713	5714
// OP_IFNOT	5714	53	0
// OP_LOAD_V	28	113	5715
// OP_STORE_V	5715	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	544	0
// OP_LOAD_V	28	113	5718
// OP_STORE_V	5718	4	0
// OP_CALL1	471	0	0
// OP_GT	1	1957	5721
// OP_LOAD_V	28	555	5722
// OP_ADD_V	544	5722	5725
// OP_STORE_V	5725	4	0
// OP_CALL1	471	0	0
// OP_GT	1	883	5728
// OP_AND	5721	5728	5729
// OP_IFNOT	5729	10	0
// OP_ADDRESS	28	567	5730
// OP_LOAD_V	28	567	5733
// OP_LOAD_V	28	567	5736
// OP_STORE_V	5736	4	0
// OP_CALL1	468	0	0
// OP_MUL_F	4760	32	5739
// OP_MUL_VF	1	5739	5740
// OP_SUB_V	5733	5740	5743
// OP_STOREP_V	5743	5730	0
// OP_LOAD_ENT	28	548	5746
// OP_LOAD_V	5746	117	5747
// OP_STORE_V	5747	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	113	5750
// OP_LOAD_V	28	567	5753
// OP_MUL_F	4760	32	5756
// OP_MUL_VF	59	5756	5757
// OP_SUB_V	5753	5757	5760
// OP_STOREP_V	5760	5750	0
// OP_LOAD_V	28	555	5763
// OP_ADD_V	544	5763	5766
// OP_STORE_V	5766	4	0
// OP_CALL1	471	0	0
// OP_LT	1	2575	5769
// OP_IFNOT	5769	12	0
// OP_LOAD_V	28	113	5770
// OP_STORE_V	5770	4	0
// OP_CALL1	471	0	0
// OP_GT	1	1135	5773
// OP_IFNOT	5773	7	0
// OP_ADDRESS	28	113	5774
// OP_LOAD_V	28	113	5777
// OP_STORE_V	5777	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	1135	5780
// OP_STOREP_V	5780	5774	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	604	5783
// OP_IFNOT	5783	35	0
// OP_LOAD_V	28	567	5784
// OP_STORE_V	5784	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	544	0
// OP_LOAD_V	28	555	5787
// OP_ADD_V	544	5787	5790
// OP_STORE_V	5790	4	0
// OP_CALL1	471	0	0
// OP_LT	1	1182	5793
// OP_IFNOT	5793	25	0
// OP_LOAD_V	28	567	5794
// OP_STORE_V	5794	4	0
// OP_CALL1	471	0	0
// OP_GT	1	2677	5797
// OP_IFNOT	5797	9	0
// OP_ADDRESS	28	113	5798
// OP_LOAD_V	28	567	5801
// OP_LOAD_V	28	555	5804
// OP_MUL_F	5807	32	5808
// OP_MUL_VF	5804	5808	5809
// OP_ADD_V	5801	5809	5812
// OP_STOREP_V	5812	5798	0
// OP_GOTO	12	0	0
// OP_ADDRESS	28	113	5815
// OP_LOAD_V	28	567	5818
// OP_LOAD_V	28	555	5821
// OP_LOAD_V	28	567	5824
// OP_STORE_V	5824	4	0
// OP_CALL1	471	0	0
// OP_ADD_F	1	1112	5827
// OP_MUL_F	5827	32	5828
// OP_MUL_VF	5821	5828	5829
// OP_ADD_V	5818	5829	5832
// OP_STOREP_V	5832	5815	0
// OP_ADDRESS	28	567	5835
// OP_LOAD_V	28	113	5838
// OP_STOREP_V	5838	5835	0
// OP_LOAD_F	28	182	5841
// OP_BITAND	5841	225	5842
// OP_LOAD_V	28	113	5843
// OP_STORE_V	5843	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	778	821	5846
// OP_GT	1	5846	5847
// OP_AND	5842	5847	5848
// OP_IFNOT	5848	8	0
// OP_ADDRESS	28	113	5849
// OP_LOAD_V	28	113	5852
// OP_STORE_V	5852	4	0
// OP_CALL1	468	0	0
// OP_DIV_F	778	821	5855
// OP_MUL_VF	1	5855	5856
// OP_STOREP_V	5856	5849	0
// OP_ADDRESS	28	621	5859
// OP_LOAD_V	28	113	5862
// OP_STOREP_V	5862	5859	0
// OP_DONE	0	0	0
void () VehiclePreThink = 
{
    local float mspeed;
    local float aspeed;
    local float angle_between;
    local float dir;
    local float veh_heading;
    local float tail_heading;
    local float max_steer;
    local float ftemp;
    local vector old_vel;
    local vector vtemp;
    local vector steer_angle;
    local vector vel_angles;
    local vector back_angles;
    local float damage_accel;
    local float damage_topspeed;
    local float vel_speed;
    local float old_vel_speed;
    local string str;
    vel_speed = vlen(self.velocity);
    self.veh_body.colormap = self.colormap;
    ftemp = vel_speed - vlen(self.back_vel);
    
    if(self.racing_flags & QR_OUT_OF_TIME)
    {
        
        if(self.flags & FL_ONGROUND)
        {
            old_vel_speed = vlen(self.old_velocity);
            vtemp = (normalize(self.old_velocity) * OUT_OF_TIME_SLOWDOWN) * frametime;
            if(vlen(vtemp) < old_vel_speed)
            {
                self.velocity = self.old_velocity - vtemp;
            }
            else
            {
                self.velocity = '0.000 0.000 0.000';
            }
            
        }
        
        
        if(vel_speed < 10)
        {
            DestroyVehicle();
        }
        
    }
    
    if(self.zoomin)
    {
        self.chasecam_zoom = self.chasecam_zoom - (ZOOM_SPEED * frametime);
        
        if(self.chasecam_zoom < 5)
        {
            self.chasecam_zoom = 5;
        }
        
    }
    else
    {
        
        if(self.zoomout)
        {
            self.chasecam_zoom = self.chasecam_zoom + (ZOOM_SPEED * frametime);
            
            if(self.chasecam_zoom > 200)
            {
                self.chasecam_zoom = 200;
            }
            
        }
        
    }
    
    
    if(self.cam == CAM_TEST)
    {
        calc_steering_controls();
    }
    
    
    if(pointcontents(self.origin) == CONTENT_LAVA)
    {
        DestroyVehicle();
        return;
    }
    
    checkHealth();
    
    if(self.veh_body.effects & EF_DIMLIGHT)
    {
        
        if(self.last_crash < (time - 0.5))
        {
            self.veh_body.effects = self.veh_body.effects - EF_DIMLIGHT;
        }
        
    }
    
    
    if((self.misc_flags & MISC_HORN_ON) && (self.horn_time < (time - SNDLEN_HORN)))
    {
        if(self.car_index < 3)
        {
            sound(self, CHAN_AUTO, "rally/meepmeep.wav", 1, ATTN_STATIC);
        }
        else
        {
            sound(self, CHAN_AUTO, "rally/nexus/horn.wav", 1, ATTN_STATIC);
        }
        
        self.horn_time = time;
    }
    
    makevectors(self.veh_body.angles);
    
    if(self.mine_attached != world)
    {
        
        if(0 < 0.1)
        {
            remove(self.mine_attached);
            sprint(self, "Detonator removed\n");
            self.mine_attached = world;
        }
        
    }
    
    
    if(self.flags & FL_ONGROUND)
    {
        if(0 < 0.1)
        {
            self.use_surface_angle = FALSE;
            aspeed = self.velocity_z;
            mspeed = vlen(self.old_velocity);
            self.velocity = normalize(self.origin - self.oldorigin);
            if(mspeed > 10)
            {
                self.velocity = self.velocity * (mspeed * 0.8);
            }
            else
            {
                self.velocity = '0.000 0.000 0.000';
                DestroyVehicle();
            }
            
        }
        else
        {
            if(0 > 0.5)
            {
                
                if(!self.use_surface_angle)
                {
                    sound(self, CHAN_AUTO, "demon/dland2.wav", 0.5, ATTN_STATIC);
                }
                
                self.use_surface_angle = TRUE;
                self.veh_body.angles_z = 0;
            }
            else
            {
                if(self.veh_body.roll_velocity_z > 0)
                {
                    self.veh_body.roll_velocity_z = 20;
                }
                else
                {
                    self.veh_body.roll_velocity_z = -20;
                }
                
                self.flags = self.flags - FL_ONGROUND;
                self.last_flags = self.last_flags - (self.last_flags & FL_ONGROUND);
                self.velocity = self.velocity + '0.000 0.000 50.000';
            }
            
        }
        
    }
    
    
    if(self.flags & FL_ONGROUND)
    {
        vtemp = vectoangles(self.veh_tail.veh_dir);
    }
    
    tail_heading = anglemod(0);
    vtemp = vectoangles(self.veh_dir);
    veh_heading = anglemod(0);
    angle_between = angle_diff(veh_heading, tail_heading);
    angle_between = fabs(angle_between);
    mspeed = vlen(self.velocity);
    
    if(vlen(self.velocity) > self.last_speed)
    {
        damage_accel = 1 + ((1 - (mspeed / MAX_SPEED)) * 2);
        damage_topspeed = MAX_SPEED * damage_accel;
        if((self.origin_z - self.oldorigin_z) <= 0)
        {
            aspeed = self.last_speed + ((((mspeed - self.last_speed) * VEH_ACCEL_SLOWDOWN) * ((self.cam == CAM_INCAR) + 1)) * damage_accel);
        }
        else
        {
            aspeed = vlen(self.velocity);
        }
        
        
        if(aspeed > damage_topspeed)
        {
            aspeed = damage_topspeed;
        }
        
        self.velocity = normalize(self.velocity) * aspeed;
        
        if((((((mspeed < (MAX_SPEED / 2)) && (self.last_slide < (time - SNDLEN_SLIDE))) && (self.last_speed < mspeed)) && (vel_speed > 100)) && !hold_flag) && !self.reversing)
        {
            if(self.current_surface == SURF_MUD)
            {
                sound(self, CHAN_AUTO, "rally/skidmud.wav", 0.8, ATTN_STATIC);
            }
            else
            {
                sound(self, CHAN_AUTO, "rally/ray/screech4.wav", 0.8, ATTN_STATIC);
            }
            
            self.last_slide = time;
        }
        
    }
    
    vel_speed = vlen(self.velocity);
    
    if(((deathmatch != 10) && self.waterlevel) && (vel_speed > (MAX_SPEED / 3)))
    {
        makevectors(self.veh_body.angles);
        ftemp = 37 + (random() * 6);
        particle(self.origin + (v_right * 12), ((v_up + v_right) * 100) + (self.velocity * 0.75), ftemp, (vel_speed / MAX_SPEED) * 80);
        ftemp = 36 + (random() * 6);
        particle(self.origin - (v_right * 12), ((v_up - v_right) * 100) + (self.velocity * 0.75), ftemp, (vel_speed / MAX_SPEED) * 80);
    }
    
    if((((vel_speed == 0) && !self.reversing) && (self.cam != CAM_INCAR)) && (self.cam != CAM_TEST))
    {
        vtemp = vectoangles(self.veh_dir);
        ftemp = angle_diff(0, self.angles_y);
        if(fabs(ftemp) < 180)
        {
            if(ftemp > 0)
            {
                dir = 25;
            }
            else
            {
                dir = -25;
            }
            
        }
        else
        {
            dir = 0;
        }
        
        vtemp_y = anglemod(0 + dir);
        makevectors(vtemp);
        self.veh_tail.veh_dir = v_forward;
    }
    else
    {
        
        if(vlen(self.lastmove) < 1)
        {
            self.veh_tail.veh_dir = self.veh_dir;
        }
        
    }
    
    if(self.cam == CAM_TEST)
    {
        checkSteering();
    }
    else
    {
        old_vel = self.velocity;
        plyr_angles = self.angles;
        steer_angle = vectoangles(self.veh_dir);
        self.angles_y = anglemod(self.angles_y);
        angle_between = angle_diff(0, self.angles_y);
        mspeed = vlen(self.velocity);
    }
    
    if(self.reversing)
    {
        dir = -1;
    }
    else
    {
        dir = 1;
    }
    
    if(self.fwhl != world)
    {
        self = self.fwhl;
    }
    else
    {
        self = self.veh_body;
    }
    
    if((fabs(angle_between) < 10) || self.reversing)
    {
        
        if(!deathmatch)
        {
            rally_centre();
        }
        
        if(angle_between >= 5)
        {
            SteerChange(7);
        }
        else
        {
            if(angle_between <= -5)
            {
                SteerChange(9);
            }
            else
            {
                SteerChange(8);
            }
            
        }
        
    }
    else
    {
        if(angle_between > 0)
        {
            if(angle_between >= 40)
            {
                
                if(!deathmatch)
                {
                    rally_right30();
                }
                
                SteerChange(0);
            }
            else
            {
                if(angle_between >= 30)
                {
                    
                    if(!deathmatch)
                    {
                        rally_right30();
                    }
                    
                    if(angle_between >= 35)
                    {
                        SteerChange(1);
                    }
                    else
                    {
                        SteerChange(2);
                    }
                    
                }
                else
                {
                    if(angle_between >= 20)
                    {
                        
                        if(!deathmatch)
                        {
                            rally_right20();
                        }
                        
                        if(angle_between >= 25)
                        {
                            SteerChange(3);
                        }
                        else
                        {
                            SteerChange(4);
                        }
                        
                    }
                    else
                    {
                        
                        if(!deathmatch)
                        {
                            rally_right10();
                        }
                        
                        if(angle_between >= 15)
                        {
                            SteerChange(5);
                        }
                        else
                        {
                            SteerChange(6);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(angle_between <= -40)
            {
                
                if(!deathmatch)
                {
                    rally_left30();
                }
                
                SteerChange(16);
            }
            else
            {
                if(angle_between <= -30)
                {
                    
                    if(!deathmatch)
                    {
                        rally_left30();
                    }
                    
                    if(angle_between <= -35)
                    {
                        SteerChange(15);
                    }
                    else
                    {
                        SteerChange(14);
                    }
                    
                }
                else
                {
                    if(angle_between <= -20)
                    {
                        
                        if(!deathmatch)
                        {
                            rally_left20();
                        }
                        
                        if(angle_between <= -25)
                        {
                            SteerChange(13);
                        }
                        else
                        {
                            SteerChange(12);
                        }
                        
                    }
                    else
                    {
                        
                        if(!deathmatch)
                        {
                            rally_left10();
                        }
                        
                        if(angle_between <= -15)
                        {
                            SteerChange(11);
                        }
                        else
                        {
                            SteerChange(10);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self = self.owner;
    
    if(deathmatch)
    {
        if(angle_between <= -30)
        {
            self.veh_body.frame = 4;
        }
        else
        {
            if(angle_between <= -15)
            {
                self.veh_body.frame = 3;
            }
            else
            {
                if(angle_between >= 30)
                {
                    self.veh_body.frame = 2;
                }
                else
                {
                    if(angle_between >= 15)
                    {
                        self.veh_body.frame = 1;
                    }
                    else
                    {
                        self.veh_body.frame = 0;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self.old_dir = dir;
    max_steer = VEH_MAX_STEER * (((vel_speed / MAX_SPEED) * 0.5) + 1);
    
    if(self.reversing)
    {
        self.angles_y = 0 + (angle_between * 0.25);
        angle_between = angle_between * 0.25;
        max_steer = max_steer * 0.25;
    }
    
    
    if((self.classname == "player") && ((self.reverse_release < (time - 0.75)) && ((self.cam != CAM_TEST) || self.reversing)))
    {
        if(angle_between > 0)
        {
            
            if((angle_between > max_steer) || self.reversing)
            {
                
                if(angle_between > max_steer)
                {
                    self.angles_y = 0 - max_steer;
                }
                
                if(self.angles_y < 0)
                {
                    self.angles_y = self.angles_y + 360;
                }
                else
                {
                    
                    if(self.angles_y >= 360)
                    {
                        self.angles_y = self.angles_y - 360;
                    }
                    
                }
                
                
                if((self.flags & FL_ONGROUND) && ((self.last_land > (time - 2)) || (mspeed < 200)))
                {
                    
                    if((dir == -1) && (mspeed > cvar("cl_backspeed")))
                    {
                        mspeed = cvar("cl_backspeed");
                    }
                    
                    plyr_velocity = vectoangles(self.velocity);
                    plyr_velocity_y = self.angles_y;
                    makevectors(plyr_velocity);
                    if(mspeed > 200)
                    {
                        plyr_velocity = normalize((((v_forward * dir) * mspeed) * 0) + self.velocity);
                        plyr_velocity = plyr_velocity * (mspeed - (((750 * ((angle_between - max_steer) / 45)) * (mspeed / MAX_SPEED)) * frametime));
                    }
                    else
                    {
                        plyr_velocity = (v_forward * dir) * mspeed;
                    }
                    
                    self.velocity = plyr_velocity;
                }
                
            }
            
        }
        else
        {
            
            if((angle_between < (-1 * max_steer)) || self.reversing)
            {
                
                if(angle_between < (-1 * max_steer))
                {
                    self.angles_y = 0 + max_steer;
                }
                
                if(self.angles_y < 0)
                {
                    self.angles_y = self.angles_y + 360;
                }
                else
                {
                    
                    if(self.angles_y >= 360)
                    {
                        self.angles_y = self.angles_y - 360;
                    }
                    
                }
                
                
                if((self.flags & FL_ONGROUND) && ((self.last_land > (time - 2)) || (mspeed < 200)))
                {
                    
                    if((dir == -1) && (mspeed > cvar("cl_backspeed")))
                    {
                        mspeed = cvar("cl_backspeed");
                    }
                    
                    plyr_velocity = vectoangles(self.velocity);
                    plyr_velocity_y = self.angles_y;
                    makevectors(plyr_velocity);
                    if(mspeed > 200)
                    {
                        plyr_velocity = normalize((((v_forward * dir) * mspeed) * 0) + self.velocity);
                        plyr_velocity = plyr_velocity * (mspeed - (((750 * ((max_steer - angle_between) / 45)) * (mspeed / MAX_SPEED)) * frametime));
                    }
                    else
                    {
                        plyr_velocity = (v_forward * dir) * mspeed;
                    }
                    
                    self.velocity = plyr_velocity;
                }
                
            }
            
        }
        
    }
    
    self.velocity_z = 0;
    steer_angle = self.angles;
    self.angles = plyr_angles;
    
    if(!(self.cam == CAM_TEST))
    {
        self.steer_angles = self.angles;
    }
    
    
    if(self.flags & FL_ONGROUND)
    {
        if(self.reversekey && (!(self.racing_flags & QR_OUT_OF_TIME)))
        {
            plyr_velocity = normalize(self.velocity);
            
            if((vlen(self.velocity) > 100) && ((vlen(plyr_velocity + self.veh_dir)) > 1.5))
            {
                self.old_velocity = self.old_velocity - (normalize(self.old_velocity) * (200 * frametime));
            }
            
            makevectors(self.veh_body.angles);
            self.velocity = self.old_velocity - (v_forward * (200 * frametime));
            
            if((vlen(plyr_velocity + self.veh_dir)) < 0.3)
            {
                
                if(vlen(self.velocity) > 250)
                {
                    self.velocity = normalize(self.velocity) * 250;
                }
                
            }
            
        }
        else
        {
            
            if(self.reversing)
            {
                plyr_velocity = normalize(self.old_velocity);
                
                if((vlen(plyr_velocity + self.veh_dir)) < 0.5)
                {
                    if(vlen(self.old_velocity) > 80)
                    {
                        self.velocity = self.old_velocity + (self.veh_dir * (120 * frametime));
                    }
                    else
                    {
                        self.velocity = self.old_velocity + (self.veh_dir * ((vlen(self.old_velocity) + 20) * frametime));
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self.old_velocity = self.velocity;
    
    if((self.flags & FL_GODMODE) && (vlen(self.velocity) > (MAX_SPEED / 2)))
    {
        self.velocity = normalize(self.velocity) * (MAX_SPEED / 2);
    }
    
    self.last_velocity = self.velocity;
};

// DestroyVehicleParts
// function begins at statement 6421, parm_start=5866
// OP_LOAD_ENT	28	547	5866
// OP_NE_E	5866	30	5867
// OP_IFNOT	5867	4	0
// OP_LOAD_ENT	28	547	5868
// OP_STORE_V	5868	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	548	5869
// OP_NE_E	5869	30	5870
// OP_IFNOT	5870	4	0
// OP_LOAD_ENT	28	548	5871
// OP_STORE_V	5871	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	549	5872
// OP_NE_E	5872	30	5873
// OP_IFNOT	5873	4	0
// OP_LOAD_ENT	28	549	5874
// OP_STORE_V	5874	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	550	5875
// OP_NE_E	5875	30	5876
// OP_IFNOT	5876	4	0
// OP_LOAD_ENT	28	550	5877
// OP_STORE_V	5877	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	552	5878
// OP_NE_E	5878	30	5879
// OP_IFNOT	5879	4	0
// OP_LOAD_ENT	28	552	5880
// OP_STORE_V	5880	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	551	5881
// OP_NE_E	5881	30	5882
// OP_IFNOT	5882	4	0
// OP_LOAD_ENT	28	551	5883
// OP_STORE_V	5883	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	553	5884
// OP_NE_E	5884	30	5885
// OP_IFNOT	5885	4	0
// OP_LOAD_ENT	28	553	5886
// OP_STORE_V	5886	4	0
// OP_CALL1	474	0	0
// OP_LOAD_ENT	28	554	5887
// OP_NE_E	5887	30	5888
// OP_IFNOT	5888	4	0
// OP_LOAD_ENT	28	554	5889
// OP_STORE_V	5889	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () DestroyVehicleParts = 
{
    
    if(self.veh_tail != world)
    {
        remove(self.veh_tail);
    }
    
    
    if(self.veh_body != world)
    {
        remove(self.veh_body);
    }
    
    
    if(self.fwhl != world)
    {
        remove(self.fwhl);
    }
    
    
    if(self.rwhl != world)
    {
        remove(self.rwhl);
    }
    
    
    if(self.hl_r != world)
    {
        remove(self.hl_r);
    }
    
    
    if(self.hl_l != world)
    {
        remove(self.hl_l);
    }
    
    
    if(self.hl_m != world)
    {
        remove(self.hl_m);
    }
    
    
    if(self.gun != world)
    {
        remove(self.gun);
    }
    
};

// CheckDriverReady
// function begins at statement 6470, parm_start=5891
// OP_NOT_F	719	0	5892
// OP_IFNOT	5892	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	644	5893
// OP_BITAND	5893	692	5894
// OP_IFNOT	5894	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	644	5895
// OP_LOAD_F	28	644	5896
// OP_BITOR	5896	692	5897
// OP_STOREP_F	5897	5895	0
// OP_EQ_F	725	817	5898
// OP_IFNOT	5898	2	0
// OP_STORE_F	31	725	0
// OP_LOAD_F	28	628	5899
// OP_EQ_F	5899	823	5900
// OP_IFNOT	5900	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5901	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	628	5902
// OP_EQ_F	5902	825	5903
// OP_IFNOT	5903	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5904	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	628	5905
// OP_EQ_F	5905	825	5906
// OP_IFNOT	5906	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5907	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	665	5908
// OP_STOREP_F	31	5908	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5891	0
// OP_NE_E	5891	30	5909
// OP_IFNOT	5909	19	0
// OP_LOAD_F	5891	644	5910
// OP_BITAND	5910	692	5911
// OP_NOT_F	5911	0	5912
// OP_LOAD_F	5891	644	5913
// OP_BITAND	5913	698	5914
// OP_NOT_F	5914	0	5915
// OP_AND	5912	5915	5916
// OP_LOAD_F	5891	165	5917
// OP_NOT_F	5917	0	5918
// OP_AND	5916	5918	5919
// OP_IFNOT	5919	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	5891	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5891	0
// OP_GOTO	-19	0	0
// OP_ADDRESS	720	644	5920
// OP_LOAD_F	720	644	5921
// OP_LOAD_F	720	644	5922
// OP_BITAND	5922	690	5923
// OP_SUB_F	5921	5923	5924
// OP_STOREP_F	5924	5920	0
// OP_ADDRESS	720	640	5925
// OP_STOREP_F	823	5925	0
// OP_DONE	0	0	0
void () CheckDriverReady = 
{
    local entity plyr;
    
    if(!hold_flag)
    {
        return;
    }
    
    
    if(self.racing_flags & QR_START_READY)
    {
        return;
    }
    
    self.racing_flags = self.racing_flags | QR_START_READY;
    
    if(first_engine_start == 0)
    {
        first_engine_start = time;
    }
    
    if(self.car_index == 3)
    {
        sound(self, CHAN_AUTO, "rally/ray/engstart.wav", 1, ATTN_STATIC);
    }
    else
    {
        if(self.car_index == 4)
        {
            sound(self, CHAN_AUTO, "rally/start2.wav", 1, ATTN_STATIC);
        }
        else
        {
            
            if(self.car_index == 4)
            {
                sound(self, CHAN_AUTO, "rally/start.wav", 1, ATTN_STATIC);
            }
            
        }
        
    }
    
    self.ignition_time = time;
    plyr = find(world, classname, "player");
    
    while(plyr != world)
    {
        
        if(((!(plyr.racing_flags & QR_START_READY)) && (!(plyr.racing_flags & QR_OBSERVER))) && !plyr.deadflag)
        {
            return;
        }
        
        plyr = find(plyr, classname, "player");
    }
    
    starter.racing_flags = starter.racing_flags - (starter.racing_flags & QR_NOT_RACING);
    starter.last_lap = 3;
};

// NullModel
// function begins at statement 6549, parm_start=5927
// OP_STORE_V	28	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_DONE	0	0	0
void () NullModel = 
{
    setmodel(self, "");
};

void () BuildPlayerList;
// PreRaceMsg
// function begins at statement 6553, parm_start=5929
// OP_LOAD_F	28	644	5932
// OP_BITAND	5932	690	5933
// OP_IFNOT	5933	75	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_NE_E	5929	30	5934
// OP_IFNOT	5934	64	0
// OP_LOAD_F	5929	644	5935
// OP_BITAND	5935	692	5936
// OP_NOT_F	5936	0	5937
// OP_LOAD_F	5929	644	5938
// OP_BITAND	5938	698	5939
// OP_NOT_F	5939	0	5940
// OP_AND	5937	5940	5941
// OP_IFNOT	5941	47	0
// OP_IFNOT	725	20	0
// OP_SUB_F	31	2522	5942
// OP_LT	725	5942	5943
// OP_IFNOT	5943	6	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5944	7	0
// OP_CALL2	483	0	0
// OP_CALL0	539	0	0
// OP_GOTO	11	0	0
// OP_SUB_F	31	1112	5945
// OP_LT	725	5945	5946
// OP_IFNOT	5946	5	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5947	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5948	7	0
// OP_CALL2	520	0	0
// OP_GOTO	26	0	0
// OP_IFNOT	689	22	0
// OP_LOAD_S	30	130	5949
// OP_EQ_S	5949	5950	5951
// OP_IFNOT	5951	5	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5952	7	0
// OP_CALL2	520	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	30	130	5953
// OP_EQ_S	5953	1946	5954
// OP_IFNOT	5954	5	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5955	7	0
// OP_CALL2	520	0	0
// OP_GOTO	7	0	0
// OP_LOAD_S	30	130	5956
// OP_EQ_S	5956	5957	5958
// OP_IFNOT	5958	4	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5959	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5948	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5960	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_GOTO	-64	0	0
// OP_ADDRESS	28	150	5961
// OP_ADD_F	31	819	5962
// OP_STOREP_F	5962	5961	0
// OP_GOTO	111	0	0
// OP_LOAD_F	28	640	5963
// OP_EQ_F	5963	817	5964
// OP_IFNOT	5964	60	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_NE_E	5929	30	5965
// OP_IFNOT	5965	35	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5966	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	5967	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5968	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	5929	641	5969
// OP_STOREP_F	31	5969	0
// OP_ADDRESS	5929	677	5970
// OP_STOREP_F	794	5970	0
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_GE	1	823	5971
// OP_IFNOT	5971	7	0
// OP_ADDRESS	5929	677	5972
// OP_LOAD_F	5929	677	5973
// OP_MUL_F	5973	5974	5975
// OP_STORE_V	5975	4	0
// OP_CALL1	495	0	0
// OP_STOREP_F	1	5972	0
// OP_ADDRESS	5929	113	5976
// OP_STOREP_V	926	5976	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_GOTO	-35	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5979	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5930	0
// OP_NE_E	1	30	5980
// OP_IFNOT	5980	8	0
// OP_ADDRESS	5930	132	5981
// OP_STOREP_F	821	5981	0
// OP_ADDRESS	5930	148	5982
// OP_STOREP_FNC	5926	5982	0
// OP_ADDRESS	5930	150	5983
// OP_ADD_F	31	823	5984
// OP_STOREP_F	5984	5983	0
// OP_STORE_F	31	727	0
// OP_CALL0	5927	0	0
// OP_STORE_F	817	719	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	640	5985
// OP_STORE_V	5985	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	5931	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_NE_E	5929	30	5986
// OP_IFNOT	5986	13	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	5931	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	4910	7	0
// OP_CALL2	876	0	0
// OP_STORE_V	5929	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5929	0
// OP_GOTO	-13	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5979	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	5930	0
// OP_NE_E	1	30	5987
// OP_IFNOT	5987	12	0
// OP_LOAD_F	28	640	5988
// OP_EQ_F	5988	821	5989
// OP_IFNOT	5989	4	0
// OP_ADDRESS	5930	132	5990
// OP_STOREP_F	817	5990	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	640	5991
// OP_EQ_F	5991	819	5992
// OP_IFNOT	5992	3	0
// OP_ADDRESS	5930	132	5993
// OP_STOREP_F	819	5993	0
// OP_ADDRESS	28	150	5994
// OP_ADD_F	31	819	5995
// OP_STOREP_F	5995	5994	0
// OP_ADDRESS	28	640	5996
// OP_LOAD_F	28	640	5997
// OP_SUB_F	5997	819	5998
// OP_STOREP_F	5998	5996	0
// OP_DONE	0	0	0
void () PreRaceMsg = 
{
    local entity plyr;
    local entity startent;
    local string secs;
    if(self.racing_flags & QR_NOT_RACING)
    {
        plyr = find(world, classname, "player");
        
        while(plyr != world)
        {
            if((!(plyr.racing_flags & QR_START_READY)) && (!(plyr.racing_flags & QR_OBSERVER)))
            {
                if(first_engine_start)
                {
                    if(first_engine_start < (time - 30))
                    {
                        sprint(plyr, "Automatic engine start\n");
                        W_Attack();
                    }
                    else
                    {
                        if(first_engine_start < (time - 20))
                        {
                            centerprint(plyr, "You now have less than 10 seconds\nto start your engine!");
                        }
                        else
                        {
                            centerprint(plyr, "Press FIRE when all players\nare ready!\n");
                        }
                        
                    }
                    
                }
                else
                {
                    if(challenge)
                    {
                        if(world.model == "maps/qrally01.bsp")
                        {
                            centerprint(plyr, "Stage One: Time Trial stage\n\nFinish the race before your\ncar explodes. Flags give an\nextra 6 seconds when touched,\nin sequence.\n\nPress FIRE when ready!\n");
                        }
                        else
                        {
                            if(world.model == "maps/qrally02.bsp")
                            {
                                centerprint(plyr, "Stage Two: Time Trial stage\n\nYou have advanced to the\nsecond round.\nSame deal, try and stay alive.\n\nPress FIRE when ready!\n");
                            }
                            else
                            {
                                
                                if(world.model == "maps/qrally03.bsp")
                                {
                                    centerprint(plyr, "Stage Three: Time Trial stage\n\nFinal elimination, time is short, watch\nout for dangerous obstructions.\n\nPress FIRE when ready!\n");
                                }
                                
                            }
                            
                        }
                        
                    }
                    else
                    {
                        centerprint(plyr, "Press FIRE when all players\nare ready!\n");
                    }
                    
                }
                
            }
            else
            {
                centerprint(plyr, "Waiting for other drivers\n");
            }
            
            plyr = find(plyr, classname, "player");
        }
        
        self.nextthink = time + 1;
    }
    else
    {
        
        if(self.last_lap == 0)
        {
            plyr = find(world, classname, "player");
            
            while(plyr != world)
            {
                centerprint(plyr, "GO!");
                sound(plyr, CHAN_ITEM, "rally/voice/gotst01.wav", 1, ATTN_STATIC);
                commentary(plyr, "voice/gotst01.wav");
                plyr.last_lap_time = time;
                plyr.time_remaining = TIMETRIAL_STARTTIME;
                
                if(cvar("skill") >= 3)
                {
                    plyr.time_remaining = floor(plyr.time_remaining * 0.65);
                }
                
                plyr.velocity = '0.000 0.000 0.000';
                plyr = find(plyr, classname, "player");
            }
            
            startent = find(world, classname, "rally_starter");
            
            if(find(world, classname, "rally_starter") != world)
            {
                startent.skin = 2;
                startent.think = NullModel;
                startent.nextthink = time + 3;
            }
            
            race_start_time = time;
            BuildPlayerList();
            hold_flag = 0;
            return;
        }
        
        secs = ftos(self.last_lap);
        plyr = find(world, classname, "player");
        
        while(plyr != world)
        {
            centerprint(plyr, secs);
            commentary(plyr, "voice/tone05.wav");
            plyr = find(plyr, classname, "player");
        }
        
        startent = find(world, classname, "rally_starter");
        
        if(find(world, classname, "rally_starter") != world)
        {
            if(self.last_lap == 2)
            {
                startent.skin = 0;
            }
            else
            {
                
                if(self.last_lap == 1)
                {
                    startent.skin = 1;
                }
                
            }
            
        }
        
        self.nextthink = time + 1;
        self.last_lap = self.last_lap - 1;
    }
    
};

// CheckFirstStartFinish
// function begins at statement 6741, parm_start=6000
// OP_IFNOT	724	20	0
// OP_LT	738	823	6000
// OP_IFNOT	6000	13	0
// OP_STORE_F	819	719	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	720	0
// OP_ADDRESS	720	129	6001
// OP_STOREP_S	6002	6001	0
// OP_ADDRESS	720	644	6003
// OP_STOREP_F	690	6003	0
// OP_ADDRESS	720	150	6004
// OP_ADD_F	31	1182	6005
// OP_STOREP_F	6005	6004	0
// OP_ADDRESS	720	148	6006
// OP_STOREP_FNC	5928	6006	0
// OP_BITAND	723	696	6007
// OP_SUB_F	723	6007	6008
// OP_STORE_F	6008	723	0
// OP_STORE_F	6009	722	0
// OP_STORE_F	817	724	0
// OP_DONE	0	0	0
void () CheckFirstStartFinish = 
{
    
    if(first_startfinish_flag)
    {
        
        if(rally_type_index < 3)
        {
            hold_flag = 1;
            starter = spawn();
            starter.classname = "race_starter";
            starter.racing_flags = QR_NOT_RACING;
            starter.nextthink = time + 0.5;
            starter.think = PreRaceMsg;
        }
        
        global_racing_flags = global_racing_flags - (global_racing_flags & QR_NO_STARTFINISH);
        all_fastest_lap = 9999999;
        first_startfinish_flag = 0;
    }
    
};

// finish_think
// function begins at statement 6762, parm_start=6011
// OP_ADDRESS	28	131	6011
// OP_LOAD_F	28	131	6012
// OP_ADD_F	6012	819	6013
// OP_STOREP_F	6013	6011	0
// OP_LOAD_F	28	131	6014
// OP_GT	6014	831	6015
// OP_IFNOT	6015	3	0
// OP_ADDRESS	28	131	6016
// OP_STOREP_F	817	6016	0
// OP_ADDRESS	28	150	6017
// OP_ADD_F	31	1988	6018
// OP_STOREP_F	6018	6017	0
// OP_DONE	0	0	0
void () finish_think = 
{
    self.frame = self.frame + 1;
    
    if(self.frame > 11)
    {
        self.frame = 0;
    }
    
    self.nextthink = time + 0.05;
};

// spawn_finish_model
// function begins at statement 6775, parm_start=6020
// OP_GT	738	821	6022
// OP_IFNOT	6022	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	6023	10	0
// OP_CALL3	477	0	0
// OP_NE_E	1	30	6024
// OP_IFNOT	6024	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	6020	0
// OP_ADDRESS	6020	129	6025
// OP_STOREP_S	6023	6025	0
// OP_ADDRESS	6020	166	6026
// OP_STOREP_V	6029	6026	0
// OP_STORE_V	6020	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	6020	4	0
// OP_STORE_V	6032	7	0
// OP_CALL2	463	0	0
// OP_LOAD_V	28	117	6033
// OP_STORE_V	6033	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	6020	4	0
// OP_LOAD_V	28	105	6036
// OP_STORE_V	6036	7	0
// OP_CALL2	462	0	0
// OP_LOAD_V	6020	105	6039
// OP_STORE_V	6039	4	0
// OP_LOAD_V	6020	105	6042
// OP_SUB_V	6042	2284	6045
// OP_STORE_V	6045	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	6020	13	0
// OP_CALL4	475	0	0
// OP_STORE_V	6020	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	6020	119	6048
// OP_LOAD_F	28	119	6049
// OP_STOREP_F	6049	6048	0
// OP_ADDRESS	6020	148	6050
// OP_STOREP_FNC	6010	6050	0
// OP_ADDRESS	6020	150	6051
// OP_ADD_F	31	2869	6052
// OP_STOREP_F	6052	6051	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () spawn_finish_model = 
{
    local entity flag;
    local entity oself;
    
    if(rally_type_index > 2)
    {
        return;
    }
    
    
    if(find(world, classname, "rally_flag") != world)
    {
        return;
    }
    
    flag = spawn();
    flag.classname = "rally_flag";
    flag.view_ofs = '0.000 0.000 7.000';
    setsize(flag, VEH_MIN, VEH_MAX);
    setmodel(flag, "models/finish.mdl");
    makevectors(self.angles);
    setorigin(flag, self.origin);
    traceline(flag.origin, flag.origin - '0.000 0.000 64.000', TRUE, flag);
    setorigin(flag, trace_endpos);
    flag.angles_y = self.angles_y;
    flag.think = finish_think;
    flag.nextthink = time + 0.1;
    remove(self);
};

void () StartRallyItem;
void () startfinish_touch;
// rally_startfinish
// function begins at statement 6827, parm_start=6056
// OP_STORE_F	724	6062	0
// OP_CALL0	5999	0	0
// OP_LOAD_F	28	378	6064
// OP_EQ_F	6064	817	6065
// OP_IFNOT	6065	3	0
// OP_ADDRESS	28	378	6066
// OP_STOREP_F	6067	6066	0
// OP_LOAD_F	28	378	6071
// OP_MUL_VF	6068	6071	6072
// OP_STORE_V	6072	6056	0
// OP_STORE_F	6075	6058	0
// OP_LOAD_F	28	378	6079
// OP_MUL_VF	6076	6079	6080
// OP_STORE_V	6080	6059	0
// OP_STORE_F	2670	6061	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6056	7	0
// OP_STORE_V	6059	10	0
// OP_CALL3	464	0	0
// OP_IFNOT	6062	14	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	6063	0
// OP_ADDRESS	6063	105	6083
// OP_LOAD_V	28	105	6086
// OP_STOREP_V	6086	6083	0
// OP_ADDRESS	6063	117	6089
// OP_LOAD_V	28	117	6092
// OP_STOREP_V	6092	6089	0
// OP_ADDRESS	6063	150	6095
// OP_ADD_F	31	1182	6096
// OP_STOREP_F	6096	6095	0
// OP_ADDRESS	6063	148	6097
// OP_STOREP_FNC	6019	6097	0
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_LE	1	819	6098
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	6099
// OP_AND	6098	6099	6100
// OP_IFNOT	6100	8	0
// OP_ADDRESS	28	159	6101
// OP_LOAD_F	28	159	6102
// OP_MUL_F	6102	3083	6103
// OP_STORE_V	6103	4	0
// OP_CALL1	495	0	0
// OP_STOREP_F	1	6101	0
// OP_GOTO	9	0	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_IFNOT	1	6	0
// OP_ADDRESS	28	159	6104
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_MUL_F	1	821	6105
// OP_STOREP_F	6105	6104	0
// OP_ADDRESS	28	146	6106
// OP_STOREP_FNC	6054	6106	0
// OP_CALL0	6053	0	0
// OP_DONE	0	0	0
void () rally_startfinish = 
{
    local vector min;
    local vector max;
    local float first;
    local entity place_flag;
    first = first_startfinish_flag;
    CheckFirstStartFinish();
    
    if(self.speed == 0)
    {
        self.speed = 128;
    }
    
    min = '-1.000 -1.000 0.000' * self.speed;
    min_z = -24;
    max = '1.000 1.000 0.000' * self.speed;
    max_z = 16;
    setsize(self, min, max);
    
    if(first)
    {
        place_flag = spawn();
        place_flag.origin = self.origin;
        place_flag.angles = self.angles;
        place_flag.nextthink = time + 0.5;
        place_flag.think = spawn_finish_model;
    }
    
    if((cvar("skill") <= 1) && !cvar("deathmatch"))
    {
        self.ammo_nails = floor(self.ammo_nails * 0.75);
    }
    else
    {
        
        if(cvar("deathmatch"))
        {
            self.ammo_nails = cvar("skill") * 2;
        }
        
    }
    
    self.touch = startfinish_touch;
    StartRallyItem();
};

// rally_startfinish_brush
// function begins at statement 6887, parm_start=6108
// OP_CALL0	5999	0	0
// OP_ADDRESS	28	146	6108
// OP_STOREP_FNC	6054	6108	0
// OP_ADDRESS	28	104	6109
// OP_STOREP_F	244	6109	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6110
// OP_STORE_V	6110	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	6111
// OP_STOREP_F	233	6111	0
// OP_ADDRESS	28	93	6112
// OP_STOREP_F	817	6112	0
// OP_ADDRESS	28	130	6113
// OP_STOREP_S	4128	6113	0
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_LE	1	819	6114
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	6115
// OP_AND	6114	6115	6116
// OP_IFNOT	6116	8	0
// OP_ADDRESS	28	159	6117
// OP_LOAD_F	28	159	6118
// OP_MUL_F	6118	3083	6119
// OP_STORE_V	6119	4	0
// OP_CALL1	495	0	0
// OP_STOREP_F	1	6117	0
// OP_GOTO	9	0	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_IFNOT	1	6	0
// OP_ADDRESS	28	159	6120
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_MUL_F	1	821	6121
// OP_STOREP_F	6121	6120	0
// OP_ADDRESS	28	129	6122
// OP_STOREP_S	4224	6122	0
// OP_DONE	0	0	0
void () rally_startfinish_brush = 
{
    CheckFirstStartFinish();
    self.touch = startfinish_touch;
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0;
    self.model = "";
    if((cvar("skill") <= 1) && !cvar("deathmatch"))
    {
        self.ammo_nails = floor(self.ammo_nails * 0.75);
    }
    else
    {
        
        if(cvar("deathmatch"))
        {
            self.ammo_nails = cvar("skill") * 2;
        }
        
    }
    
    self.classname = "rally_startfinish";
};

// rally_startfinish_flag
// function begins at statement 6928, parm_start=6124
// OP_STORE_V	28	4	0
// OP_STORE_V	6124	7	0
// OP_STORE_V	6127	10	0
// OP_CALL3	464	0	0
// OP_CALL0	492	0	0
// OP_CALL0	6019	0	0
// OP_DONE	0	0	0
void () rally_startfinish_flag = 
{
    setsize(self, '-4.000 -4.000 0.000', '4.000 4.000 16.000');
    droptofloor();
    spawn_finish_model();
};

string nextmap;
void () execute_changelevel;
// StartNextRace
// function begins at statement 6935, parm_start=6133
// OP_CALL0	6131	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () StartNextRace = 
{
    execute_changelevel();
    remove(self);
};

// GetDriverAtPos
// function begins at statement 6939, parm_start=6134
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	6135	0
// OP_DONE	0	0	0
void (float pos) GetDriverAtPos = 
{
    local entity plyr;
    plyr = find(world, classname, "player");
};

// ShowRaceResults
// function begins at statement 6945, parm_start=6137
// OP_LT	728	31	6140
// OP_IFNOT	6140	7	0
// OP_ADDRESS	28	148	6141
// OP_STOREP_FNC	6132	6141	0
// OP_ADDRESS	28	150	6142
// OP_ADD_F	31	819	6143
// OP_STOREP_F	6143	6142	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ShowRaceResults = 
{
    local entity plyr;
    local entity trav;
    local float pos;
    
    if(race_finish_time < time)
    {
        self.think = StartNextRace;
        self.nextthink = time + 1;
        return;
    }
    
};

// RaceOverMsg
// function begins at statement 6954, parm_start=6145
// OP_GT	728	31	6146
// OP_IFNOT	6146	5	0
// OP_ADDRESS	28	150	6147
// OP_ADD_F	31	819	6148
// OP_STOREP_F	6148	6147	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	6145	0
// OP_NE_E	6145	30	6149
// OP_IFNOT	6149	10	0
// OP_STORE_V	6145	4	0
// OP_STORE_V	6150	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	6145	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	6145	0
// OP_GOTO	-10	0	0
// OP_ADDRESS	28	150	6151
// OP_ADD_F	31	823	6152
// OP_STOREP_F	6152	6151	0
// OP_ADDRESS	28	148	6153
// OP_STOREP_FNC	6132	6153	0
// OP_DONE	0	0	0
void () RaceOverMsg = 
{
    local entity plyr;
    
    if(race_finish_time > time)
    {
        self.nextthink = time + 1;
        return;
    }
    
    plyr = find(world, classname, "player");
    
    while(plyr != world)
    {
        centerprint(plyr, "Race Over!");
        plyr = find(plyr, classname, "player");
    }
    
    self.nextthink = time + 3;
    self.think = StartNextRace;
};

// CheckLaps
// function begins at statement 6982, parm_start=6155
// OP_LOAD_F	29	640	6158
// OP_LOAD_F	28	159	6159
// OP_EQ_F	6158	6159	6160
// OP_IFNOT	6160	114	0
// OP_BITAND	723	695	6161
// OP_NOT_F	6161	0	6162
// OP_IFNOT	6162	42	0
// OP_BITOR	723	695	6163
// OP_STORE_F	6163	723	0
// OP_NOT_F	689	0	6164
// OP_IFNOT	6164	19	0
// OP_LOAD_S	29	180	6165
// OP_STORE_V	6165	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	6166	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	29	129	6167
// OP_EQ_S	6167	880	6168
// OP_IFNOT	6168	10	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	6169	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6170	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6171	7	0
// OP_CALL2	520	0	0
// OP_NOT_F	689	0	6172
// OP_IFNOT	6172	4	0
// OP_ADD_F	31	1112	6173
// OP_STORE_F	6173	728	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	821	6174
// OP_STORE_F	6174	728	0
// OP_BITOR	723	691	6175
// OP_STORE_F	6175	723	0
// OP_STORE_V	721	4	0
// OP_CALL1	474	0	0
// OP_ADDRESS	720	150	6176
// OP_ADD_F	31	821	6177
// OP_STOREP_F	6177	6176	0
// OP_ADDRESS	720	148	6178
// OP_STOREP_FNC	6144	6178	0
// OP_ADD_F	736	819	6179
// OP_STORE_F	6179	736	0
// OP_LE	736	823	6180
// OP_NOT_F	689	0	6181
// OP_AND	6180	6181	6182
// OP_IFNOT	6182	20	0
// OP_LOAD_ENT	29	554	6183
// OP_EQ_E	6183	30	6184
// OP_IFNOT	6184	9	0
// OP_ADDRESS	29	554	6185
// OP_STORE_V	926	4	0
// OP_STORE_V	926	7	0
// OP_CALL2	890	0	0
// OP_STOREP_ENT	1	6185	0
// OP_LOAD_ENT	29	554	6186
// OP_ADDRESS	6186	129	6187
// OP_STOREP_S	6188	6187	0
// OP_LOAD_ENT	29	554	6189
// OP_STORE_V	6189	4	0
// OP_STORE_V	6190	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	29	554	6191
// OP_ADDRESS	6191	132	6192
// OP_SUB_F	736	819	6193
// OP_STOREP_F	6193	6192	0
// OP_ADDRESS	29	644	6194
// OP_LOAD_F	29	644	6195
// OP_BITOR	6195	691	6196
// OP_STOREP_F	6196	6194	0
// OP_ADDRESS	29	643	6197
// OP_SUB_F	31	727	6198
// OP_STOREP_F	6198	6197	0
// OP_LOAD_S	29	129	6199
// OP_EQ_S	6199	880	6200
// OP_IFNOT	6200	34	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6201	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	29	643	6202
// OP_DIV_F	6202	2228	6203
// OP_STORE_V	6203	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	6156	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6156	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	3958	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	29	643	6204
// OP_LOAD_F	29	643	6205
// OP_DIV_F	6205	2228	6206
// OP_STORE_V	6206	4	0
// OP_CALL1	495	0	0
// OP_MUL_F	1	2228	6207
// OP_SUB_F	6204	6207	6208
// OP_STORE_F	6208	6157	0
// OP_STORE_V	6157	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	6156	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6156	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6209	7	0
// OP_CALL2	483	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	29	640	6210
// OP_LOAD_F	28	159	6211
// OP_SUB_F	6211	819	6212
// OP_EQ_F	6210	6212	6213
// OP_IFNOT	6213	10	0
// OP_LOAD_S	29	129	6214
// OP_EQ_S	6214	880	6215
// OP_IFNOT	6215	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6216	7	0
// OP_CALL2	876	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6217	7	0
// OP_CALL2	520	0	0
// OP_DONE	0	0	0
void () CheckLaps = 
{
    local entity plyr;
    local string stemp;
    local float ftemp;
    if(other.last_lap == self.ammo_nails)
    {
        
        if(!(global_racing_flags & QR_SOMEONE_FINISHED))
        {
            global_racing_flags = global_racing_flags | QR_SOMEONE_FINISHED;
            if(!challenge)
            {
                bprint(other.netname);
                bprint(" has WON the race!\n");
                
                if(other.classname == "player")
                {
                    sound(other, CHAN_ITEM, "rally/voice/win3.wav", 1, ATTN_NORM);
                    centerprint(other, "You have WON the race!");
                }
                
            }
            else
            {
                centerprint(other, "You have passed the stage!\n");
            }
            
            if(!challenge)
            {
                race_finish_time = time + 20;
            }
            else
            {
                race_finish_time = time + 2;
            }
            
            global_racing_flags = global_racing_flags | QR_FINISHED_RACE;
            remove(positioner);
            starter.nextthink = time + 2;
            starter.think = RaceOverMsg;
        }
        
        num_finished = num_finished + 1;
        
        if((num_finished <= 3) && !challenge)
        {
            
            if(other.gun == world)
            {
                other.gun = SpawnPart('0.000 0.000 0.000', '0.000 0.000 0.000');
                other.gun.classname = "veh_gun";
            }
            
            setmodel(other.gun, "models/trophy.mdl");
            other.gun.skin = num_finished - 1;
        }
        
        other.racing_flags = other.racing_flags | QR_FINISHED_RACE;
        other.race_time = time - race_start_time;
        
        if(other.classname == "player")
        {
            sprint(other, "Your total race time was: ");
            stemp = ftos(floor(other.race_time / 60));
            sprint(other, stemp);
            sprint(other, "m");
            ftemp = other.race_time - ((floor(other.race_time / 60)) * 60);
            stemp = ftos(ftemp);
            sprint(other, stemp);
            sprint(other, "s\n");
        }
        
    }
    else
    {
        
        if(other.last_lap == (self.ammo_nails - 1))
        {
            
            if(other.classname == "player")
            {
                commentary(other, "voice/finallap.wav");
                centerprint(other, "Final Lap!");
            }
            
        }
        
    }
    
};

// CheckFastestLap
// function begins at statement 7114, parm_start=6219
// OP_LOAD_F	29	641	6220
// OP_SUB_F	31	6220	6221
// OP_STORE_V	6221	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	6219	0
// OP_LOAD_S	29	129	6222
// OP_EQ_S	6222	880	6223
// OP_IFNOT	6223	13	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6224	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6219	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	6226	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	29	641	6227
// OP_SUB_F	31	6227	6228
// OP_LOAD_F	29	642	6229
// OP_LT	6228	6229	6230
// OP_IFNOT	6230	33	0
// OP_ADDRESS	29	642	6231
// OP_LOAD_F	29	641	6232
// OP_SUB_F	31	6232	6233
// OP_STOREP_F	6233	6231	0
// OP_LOAD_S	29	129	6234
// OP_EQ_S	6234	880	6235
// OP_IFNOT	6235	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6236	7	0
// OP_CALL2	520	0	0
// OP_LOAD_F	29	642	6237
// OP_LT	6237	722	6238
// OP_IFNOT	6238	20	0
// OP_LOAD_F	29	642	6239
// OP_STORE_F	6239	722	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6240	7	0
// OP_CALL2	876	0	0
// OP_STORE_V	6241	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	29	180	6242
// OP_STORE_V	6242	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	6243	4	0
// OP_CALL1	482	0	0
// OP_LOAD_F	29	642	6244
// OP_STORE_V	6244	4	0
// OP_CALL1	485	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	482	0	0
// OP_DONE	0	0	0
void () CheckFastestLap = 
{
    local string lap_time_str;
    lap_time_str = ftos(time - other.last_lap_time);
    
    if(other.classname == "player")
    {
        sprint(other, "Lap time: ");
        sprint(other, lap_time_str);
        sprint(other, "\n");
        stuffcmd(other, "bf\n");
    }
    
    sound(other, CHAN_ITEM, "rally/lapcom.wav", 1, ATTN_STATIC);
    
    if((time - other.last_lap_time) < other.fastest_lap)
    {
        other.fastest_lap = time - other.last_lap_time;
        
        if(other.classname == "player")
        {
            centerprint(other, "Personal Fastest Lap!\n");
        }
        
        
        if(other.fastest_lap < all_fastest_lap)
        {
            all_fastest_lap = other.fastest_lap;
            commentary(other, "voice/fastest.wav");
            bprint("New Lap Record by ");
            bprint(other.netname);
            bprint(": ");
            bprint(ftos(other.fastest_lap));
            bprint("\n");
        }
        
    }
    
};

// startfinish_touch
// function begins at statement 7178, parm_start=6245
// OP_LOAD_S	29	129	6246
// OP_EQ_S	6246	880	6247
// OP_LOAD_S	29	129	6248
// OP_EQ_S	6248	1187	6249
// OP_OR	6247	6249	6250
// OP_NOT_F	6250	0	6251
// OP_IFNOT	6251	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	644	6252
// OP_BITAND	6252	690	6253
// OP_IFNOT	6253	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	644	6254
// OP_BITAND	6254	691	6255
// OP_IFNOT	6255	2	0
// OP_RETURN	0	0	0
// OP_GT	738	821	6256
// OP_IFNOT	6256	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	637	6257
// OP_LOAD_F	28	158	6258
// OP_NE_F	6257	6258	6259
// OP_IFNOT	6259	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	637	6260
// OP_STOREP_F	817	6260	0
// OP_CALL0	6218	0	0
// OP_ADDRESS	29	641	6261
// OP_STOREP_F	31	6261	0
// OP_EQ_F	738	823	6262
// OP_IFNOT	6262	6	0
// OP_ADDRESS	29	153	6263
// OP_LOAD_F	29	153	6264
// OP_ADD_F	6264	814	6265
// OP_STOREP_F	6265	6263	0
// OP_GOTO	24	0	0
// OP_ADDRESS	29	640	6266
// OP_LOAD_F	29	640	6267
// OP_ADD_F	6267	819	6268
// OP_STOREP_F	6268	6266	0
// OP_CALL0	6154	0	0
// OP_BITAND	723	691	6269
// OP_NOT_F	6269	0	6270
// OP_IFNOT	6270	16	0
// OP_LOAD_F	28	159	6271
// OP_LOAD_F	29	640	6272
// OP_SUB_F	6271	6272	6273
// OP_STORE_V	6273	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	6245	0
// OP_LOAD_S	29	129	6274
// OP_EQ_S	6274	880	6275
// OP_IFNOT	6275	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6245	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6276	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	104	6277
// OP_STOREP_F	244	6277	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6278
// OP_STORE_V	6278	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () startfinish_touch = 
{
    local string laps_left;
    
    if(!((other.classname == "player") || (other.classname == "rally_bot")))
    {
        return;
    }
    
    
    if(other.racing_flags & QR_NOT_RACING)
    {
        return;
    }
    
    
    if(other.racing_flags & QR_FINISHED_RACE)
    {
        return;
    }
    
    
    if(rally_type_index > 2)
    {
        return;
    }
    
    
    if(other.last_marker_num != self.ammo_shells)
    {
        return;
    }
    
    other.last_marker_num = 0;
    CheckFastestLap();
    other.last_lap_time = time;
    if(rally_type_index == 3)
    {
        other.frags = other.frags + FRAGS_PER_LAP;
    }
    else
    {
        other.last_lap = other.last_lap + 1;
        CheckLaps();
        
        if(!(global_racing_flags & QR_FINISHED_RACE))
        {
            laps_left = ftos(self.ammo_nails - other.last_lap);
            
            if(other.classname == "player")
            {
                sprint(other, laps_left);
                sprint(other, " laps left\n");
            }
            
        }
        
    }
    
    self.solid = SOLID_TRIGGER;
    setorigin(self, self.origin);
};

// flag_think
// function begins at statement 7244, parm_start=6282
// OP_ADDRESS	28	131	6282
// OP_LOAD_F	28	131	6283
// OP_ADD_F	6283	819	6284
// OP_STOREP_F	6284	6282	0
// OP_LOAD_F	28	131	6285
// OP_GT	6285	847	6286
// OP_IFNOT	6286	6	0
// OP_ADDRESS	28	131	6287
// OP_STOREP_F	817	6287	0
// OP_ADDRESS	28	150	6288
// OP_STOREP_F	1228	6288	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	6289
// OP_ADD_F	31	2869	6290
// OP_STOREP_F	6290	6289	0
// OP_DONE	0	0	0
void () flag_think = 
{
    self.frame = self.frame + 1;
    
    if(self.frame > 9)
    {
        self.frame = 0;
        self.nextthink = -1;
        return;
    }
    
    self.nextthink = time + 0.1;
};

// spawn_marker_flag
// function begins at statement 7260, parm_start=6292
// OP_NE_F	737	717	6294
// OP_IFNOT	6294	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	6292	0
// OP_ADDRESS	6292	129	6295
// OP_STOREP_S	6023	6295	0
// OP_ADDRESS	6292	166	6296
// OP_STOREP_V	6029	6296	0
// OP_STORE_V	6292	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	6292	4	0
// OP_STORE_V	6299	7	0
// OP_CALL2	463	0	0
// OP_LOAD_V	28	117	6300
// OP_STORE_V	6300	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	6292	4	0
// OP_LOAD_V	28	105	6303
// OP_MUL_VF	59	843	6306
// OP_ADD_V	6303	6306	6309
// OP_STORE_V	6309	7	0
// OP_CALL2	462	0	0
// OP_LOAD_V	6292	105	6312
// OP_STORE_V	6312	4	0
// OP_LOAD_V	6292	105	6315
// OP_SUB_V	6315	2284	6318
// OP_STORE_V	6318	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	6292	13	0
// OP_CALL4	475	0	0
// OP_STORE_V	6292	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	6292	119	6321
// OP_LOAD_F	28	119	6322
// OP_ADD_F	6322	865	6323
// OP_STORE_V	6323	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	6321	0
// OP_ADDRESS	6292	150	6324
// OP_ADD_F	31	2869	6325
// OP_STOREP_F	6325	6324	0
// OP_ADDRESS	6292	148	6326
// OP_STOREP_FNC	6281	6326	0
// OP_ADDRESS	28	432	6327
// OP_STOREP_ENT	6292	6327	0
// OP_DONE	0	0	0
void () spawn_marker_flag = 
{
    local entity flag;
    local entity oself;
    
    if(racing_type != RT_TIME_TRIAL)
    {
        return;
    }
    
    flag = spawn();
    flag.classname = "rally_flag";
    flag.view_ofs = '0.000 0.000 7.000';
    setsize(flag, VEH_MIN, VEH_MAX);
    setmodel(flag, "models/marker.mdl");
    makevectors(self.angles);
    setorigin(flag, self.origin + (v_forward * 8));
    traceline(flag.origin, flag.origin - '0.000 0.000 64.000', TRUE, flag);
    setorigin(flag, trace_endpos);
    flag.angles_y = anglemod(self.angles_y + 180);
    flag.nextthink = time + 0.1;
    flag.think = flag_think;
    self.movetarget = flag;
};

// rally_marker
// function begins at statement 7310, parm_start=6329
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6335
// OP_ADD_V	6335	1529	6338
// OP_STORE_V	6338	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6341	7	0
// OP_STORE_V	6344	10	0
// OP_CALL3	464	0	0
// OP_CALL0	492	0	0
// OP_ADDRESS	28	150	6347
// OP_ADD_F	31	819	6348
// OP_STOREP_F	6348	6347	0
// OP_ADDRESS	28	148	6349
// OP_STOREP_FNC	6291	6349	0
// OP_DONE	0	0	0
void () rally_marker = 
{
    local vector min;
    local vector max;
    setorigin(self, self.origin + '0.000 0.000 12.000');
    setsize(self, '-2.000 -2.000 -8.000', '2.000 2.000 8.000');
    droptofloor();
    self.nextthink = time + 1;
    self.think = spawn_marker_flag;
};

// rally_marker_brush
// function begins at statement 7326, parm_start=6351
// OP_ADDRESS	28	129	6351
// OP_STOREP_S	1104	6351	0
// OP_DONE	0	0	0
void () rally_marker_brush = 
{
    self.classname = "rally_marker";
};

// marker_touch
// function begins at statement 7329, parm_start=6352
// OP_LOAD_S	29	129	6353
// OP_EQ_S	6353	880	6354
// OP_LOAD_S	29	129	6355
// OP_EQ_S	6355	1187	6356
// OP_OR	6354	6356	6357
// OP_NOT_F	6357	0	6358
// OP_IFNOT	6358	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	644	6359
// OP_BITAND	6359	690	6360
// OP_LOAD_F	29	644	6361
// OP_BITAND	6361	691	6362
// OP_OR	6360	6362	6363
// OP_IFNOT	6363	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	637	6364
// OP_LOAD_F	28	158	6365
// OP_SUB_F	6365	819	6366
// OP_EQ_F	6364	6366	6367
// OP_IFNOT	6367	89	0
// OP_ADDRESS	29	637	6368
// OP_LOAD_F	28	158	6369
// OP_STOREP_F	6369	6368	0
// OP_ADDRESS	29	638	6370
// OP_STOREP_ENT	28	6370	0
// OP_EQ_F	737	717	6371
// OP_IFNOT	6371	20	0
// OP_STORE_V	4339	4	0
// OP_CALL1	501	0	0
// OP_LE	1	819	6372
// OP_IFNOT	6372	6	0
// OP_ADDRESS	29	677	6373
// OP_LOAD_F	29	677	6374
// OP_ADD_F	6374	839	6375
// OP_STOREP_F	6375	6373	0
// OP_GOTO	5	0	0
// OP_ADDRESS	29	677	6376
// OP_LOAD_F	29	677	6377
// OP_ADD_F	6377	829	6378
// OP_STOREP_F	6378	6376	0
// OP_ADDRESS	29	644	6379
// OP_LOAD_F	29	644	6380
// OP_LOAD_F	29	644	6381
// OP_BITAND	6381	702	6382
// OP_SUB_F	6380	6382	6383
// OP_STOREP_F	6383	6379	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6384	7	0
// OP_CALL2	876	0	0
// OP_EQ_F	737	717	6385
// OP_IFNOT	6385	13	0
// OP_LOAD_ENT	28	432	6386
// OP_ADDRESS	6386	131	6387
// OP_STOREP_F	817	6387	0
// OP_LOAD_ENT	28	432	6388
// OP_ADDRESS	6388	119	6389
// OP_LOAD_ENT	29	548	6390
// OP_LOAD_F	6390	119	6391
// OP_STOREP_F	6391	6389	0
// OP_LOAD_ENT	28	432	6392
// OP_ADDRESS	6392	150	6393
// OP_ADD_F	31	2869	6394
// OP_STOREP_F	6394	6393	0
// OP_LT	738	823	6395
// OP_CALL0	466	0	0
// OP_LT	1	2575	6396
// OP_AND	6395	6396	6397
// OP_LOAD_ENT	28	200	6398
// OP_NE_E	6398	30	6399
// OP_AND	6397	6399	6400
// OP_LOAD_ENT	28	200	6401
// OP_NE_E	6401	29	6402
// OP_AND	6400	6402	6403
// OP_LOAD_F	28	640	6404
// OP_LOAD_F	29	640	6405
// OP_EQ_F	6404	6405	6406
// OP_AND	6403	6406	6407
// OP_IFNOT	6407	23	0
// OP_LOAD_F	28	387	6408
// OP_SUB_F	31	6408	6409
// OP_STORE_V	6409	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	6352	0
// OP_LOAD_S	29	129	6410
// OP_EQ_S	6410	880	6411
// OP_IFNOT	6411	15	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	200	6412
// OP_LOAD_S	6412	180	6413
// OP_STORE_V	6413	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6414	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6352	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6415	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	200	6416
// OP_STOREP_ENT	29	6416	0
// OP_ADDRESS	28	387	6417
// OP_STOREP_F	31	6417	0
// OP_ADDRESS	28	640	6418
// OP_LOAD_F	29	640	6419
// OP_STOREP_F	6419	6418	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	119	6420
// OP_STORE_V	6420	4	0
// OP_LOAD_F	29	119	6421
// OP_STORE_V	6421	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_GT	1	1885	6422
// OP_LOAD_F	29	658	6423
// OP_SUB_F	31	804	6424
// OP_LT	6423	6424	6425
// OP_AND	6422	6425	6426
// OP_IFNOT	6426	24	0
// OP_LOAD_S	29	129	6427
// OP_EQ_S	6427	880	6428
// OP_IFNOT	6428	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6429	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4362	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	29	658	6430
// OP_STOREP_F	31	6430	0
// OP_LOAD_F	28	158	6431
// OP_EQ_F	6431	819	6432
// OP_IFNOT	6432	10	0
// OP_ADDRESS	29	637	6433
// OP_STOREP_F	819	6433	0
// OP_ADDRESS	28	200	6434
// OP_STOREP_ENT	29	6434	0
// OP_ADDRESS	28	387	6435
// OP_STOREP_F	31	6435	0
// OP_ADDRESS	28	640	6436
// OP_LOAD_F	29	640	6437
// OP_STOREP_F	6437	6436	0
// OP_DONE	0	0	0
void () marker_touch = 
{
    local string stemp;
    
    if(!((other.classname == "player") || (other.classname == "rally_bot")))
    {
        return;
    }
    
    
    if((other.racing_flags & QR_NOT_RACING) || (other.racing_flags & QR_FINISHED_RACE))
    {
        return;
    }
    
    if(other.last_marker_num == (self.ammo_shells - 1))
    {
        other.last_marker_num = self.ammo_shells;
        other.last_marker = self;
        
        if(racing_type == RT_TIME_TRIAL)
        {
            if(cvar("skill") <= 1)
            {
                other.time_remaining = other.time_remaining + 7;
            }
            else
            {
                other.time_remaining = other.time_remaining + 6;
            }
            
            other.racing_flags = other.racing_flags - (other.racing_flags & QR_OUT_OF_TIME);
        }
        
        commentary(other, "voice/checkpnt.wav");
        
        if(racing_type == RT_TIME_TRIAL)
        {
            self.movetarget.frame = 0;
            self.movetarget.angles_y = other.veh_body.angles_y;
            self.movetarget.nextthink = time + 0.1;
        }
        
        
        if(((((rally_type_index < 3) && (random() < 0.3)) && (self.dmg_inflictor != world)) && (self.dmg_inflictor != other)) && (self.last_lap == other.last_lap))
        {
            stemp = ftos(time - self.attack_finished);
            
            if(other.classname == "player")
            {
                sprint(other, self.dmg_inflictor.netname);
                sprint(other, " ahead: ");
                sprint(other, stemp);
                sprint(other, " secs\n");
            }
            
        }
        
        self.dmg_inflictor = other;
        self.attack_finished = time;
        self.last_lap = other.last_lap;
    }
    else
    {
        
        if((fabs(angle_diff(self.angles_y, other.angles_y)) > 150) && (other.last_turnaround < (time - SNDLEN_TURNAROUND)))
        {
            
            if(other.classname == "player")
            {
                centerprint(other, "Wrong Way!");
            }
            
            commentary(other, "voice/wrongway.wav");
            other.last_turnaround = time;
            
            if(self.ammo_shells == 1)
            {
                other.last_marker_num = 1;
                self.dmg_inflictor = other;
                self.attack_finished = time;
                self.last_lap = other.last_lap;
            }
            
        }
        
    }
    
};

// ToggleHeadlights
// function begins at statement 7474, parm_start=6439
// OP_LOAD_ENT	28	552	6439
// OP_LOAD_F	6439	133	6440
// OP_EQ_F	6440	350	6441
// OP_IFNOT	6441	27	0
// OP_ADDRESS	28	644	6442
// OP_LOAD_F	28	644	6443
// OP_SUB_F	6443	694	6444
// OP_STOREP_F	6444	6442	0
// OP_LOAD_ENT	28	552	6445
// OP_STORE_V	6445	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	551	6446
// OP_STORE_V	6446	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	553	6447
// OP_STORE_V	6447	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	552	6448
// OP_ADDRESS	6448	133	6449
// OP_STOREP_F	817	6449	0
// OP_LOAD_ENT	28	551	6450
// OP_ADDRESS	6450	133	6451
// OP_STOREP_F	817	6451	0
// OP_LOAD_ENT	28	553	6452
// OP_ADDRESS	6452	133	6453
// OP_STOREP_F	817	6453	0
// OP_GOTO	26	0	0
// OP_ADDRESS	28	644	6454
// OP_LOAD_F	28	644	6455
// OP_BITOR	6455	694	6456
// OP_STOREP_F	6456	6454	0
// OP_LOAD_ENT	28	552	6457
// OP_STORE_V	6457	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	551	6458
// OP_STORE_V	6458	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	553	6459
// OP_STORE_V	6459	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_LOAD_ENT	28	552	6460
// OP_ADDRESS	6460	133	6461
// OP_STOREP_F	350	6461	0
// OP_LOAD_ENT	28	551	6462
// OP_ADDRESS	6462	133	6463
// OP_STOREP_F	350	6463	0
// OP_LOAD_ENT	28	553	6464
// OP_ADDRESS	6464	133	6465
// OP_STOREP_F	350	6465	0
// OP_DONE	0	0	0
void () ToggleHeadlights = 
{
    if(self.hl_r.effects == EF_DIMLIGHT)
    {
        self.racing_flags = self.racing_flags - QR_HEADLIGHTS_ON;
        setmodel(self.hl_r, "");
        setmodel(self.hl_l, "");
        setmodel(self.hl_m, "");
        self.hl_r.effects = 0;
        self.hl_l.effects = 0;
        self.hl_m.effects = 0;
    }
    else
    {
        self.racing_flags = self.racing_flags | QR_HEADLIGHTS_ON;
        setmodel(self.hl_r, "models/null.mdl");
        setmodel(self.hl_l, "models/null.mdl");
        setmodel(self.hl_m, "models/null.mdl");
        self.hl_r.effects = EF_DIMLIGHT;
        self.hl_l.effects = EF_DIMLIGHT;
        self.hl_m.effects = EF_DIMLIGHT;
    }
    
};

// player_infront
// function begins at statement 7530, parm_start=6467
// OP_LOAD_V	6467	105	6471
// OP_LOAD_ENT	6467	638	6474
// OP_LOAD_V	6474	105	6475
// OP_SUB_V	6471	6475	6478
// OP_STORE_V	6478	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	6469	0
// OP_LOAD_V	6468	105	6481
// OP_LOAD_ENT	6468	638	6484
// OP_LOAD_V	6484	105	6485
// OP_SUB_V	6481	6485	6488
// OP_STORE_V	6488	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	6470	0
// OP_GE	6469	6470	6491
// OP_IFNOT	6491	3	0
// OP_RETURN	6467	0	0
// OP_GOTO	2	0	0
// OP_RETURN	6468	0	0
// OP_DONE	0	0	0
entity (entity player1, entity player2) player_infront = 
{
    local float len1;
    local float len2;
    len1 = vlen(player1.origin - player1.last_marker.origin);
    len2 = vlen(player2.origin - player2.last_marker.origin);
    if(len1 >= len2)
    {
        return player1;
    }
    else
    {
        return player2;
    }
    
};

// SortPlayersByPosition
// function begins at statement 7550, parm_start=6493
// OP_EQ_E	726	30	6500
// OP_IFNOT	6500	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	726	6493	0
// OP_STORE_ENT	30	6495	0
// OP_STORE_F	218	6498	0
// OP_NE_E	6493	30	6501
// OP_IFNOT	6501	108	0
// OP_LOAD_ENT	6493	667	6502
// OP_NE_E	6502	30	6503
// OP_LOAD_ENT	6493	667	6504
// OP_LOAD_F	6504	644	6505
// OP_BITAND	6505	691	6506
// OP_NOT_F	6506	0	6507
// OP_AND	6503	6507	6508
// OP_IFNOT	6508	96	0
// OP_LOAD_F	6493	644	6509
// OP_BITAND	6509	691	6510
// OP_LOAD_ENT	6493	667	6511
// OP_LOAD_F	6511	644	6512
// OP_BITAND	6512	691	6513
// OP_NOT_F	6513	0	6514
// OP_AND	6510	6514	6515
// OP_IFNOT	6515	3	0
// OP_STORE_F	219	6498	0
// OP_GOTO	48	0	0
// OP_LOAD_F	6493	644	6516
// OP_BITAND	6516	691	6517
// OP_LOAD_ENT	6493	667	6518
// OP_LOAD_F	6518	644	6519
// OP_BITAND	6519	691	6520
// OP_AND	6517	6520	6521
// OP_LOAD_F	6493	643	6522
// OP_LOAD_ENT	6493	667	6523
// OP_LOAD_F	6523	643	6524
// OP_LT	6522	6524	6525
// OP_AND	6521	6525	6526
// OP_IFNOT	6526	3	0
// OP_STORE_F	219	6498	0
// OP_GOTO	34	0	0
// OP_LOAD_ENT	6493	667	6527
// OP_LOAD_F	6527	640	6528
// OP_LOAD_F	6493	640	6529
// OP_LT	6528	6529	6530
// OP_LOAD_ENT	6493	667	6531
// OP_LOAD_F	6531	640	6532
// OP_LOAD_F	6493	640	6533
// OP_EQ_F	6532	6533	6534
// OP_LOAD_ENT	6493	667	6535
// OP_LOAD_F	6535	637	6536
// OP_LOAD_F	6493	637	6537
// OP_LT	6536	6537	6538
// OP_AND	6534	6538	6539
// OP_OR	6530	6539	6540
// OP_LOAD_ENT	6493	667	6541
// OP_LOAD_F	6541	640	6542
// OP_LOAD_F	6493	640	6543
// OP_EQ_F	6542	6543	6544
// OP_LOAD_ENT	6493	667	6545
// OP_LOAD_F	6545	637	6546
// OP_LOAD_F	6493	637	6547
// OP_EQ_F	6546	6547	6548
// OP_AND	6544	6548	6549
// OP_LOAD_ENT	6493	667	6550
// OP_STORE_V	6550	4	0
// OP_STORE_V	6493	7	0
// OP_CALL2	6466	0	0
// OP_LOAD_ENT	6493	667	6551
// OP_NE_E	1	6551	6552
// OP_AND	6549	6552	6553
// OP_OR	6540	6553	6554
// OP_IFNOT	6554	2	0
// OP_STORE_F	219	6498	0
// OP_IFNOT	6498	34	0
// OP_LOAD_ENT	6493	667	6555
// OP_STORE_ENT	6555	6494	0
// OP_LOAD_ENT	6494	667	6556
// OP_NE_E	6556	30	6557
// OP_IFNOT	6557	4	0
// OP_LOAD_ENT	6494	667	6558
// OP_ADDRESS	6558	668	6559
// OP_STOREP_ENT	6493	6559	0
// OP_LOAD_ENT	6493	668	6560
// OP_NE_E	6560	30	6561
// OP_IFNOT	6561	4	0
// OP_LOAD_ENT	6493	668	6562
// OP_ADDRESS	6562	667	6563
// OP_STOREP_ENT	6494	6563	0
// OP_ADDRESS	6493	667	6564
// OP_LOAD_ENT	6494	667	6565
// OP_STOREP_ENT	6565	6564	0
// OP_ADDRESS	6494	668	6566
// OP_LOAD_ENT	6493	668	6567
// OP_STOREP_ENT	6567	6566	0
// OP_ADDRESS	6493	668	6568
// OP_STOREP_ENT	6494	6568	0
// OP_ADDRESS	6494	667	6569
// OP_STOREP_ENT	6493	6569	0
// OP_LOAD_ENT	6493	667	6570
// OP_NE_E	6570	30	6571
// OP_IFNOT	6571	4	0
// OP_LOAD_ENT	6493	667	6572
// OP_STORE_ENT	6572	6493	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	6493	726	0
// OP_STORE_F	218	6498	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	6493	6495	0
// OP_LOAD_ENT	6493	668	6573
// OP_STORE_ENT	6573	6493	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	6493	6495	0
// OP_LOAD_ENT	6493	668	6574
// OP_STORE_ENT	6574	6493	0
// OP_GOTO	-108	0	0
// OP_STORE_F	819	6497	0
// OP_STORE_ENT	6495	6493	0
// OP_NE_E	6493	30	6575
// OP_IFNOT	6575	9	0
// OP_ADDRESS	6493	153	6576
// OP_STOREP_F	6497	6576	0
// OP_STORE_ENT	6493	6495	0
// OP_LOAD_ENT	6493	667	6577
// OP_STORE_ENT	6577	6493	0
// OP_ADD_F	6497	819	6578
// OP_STORE_F	6578	6497	0
// OP_GOTO	-9	0	0
// OP_STORE_F	819	6497	0
// OP_STORE_ENT	6495	6493	0
// OP_NE_E	6493	30	6579
// OP_IFNOT	6579	64	0
// OP_LOAD_F	6493	666	6580
// OP_NE_F	6580	6497	6581
// OP_LOAD_F	6493	640	6582
// OP_GT	6582	817	6583
// OP_AND	6581	6583	6584
// OP_LOAD_S	6493	129	6585
// OP_EQ_S	6585	880	6586
// OP_AND	6584	6586	6587
// OP_IFNOT	6587	48	0
// OP_EQ_F	6497	819	6588
// OP_IFNOT	6588	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6589	7	0
// OP_CALL2	520	0	0
// OP_GOTO	42	0	0
// OP_EQ_F	6497	821	6590
// OP_IFNOT	6590	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6591	7	0
// OP_CALL2	520	0	0
// OP_GOTO	36	0	0
// OP_EQ_F	6497	823	6592
// OP_IFNOT	6592	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6593	7	0
// OP_CALL2	520	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	6497	825	6594
// OP_IFNOT	6594	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6595	7	0
// OP_CALL2	520	0	0
// OP_GOTO	24	0	0
// OP_EQ_F	6497	827	6596
// OP_IFNOT	6596	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6597	7	0
// OP_CALL2	520	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	6497	829	6598
// OP_IFNOT	6598	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6599	7	0
// OP_CALL2	520	0	0
// OP_GOTO	12	0	0
// OP_EQ_F	6497	839	6600
// OP_IFNOT	6600	5	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6601	7	0
// OP_CALL2	520	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	6497	843	6602
// OP_IFNOT	6602	4	0
// OP_STORE_V	6493	4	0
// OP_STORE_V	6603	7	0
// OP_CALL2	520	0	0
// OP_ADDRESS	6493	666	6604
// OP_STOREP_F	6497	6604	0
// OP_LOAD_ENT	6493	668	6605
// OP_STORE_ENT	6605	6493	0
// OP_ADD_F	6497	819	6606
// OP_STORE_F	6606	6497	0
// OP_GOTO	-64	0	0
// OP_ADDRESS	28	150	6607
// OP_ADD_F	31	819	6608
// OP_STOREP_F	6608	6607	0
// OP_DONE	0	0	0
void () SortPlayersByPosition = 
{
    local entity current;
    local entity temp;
    local entity lastcurrent;
    local float done;
    local float current_frag;
    local float swap;
    local string stemp;
    
    if(current_leader == world)
    {
        return;
    }
    
    current = current_leader;
    lastcurrent = world;
    swap = FALSE;
    
    while(current != world)
    {
        if((current.ahead != world) && (!(current.ahead.racing_flags & QR_FINISHED_RACE)))
        {
            if((current.racing_flags & QR_FINISHED_RACE) && (!(current.ahead.racing_flags & QR_FINISHED_RACE)))
            {
                swap = TRUE;
            }
            else
            {
                if(((current.racing_flags & QR_FINISHED_RACE) && (current.ahead.racing_flags & QR_FINISHED_RACE)) && (current.race_time < current.ahead.race_time))
                {
                    swap = TRUE;
                }
                else
                {
                    
                    if(((current.ahead.last_lap < current.last_lap) || ((current.ahead.last_lap == current.last_lap) && (current.ahead.last_marker_num < current.last_marker_num))) || (((current.ahead.last_lap == current.last_lap) && (current.ahead.last_marker_num == current.last_marker_num)) && (player_infront(current.ahead, current) != current.ahead)))
                    {
                        swap = TRUE;
                    }
                    
                }
                
            }
            
            if(swap)
            {
                temp = current.ahead;
                
                if(temp.ahead != world)
                {
                    temp.ahead.behind = current;
                }
                
                
                if(current.behind != world)
                {
                    current.behind.ahead = temp;
                }
                
                current.ahead = temp.ahead;
                temp.behind = current.behind;
                current.behind = temp;
                temp.ahead = current;
                if(current.ahead != world)
                {
                    current = current.ahead;
                }
                else
                {
                    current_leader = current;
                }
                
                swap = FALSE;
            }
            else
            {
                lastcurrent = current;
                current = current.behind;
            }
            
        }
        else
        {
            lastcurrent = current;
            current = current.behind;
        }
        
    }
    
    current_frag = 1;
    current = lastcurrent;
    
    while(current != world)
    {
        current.frags = current_frag;
        lastcurrent = current;
        current = current.ahead;
        current_frag = current_frag + 1;
    }
    
    current_frag = 1;
    current = lastcurrent;
    
    while(current != world)
    {
        
        if(((current.position != current_frag) && (current.last_lap > 0)) && (current.classname == "player"))
        {
            if(current_frag == 1)
            {
                centerprint(current, "You are in the lead!");
            }
            else
            {
                if(current_frag == 2)
                {
                    centerprint(current, "You are in second place");
                }
                else
                {
                    if(current_frag == 3)
                    {
                        centerprint(current, "You are in third place");
                    }
                    else
                    {
                        if(current_frag == 4)
                        {
                            centerprint(current, "You are in fourth place");
                        }
                        else
                        {
                            if(current_frag == 5)
                            {
                                centerprint(current, "You are in fifth place");
                            }
                            else
                            {
                                if(current_frag == 6)
                                {
                                    centerprint(current, "You are in sixth place");
                                }
                                else
                                {
                                    if(current_frag == 7)
                                    {
                                        centerprint(current, "You are in seventh place");
                                    }
                                    else
                                    {
                                        
                                        if(current_frag == 8)
                                        {
                                            centerprint(current, "You are in eighth place");
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        current.position = current_frag;
        current = current.behind;
        current_frag = current_frag + 1;
    }
    
    self.nextthink = time + 1;
};

// BuildPlayerList
// function begins at statement 7748, parm_start=6609
// OP_STORE_V	30	4	0
// OP_STORE_V	627	7	0
// OP_STORE_V	1185	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	6609	0
// OP_STORE_ENT	6609	726	0
// OP_STORE_ENT	30	6610	0
// OP_NE_E	6609	30	6611
// OP_IFNOT	6611	14	0
// OP_ADDRESS	6609	667	6612
// OP_STOREP_ENT	6610	6612	0
// OP_NE_E	6610	30	6613
// OP_IFNOT	6613	3	0
// OP_ADDRESS	6610	668	6614
// OP_STOREP_ENT	6609	6614	0
// OP_STORE_ENT	6609	6610	0
// OP_STORE_V	6609	4	0
// OP_STORE_V	627	7	0
// OP_STORE_V	1185	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	6609	0
// OP_GOTO	-14	0	0
// OP_ADDRESS	6610	668	6615
// OP_STOREP_ENT	30	6615	0
// OP_LT	738	823	6616
// OP_IFNOT	6616	10	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	721	0
// OP_ADDRESS	721	129	6617
// OP_STOREP_S	6618	6617	0
// OP_ADDRESS	721	148	6619
// OP_STOREP_FNC	6492	6619	0
// OP_ADDRESS	721	150	6620
// OP_ADD_F	31	819	6621
// OP_STOREP_F	6621	6620	0
// OP_DONE	0	0	0
void () BuildPlayerList = 
{
    local entity current;
    local entity prev;
    current = find(world, is_racer, "yes");
    current_leader = current;
    prev = world;
    
    while(current != world)
    {
        current.ahead = prev;
        
        if(prev != world)
        {
        }
        
        prev = prev.behind = current;
        current = find(current, is_racer, "yes");
    }
    
    prev.behind = world;
    
    if(rally_type_index < 3)
    {
        positioner = spawn();
        positioner.classname = "positioner";
        positioner.think = SortPlayersByPosition;
        positioner.nextthink = time + 1;
    }
    
};

// PlaceRallyItem
// function begins at statement 7784, parm_start=6623
// OP_ADDRESS	28	182	6623
// OP_STOREP_F	227	6623	0
// OP_CALL0	492	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6624
// OP_ADD_V	6624	1215	6627
// OP_STORE_V	6627	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	104	6630
// OP_STOREP_F	244	6630	0
// OP_ADDRESS	28	103	6631
// OP_STOREP_F	233	6631	0
// OP_ADDRESS	28	113	6632
// OP_STOREP_V	926	6632	0
// OP_DONE	0	0	0
void () PlaceRallyItem = 
{
    self.flags = FL_ITEM;
    droptofloor();
    setorigin(self, self.origin + '0.000 0.000 1.000');
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0.000 0.000 0.000';
};

// StartRallyItem
// function begins at statement 7799, parm_start=6635
// OP_ADDRESS	28	150	6635
// OP_ADD_F	31	1152	6636
// OP_STOREP_F	6636	6635	0
// OP_ADDRESS	28	148	6637
// OP_STOREP_FNC	6622	6637	0
// OP_DONE	0	0	0
void () StartRallyItem = 
{
    self.nextthink = time + 0.2;
    self.think = PlaceRallyItem;
};

// boost_touch
// function begins at statement 7805, parm_start=6639
// OP_LOAD_S	29	129	6639
// OP_EQ_S	6639	880	6640
// OP_LOAD_S	29	129	6641
// OP_EQ_S	6641	1187	6642
// OP_OR	6640	6642	6643
// OP_NOT_F	6643	0	6644
// OP_IFNOT	6644	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	657	6645
// OP_SUB_F	31	803	6646
// OP_GT	6645	6646	6647
// OP_IFNOT	6647	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	113	6648
// OP_LOAD_V	29	113	6651
// OP_LOAD_V	29	113	6654
// OP_STORE_V	6654	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	158	6657
// OP_MUL_VF	1	6657	6658
// OP_ADD_V	6651	6658	6661
// OP_STOREP_V	6661	6648	0
// OP_LOAD_V	29	113	6664
// OP_STORE_V	6664	4	0
// OP_CALL1	471	0	0
// OP_GT	1	5033	6667
// OP_IFNOT	6667	7	0
// OP_ADDRESS	29	113	6668
// OP_LOAD_V	29	113	6671
// OP_STORE_V	6671	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	5033	6674
// OP_STOREP_V	6674	6668	0
// OP_ADDRESS	29	657	6677
// OP_STOREP_F	31	6677	0
// OP_DONE	0	0	0
void () boost_touch = 
{
    
    if(!((other.classname == "player") || (other.classname == "rally_bot")))
    {
        return;
    }
    
    
    if(other.last_boost > (time - SNDLEN_BOOST))
    {
        return;
    }
    
    other.velocity = other.velocity + (normalize(other.velocity) * self.ammo_shells);
    
    if(vlen(other.velocity) > 900)
    {
        other.velocity = normalize(other.velocity) * 900;
    }
    
    other.last_boost = time;
};

// rally_boost
// function begins at statement 7841, parm_start=6679
// OP_ADDRESS	28	146	6679
// OP_STOREP_FNC	6638	6679	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6680	7	0
// OP_STORE_V	6683	10	0
// OP_CALL3	464	0	0
// OP_CALL0	6053	0	0
// OP_DONE	0	0	0
void () rally_boost = 
{
    self.touch = boost_touch;
    setsize(self, '-96.000 -96.000 0.000', '96.000 96.000 256.000');
    StartRallyItem();
};

// rally_boost_brush
// function begins at statement 7849, parm_start=6687
// OP_ADDRESS	28	146	6687
// OP_STOREP_FNC	6638	6687	0
// OP_ADDRESS	28	104	6688
// OP_STOREP_F	244	6688	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6689
// OP_STORE_V	6689	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	6690
// OP_STOREP_F	233	6690	0
// OP_ADDRESS	28	93	6691
// OP_STOREP_F	817	6691	0
// OP_ADDRESS	28	130	6692
// OP_STOREP_S	4128	6692	0
// OP_ADDRESS	28	129	6693
// OP_STOREP_S	6694	6693	0
// OP_DONE	0	0	0
void () rally_boost_brush = 
{
    self.touch = boost_touch;
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0;
    self.model = "";
    self.classname = "rally_boost";
};

// rally_arrow
// function begins at statement 7866, parm_start=6696
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	6696	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	103	6699
// OP_STOREP_F	233	6699	0
// OP_ADDRESS	28	113	6700
// OP_STOREP_V	926	6700	0
// OP_DONE	0	0	0
void () rally_arrow = 
{
    setsize(self, '0.000 0.000 0.000', '64.000 32.000 32.000');
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0.000 0.000 0.000';
};

// bot_marker_touch
// function begins at statement 7875, parm_start=6704
// OP_LOAD_S	29	129	6704
// OP_NE_S	6704	1187	6705
// OP_LOAD_F	29	644	6706
// OP_BITAND	6706	690	6707
// OP_OR	6705	6707	6708
// OP_IFNOT	6708	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	194	6709
// OP_EQ_E	6709	28	6710
// OP_IFNOT	6710	5	0
// OP_ADDRESS	29	194	6711
// OP_STORE_V	29	4	0
// OP_CALL1	537	0	0
// OP_STOREP_ENT	1	6711	0
// OP_ADDRESS	28	104	6712
// OP_STOREP_F	244	6712	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6713
// OP_STORE_V	6713	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () bot_marker_touch = 
{
    
    if((other.classname != "rally_bot") || (other.racing_flags & QR_NOT_RACING))
    {
        return;
    }
    
    
    if(other.goalentity == self)
    {
        other.goalentity = FindGoalMarker(other);
    }
    
    self.solid = SOLID_TRIGGER;
    setorigin(self, self.origin);
};

// rally_bot_marker
// function begins at statement 7896, parm_start=6717
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADD_F	733	819	6723
// OP_STORE_F	6723	733	0
// OP_CALL0	6053	0	0
// OP_DONE	0	0	0
void () rally_bot_marker = 
{
    local vector min;
    local vector max;
    setsize(self, '0.000 0.000 0.000', '0.000 0.000 0.000');
    num_markers = num_markers + 1;
    StartRallyItem();
};

// rally_bot_marker_brush
// function begins at statement 7904, parm_start=6725
// OP_ADDRESS	28	146	6725
// OP_STOREP_FNC	6703	6725	0
// OP_ADD_F	733	819	6726
// OP_STORE_F	6726	733	0
// OP_ADDRESS	28	104	6727
// OP_STOREP_F	244	6727	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6728
// OP_STORE_V	6728	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	6729
// OP_STOREP_F	233	6729	0
// OP_ADDRESS	28	93	6730
// OP_STOREP_F	817	6730	0
// OP_ADDRESS	28	130	6731
// OP_STOREP_S	4128	6731	0
// OP_ADDRESS	28	129	6732
// OP_STOREP_S	6733	6732	0
// OP_DONE	0	0	0
void () rally_bot_marker_brush = 
{
    self.touch = bot_marker_touch;
    num_markers = num_markers + 1;
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0;
    self.model = "";
    self.classname = "rally_bot_marker";
};

// jump_touch
// function begins at statement 7923, parm_start=6735
// OP_LOAD_S	29	129	6735
// OP_NE_S	6735	880	6736
// OP_LOAD_S	29	129	6737
// OP_NE_S	6737	1187	6738
// OP_AND	6736	6738	6739
// OP_IFNOT	6739	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	620	6740
// OP_STOREP_F	31	6740	0
// OP_ADDRESS	28	104	6741
// OP_STOREP_F	244	6741	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6742
// OP_STORE_V	6742	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () jump_touch = 
{
    
    if((other.classname != "player") && (other.classname != "rally_bot"))
    {
        return;
    }
    
    other.last_jump_touch = time;
    self.solid = SOLID_TRIGGER;
    setorigin(self, self.origin);
};

// rally_jump
// function begins at statement 7939, parm_start=6746
// OP_LOAD_S	30	130	6746
// OP_EQ_S	6746	1946	6747
// OP_IFNOT	6747	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	6748
// OP_STOREP_FNC	6734	6748	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6749	7	0
// OP_STORE_V	6752	10	0
// OP_CALL3	464	0	0
// OP_CALL0	6053	0	0
// OP_DONE	0	0	0
void () rally_jump = 
{
    
    if(world.model == "maps/qrally02.bsp")
    {
        remove(self);
        return;
    }
    
    self.touch = jump_touch;
    setsize(self, '-32.000 -32.000 0.000', '32.000 32.000 16.000');
    StartRallyItem();
};

// rally_jump_brush
// function begins at statement 7953, parm_start=6756
// OP_ADDRESS	28	146	6756
// OP_STOREP_FNC	6734	6756	0
// OP_ADDRESS	28	104	6757
// OP_STOREP_F	244	6757	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6758
// OP_STORE_V	6758	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	6759
// OP_STOREP_F	233	6759	0
// OP_ADDRESS	28	93	6760
// OP_STOREP_F	817	6760	0
// OP_ADDRESS	28	130	6761
// OP_STOREP_S	4128	6761	0
// OP_ADDRESS	28	129	6762
// OP_STOREP_S	6763	6762	0
// OP_DONE	0	0	0
void () rally_jump_brush = 
{
    self.touch = jump_touch;
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0;
    self.model = "";
    self.classname = "rally_jump";
};

void () rally_cone;
void () cone_touch;
// cone_think
// function begins at statement 7970, parm_start=6767
// OP_ADDRESS	28	104	6768
// OP_STOREP_F	244	6768	0
// OP_ADDRESS	28	182	6769
// OP_STOREP_F	227	6769	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6770
// OP_STORE_V	6770	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () cone_think = 
{
    local entity new_cone;
    self.solid = SOLID_TRIGGER;
    self.flags = FL_ITEM;
    setorigin(self, self.origin);
};

// cone_touch
// function begins at statement 7979, parm_start=6773
// OP_LOAD_S	29	129	6776
// OP_EQ_S	6776	880	6777
// OP_LOAD_S	29	129	6778
// OP_EQ_S	6778	1187	6779
// OP_OR	6777	6779	6780
// OP_NOT_F	6780	0	6781
// OP_IFNOT	6781	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	113	6782
// OP_EQ_V	6782	926	6785
// OP_IFNOT	6785	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	105	6786
// OP_LOAD_V	29	555	6789
// OP_MUL_VF	6789	3330	6792
// OP_SUB_V	6786	6792	6795
// OP_STORE_V	6795	6773	0
// OP_LOAD_V	28	105	6798
// OP_SUB_V	6798	6773	6801
// OP_STORE_V	6801	4	0
// OP_CALL1	471	0	0
// OP_GT	1	2223	6804
// OP_IFNOT	6804	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	6805	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	113	6806
// OP_LOAD_V	29	113	6809
// OP_MUL_VF	6809	883	6812
// OP_STOREP_V	6812	6806	0
// OP_ADDRESS	28	116	6815
// OP_STOREP_F	4760	6815	0
// OP_ADDRESS	28	122	6816
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6817
// OP_STOREP_F	6817	6816	0
// OP_ADDRESS	28	123	6818
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6819
// OP_STOREP_F	6819	6818	0
// OP_ADDRESS	28	124	6820
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6821
// OP_STOREP_F	6821	6820	0
// OP_ADDRESS	28	103	6822
// OP_STOREP_F	241	6822	0
// OP_ADDRESS	28	104	6823
// OP_STOREP_F	243	6823	0
// OP_ADDRESS	28	182	6824
// OP_STOREP_F	817	6824	0
// OP_ADDRESS	28	148	6825
// OP_STOREP_FNC	6766	6825	0
// OP_ADDRESS	28	150	6826
// OP_ADD_F	31	821	6827
// OP_STOREP_F	6827	6826	0
// OP_DONE	0	0	0
void () cone_touch = 
{
    local vector pos;
    
    if(!((other.classname == "player") || (other.classname == "rally_bot")))
    {
        return;
    }
    
    
    if(other.velocity == '0.000 0.000 0.000')
    {
        return;
    }
    
    pos = other.origin - (other.veh_dir * 48);
    
    if((vlen(self.origin - pos)) > 64)
    {
        return;
    }
    
    sound(self, CHAN_AUTO, "rally/process/htcone01.wav", 1, ATTN_STATIC);
    self.velocity = other.velocity * 1.5;
    self.velocity_z = 200;
    self.avelocity_x = random() * 500;
    self.avelocity_y = random() * 500;
    self.avelocity_z = random() * 500;
    self.movetype = MOVETYPE_BOUNCE;
    self.solid = SOLID_NOT;
    self.flags = 0;
    self.think = cone_think;
    self.nextthink = time + 2;
};

// rally_cone
// function begins at statement 8039, parm_start=6828
// OP_ADDRESS	28	146	6828
// OP_STOREP_FNC	6765	6828	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	1666	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	113	6829
// OP_STOREP_V	926	6829	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6832	7	0
// OP_CALL2	463	0	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	6833
// OP_IFNOT	6833	11	0
// OP_STORE_V	6834	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	6835
// OP_STORE_V	6835	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6838
// OP_SUB_V	6838	1666	6841
// OP_STORE_V	6841	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	103	6844
// OP_STOREP_F	233	6844	0
// OP_ADDRESS	28	104	6845
// OP_STOREP_F	244	6845	0
// OP_ADDRESS	28	182	6846
// OP_STOREP_F	227	6846	0
// OP_DONE	0	0	0
void () rally_cone = 
{
    self.touch = cone_touch;
    setsize(self, '0.000 0.000 0.000', '0.000 0.000 8.000');
    self.velocity = '0.000 0.000 0.000';
    setmodel(self, "models/cone.mdl");
    if(!droptofloor())
    {
        dprint("cone fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    else
    {
        setorigin(self, self.origin - '0.000 0.000 8.000');
    }
    
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_TRIGGER;
    self.flags = FL_ITEM;
};

// rally_baracade
// function begins at statement 8075, parm_start=6848
// OP_ADDRESS	28	146	6848
// OP_STOREP_FNC	6765	6848	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	6852	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	113	6855
// OP_STOREP_V	926	6855	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6858	7	0
// OP_CALL2	463	0	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	6859
// OP_IFNOT	6859	11	0
// OP_STORE_V	6860	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	6861
// OP_STORE_V	6861	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6864
// OP_SUB_V	6864	1666	6867
// OP_STORE_V	6867	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	103	6870
// OP_STOREP_F	233	6870	0
// OP_ADDRESS	28	104	6871
// OP_STOREP_F	244	6871	0
// OP_ADDRESS	28	182	6872
// OP_STOREP_F	227	6872	0
// OP_DONE	0	0	0
void () rally_baracade = 
{
    self.touch = cone_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 8.000');
    self.velocity = '0.000 0.000 0.000';
    setmodel(self, "models/baracade.mdl");
    if(!droptofloor())
    {
        dprint("baracade fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    else
    {
        setorigin(self, self.origin - '0.000 0.000 8.000');
    }
    
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_TRIGGER;
    self.flags = FL_ITEM;
};

// changesurface_touch
// function begins at statement 8111, parm_start=6874
// OP_LOAD_S	29	627	6874
// OP_NE_S	6874	1185	6875
// OP_IFNOT	6875	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	610	6876
// OP_LOAD_F	28	610	6877
// OP_STOREP_F	6877	6876	0
// OP_DONE	0	0	0
void () changesurface_touch = 
{
    
    if(other.is_racer != "yes")
    {
        return;
    }
    
    other.current_surface = self.current_surface;
};

// rally_changesurface
// function begins at statement 8119, parm_start=6879
// OP_LOAD_F	28	378	6885
// OP_EQ_F	6885	817	6886
// OP_IFNOT	6886	3	0
// OP_ADDRESS	28	378	6887
// OP_STOREP_F	6067	6887	0
// OP_LOAD_F	28	378	6888
// OP_MUL_VF	6068	6888	6889
// OP_STORE_V	6889	6879	0
// OP_STORE_F	6075	6881	0
// OP_LOAD_F	28	378	6892
// OP_MUL_VF	6076	6892	6893
// OP_STORE_V	6893	6882	0
// OP_STORE_F	2670	6884	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6879	7	0
// OP_STORE_V	6882	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	146	6896
// OP_STOREP_FNC	6873	6896	0
// OP_CALL0	6053	0	0
// OP_DONE	0	0	0
void () rally_changesurface = 
{
    local vector min;
    local vector max;
    
    if(self.speed == 0)
    {
        self.speed = 128;
    }
    
    min = '-1.000 -1.000 0.000' * self.speed;
    min_z = -24;
    max = '1.000 1.000 0.000' * self.speed;
    max_z = 16;
    setsize(self, min, max);
    self.touch = changesurface_touch;
    StartRallyItem();
};

// rally_changesurface_brush
// function begins at statement 8140, parm_start=6898
// OP_ADDRESS	28	146	6898
// OP_STOREP_FNC	6873	6898	0
// OP_ADDRESS	28	104	6899
// OP_STOREP_F	244	6899	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6900
// OP_STORE_V	6900	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	103	6901
// OP_STOREP_F	233	6901	0
// OP_ADDRESS	28	93	6902
// OP_STOREP_F	817	6902	0
// OP_ADDRESS	28	130	6903
// OP_STOREP_S	4128	6903	0
// OP_ADDRESS	28	129	6904
// OP_STOREP_S	6905	6904	0
// OP_DONE	0	0	0
void () rally_changesurface_brush = 
{
    self.touch = changesurface_touch;
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = 0;
    self.model = "";
    self.classname = "rally_changesurface";
};

// monster_hell_knight
// function begins at statement 8157, parm_start=6907
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_hell_knight = 
{
    return;
};

// monster_fish
// function begins at statement 8159, parm_start=6908
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_fish = 
{
    return;
};

// monster_tarbaby
// function begins at statement 8161, parm_start=6909
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_tarbaby = 
{
    return;
};

// monster_shalrath
// function begins at statement 8163, parm_start=6910
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_shalrath = 
{
    return;
};

// monster_enforcer
// function begins at statement 8165, parm_start=6911
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_enforcer = 
{
    return;
};

// CreditsThink
// function begins at statement 8167, parm_start=6912
// OP_LOAD_F	28	161	6912
// OP_EQ_F	6912	819	6913
// OP_IFNOT	6913	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6914	7	0
// OP_CALL2	520	0	0
// OP_GOTO	39	0	0
// OP_LOAD_F	28	161	6915
// OP_EQ_F	6915	821	6916
// OP_IFNOT	6916	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6917	7	0
// OP_CALL2	520	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	161	6918
// OP_EQ_F	6918	823	6919
// OP_IFNOT	6919	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6920	7	0
// OP_CALL2	520	0	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	161	6921
// OP_EQ_F	6921	825	6922
// OP_IFNOT	6922	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6923	7	0
// OP_CALL2	520	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	161	6924
// OP_EQ_F	6924	827	6925
// OP_IFNOT	6925	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6926	7	0
// OP_CALL2	520	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	161	6927
// OP_EQ_F	6927	829	6928
// OP_IFNOT	6928	5	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6929	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	744	4	0
// OP_STORE_V	6930	7	0
// OP_CALL2	520	0	0
// OP_LOAD_F	28	647	6931
// OP_ADD_F	6931	827	6932
// OP_LT	6932	31	6933
// OP_IFNOT	6933	7	0
// OP_ADDRESS	28	161	6934
// OP_LOAD_F	28	161	6935
// OP_ADD_F	6935	819	6936
// OP_STOREP_F	6936	6934	0
// OP_ADDRESS	28	647	6937
// OP_STOREP_F	31	6937	0
// OP_ADDRESS	28	150	6938
// OP_ADD_F	31	1182	6939
// OP_STOREP_F	6939	6938	0
// OP_DONE	0	0	0
void () CreditsThink = 
{
    if(self.ammo_cells == 1)
    {
        centerprint(server_client, "-----------------------\nQ u a k e   R a l l y\n-----------------------\n\n.. Coming soon ..");
    }
    else
    {
        if(self.ammo_cells == 2)
        {
            centerprint(server_client, ".. Programming and Concept ..\n\nRidah");
        }
        else
        {
            if(self.ammo_cells == 3)
            {
                centerprint(server_client, ".. Modelling and Artwork ..\n\nSumaleth\nB-MonEy\nRidah\nJason C Paterson");
            }
            else
            {
                if(self.ammo_cells == 4)
                {
                    centerprint(server_client, ".. Tracks ..\n\nRidah\nSumaleth\nSteve Towle\n[jD]");
                }
                else
                {
                    if(self.ammo_cells == 5)
                    {
                        centerprint(server_client, ".. Sounds ..\n\nRidah\nBig Daddy Kane");
                    }
                    else
                    {
                        if(self.ammo_cells == 6)
                        {
                            centerprint(server_client, ".. Special Thanks to ..\n\nDaKiller\nDru");
                        }
                        else
                        {
                            centerprint(server_client, "For the latest information on QuakeRally,\ndon't forget to check:\n\nhttp://www.frag.com/quakerally\n\nfor daily progress updates");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if((self.last_idle + 5) < time)
    {
        self.ammo_cells = self.ammo_cells + 1;
        self.last_idle = time;
    }
    
    self.nextthink = time + 0.5;
};

// StartDemoCredits
// function begins at statement 8226, parm_start=6940
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	6940	0
// OP_ADDRESS	6940	148	6941
// OP_STOREP_FNC	6911	6941	0
// OP_ADDRESS	6940	150	6942
// OP_ADD_F	31	819	6943
// OP_STOREP_F	6943	6942	0
// OP_ADDRESS	6940	647	6944
// OP_STOREP_F	31	6944	0
// OP_ADDRESS	6940	158	6945
// OP_STOREP_F	819	6945	0
// OP_ADDRESS	6940	161	6946
// OP_STOREP_F	819	6946	0
// OP_DONE	0	0	0
void () StartDemoCredits = 
{
    local entity e_credits;
    e_credits = spawn();
    e_credits.think = CreditsThink;
    e_credits.nextthink = time + 1;
    e_credits.last_idle = time;
    e_credits.ammo_shells = 1;
    e_credits.ammo_cells = 1;
};

// bounce_object
// function begins at statement 8240, parm_start=6948
// OP_LOAD_V	29	105	6951
// OP_LOAD_V	29	555	6954
// OP_MUL_VF	6954	3330	6957
// OP_SUB_V	6951	6957	6960
// OP_STORE_V	6960	6948	0
// OP_LOAD_V	28	105	6963
// OP_SUB_V	6963	6948	6966
// OP_STORE_V	6966	4	0
// OP_CALL1	471	0	0
// OP_GT	1	2223	6969
// OP_IFNOT	6969	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	113	6970
// OP_LOAD_V	29	113	6973
// OP_MUL_VF	6973	883	6976
// OP_STOREP_V	6976	6970	0
// OP_ADDRESS	28	116	6979
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	6980
// OP_ADD_F	6980	1182	6981
// OP_MUL_F	1135	6981	6982
// OP_STOREP_F	6982	6979	0
// OP_ADDRESS	28	122	6983
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6984
// OP_STOREP_F	6984	6983	0
// OP_ADDRESS	28	123	6985
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6986
// OP_STOREP_F	6986	6985	0
// OP_ADDRESS	28	124	6987
// OP_CALL0	466	0	0
// OP_MUL_F	1	1820	6988
// OP_STOREP_F	6988	6987	0
// OP_ADDRESS	28	103	6989
// OP_STOREP_F	241	6989	0
// OP_ADDRESS	28	104	6990
// OP_STOREP_F	243	6990	0
// OP_ADDRESS	28	182	6991
// OP_STOREP_F	817	6991	0
// OP_ADDRESS	28	148	6992
// OP_STOREP_FNC	6766	6992	0
// OP_ADDRESS	28	150	6993
// OP_ADD_F	31	821	6994
// OP_STOREP_F	6994	6993	0
// OP_DONE	0	0	0
void () bounce_object = 
{
    local vector pos;
    pos = other.origin - (other.veh_dir * 48);
    
    if((vlen(self.origin - pos)) > 64)
    {
        return;
    }
    
    self.velocity = other.velocity * 1.5;
    self.velocity_z = 250 * ((random() * 0.5) + 0.5);
    self.avelocity_x = random() * 500;
    self.avelocity_y = random() * 500;
    self.avelocity_z = random() * 500;
    self.movetype = MOVETYPE_BOUNCE;
    self.solid = SOLID_NOT;
    self.flags = 0;
    self.think = cone_think;
    self.nextthink = time + 2;
};

// stopsign_touch
// function begins at statement 8286, parm_start=6996
// OP_LOAD_S	29	129	6998
// OP_EQ_S	6998	880	6999
// OP_LOAD_S	29	129	7000
// OP_EQ_S	7000	1187	7001
// OP_OR	6999	7001	7002
// OP_NOT_F	7002	0	7003
// OP_IFNOT	7003	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	113	7004
// OP_EQ_V	7004	926	7007
// OP_IFNOT	7007	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	113	7008
// OP_STORE_V	7008	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	778	821	7011
// OP_LT	1	7011	7012
// OP_IFNOT	7012	12	0
// OP_ADDRESS	28	117	7013
// OP_LOAD_V	29	113	7016
// OP_MUL_FV	1228	7016	7019
// OP_STORE_V	7019	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	7013	0
// OP_ADDRESS	28	118	7022
// OP_STOREP_F	7023	7022	0
// OP_ADDRESS	28	104	7024
// OP_STOREP_F	243	7024	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	6805	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_STORE_ENT	28	6997	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	6997	105	7025
// OP_ADD_V	7025	7028	7031
// OP_STORE_V	7031	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7034	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	146	7035
// OP_STOREP_FNC	6765	7035	0
// OP_CALL0	6947	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	6996	0
// OP_ADDRESS	6996	129	7036
// OP_STOREP_S	7037	7036	0
// OP_ADDRESS	6996	117	7038
// OP_LOAD_V	6997	117	7041
// OP_STOREP_V	7041	7038	0
// OP_STORE_V	6996	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	1666	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	6996	4	0
// OP_LOAD_V	28	105	7044
// OP_STORE_V	7044	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	6996	4	0
// OP_STORE_V	7047	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	6996	117	7048
// OP_LOAD_V	28	117	7051
// OP_ADD_V	7051	7054	7057
// OP_STOREP_V	7057	7048	0
// OP_DONE	0	0	0
void () stopsign_touch = 
{
    local entity part;
    local entity oldself;
    
    if(!((other.classname == "player") || (other.classname == "rally_bot")))
    {
        return;
    }
    
    
    if(other.velocity == '0.000 0.000 0.000')
    {
        return;
    }
    
    
    if(vlen(other.velocity) < (MAX_SPEED / 2))
    {
        self.angles = vectoangles(-1 * other.velocity);
        self.angles_x = 90;
        self.solid = SOLID_NOT;
        return;
    }
    
    sound(self, CHAN_AUTO, "rally/process/htcone01.wav", 1, ATTN_STATIC);
    oldself = self;
    setorigin(self, oldself.origin + '0.000 0.000 32.000');
    setmodel(self, "models/stoptop.mdl");
    self.touch = cone_touch;
    bounce_object();
    part = spawn();
    part.classname = "rally_stoppost";
    part.angles = oldself.angles;
    setsize(part, '0.000 0.000 0.000', '0.000 0.000 8.000');
    setorigin(part, self.origin);
    setmodel(part, "models/stoppost.mdl");
    part.angles = self.angles + '90.000 0.000 0.000';
};

// rally_stopsign
// function begins at statement 8356, parm_start=7061
// OP_ADDRESS	28	146	7061
// OP_STOREP_FNC	6995	7061	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	1666	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	113	7062
// OP_STOREP_V	926	7062	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7065	7	0
// OP_CALL2	463	0	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	7066
// OP_IFNOT	7066	11	0
// OP_STORE_V	7067	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	7068
// OP_STORE_V	7068	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7071
// OP_SUB_V	7071	1666	7074
// OP_STORE_V	7074	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	103	7077
// OP_STOREP_F	233	7077	0
// OP_ADDRESS	28	104	7078
// OP_STOREP_F	244	7078	0
// OP_ADDRESS	28	182	7079
// OP_STOREP_F	227	7079	0
// OP_DONE	0	0	0
void () rally_stopsign = 
{
    self.touch = stopsign_touch;
    setsize(self, '0.000 0.000 0.000', '0.000 0.000 8.000');
    self.velocity = '0.000 0.000 0.000';
    setmodel(self, "models/stopsign.mdl");
    if(!droptofloor())
    {
        dprint("Stopsign fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    else
    {
        setorigin(self, self.origin - '0.000 0.000 8.000');
    }
    
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_TRIGGER;
    self.flags = FL_ITEM;
};

// rally_type
// function begins at statement 8392, parm_start=7081
// OP_RETURN	0	0	0
// OP_LOAD_F	28	644	7082
// OP_BITAND	7082	701	7083
// OP_IFNOT	7083	3	0
// OP_BITOR	723	701	7084
// OP_STORE_F	7084	723	0
// OP_LOAD_S	28	687	7085
// OP_EQ_S	7085	7086	7087
// OP_IFNOT	7087	7	0
// OP_LT	37	834	7088
// OP_GT	37	837	7089
// OP_OR	7088	7089	7090
// OP_IFNOT	7090	2	0
// OP_STORE_F	819	738	0
// OP_GOTO	32	0	0
// OP_LOAD_S	28	687	7091
// OP_EQ_S	7091	7092	7093
// OP_IFNOT	7093	7	0
// OP_LT	37	831	7094
// OP_GT	37	837	7095
// OP_OR	7094	7095	7096
// OP_IFNOT	7096	2	0
// OP_STORE_F	821	738	0
// OP_GOTO	23	0	0
// OP_LOAD_S	28	687	7097
// OP_EQ_S	7097	7098	7099
// OP_IFNOT	7099	3	0
// OP_STORE_F	823	738	0
// OP_GOTO	18	0	0
// OP_LOAD_S	28	687	7100
// OP_EQ_S	7100	7101	7102
// OP_IFNOT	7102	4	0
// OP_STORE_F	825	738	0
// OP_STORE_F	817	743	0
// OP_GOTO	12	0	0
// OP_LOAD_S	28	687	7103
// OP_EQ_S	7103	7104	7105
// OP_IFNOT	7105	3	0
// OP_STORE_F	827	738	0
// OP_GOTO	7	0	0
// OP_LOAD_S	28	687	7106
// OP_EQ_S	7106	7107	7108
// OP_IFNOT	7108	4	0
// OP_NE_F	37	837	7109
// OP_IFNOT	7109	2	0
// OP_STORE_F	829	738	0
// OP_GT	738	855	7110
// OP_IFNOT	7110	3	0
// OP_SUB_F	738	855	7111
// OP_STORE_F	7111	738	0
// OP_DONE	0	0	0
void () rally_type = 
{
    local entity type_ent;
    return;
    
    if(self.racing_flags & QR_NO_SIDEWAYS_ROLL)
    {
        global_racing_flags = global_racing_flags | QR_NO_SIDEWAYS_ROLL;
    }
    
    if(self.race_type == "racing")
    {
        
        if((teamplay < 12) || (teamplay > 13))
        {
            rally_type_index = 1;
        }
        
    }
    else
    {
        if(self.race_type == "racing_dm")
        {
            
            if((teamplay < 11) || (teamplay > 13))
            {
                rally_type_index = 2;
            }
            
        }
        else
        {
            if(self.race_type == "dm")
            {
                rally_type_index = 3;
            }
            else
            {
                if(self.race_type == "cult_kill")
                {
                    rally_type_index = 4;
                    cult_kills = 0;
                }
                else
                {
                    if(self.race_type == "gib_duke")
                    {
                        rally_type_index = 5;
                    }
                    else
                    {
                        
                        if(self.race_type == "last_man")
                        {
                            
                            if(teamplay != 13)
                            {
                                rally_type_index = 6;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(rally_type_index > 10)
    {
        rally_type_index = rally_type_index - 10;
    }
    
};

// rally_observer_cam
// function begins at statement 8443, parm_start=7113
// OP_NE_E	741	30	7113
// OP_IFNOT	7113	8	0
// OP_ADDRESS	741	667	7114
// OP_STOREP_ENT	28	7114	0
// OP_ADDRESS	28	668	7115
// OP_STOREP_ENT	741	7115	0
// OP_ADDRESS	28	667	7116
// OP_STOREP_ENT	742	7116	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	28	742	0
// OP_ADDRESS	742	668	7117
// OP_STOREP_ENT	28	7117	0
// OP_STORE_ENT	28	741	0
// OP_DONE	0	0	0
void () rally_observer_cam = 
{
    if(last_observer_cam != world)
    {
        last_observer_cam.ahead = self;
        self.behind = last_observer_cam;
        self.ahead = first_observer_cam;
    }
    else
    {
        first_observer_cam = self;
    }
    
    last_observer_cam = first_observer_cam.behind = self;
};

// GetObserverSpot
// function begins at statement 8457, parm_start=7119
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7120	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7119	0
// OP_EQ_E	7119	30	7121
// OP_IFNOT	7121	6	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7122	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7119	0
// OP_EQ_E	7119	30	7123
// OP_IFNOT	7123	6	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7124	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7119	0
// OP_RETURN	7119	0	0
// OP_DONE	0	0	0
entity () GetObserverSpot = 
{
    local entity spot;
    spot = find(world, classname, "rally_observer_cam");
    
    if(spot == world)
    {
        spot = find(world, classname, "info_deathmatch_start");
    }
    
    
    if(spot == world)
    {
        spot = find(world, classname, "info_player_start");
    }
    
    return spot;
};

// SetObserverSpot
// function begins at statement 8478, parm_start=7126
// OP_EQ_F	7127	817	7131
// OP_IFNOT	7131	5	0
// OP_ADDRESS	7126	625	7132
// OP_CALL0	7118	0	0
// OP_STOREP_ENT	1	7132	0
// OP_GOTO	37	0	0
// OP_LOAD_ENT	7126	625	7133
// OP_LOAD_S	7133	129	7134
// OP_NE_S	7134	7120	7135
// OP_IFNOT	7135	2	0
// OP_RETURN	0	0	0
// OP_GT	7127	817	7136
// OP_IFNOT	7136	15	0
// OP_LOAD_ENT	7126	625	7137
// OP_LOAD_ENT	7137	667	7138
// OP_NE_E	7138	30	7139
// OP_IFNOT	7139	6	0
// OP_ADDRESS	7126	625	7140
// OP_LOAD_ENT	7126	625	7141
// OP_LOAD_ENT	7141	667	7142
// OP_STOREP_ENT	7142	7140	0
// OP_GOTO	5	0	0
// OP_STORE_V	7126	4	0
// OP_STORE_V	7143	7	0
// OP_CALL2	483	0	0
// OP_RETURN	0	0	0
// OP_GOTO	16	0	0
// OP_LT	7127	817	7144
// OP_IFNOT	7144	14	0
// OP_LOAD_ENT	7126	625	7145
// OP_LOAD_ENT	7145	668	7146
// OP_NE_E	7146	30	7147
// OP_IFNOT	7147	6	0
// OP_ADDRESS	7126	625	7148
// OP_LOAD_ENT	7126	625	7149
// OP_LOAD_ENT	7149	668	7150
// OP_STOREP_ENT	7150	7148	0
// OP_GOTO	5	0	0
// OP_STORE_V	7126	4	0
// OP_STORE_V	7143	7	0
// OP_CALL2	483	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	7126	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	745	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_ENT	7126	625	7151
// OP_STORE_V	7151	7	0
// OP_CALL2	514	0	0
// OP_ADDRESS	7126	117	7152
// OP_ADDRESS	7126	175	7155
// OP_LOAD_ENT	7126	625	7158
// OP_LOAD_V	7158	117	7159
// OP_STOREP_V	7159	7155	0
// OP_STOREP_V	7159	7152	0
// OP_ADDRESS	7126	174	7162
// OP_STOREP_F	219	7162	0
// OP_DONE	0	0	0
void (entity plyr, float dir) SetObserverSpot = 
{
    local vector org;
    if(dir == 0)
    {
        plyr.chasecam = GetObserverSpot();
    }
    else
    {
        
        if(plyr.chasecam.classname != "rally_observer_cam")
        {
            return;
        }
        
        if(dir > 0)
        {
            if(plyr.chasecam.ahead != world)
            {
                plyr.chasecam = plyr.chasecam.ahead;
            }
            else
            {
                sprint(plyr, "Unable to change to that camera\n");
                return;
            }
            
        }
        else
        {
            
            if(dir < 0)
            {
                if(plyr.chasecam.behind != world)
                {
                    plyr.chasecam = plyr.chasecam.behind;
                }
                else
                {
                    sprint(plyr, "Unable to change to that camera\n");
                    return;
                }
                
            }
            
        }
        
    }
    
    msg_entity = plyr;
    WriteByte(MSG_ONE, SVC_SETVIEWPORT);
    WriteEntity(MSG_ONE, plyr.chasecam);
    plyr.angles = plyr.v_angle = plyr.chasecam.angles;
    plyr.fixangle = TRUE;
};

// rally_starter
// function begins at statement 8537, parm_start=7164
// OP_STORE_V	7164	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	113	7165
// OP_STOREP_V	926	7165	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7164	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	132	7168
// OP_STOREP_F	823	7168	0
// OP_ADDRESS	28	103	7169
// OP_STOREP_F	233	7169	0
// OP_ADDRESS	28	104	7170
// OP_STOREP_F	243	7170	0
// OP_DONE	0	0	0
void () rally_starter = 
{
    precache_model("models/starter.mdl");
    setsize(self, '0.000 0.000 0.000', '0.000 0.000 0.000');
    self.velocity = '0.000 0.000 0.000';
    setmodel(self, "models/starter.mdl");
    self.skin = 3;
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
};

void () ammo_touch;
void () weapon_touch;
// RemoveAllWeaponItems
// function begins at statement 8555, parm_start=7174
// OP_STORE_V	30	4	0
// OP_CALL1	503	0	0
// OP_STORE_ENT	1	7174	0
// OP_NE_E	7174	30	7176
// OP_IFNOT	7176	19	0
// OP_LOAD_F	7174	154	7177
// OP_NE_F	7177	817	7178
// OP_LOAD_F	7174	182	7179
// OP_BITAND	7179	222	7180
// OP_NOT_F	7180	0	7181
// OP_AND	7178	7181	7182
// OP_IFNOT	7182	8	0
// OP_STORE_ENT	7174	7175	0
// OP_STORE_V	7174	4	0
// OP_CALL1	503	0	0
// OP_STORE_ENT	1	7174	0
// OP_STORE_V	7175	4	0
// OP_CALL1	474	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	7174	4	0
// OP_CALL1	503	0	0
// OP_STORE_ENT	1	7174	0
// OP_GOTO	-19	0	0
// OP_DONE	0	0	0
void () RemoveAllWeaponItems = 
{
    local entity ent;
    local entity last;
    ent = nextent(world);
    
    while(ent != world)
    {
        if((ent.weapon != 0) && (!(ent.flags & FL_CLIENT)))
        {
            last = ent;
            ent = nextent(ent);
            remove(last);
        }
        else
        {
            ent = nextent(ent);
        }
        
    }
    
};

// CultIntroThink
// function begins at statement 8579, parm_start=7184
// OP_LOAD_ENT	28	201	7184
// OP_LOAD_F	7184	170	7185
// OP_LOAD_F	28	647	7186
// OP_SUB_F	31	834	7187
// OP_LT	7186	7187	7188
// OP_OR	7185	7188	7189
// OP_IFNOT	7189	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	7190
// OP_STORE_V	7190	4	0
// OP_STORE_V	7191	7	0
// OP_CALL2	520	0	0
// OP_ADDRESS	28	150	7192
// OP_ADD_F	31	2575	7193
// OP_STOREP_F	7193	7192	0
// OP_DONE	0	0	0
void () CultIntroThink = 
{
    
    if(self.owner.button0 || (self.last_idle < (time - 12)))
    {
        remove(self);
        return;
    }
    
    centerprint(self.owner, "- Boss Stage -\n\nYou have reached the final\nstage, Kill the Cult! There\nare 20 Duke cult members,\nyou have 5 cars to destroy them\nall. Should you fail, Duke power\nwill take over the world and\ndestroy the entire Quake\ncommunity. Get the picture?");
    self.nextthink = time + 0.3;
};

// WaterScreenThink
// function begins at statement 8597, parm_start=7195
// OP_ADDRESS	28	378	7196
// OP_LOAD_F	28	378	7197
// OP_SUB_F	7197	2611	7198
// OP_STOREP_F	7198	7196	0
// OP_LOAD_F	28	378	7199
// OP_LT	7199	817	7200
// OP_IFNOT	7200	8	0
// OP_LOAD_ENT	28	201	7201
// OP_STORE_V	7201	4	0
// OP_STORE_V	7202	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	378	7203
// OP_STORE_V	7203	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	7195	0
// OP_LOAD_ENT	28	201	7204
// OP_STORE_V	7204	4	0
// OP_STORE_V	7205	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	201	7206
// OP_STORE_V	7206	4	0
// OP_STORE_V	7195	7	0
// OP_CALL2	480	0	0
// OP_LOAD_ENT	28	201	7207
// OP_STORE_V	7207	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	150	7208
// OP_ADD_F	31	819	7209
// OP_STOREP_F	7209	7208	0
// OP_DONE	0	0	0
void () WaterScreenThink = 
{
    local string str;
    self.speed = self.speed - 50;
    
    if(self.speed < 0)
    {
        stuffcmd(self.owner, "v_cshift 0 0 0 0\n");
        remove(self);
        return;
    }
    
    str = ftos(self.speed);
    stuffcmd(self.owner, "v_cshift 0 0 64 ");
    stuffcmd(self.owner, str);
    stuffcmd(self.owner, "\n");
    self.nextthink = time + 1;
};

