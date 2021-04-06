// func000554
// function begins at statement 15661, parm_start=10764
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10764
// OP_STORE_V	10764	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	410	10765
// OP_STORE_V	10765	4	0
// OP_LOAD_F	28	369	10768
// OP_STORE_V	10768	7	0
// OP_STORE_V	10640	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000554 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

