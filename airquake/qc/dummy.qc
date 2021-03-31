// dummycraft_touch
// function begins at statement 31402, parm_start=21847
// OP_LOAD_F	29	129	21847
// OP_EQ_F	21847	292	21848
// OP_IFNOT	21848	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	219	21849
// OP_EQ_E	29	21849	21850
// OP_IFNOT	21850	2	0
// OP_RETURN	0	0	0
// OP_NE_E	29	30	21851
// OP_IFNOT	21851	5	0
// OP_LOAD_F	29	188	21852
// OP_NOT_F	21852	0	21853
// OP_IFNOT	21853	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	21854
// OP_LOAD_FNC	28	411	21855
// OP_STOREP_FNC	21855	21854	0
// OP_ADDRESS	28	175	21856
// OP_ADD_F	31	655	21857
// OP_STOREP_F	21857	21856	0
// OP_DONE	0	0	0
void () dummycraft_touch = 
{
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(other == self.goalentity)
    {
        return;
    }
    
    
    if(other != world)
    {
        
        if(!other.takedamage)
        {
            return;
        }
        
    }
    
    self.think = self.th_die;
    self.nextthink = time + 0.100;
};

// dummycraft_die
// function begins at statement 31423, parm_start=21859
// OP_ADDRESS	28	173	21859
// OP_STOREP_FNC	3796	21859	0
// OP_ADDRESS	28	175	21860
// OP_ADD_F	31	1349	21861
// OP_STOREP_F	21861	21860	0
// OP_DONE	0	0	0
void () dummycraft_die = 
{
    self.think = AC_Explode;
    self.nextthink = time + 0.200;
};

// monster_dummycraft
// function begins at statement 31429, parm_start=21863
// OP_ADDRESS	28	129	21863
// OP_STOREP_F	294	21863	0
// OP_ADDRESS	28	128	21864
// OP_STOREP_F	285	21864	0
// OP_LOAD_F	28	404	21865
// OP_NOT_F	21865	0	21866
// OP_IFNOT	21866	11	0
// OP_ADDRESS	28	404	21867
// OP_CALL0	501	0	0
// OP_MUL_F	1	21868	21869
// OP_STOREP_F	21869	21867	0
// OP_ADDRESS	28	404	21870
// OP_LOAD_F	28	404	21871
// OP_STORE_V	21871	4	0
// OP_CALL1	530	0	0
// OP_ADD_F	1	677	21872
// OP_STOREP_F	21872	21870	0
// OP_LOAD_F	28	404	21873
// OP_EQ_F	21873	677	21874
// OP_IFNOT	21874	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7668	7	0
// OP_CALL2	498	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	404	21875
// OP_EQ_F	21875	806	21876
// OP_IFNOT	21876	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8136	7	0
// OP_CALL2	498	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	404	21877
// OP_EQ_F	21877	788	21878
// OP_IFNOT	21878	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1802	7	0
// OP_CALL2	498	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	404	21879
// OP_EQ_F	21879	808	21880
// OP_IFNOT	21880	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9059	7	0
// OP_CALL2	498	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	404	21881
// OP_EQ_F	21881	813	21882
// OP_IFNOT	21882	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9600	7	0
// OP_CALL2	498	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	404	21883
// OP_EQ_F	21883	816	21884
// OP_IFNOT	21884	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10187	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	205	21885
// OP_STOREP_S	21886	21885	0
// OP_CALL0	527	0	0
// OP_LOAD_F	28	177	21887
// OP_NOT_F	21887	0	21888
// OP_IFNOT	21888	3	0
// OP_ADDRESS	28	177	21889
// OP_STOREP_F	2618	21889	0
// OP_ADDRESS	28	188	21890
// OP_STOREP_F	306	21890	0
// OP_ADDRESS	28	171	21891
// OP_STOREP_FNC	21846	21891	0
// OP_ADDRESS	28	411	21892
// OP_STOREP_FNC	21858	21892	0
// OP_DONE	0	0	0
void () monster_dummycraft = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_TOSS;
    
    if(!self.style)
    {
        self.style = random() * 5.900;
        self.style = floor(self.style) + 1.000;
    }
    
    if(self.style == 1.000)
    {
        setmodel(self, "progs/plane1.mdl");
    }
    else
    {
        if(self.style == 2.000)
        {
            setmodel(self, "progs/plane2.mdl");
        }
        else
        {
            if(self.style == 3.000)
            {
                setmodel(self, "progs/plane3.mdl");
            }
            else
            {
                if(self.style == 4.000)
                {
                    setmodel(self, "progs/plane4.mdl");
                }
                else
                {
                    if(self.style == 5.000)
                    {
                        setmodel(self, "progs/plane5.mdl");
                    }
                    else
                    {
                        
                        if(self.style == 6.000)
                        {
                            setmodel(self, "progs/helo1.mdl");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    setsize(self, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    self.netname = "a plane";
    droptofloor();
    
    if(!self.health)
    {
        self.health = 100.000;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.touch = dummycraft_touch;
    self.th_die = dummycraft_die;
};

