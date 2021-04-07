// path_corner
// function begins at statement 3119, parm_start=3527
// OP_CALL0	3502	0	0
// OP_DONE	0	0	0
void () path_corner = 
{
    func000174();
};

// visible
// function begins at statement 3190, parm_start=3588
// OP_LOAD_V	28	105	3595
// OP_LOAD_V	28	166	3598
// OP_ADD_V	3595	3598	3601
// OP_STORE_V	3601	3589	0
// OP_LOAD_V	3588	105	3604
// OP_LOAD_V	3588	166	3607
// OP_ADD_V	3604	3607	3610
// OP_STORE_V	3610	3592	0
// OP_STORE_V	3589	4	0
// OP_STORE_V	3592	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_AND	79	80	3613
// OP_IFNOT	3613	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	70	214	3614
// OP_IFNOT	3614	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) visible = 
{
    local vector globaldef001640;
    local vector globaldef001644;
    globaldef001640 = self.origin + self.view_ofs;
    globaldef001644 = targ.origin + targ.view_ofs;
    traceline(globaldef001640, globaldef001644, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    return FALSE;
};

// ChooseTurn
// function begins at statement 3585, parm_start=3807
// OP_LOAD_V	28	105	3816
// OP_SUB_V	3816	3807	3819
// OP_STORE_V	3819	3810	0
// OP_STORE_F	75	3813	0
// OP_SUB_F	213	74	3822
// OP_STORE_F	3822	3814	0
// OP_STORE_F	213	3815	0
// OP_MUL_V	3810	3813	3823
// OP_GT	3823	213	3824
// OP_IFNOT	3824	5	0
// OP_SUB_F	213	75	3825
// OP_STORE_F	3825	3810	0
// OP_STORE_F	74	3811	0
// OP_GOTO	4	0	0
// OP_STORE_F	75	3810	0
// OP_SUB_F	213	74	3826
// OP_STORE_F	3826	3811	0
// OP_STORE_F	213	3812	0
// OP_ADDRESS	28	191	3827
// OP_STORE_V	3810	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	3827	0
// OP_DONE	0	0	0
void (vector globaldef001711) ChooseTurn = 
{
    local vector globaldef001715;
    local vector globaldef001719;
    globaldef001715 = self.origin - globaldef001711;
    globaldef001719_x = trace_plane_normal_y;
    globaldef001719_y = FALSE - trace_plane_normal_x;
    globaldef001719_z = FALSE;
    if((globaldef001715 * globaldef001719) > FALSE)
    {
        globaldef001715_x = FALSE - trace_plane_normal_y;
        globaldef001715_y = trace_plane_normal_x;
    }
    else
    {
        globaldef001715_x = trace_plane_normal_y;
        globaldef001715_y = FALSE - trace_plane_normal_x;
    }
    
    globaldef001715_z = FALSE;
    self.ideal_yaw = vectoyaw(globaldef001715);
};

