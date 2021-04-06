// func000663
// function begins at statement 18155, parm_start=12301
// OP_ADDRESS	28	150	12301
// OP_ADD_F	31	539	12302
// OP_STOREP_F	12302	12301	0
// OP_STORE_V	28	4	0
// OP_STORE_V	214	7	0
// OP_STORE_V	12064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	216	7	0
// OP_STORE_V	12107	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	228	7	0
// OP_STORE_V	3697	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	229	7	0
// OP_STORE_V	3699	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	230	7	0
// OP_STORE_V	3701	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	231	7	0
// OP_STORE_V	3702	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	232	7	0
// OP_STORE_V	12303	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000663 = 
{
    self.nextthink = time + globaldef000522;
    sound(self, TRUE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
    sound(self, FL_SWIM, "enforcer/enfstop.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_WALK, "enforcer/sight1.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_STEP, "enforcer/sight2.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_FLY, "enforcer/sight3.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_TOSS, "enforcer/sight4.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_PUSH, "enforcer/pain1.wav", TRUE, ATTN_NORM);
};

