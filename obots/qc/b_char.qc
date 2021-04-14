float BOT0 = 0;
float BOT1 = 1;
float BOT2 = 2;
float BOT3 = 3;
float BOT4 = 4;
float BOT5 = 5;
float BOT6 = 6;
float BOT7 = 7;
float BOT8 = 8;
float BOT9 = 9;
float BOT10 = 10;
float BOT11 = 11;
float BOT12 = 12;
float BOT13 = 13;
float BOT14 = 14;
float BOT15 = 15;
float BOT16 = 16;
float BOT17 = 17;
float BOT18 = 18;
float BOT19 = 19;
float BOT20 = 20;
float BOT21 = 21;
float BOT22 = 22;
float BOT23 = 23;
float globaldef005806;
float globaldef005807;
float globaldef005808;
float globaldef005809;
float globaldef005810;
float globaldef005811;
float globaldef005812;
float globaldef005813;
float globaldef005814;
float globaldef005815;
float globaldef005816;
float globaldef005817;
float globaldef005818;
float globaldef005819;

// BotName
// function begins at statement 27984, parm_start=16708
// OP_EQ_F	16708	16693	16709
// OP_IFNOT	16709	3	0
// OP_RETURN	16710	0	0
// OP_GOTO	94	0	0
// OP_EQ_F	16708	16671	16711
// OP_IFNOT	16711	3	0
// OP_RETURN	16712	0	0
// OP_GOTO	90	0	0
// OP_EQ_F	16708	16672	16713
// OP_IFNOT	16713	3	0
// OP_RETURN	16714	0	0
// OP_GOTO	86	0	0
// OP_EQ_F	16708	16673	16715
// OP_IFNOT	16715	3	0
// OP_RETURN	16716	0	0
// OP_GOTO	82	0	0
// OP_EQ_F	16708	16674	16717
// OP_IFNOT	16717	3	0
// OP_RETURN	16718	0	0
// OP_GOTO	78	0	0
// OP_EQ_F	16708	16675	16719
// OP_IFNOT	16719	3	0
// OP_RETURN	16720	0	0
// OP_GOTO	74	0	0
// OP_EQ_F	16708	16676	16721
// OP_IFNOT	16721	3	0
// OP_RETURN	16722	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	16708	16677	16723
// OP_IFNOT	16723	3	0
// OP_RETURN	16724	0	0
// OP_GOTO	66	0	0
// OP_EQ_F	16708	16678	16725
// OP_IFNOT	16725	3	0
// OP_RETURN	16726	0	0
// OP_GOTO	62	0	0
// OP_EQ_F	16708	16679	16727
// OP_IFNOT	16727	3	0
// OP_RETURN	16728	0	0
// OP_GOTO	58	0	0
// OP_EQ_F	16708	16680	16729
// OP_IFNOT	16729	3	0
// OP_RETURN	16730	0	0
// OP_GOTO	54	0	0
// OP_EQ_F	16708	16681	16731
// OP_IFNOT	16731	3	0
// OP_RETURN	16732	0	0
// OP_GOTO	50	0	0
// OP_EQ_F	16708	16682	16733
// OP_IFNOT	16733	3	0
// OP_RETURN	16734	0	0
// OP_GOTO	46	0	0
// OP_EQ_F	16708	16683	16735
// OP_IFNOT	16735	3	0
// OP_RETURN	16736	0	0
// OP_GOTO	42	0	0
// OP_EQ_F	16708	16684	16737
// OP_IFNOT	16737	3	0
// OP_RETURN	16738	0	0
// OP_GOTO	38	0	0
// OP_EQ_F	16708	16685	16739
// OP_IFNOT	16739	3	0
// OP_RETURN	16740	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	16708	16686	16741
// OP_IFNOT	16741	3	0
// OP_RETURN	16742	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	16708	16687	16743
// OP_IFNOT	16743	3	0
// OP_RETURN	16744	0	0
// OP_GOTO	26	0	0
// OP_EQ_F	16708	16688	16745
// OP_IFNOT	16745	3	0
// OP_RETURN	16746	0	0
// OP_GOTO	22	0	0
// OP_EQ_F	16708	16689	16747
// OP_IFNOT	16747	3	0
// OP_RETURN	16748	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	16708	16690	16749
// OP_IFNOT	16749	3	0
// OP_RETURN	16750	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	16708	16691	16751
// OP_IFNOT	16751	3	0
// OP_RETURN	16752	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	16708	16692	16753
// OP_IFNOT	16753	3	0
// OP_RETURN	16754	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	16708	16670	16755
// OP_IFNOT	16755	3	0
// OP_RETURN	16756	0	0
// OP_GOTO	2	0	0
// OP_RETURN	16757	0	0
// OP_DONE	0	0	0
string (float n) BotName = 
{
    if(n == BOT23)
    {
        return "Klingon";
    }
    else
    {
        if(n == BOT1)
        {
            return "John Carmack";
        }
        else
        {
            if(n == BOT2)
            {
                return "Bill Gates";
            }
            else
            {
                if(n == BOT3)
                {
                    return "Happy Slappy";
                }
                else
                {
                    if(n == BOT4)
                    {
                        return "Terminator";
                    }
                    else
                    {
                        if(n == BOT5)
                        {
                            return "Tigger";
                        }
                        else
                        {
                            if(n == BOT6)
                            {
                                return "Ironman";
                            }
                            else
                            {
                                if(n == BOT7)
                                {
                                    return "Predator";
                                }
                                else
                                {
                                    if(n == BOT8)
                                    {
                                        return "Sven";
                                    }
                                    else
                                    {
                                        if(n == BOT9)
                                        {
                                            return "Raphael";
                                        }
                                        else
                                        {
                                            if(n == BOT10)
                                            {
                                                return "Bob";
                                            }
                                            else
                                            {
                                                if(n == BOT11)
                                                {
                                                    return "Qspy";
                                                }
                                                else
                                                {
                                                    if(n == BOT12)
                                                    {
                                                        return "Iceman";
                                                    }
                                                    else
                                                    {
                                                        if(n == BOT13)
                                                        {
                                                            return "The Tick";
                                                        }
                                                        else
                                                        {
                                                            if(n == BOT14)
                                                            {
                                                                return "Tim Willits";
                                                            }
                                                            else
                                                            {
                                                                if(n == BOT15)
                                                                {
                                                                    return "Slaine";
                                                                }
                                                                else
                                                                {
                                                                    if(n == BOT16)
                                                                    {
                                                                        return "Robocop";
                                                                    }
                                                                    else
                                                                    {
                                                                        if(n == BOT17)
                                                                        {
                                                                            return "Cowboy";
                                                                        }
                                                                        else
                                                                        {
                                                                            if(n == BOT18)
                                                                            {
                                                                                return "Hitman";
                                                                            }
                                                                            else
                                                                            {
                                                                                if(n == BOT19)
                                                                                {
                                                                                    return "Mountie";
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(n == BOT20)
                                                                                    {
                                                                                        return "Babe";
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(n == BOT21)
                                                                                        {
                                                                                            return "Punisher";
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(n == BOT22)
                                                                                            {
                                                                                                return "Elvis Presley";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(n == BOT0)
                                                                                                {
                                                                                                    return "Demigod";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    return "bug";
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// BotConsoleName
// function begins at statement 28082, parm_start=16758
// OP_EQ_F	16758	16693	16759
// OP_IFNOT	16759	3	0
// OP_RETURN	16760	0	0
// OP_GOTO	94	0	0
// OP_EQ_F	16758	16671	16761
// OP_IFNOT	16761	3	0
// OP_RETURN	16762	0	0
// OP_GOTO	90	0	0
// OP_EQ_F	16758	16672	16763
// OP_IFNOT	16763	3	0
// OP_RETURN	16764	0	0
// OP_GOTO	86	0	0
// OP_EQ_F	16758	16673	16765
// OP_IFNOT	16765	3	0
// OP_RETURN	16766	0	0
// OP_GOTO	82	0	0
// OP_EQ_F	16758	16674	16767
// OP_IFNOT	16767	3	0
// OP_RETURN	16768	0	0
// OP_GOTO	78	0	0
// OP_EQ_F	16758	16675	16769
// OP_IFNOT	16769	3	0
// OP_RETURN	16770	0	0
// OP_GOTO	74	0	0
// OP_EQ_F	16758	16676	16771
// OP_IFNOT	16771	3	0
// OP_RETURN	16772	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	16758	16677	16773
// OP_IFNOT	16773	3	0
// OP_RETURN	16774	0	0
// OP_GOTO	66	0	0
// OP_EQ_F	16758	16678	16775
// OP_IFNOT	16775	3	0
// OP_RETURN	16776	0	0
// OP_GOTO	62	0	0
// OP_EQ_F	16758	16679	16777
// OP_IFNOT	16777	3	0
// OP_RETURN	16778	0	0
// OP_GOTO	58	0	0
// OP_EQ_F	16758	16680	16779
// OP_IFNOT	16779	3	0
// OP_RETURN	16780	0	0
// OP_GOTO	54	0	0
// OP_EQ_F	16758	16681	16781
// OP_IFNOT	16781	3	0
// OP_RETURN	16782	0	0
// OP_GOTO	50	0	0
// OP_EQ_F	16758	16682	16783
// OP_IFNOT	16783	3	0
// OP_RETURN	16784	0	0
// OP_GOTO	46	0	0
// OP_EQ_F	16758	16683	16785
// OP_IFNOT	16785	3	0
// OP_RETURN	16786	0	0
// OP_GOTO	42	0	0
// OP_EQ_F	16758	16684	16787
// OP_IFNOT	16787	3	0
// OP_RETURN	16788	0	0
// OP_GOTO	38	0	0
// OP_EQ_F	16758	16685	16789
// OP_IFNOT	16789	3	0
// OP_RETURN	16790	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	16758	16686	16791
// OP_IFNOT	16791	3	0
// OP_RETURN	16792	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	16758	16687	16793
// OP_IFNOT	16793	3	0
// OP_RETURN	16794	0	0
// OP_GOTO	26	0	0
// OP_EQ_F	16758	16688	16795
// OP_IFNOT	16795	3	0
// OP_RETURN	16796	0	0
// OP_GOTO	22	0	0
// OP_EQ_F	16758	16689	16797
// OP_IFNOT	16797	3	0
// OP_RETURN	16798	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	16758	16690	16799
// OP_IFNOT	16799	3	0
// OP_RETURN	16800	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	16758	16691	16801
// OP_IFNOT	16801	3	0
// OP_RETURN	16802	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	16758	16692	16803
// OP_IFNOT	16803	3	0
// OP_RETURN	16804	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	16758	16670	16805
// OP_IFNOT	16805	3	0
// OP_RETURN	16806	0	0
// OP_GOTO	2	0	0
// OP_RETURN	16757	0	0
// OP_DONE	0	0	0
string (float n) BotConsoleName = 
{
    if(n == BOT23)
    {
        return "klingon";
    }
    else
    {
        if(n == BOT1)
        {
            return "john";
        }
        else
        {
            if(n == BOT2)
            {
                return "bill";
            }
            else
            {
                if(n == BOT3)
                {
                    return "happy";
                }
                else
                {
                    if(n == BOT4)
                    {
                        return "terminator";
                    }
                    else
                    {
                        if(n == BOT5)
                        {
                            return "tigger";
                        }
                        else
                        {
                            if(n == BOT6)
                            {
                                return "ironman";
                            }
                            else
                            {
                                if(n == BOT7)
                                {
                                    return "predator";
                                }
                                else
                                {
                                    if(n == BOT8)
                                    {
                                        return "sven";
                                    }
                                    else
                                    {
                                        if(n == BOT9)
                                        {
                                            return "raphael";
                                        }
                                        else
                                        {
                                            if(n == BOT10)
                                            {
                                                return "bob";
                                            }
                                            else
                                            {
                                                if(n == BOT11)
                                                {
                                                    return "qspy";
                                                }
                                                else
                                                {
                                                    if(n == BOT12)
                                                    {
                                                        return "iceman";
                                                    }
                                                    else
                                                    {
                                                        if(n == BOT13)
                                                        {
                                                            return "tick";
                                                        }
                                                        else
                                                        {
                                                            if(n == BOT14)
                                                            {
                                                                return "tim";
                                                            }
                                                            else
                                                            {
                                                                if(n == BOT15)
                                                                {
                                                                    return "slaine";
                                                                }
                                                                else
                                                                {
                                                                    if(n == BOT16)
                                                                    {
                                                                        return "robocop";
                                                                    }
                                                                    else
                                                                    {
                                                                        if(n == BOT17)
                                                                        {
                                                                            return "cowboy";
                                                                        }
                                                                        else
                                                                        {
                                                                            if(n == BOT18)
                                                                            {
                                                                                return "hitman";
                                                                            }
                                                                            else
                                                                            {
                                                                                if(n == BOT19)
                                                                                {
                                                                                    return "mountie";
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(n == BOT20)
                                                                                    {
                                                                                        return "babe";
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(n == BOT21)
                                                                                        {
                                                                                            return "punisher";
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(n == BOT22)
                                                                                            {
                                                                                                return "elvis";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(n == BOT0)
                                                                                                {
                                                                                                    return "demigod";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    return "bug";
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// BotShirtPantsColor
// function begins at statement 28180, parm_start=16807
// OP_EQ_F	16807	16693	16808
// OP_IFNOT	16808	5	0
// OP_MUL_F	785	218	16809
// OP_ADD_F	16809	780	16810
// OP_RETURN	16810	0	0
// OP_GOTO	142	0	0
// OP_EQ_F	16807	16671	16811
// OP_IFNOT	16811	5	0
// OP_MUL_F	782	218	16812
// OP_ADD_F	16812	782	16813
// OP_RETURN	16813	0	0
// OP_GOTO	136	0	0
// OP_EQ_F	16807	16672	16814
// OP_IFNOT	16814	5	0
// OP_MUL_F	779	218	16815
// OP_ADD_F	16815	779	16816
// OP_RETURN	16816	0	0
// OP_GOTO	130	0	0
// OP_EQ_F	16807	16673	16817
// OP_IFNOT	16817	5	0
// OP_MUL_F	780	218	16818
// OP_ADD_F	16818	791	16819
// OP_RETURN	16819	0	0
// OP_GOTO	124	0	0
// OP_EQ_F	16807	16674	16820
// OP_IFNOT	16820	5	0
// OP_MUL_F	784	218	16821
// OP_ADD_F	16821	789	16822
// OP_RETURN	16822	0	0
// OP_GOTO	118	0	0
// OP_EQ_F	16807	16675	16823
// OP_IFNOT	16823	5	0
// OP_MUL_F	783	218	16824
// OP_ADD_F	16824	785	16825
// OP_RETURN	16825	0	0
// OP_GOTO	112	0	0
// OP_EQ_F	16807	16676	16826
// OP_IFNOT	16826	5	0
// OP_MUL_F	784	218	16827
// OP_ADD_F	16827	785	16828
// OP_RETURN	16828	0	0
// OP_GOTO	106	0	0
// OP_EQ_F	16807	16677	16829
// OP_IFNOT	16829	5	0
// OP_MUL_F	780	218	16830
// OP_ADD_F	16830	786	16831
// OP_RETURN	16831	0	0
// OP_GOTO	100	0	0
// OP_EQ_F	16807	16678	16832
// OP_IFNOT	16832	5	0
// OP_MUL_F	791	218	16833
// OP_ADD_F	16833	791	16834
// OP_RETURN	16834	0	0
// OP_GOTO	94	0	0
// OP_EQ_F	16807	16679	16835
// OP_IFNOT	16835	5	0
// OP_MUL_F	782	218	16836
// OP_ADD_F	16836	791	16837
// OP_RETURN	16837	0	0
// OP_GOTO	88	0	0
// OP_EQ_F	16807	16680	16838
// OP_IFNOT	16838	5	0
// OP_MUL_F	785	218	16839
// OP_ADD_F	16839	785	16840
// OP_RETURN	16840	0	0
// OP_GOTO	82	0	0
// OP_EQ_F	16807	16681	16841
// OP_IFNOT	16841	5	0
// OP_MUL_F	791	218	16842
// OP_ADD_F	16842	782	16843
// OP_RETURN	16843	0	0
// OP_GOTO	76	0	0
// OP_EQ_F	16807	16682	16844
// OP_IFNOT	16844	5	0
// OP_MUL_F	780	218	16845
// OP_ADD_F	16845	781	16846
// OP_RETURN	16846	0	0
// OP_GOTO	70	0	0
// OP_EQ_F	16807	16683	16847
// OP_IFNOT	16847	5	0
// OP_MUL_F	792	218	16848
// OP_ADD_F	16848	780	16849
// OP_RETURN	16849	0	0
// OP_GOTO	64	0	0
// OP_EQ_F	16807	16684	16850
// OP_IFNOT	16850	5	0
// OP_MUL_F	789	218	16851
// OP_ADD_F	16851	781	16852
// OP_RETURN	16852	0	0
// OP_GOTO	58	0	0
// OP_EQ_F	16807	16685	16853
// OP_IFNOT	16853	5	0
// OP_MUL_F	780	218	16854
// OP_ADD_F	16854	785	16855
// OP_RETURN	16855	0	0
// OP_GOTO	52	0	0
// OP_EQ_F	16807	16686	16856
// OP_IFNOT	16856	5	0
// OP_MUL_F	785	218	16857
// OP_ADD_F	16857	792	16858
// OP_RETURN	16858	0	0
// OP_GOTO	46	0	0
// OP_EQ_F	16807	16687	16859
// OP_IFNOT	16859	5	0
// OP_MUL_F	790	218	16860
// OP_ADD_F	16860	783	16861
// OP_RETURN	16861	0	0
// OP_GOTO	40	0	0
// OP_EQ_F	16807	16688	16862
// OP_IFNOT	16862	5	0
// OP_MUL_F	780	218	16863
// OP_ADD_F	16863	780	16864
// OP_RETURN	16864	0	0
// OP_GOTO	34	0	0
// OP_EQ_F	16807	16689	16865
// OP_IFNOT	16865	5	0
// OP_MUL_F	780	218	16866
// OP_ADD_F	16866	792	16867
// OP_RETURN	16867	0	0
// OP_GOTO	28	0	0
// OP_EQ_F	16807	16690	16868
// OP_IFNOT	16868	5	0
// OP_MUL_F	782	218	16869
// OP_ADD_F	16869	785	16870
// OP_RETURN	16870	0	0
// OP_GOTO	22	0	0
// OP_EQ_F	16807	16691	16871
// OP_IFNOT	16871	5	0
// OP_MUL_F	785	218	16872
// OP_ADD_F	16872	791	16873
// OP_RETURN	16873	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	16807	16692	16874
// OP_IFNOT	16874	5	0
// OP_MUL_F	789	218	16875
// OP_ADD_F	16875	779	16876
// OP_RETURN	16876	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	16807	16670	16877
// OP_IFNOT	16877	5	0
// OP_MUL_F	779	218	16878
// OP_ADD_F	16878	792	16879
// OP_RETURN	16879	0	0
// OP_GOTO	4	0	0
// OP_MUL_F	779	218	16880
// OP_ADD_F	16880	779	16881
// OP_RETURN	16881	0	0
// OP_DONE	0	0	0
float (float n) BotShirtPantsColor = 
{
    if(n == BOT23)
    {
        return (BOTSHIRTPANTS_06 * FL_INWATER) + BOTSHIRTPANTS_01;
    }
    else
    {
        if(n == BOT1)
        {
            return (BOTSHIRTPANTS_03 * FL_INWATER) + BOTSHIRTPANTS_03;
        }
        else
        {
            if(n == BOT2)
            {
                return (BOTSHIRTPANTS_00 * FL_INWATER) + BOTSHIRTPANTS_00;
            }
            else
            {
                if(n == BOT3)
                {
                    return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_12;
                }
                else
                {
                    if(n == BOT4)
                    {
                        return (BOTSHIRTPANTS_05 * FL_INWATER) + BOTSHIRTPANTS_10;
                    }
                    else
                    {
                        if(n == BOT5)
                        {
                            return (BOTSHIRTPANTS_04 * FL_INWATER) + BOTSHIRTPANTS_06;
                        }
                        else
                        {
                            if(n == BOT6)
                            {
                                return (BOTSHIRTPANTS_05 * FL_INWATER) + BOTSHIRTPANTS_06;
                            }
                            else
                            {
                                if(n == BOT7)
                                {
                                    return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_07;
                                }
                                else
                                {
                                    if(n == BOT8)
                                    {
                                        return (BOTSHIRTPANTS_12 * FL_INWATER) + BOTSHIRTPANTS_12;
                                    }
                                    else
                                    {
                                        if(n == BOT9)
                                        {
                                            return (BOTSHIRTPANTS_03 * FL_INWATER) + BOTSHIRTPANTS_12;
                                        }
                                        else
                                        {
                                            if(n == BOT10)
                                            {
                                                return (BOTSHIRTPANTS_06 * FL_INWATER) + BOTSHIRTPANTS_06;
                                            }
                                            else
                                            {
                                                if(n == BOT11)
                                                {
                                                    return (BOTSHIRTPANTS_12 * FL_INWATER) + BOTSHIRTPANTS_03;
                                                }
                                                else
                                                {
                                                    if(n == BOT12)
                                                    {
                                                        return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_02;
                                                    }
                                                    else
                                                    {
                                                        if(n == BOT13)
                                                        {
                                                            return (BOTSHIRTPANTS_13 * FL_INWATER) + BOTSHIRTPANTS_01;
                                                        }
                                                        else
                                                        {
                                                            if(n == BOT14)
                                                            {
                                                                return (BOTSHIRTPANTS_10 * FL_INWATER) + BOTSHIRTPANTS_02;
                                                            }
                                                            else
                                                            {
                                                                if(n == BOT15)
                                                                {
                                                                    return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_06;
                                                                }
                                                                else
                                                                {
                                                                    if(n == BOT16)
                                                                    {
                                                                        return (BOTSHIRTPANTS_06 * FL_INWATER) + BOTSHIRTPANTS_13;
                                                                    }
                                                                    else
                                                                    {
                                                                        if(n == BOT17)
                                                                        {
                                                                            return (BOTSHIRTPANTS_11 * FL_INWATER) + BOTSHIRTPANTS_04;
                                                                        }
                                                                        else
                                                                        {
                                                                            if(n == BOT18)
                                                                            {
                                                                                return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_01;
                                                                            }
                                                                            else
                                                                            {
                                                                                if(n == BOT19)
                                                                                {
                                                                                    return (BOTSHIRTPANTS_01 * FL_INWATER) + BOTSHIRTPANTS_13;
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(n == BOT20)
                                                                                    {
                                                                                        return (BOTSHIRTPANTS_03 * FL_INWATER) + BOTSHIRTPANTS_06;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(n == BOT21)
                                                                                        {
                                                                                            return (BOTSHIRTPANTS_06 * FL_INWATER) + BOTSHIRTPANTS_12;
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(n == BOT22)
                                                                                            {
                                                                                                return (BOTSHIRTPANTS_10 * FL_INWATER) + BOTSHIRTPANTS_00;
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(n == BOT0)
                                                                                                {
                                                                                                    return (BOTSHIRTPANTS_00 * FL_INWATER) + BOTSHIRTPANTS_13;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    return (BOTSHIRTPANTS_00 * FL_INWATER) + BOTSHIRTPANTS_00;
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// BotChooseExitMessage
// function begins at statement 28328, parm_start=16882
// OP_CALL0	457	0	0
// OP_STORE_F	1	16883	0
// OP_LOAD_F	16882	609	16884
// OP_EQ_F	16884	16693	16885
// OP_IFNOT	16885	13	0
// OP_MUL_F	16883	214	16886
// OP_STORE_V	16886	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16887
// OP_IFNOT	16887	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16888	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	345	0	0
// OP_LOAD_F	16882	609	16889
// OP_EQ_F	16889	16671	16890
// OP_IFNOT	16890	13	0
// OP_MUL_F	16883	214	16891
// OP_STORE_V	16891	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16892
// OP_IFNOT	16892	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16893	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	330	0	0
// OP_LOAD_F	16882	609	16894
// OP_EQ_F	16894	16672	16895
// OP_IFNOT	16895	13	0
// OP_MUL_F	16883	214	16896
// OP_STORE_V	16896	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16897
// OP_IFNOT	16897	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16898	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	315	0	0
// OP_LOAD_F	16882	609	16899
// OP_EQ_F	16899	16673	16900
// OP_IFNOT	16900	13	0
// OP_MUL_F	16883	214	16901
// OP_STORE_V	16901	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16902
// OP_IFNOT	16902	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16903	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	300	0	0
// OP_LOAD_F	16882	609	16904
// OP_EQ_F	16904	16674	16905
// OP_IFNOT	16905	13	0
// OP_MUL_F	16883	214	16906
// OP_STORE_V	16906	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16907
// OP_IFNOT	16907	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16908	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	285	0	0
// OP_LOAD_F	16882	609	16909
// OP_EQ_F	16909	16675	16910
// OP_IFNOT	16910	13	0
// OP_MUL_F	16883	214	16911
// OP_STORE_V	16911	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16912
// OP_IFNOT	16912	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16913	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	270	0	0
// OP_LOAD_F	16882	609	16914
// OP_EQ_F	16914	16676	16915
// OP_IFNOT	16915	13	0
// OP_MUL_F	16883	214	16916
// OP_STORE_V	16916	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16917
// OP_IFNOT	16917	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16918	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	255	0	0
// OP_LOAD_F	16882	609	16919
// OP_EQ_F	16919	16677	16920
// OP_IFNOT	16920	13	0
// OP_MUL_F	16883	214	16921
// OP_STORE_V	16921	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16922
// OP_IFNOT	16922	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16923	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	240	0	0
// OP_LOAD_F	16882	609	16924
// OP_EQ_F	16924	16678	16925
// OP_IFNOT	16925	13	0
// OP_MUL_F	16883	214	16926
// OP_STORE_V	16926	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16927
// OP_IFNOT	16927	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16928	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	225	0	0
// OP_LOAD_F	16882	609	16929
// OP_EQ_F	16929	16679	16930
// OP_IFNOT	16930	13	0
// OP_MUL_F	16883	214	16931
// OP_STORE_V	16931	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16932
// OP_IFNOT	16932	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16933	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	210	0	0
// OP_LOAD_F	16882	609	16934
// OP_EQ_F	16934	16680	16935
// OP_IFNOT	16935	13	0
// OP_MUL_F	16883	214	16936
// OP_STORE_V	16936	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16937
// OP_IFNOT	16937	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16938	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	195	0	0
// OP_LOAD_F	16882	609	16939
// OP_EQ_F	16939	16681	16940
// OP_IFNOT	16940	13	0
// OP_MUL_F	16883	214	16941
// OP_STORE_V	16941	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16942
// OP_IFNOT	16942	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16943	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	180	0	0
// OP_LOAD_F	16882	609	16944
// OP_EQ_F	16944	16682	16945
// OP_IFNOT	16945	13	0
// OP_MUL_F	16883	214	16946
// OP_STORE_V	16946	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16947
// OP_IFNOT	16947	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16948	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	165	0	0
// OP_LOAD_F	16882	609	16949
// OP_EQ_F	16949	16683	16950
// OP_IFNOT	16950	13	0
// OP_MUL_F	16883	214	16951
// OP_STORE_V	16951	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16952
// OP_IFNOT	16952	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16953	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	150	0	0
// OP_LOAD_F	16882	609	16954
// OP_EQ_F	16954	16684	16955
// OP_IFNOT	16955	13	0
// OP_MUL_F	16883	214	16956
// OP_STORE_V	16956	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16957
// OP_IFNOT	16957	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16958	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	135	0	0
// OP_LOAD_F	16882	609	16959
// OP_EQ_F	16959	16685	16960
// OP_IFNOT	16960	13	0
// OP_MUL_F	16883	214	16961
// OP_STORE_V	16961	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16962
// OP_IFNOT	16962	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16963	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	120	0	0
// OP_LOAD_F	16882	609	16964
// OP_EQ_F	16964	16686	16965
// OP_IFNOT	16965	13	0
// OP_MUL_F	16883	214	16966
// OP_STORE_V	16966	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	230	16967
// OP_IFNOT	16967	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16968	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	105	0	0
// OP_LOAD_F	16882	609	16969
// OP_EQ_F	16969	16687	16970
// OP_IFNOT	16970	13	0
// OP_MUL_F	16883	214	16971
// OP_STORE_V	16971	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16972
// OP_IFNOT	16972	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16973	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	90	0	0
// OP_LOAD_F	16882	609	16974
// OP_EQ_F	16974	16688	16975
// OP_IFNOT	16975	13	0
// OP_MUL_F	16883	214	16976
// OP_STORE_V	16976	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16977
// OP_IFNOT	16977	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16978	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LOAD_F	16882	609	16979
// OP_EQ_F	16979	16689	16980
// OP_IFNOT	16980	13	0
// OP_MUL_F	16883	214	16981
// OP_STORE_V	16981	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16982
// OP_IFNOT	16982	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16983	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	60	0	0
// OP_LOAD_F	16882	609	16984
// OP_EQ_F	16984	16690	16985
// OP_IFNOT	16985	13	0
// OP_MUL_F	16883	214	16986
// OP_STORE_V	16986	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16987
// OP_IFNOT	16987	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16988	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	45	0	0
// OP_LOAD_F	16882	609	16989
// OP_EQ_F	16989	16691	16990
// OP_IFNOT	16990	13	0
// OP_MUL_F	16883	214	16991
// OP_STORE_V	16991	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16992
// OP_IFNOT	16992	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16993	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	30	0	0
// OP_LOAD_F	16882	609	16994
// OP_EQ_F	16994	16692	16995
// OP_IFNOT	16995	13	0
// OP_MUL_F	16883	214	16996
// OP_STORE_V	16996	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	16997
// OP_IFNOT	16997	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	16998	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	16882	609	16999
// OP_EQ_F	16999	16670	17000
// OP_IFNOT	17000	12	0
// OP_MUL_F	16883	214	17001
// OP_STORE_V	17001	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	16883	0
// OP_LE	16883	213	17002
// OP_IFNOT	17002	6	0
// OP_STORE_V	16882	4	0
// OP_STORE_V	17003	7	0
// OP_STORE_V	16695	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity e) BotChooseExitMessage = 
{
    local float rnd;
    rnd = random();
    if(e.field000286 == BOT23)
    {
        rnd = floor(rnd * TRUE);
        
        if(rnd <= FALSE)
        {
            func002369(e, "Qapla'", globaldef005807, FALSE);
        }
        
    }
    else
    {
        if(e.field000286 == BOT1)
        {
            rnd = floor(rnd * TRUE);
            
            if(rnd <= FALSE)
            {
                func002369(e, "bye, I'm going back to work", globaldef005807, FALSE);
            }
            
        }
        else
        {
            if(e.field000286 == BOT2)
            {
                rnd = floor(rnd * TRUE);
                
                if(rnd <= FALSE)
                {
                    func002369(e, "cya", globaldef005807, FALSE);
                }
                
            }
            else
            {
                if(e.field000286 == BOT3)
                {
                    rnd = floor(rnd * TRUE);
                    
                    if(rnd <= FALSE)
                    {
                        func002369(e, "Keep on smiling", globaldef005807, FALSE);
                    }
                    
                }
                else
                {
                    if(e.field000286 == BOT4)
                    {
                        rnd = floor(rnd * TRUE);
                        
                        if(rnd <= FALSE)
                        {
                            func002369(e, "Hasta La Vista", globaldef005807, FALSE);
                        }
                        
                    }
                    else
                    {
                        if(e.field000286 == BOT5)
                        {
                            rnd = floor(rnd * TRUE);
                            
                            if(rnd <= FALSE)
                            {
                                func002369(e, "C U L8TER", globaldef005807, FALSE);
                            }
                            
                        }
                        else
                        {
                            if(e.field000286 == BOT6)
                            {
                                rnd = floor(rnd * TRUE);
                                
                                if(rnd <= FALSE)
                                {
                                    func002369(e, "gotta go", globaldef005807, FALSE);
                                }
                                
                            }
                            else
                            {
                                if(e.field000286 == BOT7)
                                {
                                    rnd = floor(rnd * TRUE);
                                    
                                    if(rnd <= FALSE)
                                    {
                                        func002369(e, "take it!!! I'm leaving", globaldef005807, FALSE);
                                    }
                                    
                                }
                                else
                                {
                                    if(e.field000286 == BOT8)
                                    {
                                        rnd = floor(rnd * TRUE);
                                        
                                        if(rnd <= FALSE)
                                        {
                                            func002369(e, "Ciao motha's", globaldef005807, FALSE);
                                        }
                                        
                                    }
                                    else
                                    {
                                        if(e.field000286 == BOT9)
                                        {
                                            rnd = floor(rnd * TRUE);
                                            
                                            if(rnd <= FALSE)
                                            {
                                                func002369(e, "later dudes", globaldef005807, FALSE);
                                            }
                                            
                                        }
                                        else
                                        {
                                            if(e.field000286 == BOT10)
                                            {
                                                rnd = floor(rnd * TRUE);
                                                
                                                if(rnd <= FALSE)
                                                {
                                                    func002369(e, "I'm going off duty", globaldef005807, FALSE);
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(e.field000286 == BOT11)
                                                {
                                                    rnd = floor(rnd * TRUE);
                                                    
                                                    if(rnd <= FALSE)
                                                    {
                                                        func002369(e, "must go and kill 007", globaldef005807, FALSE);
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    if(e.field000286 == BOT12)
                                                    {
                                                        rnd = floor(rnd * TRUE);
                                                        
                                                        if(rnd <= FALSE)
                                                        {
                                                            func002369(e, "I'm chillin' out", globaldef005807, FALSE);
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        if(e.field000286 == BOT13)
                                                        {
                                                            rnd = floor(rnd * TRUE);
                                                            
                                                            if(rnd <= FALSE)
                                                            {
                                                                func002369(e, "I shall now go and fight crime elsewhere", globaldef005807, FALSE);
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            if(e.field000286 == BOT14)
                                                            {
                                                                rnd = floor(rnd * TRUE);
                                                                
                                                                if(rnd <= FALSE)
                                                                {
                                                                    func002369(e, "gotta cruise", globaldef005807, FALSE);
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                if(e.field000286 == BOT15)
                                                                {
                                                                    rnd = floor(rnd * TRUE);
                                                                    
                                                                    if(rnd <= FALSE)
                                                                    {
                                                                        func002369(e, "see you in hell", globaldef005807, FALSE);
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(e.field000286 == BOT16)
                                                                    {
                                                                        rnd = floor(rnd * TRUE);
                                                                        
                                                                        if(rnd <= MOVETYPE_FLY)
                                                                        {
                                                                            func002369(e, "going offline", globaldef005807, FALSE);
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(e.field000286 == BOT17)
                                                                        {
                                                                            rnd = floor(rnd * TRUE);
                                                                            
                                                                            if(rnd <= FALSE)
                                                                            {
                                                                                func002369(e, "See y'all later", globaldef005807, FALSE);
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(e.field000286 == BOT18)
                                                                            {
                                                                                rnd = floor(rnd * TRUE);
                                                                                
                                                                                if(rnd <= FALSE)
                                                                                {
                                                                                    func002369(e, "I'm out", globaldef005807, FALSE);
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(e.field000286 == BOT19)
                                                                                {
                                                                                    rnd = floor(rnd * TRUE);
                                                                                    
                                                                                    if(rnd <= FALSE)
                                                                                    {
                                                                                        func002369(e, "Goodbye", globaldef005807, FALSE);
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(e.field000286 == BOT20)
                                                                                    {
                                                                                        rnd = floor(rnd * TRUE);
                                                                                        
                                                                                        if(rnd <= FALSE)
                                                                                        {
                                                                                            func002369(e, "See you all later,.. boys", globaldef005807, FALSE);
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(e.field000286 == BOT21)
                                                                                        {
                                                                                            rnd = floor(rnd * TRUE);
                                                                                            
                                                                                            if(rnd <= FALSE)
                                                                                            {
                                                                                                func002369(e, "Gotta punish some real humans", globaldef005807, FALSE);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(e.field000286 == BOT22)
                                                                                            {
                                                                                                rnd = floor(rnd * TRUE);
                                                                                                
                                                                                                if(rnd <= FALSE)
                                                                                                {
                                                                                                    func002369(e, "has left the building!", globaldef005807, FALSE);
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                
                                                                                                if(e.field000286 == BOT0)
                                                                                                {
                                                                                                    rnd = floor(rnd * TRUE);
                                                                                                    
                                                                                                    if(rnd <= FALSE)
                                                                                                    {
                                                                                                        func002369(e, "Till fate brings us together again", globaldef005807, FALSE);
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002282
// function begins at statement 28690, parm_start=17004
// OP_LOAD_ENT	17004	618	17007
// OP_LOAD_S	17007	180	17008
// OP_STORE_S	17008	17006	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	17005	0
// OP_LOAD_F	17004	609	17009
// OP_EQ_F	17009	16693	17010
// OP_IFNOT	17010	45	0
// OP_MUL_F	17005	230	17011
// OP_STORE_V	17011	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17012
// OP_IFNOT	17012	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17013	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17014
// OP_IFNOT	17014	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17015	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17016
// OP_IFNOT	17016	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17017	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17018
// OP_IFNOT	17018	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17019	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17020
// OP_IFNOT	17020	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17021	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1060	0	0
// OP_LOAD_F	17004	609	17022
// OP_EQ_F	17022	16671	17023
// OP_IFNOT	17023	47	0
// OP_MUL_F	17005	230	17024
// OP_STORE_V	17024	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17025
// OP_IFNOT	17025	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17026	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17005	214	17027
// OP_IFNOT	17027	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17028	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	26	0	0
// OP_LE	17005	216	17029
// OP_IFNOT	17029	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17030	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	17	0	0
// OP_LE	17005	228	17031
// OP_IFNOT	17031	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17006	7	0
// OP_STORE_V	17032	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17033
// OP_IFNOT	17033	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17034	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1011	0	0
// OP_LOAD_F	17004	609	17035
// OP_EQ_F	17035	16672	17036
// OP_IFNOT	17036	45	0
// OP_MUL_F	17005	230	17037
// OP_STORE_V	17037	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17038
// OP_IFNOT	17038	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17039	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17040
// OP_IFNOT	17040	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17041	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17042
// OP_IFNOT	17042	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17043	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17044
// OP_IFNOT	17044	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17045	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17046
// OP_IFNOT	17046	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17047	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	964	0	0
// OP_LOAD_F	17004	609	17048
// OP_EQ_F	17048	16673	17049
// OP_IFNOT	17049	45	0
// OP_MUL_F	17005	230	17050
// OP_STORE_V	17050	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17051
// OP_IFNOT	17051	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17052	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17053
// OP_IFNOT	17053	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17054	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17055
// OP_IFNOT	17055	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17056	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17057
// OP_IFNOT	17057	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17058	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17059
// OP_IFNOT	17059	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17060	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	917	0	0
// OP_LOAD_F	17004	609	17061
// OP_EQ_F	17061	16674	17062
// OP_IFNOT	17062	39	0
// OP_MUL_F	17005	229	17063
// OP_STORE_V	17063	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17064
// OP_IFNOT	17064	9	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17065	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	17066	13	0
// OP_STORE_V	16696	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	214	17067
// OP_IFNOT	17067	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17068	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	216	17069
// OP_IFNOT	17069	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17070	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	228	17071
// OP_IFNOT	17071	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17072	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	876	0	0
// OP_LOAD_F	17004	609	17073
// OP_EQ_F	17073	16675	17074
// OP_IFNOT	17074	55	0
// OP_MUL_F	17005	231	17075
// OP_STORE_V	17075	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17076
// OP_IFNOT	17076	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17077	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	41	0	0
// OP_LE	17005	214	17078
// OP_IFNOT	17078	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17079	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17005	216	17080
// OP_IFNOT	17080	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17081	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	228	17082
// OP_IFNOT	17082	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17083	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	229	17084
// OP_IFNOT	17084	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17085	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	230	17086
// OP_IFNOT	17086	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17087	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	819	0	0
// OP_LOAD_F	17004	609	17088
// OP_EQ_F	17088	16676	17089
// OP_IFNOT	17089	46	0
// OP_MUL_F	17005	230	17090
// OP_STORE_V	17090	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17091
// OP_IFNOT	17091	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17092	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17093
// OP_IFNOT	17093	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17094	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17095
// OP_IFNOT	17095	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17096	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17097
// OP_IFNOT	17097	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17098	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17099
// OP_IFNOT	17099	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17100	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	771	0	0
// OP_LOAD_F	17004	609	17101
// OP_EQ_F	17101	16677	17102
// OP_IFNOT	17102	46	0
// OP_MUL_F	17005	230	17103
// OP_STORE_V	17103	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17104
// OP_IFNOT	17104	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17006	7	0
// OP_STORE_V	17105	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17106
// OP_IFNOT	17106	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17107	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17108
// OP_IFNOT	17108	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17109	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17110
// OP_IFNOT	17110	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17111	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17112
// OP_IFNOT	17112	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17113	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	723	0	0
// OP_LOAD_F	17004	609	17114
// OP_EQ_F	17114	16678	17115
// OP_IFNOT	17115	45	0
// OP_MUL_F	17005	230	17116
// OP_STORE_V	17116	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17117
// OP_IFNOT	17117	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17118	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17119
// OP_IFNOT	17119	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17120	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17121
// OP_IFNOT	17121	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17122	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17123
// OP_IFNOT	17123	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17124	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17125
// OP_IFNOT	17125	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17126	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	676	0	0
// OP_LOAD_F	17004	609	17127
// OP_EQ_F	17127	16679	17128
// OP_IFNOT	17128	45	0
// OP_MUL_F	17005	230	17129
// OP_STORE_V	17129	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17130
// OP_IFNOT	17130	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17131	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17132
// OP_IFNOT	17132	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17133	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17134
// OP_IFNOT	17134	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17135	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17136
// OP_IFNOT	17136	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17137	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17138
// OP_IFNOT	17138	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17139	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	629	0	0
// OP_LOAD_F	17004	609	17140
// OP_EQ_F	17140	16680	17141
// OP_IFNOT	17141	46	0
// OP_MUL_F	17005	230	17142
// OP_STORE_V	17142	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17143
// OP_IFNOT	17143	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17144	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17005	214	17145
// OP_IFNOT	17145	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17006	7	0
// OP_STORE_V	17146	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17147
// OP_IFNOT	17147	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17148	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17149
// OP_IFNOT	17149	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17150	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17151
// OP_IFNOT	17151	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17152	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	581	0	0
// OP_LOAD_F	17004	609	17153
// OP_EQ_F	17153	16681	17154
// OP_IFNOT	17154	21	0
// OP_MUL_F	17005	216	17155
// OP_STORE_V	17155	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17156
// OP_IFNOT	17156	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17157	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	214	17158
// OP_IFNOT	17158	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17159	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	558	0	0
// OP_LOAD_F	17004	609	17160
// OP_EQ_F	17160	16682	17161
// OP_IFNOT	17161	21	0
// OP_MUL_F	17005	216	17162
// OP_STORE_V	17162	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17163
// OP_IFNOT	17163	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17164	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	214	17165
// OP_IFNOT	17165	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17166	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	535	0	0
// OP_LOAD_F	17004	609	17167
// OP_EQ_F	17167	16683	17168
// OP_IFNOT	17168	48	0
// OP_MUL_F	17005	230	17169
// OP_STORE_V	17169	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17170
// OP_IFNOT	17170	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17171	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	35	0	0
// OP_LE	17005	214	17172
// OP_IFNOT	17172	9	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17173	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	17174	13	0
// OP_STORE_V	16696	16	0
// OP_STORE_V	228	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	25	0	0
// OP_LE	17005	216	17175
// OP_IFNOT	17175	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17176	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17005	228	17177
// OP_IFNOT	17177	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17178	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17005	229	17179
// OP_IFNOT	17179	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17006	7	0
// OP_STORE_V	17180	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	485	0	0
// OP_LOAD_F	17004	609	17181
// OP_EQ_F	17181	16684	17182
// OP_IFNOT	17182	47	0
// OP_MUL_F	17005	230	17183
// OP_STORE_V	17183	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17184
// OP_IFNOT	17184	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17185	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17005	214	17186
// OP_IFNOT	17186	9	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17187	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	17188	13	0
// OP_STORE_V	16696	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17189
// OP_IFNOT	17189	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17190	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17191
// OP_IFNOT	17191	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17192	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17193
// OP_IFNOT	17193	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17194	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	436	0	0
// OP_LOAD_F	17004	609	17195
// OP_EQ_F	17195	16685	17196
// OP_IFNOT	17196	62	0
// OP_MUL_F	17005	232	17197
// OP_STORE_V	17197	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17198
// OP_IFNOT	17198	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17199	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17005	214	17200
// OP_IFNOT	17200	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17201	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17005	216	17202
// OP_IFNOT	17202	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17203	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	228	17204
// OP_IFNOT	17204	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17205	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	229	17206
// OP_IFNOT	17206	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17207	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	230	17208
// OP_IFNOT	17208	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17209	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	231	17210
// OP_IFNOT	17210	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17211	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	372	0	0
// OP_LOAD_F	17004	609	17212
// OP_EQ_F	17212	16686	17213
// OP_IFNOT	17213	53	0
// OP_MUL_F	17005	231	17214
// OP_STORE_V	17214	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17215
// OP_IFNOT	17215	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17216	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17005	214	17217
// OP_IFNOT	17217	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17218	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	216	17219
// OP_IFNOT	17219	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17220	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	228	17221
// OP_IFNOT	17221	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17222	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	229	17223
// OP_IFNOT	17223	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17224	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	230	17225
// OP_IFNOT	17225	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17226	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	317	0	0
// OP_LOAD_F	17004	609	17227
// OP_EQ_F	17227	16687	17228
// OP_IFNOT	17228	45	0
// OP_MUL_F	17005	230	17229
// OP_STORE_V	17229	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17230
// OP_IFNOT	17230	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17231	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17232
// OP_IFNOT	17232	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17233	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17234
// OP_IFNOT	17234	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17235	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17236
// OP_IFNOT	17236	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17237	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17238
// OP_IFNOT	17238	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17239	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	270	0	0
// OP_LOAD_F	17004	609	17240
// OP_EQ_F	17240	16688	17241
// OP_IFNOT	17241	47	0
// OP_MUL_F	17005	230	17242
// OP_STORE_V	17242	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17243
// OP_IFNOT	17243	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17244	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17005	214	17245
// OP_IFNOT	17245	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17246	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	26	0	0
// OP_LE	17005	216	17247
// OP_IFNOT	17247	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17248	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	18	0	0
// OP_LE	17005	228	17249
// OP_IFNOT	17249	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17250	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	10	0	0
// OP_LE	17005	229	17251
// OP_IFNOT	17251	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17252	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	17253	13	0
// OP_STORE_V	16696	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	221	0	0
// OP_LOAD_F	17004	609	17254
// OP_EQ_F	17254	16689	17255
// OP_IFNOT	17255	29	0
// OP_MUL_F	17005	228	17256
// OP_STORE_V	17256	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17257
// OP_IFNOT	17257	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17258	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	214	17259
// OP_IFNOT	17259	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17260	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	216	17261
// OP_IFNOT	17261	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17262	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	190	0	0
// OP_LOAD_F	17004	609	17263
// OP_EQ_F	17263	16690	17264
// OP_IFNOT	17264	46	0
// OP_MUL_F	17005	230	17265
// OP_STORE_V	17265	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17266
// OP_IFNOT	17266	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17267	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17005	214	17268
// OP_IFNOT	17268	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17269	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17005	216	17270
// OP_IFNOT	17270	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17271	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17005	228	17272
// OP_IFNOT	17272	8	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17273	7	0
// OP_STORE_V	17006	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	230	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17274
// OP_IFNOT	17274	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17275	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	142	0	0
// OP_LOAD_F	17004	609	17276
// OP_EQ_F	17276	16691	17277
// OP_IFNOT	17277	46	0
// OP_MUL_F	17005	230	17278
// OP_STORE_V	17278	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17279
// OP_IFNOT	17279	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17280	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17005	214	17281
// OP_IFNOT	17281	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17282	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17005	216	17283
// OP_IFNOT	17283	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17284	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17005	228	17285
// OP_IFNOT	17285	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17286	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17005	229	17287
// OP_IFNOT	17287	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17006	7	0
// OP_STORE_V	17288	10	0
// OP_STORE_V	16696	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	94	0	0
// OP_LOAD_F	17004	609	17289
// OP_EQ_F	17289	16692	17290
// OP_IFNOT	17290	45	0
// OP_MUL_F	17005	230	17291
// OP_STORE_V	17291	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17292
// OP_IFNOT	17292	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17293	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17294
// OP_IFNOT	17294	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17295	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17296
// OP_IFNOT	17296	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17297	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17298
// OP_IFNOT	17298	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17299	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17300
// OP_IFNOT	17300	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17301	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	47	0	0
// OP_LOAD_F	17004	609	17302
// OP_EQ_F	17302	16670	17303
// OP_IFNOT	17303	44	0
// OP_MUL_F	17005	230	17304
// OP_STORE_V	17304	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17005	0
// OP_LE	17005	213	17305
// OP_IFNOT	17305	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17306	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17005	214	17307
// OP_IFNOT	17307	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17308	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17005	216	17309
// OP_IFNOT	17309	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17310	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17005	228	17311
// OP_IFNOT	17311	7	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17312	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17005	229	17313
// OP_IFNOT	17313	6	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	17314	7	0
// OP_STORE_V	16696	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity globaldef005898) func002282 = 
{
    local float globaldef005899;
    local string globaldef005900;
    globaldef005900 = globaldef005898.field000295.netname;
    globaldef005899 = random();
    if(globaldef005898.field000286 == BOT23)
    {
        globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
        if(globaldef005899 <= FALSE)
        {
            func002369(globaldef005898, "batlh Daqawlu'taH", globaldef005808, FL_SWIM);
        }
        else
        {
            if(globaldef005899 <= TRUE)
            {
                func002369(globaldef005898, "petaQ", globaldef005808, TRUE);
            }
            else
            {
                if(globaldef005899 <= FL_SWIM)
                {
                    func002369(globaldef005898, "ghay'cha'", globaldef005808, TRUE);
                }
                else
                {
                    if(globaldef005899 <= MOVETYPE_WALK)
                    {
                        func002369(globaldef005898, "taHqeq", globaldef005808, TRUE);
                    }
                    else
                    {
                        
                        if(globaldef005899 <= MOVETYPE_STEP)
                        {
                            func002369(globaldef005898, "Hu'tegh", globaldef005808, TRUE);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(globaldef005898.field000286 == BOT1)
        {
            globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
            if(globaldef005899 <= FALSE)
            {
                func002369(globaldef005898, "You should practice more often", globaldef005808, MOVETYPE_WALK);
            }
            else
            {
                if(globaldef005899 <= TRUE)
                {
                    func002369(globaldef005898, "DOOM! DOOM! DOOM!", globaldef005808, FL_SWIM);
                }
                else
                {
                    if(globaldef005899 <= FL_SWIM)
                    {
                        func002370(globaldef005898, "Jeeez! Ever heard about strafing, ", globaldef005900, globaldef005808, MOVETYPE_WALK);
                    }
                    else
                    {
                        if(globaldef005899 <= MOVETYPE_WALK)
                        {
                            func002370(globaldef005898, globaldef005900, ", you should move faster", globaldef005808, MOVETYPE_STEP);
                        }
                        else
                        {
                            
                            if(globaldef005899 <= MOVETYPE_STEP)
                            {
                                func002369(globaldef005898, "I was born ready", globaldef005808, FL_SWIM);
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(globaldef005898.field000286 == BOT2)
            {
                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                if(globaldef005899 <= FALSE)
                {
                    func002369(globaldef005898, "Microsoft wins again", globaldef005808, FL_SWIM);
                }
                else
                {
                    if(globaldef005899 <= TRUE)
                    {
                        func002369(globaldef005898, "That's what happens to software pirates!", globaldef005808, MOVETYPE_STEP);
                    }
                    else
                    {
                        if(globaldef005899 <= FL_SWIM)
                        {
                            func002369(globaldef005898, "You will go the Commodore way!", globaldef005808, MOVETYPE_WALK);
                        }
                        else
                        {
                            if(globaldef005899 <= MOVETYPE_WALK)
                            {
                                func002369(globaldef005898, "IE 4.0 anyone? One million bucks apiece.", globaldef005808, MOVETYPE_STEP);
                            }
                            else
                            {
                                
                                if(globaldef005899 <= MOVETYPE_STEP)
                                {
                                    func002369(globaldef005898, "Now if you upgraded your windows...", globaldef005808, MOVETYPE_WALK);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                if(globaldef005898.field000286 == BOT3)
                {
                    globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                    if(globaldef005899 <= FALSE)
                    {
                        func002369(globaldef005898, "If you're not happy, you're a backpack", globaldef005808, MOVETYPE_STEP);
                    }
                    else
                    {
                        if(globaldef005899 <= TRUE)
                        {
                            func002369(globaldef005898, "service with a smile", globaldef005808, MOVETYPE_WALK);
                        }
                        else
                        {
                            if(globaldef005899 <= FL_SWIM)
                            {
                                func002369(globaldef005898, "die with a smile!", globaldef005808, FL_SWIM);
                            }
                            else
                            {
                                if(globaldef005899 <= MOVETYPE_WALK)
                                {
                                    func002369(globaldef005898, "That was fun...lets do it again!", globaldef005808, MOVETYPE_WALK);
                                }
                                else
                                {
                                    
                                    if(globaldef005899 <= MOVETYPE_STEP)
                                    {
                                        func002369(globaldef005898, "Brag...brag...brag...", globaldef005808, FL_SWIM);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                else
                {
                    if(globaldef005898.field000286 == BOT4)
                    {
                        globaldef005899 = floor(globaldef005899 * MOVETYPE_STEP);
                        if(globaldef005899 <= FALSE)
                        {
                            func002371(globaldef005898, "hey ", globaldef005900, ", better luck next time", globaldef005808, MOVETYPE_STEP);
                        }
                        else
                        {
                            if(globaldef005899 <= TRUE)
                            {
                                func002369(globaldef005898, "Maggot-brain", globaldef005808, FL_SWIM);
                            }
                            else
                            {
                                if(globaldef005899 <= FL_SWIM)
                                {
                                    func002369(globaldef005898, "I want your boots, your clothes and your bike", globaldef005808, MOVETYPE_STEP);
                                }
                                else
                                {
                                    
                                    if(globaldef005899 <= MOVETYPE_WALK)
                                    {
                                        func002369(globaldef005898, "Another John Doe eats the dust", globaldef005808, MOVETYPE_WALK);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    else
                    {
                        if(globaldef005898.field000286 == BOT5)
                        {
                            globaldef005899 = floor(globaldef005899 * MOVETYPE_TOSS);
                            if(globaldef005899 <= FALSE)
                            {
                                func002370(globaldef005898, "It's always fun playing with ", globaldef005900, globaldef005808, MOVETYPE_WALK);
                            }
                            else
                            {
                                if(globaldef005899 <= TRUE)
                                {
                                    func002369(globaldef005898, "Sticks and stones....", globaldef005808, MOVETYPE_WALK);
                                }
                                else
                                {
                                    if(globaldef005899 <= FL_SWIM)
                                    {
                                        func002370(globaldef005898, "beddy bye time for ,", globaldef005900, globaldef005808, MOVETYPE_WALK);
                                    }
                                    else
                                    {
                                        if(globaldef005899 <= MOVETYPE_WALK)
                                        {
                                            func002369(globaldef005898, "A happy friend is a dead friend", globaldef005808, MOVETYPE_WALK);
                                        }
                                        else
                                        {
                                            if(globaldef005899 <= MOVETYPE_STEP)
                                            {
                                                func002369(globaldef005898, "Tigger Clan is the best!!", globaldef005808, MOVETYPE_WALK);
                                            }
                                            else
                                            {
                                                
                                                if(globaldef005899 <= MOVETYPE_FLY)
                                                {
                                                    func002369(globaldef005898, "Tigger is :)", globaldef005808, FL_SWIM);
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if(globaldef005898.field000286 == BOT6)
                            {
                                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                if(globaldef005899 <= FALSE)
                                {
                                    func002370(globaldef005898, "watch yer back next time ", globaldef005900, globaldef005808, MOVETYPE_WALK);
                                }
                                else
                                {
                                    if(globaldef005899 <= TRUE)
                                    {
                                        func002369(globaldef005898, "Reload!!! Reload!!!", globaldef005808, FL_SWIM);
                                    }
                                    else
                                    {
                                        if(globaldef005899 <= FL_SWIM)
                                        {
                                            func002369(globaldef005898, "I shall henceforth be called Metallica-man", globaldef005808, MOVETYPE_WALK);
                                        }
                                        else
                                        {
                                            if(globaldef005899 <= MOVETYPE_WALK)
                                            {
                                                func002369(globaldef005898, "Ironman with the iron-fist", globaldef005808, FL_SWIM);
                                            }
                                            else
                                            {
                                                
                                                if(globaldef005899 <= MOVETYPE_STEP)
                                                {
                                                    func002369(globaldef005898, "Whazoom, and iron-man is victorious", globaldef005808, MOVETYPE_WALK);
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                if(globaldef005898.field000286 == BOT7)
                                {
                                    globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                    if(globaldef005899 <= FALSE)
                                    {
                                        func002370(globaldef005898, globaldef005900, " has a nice spine", globaldef005808, MOVETYPE_WALK);
                                    }
                                    else
                                    {
                                        if(globaldef005899 <= TRUE)
                                        {
                                            func002369(globaldef005898, "Just one more head, and I can go bowling", globaldef005808, MOVETYPE_STEP);
                                        }
                                        else
                                        {
                                            if(globaldef005899 <= FL_SWIM)
                                            {
                                                func002369(globaldef005898, "Bring yer daugther to the slaughter", globaldef005808, FL_SWIM);
                                            }
                                            else
                                            {
                                                if(globaldef005899 <= MOVETYPE_WALK)
                                                {
                                                    func002369(globaldef005898, "Trophies, bring me more trophies", globaldef005808, FL_SWIM);
                                                }
                                                else
                                                {
                                                    
                                                    if(globaldef005899 <= MOVETYPE_STEP)
                                                    {
                                                        func002369(globaldef005898, "Take that! (not the boy-pop-group)", globaldef005808, FL_SWIM);
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                else
                                {
                                    if(globaldef005898.field000286 == BOT8)
                                    {
                                        globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                        if(globaldef005899 <= FALSE)
                                        {
                                            func002369(globaldef005898, "don't fuk wid da mob", globaldef005808, FL_SWIM);
                                        }
                                        else
                                        {
                                            if(globaldef005899 <= TRUE)
                                            {
                                                func002369(globaldef005898, "HA!", globaldef005808, TRUE);
                                            }
                                            else
                                            {
                                                if(globaldef005899 <= FL_SWIM)
                                                {
                                                    func002369(globaldef005898, "$wedish ingenuity win$ again", globaldef005808, MOVETYPE_WALK);
                                                }
                                                else
                                                {
                                                    if(globaldef005899 <= MOVETYPE_WALK)
                                                    {
                                                        func002369(globaldef005898, "$anta'$ ready!!!", globaldef005808, FL_SWIM);
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(globaldef005899 <= MOVETYPE_STEP)
                                                        {
                                                            func002369(globaldef005898, "Bring 'em 0n!!", globaldef005808, FL_SWIM);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        if(globaldef005898.field000286 == BOT9)
                                        {
                                            globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                            if(globaldef005899 <= FALSE)
                                            {
                                                func002369(globaldef005898, "It rocks, man", globaldef005808, FALSE);
                                            }
                                            else
                                            {
                                                if(globaldef005899 <= TRUE)
                                                {
                                                    func002369(globaldef005898, "Bullseye!", globaldef005808, FALSE);
                                                }
                                                else
                                                {
                                                    if(globaldef005899 <= FL_SWIM)
                                                    {
                                                        func002369(globaldef005898, "It's all in the reflexes", globaldef005808, FALSE);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef005899 <= MOVETYPE_WALK)
                                                        {
                                                            func002369(globaldef005898, "It slices, it dices: the TNMT", globaldef005808, FALSE);
                                                        }
                                                        else
                                                        {
                                                            
                                                            if(globaldef005899 <= MOVETYPE_STEP)
                                                            {
                                                                func002369(globaldef005898, "This is gibbing spamtastic, dudes", globaldef005808, FALSE);
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            if(globaldef005898.field000286 == BOT10)
                                            {
                                                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                if(globaldef005899 <= FALSE)
                                                {
                                                    func002369(globaldef005898, "you forgot my tip, SIR", globaldef005808, FL_SWIM);
                                                }
                                                else
                                                {
                                                    if(globaldef005899 <= TRUE)
                                                    {
                                                        func002370(globaldef005898, globaldef005900, ", tip me better, next time", globaldef005808, MOVETYPE_STEP);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef005899 <= FL_SWIM)
                                                        {
                                                            func002369(globaldef005898, "Don't point that gun on me", globaldef005808, MOVETYPE_WALK);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef005899 <= MOVETYPE_WALK)
                                                            {
                                                                func002369(globaldef005898, "Right in the kisser!!!", globaldef005808, FALSE);
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(globaldef005899 <= MOVETYPE_STEP)
                                                                {
                                                                    func002369(globaldef005898, "CHARGE!!!!", globaldef005808, FALSE);
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(globaldef005898.field000286 == BOT11)
                                                {
                                                    globaldef005899 = floor(globaldef005899 * FL_SWIM);
                                                    if(globaldef005899 <= FALSE)
                                                    {
                                                        func002369(globaldef005898, "This is my boomstick", globaldef005808, MOVETYPE_WALK);
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(globaldef005899 <= TRUE)
                                                        {
                                                            func002369(globaldef005898, "MI-5 is still on top", globaldef005808, MOVETYPE_WALK);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    if(globaldef005898.field000286 == BOT12)
                                                    {
                                                        globaldef005899 = floor(globaldef005899 * FL_SWIM);
                                                        if(globaldef005899 <= FALSE)
                                                        {
                                                            func002369(globaldef005898, "Finally put you on ice", globaldef005808, MOVETYPE_WALK);
                                                        }
                                                        else
                                                        {
                                                            
                                                            if(globaldef005899 <= TRUE)
                                                            {
                                                                func002369(globaldef005898, "another one bites the dust", globaldef005808, MOVETYPE_WALK);
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        if(globaldef005898.field000286 == BOT13)
                                                        {
                                                            globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                            if(globaldef005899 <= FALSE)
                                                            {
                                                                func002369(globaldef005898, "Justice is served like a good meal", globaldef005808, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef005899 <= TRUE)
                                                                {
                                                                    func002371(globaldef005898, "Who are your next of kin, ", globaldef005900, " ?", globaldef005808, MOVETYPE_WALK);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef005899 <= FL_SWIM)
                                                                    {
                                                                        func002369(globaldef005898, "Holy Moly!", globaldef005808, TRUE);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef005899 <= MOVETYPE_WALK)
                                                                        {
                                                                            func002369(globaldef005898, "Cease your antics, or I may be forced to assault you with the U.S. Postal System!", globaldef005808, MOVETYPE_FLY);
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                            if(globaldef005899 <= MOVETYPE_STEP)
                                                                            {
                                                                                func002370(globaldef005898, globaldef005900, ", you face the Tick! And his dog, Speak!", globaldef005808, MOVETYPE_WALK);
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            if(globaldef005898.field000286 == BOT14)
                                                            {
                                                                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                if(globaldef005899 <= FALSE)
                                                                {
                                                                    func002369(globaldef005898, "I hate you...and this time I mean it", globaldef005808, MOVETYPE_WALK);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef005899 <= TRUE)
                                                                    {
                                                                        func002371(globaldef005898, "Hey ", globaldef005900, ", your skin has fullbright colors in it", globaldef005808, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef005899 <= FL_SWIM)
                                                                        {
                                                                            func002369(globaldef005898, "if it ain't id, it aint good", globaldef005808, FL_SWIM);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef005899 <= MOVETYPE_WALK)
                                                                            {
                                                                                func002369(globaldef005898, "what's this 'Magic the Gathering' then??", globaldef005808, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                
                                                                                if(globaldef005899 <= MOVETYPE_STEP)
                                                                                {
                                                                                    func002369(globaldef005898, "you can buy a legal copy of quake now....", globaldef005808, MOVETYPE_WALK);
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                if(globaldef005898.field000286 == BOT15)
                                                                {
                                                                    globaldef005899 = floor(globaldef005899 * MOVETYPE_PUSH);
                                                                    if(globaldef005899 <= FALSE)
                                                                    {
                                                                        func002369(globaldef005898, "Another soul 4 satan", globaldef005808, FL_SWIM);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef005899 <= TRUE)
                                                                        {
                                                                            func002369(globaldef005898, "anyone else for brainsurgery?", globaldef005808, MOVETYPE_WALK);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef005899 <= FL_SWIM)
                                                                            {
                                                                                func002370(globaldef005898, "you're bleeding all over me, ", globaldef005900, globaldef005808, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef005899 <= MOVETYPE_WALK)
                                                                                {
                                                                                    func002369(globaldef005898, "Aah, the quickening...heh heh", globaldef005808, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef005899 <= MOVETYPE_STEP)
                                                                                    {
                                                                                        func002369(globaldef005898, "kill 'em all", globaldef005808, FL_SWIM);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005899 <= MOVETYPE_FLY)
                                                                                        {
                                                                                            func002369(globaldef005898, "I'll kill anyone else laughing at my pants", globaldef005808, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(globaldef005899 <= MOVETYPE_TOSS)
                                                                                            {
                                                                                                func002369(globaldef005898, "Ooooooh! Brainbiter hits home again.", globaldef005808, MOVETYPE_STEP);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef005898.field000286 == BOT16)
                                                                    {
                                                                        globaldef005899 = floor(globaldef005899 * MOVETYPE_TOSS);
                                                                        if(globaldef005899 <= FALSE)
                                                                        {
                                                                            func002369(globaldef005898, "You have the right to remain silent", globaldef005808, MOVETYPE_STEP);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef005899 <= TRUE)
                                                                            {
                                                                                func002369(globaldef005898, "Fine... dead then", globaldef005808, FL_SWIM);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef005899 <= FL_SWIM)
                                                                                {
                                                                                    func002369(globaldef005898, "Who will be the next to be uncooperative?", globaldef005808, MOVETYPE_STEP);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef005899 <= MOVETYPE_WALK)
                                                                                    {
                                                                                        func002369(globaldef005898, "Spread out!! not like that!", globaldef005808, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005899 <= MOVETYPE_STEP)
                                                                                        {
                                                                                            func002369(globaldef005898, "You HAD 10 seconds to comply", globaldef005808, MOVETYPE_WALK);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(globaldef005899 <= MOVETYPE_FLY)
                                                                                            {
                                                                                                func002369(globaldef005898, "Citizen, you have the right to remain silent", globaldef005808, MOVETYPE_STEP);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef005898.field000286 == BOT17)
                                                                        {
                                                                            globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                            if(globaldef005899 <= FALSE)
                                                                            {
                                                                                func002369(globaldef005898, "You lose varmit", globaldef005808, MOVETYPE_STEP);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef005899 <= TRUE)
                                                                                {
                                                                                    func002369(globaldef005898, "you call yerself a gunslinger?", globaldef005808, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef005899 <= FL_SWIM)
                                                                                    {
                                                                                        func002369(globaldef005898, "bite dust, varmit!", globaldef005808, FL_SWIM);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005899 <= MOVETYPE_WALK)
                                                                                        {
                                                                                            func002369(globaldef005898, "anyone else wanna dance for me ?", globaldef005808, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(globaldef005899 <= MOVETYPE_STEP)
                                                                                            {
                                                                                                func002369(globaldef005898, "Yippedy-Heeehaw!", globaldef005808, FL_SWIM);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef005898.field000286 == BOT18)
                                                                            {
                                                                                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                                if(globaldef005899 <= FALSE)
                                                                                {
                                                                                    func002369(globaldef005898, "U somekinda toughguy?", globaldef005808, FL_SWIM);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef005899 <= TRUE)
                                                                                    {
                                                                                        func002369(globaldef005898, "that's another $20000 for me", globaldef005808, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005899 <= FL_SWIM)
                                                                                        {
                                                                                            func002369(globaldef005898, "Da good squeeler is a dead squeeler", globaldef005808, MOVETYPE_WALK);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef005899 <= MOVETYPE_WALK)
                                                                                            {
                                                                                                func002369(globaldef005898, "U had enuff, wizaguy?", globaldef005808, FL_SWIM);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                
                                                                                                if(globaldef005899 <= MOVETYPE_STEP)
                                                                                                {
                                                                                                    func002371(globaldef005898, "Hey!!", globaldef005900, ",  I'm earning my pay overhere.", globaldef005808, MOVETYPE_STEP);
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef005898.field000286 == BOT19)
                                                                                {
                                                                                    globaldef005899 = floor(globaldef005899 * MOVETYPE_WALK);
                                                                                    if(globaldef005899 <= FALSE)
                                                                                    {
                                                                                        func002369(globaldef005898, "Don't mess with the mounties", globaldef005808, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005899 <= TRUE)
                                                                                        {
                                                                                            func002369(globaldef005898, "The color of your blood goes with my uniform", globaldef005808, MOVETYPE_FLY);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(globaldef005899 <= FL_SWIM)
                                                                                            {
                                                                                                func002369(globaldef005898, "je ne regrette rien", globaldef005808, MOVETYPE_WALK);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef005898.field000286 == BOT20)
                                                                                    {
                                                                                        globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                                        if(globaldef005899 <= FALSE)
                                                                                        {
                                                                                            func002369(globaldef005898, "Don't mess with the Silicon Babe", globaldef005808, FL_SWIM);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef005899 <= TRUE)
                                                                                            {
                                                                                                func002369(globaldef005898, "The only good man is a dead man", globaldef005808, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef005899 <= FL_SWIM)
                                                                                                {
                                                                                                    func002369(globaldef005898, "The babe did it again!", globaldef005808, FL_SWIM);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef005899 <= MOVETYPE_WALK)
                                                                                                    {
                                                                                                        func002370(globaldef005898, "Hey, your blood matches my nailpolish, ", globaldef005900, globaldef005808, MOVETYPE_FLY);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        
                                                                                                        if(globaldef005899 <= MOVETYPE_STEP)
                                                                                                        {
                                                                                                            func002369(globaldef005898, "hmmm, your backpack doesn't match my outfit", globaldef005808, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef005898.field000286 == BOT21)
                                                                                        {
                                                                                            globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                                            if(globaldef005899 <= FALSE)
                                                                                            {
                                                                                                func002369(globaldef005898, "You're a backpack!!!", globaldef005808, FL_SWIM);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef005899 <= TRUE)
                                                                                                {
                                                                                                    func002369(globaldef005898, "Anyone for seconds?", globaldef005808, FL_SWIM);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef005899 <= FL_SWIM)
                                                                                                    {
                                                                                                        func002369(globaldef005898, "Don't get your blood all over me", globaldef005808, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef005899 <= MOVETYPE_WALK)
                                                                                                        {
                                                                                                            func002369(globaldef005898, "If it bleeds, we can kill it", globaldef005808, MOVETYPE_WALK);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            
                                                                                                            if(globaldef005899 <= MOVETYPE_STEP)
                                                                                                            {
                                                                                                                func002370(globaldef005898, globaldef005900, ", see me ....and DIE, scumbag", globaldef005808, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef005898.field000286 == BOT22)
                                                                                            {
                                                                                                globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                                                if(globaldef005899 <= FALSE)
                                                                                                {
                                                                                                    func002369(globaldef005898, "it's good to be the king", globaldef005808, FL_SWIM);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef005899 <= TRUE)
                                                                                                    {
                                                                                                        func002369(globaldef005898, "you ain't nothin but a hound dog", globaldef005808, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef005899 <= FL_SWIM)
                                                                                                        {
                                                                                                            func002369(globaldef005898, "you ain't no frieeend of mine!", globaldef005808, FL_SWIM);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef005899 <= MOVETYPE_WALK)
                                                                                                            {
                                                                                                                func002369(globaldef005898, "the king shakes, rattles and rolls", globaldef005808, MOVETYPE_WALK);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                
                                                                                                                if(globaldef005899 <= MOVETYPE_STEP)
                                                                                                                {
                                                                                                                    func002369(globaldef005898, "don't you step on my blue suede shoes", globaldef005808, MOVETYPE_WALK);
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                
                                                                                                if(globaldef005898.field000286 == BOT0)
                                                                                                {
                                                                                                    globaldef005899 = floor(globaldef005899 * MOVETYPE_FLY);
                                                                                                    if(globaldef005899 <= FALSE)
                                                                                                    {
                                                                                                        func002369(globaldef005898, "Oooh, the quickening!!!", globaldef005808, FALSE);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef005899 <= TRUE)
                                                                                                        {
                                                                                                            func002369(globaldef005898, "Jacta est alea", globaldef005808, FL_SWIM);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef005899 <= FL_SWIM)
                                                                                                            {
                                                                                                                func002369(globaldef005898, "pax vobiscum", globaldef005808, FL_SWIM);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef005899 <= MOVETYPE_WALK)
                                                                                                                {
                                                                                                                    func002369(globaldef005898, "da predator ees my buddy", globaldef005808, FL_SWIM);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    
                                                                                                                    if(globaldef005899 <= MOVETYPE_STEP)
                                                                                                                    {
                                                                                                                        func002369(globaldef005898, "facta non verba", globaldef005808, FL_SWIM);
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002283
// function begins at statement 29802, parm_start=17315
// OP_LOAD_ENT	17315	619	17318
// OP_LOAD_S	17318	180	17319
// OP_STORE_S	17319	17317	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	17316	0
// OP_LOAD_F	17315	609	17320
// OP_EQ_F	17320	16693	17321
// OP_IFNOT	17321	53	0
// OP_MUL_F	17316	231	17322
// OP_STORE_V	17322	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17323
// OP_IFNOT	17323	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17324	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17316	214	17325
// OP_IFNOT	17325	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17326	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	216	17327
// OP_IFNOT	17327	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17328	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	228	17329
// OP_IFNOT	17329	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17330	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	229	17331
// OP_IFNOT	17331	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17332	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	230	17333
// OP_IFNOT	17333	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17334	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1112	0	0
// OP_LOAD_F	17315	609	17335
// OP_EQ_F	17335	16671	17336
// OP_IFNOT	17336	54	0
// OP_MUL_F	17316	231	17337
// OP_STORE_V	17337	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17338
// OP_IFNOT	17338	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17339	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17316	214	17340
// OP_IFNOT	17340	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17341	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	216	17342
// OP_IFNOT	17342	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17343	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	228	17344
// OP_IFNOT	17344	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17345	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	229	17346
// OP_IFNOT	17346	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17317	7	0
// OP_STORE_V	17347	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	230	17348
// OP_IFNOT	17348	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17349	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1056	0	0
// OP_LOAD_F	17315	609	17350
// OP_EQ_F	17350	16672	17351
// OP_IFNOT	17351	45	0
// OP_MUL_F	17316	230	17352
// OP_STORE_V	17352	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17353
// OP_IFNOT	17353	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17354	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17355
// OP_IFNOT	17355	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17356	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17357
// OP_IFNOT	17357	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17358	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17359
// OP_IFNOT	17359	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17360	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17361
// OP_IFNOT	17361	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17362	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1009	0	0
// OP_LOAD_F	17315	609	17363
// OP_EQ_F	17363	16673	17364
// OP_IFNOT	17364	45	0
// OP_MUL_F	17316	230	17365
// OP_STORE_V	17365	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17366
// OP_IFNOT	17366	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17367	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17368
// OP_IFNOT	17368	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17369	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17370
// OP_IFNOT	17370	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17371	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17372
// OP_IFNOT	17372	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17373	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17374
// OP_IFNOT	17374	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17375	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	962	0	0
// OP_LOAD_F	17315	609	17376
// OP_EQ_F	17376	16674	17377
// OP_IFNOT	17377	46	0
// OP_MUL_F	17316	230	17378
// OP_STORE_V	17378	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17379
// OP_IFNOT	17379	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17380	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17381
// OP_IFNOT	17381	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17382	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17383
// OP_IFNOT	17383	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17384	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	228	17385
// OP_IFNOT	17385	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17386	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17316	229	17387
// OP_IFNOT	17387	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17388	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	914	0	0
// OP_LOAD_F	17315	609	17389
// OP_EQ_F	17389	16675	17390
// OP_IFNOT	17390	46	0
// OP_MUL_F	17316	230	17391
// OP_STORE_V	17391	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17392
// OP_IFNOT	17392	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17393	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17394
// OP_IFNOT	17394	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17395	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17396
// OP_IFNOT	17396	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17397	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17398
// OP_IFNOT	17398	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17399	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17400
// OP_IFNOT	17400	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17401	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	866	0	0
// OP_LOAD_F	17315	609	17402
// OP_EQ_F	17402	16676	17403
// OP_IFNOT	17403	45	0
// OP_MUL_F	17316	230	17404
// OP_STORE_V	17404	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17405
// OP_IFNOT	17405	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17406	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17407
// OP_IFNOT	17407	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17408	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17409
// OP_IFNOT	17409	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17410	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17411
// OP_IFNOT	17411	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17412	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17413
// OP_IFNOT	17413	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17414	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	819	0	0
// OP_LOAD_F	17315	609	17415
// OP_EQ_F	17415	16677	17416
// OP_IFNOT	17416	45	0
// OP_MUL_F	17316	230	17417
// OP_STORE_V	17417	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17418
// OP_IFNOT	17418	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17419	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17420
// OP_IFNOT	17420	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17421	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17422
// OP_IFNOT	17422	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17423	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17424
// OP_IFNOT	17424	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17425	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17426
// OP_IFNOT	17426	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17427	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	772	0	0
// OP_LOAD_F	17315	609	17428
// OP_EQ_F	17428	16678	17429
// OP_IFNOT	17429	46	0
// OP_MUL_F	17316	230	17430
// OP_STORE_V	17430	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17431
// OP_IFNOT	17431	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17432	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17433
// OP_IFNOT	17433	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17434	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17435
// OP_IFNOT	17435	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17436	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17437
// OP_IFNOT	17437	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17438	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17439
// OP_IFNOT	17439	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17440	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	724	0	0
// OP_LOAD_F	17315	609	17441
// OP_EQ_F	17441	16679	17442
// OP_IFNOT	17442	55	0
// OP_MUL_F	17316	231	17443
// OP_STORE_V	17443	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17444
// OP_IFNOT	17444	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17445	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	42	0	0
// OP_LE	17316	214	17446
// OP_IFNOT	17446	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17447	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17316	216	17448
// OP_IFNOT	17448	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17449	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	26	0	0
// OP_LE	17316	228	17450
// OP_IFNOT	17450	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17451	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	229	17452
// OP_IFNOT	17452	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17453	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	230	17454
// OP_IFNOT	17454	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17455	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	667	0	0
// OP_LOAD_F	17315	609	17456
// OP_EQ_F	17456	16680	17457
// OP_IFNOT	17457	45	0
// OP_MUL_F	17316	230	17458
// OP_STORE_V	17458	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17459
// OP_IFNOT	17459	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17460	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17461
// OP_IFNOT	17461	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17462	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17463
// OP_IFNOT	17463	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17464	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17465
// OP_IFNOT	17465	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17466	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17467
// OP_IFNOT	17467	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17468	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	620	0	0
// OP_LOAD_F	17315	609	17469
// OP_EQ_F	17469	16681	17470
// OP_IFNOT	17470	46	0
// OP_MUL_F	17316	230	17471
// OP_STORE_V	17471	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17472
// OP_IFNOT	17472	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17473	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17474
// OP_IFNOT	17474	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17475	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17476
// OP_IFNOT	17476	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17477	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17478
// OP_IFNOT	17478	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17479	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17480
// OP_IFNOT	17480	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17481	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	572	0	0
// OP_LOAD_F	17315	609	17482
// OP_EQ_F	17482	16682	17483
// OP_IFNOT	17483	46	0
// OP_MUL_F	17316	230	17484
// OP_STORE_V	17484	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17485
// OP_IFNOT	17485	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17486	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17487
// OP_IFNOT	17487	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17488	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17489
// OP_IFNOT	17489	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17490	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	228	17491
// OP_IFNOT	17491	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17492	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17316	229	17493
// OP_IFNOT	17493	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17494	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	524	0	0
// OP_LOAD_F	17315	609	17495
// OP_EQ_F	17495	16683	17496
// OP_IFNOT	17496	46	0
// OP_MUL_F	17316	230	17497
// OP_STORE_V	17497	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17498
// OP_IFNOT	17498	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17499	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17500
// OP_IFNOT	17500	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17317	7	0
// OP_STORE_V	17501	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17502
// OP_IFNOT	17502	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17503	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17504
// OP_IFNOT	17504	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17505	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17506
// OP_IFNOT	17506	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17507	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	476	0	0
// OP_LOAD_F	17315	609	17508
// OP_EQ_F	17508	16684	17509
// OP_IFNOT	17509	45	0
// OP_MUL_F	17316	230	17510
// OP_STORE_V	17510	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17511
// OP_IFNOT	17511	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17512	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17513
// OP_IFNOT	17513	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17514	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17515
// OP_IFNOT	17515	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17516	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17517
// OP_IFNOT	17517	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17518	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17519
// OP_IFNOT	17519	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17520	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	429	0	0
// OP_LOAD_F	17315	609	17521
// OP_EQ_F	17521	16685	17522
// OP_IFNOT	17522	46	0
// OP_MUL_F	17316	230	17523
// OP_STORE_V	17523	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17524
// OP_IFNOT	17524	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17525	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17526
// OP_IFNOT	17526	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17527	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17528
// OP_IFNOT	17528	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17529	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	228	17530
// OP_IFNOT	17530	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17531	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17316	229	17532
// OP_IFNOT	17532	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17533	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	381	0	0
// OP_LOAD_F	17315	609	17534
// OP_EQ_F	17534	16686	17535
// OP_IFNOT	17535	46	0
// OP_MUL_F	17316	230	17536
// OP_STORE_V	17536	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17537
// OP_IFNOT	17537	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17538	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17316	214	17539
// OP_IFNOT	17539	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17540	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17541
// OP_IFNOT	17541	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17542	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	228	17543
// OP_IFNOT	17543	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17544	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17545
// OP_IFNOT	17545	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17546	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	333	0	0
// OP_LOAD_F	17315	609	17547
// OP_EQ_F	17547	16687	17548
// OP_IFNOT	17548	47	0
// OP_MUL_F	17316	230	17549
// OP_STORE_V	17549	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17550
// OP_IFNOT	17550	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17551	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17316	214	17552
// OP_IFNOT	17552	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17317	7	0
// OP_STORE_V	17553	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	25	0	0
// OP_LE	17316	216	17554
// OP_IFNOT	17554	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17555	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17316	228	17556
// OP_IFNOT	17556	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17557	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17316	229	17558
// OP_IFNOT	17558	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17559	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	16697	13	0
// OP_STORE_V	213	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	284	0	0
// OP_LOAD_F	17315	609	17560
// OP_EQ_F	17560	16688	17561
// OP_IFNOT	17561	21	0
// OP_MUL_F	17316	216	17562
// OP_STORE_V	17562	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17563
// OP_IFNOT	17563	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17486	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	214	17564
// OP_IFNOT	17564	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17565	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	261	0	0
// OP_LOAD_F	17315	609	17566
// OP_EQ_F	17566	16689	17567
// OP_IFNOT	17567	47	0
// OP_MUL_F	17316	230	17568
// OP_STORE_V	17568	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17569
// OP_IFNOT	17569	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17570	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17316	214	17571
// OP_IFNOT	17571	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17572	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	26	0	0
// OP_LE	17316	216	17573
// OP_IFNOT	17573	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17574	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	18	0	0
// OP_LE	17316	228	17575
// OP_IFNOT	17575	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17576	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	10	0	0
// OP_LE	17316	229	17577
// OP_IFNOT	17577	8	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17578	7	0
// OP_STORE_V	17317	10	0
// OP_STORE_V	17174	13	0
// OP_STORE_V	16697	16	0
// OP_STORE_V	213	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	212	0	0
// OP_LOAD_F	17315	609	17579
// OP_EQ_F	17579	16690	17580
// OP_IFNOT	17580	45	0
// OP_MUL_F	17316	230	17581
// OP_STORE_V	17581	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17582
// OP_IFNOT	17582	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17583	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17584
// OP_IFNOT	17584	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17585	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17586
// OP_IFNOT	17586	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17587	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17588
// OP_IFNOT	17588	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17589	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17590
// OP_IFNOT	17590	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17591	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	165	0	0
// OP_LOAD_F	17315	609	17592
// OP_EQ_F	17592	16691	17593
// OP_IFNOT	17593	45	0
// OP_MUL_F	17316	230	17594
// OP_STORE_V	17594	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17595
// OP_IFNOT	17595	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17512	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17596
// OP_IFNOT	17596	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17597	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17598
// OP_IFNOT	17598	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17599	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17600
// OP_IFNOT	17600	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17601	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17602
// OP_IFNOT	17602	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17603	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	118	0	0
// OP_LOAD_F	17315	609	17604
// OP_EQ_F	17604	16692	17605
// OP_IFNOT	17605	69	0
// OP_MUL_F	17316	217	17606
// OP_STORE_V	17606	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17607
// OP_IFNOT	17607	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17608	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17316	214	17609
// OP_IFNOT	17609	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17610	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17316	216	17611
// OP_IFNOT	17611	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17612	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17316	228	17613
// OP_IFNOT	17613	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17614	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	229	17615
// OP_IFNOT	17615	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17616	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	230	17617
// OP_IFNOT	17617	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17618	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	231	17619
// OP_IFNOT	17619	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17620	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	232	17621
// OP_IFNOT	17621	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17622	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	47	0	0
// OP_LOAD_F	17315	609	17623
// OP_EQ_F	17623	16670	17624
// OP_IFNOT	17624	44	0
// OP_MUL_F	17316	230	17625
// OP_STORE_V	17625	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17316	0
// OP_LE	17316	213	17626
// OP_IFNOT	17626	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17627	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17316	214	17628
// OP_IFNOT	17628	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17629	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17316	216	17630
// OP_IFNOT	17630	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17631	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17316	228	17632
// OP_IFNOT	17632	7	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17633	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17316	229	17634
// OP_IFNOT	17634	6	0
// OP_STORE_V	17315	4	0
// OP_STORE_V	17635	7	0
// OP_STORE_V	16697	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity globaldef006020) func002283 = 
{
    local float globaldef006021;
    local string globaldef006022;
    globaldef006022 = globaldef006020.field000296.netname;
    globaldef006021 = random();
    if(globaldef006020.field000286 == BOT23)
    {
        globaldef006021 = floor(globaldef006021 * MOVETYPE_TOSS);
        if(globaldef006021 <= FALSE)
        {
            func002369(globaldef006020, "nuqDaq 'oH puchpa''e'", globaldef005809, FALSE);
        }
        else
        {
            if(globaldef006021 <= TRUE)
            {
                func002369(globaldef006020, "va", globaldef005809, FALSE);
            }
            else
            {
                if(globaldef006021 <= FL_SWIM)
                {
                    func002369(globaldef006020, "toDSaH", globaldef005809, FALSE);
                }
                else
                {
                    if(globaldef006021 <= MOVETYPE_WALK)
                    {
                        func002369(globaldef006020, "baQa'", globaldef005809, FALSE);
                    }
                    else
                    {
                        if(globaldef006021 <= MOVETYPE_STEP)
                        {
                            func002369(globaldef006020, "Qovpatlh", globaldef005809, FALSE);
                        }
                        else
                        {
                            
                            if(globaldef006021 <= MOVETYPE_FLY)
                            {
                                func002369(globaldef006020, "I am NOT a merry MAN!", globaldef005809, FALSE);
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(globaldef006020.field000286 == BOT1)
        {
            globaldef006021 = floor(globaldef006021 * MOVETYPE_TOSS);
            if(globaldef006021 <= FALSE)
            {
                func002369(globaldef006020, "I like DOOM better", globaldef005809, FALSE);
            }
            else
            {
                if(globaldef006021 <= TRUE)
                {
                    func002369(globaldef006020, "Give me DOOM anyday", globaldef005809, FALSE);
                }
                else
                {
                    if(globaldef006021 <= FL_SWIM)
                    {
                        func002369(globaldef006020, "I'm gonna program the trinity engine again", globaldef005809, FALSE);
                    }
                    else
                    {
                        if(globaldef006021 <= MOVETYPE_WALK)
                        {
                            func002369(globaldef006020, "I need another shot of Jolt NOW!!!", globaldef005809, FALSE);
                        }
                        else
                        {
                            if(globaldef006021 <= MOVETYPE_STEP)
                            {
                                func002370(globaldef006020, globaldef006022, " is a lamer", globaldef005809, FALSE);
                            }
                            else
                            {
                                
                                if(globaldef006021 <= MOVETYPE_FLY)
                                {
                                    func002369(globaldef006020, "this is not my day", globaldef005809, FALSE);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(globaldef006020.field000286 == BOT2)
            {
                globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                if(globaldef006021 <= FALSE)
                {
                    func002369(globaldef006020, "Mommy!!!! I've been gibbed again!!!", globaldef005809, FALSE);
                }
                else
                {
                    if(globaldef006021 <= TRUE)
                    {
                        func002369(globaldef006020, "The BSA will hunt you down", globaldef005809, FALSE);
                    }
                    else
                    {
                        if(globaldef006021 <= FL_SWIM)
                        {
                            func002369(globaldef006020, "I want my mommy!!!!", globaldef005809, FALSE);
                        }
                        else
                        {
                            if(globaldef006021 <= MOVETYPE_WALK)
                            {
                                func002369(globaldef006020, "Just wait until the next windows upgrade!!!", globaldef005809, FALSE);
                            }
                            else
                            {
                                
                                if(globaldef006021 <= MOVETYPE_STEP)
                                {
                                    func002369(globaldef006020, "If it isn't Microsoft, it just isn't....", globaldef005809, FALSE);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                if(globaldef006020.field000286 == BOT3)
                {
                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                    if(globaldef006021 <= FALSE)
                    {
                        func002369(globaldef006020, "Judge Slappy ain't happy", globaldef005809, FALSE);
                    }
                    else
                    {
                        if(globaldef006021 <= TRUE)
                        {
                            func002369(globaldef006020, "no fair", globaldef005809, FALSE);
                        }
                        else
                        {
                            if(globaldef006021 <= FL_SWIM)
                            {
                                func002369(globaldef006020, "traitor!!!", globaldef005809, FALSE);
                            }
                            else
                            {
                                if(globaldef006021 <= MOVETYPE_WALK)
                                {
                                    func002369(globaldef006020, "Happy Slappy ain't happy", globaldef005809, FALSE);
                                }
                                else
                                {
                                    
                                    if(globaldef006021 <= MOVETYPE_STEP)
                                    {
                                        func002369(globaldef006020, " =(", globaldef005809, FALSE);
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                else
                {
                    if(globaldef006020.field000286 == BOT4)
                    {
                        globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                        if(globaldef006021 <= FALSE)
                        {
                            func002369(globaldef006020, "I'll be back!!", globaldef005809, FALSE);
                        }
                        else
                        {
                            if(globaldef006021 <= TRUE)
                            {
                                func002369(globaldef006020, "Lucky S.O.B.", globaldef005809, FALSE);
                            }
                            else
                            {
                                if(globaldef006021 <= FL_SWIM)
                                {
                                    func002369(globaldef006020, "Wait till I bring out the T1000", globaldef005809, FALSE);
                                }
                                else
                                {
                                    if(globaldef006021 <= MOVETYPE_WALK)
                                    {
                                        func002369(globaldef006020, "Your momma wears army boots", globaldef005809, FALSE);
                                    }
                                    else
                                    {
                                        
                                        if(globaldef006021 <= MOVETYPE_STEP)
                                        {
                                            func002370(globaldef006020, "Next time, your it, ", globaldef006022, globaldef005809, FALSE);
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    else
                    {
                        if(globaldef006020.field000286 == BOT5)
                        {
                            globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                            if(globaldef006021 <= FALSE)
                            {
                                func002370(globaldef006020, "I really hate ", globaldef006022, globaldef005809, FALSE);
                            }
                            else
                            {
                                if(globaldef006021 <= TRUE)
                                {
                                    func002369(globaldef006020, "Sleeping time for tigger", globaldef005809, FALSE);
                                }
                                else
                                {
                                    if(globaldef006021 <= FL_SWIM)
                                    {
                                        func002369(globaldef006020, "Why can't we all be happy tiggers?", globaldef005809, FALSE);
                                    }
                                    else
                                    {
                                        if(globaldef006021 <= MOVETYPE_WALK)
                                        {
                                            func002369(globaldef006020, "Tigger is :(", globaldef005809, FALSE);
                                        }
                                        else
                                        {
                                            
                                            if(globaldef006021 <= MOVETYPE_STEP)
                                            {
                                                func002369(globaldef006020, "Purrrrr!", globaldef005809, FALSE);
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if(globaldef006020.field000286 == BOT6)
                            {
                                globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                if(globaldef006021 <= FALSE)
                                {
                                    func002369(globaldef006020, "I bet you never read my comics", globaldef005809, FALSE);
                                }
                                else
                                {
                                    if(globaldef006021 <= TRUE)
                                    {
                                        func002369(globaldef006020, "I really need a drink", globaldef005809, FALSE);
                                    }
                                    else
                                    {
                                        if(globaldef006021 <= FL_SWIM)
                                        {
                                            func002369(globaldef006020, "My suit is rusty, give me a 2nd chance", globaldef005809, FALSE);
                                        }
                                        else
                                        {
                                            if(globaldef006021 <= MOVETYPE_WALK)
                                            {
                                                func002369(globaldef006020, "great, another suit demolished", globaldef005809, FALSE);
                                            }
                                            else
                                            {
                                                
                                                if(globaldef006021 <= MOVETYPE_STEP)
                                                {
                                                    func002369(globaldef006020, "oh yeah, lets all pick on ironman!!", globaldef005809, FALSE);
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                if(globaldef006020.field000286 == BOT7)
                                {
                                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                    if(globaldef006021 <= FALSE)
                                    {
                                        func002369(globaldef006020, "You're one ugly motherfucker", globaldef005809, FALSE);
                                    }
                                    else
                                    {
                                        if(globaldef006021 <= TRUE)
                                        {
                                            func002369(globaldef006020, "You're all worms!!", globaldef005809, FALSE);
                                        }
                                        else
                                        {
                                            if(globaldef006021 <= FL_SWIM)
                                            {
                                                func002369(globaldef006020, "I will quash your puny civilization", globaldef005809, FALSE);
                                            }
                                            else
                                            {
                                                if(globaldef006021 <= MOVETYPE_WALK)
                                                {
                                                    func002369(globaldef006020, "I am the ultimate hunter", globaldef005809, FALSE);
                                                }
                                                else
                                                {
                                                    
                                                    if(globaldef006021 <= MOVETYPE_STEP)
                                                    {
                                                        func002369(globaldef006020, "what the hell are you?", globaldef005809, FALSE);
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                else
                                {
                                    if(globaldef006020.field000286 == BOT8)
                                    {
                                        globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                        if(globaldef006021 <= FALSE)
                                        {
                                            func002369(globaldef006020, "mamma mia", globaldef005809, FALSE);
                                        }
                                        else
                                        {
                                            if(globaldef006021 <= TRUE)
                                            {
                                                func002369(globaldef006020, "I'll c0me back wick $0me real p0werful friend$", globaldef005809, FALSE);
                                            }
                                            else
                                            {
                                                if(globaldef006021 <= FL_SWIM)
                                                {
                                                    func002370(globaldef006020, "Are you trying to tell me $omething, ", globaldef006022, globaldef005809, FALSE);
                                                }
                                                else
                                                {
                                                    if(globaldef006021 <= MOVETYPE_WALK)
                                                    {
                                                        func002369(globaldef006020, "Da m0b al$0 has bl0nde babe$", globaldef005809, FALSE);
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(globaldef006021 <= MOVETYPE_STEP)
                                                        {
                                                            func002369(globaldef006020, "Wait till I run y0u 0ver wick my V0lv0", globaldef005809, FALSE);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        if(globaldef006020.field000286 == BOT9)
                                        {
                                            globaldef006021 = floor(globaldef006021 * MOVETYPE_TOSS);
                                            if(globaldef006021 <= FALSE)
                                            {
                                                func002369(globaldef006020, "That really sucked, dude", globaldef005809, FALSE);
                                            }
                                            else
                                            {
                                                if(globaldef006021 <= TRUE)
                                                {
                                                    func002369(globaldef006020, "Sensei was right", globaldef005809, FALSE);
                                                }
                                                else
                                                {
                                                    if(globaldef006021 <= FL_SWIM)
                                                    {
                                                        func002369(globaldef006020, "Donatello, Michaelangelo, Leonardo, HEEELP!!!!", globaldef005809, FALSE);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006021 <= MOVETYPE_WALK)
                                                        {
                                                            func002370(globaldef006020, "Are you working for the Shredder, ", globaldef006022, globaldef005809, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006021 <= MOVETYPE_STEP)
                                                            {
                                                                func002370(globaldef006020, "Mundo uncewl, ", globaldef006022, globaldef005809, FALSE);
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(globaldef006021 <= MOVETYPE_FLY)
                                                                {
                                                                    func002369(globaldef006020, "Bogus dude", globaldef005809, FALSE);
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            if(globaldef006020.field000286 == BOT10)
                                            {
                                                globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                if(globaldef006021 <= FALSE)
                                                {
                                                    func002369(globaldef006020, "Ok, now call me a cab", globaldef005809, FALSE);
                                                }
                                                else
                                                {
                                                    if(globaldef006021 <= TRUE)
                                                    {
                                                        func002369(globaldef006020, "this isn't fare!!!", globaldef005809, FALSE);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006021 <= FL_SWIM)
                                                        {
                                                            func002369(globaldef006020, "I'm just a cabbie", globaldef005809, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006021 <= MOVETYPE_WALK)
                                                            {
                                                                func002369(globaldef006020, "cab drivers make such easy targets", globaldef005809, FALSE);
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(globaldef006021 <= MOVETYPE_STEP)
                                                                {
                                                                    func002369(globaldef006020, "suck exhaust, bud!", globaldef005809, FALSE);
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(globaldef006020.field000286 == BOT11)
                                                {
                                                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                    if(globaldef006021 <= FALSE)
                                                    {
                                                        func002370(globaldef006020, "Guess it's not a good day to be a bad guy, eh ", globaldef006022, globaldef005809, FALSE);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006021 <= TRUE)
                                                        {
                                                            func002369(globaldef006020, "Bad move, creep", globaldef005809, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006021 <= FL_SWIM)
                                                            {
                                                                func002369(globaldef006020, "Now your on our Qspy-hitlist", globaldef005809, FALSE);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006021 <= MOVETYPE_WALK)
                                                                {
                                                                    func002369(globaldef006020, "I will downgrade your ping to 999", globaldef005809, FALSE);
                                                                }
                                                                else
                                                                {
                                                                    
                                                                    if(globaldef006021 <= MOVETYPE_STEP)
                                                                    {
                                                                        func002369(globaldef006020, "Next time a bigger gun", globaldef005809, FALSE);
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    if(globaldef006020.field000286 == BOT12)
                                                    {
                                                        globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                        if(globaldef006021 <= FALSE)
                                                        {
                                                            func002369(globaldef006020, "Damnit!", globaldef005809, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006021 <= TRUE)
                                                            {
                                                                func002369(globaldef006020, "Freeze dude", globaldef005809, FALSE);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006021 <= FL_SWIM)
                                                                {
                                                                    func002369(globaldef006020, "Iceman will avenge himself", globaldef005809, FALSE);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006021 <= MOVETYPE_WALK)
                                                                    {
                                                                        func002369(globaldef006020, "I should have listened to Awnald S.", globaldef005809, FALSE);
                                                                    }
                                                                    else
                                                                    {
                                                                        
                                                                        if(globaldef006021 <= MOVETYPE_STEP)
                                                                        {
                                                                            func002370(globaldef006020, "Yeah-ya put me on ice real cool, ", globaldef006022, globaldef005809, FALSE);
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006020.field000286 == BOT13)
                                                        {
                                                            globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                            if(globaldef006021 <= FALSE)
                                                            {
                                                                func002369(globaldef006020, "Unhand me, you vanilla!!", globaldef005809, FALSE);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006021 <= TRUE)
                                                                {
                                                                    func002370(globaldef006020, globaldef006022, ", hah! Roof pig! Most unexpected!", globaldef005809, FALSE);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006021 <= FL_SWIM)
                                                                    {
                                                                        func002369(globaldef006020, "I will return, I AM the Tick", globaldef005809, FALSE);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006021 <= MOVETYPE_WALK)
                                                                        {
                                                                            func002369(globaldef006020, "Speak, my dog will bite your rear end", globaldef005809, FALSE);
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                            if(globaldef006021 <= MOVETYPE_STEP)
                                                                            {
                                                                                func002369(globaldef006020, "I pop my zits in your general direction", globaldef005809, FALSE);
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006020.field000286 == BOT14)
                                                            {
                                                                globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                if(globaldef006021 <= FALSE)
                                                                {
                                                                    func002369(globaldef006020, "You bastard, you killed me!!!", globaldef005809, FALSE);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006021 <= TRUE)
                                                                    {
                                                                        func002369(globaldef006020, "Why'd ya pick on me?", globaldef005809, FALSE);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006021 <= FL_SWIM)
                                                                        {
                                                                            func002369(globaldef006020, "This level sucks; I bet it's John Romero's", globaldef005809, FALSE);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006021 <= MOVETYPE_WALK)
                                                                            {
                                                                                func002369(globaldef006020, "You got better software than I have", globaldef005809, FALSE);
                                                                            }
                                                                            else
                                                                            {
                                                                                
                                                                                if(globaldef006021 <= MOVETYPE_STEP)
                                                                                {
                                                                                    func002369(globaldef006020, "I've had worse", globaldef005809, FALSE);
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006020.field000286 == BOT15)
                                                                {
                                                                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                    if(globaldef006021 <= FALSE)
                                                                    {
                                                                        func002369(globaldef006020, "Lamer!!!", globaldef005809, FALSE);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006021 <= TRUE)
                                                                        {
                                                                            func002369(globaldef006020, "Danu is at my side", globaldef005809, FALSE);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006021 <= FL_SWIM)
                                                                            {
                                                                                func002369(globaldef006020, "I will rise from the cauldron again", globaldef005809, FALSE);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006021 <= MOVETYPE_WALK)
                                                                                {
                                                                                    func002369(globaldef006020, "Ukko, get me out of here you dwarf", globaldef005809, FALSE);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006021 <= MOVETYPE_STEP)
                                                                                    {
                                                                                        func002370(globaldef006020, "HA! You can't really kill me, ", globaldef006022, globaldef005809, FALSE);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006020.field000286 == BOT16)
                                                                    {
                                                                        globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                        if(globaldef006021 <= FALSE)
                                                                        {
                                                                            func002369(globaldef006020, "My disassembly is prohibited by law", globaldef005809, FALSE);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006021 <= TRUE)
                                                                            {
                                                                                func002369(globaldef006020, "You will be brought to justice", globaldef005809, FALSE);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006021 <= FL_SWIM)
                                                                                {
                                                                                    func002369(globaldef006020, "You are in possession of illegal weapons, sir", globaldef005809, FALSE);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006021 <= MOVETYPE_WALK)
                                                                                    {
                                                                                        func002370(globaldef006020, "Please surrender at once, ", globaldef006022, globaldef005809, FALSE);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        
                                                                                        if(globaldef006021 <= MOVETYPE_STEP)
                                                                                        {
                                                                                            func002369(globaldef006020, "Offense #3, killing a police officer", globaldef005809, FALSE);
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006020.field000286 == BOT17)
                                                                        {
                                                                            globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                            if(globaldef006021 <= FALSE)
                                                                            {
                                                                                func002369(globaldef006020, "I guess it's boothill time 4 me", globaldef005809, FALSE);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006021 <= TRUE)
                                                                                {
                                                                                    func002370(globaldef006020, globaldef006022, " yer a darn good gunslinger, yeller-belly", globaldef005809, FALSE);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006021 <= FL_SWIM)
                                                                                    {
                                                                                        func002369(globaldef006020, "Caramba!", globaldef005809, FALSE);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006021 <= MOVETYPE_WALK)
                                                                                        {
                                                                                            func002369(globaldef006020, "You got me, varmitt!!", globaldef005809, FALSE);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            
                                                                                            if(globaldef006021 <= MOVETYPE_STEP)
                                                                                            {
                                                                                                func002370(globaldef006020, "Ya shot me in the back like a yeller coward, ", globaldef006022, globaldef005809, FALSE);
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006020.field000286 == BOT18)
                                                                            {
                                                                                globaldef006021 = floor(globaldef006021 * FL_SWIM);
                                                                                if(globaldef006021 <= FALSE)
                                                                                {
                                                                                    func002369(globaldef006020, "Damnit!", globaldef005809, FALSE);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006021 <= TRUE)
                                                                                    {
                                                                                        func002369(globaldef006020, "Mamma mia", globaldef005809, FALSE);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006020.field000286 == BOT19)
                                                                                {
                                                                                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                                    if(globaldef006021 <= FALSE)
                                                                                    {
                                                                                        func002369(globaldef006020, "I should have remained a lumberjack", globaldef005809, FALSE);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006021 <= TRUE)
                                                                                        {
                                                                                            func002369(globaldef006020, "'tis but a flesh wound", globaldef005809, FALSE);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006021 <= FL_SWIM)
                                                                                            {
                                                                                                func002369(globaldef006020, "I've had worse cuts shaving", globaldef005809, FALSE);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006021 <= MOVETYPE_WALK)
                                                                                                {
                                                                                                    func002369(globaldef006020, "My ulcer hurts more", globaldef005809, FALSE);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    
                                                                                                    if(globaldef006021 <= MOVETYPE_STEP)
                                                                                                    {
                                                                                                        func002371(globaldef006020, "Is that as good as you can do, ", globaldef006022, " ?", globaldef005809, FALSE);
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006020.field000286 == BOT20)
                                                                                    {
                                                                                        globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                                        if(globaldef006021 <= FALSE)
                                                                                        {
                                                                                            func002369(globaldef006020, "First you wanna wanna kiss me, then kill me", globaldef005809, FALSE);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006021 <= TRUE)
                                                                                            {
                                                                                                func002369(globaldef006020, "You pig, you messed up my hair", globaldef005809, FALSE);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006021 <= FL_SWIM)
                                                                                                {
                                                                                                    func002369(globaldef006020, "You animal, look what you've done to my  make-up", globaldef005809, FALSE);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006021 <= MOVETYPE_WALK)
                                                                                                    {
                                                                                                        func002369(globaldef006020, "Oooh, I just love the way you handle your tiny gun", globaldef005809, FALSE);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        
                                                                                                        if(globaldef006021 <= MOVETYPE_STEP)
                                                                                                        {
                                                                                                            func002369(globaldef006020, "GREAT!, now my tits need another silicone implant", globaldef005809, FALSE);
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006020.field000286 == BOT21)
                                                                                        {
                                                                                            globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                                            if(globaldef006021 <= FALSE)
                                                                                            {
                                                                                                func002369(globaldef006020, "You bastard, you killed me!!!", globaldef005809, FALSE);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006021 <= TRUE)
                                                                                                {
                                                                                                    func002369(globaldef006020, "Wham! Bam! thank you m'am", globaldef005809, FALSE);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006021 <= FL_SWIM)
                                                                                                    {
                                                                                                        func002369(globaldef006020, "Come on fuckers, painless is waiting 4 you", globaldef005809, FALSE);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006021 <= MOVETYPE_WALK)
                                                                                                        {
                                                                                                            func002369(globaldef006020, "Come on, bring on the really bad stuff", globaldef005809, FALSE);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            
                                                                                                            if(globaldef006021 <= MOVETYPE_STEP)
                                                                                                            {
                                                                                                                func002369(globaldef006020, "Payback time!", globaldef005809, FALSE);
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006020.field000286 == BOT22)
                                                                                            {
                                                                                                globaldef006021 = floor(globaldef006021 * FL_CLIENT);
                                                                                                if(globaldef006021 <= FALSE)
                                                                                                {
                                                                                                    func002369(globaldef006020, "I hate Nerds", globaldef005809, FALSE);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006021 <= TRUE)
                                                                                                    {
                                                                                                        func002369(globaldef006020, "you hound dog", globaldef005809, FALSE);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006021 <= FL_SWIM)
                                                                                                        {
                                                                                                            func002369(globaldef006020, "I ain't gonna sing no more", globaldef005809, FALSE);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006021 <= MOVETYPE_WALK)
                                                                                                            {
                                                                                                                func002369(globaldef006020, "so do ya wanna have a new car ?", globaldef005809, FALSE);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006021 <= MOVETYPE_STEP)
                                                                                                                {
                                                                                                                    func002369(globaldef006020, "Pooh! y'all call that shootin'?", globaldef005809, FALSE);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006021 <= MOVETYPE_FLY)
                                                                                                                    {
                                                                                                                        func002369(globaldef006020, "camper!!!", globaldef005809, FALSE);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006021 <= MOVETYPE_TOSS)
                                                                                                                        {
                                                                                                                            func002369(globaldef006020, "Y'all like to shoot the king of rock 'n roll", globaldef005809, FALSE);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            
                                                                                                                            if(globaldef006021 <= MOVETYPE_PUSH)
                                                                                                                            {
                                                                                                                                func002369(globaldef006020, "I'mmah gonnah cry, baby", globaldef005809, FALSE);
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                
                                                                                                if(globaldef006020.field000286 == BOT0)
                                                                                                {
                                                                                                    globaldef006021 = floor(globaldef006021 * MOVETYPE_FLY);
                                                                                                    if(globaldef006021 <= FALSE)
                                                                                                    {
                                                                                                        func002369(globaldef006020, "Resurgam", globaldef005809, FALSE);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006021 <= TRUE)
                                                                                                        {
                                                                                                            func002369(globaldef006020, "non placet", globaldef005809, FALSE);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006021 <= FL_SWIM)
                                                                                                            {
                                                                                                                func002369(globaldef006020, "Plebian", globaldef005809, FALSE);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006021 <= MOVETYPE_WALK)
                                                                                                                {
                                                                                                                    func002369(globaldef006020, "oops!!", globaldef005809, FALSE);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    
                                                                                                                    if(globaldef006021 <= MOVETYPE_STEP)
                                                                                                                    {
                                                                                                                        func002369(globaldef006020, "Ouch!", globaldef005809, FALSE);
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002284
// function begins at statement 30974, parm_start=17636
// OP_CALL0	457	0	0
// OP_STORE_F	1	17637	0
// OP_SUB_F	814	809	17640
// OP_LE	17640	214	17641
// OP_IFNOT	17641	43	0
// OP_CALL0	1082	0	0
// OP_STORE_S	1	17639	0
// OP_MUL_F	17637	229	17642
// OP_STORE_V	17642	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_EQ_F	17637	213	17643
// OP_IFNOT	17643	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17644	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	28	0	0
// OP_EQ_F	17637	214	17645
// OP_IFNOT	17645	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17646	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	231	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	20	0	0
// OP_EQ_F	17637	216	17647
// OP_IFNOT	17647	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17187	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17648	13	0
// OP_STORE_V	16699	16	0
// OP_STORE_V	230	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	17637	228	17649
// OP_IFNOT	17649	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17187	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17650	13	0
// OP_STORE_V	16700	16	0
// OP_STORE_V	230	19	0
// OP_CALL6	1075	0	0
// OP_RETURN	0	0	0
// OP_LE	814	216	17651
// OP_IFNOT	17651	3	0
// OP_STORE_F	16704	17638	0
// OP_GOTO	23	0	0
// OP_LOAD_F	17636	609	17652
// OP_EQ_F	17652	213	17653
// OP_IFNOT	17653	3	0
// OP_STORE_F	16704	17638	0
// OP_GOTO	18	0	0
// OP_EQ_F	820	16699	17654
// OP_NE_E	830	17636	17655
// OP_AND	17654	17655	17656
// OP_IFNOT	17656	3	0
// OP_STORE_F	16707	17638	0
// OP_GOTO	12	0	0
// OP_LE	17637	5599	17657
// OP_IFNOT	17657	3	0
// OP_STORE_F	16704	17638	0
// OP_GOTO	8	0	0
// OP_LE	17637	3263	17658
// OP_IFNOT	17658	3	0
// OP_STORE_F	16705	17638	0
// OP_GOTO	4	0	0
// OP_LE	17637	214	17659
// OP_IFNOT	17659	2	0
// OP_STORE_F	16706	17638	0
// OP_STORE_V	17636	4	0
// OP_CALL1	1083	0	0
// OP_STORE_S	1	17639	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	17637	0
// OP_EQ_F	17638	16707	17660
// OP_IFNOT	17660	85	0
// OP_LOAD_S	830	180	17661
// OP_STORE_S	17661	17639	0
// OP_MUL_F	17637	217	17662
// OP_STORE_V	17662	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17663
// OP_IFNOT	17663	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17664	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16701	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	69	0	0
// OP_LE	17637	214	17665
// OP_LOAD_F	17636	609	17666
// OP_NE_F	17666	16672	17667
// OP_AND	17665	17667	17668
// OP_IFNOT	17668	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17669	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	216	17670
// OP_IFNOT	17670	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17671	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16701	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	228	17672
// OP_IFNOT	17672	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17673	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	229	17674
// OP_IFNOT	17674	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17675	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	230	17676
// OP_IFNOT	17676	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17677	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	231	17678
// OP_IFNOT	17678	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17679	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	232	17680
// OP_IFNOT	17680	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17681	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16701	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	217	17682
// OP_IFNOT	17682	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17683	7	0
// OP_STORE_V	16701	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	2639	0	0
// OP_EQ_F	17638	16706	17684
// OP_IFNOT	17684	72	0
// OP_MUL_F	17637	217	17685
// OP_STORE_V	17685	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17686
// OP_IFNOT	17686	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17687	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	59	0	0
// OP_LE	17637	214	17688
// OP_IFNOT	17688	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17689	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	51	0	0
// OP_LE	17637	216	17690
// OP_IFNOT	17690	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17691	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	43	0	0
// OP_LE	17637	228	17692
// OP_IFNOT	17692	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17693	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	35	0	0
// OP_LE	17637	229	17694
// OP_IFNOT	17694	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17695	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	27	0	0
// OP_LE	17637	230	17696
// OP_IFNOT	17696	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17697	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	19	0	0
// OP_LE	17637	231	17698
// OP_IFNOT	17698	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17699	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	10	0	0
// OP_LE	17637	232	17700
// OP_IFNOT	17700	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17701	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17702	13	0
// OP_STORE_V	16699	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	2566	0	0
// OP_EQ_F	17638	16705	17703
// OP_IFNOT	17703	258	0
// OP_MUL_F	17637	310	17704
// OP_STORE_V	17704	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17705
// OP_IFNOT	17705	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17706	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	244	0	0
// OP_LE	17637	214	17707
// OP_IFNOT	17707	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17708	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	236	0	0
// OP_LE	17637	216	17709
// OP_IFNOT	17709	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17710	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	228	0	0
// OP_LE	17637	228	17711
// OP_IFNOT	17711	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17712	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	219	0	0
// OP_LE	17637	229	17713
// OP_IFNOT	17713	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17714	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	211	0	0
// OP_LE	17637	230	17715
// OP_IFNOT	17715	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17716	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	203	0	0
// OP_LE	17637	231	17717
// OP_IFNOT	17717	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17718	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	195	0	0
// OP_LE	17637	232	17719
// OP_IFNOT	17719	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17720	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	187	0	0
// OP_LE	17637	217	17721
// OP_IFNOT	17721	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17722	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	179	0	0
// OP_LE	17637	234	17723
// OP_IFNOT	17723	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17710	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	171	0	0
// OP_LE	17637	235	17724
// OP_IFNOT	17724	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17725	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	163	0	0
// OP_LE	17637	236	17726
// OP_IFNOT	17726	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17727	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	155	0	0
// OP_LE	17637	791	17728
// OP_IFNOT	17728	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17729	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	147	0	0
// OP_LE	17637	792	17730
// OP_IFNOT	17730	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17731	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	139	0	0
// OP_LE	17637	5693	17732
// OP_IFNOT	17732	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17371	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	131	0	0
// OP_LE	17637	765	17733
// OP_IFNOT	17733	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17734	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	123	0	0
// OP_LE	17637	218	17735
// OP_IFNOT	17735	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17736	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	115	0	0
// OP_LE	17637	6892	17737
// OP_IFNOT	17737	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17738	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	107	0	0
// OP_LE	17637	6133	17739
// OP_IFNOT	17739	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17740	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	99	0	0
// OP_LE	17637	6895	17741
// OP_IFNOT	17741	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17742	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	91	0	0
// OP_LE	17637	2323	17743
// OP_IFNOT	17743	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17744	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	83	0	0
// OP_LE	17637	12465	17745
// OP_IFNOT	17745	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17746	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17747	13	0
// OP_STORE_V	16700	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	73	0	0
// OP_LE	17637	12467	17748
// OP_IFNOT	17748	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17749	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	304	17750
// OP_IFNOT	17750	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17751	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	736	17752
// OP_IFNOT	17752	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17753	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	305	17754
// OP_IFNOT	17754	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17755	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	306	17756
// OP_IFNOT	17756	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17757	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	307	17758
// OP_IFNOT	17758	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17759	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	308	17760
// OP_IFNOT	17760	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17761	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	9664	17762
// OP_IFNOT	17762	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17763	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	309	17764
// OP_IFNOT	17764	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17765	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	2307	0	0
// OP_EQ_F	17638	16704	17766
// OP_IFNOT	17766	2305	0
// OP_LOAD_F	17636	609	17767
// OP_EQ_F	17767	16693	17768
// OP_IFNOT	17768	141	0
// OP_MUL_F	17637	218	17769
// OP_STORE_V	17769	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17770
// OP_IFNOT	17770	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17771	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	214	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	127	0	0
// OP_LE	17637	214	17772
// OP_IFNOT	17772	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17773	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	119	0	0
// OP_LE	17637	216	17774
// OP_IFNOT	17774	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17775	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	111	0	0
// OP_LE	17637	228	17776
// OP_IFNOT	17776	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17777	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16703	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	102	0	0
// OP_LE	17637	229	17778
// OP_IFNOT	17778	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17779	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	93	0	0
// OP_LE	17637	230	17780
// OP_IFNOT	17780	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17781	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	85	0	0
// OP_LE	17637	231	17782
// OP_IFNOT	17782	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17783	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	77	0	0
// OP_LE	17637	232	17784
// OP_IFNOT	17784	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17785	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	68	0	0
// OP_LE	17637	217	17786
// OP_IFNOT	17786	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17787	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	59	0	0
// OP_LE	17637	234	17788
// OP_IFNOT	17788	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17789	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	50	0	0
// OP_LE	17637	235	17790
// OP_IFNOT	17790	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17791	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	42	0	0
// OP_LE	17637	236	17792
// OP_IFNOT	17792	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17793	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	791	17794
// OP_IFNOT	17794	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17795	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	792	17796
// OP_IFNOT	17796	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17797	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	5693	17798
// OP_IFNOT	17798	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17799	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17637	765	17800
// OP_IFNOT	17800	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17801	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	2162	0	0
// OP_LOAD_F	17636	609	17802
// OP_EQ_F	17802	16671	17803
// OP_IFNOT	17803	87	0
// OP_MUL_F	17637	235	17804
// OP_STORE_V	17804	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17805
// OP_IFNOT	17805	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17187	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17806	13	0
// OP_STORE_V	16699	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	214	17807
// OP_IFNOT	17807	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17808	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	216	17809
// OP_IFNOT	17809	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17810	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	228	17811
// OP_IFNOT	17811	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17812	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	229	17813
// OP_IFNOT	17813	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17814	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	17815
// OP_IFNOT	17815	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17816	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	17817
// OP_IFNOT	17817	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17818	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	17819
// OP_IFNOT	17819	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17820	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	17821
// OP_IFNOT	17821	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17822	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	17823
// OP_IFNOT	17823	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17824	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	2073	0	0
// OP_LOAD_F	17636	609	17825
// OP_EQ_F	17825	16672	17826
// OP_IFNOT	17826	93	0
// OP_MUL_F	17637	236	17827
// OP_STORE_V	17827	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17828
// OP_IFNOT	17828	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17829	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	80	0	0
// OP_LE	17637	214	17830
// OP_IFNOT	17830	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17831	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	216	17832
// OP_IFNOT	17832	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17833	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	228	17834
// OP_IFNOT	17834	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17835	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	229	17836
// OP_IFNOT	17836	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17837	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	230	17838
// OP_IFNOT	17838	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17839	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	231	17840
// OP_IFNOT	17840	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17841	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	232	17842
// OP_IFNOT	17842	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17843	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	217	17844
// OP_IFNOT	17844	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17845	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	234	17846
// OP_IFNOT	17846	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17847	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	235	17848
// OP_IFNOT	17848	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17849	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1978	0	0
// OP_LOAD_F	17636	609	17850
// OP_EQ_F	17850	16673	17851
// OP_IFNOT	17851	112	0
// OP_MUL_F	17637	792	17852
// OP_STORE_V	17852	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17853
// OP_IFNOT	17853	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17854	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	99	0	0
// OP_LE	17637	214	17855
// OP_IFNOT	17855	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17856	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	91	0	0
// OP_LE	17637	216	17857
// OP_IFNOT	17857	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17858	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	83	0	0
// OP_LE	17637	228	17859
// OP_IFNOT	17859	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17860	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LE	17637	229	17861
// OP_IFNOT	17861	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17862	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	17863	13	0
// OP_STORE_V	16700	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	230	17864
// OP_IFNOT	17864	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17865	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	231	17866
// OP_IFNOT	17866	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17867	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	232	17868
// OP_IFNOT	17868	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17869	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	217	17870
// OP_IFNOT	17870	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17871	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	234	17872
// OP_IFNOT	17872	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17873	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	235	17874
// OP_IFNOT	17874	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17875	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	236	17876
// OP_IFNOT	17876	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17877	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	791	17878
// OP_IFNOT	17878	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17879	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1864	0	0
// OP_LOAD_F	17636	609	17880
// OP_EQ_F	17880	16674	17881
// OP_IFNOT	17881	85	0
// OP_MUL_F	17637	235	17882
// OP_STORE_V	17882	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17883
// OP_IFNOT	17883	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17884	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	214	17885
// OP_IFNOT	17885	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17886	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	216	17887
// OP_IFNOT	17887	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17888	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	228	17889
// OP_IFNOT	17889	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17890	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	229	17891
// OP_IFNOT	17891	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17892	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	17893
// OP_IFNOT	17893	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17894	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	17895
// OP_IFNOT	17895	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17896	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	17897
// OP_IFNOT	17897	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17898	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	17899
// OP_IFNOT	17899	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17900	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	17901
// OP_IFNOT	17901	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17902	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1777	0	0
// OP_LOAD_F	17636	609	17903
// OP_EQ_F	17903	16675	17904
// OP_IFNOT	17904	85	0
// OP_MUL_F	17637	235	17905
// OP_STORE_V	17905	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17906
// OP_IFNOT	17906	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17907	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	214	17908
// OP_IFNOT	17908	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17909	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	216	17910
// OP_IFNOT	17910	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17911	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	228	17912
// OP_IFNOT	17912	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17913	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	229	17914
// OP_IFNOT	17914	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17915	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	17916
// OP_IFNOT	17916	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17917	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	17918
// OP_IFNOT	17918	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17919	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	17920
// OP_IFNOT	17920	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17921	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	17922
// OP_IFNOT	17922	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17923	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	17924
// OP_IFNOT	17924	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17925	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1690	0	0
// OP_LOAD_F	17636	609	17926
// OP_EQ_F	17926	16676	17927
// OP_IFNOT	17927	86	0
// OP_MUL_F	17637	235	17928
// OP_STORE_V	17928	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17929
// OP_IFNOT	17929	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17930	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	73	0	0
// OP_LE	17637	214	17931
// OP_IFNOT	17931	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17932	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	216	17933
// OP_IFNOT	17933	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17934	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	228	17935
// OP_IFNOT	17935	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17936	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	17937
// OP_IFNOT	17937	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17938	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	17939
// OP_IFNOT	17939	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17940	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	17941
// OP_IFNOT	17941	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17942	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	17943
// OP_IFNOT	17943	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17944	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	17945
// OP_IFNOT	17945	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17946	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	17947
// OP_IFNOT	17947	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17948	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1602	0	0
// OP_LOAD_F	17636	609	17949
// OP_EQ_F	17949	16677	17950
// OP_IFNOT	17950	117	0
// OP_MUL_F	17637	5693	17951
// OP_STORE_V	17951	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17952
// OP_IFNOT	17952	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17953	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	104	0	0
// OP_LE	17637	214	17954
// OP_IFNOT	17954	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17955	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	96	0	0
// OP_LE	17637	216	17956
// OP_IFNOT	17956	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17957	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	88	0	0
// OP_LE	17637	228	17958
// OP_IFNOT	17958	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17959	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	80	0	0
// OP_LE	17637	229	17960
// OP_IFNOT	17960	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17961	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	230	17962
// OP_IFNOT	17962	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17963	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	231	17964
// OP_IFNOT	17964	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17965	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	232	17966
// OP_IFNOT	17966	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17967	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	217	17968
// OP_IFNOT	17968	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17969	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	234	17970
// OP_IFNOT	17970	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17971	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	235	17972
// OP_IFNOT	17972	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17973	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	236	17974
// OP_IFNOT	17974	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17975	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	791	17976
// OP_IFNOT	17976	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17977	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	792	17978
// OP_IFNOT	17978	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17979	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1483	0	0
// OP_LOAD_F	17636	609	17980
// OP_EQ_F	17980	16678	17981
// OP_IFNOT	17981	71	0
// OP_MUL_F	17637	217	17982
// OP_STORE_V	17982	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	17983
// OP_IFNOT	17983	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17984	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	214	17985
// OP_IFNOT	17985	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17986	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	50	0	0
// OP_LE	17637	216	17987
// OP_IFNOT	17987	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17988	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	228	17989
// OP_IFNOT	17989	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	17990	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	229	17991
// OP_IFNOT	17991	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17992	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	230	17993
// OP_IFNOT	17993	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17994	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	231	17995
// OP_IFNOT	17995	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17996	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	232	17997
// OP_IFNOT	17997	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17998	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1410	0	0
// OP_LOAD_F	17636	609	17999
// OP_EQ_F	17999	16679	18000
// OP_IFNOT	18000	117	0
// OP_MUL_F	17637	5693	18001
// OP_STORE_V	18001	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18002
// OP_IFNOT	18002	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18003	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	104	0	0
// OP_LE	17637	214	18004
// OP_IFNOT	18004	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18005	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	96	0	0
// OP_LE	17637	216	18006
// OP_IFNOT	18006	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18007	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	88	0	0
// OP_LE	17637	228	18008
// OP_IFNOT	18008	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18009	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	80	0	0
// OP_LE	17637	229	18010
// OP_IFNOT	18010	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18011	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	230	18012
// OP_IFNOT	18012	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18013	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	231	18014
// OP_IFNOT	18014	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18015	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	232	18016
// OP_IFNOT	18016	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18017	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	217	18018
// OP_IFNOT	18018	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18019	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	234	18020
// OP_IFNOT	18020	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18021	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	235	18022
// OP_IFNOT	18022	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18023	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	236	18024
// OP_IFNOT	18024	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18025	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	791	18026
// OP_IFNOT	18026	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18027	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	792	18028
// OP_IFNOT	18028	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18029	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1291	0	0
// OP_LOAD_F	17636	609	18030
// OP_EQ_F	18030	16680	18031
// OP_IFNOT	18031	88	0
// OP_MUL_F	17637	235	18032
// OP_STORE_V	18032	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18033
// OP_IFNOT	18033	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18034	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	74	0	0
// OP_LE	17637	214	18035
// OP_IFNOT	18035	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18036	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	216	18037
// OP_IFNOT	18037	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18038	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18039
// OP_IFNOT	18039	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18040	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	216	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18041
// OP_IFNOT	18041	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18042	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	18043
// OP_IFNOT	18043	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18044	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	18045
// OP_IFNOT	18045	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18046	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	18047
// OP_IFNOT	18047	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18048	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18049
// OP_IFNOT	18049	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18050	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18051
// OP_IFNOT	18051	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18052	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1201	0	0
// OP_LOAD_F	17636	609	18053
// OP_EQ_F	18053	16681	18054
// OP_IFNOT	18054	87	0
// OP_MUL_F	17637	235	18055
// OP_STORE_V	18055	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18056
// OP_IFNOT	18056	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18057	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	74	0	0
// OP_LE	17637	214	18058
// OP_IFNOT	18058	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18059	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	216	18060
// OP_IFNOT	18060	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18061	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18062
// OP_IFNOT	18062	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18063	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18064
// OP_IFNOT	18064	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18065	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	18066
// OP_IFNOT	18066	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18067	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	231	18068
// OP_IFNOT	18068	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18069	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	232	18070
// OP_IFNOT	18070	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18071	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18072
// OP_IFNOT	18072	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18073	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18074
// OP_IFNOT	18074	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18075	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1112	0	0
// OP_LOAD_F	17636	609	18076
// OP_EQ_F	18076	16682	18077
// OP_IFNOT	18077	87	0
// OP_MUL_F	17637	235	18078
// OP_STORE_V	18078	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18079
// OP_IFNOT	18079	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18080	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	74	0	0
// OP_LE	17637	214	18081
// OP_IFNOT	18081	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18082	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	216	18083
// OP_IFNOT	18083	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18084	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18085
// OP_IFNOT	18085	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18086	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	50	0	0
// OP_LE	17637	229	18087
// OP_IFNOT	18087	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18088	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	18089	13	0
// OP_STORE_V	16699	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	18090
// OP_IFNOT	18090	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18091	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	18092
// OP_IFNOT	18092	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18093	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	18094
// OP_IFNOT	18094	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18095	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18096
// OP_IFNOT	18096	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18097	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18098
// OP_IFNOT	18098	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18099	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	1023	0	0
// OP_LOAD_F	17636	609	18100
// OP_EQ_F	18100	16683	18101
// OP_IFNOT	18101	96	0
// OP_MUL_F	17637	236	18102
// OP_STORE_V	18102	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18103
// OP_IFNOT	18103	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18104	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	83	0	0
// OP_LE	17637	214	18105
// OP_IFNOT	18105	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18106	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	230	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	74	0	0
// OP_LE	17637	216	18107
// OP_IFNOT	18107	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18108	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	228	18109
// OP_IFNOT	18109	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18110	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	229	18111
// OP_IFNOT	18111	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18112	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	230	18113
// OP_IFNOT	18113	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18114	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	231	18115
// OP_IFNOT	18115	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18116	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	232	18117
// OP_IFNOT	18117	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18118	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	217	18119
// OP_IFNOT	18119	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18120	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	234	18121
// OP_IFNOT	18121	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18122	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	235	18123
// OP_IFNOT	18123	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18124	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	925	0	0
// OP_LOAD_F	17636	609	18125
// OP_EQ_F	18125	16684	18126
// OP_IFNOT	18126	93	0
// OP_MUL_F	17637	236	18127
// OP_STORE_V	18127	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18128
// OP_IFNOT	18128	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18129	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	80	0	0
// OP_LE	17637	214	18130
// OP_IFNOT	18130	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18131	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	216	18132
// OP_IFNOT	18132	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18133	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	228	18134
// OP_IFNOT	18134	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18135	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	229	18136
// OP_IFNOT	18136	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18137	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	230	18138
// OP_IFNOT	18138	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18139	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	231	18140
// OP_IFNOT	18140	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18141	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	232	18142
// OP_IFNOT	18142	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18143	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	217	18144
// OP_IFNOT	18144	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18145	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	234	18146
// OP_IFNOT	18146	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18147	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	235	18148
// OP_IFNOT	18148	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18149	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	830	0	0
// OP_LOAD_F	17636	609	18150
// OP_EQ_F	18150	16685	18151
// OP_IFNOT	18151	86	0
// OP_MUL_F	17637	236	18152
// OP_STORE_V	18152	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18153
// OP_IFNOT	18153	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18154	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	73	0	0
// OP_LE	17637	214	18155
// OP_IFNOT	18155	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18156	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	216	18157
// OP_IFNOT	18157	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18158	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	228	18159
// OP_IFNOT	18159	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18160	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18161
// OP_IFNOT	18161	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18162	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	18163
// OP_IFNOT	18163	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18164	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	231	18165
// OP_IFNOT	18165	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18166	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	232	18167
// OP_IFNOT	18167	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18168	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	217	18169
// OP_IFNOT	18169	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18170	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17637	235	18171
// OP_IFNOT	18171	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18172	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	742	0	0
// OP_LOAD_F	17636	609	18173
// OP_EQ_F	18173	16686	18174
// OP_IFNOT	18174	88	0
// OP_MUL_F	17637	235	18175
// OP_STORE_V	18175	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18176
// OP_IFNOT	18176	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18177	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LE	17637	214	18178
// OP_IFNOT	18178	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18179	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	216	18180
// OP_IFNOT	18180	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18181	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18182
// OP_IFNOT	18182	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18183	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18184
// OP_IFNOT	18184	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18185	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	18186
// OP_IFNOT	18186	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18187	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	231	18188
// OP_IFNOT	18188	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18189	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	232	18190
// OP_IFNOT	18190	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18191	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	217	18192
// OP_IFNOT	18192	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18193	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17637	234	18194
// OP_IFNOT	18194	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18195	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	652	0	0
// OP_LOAD_F	17636	609	18196
// OP_EQ_F	18196	16687	18197
// OP_IFNOT	18197	88	0
// OP_MUL_F	17637	235	18198
// OP_STORE_V	18198	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18199
// OP_IFNOT	18199	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18200	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LE	17637	214	18201
// OP_IFNOT	18201	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18202	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	66	0	0
// OP_LE	17637	216	18203
// OP_IFNOT	18203	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18204	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18205
// OP_IFNOT	18205	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18206	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	50	0	0
// OP_LE	17637	229	18207
// OP_IFNOT	18207	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18208	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	42	0	0
// OP_LE	17637	230	18209
// OP_IFNOT	18209	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18210	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	34	0	0
// OP_LE	17637	231	18211
// OP_IFNOT	18211	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18212	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	26	0	0
// OP_LE	17637	232	18213
// OP_IFNOT	18213	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18214	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	230	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	217	18215
// OP_IFNOT	18215	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18216	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	9	0	0
// OP_LE	17637	234	18217
// OP_IFNOT	18217	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18218	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	562	0	0
// OP_LOAD_F	17636	609	18219
// OP_EQ_F	18219	16688	18220
// OP_IFNOT	18220	88	0
// OP_MUL_F	17637	236	18221
// OP_STORE_V	18221	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18222
// OP_IFNOT	18222	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18223	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LE	17637	214	18224
// OP_IFNOT	18224	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18225	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	67	0	0
// OP_LE	17637	216	18226
// OP_IFNOT	18226	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18227	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	58	0	0
// OP_LE	17637	228	18228
// OP_IFNOT	18228	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18229	10	0
// OP_STORE_V	16699	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18230
// OP_IFNOT	18230	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18231	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	18232
// OP_IFNOT	18232	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18233	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	231	18234
// OP_IFNOT	18234	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18235	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	232	18236
// OP_IFNOT	18236	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18237	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18238
// OP_IFNOT	18238	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18239	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	235	18240
// OP_IFNOT	18240	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18241	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	472	0	0
// OP_LOAD_F	17636	609	18242
// OP_EQ_F	18242	16689	18243
// OP_IFNOT	18243	85	0
// OP_MUL_F	17637	235	18244
// OP_STORE_V	18244	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18245
// OP_IFNOT	18245	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18246	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	214	18247
// OP_IFNOT	18247	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18248	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	216	18249
// OP_IFNOT	18249	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18250	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	228	18251
// OP_IFNOT	18251	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18252	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	229	18253
// OP_IFNOT	18253	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18254	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	18255
// OP_IFNOT	18255	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18256	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	18257
// OP_IFNOT	18257	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18258	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	18259
// OP_IFNOT	18259	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18260	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18261
// OP_IFNOT	18261	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18262	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18263
// OP_IFNOT	18263	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18264	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	385	0	0
// OP_LOAD_F	17636	609	18265
// OP_EQ_F	18265	16690	18266
// OP_IFNOT	18266	128	0
// OP_MUL_F	17637	765	18267
// OP_STORE_V	18267	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18268
// OP_IFNOT	18268	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18269	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	115	0	0
// OP_LE	17637	214	18270
// OP_IFNOT	18270	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18271	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	107	0	0
// OP_LE	17637	216	18272
// OP_IFNOT	18272	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18273	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	99	0	0
// OP_LE	17637	228	18274
// OP_IFNOT	18274	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18275	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	91	0	0
// OP_LE	17637	229	18276
// OP_IFNOT	18276	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18277	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	83	0	0
// OP_LE	17637	230	18278
// OP_IFNOT	18278	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18279	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	75	0	0
// OP_LE	17637	231	18280
// OP_IFNOT	18280	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18281	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	67	0	0
// OP_LE	17637	232	18282
// OP_IFNOT	18282	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18283	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	59	0	0
// OP_LE	17637	217	18284
// OP_IFNOT	18284	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18285	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	51	0	0
// OP_LE	17637	234	18286
// OP_IFNOT	18286	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18287	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	43	0	0
// OP_LE	17637	235	18288
// OP_IFNOT	18288	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18289	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	35	0	0
// OP_LE	17637	236	18290
// OP_IFNOT	18290	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18291	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	26	0	0
// OP_LE	17637	791	18292
// OP_IFNOT	18292	9	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18293	7	0
// OP_STORE_V	17639	10	0
// OP_STORE_V	18294	13	0
// OP_STORE_V	16698	16	0
// OP_STORE_V	229	19	0
// OP_CALL6	1075	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	792	18295
// OP_IFNOT	18295	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18296	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	5693	18297
// OP_IFNOT	18297	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18298	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	255	0	0
// OP_LOAD_F	17636	609	18299
// OP_EQ_F	18299	16691	18300
// OP_IFNOT	18300	78	0
// OP_MUL_F	17637	234	18301
// OP_STORE_V	18301	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18302
// OP_IFNOT	18302	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18303	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	214	18304
// OP_IFNOT	18304	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18305	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	216	18306
// OP_IFNOT	18306	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18307	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	228	18308
// OP_IFNOT	18308	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18309	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	229	18310
// OP_IFNOT	18310	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18311	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	230	18312
// OP_IFNOT	18312	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18313	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	231	18314
// OP_IFNOT	18314	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18315	10	0
// OP_STORE_V	16698	13	0
// OP_STORE_V	229	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	232	18316
// OP_IFNOT	18316	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18317	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	217	18318
// OP_IFNOT	18318	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18319	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	229	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	175	0	0
// OP_LOAD_F	17636	609	18320
// OP_EQ_F	18320	16692	18321
// OP_IFNOT	18321	86	0
// OP_MUL_F	17637	235	18322
// OP_STORE_V	18322	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18323
// OP_IFNOT	18323	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18324	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	73	0	0
// OP_LE	17637	214	18325
// OP_IFNOT	18325	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18326	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	65	0	0
// OP_LE	17637	216	18327
// OP_IFNOT	18327	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18328	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	57	0	0
// OP_LE	17637	228	18329
// OP_IFNOT	18329	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18330	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	49	0	0
// OP_LE	17637	229	18331
// OP_IFNOT	18331	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18332	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	41	0	0
// OP_LE	17637	230	18333
// OP_IFNOT	18333	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18334	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	33	0	0
// OP_LE	17637	231	18335
// OP_IFNOT	18335	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18336	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	25	0	0
// OP_LE	17637	232	18337
// OP_IFNOT	18337	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18338	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	17	0	0
// OP_LE	17637	217	18339
// OP_IFNOT	18339	8	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17639	7	0
// OP_STORE_V	18340	10	0
// OP_STORE_V	16700	13	0
// OP_STORE_V	228	16	0
// OP_CALL5	1074	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18341
// OP_IFNOT	18341	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18342	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	87	0	0
// OP_LOAD_F	17636	609	18343
// OP_EQ_F	18343	16670	18344
// OP_IFNOT	18344	84	0
// OP_MUL_F	17637	235	18345
// OP_STORE_V	18345	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	17637	0
// OP_LE	17637	213	18346
// OP_IFNOT	18346	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18347	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	72	0	0
// OP_LE	17637	214	18348
// OP_IFNOT	18348	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18349	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	64	0	0
// OP_LE	17637	216	18350
// OP_IFNOT	18350	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18351	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	17637	228	18352
// OP_IFNOT	18352	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	17314	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	17637	229	18353
// OP_IFNOT	18353	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18354	7	0
// OP_STORE_V	16698	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	17637	230	18355
// OP_IFNOT	18355	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18356	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	216	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	17637	231	18357
// OP_IFNOT	18357	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18358	7	0
// OP_STORE_V	16699	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	17637	232	18359
// OP_IFNOT	18359	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18360	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	17637	217	18361
// OP_IFNOT	18361	7	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18362	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	17637	234	18363
// OP_IFNOT	18363	6	0
// OP_STORE_V	17636	4	0
// OP_STORE_V	18364	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	228	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity globaldef006144) func002284 = 
{
    local float globaldef006145;
    local float globaldef006146;
    local string globaldef006147;
    globaldef006145 = random();
    
    if((activeClientCount - globaldef000792) <= TRUE)
    {
        globaldef006147 = func002373();
        globaldef006145 = floor(globaldef006145 * MOVETYPE_STEP);
        if(globaldef006145 == FALSE)
        {
            func002369(globaldef006144, "Where is everybody?", globaldef005811, FL_SWIM);
        }
        else
        {
            if(globaldef006145 == TRUE)
            {
                func002369(globaldef006144, "I'm playing with myself and it seems you like to watch it?", globaldef005810, MOVETYPE_TOSS);
            }
            else
            {
                if(globaldef006145 == FL_SWIM)
                {
                    func002371(globaldef006144, "Hey ", globaldef006147, ", are you afraid to play?", globaldef005811, MOVETYPE_FLY);
                }
                else
                {
                    
                    if(globaldef006145 == MOVETYPE_WALK)
                    {
                        func002371(globaldef006144, "Hey ", globaldef006147, ", lets do a 1 on 1", globaldef005812, MOVETYPE_FLY);
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    if(activeClientCount <= FL_SWIM)
    {
        globaldef006146 = globaldef005816;
    }
    else
    {
        if(globaldef006144.field000286 == FALSE)
        {
            globaldef006146 = globaldef005816;
        }
        else
        {
            if((globaldef000803 == globaldef005811) && (globaldef000813 != globaldef006144))
            {
                globaldef006146 = globaldef005819;
            }
            else
            {
                if(globaldef006145 <= 0.7)
                {
                    globaldef006146 = globaldef005816;
                }
                else
                {
                    if(globaldef006145 <= 0.9)
                    {
                        globaldef006146 = globaldef005817;
                    }
                    else
                    {
                        
                        if(globaldef006145 <= TRUE)
                        {
                            globaldef006146 = globaldef005818;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    globaldef006147 = func002372(globaldef006144);
    globaldef006145 = random();
    if(globaldef006146 == globaldef005819)
    {
        globaldef006147 = globaldef000813.netname;
        globaldef006145 = floor(globaldef006145 * FL_CLIENT);
        if(globaldef006145 <= FALSE)
        {
            func002370(globaldef006144, "Suck my broomstick ", globaldef006147, globaldef005813, FL_SWIM);
        }
        else
        {
            if((globaldef006145 <= TRUE) && (globaldef006144.field000286 != BOT2))
            {
                func002369(globaldef006144, "Dogs crawl under Gates, software crawls under Windows", globaldef005813, FL_SWIM);
            }
            else
            {
                if(globaldef006145 <= FL_SWIM)
                {
                    func002370(globaldef006144, "Eat my pineapple ", globaldef006147, globaldef005813, FL_SWIM);
                }
                else
                {
                    if(globaldef006145 <= MOVETYPE_WALK)
                    {
                        func002369(globaldef006144, "Lets go and gib Mr Elusive", globaldef005813, MOVETYPE_WALK);
                    }
                    else
                    {
                        if(globaldef006145 <= MOVETYPE_STEP)
                        {
                            func002369(globaldef006144, "Can't you say anything else?", globaldef005813, MOVETYPE_STEP);
                        }
                        else
                        {
                            if(globaldef006145 <= MOVETYPE_FLY)
                            {
                                func002369(globaldef006144, "Stop chatting, you losers!", globaldef005813, MOVETYPE_WALK);
                            }
                            else
                            {
                                if(globaldef006145 <= MOVETYPE_TOSS)
                                {
                                    func002369(globaldef006144, "Just shut up and play", globaldef005813, MOVETYPE_WALK);
                                }
                                else
                                {
                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                    {
                                        func002370(globaldef006144, "Enough already ", globaldef006147, globaldef005813, FL_SWIM);
                                    }
                                    else
                                    {
                                        
                                        if(globaldef006145 <= FL_CLIENT)
                                        {
                                            func002369(globaldef006144, "Lemme clean out yer ears with my broomstick", globaldef005813, MOVETYPE_STEP);
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(globaldef006146 == globaldef005818)
        {
            globaldef006145 = floor(globaldef006145 * FL_CLIENT);
            if(globaldef006145 <= FALSE)
            {
                func002369(globaldef006144, "What do you guys want from me?", globaldef005811, MOVETYPE_WALK);
            }
            else
            {
                if(globaldef006145 <= TRUE)
                {
                    func002369(globaldef006144, "Your momma is an 8086", globaldef005812, TRUE);
                }
                else
                {
                    if(globaldef006145 <= FL_SWIM)
                    {
                        func002369(globaldef006144, "I'm real and you are all bots", globaldef005812, MOVETYPE_WALK);
                    }
                    else
                    {
                        if(globaldef006145 <= MOVETYPE_WALK)
                        {
                            func002369(globaldef006144, "You're all stupid campers", globaldef005812, FL_SWIM);
                        }
                        else
                        {
                            if(globaldef006145 <= MOVETYPE_STEP)
                            {
                                func002369(globaldef006144, "Any one of you know Mr Elusive?", globaldef005811, MOVETYPE_WALK);
                            }
                            else
                            {
                                if(globaldef006145 <= MOVETYPE_FLY)
                                {
                                    func002369(globaldef006144, "Lets go to another server", globaldef005812, MOVETYPE_WALK);
                                }
                                else
                                {
                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                    {
                                        func002370(globaldef006144, "Let's go and kill ", globaldef006147, globaldef005812, MOVETYPE_WALK);
                                    }
                                    else
                                    {
                                        
                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                        {
                                            func002371(globaldef006144, "Anyone know where ", globaldef006147, " is?", globaldef005811, MOVETYPE_STEP);
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(globaldef006146 == globaldef005817)
            {
                globaldef006145 = floor(globaldef006145 * SVC_FINALE);
                if(globaldef006145 <= FALSE)
                {
                    func002370(globaldef006144, globaldef006147, " is an illegal Quake camper", globaldef005812, MOVETYPE_WALK);
                }
                else
                {
                    if(globaldef006145 <= TRUE)
                    {
                        func002369(globaldef006144, "Suck my broomstick", globaldef005812, FL_SWIM);
                    }
                    else
                    {
                        if(globaldef006145 <= FL_SWIM)
                        {
                            func002369(globaldef006144, "Eat my pineapple", globaldef005812, FL_SWIM);
                        }
                        else
                        {
                            if(globaldef006145 <= MOVETYPE_WALK)
                            {
                                func002370(globaldef006144, globaldef006147, " is a camper", globaldef005812, MOVETYPE_WALK);
                            }
                            else
                            {
                                if(globaldef006145 <= MOVETYPE_STEP)
                                {
                                    func002369(globaldef006144, "Look! Nudie pics on the hard disk!!", globaldef005812, MOVETYPE_STEP);
                                }
                                else
                                {
                                    if(globaldef006145 <= MOVETYPE_FLY)
                                    {
                                        func002369(globaldef006144, "Formatting hard disk", globaldef005812, MOVETYPE_WALK);
                                    }
                                    else
                                    {
                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                        {
                                            func002369(globaldef006144, "kill all windows users", globaldef005812, MOVETYPE_WALK);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                            {
                                                func002369(globaldef006144, "I'm the best there is", globaldef005812, MOVETYPE_WALK);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= FL_CLIENT)
                                                {
                                                    func002369(globaldef006144, "what the !#@% am I doin' here?", globaldef005811, MOVETYPE_STEP);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                    {
                                                        func002369(globaldef006144, "Eat my pineapple", globaldef005812, FL_SWIM);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                        {
                                                            func002369(globaldef006144, "HeHe", globaldef005812, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                            {
                                                                func002369(globaldef006144, "eat my dust", globaldef005812, TRUE);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                {
                                                                    func002369(globaldef006144, "Hey, catch this rocket", globaldef005812, FALSE);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= BOTSHIRTPANTS_13)
                                                                    {
                                                                        func002369(globaldef006144, "Go get your mommie", globaldef005812, FL_SWIM);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= 14)
                                                                        {
                                                                            func002369(globaldef006144, "traitor!!!", globaldef005812, TRUE);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= GLOBALDEF748_15)
                                                                            {
                                                                                func002369(globaldef006144, "Lemme at ya", globaldef005812, FL_SWIM);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= FL_INWATER)
                                                                                {
                                                                                    func002369(globaldef006144, "Bill Gates is an alien", globaldef005812, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= 17)
                                                                                    {
                                                                                        func002369(globaldef006144, "my ping is better then my skill", globaldef005812, MOVETYPE_STEP);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= 18)
                                                                                        {
                                                                                            func002369(globaldef006144, "my ping is higher than my IQ", globaldef005812, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= 19)
                                                                                            {
                                                                                                func002369(globaldef006144, "HEHE", globaldef005812, TRUE);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= 20)
                                                                                                {
                                                                                                    func002369(globaldef006144, "I've got a lot of experience", globaldef005812, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= 21)
                                                                                                    {
                                                                                                        func002371(globaldef006144, "I vote ", globaldef006147, " as the camper of the day", globaldef005812, MOVETYPE_STEP);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= 22)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Omicron bots are the best", globaldef005812, FL_SWIM);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= SVC_TEMPENTITY)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Yabadabadooo!!", globaldef005812, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= OBOT_MAXBOTS)
                                                                                                                {
                                                                                                                    func002370(globaldef006144, globaldef006147, " your momma wears combat boots", globaldef005812, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= SVC_SIGNONNUM)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Anybody", globaldef005812, TRUE);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= SVC_CENTERPRINT)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "I hope this wraps up soon; Alf is on tonight", globaldef005812, MOVETYPE_STEP);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= SVC_KILLEDMONSTER)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "I wrote my own code", globaldef005812, FL_SWIM);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= SVC_FOUNDSECRET)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "Can someone turn the light on please ?", globaldef005812, MOVETYPE_WALK);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= 29)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "Gee, it's dark in here...", globaldef005812, MOVETYPE_WALK);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        
                                                                                                                                        if(globaldef006145 <= SVC_INTERMISSION)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "Far Out", globaldef005812, FL_SWIM);
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            else
            {
                
                if(globaldef006146 == globaldef005816)
                {
                    if(globaldef006144.field000286 == BOT23)
                    {
                        globaldef006145 = floor(globaldef006145 * FL_INWATER);
                        if(globaldef006145 <= FALSE)
                        {
                            func002370(globaldef006144, globaldef006147, " boch ghlchraj", globaldef005810, TRUE);
                        }
                        else
                        {
                            if(globaldef006145 <= TRUE)
                            {
                                func002369(globaldef006144, "tlhlngan Hol Dajatlh'a'", globaldef005811, TRUE);
                            }
                            else
                            {
                                if(globaldef006145 <= FL_SWIM)
                                {
                                    func002369(globaldef006144, "bortaS blr jablu'Dl'reH QaQqu'nay'", globaldef005812, FL_SWIM);
                                }
                                else
                                {
                                    if(globaldef006145 <= MOVETYPE_WALK)
                                    {
                                        func002370(globaldef006144, "majQa' ", globaldef006147, globaldef005815, FL_SWIM);
                                    }
                                    else
                                    {
                                        if(globaldef006145 <= MOVETYPE_STEP)
                                        {
                                            func002370(globaldef006144, "blmoHqu' ", globaldef006147, globaldef005810, FL_SWIM);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= MOVETYPE_FLY)
                                            {
                                                func002369(globaldef006144, "Duj tlvoqtaH", globaldef005812, FL_SWIM);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                {
                                                    func002369(globaldef006144, "bljeghbe'chugh vaj blHegh", globaldef005812, FL_SWIM);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                    {
                                                        func002370(globaldef006144, globaldef006147, " veQDuj 'oH Dujllj'e'", globaldef005810, FL_SWIM);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= FL_CLIENT)
                                                        {
                                                            func002370(globaldef006144, globaldef006147, " Hab SoSlI 'Quch!", globaldef005810, FL_SWIM);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                            {
                                                                func002370(globaldef006144, globaldef006147, " ghuy'cha", globaldef005810, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                {
                                                                    func002369(globaldef006144, "Verengan Ha'DIaH", globaldef005810, FL_SWIM);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                                    {
                                                                        func002370(globaldef006144, globaldef006147, " Qu'vath", globaldef005810, MOVETYPE_WALK);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                        {
                                                                            func002369(globaldef006144, "jlHtaHbogh naDev", globaldef005812, MOVETYPE_WALK);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= BOTSHIRTPANTS_13)
                                                                            {
                                                                                func002369(globaldef006144, "toH", globaldef005812, TRUE);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= 14)
                                                                                {
                                                                                    func002369(globaldef006144, "qay'be'", globaldef005812, TRUE);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006145 <= GLOBALDEF748_15)
                                                                                    {
                                                                                        func002370(globaldef006144, globaldef006147, " qaStaH nuq jay'", globaldef005811, MOVETYPE_WALK);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    else
                    {
                        if(globaldef006144.field000286 == BOT1)
                        {
                            globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                            if(globaldef006145 <= FALSE)
                            {
                                func002371(globaldef006144, "Hey ", globaldef006147, ", where is John Romero?", globaldef005811, MOVETYPE_STEP);
                            }
                            else
                            {
                                if(globaldef006145 <= TRUE)
                                {
                                    func002369(globaldef006144, "Did Tim Willits do this level?", globaldef005811, MOVETYPE_STEP);
                                }
                                else
                                {
                                    if(globaldef006145 <= FL_SWIM)
                                    {
                                        func002369(globaldef006144, "Why isn't the Quake CD in your drive, Huh?", globaldef005811, MOVETYPE_STEP);
                                    }
                                    else
                                    {
                                        if(globaldef006145 <= MOVETYPE_WALK)
                                        {
                                            func002369(globaldef006144, "Did you register this Quake copy?", globaldef005811, MOVETYPE_STEP);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= MOVETYPE_STEP)
                                            {
                                                func002369(globaldef006144, "These Omicron bots suck man!", globaldef005812, MOVETYPE_STEP);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                {
                                                    func002369(globaldef006144, "What are we waiting for? Christmas?", globaldef005812, MOVETYPE_STEP);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                    {
                                                        func002369(globaldef006144, "Hey! There are some bugs in this bot code!", globaldef005812, MOVETYPE_STEP);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                        {
                                                            func002369(globaldef006144, "Did I program this?", globaldef005812, FL_SWIM);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= FL_CLIENT)
                                                            {
                                                                func002369(globaldef006144, "This QuakeC *IS* half bad!!!", globaldef005812, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                {
                                                                    func002369(globaldef006144, "R U still playing quake while quake II is out?", globaldef005812, MOVETYPE_STEP);
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if(globaldef006144.field000286 == BOT2)
                            {
                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCEMISSILE);
                                if(globaldef006145 <= FALSE)
                                {
                                    func002369(globaldef006144, "640K ought to be enough for anybody", globaldef005812, MOVETYPE_STEP);
                                }
                                else
                                {
                                    if(globaldef006145 <= TRUE)
                                    {
                                        func002369(globaldef006144, "If you can't make it good, make it look good.", globaldef005812, MOVETYPE_STEP);
                                    }
                                    else
                                    {
                                        if(globaldef006145 <= FL_SWIM)
                                        {
                                            func002369(globaldef006144, "Internet Explorer is better than Netscape", globaldef005812, MOVETYPE_STEP);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= MOVETYPE_WALK)
                                            {
                                                func002369(globaldef006144, "MS Quake will soon be released", globaldef005812, MOVETYPE_STEP);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                {
                                                    func002369(globaldef006144, "Hey, your windows is pirated!", globaldef005812, MOVETYPE_WALK);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                    {
                                                        func002369(globaldef006144, "Anybody wanna buy my quake clone? ", globaldef005811, MOVETYPE_STEP);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                        {
                                                            func002369(globaldef006144, "Is it true that nobody likes me?", globaldef005811, MOVETYPE_STEP);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                            {
                                                                func002369(globaldef006144, "I've got more money than skill", globaldef005812, MOVETYPE_STEP);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= FL_CLIENT)
                                                                {
                                                                    func002369(globaldef006144, "if U can't beat 'em, buy 'em", globaldef005812, MOVETYPE_STEP);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                    {
                                                                        func002369(globaldef006144, "anybody got a dime to spare?", globaldef005812, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        
                                                                        if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                        {
                                                                            func002369(globaldef006144, "I hate SUN and JAVA(tm) sucks!!!", globaldef005812, MOVETYPE_STEP);
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                if(globaldef006144.field000286 == BOT3)
                                {
                                    globaldef006145 = floor(globaldef006145 * BOTSHIRTPANTS_13);
                                    if(globaldef006145 <= FALSE)
                                    {
                                        func002369(globaldef006144, "wanna laugh or wanna die?", globaldef005812, MOVETYPE_WALK);
                                    }
                                    else
                                    {
                                        if(globaldef006145 <= TRUE)
                                        {
                                            func002369(globaldef006144, "Weeee!", globaldef005812, FL_SWIM);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= FL_SWIM)
                                            {
                                                func002369(globaldef006144, "Let's play catch the rocket!", globaldef005812, MOVETYPE_WALK);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                {
                                                    func002369(globaldef006144, "When I'm bad I'm good", globaldef005812, MOVETYPE_WALK);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                    {
                                                        func002371(globaldef006144, "Hey, ", globaldef006147, " your shoelaces are undone", globaldef005812, MOVETYPE_STEP);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                        {
                                                            func002369(globaldef006144, "Eyerybody happy with Mr Slappy?", globaldef005812, MOVETYPE_WALK);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                            {
                                                                func002370(globaldef006144, globaldef006147, " you're gonna be gibbed real funny", globaldef005812, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                {
                                                                    func002369(globaldef006144, "who want's to be Mr gib?", globaldef005812, MOVETYPE_WALK);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                    {
                                                                        func002369(globaldef006144, "Mr Slappy is the new-age hero!", globaldef005812, MOVETYPE_WALK);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                        {
                                                                            func002369(globaldef006144, " =)", globaldef005812, TRUE);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                            {
                                                                                func002369(globaldef006144, " ;)", globaldef005812, TRUE);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                                                {
                                                                                    func002369(globaldef006144, "Let it fly", globaldef005812, FL_SWIM);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                                    {
                                                                                        func002369(globaldef006144, "A bull with a cleaver, huntin' for beaver", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                else
                                {
                                    if(globaldef006144.field000286 == BOT4)
                                    {
                                        globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                        if(globaldef006145 <= FALSE)
                                        {
                                            func002369(globaldef006144, "Don't mess with an Austrian", globaldef005812, MOVETYPE_WALK);
                                        }
                                        else
                                        {
                                            if(globaldef006145 <= TRUE)
                                            {
                                                func002369(globaldef006144, "Subject will be terminated", globaldef005812, MOVETYPE_WALK);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= FL_SWIM)
                                                {
                                                    func002369(globaldef006144, "no problemo", globaldef005812, FL_SWIM);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= MOVETYPE_WALK)
                                                    {
                                                        func002369(globaldef006144, "no way Jose", globaldef005812, FL_SWIM);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_STEP)
                                                        {
                                                            func002369(globaldef006144, "I am Awnald Swahtseneggah", globaldef005812, FALSE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_FLY)
                                                            {
                                                                func002369(globaldef006144, "I'm Austrian NOT Australian", globaldef005812, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                                {
                                                                    func002369(globaldef006144, "Smoke my cigahs", globaldef005812, FL_SWIM);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                                    {
                                                                        func002369(globaldef006144, "Did youh seeh Conan the Barbarian?", globaldef005812, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= FL_CLIENT)
                                                                        {
                                                                            func002369(globaldef006144, "Awnald for Presisdent!!", globaldef005812, FL_SWIM);
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                            if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                            {
                                                                                func002369(globaldef006144, "Achtung!!", globaldef005812, TRUE);
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        if(globaldef006144.field000286 == BOT5)
                                        {
                                            globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                            if(globaldef006145 <= FALSE)
                                            {
                                                func002369(globaldef006144, "pounce!", globaldef005812, TRUE);
                                            }
                                            else
                                            {
                                                if(globaldef006145 <= TRUE)
                                                {
                                                    func002369(globaldef006144, "a tigger is a wonderful thing!", globaldef005812, MOVETYPE_STEP);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= FL_SWIM)
                                                    {
                                                        func002369(globaldef006144, "Fighting is what tiggers do best", globaldef005812, MOVETYPE_STEP);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= MOVETYPE_WALK)
                                                        {
                                                            func002369(globaldef006144, "meauww", globaldef005812, TRUE);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_STEP)
                                                            {
                                                                func002369(globaldef006144, "double pounce!", globaldef005812, FL_SWIM);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                                {
                                                                    func002369(globaldef006144, "Roarrr!!!", globaldef005812, TRUE);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                                    {
                                                                        func002369(globaldef006144, "the tigger clan is a happy clan", globaldef005812, FL_SWIM);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                                        {
                                                                            func002369(globaldef006144, "A tigger has more stripes than a sergeant", globaldef005812, MOVETYPE_STEP);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= FL_CLIENT)
                                                                            {
                                                                                func002369(globaldef006144, "Who wants to play with tigger?", globaldef005812, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                
                                                                                if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                {
                                                                                    func002369(globaldef006144, "I'm a  lean, mean, fighting machine", globaldef005812, MOVETYPE_WALK);
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            if(globaldef006144.field000286 == BOT6)
                                            {
                                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                if(globaldef006145 <= FALSE)
                                                {
                                                    func002369(globaldef006144, "X-men are uncool", globaldef005812, FL_SWIM);
                                                }
                                                else
                                                {
                                                    if(globaldef006145 <= TRUE)
                                                    {
                                                        func002369(globaldef006144, "Anybody got any booze for me?", globaldef005811, MOVETYPE_WALK);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= FL_SWIM)
                                                        {
                                                            func002369(globaldef006144, "My real name is Tony Stark", globaldef005812, MOVETYPE_STEP);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= MOVETYPE_WALK)
                                                            {
                                                                func002369(globaldef006144, "Marvel comics rule", globaldef005812, MOVETYPE_STEP);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                                {
                                                                    func002369(globaldef006144, "I'm the best Bot around", globaldef005812, MOVETYPE_STEP);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                                    {
                                                                        func002370(globaldef006144, globaldef006147, " is a weenie sucker", globaldef005810, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                                        {
                                                                            func002369(globaldef006144, "shop smart... shop s-mart!", globaldef005812, MOVETYPE_WALK);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                                            {
                                                                                func002369(globaldef006144, "hail to the king, baby!", globaldef005812, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= FL_CLIENT)
                                                                                {
                                                                                    func002369(globaldef006144, "this is my boomstick!!", globaldef005812, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                    {
                                                                                        func002369(globaldef006144, "I'm not an ironing man, damnit!", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(globaldef006144.field000286 == BOT7)
                                                {
                                                    globaldef006145 = floor(globaldef006145 * 14);
                                                    if(globaldef006145 <= FALSE)
                                                    {
                                                        func002369(globaldef006144, "All humans are spineless bastards", globaldef005812, MOVETYPE_WALK);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006145 <= TRUE)
                                                        {
                                                            func002369(globaldef006144, "let's do capture the head", globaldef005812, MOVETYPE_WALK);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= FL_SWIM)
                                                            {
                                                                func002369(globaldef006144, "The door swings both ways my ass!", globaldef005812, MOVETYPE_STEP);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                                {
                                                                    func002369(globaldef006144, "I've got really cool movement code", globaldef005812, MOVETYPE_STEP);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                                    {
                                                                        func002369(globaldef006144, "Hey Dannyboy, no hero-stuff, ya understand?", globaldef005811, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                                        {
                                                                            func002369(globaldef006144, "I'm not from Barcelona", globaldef005812, MOVETYPE_WALK);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                                            {
                                                                                func002369(globaldef006144, "Is this the Alien TC??", globaldef005811, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                {
                                                                                    func002369(globaldef006144, "Why isn't this the Alien TC", globaldef005811, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                                    {
                                                                                        func002369(globaldef006144, "This must be the Alien TC; You're all aliens", globaldef005812, MOVETYPE_STEP);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                        {
                                                                                            func002369(globaldef006144, "people with guns make great trophies", globaldef005812, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                            {
                                                                                                func002369(globaldef006144, "motherfucker.....", globaldef005812, FL_SWIM);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                                                                {
                                                                                                    func002369(globaldef006144, "shit happens......", globaldef005812, FL_SWIM);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "take It!!", globaldef005812, FL_SWIM);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        
                                                                                                        if(globaldef006145 <= BOTSHIRTPANTS_13)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "wanna piece of candy?", globaldef005811, FL_SWIM);
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    if(globaldef006144.field000286 == BOT8)
                                                    {
                                                        globaldef006145 = floor(globaldef006145 * FL_CLIENT);
                                                        if(globaldef006145 <= FALSE)
                                                        {
                                                            func002369(globaldef006144, "anibodi know where the swemob is?", globaldef005811, MOVETYPE_STEP);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006145 <= TRUE)
                                                            {
                                                                func002369(globaldef006144, "Sweden rules", globaldef005812, MOVETYPE_WALK);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= FL_SWIM)
                                                                {
                                                                    func002370(globaldef006144, globaldef006147, ", Don't mess with da SWEMOB", globaldef005812, MOVETYPE_STEP);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= MOVETYPE_WALK)
                                                                    {
                                                                        func002370(globaldef006144, globaldef006147, ", you know da Borg; Bjorn Borg?", globaldef005811, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_STEP)
                                                                        {
                                                                            func002369(globaldef006144, "anibodi been to sweda?", globaldef005811, MOVETYPE_STEP);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_FLY)
                                                                            {
                                                                                func002369(globaldef006144, "Swedish Mob is still alive!!", globaldef005812, MOVETYPE_STEP);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                {
                                                                                    func002369(globaldef006144, "da borg is a good tenniser", globaldef005812, MOVETYPE_STEP);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                    {
                                                                                        func002369(globaldef006144, "Sweden has reindeer actually", globaldef005812, MOVETYPE_STEP);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006144.field000286 == BOT9)
                                                        {
                                                            globaldef006145 = floor(globaldef006145 * 14);
                                                            if(globaldef006145 <= FALSE)
                                                            {
                                                                func002369(globaldef006144, "cowabunga!", globaldef005812, TRUE);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006145 <= TRUE)
                                                                {
                                                                    func002369(globaldef006144, "I'm on a roll overhere!!", globaldef005812, MOVETYPE_WALK);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= FL_SWIM)
                                                                    {
                                                                        func002369(globaldef006144, "can somebody please play some music?", globaldef005811, MOVETYPE_WALK);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= MOVETYPE_WALK)
                                                                        {
                                                                            func002369(globaldef006144, "where are the babes then?", globaldef005811, MOVETYPE_WALK);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_STEP)
                                                                            {
                                                                                func002369(globaldef006144, "this place blows, dudes.", globaldef005812, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                                                {
                                                                                    func002369(globaldef006144, "where's the shredder dude?", globaldef005811, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                    {
                                                                                        func002369(globaldef006144, "It's Ninja, not hero turtles!!", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                        {
                                                                                            func002369(globaldef006144, "HUHUH...Cewl", globaldef005812, MOVETYPE_WALK);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= FL_CLIENT)
                                                                                            {
                                                                                                func002369(globaldef006144, "TNMT thrive on pizza, man", globaldef005812, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                {
                                                                                                    func002369(globaldef006144, "one pizza coming right up", globaldef005812, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Awlright, man, cowabunga supremo", globaldef005812, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Turtles rock bigtime", globaldef005812, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Sensei was wrong about diz place, dudes", globaldef005812, MOVETYPE_FLY);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                
                                                                                                                if(globaldef006145 <= BOTSHIRTPANTS_13)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Pizza, I dice it, I slice it", globaldef005812, FL_SWIM);
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006144.field000286 == BOT10)
                                                            {
                                                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                if(globaldef006145 <= FALSE)
                                                                {
                                                                    func002370(globaldef006144, "Pay my fare, ", globaldef006147, globaldef005812, FL_SWIM);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006145 <= TRUE)
                                                                    {
                                                                        func002369(globaldef006144, "Anybody wanna rocketjump??", globaldef005811, FL_SWIM);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= FL_SWIM)
                                                                        {
                                                                            func002369(globaldef006144, "call me a cab", globaldef005812, FL_SWIM);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= MOVETYPE_WALK)
                                                                            {
                                                                                func002370(globaldef006144, globaldef006147, " is a pansy", globaldef005810, FL_SWIM);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                                                {
                                                                                    func002370(globaldef006144, globaldef006147, " does not give any tips", globaldef005810, MOVETYPE_STEP);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                                                    {
                                                                                        func002369(globaldef006144, "Do I have 'Fool' written all over my forehead", globaldef005812, MOVETYPE_STEP);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                        {
                                                                                            func002369(globaldef006144, "NO! I don't have small change!", globaldef005812, FL_SWIM);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                            {
                                                                                                func002369(globaldef006144, "I'm on a Highway to Hell", globaldef005812, FL_SWIM);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= FL_CLIENT)
                                                                                                {
                                                                                                    func002369(globaldef006144, "Manjana, hombre", globaldef005812, FL_SWIM);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    
                                                                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Babe, requerdos a todos", globaldef005812, FL_SWIM);
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006144.field000286 == BOT11)
                                                                {
                                                                    globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                    if(globaldef006145 <= FALSE)
                                                                    {
                                                                        func002369(globaldef006144, "Anybody wanna use me ?", globaldef005811, MOVETYPE_STEP);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006145 <= TRUE)
                                                                        {
                                                                            func002369(globaldef006144, "Why aren't these bots on quakeworld", globaldef005811, MOVETYPE_STEP);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= FL_SWIM)
                                                                            {
                                                                                func002369(globaldef006144, "The name is GameSpy, actually", globaldef005812, MOVETYPE_STEP);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                                                {
                                                                                    func002370(globaldef006144, globaldef006147, " are you a nerd ?", globaldef005811, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                                                    {
                                                                                        func002369(globaldef006144, "Where is Qspy on your Hard Disk?", globaldef005811, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                                                        {
                                                                                            func002369(globaldef006144, "Anybody actually register me?", globaldef005811, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                            {
                                                                                                func002369(globaldef006144, "Good, bad... I'm the guy with the gun", globaldef005812, MOVETYPE_STEP);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                {
                                                                                                    func002370(globaldef006144, "This seems like a NERD spot, ", globaldef006147, globaldef005812, MOVETYPE_STEP);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Obots, so what?...are you happy now?", globaldef005812, MOVETYPE_STEP);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        
                                                                                                        if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "How come nerds play quake?", globaldef005811, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006144.field000286 == BOT12)
                                                                    {
                                                                        globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                        if(globaldef006145 <= FALSE)
                                                                        {
                                                                            func002369(globaldef006144, "How about Warcraft 4 a change?", globaldef005811, MOVETYPE_STEP);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006145 <= TRUE)
                                                                            {
                                                                                func002369(globaldef006144, "This quake stuff ain't half bad", globaldef005812, MOVETYPE_STEP);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= FL_SWIM)
                                                                                {
                                                                                    func002369(globaldef006144, "Anyone like the Spice Girls?", globaldef005811, MOVETYPE_STEP);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= MOVETYPE_WALK)
                                                                                    {
                                                                                        func002369(globaldef006144, "Anybody got tickets 4 the Spice Girls?", globaldef005811, MOVETYPE_STEP);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_STEP)
                                                                                        {
                                                                                            func002371(globaldef006144, "Did you forget to flush the toilet ", globaldef006147, "?", globaldef005811, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_FLY)
                                                                                            {
                                                                                                func002369(globaldef006144, "I put people on ice", globaldef005810, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                {
                                                                                                    func002369(globaldef006144, "Don't call me Mr Freeze", globaldef005812, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Awnald S. is Mr Freeze", globaldef005812, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= FL_CLIENT)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Who wants to be put on Ice then?", globaldef005810, MOVETYPE_WALK);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            
                                                                                                            if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "My skin is really cool", globaldef005812, FL_SWIM);
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006144.field000286 == BOT13)
                                                                        {
                                                                            globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCEMISSILE);
                                                                            if(globaldef006145 <= FALSE)
                                                                            {
                                                                                func002369(globaldef006144, "Gravity is a harsh mistress", globaldef005812, MOVETYPE_WALK);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006145 <= TRUE)
                                                                                {
                                                                                    func002370(globaldef006144, globaldef006147, ", Honk if you love justice", globaldef005812, MOVETYPE_FLY);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= FL_SWIM)
                                                                                    {
                                                                                        func002369(globaldef006144, "I'll be the judge of that!", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= MOVETYPE_WALK)
                                                                                        {
                                                                                            func002370(globaldef006144, globaldef006147, " Monkey from no-where!!!", globaldef005812, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_STEP)
                                                                                            {
                                                                                                func002369(globaldef006144, "Bad man hit dog with street", globaldef005812, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                {
                                                                                                    func002369(globaldef006144, "Unhand him, you sun-worshipping dog launchers!", globaldef005812, MOVETYPE_STEP);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Heh, heh. Those darn ninjas. They're wacky", globaldef005812, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "I'm doing the laundry", globaldef005812, FL_SWIM);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= FL_CLIENT)
                                                                                                            {
                                                                                                                func002370(globaldef006144, "What a master of disguise you are, ", globaldef006147, globaldef005812, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "SPOON!", globaldef005812, TRUE);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    
                                                                                                                    if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "That's a whole lotta' Aztecs", globaldef005812, MOVETYPE_WALK);
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006144.field000286 == BOT14)
                                                                            {
                                                                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCEMISSILE);
                                                                                if(globaldef006145 <= FALSE)
                                                                                {
                                                                                    func002369(globaldef006144, "Anybody seen John Carmack?", globaldef005812, MOVETYPE_WALK);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006145 <= TRUE)
                                                                                    {
                                                                                        func002369(globaldef006144, "Doomed, I'm Doomed", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= FL_SWIM)
                                                                                        {
                                                                                            func002369(globaldef006144, "Isn't this game just the Coolest", globaldef005812, MOVETYPE_STEP);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= MOVETYPE_WALK)
                                                                                            {
                                                                                                func002369(globaldef006144, "How do I use this thing? ", globaldef005811, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                {
                                                                                                    func002369(globaldef006144, "Rockets, I need Rockets", globaldef005812, MOVETYPE_STEP);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Pull the other one", globaldef005812, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Atmosphere..that's it!", globaldef005812, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Hmmm, unaligned textures", globaldef005812, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= FL_CLIENT)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Did I do this level?", globaldef005811, MOVETYPE_WALK);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Anyone for DungeonKeeper?", globaldef005811, MOVETYPE_STEP);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        
                                                                                                                        if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "There is a virus on your hard disk", globaldef005811, MOVETYPE_STEP);
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006144.field000286 == BOT15)
                                                                                {
                                                                                    globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCEMISSILE);
                                                                                    if(globaldef006145 <= FALSE)
                                                                                    {
                                                                                        func002369(globaldef006144, "See you all in hell", globaldef005812, MOVETYPE_WALK);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006145 <= TRUE)
                                                                                        {
                                                                                            func002369(globaldef006144, "Ukko, you dwarf, where are U?", globaldef005811, MOVETYPE_WALK);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= FL_SWIM)
                                                                                            {
                                                                                                func002369(globaldef006144, "Where has Ukko gone off to?", globaldef005811, MOVETYPE_WALK);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                {
                                                                                                    func002369(globaldef006144, "I need more Blood & Gore", globaldef005812, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Brainbiter and I make a good team", globaldef005812, FL_SWIM);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Come on baby light my fire!!!", globaldef005812, MOVETYPE_WALK);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "I am Slaine Mac Roth", globaldef005812, MOVETYPE_WALK);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "I feel a riastarthae coming up...", globaldef005812, MOVETYPE_WALK);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "BrainBiter should be all I need", globaldef005812, FL_SWIM);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        
                                                                                                                        if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                                        {
                                                                                                                            func002370(globaldef006144, globaldef006147, ", shall I go berserk?", globaldef005811, MOVETYPE_STEP);
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(globaldef006144.field000286 == BOT16)
                                                                                    {
                                                                                        globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                                        if(globaldef006145 <= FALSE)
                                                                                        {
                                                                                            func002369(globaldef006144, "I've got you are all surrounded", globaldef005812, MOVETYPE_WALK);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006145 <= TRUE)
                                                                                            {
                                                                                                func002370(globaldef006144, globaldef006147, ", Dead or alive, you're coming with me", globaldef005812, MOVETYPE_STEP);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= FL_SWIM)
                                                                                                {
                                                                                                    func002369(globaldef006144, "Come quietly or there will be trouble", globaldef005812, MOVETYPE_STEP);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                    {
                                                                                                        func002370(globaldef006144, globaldef006147, ", your move, creep", globaldef005812, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Thank you for NOT smoking", globaldef005812, MOVETYPE_WALK);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Keep the peace", globaldef005812, FL_SWIM);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Anyone got silverpolish 4 me?", globaldef005811, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Give up, I've got you completely surrounded", globaldef005812, MOVETYPE_STEP);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= FL_CLIENT)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "Offense #2, Shooting at an officer of the law,", globaldef005812, MOVETYPE_STEP);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            
                                                                                                                            if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                            {
                                                                                                                                func002370(globaldef006144, "Offense #1, Use of illegal fire-arms,", globaldef006147, globaldef005812, MOVETYPE_STEP);
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(globaldef006144.field000286 == BOT17)
                                                                                        {
                                                                                            globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                                            if(globaldef006145 <= FALSE)
                                                                                            {
                                                                                                func002369(globaldef006144, "Yeee-haw", globaldef005812, TRUE);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006145 <= TRUE)
                                                                                                {
                                                                                                    func002370(globaldef006144, globaldef006147, " is a yella-belly", globaldef005810, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= FL_SWIM)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "Giddap, y'all flea bitten, dust-bitin' varmit", globaldef005810, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "I'm the ruffest, tuffest gunslinger in the west", globaldef005812, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Rollin' Rollin' Rawhide!!!", globaldef005812, MOVETYPE_WALK);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Yer all dead", globaldef005812, MOVETYPE_WALK);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Yer all yella-bellies", globaldef005812, MOVETYPE_WALK);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                        {
                                                                                                                            func002370(globaldef006144, globaldef006147, ", this level ain't big enough for both of us", globaldef005812, MOVETYPE_FLY);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= FL_CLIENT)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "I'm a gunslinger, not a doctor.", globaldef005812, MOVETYPE_STEP);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                
                                                                                                                                if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                                {
                                                                                                                                    func002370(globaldef006144, "Your momma wear cowboy boots, ", globaldef006147, globaldef005812, MOVETYPE_STEP);
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(globaldef006144.field000286 == BOT18)
                                                                                            {
                                                                                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCEMISSILE);
                                                                                                if(globaldef006145 <= FALSE)
                                                                                                {
                                                                                                    func002369(globaldef006144, "I putta u oll on ice", globaldef005812, MOVETYPE_WALK);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006145 <= TRUE)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "u toucha mi, u die, capito?", globaldef005811, MOVETYPE_WALK);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= FL_SWIM)
                                                                                                        {
                                                                                                            func002370(globaldef006144, globaldef006147, ", U been ina da bigga ouse?", globaldef005811, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                            {
                                                                                                                func002370(globaldef006144, globaldef006147, ", U wanna wear di cementa shoes?", globaldef005811, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Anybodi lika Frank Sinatra?", globaldef005811, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Da winna getsa da pizza, capiche?", globaldef005812, MOVETYPE_STEP);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "Belisimo!", globaldef005812, TRUE);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                            {
                                                                                                                                func002370(globaldef006144, globaldef006147, " has a salami for a nose", globaldef005810, MOVETYPE_STEP);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= FL_CLIENT)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "Come get some!", globaldef005812, FL_SWIM);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    
                                                                                                                                    if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "Shaddapa ya face", globaldef005812, FL_SWIM);
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(globaldef006144.field000286 == BOT19)
                                                                                                {
                                                                                                    globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                                                    if(globaldef006145 <= FALSE)
                                                                                                    {
                                                                                                        func002369(globaldef006144, "This place hardly looks like back home", globaldef005812, MOVETYPE_STEP);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006145 <= TRUE)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "I'm not the actor from 'Down South'", globaldef005812, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= FL_SWIM)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "To protect and serve", globaldef005812, MOVETYPE_STEP);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "A moose once bit my sister", globaldef005812, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Where are the lumberjacks then?", globaldef005812, MOVETYPE_WALK);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "He's a lumberjack and he's ok...", globaldef005812, MOVETYPE_STEP);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "Has anyone seen my wolf?", globaldef005812, MOVETYPE_STEP);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "I need Canada Dry Ginger Ale...fast", globaldef005812, MOVETYPE_STEP);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "Whatever happens...Canadians rule!!!", globaldef005812, MOVETYPE_STEP);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        
                                                                                                                                        if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "Chocolate Moose anyone?", globaldef005811, MOVETYPE_STEP);
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(globaldef006144.field000286 == BOT20)
                                                                                                    {
                                                                                                        globaldef006145 = floor(globaldef006145 * GLOBALDEF748_15);
                                                                                                        if(globaldef006145 <= FALSE)
                                                                                                        {
                                                                                                            func002369(globaldef006144, "Men are such babies", globaldef005811, MOVETYPE_STEP);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006145 <= TRUE)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Anybody seen my eyeliner ?", globaldef005811, MOVETYPE_WALK);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= FL_SWIM)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "Which one of you boys wants it first?", globaldef005811, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Men are such pigs", globaldef005810, FL_SWIM);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "I feel like I wanna nail a man", globaldef005812, MOVETYPE_WALK);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "I'm gonna blow a man...UP", globaldef005812, MOVETYPE_WALK);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "Pinapple anyone?", globaldef005811, FL_SWIM);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "All men can kiss my broomstick", globaldef005812, MOVETYPE_WALK);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if(globaldef006145 <= FL_CLIENT)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "Eat me..suckers", globaldef005810, FL_SWIM);
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                                            {
                                                                                                                                                func002369(globaldef006144, "Look at what you can't have", globaldef005810, MOVETYPE_WALK);
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                if(globaldef006145 <= MOVETYPE_BOUNCE)
                                                                                                                                                {
                                                                                                                                                    func002369(globaldef006144, "I hate Quake nerds", globaldef005810, FL_SWIM);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    if(globaldef006145 <= MOVETYPE_BOUNCEMISSILE)
                                                                                                                                                    {
                                                                                                                                                        func002370(globaldef006144, globaldef006147, ", you can't get it up, babe", globaldef005810, MOVETYPE_WALK);
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        if(globaldef006145 <= BOTSHIRTPANTS_12)
                                                                                                                                                        {
                                                                                                                                                            func002371(globaldef006144, "My, ", globaldef006147, " what a small broomstick you have", globaldef005810, MOVETYPE_STEP);
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            if(globaldef006145 <= BOTSHIRTPANTS_13)
                                                                                                                                                            {
                                                                                                                                                                func002369(globaldef006144, "I'm the queen of the hill", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                
                                                                                                                                                                if(globaldef006145 <= 14)
                                                                                                                                                                {
                                                                                                                                                                    func002369(globaldef006144, "Lara Croft, meet your match", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(globaldef006144.field000286 == BOT21)
                                                                                                        {
                                                                                                            globaldef006145 = floor(globaldef006145 * MOVETYPE_FLYMISSILE);
                                                                                                            if(globaldef006145 <= FALSE)
                                                                                                            {
                                                                                                                func002369(globaldef006144, "Punishment due", globaldef005812, TRUE);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(globaldef006145 <= TRUE)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "I'm gonna deal out some heavy punishment", globaldef005812, MOVETYPE_STEP);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= FL_SWIM)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Have you been punished lately?", globaldef005811, MOVETYPE_WALK);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "My suit is prettier than Batman's", globaldef005812, MOVETYPE_WALK);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "I'm cuter than that bat eared playboy", globaldef005812, MOVETYPE_STEP);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "I hear Quake 2 really rocks!!", globaldef005812, MOVETYPE_STEP);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                                    {
                                                                                                                                        func002370(globaldef006144, globaldef006147, " is a sunday school wimp!", globaldef005810, MOVETYPE_STEP);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "you bunch of spammers", globaldef005812, FL_SWIM);
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            
                                                                                                                                            if(globaldef006145 <= FL_CLIENT)
                                                                                                                                            {
                                                                                                                                                func002369(globaldef006144, "Chicks dig the muscles", globaldef005812, MOVETYPE_STEP);
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(globaldef006144.field000286 == BOT22)
                                                                                                            {
                                                                                                                globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                                                                if(globaldef006145 <= FALSE)
                                                                                                                {
                                                                                                                    func002369(globaldef006144, "I'm the King", globaldef005812, MOVETYPE_WALK);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(globaldef006145 <= TRUE)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "Thank y'all vary much", globaldef005812, MOVETYPE_WALK);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= FL_SWIM)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "The king is still alaive", globaldef005812, MOVETYPE_WALK);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "Shall I sing a song?", globaldef005812, MOVETYPE_WALK);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "Yeah!!", globaldef005812, TRUE);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "Do ya'll want my autograph?", globaldef005812, MOVETYPE_WALK);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "I'm a singer, not a gibber!", globaldef005812, MOVETYPE_WALK);
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                                            {
                                                                                                                                                func002369(globaldef006144, "Where is the mike?", globaldef005812, FL_SWIM);
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                if(globaldef006145 <= FL_CLIENT)
                                                                                                                                                {
                                                                                                                                                    func002370(globaldef006144, globaldef006147, " it's Mr Presley to you, son", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    
                                                                                                                                                    if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                                                    {
                                                                                                                                                        func002369(globaldef006144, "u-HUH-huh, u-HUH-huh, yeah-yeah-YEAH!", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                
                                                                                                                if(globaldef006144.field000286 == BOT0)
                                                                                                                {
                                                                                                                    globaldef006145 = floor(globaldef006145 * MOVETYPE_BOUNCE);
                                                                                                                    if(globaldef006145 <= FALSE)
                                                                                                                    {
                                                                                                                        func002369(globaldef006144, "errare est humanum", globaldef005812, FL_SWIM);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(globaldef006145 <= TRUE)
                                                                                                                        {
                                                                                                                            func002369(globaldef006144, "exitus acta probat", globaldef005812, MOVETYPE_WALK);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(globaldef006145 <= FL_SWIM)
                                                                                                                            {
                                                                                                                                func002369(globaldef006144, "hodie mihi, cras tibi", globaldef005812, FL_SWIM);
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(globaldef006145 <= MOVETYPE_WALK)
                                                                                                                                {
                                                                                                                                    func002369(globaldef006144, "facta non verba", globaldef005812, FL_SWIM);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(globaldef006145 <= MOVETYPE_STEP)
                                                                                                                                    {
                                                                                                                                        func002369(globaldef006144, "aut vincere aut mori", globaldef005810, MOVETYPE_WALK);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if(globaldef006145 <= MOVETYPE_FLY)
                                                                                                                                        {
                                                                                                                                            func002369(globaldef006144, "Cogito, ergo sum", globaldef005812, FL_SWIM);
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            if(globaldef006145 <= MOVETYPE_TOSS)
                                                                                                                                            {
                                                                                                                                                func002369(globaldef006144, "Omicron optimus maximus", globaldef005811, MOVETYPE_WALK);
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                if(globaldef006145 <= MOVETYPE_PUSH)
                                                                                                                                                {
                                                                                                                                                    func002369(globaldef006144, "proh pudor!", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    if(globaldef006145 <= FL_CLIENT)
                                                                                                                                                    {
                                                                                                                                                        func002369(globaldef006144, "aut Omicron Bots aut nullus", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        
                                                                                                                                                        if(globaldef006145 <= MOVETYPE_FLYMISSILE)
                                                                                                                                                        {
                                                                                                                                                            func002369(globaldef006144, "aut Vincere aut Mori", globaldef005812, MOVETYPE_WALK);
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// BotChooseTelefragMessage
// function begins at statement 33777, parm_start=18365
// OP_CALL0	457	0	0
// OP_STORE_F	1	18366	0
// OP_MUL_F	18366	217	18367
// OP_STORE_V	18367	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	18366	0
// OP_LE	18366	213	18368
// OP_IFNOT	18368	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18369	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	18366	214	18370
// OP_IFNOT	18370	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18371	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	18366	216	18372
// OP_IFNOT	18372	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18373	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	18366	228	18374
// OP_IFNOT	18374	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18375	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	18366	229	18376
// OP_IFNOT	18376	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18377	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	18366	230	18378
// OP_IFNOT	18378	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18379	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	18366	231	18380
// OP_IFNOT	18380	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18381	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	18366	232	18382
// OP_IFNOT	18382	6	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18383	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity globaldef006464) BotChooseTelefragMessage = 
{
    local float globaldef006465;
    globaldef006465 = random();
    globaldef006465 = floor(globaldef006465 * FL_CLIENT);
    if(globaldef006465 <= FALSE)
    {
        func002369(globaldef006464, "smooth", globaldef005812, FALSE);
    }
    else
    {
        if(globaldef006465 <= TRUE)
        {
            func002369(globaldef006464, "Whack! right in the kisser", globaldef005812, FALSE);
        }
        else
        {
            if(globaldef006465 <= FL_SWIM)
            {
                func002369(globaldef006464, "SPAM!!!", globaldef005812, FALSE);
            }
            else
            {
                if(globaldef006465 <= MOVETYPE_WALK)
                {
                    func002369(globaldef006464, "does it hurt?", globaldef005812, FALSE);
                }
                else
                {
                    if(globaldef006465 <= MOVETYPE_STEP)
                    {
                        func002369(globaldef006464, ":)", globaldef005812, FALSE);
                    }
                    else
                    {
                        if(globaldef006465 <= MOVETYPE_FLY)
                        {
                            func002369(globaldef006464, "ultimate kill", globaldef005812, FALSE);
                        }
                        else
                        {
                            if(globaldef006465 <= MOVETYPE_TOSS)
                            {
                                func002369(globaldef006464, "wow", globaldef005812, FALSE);
                            }
                            else
                            {
                                
                                if(globaldef006465 <= MOVETYPE_PUSH)
                                {
                                    func002369(globaldef006464, "ding!", globaldef005812, FALSE);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002286
// function begins at statement 33847, parm_start=18384
// OP_CALL0	457	0	0
// OP_STORE_F	1	18385	0
// OP_MUL_F	18385	12465	18386
// OP_STORE_V	18386	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	18385	0
// OP_LE	18385	213	18387
// OP_IFNOT	18387	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18388	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	140	0	0
// OP_LE	18385	214	18389
// OP_IFNOT	18389	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18390	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	133	0	0
// OP_LE	18385	216	18391
// OP_IFNOT	18391	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18392	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	126	0	0
// OP_LE	18385	228	18393
// OP_IFNOT	18393	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18394	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	119	0	0
// OP_LE	18385	229	18395
// OP_IFNOT	18395	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18396	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	112	0	0
// OP_LE	18385	230	18397
// OP_IFNOT	18397	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18398	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	105	0	0
// OP_LE	18385	231	18399
// OP_IFNOT	18399	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18400	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	98	0	0
// OP_LE	18385	232	18401
// OP_IFNOT	18401	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18402	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	91	0	0
// OP_LE	18385	217	18403
// OP_IFNOT	18403	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18404	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	84	0	0
// OP_LE	18385	234	18405
// OP_IFNOT	18405	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18406	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	77	0	0
// OP_LE	18385	235	18407
// OP_IFNOT	18407	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18408	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	70	0	0
// OP_LE	18385	236	18409
// OP_IFNOT	18409	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18377	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	63	0	0
// OP_LE	18385	791	18410
// OP_IFNOT	18410	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18381	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	56	0	0
// OP_LE	18385	792	18411
// OP_IFNOT	18411	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18412	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	49	0	0
// OP_LE	18385	5693	18413
// OP_IFNOT	18413	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18414	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	42	0	0
// OP_LE	18385	765	18415
// OP_IFNOT	18415	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18416	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	35	0	0
// OP_LE	18385	218	18417
// OP_IFNOT	18417	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18418	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	28	0	0
// OP_LE	18385	6892	18419
// OP_IFNOT	18419	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18420	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	21	0	0
// OP_LE	18385	6133	18421
// OP_IFNOT	18421	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18422	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	14	0	0
// OP_LE	18385	6895	18423
// OP_IFNOT	18423	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18424	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	7	0	0
// OP_LE	18385	2323	18425
// OP_IFNOT	18425	5	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18426	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_DONE	0	0	0
void (entity globaldef006474) func002286 = 
{
    local float globaldef006475;
    globaldef006475 = random();
    globaldef006475 = floor(globaldef006475 * 21);
    if(globaldef006475 <= FALSE)
    {
        func002366(globaldef006474, "hihi", globaldef005812);
    }
    else
    {
        if(globaldef006475 <= TRUE)
        {
            func002366(globaldef006474, "hehe", globaldef005812);
        }
        else
        {
            if(globaldef006475 <= FL_SWIM)
            {
                func002366(globaldef006474, "hahaha", globaldef005812);
            }
            else
            {
                if(globaldef006475 <= MOVETYPE_WALK)
                {
                    func002366(globaldef006474, "I'll put you in backpack mode", globaldef005812);
                }
                else
                {
                    if(globaldef006475 <= MOVETYPE_STEP)
                    {
                        func002366(globaldef006474, "you're boring", globaldef005812);
                    }
                    else
                    {
                        if(globaldef006475 <= MOVETYPE_FLY)
                        {
                            func002366(globaldef006474, "you really suck at quake", globaldef005812);
                        }
                        else
                        {
                            if(globaldef006475 <= MOVETYPE_TOSS)
                            {
                                func002366(globaldef006474, "let's rock", globaldef005812);
                            }
                            else
                            {
                                if(globaldef006475 <= MOVETYPE_PUSH)
                                {
                                    func002366(globaldef006474, "whoa!!", globaldef005812);
                                }
                                else
                                {
                                    if(globaldef006475 <= FL_CLIENT)
                                    {
                                        func002366(globaldef006474, "let's play another game", globaldef005812);
                                    }
                                    else
                                    {
                                        if(globaldef006475 <= MOVETYPE_FLYMISSILE)
                                        {
                                            func002366(globaldef006474, "I've had it for today", globaldef005812);
                                        }
                                        else
                                        {
                                            if(globaldef006475 <= MOVETYPE_BOUNCE)
                                            {
                                                func002366(globaldef006474, "DUH!!!", globaldef005812);
                                            }
                                            else
                                            {
                                                if(globaldef006475 <= MOVETYPE_BOUNCEMISSILE)
                                                {
                                                    func002366(globaldef006474, ":)", globaldef005812);
                                                }
                                                else
                                                {
                                                    if(globaldef006475 <= BOTSHIRTPANTS_12)
                                                    {
                                                        func002366(globaldef006474, "wow", globaldef005812);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006475 <= BOTSHIRTPANTS_13)
                                                        {
                                                            func002366(globaldef006474, "weeeee", globaldef005812);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006475 <= 14)
                                                            {
                                                                func002366(globaldef006474, "I'm on a roll", globaldef005812);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006475 <= GLOBALDEF748_15)
                                                                {
                                                                    func002366(globaldef006474, "this rocks", globaldef005812);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006475 <= FL_INWATER)
                                                                    {
                                                                        func002366(globaldef006474, "aaah", globaldef005812);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006475 <= 17)
                                                                        {
                                                                            func002366(globaldef006474, "groovy", globaldef005812);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006475 <= 18)
                                                                            {
                                                                                func002366(globaldef006474, "grrrrr", globaldef005812);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006475 <= 19)
                                                                                {
                                                                                    func002366(globaldef006474, "!!", globaldef005812);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006475 <= 20)
                                                                                    {
                                                                                        func002366(globaldef006474, "nice!", globaldef005812);
                                                                                    }
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

