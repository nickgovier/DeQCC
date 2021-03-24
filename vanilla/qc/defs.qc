entity self;
entity other;
entity world;
float time;
float frametime;
float force_retouch;
string mapname;
float deathmatch;
float coop;
float teamplay;
float serverflags;
float total_secrets;
float total_monsters;
float found_secrets;
float killed_monsters;
float parm1;
float parm2;
float parm3;
float parm4;
float parm5;
float parm6;
float parm7;
float parm8;
float parm9;
float parm10;
float parm11;
float parm12;
float parm13;
float parm14;
float parm15;
float parm16;
vector v_forward;
vector v_up;
vector v_right;
float trace_allsolid;
float trace_startsolid;
float trace_fraction;
vector trace_endpos;
vector trace_plane_normal;
float trace_plane_dist;
entity trace_ent;
float trace_inopen;
float trace_inwater;
entity msg_entity;
void() main;
void() StartFrame;
void() PlayerPreThink;
void() PlayerPostThink;
void() ClientKill;
void() ClientConnect;
void() PutClientInServer;
void() ClientDisconnect;
void() SetNewParms;
void() SetChangeParms;
void end_sys_globals;
.float modelindex;
.vector absmin;
.vector absmin_x;
.float absmin_y;
.float absmin_z;
.vector absmax;
.vector absmax_x;
.float absmax_y;
.float absmax_z;
.float ltime;
.float movetype;
.float solid;
.vector origin;
.vector origin_x;
.float origin_y;
.float origin_z;
.vector oldorigin;
.vector oldorigin_x;
.float oldorigin_y;
.float oldorigin_z;
.vector velocity;
.vector velocity_x;
.float velocity_y;
.float velocity_z;
.vector angles;
.vector angles_x;
.float angles_y;
.float angles_z;
.vector avelocity;
.vector avelocity_x;
.float avelocity_y;
.float avelocity_z;
.vector punchangle;
.vector punchangle_x;
.float punchangle_y;
.float punchangle_z;
.string classname;
.string model;
.float frame;
.float skin;
.float effects;
.vector mins;
.vector mins_x;
.float mins_y;
.float mins_z;
.vector maxs;
.vector maxs_x;
.float maxs_y;
.float maxs_z;
.vector size;
.vector size_x;
.float size_y;
.float size_z;
.void() touch;
.void() use;
.void() think;
.void() blocked;
.float nextthink;
.entity groundentity;
.float health;
.float frags;
.float weapon;
.string weaponmodel;
.float weaponframe;
.float currentammo;
.float ammo_shells;
.float ammo_nails;
.float ammo_rockets;
.float ammo_cells;
.float items;
.float takedamage;
.entity chain;
.float deadflag;
.vector view_ofs;
.vector view_ofs_x;
.float view_ofs_y;
.float view_ofs_z;
.float button0;
.float button1;
.float button2;
.float impulse;
.float fixangle;
.vector v_angle;
.vector v_angle_x;
.float v_angle_y;
.float v_angle_z;
.float idealpitch;
.string netname;
.entity enemy;
.float flags;
.float colormap;
.float team;
.float max_health;
.float teleport_time;
.float armortype;
.float armorvalue;
.float waterlevel;
.float watertype;
.float ideal_yaw;
.float yaw_speed;
.entity aiment;
.entity goalentity;
.float spawnflags;
.string target;
.string targetname;
.float dmg_take;
.float dmg_save;
.entity dmg_inflictor;
.entity owner;
.vector movedir;
.vector movedir_x;
.float movedir_y;
.float movedir_z;
.string message;
.float sounds;
.string noise;
.string noise1;
.string noise2;
.string noise3;
void end_sys_fields;
float FALSE = 0.000;
float TRUE = 1.000;
float FL_FLY = 1.000;
float FL_SWIM = 2.000;
float FL_CLIENT = 8.000;
float FL_INWATER = 16.000;
float FL_MONSTER = 32.000;
float FL_GODMODE = 64.000;
float FL_NOTARGET = 128.000;
float FL_ITEM = 256.000;
float FL_ONGROUND = 512.000;
float FL_PARTIALGROUND = 1024.000;
float FL_WATERJUMP = 2048.000;
float FL_JUMPRELEASED = 4096.000;
float MOVETYPE_NONE = 0.000;
float MOVETYPE_WALK = 3.000;
float MOVETYPE_STEP = 4.000;
float MOVETYPE_FLY = 5.000;
float MOVETYPE_TOSS = 6.000;
float MOVETYPE_PUSH = 7.000;
float MOVETYPE_NOCLIP = 8.000;
float MOVETYPE_FLYMISSILE = 9.000;
float MOVETYPE_BOUNCE = 10.000;
float MOVETYPE_BOUNCEMISSILE = 11.000;
float SOLID_NOT = 0.000;
float SOLID_TRIGGER = 1.000;
float SOLID_BBOX = 2.000;
float SOLID_SLIDEBOX = 3.000;
float SOLID_BSP = 4.000;
float RANGE_MELEE = 0.000;
float RANGE_NEAR = 1.000;
float RANGE_MID = 2.000;
float RANGE_FAR = 3.000;
float DEAD_NO = 0.000;
float DEAD_DYING = 1.000;
float DEAD_DEAD = 2.000;
float DEAD_RESPAWNABLE = 3.000;
float DAMAGE_NO = 0.000;
float DAMAGE_YES = 1.000;
float DAMAGE_AIM = 2.000;
float IT_AXE = 4096.000;
float IT_SHOTGUN = 1.000;
float IT_SUPER_SHOTGUN = 2.000;
float IT_NAILGUN = 4.000;
float IT_SUPER_NAILGUN = 8.000;
float IT_GRENADE_LAUNCHER = 16.000;
float IT_ROCKET_LAUNCHER = 32.000;
float IT_LIGHTNING = 64.000;
float IT_EXTRA_WEAPON = 128.000;
float IT_SHELLS = 256.000;
float IT_NAILS = 512.000;
float IT_ROCKETS = 1024.000;
float IT_CELLS = 2048.000;
float IT_ARMOR1 = 8192.000;
float IT_ARMOR2 = 16384.000;
float IT_ARMOR3 = 32768.000;
float IT_SUPERHEALTH = 65536.000;
float IT_KEY1 = 131072.000;
float IT_KEY2 = 262144.000;
float IT_INVISIBILITY = 524288.000;
float IT_INVULNERABILITY = 1048576.000;
float IT_SUIT = 2097152.000;
float IT_QUAD = 4194304.000;
float CONTENT_EMPTY = -1.000;
float CONTENT_SOLID = -2.000;
float CONTENT_WATER = -3.000;
float CONTENT_SLIME = -4.000;
float CONTENT_LAVA = -5.000;
float CONTENT_SKY = -6.000;
float STATE_TOP = 0.000;
float STATE_BOTTOM = 1.000;
float STATE_UP = 2.000;
float STATE_DOWN = 3.000;
vector VEC_ORIGIN = '0.000 0.000 0.000';
vector VEC_HULL_MIN = '-16.000 -16.000 -24.000';
vector VEC_HULL_MAX = '16.000 16.000 32.000';
vector VEC_HULL2_MIN = '-32.000 -32.000 -24.000';
vector VEC_HULL2_MAX = '32.000 32.000 64.000';
float SVC_TEMPENTITY = 23.000;
float SVC_KILLEDMONSTER = 27.000;
float SVC_FOUNDSECRET = 28.000;
float SVC_INTERMISSION = 30.000;
float SVC_FINALE = 31.000;
float SVC_CDTRACK = 32.000;
float SVC_SELLSCREEN = 33.000;
float TE_SPIKE = 0.000;
float TE_SUPERSPIKE = 1.000;
float TE_GUNSHOT = 2.000;
float TE_EXPLOSION = 3.000;
float TE_TAREXPLOSION = 4.000;
float TE_LIGHTNING1 = 5.000;
float TE_LIGHTNING2 = 6.000;
float TE_WIZSPIKE = 7.000;
float TE_KNIGHTSPIKE = 8.000;
float TE_LIGHTNING3 = 9.000;
float TE_LAVASPLASH = 10.000;
float TE_TELEPORT = 11.000;
float CHAN_AUTO = 0.000;
float CHAN_WEAPON = 1.000;
float CHAN_VOICE = 2.000;
float CHAN_ITEM = 3.000;
float CHAN_BODY = 4.000;
float ATTN_NONE = 0.000;
float ATTN_NORM = 1.000;
float ATTN_IDLE = 2.000;
float ATTN_STATIC = 3.000;
float UPDATE_GENERAL = 0.000;
float UPDATE_STATIC = 1.000;
float UPDATE_BINARY = 2.000;
float UPDATE_TEMP = 3.000;
float EF_BRIGHTFIELD = 1.000;
float EF_MUZZLEFLASH = 2.000;
float EF_BRIGHTLIGHT = 4.000;
float EF_DIMLIGHT = 8.000;
float MSG_BROADCAST = 0.000;
float MSG_ONE = 1.000;
float MSG_ALL = 2.000;
float MSG_INIT = 3.000;
float movedist;
float gameover;
string string_null;
float empty_float;
entity newmis;
entity activator;
entity damage_attacker;
float framecount;
float skill;
.string wad;
.string map;
.float worldtype;
.string killtarget;
.float light_lev;
.float style;
.void() th_stand;
.void() th_walk;
.void() th_run;
.void() th_missile;
.void() th_melee;
.void() th_pain;
.void() th_die;
.entity oldenemy;
.float speed;
.float lefty;
.float search_time;
.float attack_state;
float AS_STRAIGHT = 1.000;
float AS_SLIDING = 2.000;
float AS_MELEE = 3.000;
float AS_MISSILE = 4.000;
.float walkframe;
.float attack_finished;
.float pain_finished;
.float invincible_finished;
.float invisible_finished;
.float super_damage_finished;
.float radsuit_finished;
.float invincible_time;
.float invincible_sound;
.float invisible_time;
.float invisible_sound;
.float super_time;
.float super_sound;
.float rad_time;
.float fly_sound;
.float axhitme;
.float show_hostile;
.float jump_flag;
.float swim_flag;
.float air_finished;
.float bubble_count;
.string deathtype;
.string mdl;
.vector mangle;
.vector mangle_x;
.float mangle_y;
.float mangle_z;
.float t_length;
.float t_width;
.vector dest;
.vector dest_x;
.float dest_y;
.float dest_z;
.vector dest1;
.vector dest1_x;
.float dest1_y;
.float dest1_z;
.vector dest2;
.vector dest2_x;
.float dest2_y;
.float dest2_z;
.float wait;
.float delay;
.entity trigger_field;
.string noise4;
.float pausetime;
.entity movetarget;
.float aflag;
.float dmg;
.float cnt;
.void() think1;
.vector finaldest;
.vector finaldest_x;
.float finaldest_y;
.float finaldest_z;
.vector finalangle;
.vector finalangle_x;
.float finalangle_y;
.float finalangle_z;
.float count;
.float lip;
.float state;
.vector pos1;
.vector pos1_x;
.float pos1_y;
.float pos1_z;
.vector pos2;
.vector pos2_x;
.float pos2_y;
.float pos2_z;
.float height;
.float waitmin;
.float waitmax;
.float distance;
.float volume;
void() makevectors;
void (vector ang) makevectors = #1
void() setorigin;
void (entity e, vector o) setorigin = #2
void() setmodel;
void (entity e, string m) setmodel = #3
void() setsize;
void (entity e, vector min, vector max) setsize = #4
void() break;
void () break = #6
void() random;
float () random = #7
void() sound;
void (entity e, float chan, string samp, float vol, float atten) sound = #8
void() normalize;
vector (vector v) normalize = #9
void() error;
void (string e) error = #10
void() objerror;
void (string e) objerror = #11
void() vlen;
float (vector v) vlen = #12
void() vectoyaw;
float (vector v) vectoyaw = #13
void() spawn;
entity () spawn = #14
void() remove;
void (entity e) remove = #15
void() traceline;
void (vector v1, vector v2, float nomonsters, entity forent) traceline = #16
void() checkclient;
entity () checkclient = #17
void() find;
entity (entity start, .string fld, string match) find = #18
void() precache_sound;
string (string s) precache_sound = #19
void() precache_model;
string (string s) precache_model = #20
void() stuffcmd;
void (entity client, string s) stuffcmd = #21
void() findradius;
entity (vector org, float rad) findradius = #22
void() bprint;
void (string s) bprint = #23
void() sprint;
void (entity client, string s) sprint = #24
void() dprint;
void (string s) dprint = #25
void() ftos;
string (float f) ftos = #26
void() vtos;
string (vector v) vtos = #27
void() coredump;
void () coredump = #28
void() traceon;
void () traceon = #29
void() traceoff;
void () traceoff = #30
void() eprint;
void (entity e) eprint = #31
void() walkmove;
float (float yaw, float dist) walkmove = #32
void() droptofloor;
float (float yaw, float dist) droptofloor = #34
void() lightstyle;
void (float style, string value) lightstyle = #35
void() rint;
float (float v) rint = #36
void() floor;
float (float v) floor = #37
void() ceil;
float (float v) ceil = #38
void() checkbottom;
float (entity e) checkbottom = #40
void() pointcontents;
float (vector v) pointcontents = #41
void() fabs;
float (float f) fabs = #43
void() aim;
vector (entity e, float speed) aim = #44
void() cvar;
float (string s) cvar = #45
void() localcmd;
void (string s) localcmd = #46
void() nextent;
entity (entity e) nextent = #47
void() particle;
void (vector o, vector d, float color, float count) particle = #48
void() ChangeYaw;
void () ChangeYaw = #49
void() vectoangles;
vector (vector v) vectoangles = #51
void() WriteByte;
void (float to, float f) WriteByte = #52
void() WriteChar;
void (float to, float f) WriteChar = #53
void() WriteShort;
void (float to, float f) WriteShort = #54
void() WriteLong;
void (float to, float f) WriteLong = #55
void() WriteCoord;
void (float to, float f) WriteCoord = #56
void() WriteAngle;
void (float to, float f) WriteAngle = #57
void() WriteString;
void (float to, string s) WriteString = #58
void() WriteEntity;
void (float to, entity s) WriteEntity = #59
void() movetogoal;
void (float step) movetogoal = #67
void() precache_file;
string (string s) precache_file = #68
void() makestatic;
void (entity e) makestatic = #69
void() changelevel;
void (string s) changelevel = #70
void() cvar_set;
void (string var, string val) cvar_set = #72
void() centerprint;
void (entity client, string s) centerprint = #73
void() ambientsound;
void (vector pos, string samp, float vol, float atten) ambientsound = #74
void() precache_model2;
string (string s) precache_model2 = #75
void() precache_sound2;
string (string s) precache_sound2 = #76
void() precache_file2;
string (string s) precache_file2 = #77
void() setspawnparms;
void (entity e) setspawnparms = #78
