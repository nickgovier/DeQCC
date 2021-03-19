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
float v_forward_y;
float v_forward_z;
vector v_up;
float v_up_y;
float v_up_z;
vector v_right;
float v_right_y;
float v_right_z;
float trace_allsolid;
float trace_startsolid;
float trace_fraction;
vector trace_endpos;
float trace_endpos_y;
float trace_endpos_z;
vector trace_plane_normal;
float trace_plane_normal_y;
float trace_plane_normal_z;
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
/* TYPE: EV_FIELD */ modelindex;
/* TYPE: EV_FIELD */ absmin;
/* TYPE: EV_FIELD */ absmin;
/* TYPE: EV_FIELD */ absmin_y;
/* TYPE: EV_FIELD */ absmin_z;
/* TYPE: EV_FIELD */ absmax;
/* TYPE: EV_FIELD */ absmax;
/* TYPE: EV_FIELD */ absmax_y;
/* TYPE: EV_FIELD */ absmax_z;
/* TYPE: EV_FIELD */ ltime;
/* TYPE: EV_FIELD */ movetype;
/* TYPE: EV_FIELD */ solid;
/* TYPE: EV_FIELD */ origin;
/* TYPE: EV_FIELD */ origin;
/* TYPE: EV_FIELD */ origin_y;
/* TYPE: EV_FIELD */ origin_z;
/* TYPE: EV_FIELD */ oldorigin;
/* TYPE: EV_FIELD */ oldorigin;
/* TYPE: EV_FIELD */ oldorigin_y;
/* TYPE: EV_FIELD */ oldorigin_z;
/* TYPE: EV_FIELD */ velocity;
/* TYPE: EV_FIELD */ velocity;
/* TYPE: EV_FIELD */ velocity_y;
/* TYPE: EV_FIELD */ velocity_z;
/* TYPE: EV_FIELD */ angles;
/* TYPE: EV_FIELD */ angles;
/* TYPE: EV_FIELD */ angles_y;
/* TYPE: EV_FIELD */ angles_z;
/* TYPE: EV_FIELD */ avelocity;
/* TYPE: EV_FIELD */ avelocity;
/* TYPE: EV_FIELD */ avelocity_y;
/* TYPE: EV_FIELD */ avelocity_z;
/* TYPE: EV_FIELD */ punchangle;
/* TYPE: EV_FIELD */ punchangle;
/* TYPE: EV_FIELD */ punchangle_y;
/* TYPE: EV_FIELD */ punchangle_z;
/* TYPE: EV_FIELD */ classname;
/* TYPE: EV_FIELD */ model;
/* TYPE: EV_FIELD */ frame;
/* TYPE: EV_FIELD */ skin;
/* TYPE: EV_FIELD */ effects;
/* TYPE: EV_FIELD */ mins;
/* TYPE: EV_FIELD */ mins;
/* TYPE: EV_FIELD */ mins_y;
/* TYPE: EV_FIELD */ mins_z;
/* TYPE: EV_FIELD */ maxs;
/* TYPE: EV_FIELD */ maxs;
/* TYPE: EV_FIELD */ maxs_y;
/* TYPE: EV_FIELD */ maxs_z;
/* TYPE: EV_FIELD */ size;
/* TYPE: EV_FIELD */ size;
/* TYPE: EV_FIELD */ size_y;
/* TYPE: EV_FIELD */ size_z;
/* TYPE: EV_FIELD */ touch;
/* TYPE: EV_FIELD */ use;
/* TYPE: EV_FIELD */ think;
/* TYPE: EV_FIELD */ blocked;
/* TYPE: EV_FIELD */ nextthink;
/* TYPE: EV_FIELD */ groundentity;
/* TYPE: EV_FIELD */ health;
/* TYPE: EV_FIELD */ frags;
/* TYPE: EV_FIELD */ weapon;
/* TYPE: EV_FIELD */ weaponmodel;
/* TYPE: EV_FIELD */ weaponframe;
/* TYPE: EV_FIELD */ currentammo;
/* TYPE: EV_FIELD */ ammo_shells;
/* TYPE: EV_FIELD */ ammo_nails;
/* TYPE: EV_FIELD */ ammo_rockets;
/* TYPE: EV_FIELD */ ammo_cells;
/* TYPE: EV_FIELD */ items;
/* TYPE: EV_FIELD */ takedamage;
/* TYPE: EV_FIELD */ chain;
/* TYPE: EV_FIELD */ deadflag;
/* TYPE: EV_FIELD */ view_ofs;
/* TYPE: EV_FIELD */ view_ofs;
/* TYPE: EV_FIELD */ view_ofs_y;
/* TYPE: EV_FIELD */ view_ofs_z;
/* TYPE: EV_FIELD */ button0;
/* TYPE: EV_FIELD */ button1;
/* TYPE: EV_FIELD */ button2;
/* TYPE: EV_FIELD */ impulse;
/* TYPE: EV_FIELD */ fixangle;
/* TYPE: EV_FIELD */ v_angle;
/* TYPE: EV_FIELD */ v_angle;
/* TYPE: EV_FIELD */ v_angle_y;
/* TYPE: EV_FIELD */ v_angle_z;
/* TYPE: EV_FIELD */ idealpitch;
/* TYPE: EV_FIELD */ netname;
/* TYPE: EV_FIELD */ enemy;
/* TYPE: EV_FIELD */ flags;
/* TYPE: EV_FIELD */ colormap;
/* TYPE: EV_FIELD */ team;
/* TYPE: EV_FIELD */ max_health;
/* TYPE: EV_FIELD */ teleport_time;
/* TYPE: EV_FIELD */ armortype;
/* TYPE: EV_FIELD */ armorvalue;
/* TYPE: EV_FIELD */ waterlevel;
/* TYPE: EV_FIELD */ watertype;
/* TYPE: EV_FIELD */ ideal_yaw;
/* TYPE: EV_FIELD */ yaw_speed;
/* TYPE: EV_FIELD */ aiment;
/* TYPE: EV_FIELD */ goalentity;
/* TYPE: EV_FIELD */ spawnflags;
/* TYPE: EV_FIELD */ target;
/* TYPE: EV_FIELD */ targetname;
/* TYPE: EV_FIELD */ dmg_take;
/* TYPE: EV_FIELD */ dmg_save;
/* TYPE: EV_FIELD */ dmg_inflictor;
/* TYPE: EV_FIELD */ owner;
/* TYPE: EV_FIELD */ movedir;
/* TYPE: EV_FIELD */ movedir;
/* TYPE: EV_FIELD */ movedir_y;
/* TYPE: EV_FIELD */ movedir_z;
/* TYPE: EV_FIELD */ message;
/* TYPE: EV_FIELD */ sounds;
/* TYPE: EV_FIELD */ noise;
/* TYPE: EV_FIELD */ noise1;
/* TYPE: EV_FIELD */ noise2;
/* TYPE: EV_FIELD */ noise3;
void end_sys_fields;
float FALSE;
float TRUE = 1;
float FL_FLY = 1;
float FL_SWIM = 2;
float FL_CLIENT = 8;
float FL_INWATER = 16;
float FL_MONSTER = 32;
float FL_GODMODE = 64;
float FL_NOTARGET = 128;
float FL_ITEM = 256;
float FL_ONGROUND = 512;
float FL_PARTIALGROUND = 1024;
float FL_WATERJUMP = 2048;
float FL_JUMPRELEASED = 4096;
float MOVETYPE_NONE;
float MOVETYPE_WALK = 3;
float MOVETYPE_STEP = 4;
float MOVETYPE_FLY = 5;
float MOVETYPE_TOSS = 6;
float MOVETYPE_PUSH = 7;
float MOVETYPE_NOCLIP = 8;
float MOVETYPE_FLYMISSILE = 9;
float MOVETYPE_BOUNCE = 10;
float MOVETYPE_BOUNCEMISSILE = 11;
float SOLID_NOT;
float SOLID_TRIGGER = 1;
float SOLID_BBOX = 2;
float SOLID_SLIDEBOX = 3;
float SOLID_BSP = 4;
float RANGE_MELEE;
float RANGE_NEAR = 1;
float RANGE_MID = 2;
float RANGE_FAR = 3;
float DEAD_NO;
float DEAD_DYING = 1;
float DEAD_DEAD = 2;
float DEAD_RESPAWNABLE = 3;
float DAMAGE_NO;
float DAMAGE_YES = 1;
float DAMAGE_AIM = 2;
float IT_AXE = 4096;
float IT_SHOTGUN = 1;
float IT_SUPER_SHOTGUN = 2;
float IT_NAILGUN = 4;
float IT_SUPER_NAILGUN = 8;
float IT_GRENADE_LAUNCHER = 16;
float IT_ROCKET_LAUNCHER = 32;
float IT_LIGHTNING = 64;
float IT_EXTRA_WEAPON = 128;
float IT_SHELLS = 256;
float IT_NAILS = 512;
float IT_ROCKETS = 1024;
float IT_CELLS = 2048;
float IT_ARMOR1 = 8192;
float IT_ARMOR2 = 16384;
float IT_ARMOR3 = 32768;
float IT_SUPERHEALTH = 65536;
float IT_KEY1 = 131072;
float IT_KEY2 = 262144;
float IT_INVISIBILITY = 524288;
float IT_INVULNERABILITY = 1048576;
float IT_SUIT = 2097152;
float IT_QUAD = 4194304;
float CONTENT_EMPTY;
float CONTENT_SOLID;
float CONTENT_WATER;
float CONTENT_SLIME;
float CONTENT_LAVA;
float CONTENT_SKY;
float STATE_TOP;
float STATE_BOTTOM = 1;
float STATE_UP = 2;
float STATE_DOWN = 3;
vector VEC_ORIGIN;
float VEC_ORIGIN_y;
float VEC_ORIGIN_z;
vector VEC_HULL_MIN;
float VEC_HULL_MIN_y;
float VEC_HULL_MIN_z;
vector VEC_HULL_MAX = 16;
float VEC_HULL_MAX_y = 16;
float VEC_HULL_MAX_z = 32;
vector VEC_HULL2_MIN;
float VEC_HULL2_MIN_y;
float VEC_HULL2_MIN_z;
vector VEC_HULL2_MAX = 32;
float VEC_HULL2_MAX_y = 32;
float VEC_HULL2_MAX_z = 64;
float SVC_TEMPENTITY = 23;
float SVC_KILLEDMONSTER = 27;
float SVC_FOUNDSECRET = 28;
float SVC_INTERMISSION = 30;
float SVC_FINALE = 31;
float SVC_CDTRACK = 32;
float SVC_SELLSCREEN = 33;
float TE_SPIKE;
float TE_SUPERSPIKE = 1;
float TE_GUNSHOT = 2;
float TE_EXPLOSION = 3;
float TE_TAREXPLOSION = 4;
float TE_LIGHTNING1 = 5;
float TE_LIGHTNING2 = 6;
float TE_WIZSPIKE = 7;
float TE_KNIGHTSPIKE = 8;
float TE_LIGHTNING3 = 9;
float TE_LAVASPLASH = 10;
float TE_TELEPORT = 11;
float CHAN_AUTO;
float CHAN_WEAPON = 1;
float CHAN_VOICE = 2;
float CHAN_ITEM = 3;
float CHAN_BODY = 4;
float ATTN_NONE;
float ATTN_NORM = 1;
float ATTN_IDLE = 2;
float ATTN_STATIC = 3;
float UPDATE_GENERAL;
float UPDATE_STATIC = 1;
float UPDATE_BINARY = 2;
float UPDATE_TEMP = 3;
float EF_BRIGHTFIELD = 1;
float EF_MUZZLEFLASH = 2;
float EF_BRIGHTLIGHT = 4;
float EF_DIMLIGHT = 8;
float MSG_BROADCAST;
float MSG_ONE = 1;
float MSG_ALL = 2;
float MSG_INIT = 3;
float movedist;
float gameover;
string string_null;
float empty_float;
entity newmis;
entity activator;
entity damage_attacker;
float framecount;
float skill;
/* TYPE: EV_FIELD */ wad;
/* TYPE: EV_FIELD */ map;
/* TYPE: EV_FIELD */ worldtype;
/* TYPE: EV_FIELD */ killtarget;
/* TYPE: EV_FIELD */ light_lev;
/* TYPE: EV_FIELD */ style;
/* TYPE: EV_FIELD */ th_stand;
/* TYPE: EV_FIELD */ th_walk;
/* TYPE: EV_FIELD */ th_run;
/* TYPE: EV_FIELD */ th_missile;
/* TYPE: EV_FIELD */ th_melee;
/* TYPE: EV_FIELD */ th_pain;
/* TYPE: EV_FIELD */ th_die;
/* TYPE: EV_FIELD */ oldenemy;
/* TYPE: EV_FIELD */ speed;
/* TYPE: EV_FIELD */ lefty;
/* TYPE: EV_FIELD */ search_time;
/* TYPE: EV_FIELD */ attack_state;
float AS_STRAIGHT = 1;
float AS_SLIDING = 2;
float AS_MELEE = 3;
float AS_MISSILE = 4;
/* TYPE: EV_FIELD */ walkframe;
/* TYPE: EV_FIELD */ attack_finished;
/* TYPE: EV_FIELD */ pain_finished;
/* TYPE: EV_FIELD */ invincible_finished;
/* TYPE: EV_FIELD */ invisible_finished;
/* TYPE: EV_FIELD */ super_damage_finished;
/* TYPE: EV_FIELD */ radsuit_finished;
/* TYPE: EV_FIELD */ invincible_time;
/* TYPE: EV_FIELD */ invincible_sound;
/* TYPE: EV_FIELD */ invisible_time;
/* TYPE: EV_FIELD */ invisible_sound;
/* TYPE: EV_FIELD */ super_time;
/* TYPE: EV_FIELD */ super_sound;
/* TYPE: EV_FIELD */ rad_time;
/* TYPE: EV_FIELD */ fly_sound;
/* TYPE: EV_FIELD */ axhitme;
/* TYPE: EV_FIELD */ show_hostile;
/* TYPE: EV_FIELD */ jump_flag;
/* TYPE: EV_FIELD */ swim_flag;
/* TYPE: EV_FIELD */ air_finished;
/* TYPE: EV_FIELD */ bubble_count;
/* TYPE: EV_FIELD */ deathtype;
/* TYPE: EV_FIELD */ mdl;
/* TYPE: EV_FIELD */ mangle;
/* TYPE: EV_FIELD */ mangle;
/* TYPE: EV_FIELD */ mangle_y;
/* TYPE: EV_FIELD */ mangle_z;
/* TYPE: EV_FIELD */ t_length;
/* TYPE: EV_FIELD */ t_width;
/* TYPE: EV_FIELD */ dest;
/* TYPE: EV_FIELD */ dest;
/* TYPE: EV_FIELD */ dest_y;
/* TYPE: EV_FIELD */ dest_z;
/* TYPE: EV_FIELD */ dest1;
/* TYPE: EV_FIELD */ dest1;
/* TYPE: EV_FIELD */ dest1_y;
/* TYPE: EV_FIELD */ dest1_z;
/* TYPE: EV_FIELD */ dest2;
/* TYPE: EV_FIELD */ dest2;
/* TYPE: EV_FIELD */ dest2_y;
/* TYPE: EV_FIELD */ dest2_z;
/* TYPE: EV_FIELD */ wait;
/* TYPE: EV_FIELD */ delay;
/* TYPE: EV_FIELD */ trigger_field;
/* TYPE: EV_FIELD */ noise4;
/* TYPE: EV_FIELD */ pausetime;
/* TYPE: EV_FIELD */ movetarget;
/* TYPE: EV_FIELD */ aflag;
/* TYPE: EV_FIELD */ dmg;
/* TYPE: EV_FIELD */ cnt;
/* TYPE: EV_FIELD */ think1;
/* TYPE: EV_FIELD */ finaldest;
/* TYPE: EV_FIELD */ finaldest;
/* TYPE: EV_FIELD */ finaldest_y;
/* TYPE: EV_FIELD */ finaldest_z;
/* TYPE: EV_FIELD */ finalangle;
/* TYPE: EV_FIELD */ finalangle;
/* TYPE: EV_FIELD */ finalangle_y;
/* TYPE: EV_FIELD */ finalangle_z;
/* TYPE: EV_FIELD */ count;
/* TYPE: EV_FIELD */ lip;
/* TYPE: EV_FIELD */ state;
/* TYPE: EV_FIELD */ pos1;
/* TYPE: EV_FIELD */ pos1;
/* TYPE: EV_FIELD */ pos1_y;
/* TYPE: EV_FIELD */ pos1_z;
/* TYPE: EV_FIELD */ pos2;
/* TYPE: EV_FIELD */ pos2;
/* TYPE: EV_FIELD */ pos2_y;
/* TYPE: EV_FIELD */ pos2_z;
/* TYPE: EV_FIELD */ height;
/* TYPE: EV_FIELD */ waitmin;
/* TYPE: EV_FIELD */ waitmax;
/* TYPE: EV_FIELD */ distance;
/* TYPE: EV_FIELD */ volume;
void() makevectors;
void() setorigin;
// TODO Builtin function
void() setmodel;
// TODO Builtin function
void() setsize;
// TODO Builtin function
void() break;
// TODO Builtin function
void() random;
// TODO Builtin function
void() sound;
// TODO Builtin function
void() normalize;
// TODO Builtin function
void() error;
// TODO Builtin function
void() objerror;
// TODO Builtin function
void() vlen;
// TODO Builtin function
void() vectoyaw;
// TODO Builtin function
void() spawn;
// TODO Builtin function
void() remove;
// TODO Builtin function
void() traceline;
// TODO Builtin function
void() checkclient;
// TODO Builtin function
void() find;
// TODO Builtin function
void() precache_sound;
// TODO Builtin function
void() precache_model;
// TODO Builtin function
void() stuffcmd;
// TODO Builtin function
void() findradius;
// TODO Builtin function
void() bprint;
// TODO Builtin function
void() sprint;
// TODO Builtin function
void() dprint;
// TODO Builtin function
void() ftos;
// TODO Builtin function
void() vtos;
// TODO Builtin function
void() coredump;
// TODO Builtin function
void() traceon;
// TODO Builtin function
void() traceoff;
// TODO Builtin function
void() eprint;
// TODO Builtin function
void() walkmove;
// TODO Builtin function
void() droptofloor;
// TODO Builtin function
void() lightstyle;
// TODO Builtin function
void() rint;
// TODO Builtin function
void() floor;
// TODO Builtin function
void() ceil;
// TODO Builtin function
void() checkbottom;
// TODO Builtin function
void() pointcontents;
// TODO Builtin function
void() fabs;
// TODO Builtin function
void() aim;
// TODO Builtin function
void() cvar;
// TODO Builtin function
void() localcmd;
// TODO Builtin function
void() nextent;
// TODO Builtin function
void() particle;
// TODO Builtin function
void() ChangeYaw;
// TODO Builtin function
void() vectoangles;
// TODO Builtin function
void() WriteByte;
// TODO Builtin function
void() WriteChar;
// TODO Builtin function
void() WriteShort;
// TODO Builtin function
void() WriteLong;
// TODO Builtin function
void() WriteCoord;
// TODO Builtin function
void() WriteAngle;
// TODO Builtin function
void() WriteString;
// TODO Builtin function
void() WriteEntity;
// TODO Builtin function
void() movetogoal;
// TODO Builtin function
void() precache_file;
// TODO Builtin function
void() makestatic;
// TODO Builtin function
void() changelevel;
// TODO Builtin function
void() cvar_set;
// TODO Builtin function
void() centerprint;
// TODO Builtin function
void() ambientsound;
// TODO Builtin function
void() precache_model2;
// TODO Builtin function
void() precache_sound2;
// TODO Builtin function
void() precache_file2;
// TODO Builtin function
void() setspawnparms;
// TODO Builtin function
void() SUB_CalcMove;
// TODO Builtin function
