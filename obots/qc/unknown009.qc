
// func002639
// function begins at statement 53301, parm_start=28144
// OP_STORE_ENT	833	28144	0
// OP_IFNOT	28144	13	0
// OP_LOAD_F	28144	575	28145
// OP_BITAND	28145	703	28146
// OP_IFNOT	28146	7	0
// OP_SUB_F	802	214	28147
// OP_STORE_F	28147	802	0
// OP_ADDRESS	28144	575	28148
// OP_LOAD_F	28144	575	28149
// OP_SUB_F	28149	703	28150
// OP_STOREP_F	28150	28148	0
// OP_LOAD_ENT	28144	620	28151
// OP_STORE_ENT	28151	28144	0
// OP_GOTO	-12	0	0
// OP_STORE_ENT	834	28144	0
// OP_IFNOT	28144	13	0
// OP_LOAD_F	28144	575	28152
// OP_BITAND	28152	703	28153
// OP_IFNOT	28153	7	0
// OP_SUB_F	802	214	28154
// OP_STORE_F	28154	802	0
// OP_ADDRESS	28144	575	28155
// OP_LOAD_F	28144	575	28156
// OP_SUB_F	28156	703	28157
// OP_STOREP_F	28157	28155	0
// OP_LOAD_ENT	28144	620	28158
// OP_STORE_ENT	28158	28144	0
// OP_GOTO	-12	0	0
// OP_DONE	0	0	0
void () func002639 = 
{
    local entity globaldef008982;
    globaldef008982 = firstClient;
    
    while(globaldef008982)
    {
        
        if(globaldef008982.botflags & globaldef000686)
        {
            globaldef000785 = globaldef000785 - TRUE;
            globaldef008982.botflags = globaldef008982.botflags - globaldef000686;
        }
        
        globaldef008982 = globaldef008982.next;
    }
    
    globaldef008982 = firstBot;
    
    while(globaldef008982)
    {
        
        if(globaldef008982.botflags & globaldef000686)
        {
            globaldef000785 = globaldef000785 - TRUE;
            globaldef008982.botflags = globaldef008982.botflags - globaldef000686;
        }
        
        globaldef008982 = globaldef008982.next;
    }
    
};


// func002640
// function begins at statement 53330, parm_start=28159
// OP_LOAD_F	28159	648	28162
// OP_GT	28162	213	28163
// OP_IFNOT	28163	5	0
// OP_LOAD_F	28159	648	28164
// OP_GE	28160	28164	28165
// OP_IFNOT	28165	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28159	648	28166
// OP_STOREP_F	28160	28166	0
// OP_ADDRESS	28159	638	28167
// OP_STOREP_ENT	28161	28167	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008983, float globaldef008984, entity globaldef008985) func002640 = 
{
    
    if(globaldef008983.field000325 > FALSE)
    {
        
        if(globaldef008984 >= globaldef008983.field000325)
        {
            return FALSE;
        }
        
    }
    
    globaldef008983.field000325 = globaldef008984;
    globaldef008983.field000315 = globaldef008985;
    return TRUE;
};


// func002641
// function begins at statement 53343, parm_start=28168
// OP_LOAD_F	28168	649	28171
// OP_GT	28171	214	28172
// OP_IFNOT	28172	5	0
// OP_LOAD_F	28168	649	28173
// OP_GE	28169	28173	28174
// OP_IFNOT	28174	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28168	649	28175
// OP_STOREP_F	28169	28175	0
// OP_ADDRESS	28168	639	28176
// OP_STOREP_ENT	28170	28176	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008986, float globaldef008987, entity globaldef008988) func002641 = 
{
    
    if(globaldef008986.field000326 > TRUE)
    {
        
        if(globaldef008987 >= globaldef008986.field000326)
        {
            return FALSE;
        }
        
    }
    
    globaldef008986.field000326 = globaldef008987;
    globaldef008986.field000316 = globaldef008988;
    return TRUE;
};


// func002642
// function begins at statement 53356, parm_start=28177
// OP_LOAD_F	28177	650	28180
// OP_GT	28180	213	28181
// OP_IFNOT	28181	5	0
// OP_LOAD_F	28177	650	28182
// OP_GE	28178	28182	28183
// OP_IFNOT	28183	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28177	650	28184
// OP_STOREP_F	28178	28184	0
// OP_ADDRESS	28177	640	28185
// OP_STOREP_ENT	28179	28185	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008989, float globaldef008990, entity globaldef008991) func002642 = 
{
    
    if(globaldef008989.field000327 > FALSE)
    {
        
        if(globaldef008990 >= globaldef008989.field000327)
        {
            return FALSE;
        }
        
    }
    
    globaldef008989.field000327 = globaldef008990;
    globaldef008989.field000317 = globaldef008991;
    return TRUE;
};


// func002643
// function begins at statement 53369, parm_start=28186
// OP_LOAD_F	28186	651	28189
// OP_GT	28189	213	28190
// OP_IFNOT	28190	5	0
// OP_LOAD_F	28186	651	28191
// OP_GE	28187	28191	28192
// OP_IFNOT	28192	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28186	651	28193
// OP_STOREP_F	28187	28193	0
// OP_ADDRESS	28186	641	28194
// OP_STOREP_ENT	28188	28194	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008992, float globaldef008993, entity globaldef008994) func002643 = 
{
    
    if(globaldef008992.field000328 > FALSE)
    {
        
        if(globaldef008993 >= globaldef008992.field000328)
        {
            return FALSE;
        }
        
    }
    
    globaldef008992.field000328 = globaldef008993;
    globaldef008992.field000318 = globaldef008994;
    return TRUE;
};


// func002644
// function begins at statement 53382, parm_start=28195
// OP_LOAD_F	28195	652	28198
// OP_GT	28198	213	28199
// OP_IFNOT	28199	5	0
// OP_LOAD_F	28195	652	28200
// OP_GE	28196	28200	28201
// OP_IFNOT	28201	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28195	652	28202
// OP_STOREP_F	28196	28202	0
// OP_ADDRESS	28195	642	28203
// OP_STOREP_ENT	28197	28203	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008995, float globaldef008996, entity globaldef008997) func002644 = 
{
    
    if(globaldef008995.field000329 > FALSE)
    {
        
        if(globaldef008996 >= globaldef008995.field000329)
        {
            return FALSE;
        }
        
    }
    
    globaldef008995.field000329 = globaldef008996;
    globaldef008995.field000319 = globaldef008997;
    return TRUE;
};


// func002645
// function begins at statement 53395, parm_start=28204
// OP_LOAD_F	28204	653	28207
// OP_GT	28207	213	28208
// OP_IFNOT	28208	5	0
// OP_LOAD_F	28204	653	28209
// OP_GE	28205	28209	28210
// OP_IFNOT	28210	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28204	653	28211
// OP_STOREP_F	28205	28211	0
// OP_ADDRESS	28204	643	28212
// OP_STOREP_ENT	28206	28212	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008998, float globaldef008999, entity globaldef009000) func002645 = 
{
    
    if(globaldef008998.field000330 > FALSE)
    {
        
        if(globaldef008999 >= globaldef008998.field000330)
        {
            return FALSE;
        }
        
    }
    
    globaldef008998.field000330 = globaldef008999;
    globaldef008998.field000320 = globaldef009000;
    return TRUE;
};


// func002646
// function begins at statement 53408, parm_start=28213
// OP_LOAD_F	28213	654	28216
// OP_GT	28216	213	28217
// OP_IFNOT	28217	5	0
// OP_LOAD_F	28213	654	28218
// OP_GE	28214	28218	28219
// OP_IFNOT	28219	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28213	654	28220
// OP_STOREP_F	28214	28220	0
// OP_ADDRESS	28213	644	28221
// OP_STOREP_ENT	28215	28221	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef009001, float globaldef009002, entity globaldef009003) func002646 = 
{
    
    if(globaldef009001.field000331 > FALSE)
    {
        
        if(globaldef009002 >= globaldef009001.field000331)
        {
            return FALSE;
        }
        
    }
    
    globaldef009001.field000331 = globaldef009002;
    globaldef009001.field000321 = globaldef009003;
    return TRUE;
};


// func002647
// function begins at statement 53421, parm_start=28222
// OP_LOAD_F	28222	655	28225
// OP_GT	28225	213	28226
// OP_IFNOT	28226	5	0
// OP_LOAD_F	28222	655	28227
// OP_GE	28223	28227	28228
// OP_IFNOT	28228	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28222	655	28229
// OP_STOREP_F	28223	28229	0
// OP_ADDRESS	28222	645	28230
// OP_STOREP_ENT	28224	28230	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef009004, float globaldef009005, entity globaldef009006) func002647 = 
{
    
    if(globaldef009004.field000332 > FALSE)
    {
        
        if(globaldef009005 >= globaldef009004.field000332)
        {
            return FALSE;
        }
        
    }
    
    globaldef009004.field000332 = globaldef009005;
    globaldef009004.field000322 = globaldef009006;
    return TRUE;
};


// func002648
// function begins at statement 53434, parm_start=28232
// OP_LOAD_F	28232	656	28235
// OP_GT	28235	213	28236
// OP_IFNOT	28236	5	0
// OP_LOAD_F	28232	656	28237
// OP_GE	28233	28237	28238
// OP_IFNOT	28238	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28232	656	28239
// OP_STOREP_F	28233	28239	0
// OP_ADDRESS	28232	646	28240
// OP_STOREP_ENT	28234	28240	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef009008, float globaldef009009, entity globaldef009010) func002648 = 
{
    
    if(globaldef009008.field000333 > FALSE)
    {
        
        if(globaldef009009 >= globaldef009008.field000333)
        {
            return FALSE;
        }
        
    }
    
    globaldef009008.field000333 = globaldef009009;
    globaldef009008.field000323 = globaldef009010;
    return TRUE;
};

