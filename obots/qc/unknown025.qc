void () fd_secret_move1;
void () func000552;
void () fd_secret_move3;
void () func000554;
void () fd_secret_move5;
void () func000556;
void () fd_secret_done;
float globaldef003404;
float globaldef003405;
float globaldef003406;
float globaldef003407;
float globaldef003408;
// func000550
// function begins at statement 15511, parm_start=10649
// OP_ADDRESS	28	152	10650
// OP_STOREP_F	5984	10650	0
// OP_LOAD_V	28	105	10651
// OP_LOAD_V	28	109	10654
// OP_NE_V	10651	10654	10657
// OP_IFNOT	10657	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	10658
// OP_STOREP_S	348	10658	0
// OP_CALL0	520	0	0
// OP_LOAD_F	28	195	10659
// OP_BITAND	10659	10646	10660
// OP_NOT_F	10660	0	10661
// OP_IFNOT	10661	5	0
// OP_ADDRESS	28	366	10662
// OP_STOREP_FNC	519	10662	0
// OP_ADDRESS	28	163	10663
// OP_STOREP_F	250	10663	0
// OP_ADDRESS	28	113	10664
// OP_STOREP_V	286	10664	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	10667
// OP_STORE_V	10667	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	150	10668
// OP_LOAD_F	28	102	10669
// OP_ADD_F	10669	3036	10670
// OP_STOREP_F	10670	10668	0
// OP_LOAD_F	28	195	10671
// OP_BITAND	10671	10644	10672
// OP_SUB_F	214	10672	10673
// OP_STORE_F	10673	10649	0
// OP_LOAD_V	28	400	10674
// OP_STORE_V	10674	4	0
// OP_CALL1	452	0	0
// OP_LOAD_F	28	405	10677
// OP_NOT_F	10677	0	10678
// OP_IFNOT	10678	17	0
// OP_LOAD_F	28	195	10679
// OP_BITAND	10679	10645	10680
// OP_IFNOT	10680	8	0
// OP_ADDRESS	28	405	10681
// OP_LOAD_V	28	142	10682
// OP_MUL_V	62	10682	10685
// OP_STORE_V	10685	4	0
// OP_CALL1	488	0	0
// OP_STOREP_F	1	10681	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	405	10686
// OP_LOAD_V	28	142	10687
// OP_MUL_V	65	10687	10690
// OP_STORE_V	10690	4	0
// OP_CALL1	488	0	0
// OP_STOREP_F	1	10686	0
// OP_LOAD_F	28	404	10691
// OP_NOT_F	10691	0	10692
// OP_IFNOT	10692	7	0
// OP_ADDRESS	28	404	10693
// OP_LOAD_V	28	142	10694
// OP_MUL_V	59	10694	10697
// OP_STORE_V	10697	4	0
// OP_CALL1	488	0	0
// OP_STOREP_F	1	10693	0
// OP_LOAD_F	28	195	10698
// OP_BITAND	10698	10645	10699
// OP_IFNOT	10699	8	0
// OP_ADDRESS	28	410	10700
// OP_LOAD_V	28	105	10703
// OP_LOAD_F	28	405	10706
// OP_MUL_VF	62	10706	10707
// OP_SUB_V	10703	10707	10710
// OP_STOREP_V	10710	10700	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	410	10713
// OP_LOAD_V	28	105	10716
// OP_LOAD_F	28	405	10719
// OP_MUL_F	10719	10649	10720
// OP_MUL_VF	65	10720	10721
// OP_ADD_V	10716	10721	10724
// OP_STOREP_V	10724	10713	0
// OP_ADDRESS	28	414	10727
// OP_LOAD_V	28	410	10730
// OP_LOAD_F	28	404	10733
// OP_MUL_VF	59	10733	10734
// OP_ADD_V	10730	10734	10737
// OP_STOREP_V	10737	10727	0
// OP_LOAD_V	28	410	10740
// OP_STORE_V	10740	4	0
// OP_LOAD_F	28	369	10743
// OP_STORE_V	10743	7	0
// OP_STORE_V	10636	10	0
// OP_CALL3	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10744
// OP_STORE_V	10744	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000550 = 
{
    local float globaldef003410;
    self.health = 10000;
    
    if(self.origin != self.oldorigin)
    {
        return;
    }
    
    self.message = string_null;
    SUB_UseTargets();
    
    if(!(self.spawnflags & globaldef003407))
    {
        self.th_pain = SUB_Null;
        self.takedamage = DAMAGE_NO;
    }
    
    self.velocity = VEC_ORIGIN;
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.nextthink = self.ltime + 0.1;
    globaldef003410 = TRUE - (self.spawnflags & globaldef003405);
    makevectors(self.mangle);
    
    if(!self.t_width)
    {
        if(self.spawnflags & globaldef003406)
        {
            self.t_width = fabs(v_up * self.size);
        }
        else
        {
            self.t_width = fabs(v_right * self.size);
        }
        
    }
    
    
    if(!self.t_length)
    {
        self.t_length = fabs(v_forward * self.size);
    }
    
    if(self.spawnflags & globaldef003406)
    {
        self.dest1 = self.origin - (v_up * self.t_width);
    }
    else
    {
        self.dest1 = self.origin + (v_right * (self.t_width * globaldef003410));
    }
    
    self.dest2 = self.dest1 + (v_forward * self.t_length);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move1);
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
};

