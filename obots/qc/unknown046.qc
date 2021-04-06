// func000627
// function begins at statement 17522, parm_start=11956
// OP_STORE_V	11956	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	11957
// OP_STORE_V	11957	4	0
// OP_STORE_V	11956	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () func000627 = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", globaldef000522, ATTN_STATIC);
};

