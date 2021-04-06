float globaldef003568;
// func000622
// function begins at statement 17429, parm_start=11913
// OP_LOAD_F	28	195	11913
// OP_BITAND	11913	11911	11914
// OP_IFNOT	11914	10	0
// OP_LOAD_F	28	360	11915
// OP_STORE_V	11915	4	0
// OP_STORE_V	6695	7	0
// OP_CALL2	482	0	0
// OP_ADDRESS	28	195	11916
// OP_LOAD_F	28	195	11917
// OP_SUB_F	11917	11911	11918
// OP_STOREP_F	11918	11916	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	360	11919
// OP_STORE_V	11919	4	0
// OP_STORE_V	6708	7	0
// OP_CALL2	482	0	0
// OP_ADDRESS	28	195	11920
// OP_LOAD_F	28	195	11921
// OP_ADD_F	11921	11911	11922
// OP_STOREP_F	11922	11920	0
// OP_DONE	0	0	0
void () func000622 = 
{
    if(self.spawnflags & globaldef003568)
    {
        lightstyle(self.style, "m");
        self.spawnflags = self.spawnflags - globaldef003568;
    }
    else
    {
        lightstyle(self.style, "a");
        self.spawnflags = self.spawnflags + globaldef003568;
    }
    
};

