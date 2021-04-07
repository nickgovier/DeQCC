// LaunchMissile
// function begins at statement 21321, parm_start=13537
// OP_LOAD_V	28	117	13547
// OP_STORE_V	13547	4	0
// OP_CALL1	452	0	0
// OP_LOAD_ENT	28	181	13550
// OP_LOAD_V	13550	105	13551
// OP_LOAD_ENT	28	181	13554
// OP_LOAD_V	13554	134	13555
// OP_ADD_V	13551	13555	13558
// OP_LOAD_ENT	28	181	13561
// OP_LOAD_V	13561	142	13562
// OP_MUL_VF	13562	5599	13565
// OP_ADD_V	13558	13565	13568
// OP_LOAD_V	13537	105	13571
// OP_SUB_V	13568	13571	13574
// OP_STORE_V	13574	13540	0
// OP_STORE_V	13540	4	0
// OP_CALL1	462	0	0
// OP_DIV_F	1	13538	13577
// OP_STORE_F	13577	13546	0
// OP_LOAD_ENT	28	181	13578
// OP_LOAD_V	13578	113	13579
// OP_STORE_V	13579	13543	0
// OP_STORE_F	213	13545	0
// OP_MUL_VF	13543	13546	13582
// OP_ADD_V	13540	13582	13585
// OP_STORE_V	13585	13540	0
// OP_STORE_V	13540	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	13540	0
// OP_MUL_FV	13539	62	13588
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	13591
// OP_MUL_VF	13588	13591	13592
// OP_ADD_V	13540	13592	13595
// OP_MUL_FV	13539	65	13598
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	13601
// OP_MUL_VF	13598	13601	13602
// OP_ADD_V	13595	13602	13605
// OP_STORE_V	13605	13540	0
// OP_ADDRESS	13537	113	13608
// OP_MUL_VF	13540	13538	13611
// OP_STOREP_V	13611	13608	0
// OP_ADDRESS	13537	117	13614
// OP_STOREP_V	286	13614	0
// OP_ADDRESS	13537	119	13617
// OP_LOAD_V	13537	113	13618
// OP_STORE_V	13618	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	13617	0
// OP_ADDRESS	13537	150	13621
// OP_ADD_F	31	230	13622
// OP_STOREP_F	13622	13621	0
// OP_ADDRESS	13537	148	13623
// OP_STOREP_FNC	521	13623	0
// OP_DONE	0	0	0
void (entity globaldef004294, float globaldef004295, float globaldef004296) LaunchMissile = 
{
    local vector globaldef004297;
    local vector globaldef004301;
    local float globaldef004305;
    makevectors(self.angles);
    globaldef004297 = ((self.enemy.origin + self.enemy.mins) + (self.enemy.size * 0.7)) - globaldef004294.origin;
    globaldef004305 = vlen(globaldef004297) / globaldef004295;
    globaldef004301 = self.enemy.velocity;
    globaldef004301_z = FALSE;
    globaldef004297 = globaldef004297 + (globaldef004301 * globaldef004305);
    globaldef004297 = normalize(globaldef004297);
    globaldef004297 = (globaldef004297 + ((globaldef004296 * v_up) * (random() - globaldef000522))) + ((globaldef004296 * v_right) * (random() - globaldef000522));
    globaldef004294.velocity = globaldef004297 * globaldef004295;
    globaldef004294.angles = VEC_ORIGIN;
    globaldef004294.angles_y = vectoyaw(globaldef004294.velocity);
    globaldef004294.nextthink = time + MOVETYPE_FLY;
    globaldef004294.think = SUB_Remove;
};

// monster_wizard
// function begins at statement 21898, parm_start=13914
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13914	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13901	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13735	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13915	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13722	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13890	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13821	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13823	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13909	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3671	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13916
// OP_STOREP_F	240	13916	0
// OP_ADDRESS	28	103	13917
// OP_STOREP_F	229	13917	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13914	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13918
// OP_STOREP_F	2805	13918	0
// OP_ADDRESS	28	361	13919
// OP_STOREP_FNC	13824	13919	0
// OP_ADDRESS	28	362	13920
// OP_STOREP_FNC	13832	13920	0
// OP_ADDRESS	28	363	13921
// OP_STOREP_FNC	13624	13921	0
// OP_ADDRESS	28	364	13922
// OP_STOREP_FNC	13912	13922	0
// OP_ADDRESS	28	366	13923
// OP_STOREP_FNC	13906	13923	0
// OP_ADDRESS	28	367	13924
// OP_STOREP_FNC	13898	13924	0
// OP_CALL0	10156	0	0
// OP_DONE	0	0	0
void () monster_wizard = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/wizard.mdl");
    precache_model("progs/h_wizard.mdl");
    precache_model("progs/w_spike.mdl");
    precache_sound("wizard/hit.wav");
    precache_sound("wizard/wattack.wav");
    precache_sound("wizard/wdeath.wav");
    precache_sound("wizard/widle1.wav");
    precache_sound("wizard/widle2.wav");
    precache_sound("wizard/wpain.wav");
    precache_sound("wizard/wsight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/wizard.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = func001201;
    self.th_walk = func001209;
    self.th_run = func001225;
    self.th_missile = func001263;
    self.th_pain = func001262;
    self.th_die = func001261;
    func000533();
};

