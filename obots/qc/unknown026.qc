// func000552
// function begins at statement 15628, parm_start=10750
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10750
// OP_STORE_V	10750	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	414	10751
// OP_STORE_V	10751	4	0
// OP_LOAD_F	28	369	10754
// OP_STORE_V	10754	7	0
// OP_STORE_V	10638	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000552 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

