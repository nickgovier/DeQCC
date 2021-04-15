
// BotEnterMessage1
// function begins at statement 36080, parm_start=19709
// OP_STORE_V	19712	4	0
// OP_LOAD_S	19709	180	19713
// OP_STORE_V	19713	7	0
// OP_STORE_V	19714	10	0
// OP_STORE_V	19710	13	0
// OP_STORE_V	2127	16	0
// OP_CALL5	918	0	0
// OP_STORE_ENT	19709	830	0
// OP_STORE_F	19711	820	0
// OP_DONE	0	0	0
void (entity e, string str1, float mnr) BotEnterMessage1 = 
{
    bprint5("", e.netname, ": ", str1, "\n");
    lastBotToTalk = e;
    lastBotMessageNr = mnr;
};


// BotEnterMessage2
// function begins at statement 36090, parm_start=19715
// OP_STORE_V	19712	4	0
// OP_LOAD_S	19715	180	19719
// OP_STORE_V	19719	7	0
// OP_STORE_V	19714	10	0
// OP_STORE_V	19716	13	0
// OP_STORE_V	19717	16	0
// OP_STORE_V	2127	19	0
// OP_CALL6	919	0	0
// OP_STORE_ENT	19715	830	0
// OP_STORE_F	19718	820	0
// OP_DONE	0	0	0
void (entity e, string str1, string str2, float mnr) BotEnterMessage2 = 
{
    bprint6("", e.netname, ": ", str1, str2, "\n");
    lastBotToTalk = e;
    lastBotMessageNr = mnr;
};


// BotEnterMessage3
// function begins at statement 36101, parm_start=19720
// OP_STORE_V	19712	4	0
// OP_LOAD_S	19720	180	19725
// OP_STORE_V	19725	7	0
// OP_STORE_V	19714	10	0
// OP_STORE_V	19721	13	0
// OP_STORE_V	19722	16	0
// OP_STORE_V	19723	19	0
// OP_STORE_V	2127	22	0
// OP_CALL7	920	0	0
// OP_STORE_ENT	19720	830	0
// OP_STORE_F	19724	820	0
// OP_DONE	0	0	0
void (entity e, string str1, string str2, string str3, float mnr) BotEnterMessage3 = 
{
    bprint7("", e.netname, ": ", str1, str2, str3, "\n");
    lastBotToTalk = e;
    lastBotMessageNr = mnr;
};


// BotStoreMessage
// function begins at statement 36113, parm_start=19726
// OP_ADDRESS	19726	614	19730
// OP_STOREP_S	19727	19730	0
// OP_ADDRESS	19726	615	19731
// OP_STOREP_S	348	19731	0
// OP_ADDRESS	19726	616	19732
// OP_STOREP_S	348	19732	0
// OP_ADDRESS	19726	617	19733
// OP_STOREP_F	19728	19733	0
// OP_ADDRESS	19726	422	19734
// OP_ADD_F	31	19729	19735
// OP_STOREP_F	19735	19734	0
// OP_DONE	0	0	0
void (entity e, string str1, float mnr, float mtime) BotStoreMessage = 
{
    e.messagestr1 = str1;
    e.messagestr2 = string_null;
    e.messagestr3 = string_null;
    e.messagenr = mnr;
    e.pausetime = time + mtime;
};


// BotStoreMessage2
// function begins at statement 36125, parm_start=19736
// OP_ADDRESS	19736	614	19741
// OP_STOREP_S	19737	19741	0
// OP_ADDRESS	19736	615	19742
// OP_STOREP_S	19738	19742	0
// OP_ADDRESS	19736	616	19743
// OP_STOREP_S	348	19743	0
// OP_ADDRESS	19736	617	19744
// OP_STOREP_F	19739	19744	0
// OP_ADDRESS	19736	422	19745
// OP_ADD_F	31	19740	19746
// OP_STOREP_F	19746	19745	0
// OP_DONE	0	0	0
void (entity e, string str1, string str2, float mnr, float mtime) BotStoreMessage2 = 
{
    e.messagestr1 = str1;
    e.messagestr2 = str2;
    e.messagestr3 = string_null;
    e.messagenr = mnr;
    e.pausetime = time + mtime;
};


// BotStoreMessage3
// function begins at statement 36137, parm_start=19747
// OP_ADDRESS	19747	614	19753
// OP_STOREP_S	19748	19753	0
// OP_ADDRESS	19747	615	19754
// OP_STOREP_S	19749	19754	0
// OP_ADDRESS	19747	616	19755
// OP_STOREP_S	19750	19755	0
// OP_ADDRESS	19747	617	19756
// OP_STOREP_F	19751	19756	0
// OP_ADDRESS	19747	422	19757
// OP_ADD_F	31	19752	19758
// OP_STOREP_F	19758	19757	0
// OP_DONE	0	0	0
void (entity e, string str1, string str2, string str3, float mnr, float mtime) BotStoreMessage3 = 
{
    e.messagestr1 = str1;
    e.messagestr2 = str2;
    e.messagestr3 = str3;
    e.messagenr = mnr;
    e.pausetime = time + mtime;
};


// RandomNameExcept
// function begins at statement 36149, parm_start=19759
// OP_STORE_F	213	19760	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_IFNOT	19762	13	0
// OP_LOAD_S	19762	180	19763
// OP_LOAD_S	19759	180	19764
// OP_NE_S	19763	19764	19765
// OP_IFNOT	19765	3	0
// OP_ADD_F	19760	214	19766
// OP_STORE_F	19766	19760	0
// OP_STORE_V	19762	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_GOTO	-12	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_IFNOT	19762	13	0
// OP_LOAD_S	19762	180	19767
// OP_LOAD_S	19759	180	19768
// OP_NE_S	19767	19768	19769
// OP_IFNOT	19769	3	0
// OP_ADD_F	19760	214	19770
// OP_STORE_F	19770	19760	0
// OP_STORE_V	19762	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_GOTO	-12	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	19760	1	19771
// OP_STORE_V	19771	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	1	214	19772
// OP_STORE_F	19772	19761	0
// OP_STORE_F	213	19760	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_IFNOT	19762	17	0
// OP_LOAD_S	19762	180	19773
// OP_LOAD_S	19759	180	19774
// OP_NE_S	19773	19774	19775
// OP_IFNOT	19775	3	0
// OP_ADD_F	19760	214	19776
// OP_STORE_F	19776	19760	0
// OP_EQ_F	19760	19761	19777
// OP_IFNOT	19777	3	0
// OP_LOAD_S	19762	180	19778
// OP_RETURN	19778	0	0
// OP_STORE_V	19762	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_GOTO	-16	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_IFNOT	19762	17	0
// OP_LOAD_S	19762	180	19779
// OP_LOAD_S	19759	180	19780
// OP_NE_S	19779	19780	19781
// OP_IFNOT	19781	3	0
// OP_ADD_F	19760	214	19782
// OP_STORE_F	19782	19760	0
// OP_EQ_F	19760	19761	19783
// OP_IFNOT	19783	3	0
// OP_LOAD_S	19762	180	19784
// OP_RETURN	19784	0	0
// OP_STORE_V	19762	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19762	0
// OP_GOTO	-16	0	0
// OP_RETURN	19785	0	0
// OP_DONE	0	0	0
string (entity e) RandomNameExcept = 
{
    local float count;
    local float rnd;
    local entity plr_ent;
    count = FALSE;
    plr_ent = find(world, classname, "player");
    
    while(plr_ent)
    {
        
        if(plr_ent.netname != e.netname)
        {
            count = count + TRUE;
        }
        
        plr_ent = find(plr_ent, classname, "player");
    }
    
    plr_ent = find(world, classname, "bot");
    
    while(plr_ent)
    {
        
        if(plr_ent.netname != e.netname)
        {
            count = count + TRUE;
        }
        
        plr_ent = find(plr_ent, classname, "bot");
    }
    
    rnd = (floor(count * random())) + TRUE;
    count = FALSE;
    plr_ent = find(world, classname, "player");
    
    while(plr_ent)
    {
        
        if(plr_ent.netname != e.netname)
        {
            count = count + TRUE;
        }
        
        
        if(count == rnd)
        {
            return plr_ent.netname;
        }
        
        plr_ent = find(plr_ent, classname, "player");
    }
    
    plr_ent = find(world, classname, "bot");
    
    while(plr_ent)
    {
        
        if(plr_ent.netname != e.netname)
        {
            count = count + TRUE;
        }
        
        
        if(count == rnd)
        {
            return plr_ent.netname;
        }
        
        plr_ent = find(plr_ent, classname, "bot");
    }
    
    return "unknown";
};


// ObserverName
// function begins at statement 36239, parm_start=19786
// OP_STORE_F	213	19786	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19788	0
// OP_IFNOT	19788	9	0
// OP_ADD_F	19786	214	19789
// OP_STORE_F	19789	19786	0
// OP_STORE_V	19788	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19788	0
// OP_GOTO	-8	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	19786	1	19790
// OP_STORE_V	19790	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	1	214	19791
// OP_STORE_F	19791	19787	0
// OP_STORE_F	213	19786	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19788	0
// OP_IFNOT	19788	13	0
// OP_ADD_F	19786	214	19792
// OP_STORE_F	19792	19786	0
// OP_EQ_F	19786	19787	19793
// OP_IFNOT	19793	3	0
// OP_LOAD_S	19788	180	19794
// OP_RETURN	19794	0	0
// OP_STORE_V	19788	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19788	0
// OP_GOTO	-12	0	0
// OP_RETURN	19795	0	0
// OP_DONE	0	0	0
string () ObserverName = 
{
    local float count;
    local float rnd;
    local entity obs_ent;
    count = FALSE;
    obs_ent = find(world, classname, "observer");
    
    while(obs_ent)
    {
        count = count + TRUE;
        obs_ent = find(obs_ent, classname, "observer");
    }
    
    rnd = (floor(count * random())) + TRUE;
    count = FALSE;
    obs_ent = find(world, classname, "observer");
    
    while(obs_ent)
    {
        count = count + TRUE;
        
        if(count == rnd)
        {
            return obs_ent.netname;
        }
        
        obs_ent = find(obs_ent, classname, "observer");
    }
    
    return "you there";
};


// BotRemoveMessage
// function begins at statement 36281, parm_start=19796
// OP_ADDRESS	19796	614	19797
// OP_STOREP_S	348	19797	0
// OP_ADDRESS	19796	615	19798
// OP_STOREP_S	348	19798	0
// OP_ADDRESS	19796	616	19799
// OP_STOREP_S	348	19799	0
// OP_ADDRESS	19796	617	19800
// OP_STOREP_F	213	19800	0
// OP_DONE	0	0	0
void (entity e) BotRemoveMessage = 
{
    e.messagestr1 = string_null;
    e.messagestr2 = string_null;
    e.messagestr3 = string_null;
    e.messagenr = FALSE;
};


// BotEnterMessage
// function begins at statement 36290, parm_start=19801
// OP_LOAD_S	19801	614	19802
// OP_IFNOT	19802	31	0
// OP_LOAD_S	19801	615	19803
// OP_IFNOT	19803	23	0
// OP_LOAD_S	19801	616	19804
// OP_IFNOT	19804	12	0
// OP_STORE_V	19801	4	0
// OP_LOAD_S	19801	614	19805
// OP_STORE_V	19805	7	0
// OP_LOAD_S	19801	615	19806
// OP_STORE_V	19806	10	0
// OP_LOAD_S	19801	616	19807
// OP_STORE_V	19807	13	0
// OP_LOAD_F	19801	617	19808
// OP_STORE_V	19808	16	0
// OP_CALL5	1072	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	19801	4	0
// OP_LOAD_S	19801	614	19809
// OP_STORE_V	19809	7	0
// OP_LOAD_S	19801	615	19810
// OP_STORE_V	19810	10	0
// OP_LOAD_F	19801	617	19811
// OP_STORE_V	19811	13	0
// OP_CALL4	1071	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	19801	4	0
// OP_LOAD_S	19801	614	19812
// OP_STORE_V	19812	7	0
// OP_LOAD_F	19801	617	19813
// OP_STORE_V	19813	10	0
// OP_CALL3	1070	0	0
// OP_STORE_V	19801	4	0
// OP_CALL1	1076	0	0
// OP_DONE	0	0	0
void (entity e) BotEnterMessage = 
{
    
    if(e.messagestr1)
    {
        if(e.messagestr2)
        {
            if(e.messagestr3)
            {
                BotEnterMessage3(e, e.messagestr1, e.messagestr2, e.messagestr3, e.messagenr);
            }
            else
            {
                BotEnterMessage2(e, e.messagestr1, e.messagestr2, e.messagenr);
            }
            
        }
        else
        {
            BotEnterMessage1(e, e.messagestr1, e.messagenr);
        }
        
    }
    
    BotRemoveMessage(e);
};


// CheckBotExitMessage
// function begins at statement 36325, parm_start=19814
// OP_CALL0	457	0	0
// OP_GT	1	539	19815
// OP_IFNOT	19815	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19814	4	0
// OP_CALL1	1088	0	0
// OP_STORE_V	19814	4	0
// OP_CALL1	1077	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity bot) CheckBotExitMessage = 
{
    
    if(random() > RA_PLAYERSTATTIME)
    {
        return FALSE;
    }
    
    BotChooseExitMessage(bot);
    BotEnterMessage(bot);
    return TRUE;
};


// CheckBotDeathMessage
// function begins at statement 36335, parm_start=19816
// OP_BITAND	821	770	19817
// OP_IFNOT	19817	2	0
// OP_RETURN	213	0	0
// OP_IFNOT	37	2	0
// OP_RETURN	213	0	0
// OP_CALL0	457	0	0
// OP_GT	1	3036	19818
// OP_IFNOT	19818	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19816	619	19819
// OP_NOT_ENT	19819	0	19820
// OP_IFNOT	19820	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19816	618	19821
// OP_LOAD_ENT	19816	619	19822
// OP_EQ_E	19821	19822	19823
// OP_IFNOT	19823	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19816	619	19824
// OP_LOAD_S	19824	129	19825
// OP_NE_S	19825	1236	19826
// OP_LOAD_ENT	19816	619	19827
// OP_LOAD_S	19827	129	19828
// OP_NE_S	19828	1241	19829
// OP_AND	19826	19829	19830
// OP_IFNOT	19830	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19816	4	0
// OP_CALL1	1090	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity bot) CheckBotDeathMessage = 
{
    
    if(obot_game_option_bitflags & OBOT_TALK)
    {
        return FALSE;
    }
    
    
    if(teamplay)
    {
        return FALSE;
    }
    
    
    if(random() > 0.1)
    {
        return FALSE;
    }
    
    
    if(!bot.attackedby)
    {
        return FALSE;
    }
    
    
    if(bot.field000295 == bot.attackedby)
    {
        return FALSE;
    }
    
    
    if((bot.attackedby.classname != "player") && (bot.attackedby.classname != "bot"))
    {
        return FALSE;
    }
    
    BotChooseDeathMessage(bot);
    return TRUE;
};


// CheckBotKillMessage
// function begins at statement 36366, parm_start=19831
// OP_BITAND	821	770	19832
// OP_IFNOT	19832	2	0
// OP_RETURN	213	0	0
// OP_IFNOT	37	2	0
// OP_RETURN	213	0	0
// OP_CALL0	457	0	0
// OP_GT	1	3036	19833
// OP_IFNOT	19833	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19831	618	19834
// OP_NOT_ENT	19834	0	19835
// OP_IFNOT	19835	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19831	618	19836
// OP_LOAD_ENT	19831	181	19837
// OP_NE_E	19836	19837	19838
// OP_IFNOT	19838	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19831	618	19839
// OP_LOAD_ENT	19831	619	19840
// OP_EQ_E	19839	19840	19841
// OP_IFNOT	19841	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	19831	618	19842
// OP_LOAD_S	19842	129	19843
// OP_NE_S	19843	1236	19844
// OP_LOAD_ENT	19831	618	19845
// OP_LOAD_S	19845	129	19846
// OP_NE_S	19846	1241	19847
// OP_AND	19844	19847	19848
// OP_IFNOT	19848	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19831	165	19849
// OP_NE_F	19849	248	19850
// OP_IFNOT	19850	22	0
// OP_LOAD_F	19831	575	19851
// OP_BITAND	19851	700	19852
// OP_NOT_F	19852	0	19853
// OP_IFNOT	19853	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19831	190	19854
// OP_EQ_F	19854	280	19855
// OP_IFNOT	19855	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19831	190	19856
// OP_EQ_F	19856	279	19857
// OP_IFNOT	19857	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19831	189	19858
// OP_GE	19858	228	19859
// OP_IFNOT	19859	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19831	4	0
// OP_CALL1	1114	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19831	4	0
// OP_CALL1	1089	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity bot) CheckBotKillMessage = 
{
    
    if(obot_game_option_bitflags & OBOT_TALK)
    {
        return FALSE;
    }
    
    
    if(teamplay)
    {
        return FALSE;
    }
    
    
    if(random() > 0.1)
    {
        return FALSE;
    }
    
    
    if(!bot.field000295)
    {
        return FALSE;
    }
    
    
    if(bot.field000295 != bot.enemy)
    {
        return FALSE;
    }
    
    
    if(bot.field000295 == bot.attackedby)
    {
        return FALSE;
    }
    
    
    if((bot.field000295.classname != "player") && (bot.field000295.classname != "bot"))
    {
        return FALSE;
    }
    
    
    if(bot.deadflag != DEAD_DEAD)
    {
        
        if(!(bot.botflags & globaldef000683))
        {
            return FALSE;
        }
        
        
        if(bot.watertype == CONTENT_LAVA)
        {
            return FALSE;
        }
        
        
        if(bot.watertype == CONTENT_SLIME)
        {
            return FALSE;
        }
        
        
        if(bot.waterlevel >= MOVETYPE_WALK)
        {
            return FALSE;
        }
        
        
        if(BotIsOnPlatDoorTrain(bot))
        {
            return FALSE;
        }
        
    }
    
    BotChooseKillMessage(bot);
    return TRUE;
};


// func002379
// function begins at statement 36426, parm_start=19860
// OP_BITAND	821	770	19861
// OP_IFNOT	19861	2	0
// OP_RETURN	213	0	0
// OP_IFNOT	37	2	0
// OP_RETURN	213	0	0
// OP_CALL0	457	0	0
// OP_GT	1	5500	19862
// OP_IFNOT	19862	2	0
// OP_RETURN	213	0	0
// OP_CALL0	457	0	0
// OP_GT	1	3036	19863
// OP_IFNOT	19863	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19860	165	19864
// OP_NE_F	19864	248	19865
// OP_IFNOT	19865	22	0
// OP_LOAD_F	19860	575	19866
// OP_BITAND	19866	700	19867
// OP_NOT_F	19867	0	19868
// OP_IFNOT	19868	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19860	190	19869
// OP_EQ_F	19869	280	19870
// OP_IFNOT	19870	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19860	190	19871
// OP_EQ_F	19871	279	19872
// OP_IFNOT	19872	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	19860	189	19873
// OP_GT	19873	216	19874
// OP_IFNOT	19874	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19860	4	0
// OP_CALL1	1114	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	19860	4	0
// OP_CALL1	1092	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef006844) func002379 = 
{
    
    if(obot_game_option_bitflags & OBOT_TALK)
    {
        return FALSE;
    }
    
    
    if(teamplay)
    {
        return FALSE;
    }
    
    
    if(random() > 0.01)
    {
        return FALSE;
    }
    
    
    if(random() > 0.1)
    {
        return FALSE;
    }
    
    
    if(globaldef006844.deadflag != DEAD_DEAD)
    {
        
        if(!(globaldef006844.botflags & globaldef000683))
        {
            return FALSE;
        }
        
        
        if(globaldef006844.watertype == CONTENT_LAVA)
        {
            return FALSE;
        }
        
        
        if(globaldef006844.watertype == CONTENT_SLIME)
        {
            return FALSE;
        }
        
        
        if(globaldef006844.waterlevel > FL_SWIM)
        {
            return FALSE;
        }
        
        
        if(BotIsOnPlatDoorTrain(globaldef006844))
        {
            return FALSE;
        }
        
    }
    
    BotChooseInsultMessage(globaldef006844);
    return TRUE;
};


// func002380
// function begins at statement 36467, parm_start=19875
// OP_BITAND	821	770	19875
// OP_IFNOT	19875	2	0
// OP_RETURN	0	0	0
// OP_IFNOT	37	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_GT	1	5500	19876
// OP_IFNOT	19876	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_LT	1	19877	19878
// OP_IFNOT	19878	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_GT	1	3409	19879
// OP_IFNOT	19879	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	814	810	19880
// OP_SUB_F	19880	809	19881
// OP_LE	19881	214	19882
// OP_IFNOT	19882	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1093	0	0
// OP_DONE	0	0	0
void () func002380 = 
{
    
    if(obot_game_option_bitflags & OBOT_TALK)
    {
        return;
    }
    
    
    if(teamplay)
    {
        return;
    }
    
    
    if(random() > 0.01)
    {
        return;
    }
    
    
    if(random() < 0.95)
    {
        return;
    }
    
    
    if(random() > 0.3)
    {
        return;
    }
    
    
    if(((activeClientCount - botCount) - observerCount) <= TRUE)
    {
        return;
    }
    
    BotChooseRandomMessage(self);
};

