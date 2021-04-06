void () func000465;
// func000384
// function begins at statement 11488, parm_start=8359
// OP_IFNOT	36	9	0
// OP_STORE_V	28	4	0
// OP_CALL1	6795	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	513	0	0
// OP_LOAD_F	28	572	8359
// OP_STORE_F	8359	52	0
// OP_CALL0	88	0	0
// OP_GOTO	9	0	0
// OP_IFNOT	35	6	0
// OP_STORE_V	28	4	0
// OP_CALL1	6795	0	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	8360	4	0
// OP_CALL1	491	0	0
// OP_DONE	0	0	0
void () func000384 = 
{
    if(coop)
    {
        func000301(self);
        setspawnparms(self);
        parm10 = self.field000249;
        PutClientInServer();
    }
    else
    {
        if(deathmatch)
        {
            func000301(self);
            SetNewParms();
            PutClientInServer();
        }
        else
        {
            localcmd("restart\n");
        }
        
    }
    
};

