void () func000283;

// func000204
// function begins at statement 4222, parm_start=4297
// OP_ADDRESS	28	130	4297
// OP_LOAD_S	28	399	4298
// OP_STOREP_S	4298	4297	0
// OP_ADDRESS	28	104	4299
// OP_STOREP_F	238	4299	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	4300	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	4301
// OP_STORE_V	4301	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void () func000204 = 
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", TRUE, ATTN_NORM);
    setorigin(self, self.origin);
};

