// func000633
// function begins at statement 17586, parm_start=11979
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	11979	0
// OP_ADDRESS	11979	104	11980
// OP_STOREP_F	238	11980	0
// OP_ADDRESS	11979	103	11981
// OP_STOREP_F	231	11981	0
// OP_ADDRESS	11979	113	11982
// OP_STOREP_V	11985	11982	0
// OP_ADDRESS	11979	114	11988
// OP_CALL0	457	0	0
// OP_MUL_F	1	1997	11989
// OP_SUB_F	11989	1470	11990
// OP_STOREP_F	11990	11988	0
// OP_ADDRESS	11979	115	11991
// OP_CALL0	457	0	0
// OP_MUL_F	1	1997	11992
// OP_SUB_F	11992	1470	11993
// OP_STOREP_F	11993	11991	0
// OP_ADDRESS	11979	116	11994
// OP_LOAD_F	28	369	11995
// OP_CALL0	457	0	0
// OP_MUL_F	1	2044	11996
// OP_ADD_F	11995	11996	11997
// OP_STOREP_F	11997	11994	0
// OP_ADDRESS	11979	129	11998
// OP_STOREP_S	9418	11998	0
// OP_STORE_V	11979	4	0
// OP_STORE_V	6694	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	11979	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	11979	4	0
// OP_LOAD_V	28	105	11999
// OP_STORE_V	11999	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	11979	150	12002
// OP_ADD_F	31	230	12003
// OP_STOREP_F	12003	12002	0
// OP_ADDRESS	11979	148	12004
// OP_STOREP_FNC	521	12004	0
// OP_ADDRESS	11979	146	12005
// OP_STOREP_FNC	11968	12005	0
// OP_ADDRESS	28	150	12006
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	12007
// OP_ADD_F	31	12007	12008
// OP_ADD_F	12008	228	12009
// OP_STOREP_F	12009	12006	0
// OP_ADDRESS	28	148	12010
// OP_STOREP_FNC	11967	12010	0
// OP_DONE	0	0	0
void () func000633 = 
{
    local entity globaldef003588;
    globaldef003588 = spawn();
    globaldef003588.solid = SOLID_TRIGGER;
    globaldef003588.movetype = MOVETYPE_TOSS;
    globaldef003588.velocity = '0 0 1000';
    globaldef003588.velocity_x = (random() * 100) - 50;
    globaldef003588.velocity_y = (random() * 100) - 50;
    globaldef003588.velocity_z = self.speed + (random() * 200);
    globaldef003588.classname = "fireball";
    setmodel(globaldef003588, "progs/lavaball.mdl");
    setsize(globaldef003588, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef003588, self.origin);
    globaldef003588.nextthink = time + MOVETYPE_FLY;
    globaldef003588.think = SUB_Remove;
    globaldef003588.touch = func000634;
    self.nextthink = (time + (random() * MOVETYPE_FLY)) + MOVETYPE_WALK;
    self.think = func000633;
};

// func000634
// function begins at statement 17639, parm_start=12011
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2323	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000634 = 
{
    func000201(other, self, self, 20);
    remove(self);
};

// func000635
// function begins at statement 17647, parm_start=12012
// OP_ADDRESS	28	163	12012
// OP_STOREP_F	250	12012	0
// OP_ADDRESS	28	129	12013
// OP_STOREP_S	9397	12013	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	12014	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	4216	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5358	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12015
// OP_STORE_V	12015	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	9173	10	0
// OP_STORE_V	6491	13	0
// OP_CALL4	493	0	0
// OP_ADDRESS	28	108	12018
// OP_LOAD_F	28	108	12019
// OP_ADD_F	12019	219	12020
// OP_STOREP_F	12020	12018	0
// OP_CALL0	5703	0	0
// OP_DONE	0	0	0
void () func000635 = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    func000202(self, self, 160, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", TRUE, ATTN_NORM);
    particle(self.origin, VEC_ORIGIN, globaldef002995, 255);
    self.origin_z = self.origin_z + FL_MONSTER;
    func000270();
};

