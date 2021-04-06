// func000556
// function begins at statement 15689, parm_start=10774
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10774
// OP_STORE_V	10774	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	109	10775
// OP_STORE_V	10775	4	0
// OP_LOAD_F	28	369	10778
// OP_STORE_V	10778	7	0
// OP_STORE_V	10642	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000556 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

