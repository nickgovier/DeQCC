// SpawnChunk
// function begins at statement 6577, parm_start=5508
// OP_STORE_V	5508	4	0
// OP_MUL_VF	5511	5514	5515
// OP_STORE_V	5515	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector globaldef002075, vector globaldef002079) SpawnChunk = 
{
    particle(globaldef002075, globaldef002079 * 0.02, FALSE, MOVETYPE_BOUNCE);
};

// ServerflagsCommand
// function begins at statement 8088, parm_start=6467
// OP_MUL_F	38	216	6467
// OP_ADD_F	6467	214	6468
// OP_STORE_F	6468	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    serverflags = (serverflags * FL_SWIM) + TRUE;
};

