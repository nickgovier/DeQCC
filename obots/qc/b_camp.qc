void globaldef002587;
.vector field000377;
.vector field000381;
.float field000385;
.float field000386;
.entity field000387;
void globaldef002599;
float globaldef002600;
float globaldef002601;
float globaldef002602;
float globaldef002603;
float globaldef002604;
float globaldef002605;
float globaldef002606;
float globaldef002607;
float globaldef002608;
float globaldef002609;

// campmode
// function begins at statement 9328, parm_start=7130
// OP_STORE_V	7130	4	0
// OP_CALL1	7104	0	0
// OP_EQ_F	7128	7124	7131
// OP_IFNOT	7131	5	0
// OP_STORE_F	7125	7128	0
// OP_STORE_V	7132	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	7128	7125	7133
// OP_IFNOT	7133	5	0
// OP_STORE_F	7126	7128	0
// OP_STORE_V	7134	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	7128	7126	7135
// OP_IFNOT	7135	5	0
// OP_STORE_F	7127	7128	0
// OP_STORE_V	7136	4	0
// OP_CALL1	7104	0	0
// OP_GOTO	4	0	0
// OP_STORE_F	7124	7128	0
// OP_STORE_V	7137	4	0
// OP_CALL1	7104	0	0
// OP_DONE	0	0	0
void () campmode = 
{
    func000336("camping mode = ");
    if(globaldef002609 == globaldef002605)
    {
        globaldef002609 = globaldef002606;
        func000336("detect only\n");
    }
    else
    {
        if(globaldef002609 == globaldef002606)
        {
            globaldef002609 = globaldef002607;
            func000336("detect & punish\n");
        }
        else
        {
            if(globaldef002609 == globaldef002607)
            {
                globaldef002609 = globaldef002608;
                func000336("detect & punish severe\n");
            }
            else
            {
                globaldef002609 = globaldef002605;
                func000336("no detection\n");
            }
            
        }
        
    }
    
};

