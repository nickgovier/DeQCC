entity ;
void() W_SetCurrentAmmo;
void() SUB_regen;
// SUB_regen
// function begins at statement 1694
// OP_ADDRESS	28	130	1802
// OP_LOAD_S	28	394	1803
// OP_STOREP_S	1803	1802	0
// OP_ADDRESS	28	104	1804
// OP_STOREP_F	238	1804	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1805	10	0
// OP_STORE_V	368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	1806
// OP_STORE_V	28	4	0
// OP_STORE_V	1806	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () SUB_regen =
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", AS_STRAIGHT, ATTN_NORM);
    setorigin(self, self.origin);
};

vector ;
void() noclass;
// noclass
// function begins at statement 1710
// OP_STORE_V	1810	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	1811
// OP_STORE_V	1811	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	1814	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () noclass =
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};

string IMMEDIATE = "\n";
void() PlaceItem;
// PlaceItem
// function begins at statement 1722
// OP_ADDRESS	28	394	1817
// OP_LOAD_S	28	130	1818
// OP_STOREP_S	1818	1817	0
// OP_ADDRESS	28	182	1819
// OP_STOREP_F	222	1819	0
// OP_ADDRESS	28	104	1820
// OP_STOREP_F	238	1820	0
// OP_ADDRESS	28	103	1821
// OP_STOREP_F	231	1821	0
// OP_ADDRESS	28	113	1822
// OP_STOREP_V	286	1822	0
// OP_ADDRESS	28	108	1825
// OP_LOAD_F	28	108	1826
// OP_ADD_F	1826	314	1827
// OP_STOREP_F	1827	1825	0
// OP_LOAD_F	28	108	1828
// OP_STORE_F	1828	1816	0
// OP_CALL0	478	0	0
// OP_NOT_F	1	0	1829
// OP_IFNOT	1829	13	0
// OP_STORE_V	1830	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	1831
// OP_STORE_V	1831	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	1814	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () PlaceItem =
{
    local float oldz;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_TOSS;
    self.velocity = VEC_ORIGIN;
    self.origin_z = self.origin_z + TE_LIGHTNING2;
    oldz = self.origin_z;
    
    if(!droptofloor())
    {
        dprint("Bonus item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
        return; /* TODO retvalue? */
    }
    
};

vector ;
void() StartItem;
// StartItem
// function begins at statement 1755
// OP_ADDRESS	28	150	1835
// OP_ADD_F	31	836	1836
// OP_STOREP_F	1836	1835	0
// OP_ADDRESS	28	148	1837
// OP_STOREP_FNC	1815	1837	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () StartItem =
{
    self.nextthink = time + 0.200;
    self.think = PlaceItem;
};

/* TYPE: EV_POINTER */ ;
// T_Heal
// function begins at statement 1761
// OP_LOAD_F	1838	152	1841
// OP_LE	1841	337	1842
// OP_IFNOT	1842	2	0
// OP_RETURN	337	0	0
// OP_NOT_F	1840	0	1843
// OP_LOAD_F	1838	152	1844
// OP_LOAD_F	29	185	1845
// OP_GE	1844	1845	1846
// OP_AND	1843	1846	1847
// OP_IFNOT	1847	2	0
// OP_RETURN	337	0	0
// OP_STORE_V	1839	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	1	1839	0
// OP_ADDRESS	1838	152	1848
// OP_LOAD_F	1838	152	1849
// OP_ADD_F	1849	1839	1850
// OP_STOREP_F	1850	1848	0
// OP_NOT_F	1840	0	1851
// OP_LOAD_F	1838	152	1852
// OP_LOAD_F	29	185	1853
// OP_GE	1852	1853	1854
// OP_AND	1851	1854	1855
// OP_IFNOT	1855	4	0
// OP_ADDRESS	1838	152	1856
// OP_LOAD_F	29	185	1857
// OP_STOREP_F	1857	1856	0
// OP_LOAD_F	1838	152	1858
// OP_GT	1858	1859	1860
// OP_IFNOT	1860	3	0
// OP_ADDRESS	1838	152	1861
// OP_STOREP_F	1859	1861	0
// OP_RETURN	368	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% (entity e, float healamount, float ignore) T_Heal =
{
    
    if(e.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(!ignore && (e.health >= other.max_health))
    {
        return; /* TODO retvalue? */
    }
    
    healamount = ceil(healamount);
    e.health = e.health + healamount;
    
    if(!ignore && (e.health >= other.max_health))
    {
        e.health = other.max_health;
    }
    
    
    if(e.health > 250.000)
    {
        e.health = 250.000;
    }
    
    return; /* TODO retvalue? */
};

/* TYPE: EV_POINTER */ ;
float H_ROTTEN = 1.000;
float H_MEGA = 2.000;
.float healamount;
.float healtype;
void() health_touch;
void() item_megahealth_rot;
void() item_health;
// item_health
// function begins at statement 1795
// OP_ADDRESS	28	146	1869
// OP_STOREP_FNC	1866	1869	0
// OP_LOAD_F	28	195	1870
// OP_BITAND	1870	1862	1871
// OP_IFNOT	1871	15	0
// OP_STORE_V	1872	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1873	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1872	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	1874
// OP_STOREP_S	1873	1874	0
// OP_ADDRESS	28	1864	1875
// OP_STOREP_F	1876	1875	0
// OP_ADDRESS	28	1865	1877
// OP_STOREP_F	337	1877	0
// OP_GOTO	31	0	0
// OP_LOAD_F	28	195	1878
// OP_BITAND	1878	1863	1879
// OP_IFNOT	1879	15	0
// OP_STORE_V	1880	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1881	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1880	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	1882
// OP_STOREP_S	1881	1882	0
// OP_ADDRESS	28	1864	1883
// OP_STOREP_F	1884	1883	0
// OP_ADDRESS	28	1865	1885
// OP_STOREP_F	1863	1885	0
// OP_GOTO	14	0	0
// OP_STORE_V	1886	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1887	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1886	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	208	1888
// OP_STOREP_S	1887	1888	0
// OP_ADDRESS	28	1864	1889
// OP_STOREP_F	1890	1889	0
// OP_ADDRESS	28	1865	1891
// OP_STOREP_F	1862	1891	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_health =
{
    self.touch = health_touch;
    if(self.spawnflags & H_ROTTEN)
    {
        precache_model("maps/b_bh10.bsp");
        precache_sound("items/r_item1.wav");
        setmodel(self, "maps/b_bh10.bsp");
        self.noise = "items/r_item1.wav";
        self.healamount = 15.000;
        self.healtype = MSG_BROADCAST;
    }
    else    
    {
        if(self.spawnflags & H_MEGA)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = 100.000;
            self.healtype = H_MEGA;
        }
        else        
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = 25.000;
            self.healtype = H_ROTTEN;
        }
        
    }
    
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

vector IMMEDIATE = '32.000 32.000 56.000';
// health_touch
// function begins at statement 1850
// OP_LOAD_S	29	129	1897
// OP_NE_S	1897	712	1898
// OP_IFNOT	1898	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	1865	1899
// OP_EQ_F	1899	1863	1900
// OP_IFNOT	1900	14	0
// OP_LOAD_F	29	152	1901
// OP_GE	1901	1859	1902
// OP_IFNOT	1902	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	1864	1903
// OP_STORE_V	29	4	0
// OP_STORE_V	1903	7	0
// OP_STORE_V	1862	10	0
// OP_CALL3	521	0	0
// OP_NOT_F	1	0	1904
// OP_IFNOT	1904	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	1864	1905
// OP_STORE_V	29	4	0
// OP_STORE_V	1905	7	0
// OP_STORE_V	337	10	0
// OP_CALL3	521	0	0
// OP_NOT_F	1	0	1906
// OP_IFNOT	1906	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1907	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	1864	1908
// OP_STORE_V	1908	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	1896	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1896	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1909	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	208	1910
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1910	10	0
// OP_STORE_V	1862	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	130	1912
// OP_STOREP_S	343	1912	0
// OP_ADDRESS	28	104	1913
// OP_STOREP_F	237	1913	0
// OP_LOAD_F	28	1865	1914
// OP_EQ_F	1914	1863	1915
// OP_IFNOT	1915	13	0
// OP_ADDRESS	29	162	1916
// OP_LOAD_F	29	162	1917
// OP_BITOR	1917	269	1918
// OP_STOREP_F	1918	1916	0
// OP_ADDRESS	28	150	1919
// OP_ADD_F	31	313	1920
// OP_STOREP_F	1920	1919	0
// OP_ADDRESS	28	148	1921
// OP_STOREP_FNC	1867	1921	0
// OP_ADDRESS	28	201	1922
// OP_STOREP_ENT	29	1922	0
// OP_GOTO	9	0	0
// OP_NE_F	35	1863	1923
// OP_IFNOT	1923	7	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	1924
// OP_ADD_F	31	894	1925
// OP_STOREP_F	1925	1924	0
// OP_ADDRESS	28	148	1926
// OP_STOREP_FNC	1801	1926	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () health_touch =
{
    local float amount;
    local string s;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    if(self.healtype == H_MEGA)
    {
        
        if(other.health >= 250.000)
        {
            return; /* TODO retvalue? */
        }
        
        
        if(!T_Heal(other, self.healamount, H_ROTTEN))
        {
            return; /* TODO retvalue? */
        }
        
    }
    else    
    {
        
        if(!T_Heal(other, self.healamount, MSG_BROADCAST))
        {
            return; /* TODO retvalue? */
        }
        
    }
    
    sprint(other, "You receive ");
    s = ftos(self.healamount);
    sprint(other, s);
    sprint(other, " health\n");
    sound(other, CHAN_ITEM, self.noise, H_ROTTEN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == H_MEGA)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + TE_LIGHTNING1;
        self.think = item_megahealth_rot;
        self.owner = other;
    }
    else    
 if(deathmatch != H_MEGA)
    {
        
        if(deathmatch)
        {
            self.nextthink = time + 20.000;
        }
        
        self.think = SUB_regen;
    }
    
    activator = other;
    SUB_UseTargets();
};

/* TYPE: EV_POINTER */ ;
// item_megahealth_rot
// function begins at statement 1931
// OP_LOAD_ENT	28	201	1927
// OP_STORE_ENT	1927	29	0
// OP_LOAD_F	29	152	1928
// OP_LOAD_F	29	185	1929
// OP_GT	1928	1929	1930
// OP_IFNOT	1930	9	0
// OP_ADDRESS	29	152	1931
// OP_LOAD_F	29	152	1932
// OP_SUB_F	1932	1862	1933
// OP_STOREP_F	1933	1931	0
// OP_ADDRESS	28	150	1934
// OP_ADD_F	31	1862	1935
// OP_STOREP_F	1935	1934	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	1936
// OP_LOAD_F	29	162	1937
// OP_LOAD_F	29	162	1938
// OP_BITAND	1938	269	1939
// OP_SUB_F	1937	1939	1940
// OP_STOREP_F	1940	1936	0
// OP_EQ_F	35	1862	1941
// OP_IFNOT	1941	6	0
// OP_ADDRESS	28	150	1942
// OP_ADD_F	31	894	1943
// OP_STOREP_F	1943	1942	0
// OP_ADDRESS	28	148	1944
// OP_STOREP_FNC	1801	1944	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_megahealth_rot =
{
    other = self.owner;
    
    if(other.health > other.max_health)
    {
        other.health = other.health - H_ROTTEN;
        self.nextthink = time + H_ROTTEN;
        return; /* TODO retvalue? */
    }
    
    other.items = other.items - (other.items & IT_SUPERHEALTH);
    
    if(deathmatch == H_ROTTEN)
    {
        self.nextthink = time + 20.000;
        self.think = SUB_regen;
    }
    
};

/* TYPE: EV_POINTER */ ;
void() armor_touch;
// armor_touch
// function begins at statement 1959
// OP_LOAD_F	29	152	1949
// OP_LE	1949	337	1950
// OP_IFNOT	1950	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	1951
// OP_NE_S	1951	712	1952
// OP_IFNOT	1952	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	1953
// OP_EQ_S	1953	1954	1955
// OP_IFNOT	1955	4	0
// OP_STORE_F	987	1946	0
// OP_STORE_F	1884	1947	0
// OP_STORE_F	266	1948	0
// OP_LOAD_S	28	129	1956
// OP_EQ_S	1956	1957	1958
// OP_IFNOT	1958	4	0
// OP_STORE_F	1959	1946	0
// OP_STORE_F	1960	1947	0
// OP_STORE_F	267	1948	0
// OP_LOAD_S	28	129	1961
// OP_EQ_S	1961	1962	1963
// OP_IFNOT	1963	4	0
// OP_STORE_F	1964	1946	0
// OP_STORE_F	1965	1947	0
// OP_STORE_F	268	1948	0
// OP_LOAD_F	29	187	1966
// OP_LOAD_F	29	188	1967
// OP_MUL_F	1966	1967	1968
// OP_MUL_F	1946	1947	1969
// OP_GE	1968	1969	1970
// OP_IFNOT	1970	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	1971
// OP_STOREP_F	1946	1971	0
// OP_ADDRESS	29	188	1972
// OP_STOREP_F	1947	1972	0
// OP_ADDRESS	29	162	1973
// OP_LOAD_F	29	162	1974
// OP_LOAD_F	29	162	1975
// OP_BITOR	266	267	1976
// OP_BITOR	1976	268	1977
// OP_BITAND	1975	1977	1978
// OP_SUB_F	1974	1978	1979
// OP_ADD_F	1979	1948	1980
// OP_STOREP_F	1980	1973	0
// OP_ADDRESS	28	104	1981
// OP_STOREP_F	237	1981	0
// OP_ADDRESS	28	130	1982
// OP_STOREP_S	343	1982	0
// OP_EQ_F	35	1862	1983
// OP_IFNOT	1983	4	0
// OP_ADDRESS	28	150	1984
// OP_ADD_F	31	894	1985
// OP_STOREP_F	1985	1984	0
// OP_ADDRESS	28	148	1986
// OP_STOREP_FNC	1801	1986	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1987	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1988	10	0
// OP_STORE_V	1862	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () armor_touch =
{
    local float type;
    local float value;
    local float bit;
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(self.classname == "item_armor1")
    {
        type = 0.300;
        value = 100.000;
        bit = IT_ARMOR1;
    }
    
    
    if(self.classname == "item_armor2")
    {
        type = 0.600;
        value = 150.000;
        bit = IT_ARMOR2;
    }
    
    
    if(self.classname == "item_armorInv")
    {
        type = 0.800;
        value = 200.000;
        bit = IT_ARMOR3;
    }
    
    
    if((other.armortype * other.armorvalue) >= (type * value))
    {
        return; /* TODO retvalue? */
    }
    
    other.armortype = type;
    other.armorvalue = value;
    other.items = (other.items - (other.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + bit;
    self.solid = SOLID_NOT;
    self.model = string_null;
    
    if(deathmatch == H_ROTTEN)
    {
        self.nextthink = time + 20.000;
    }
    
    self.think = SUB_regen;
    sprint(other, "You got armor\n");
    sound(other, CHAN_ITEM, "items/armor1.wav", H_ROTTEN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    activator = other;
    SUB_UseTargets();
};

string IMMEDIATE = "items/armor1.wav";
void() item_armor1;
// item_armor1
// function begins at statement 2031
// OP_ADDRESS	28	146	1990
// OP_STOREP_FNC	1945	1990	0
// OP_STORE_V	1991	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1991	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	1992
// OP_STOREP_F	337	1992	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_armor1 =
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = MSG_BROADCAST;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

vector IMMEDIATE = '16.000 16.000 56.000';
void() item_armor2;
// item_armor2
// function begins at statement 2046
// OP_ADDRESS	28	146	2000
// OP_STOREP_FNC	1945	2000	0
// OP_STORE_V	1991	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1991	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	2001
// OP_STOREP_F	1862	2001	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_armor2 =
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = H_ROTTEN;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() item_armorInv;
// item_armorInv
// function begins at statement 2061
// OP_ADDRESS	28	146	2003
// OP_STOREP_FNC	1945	2003	0
// OP_STORE_V	1991	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1991	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	132	2004
// OP_STOREP_F	1863	2004	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_armorInv =
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = H_MEGA;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() bound_other_ammo;
// bound_other_ammo
// function begins at statement 2076
// OP_LOAD_F	29	158	2006
// OP_GT	2006	1884	2007
// OP_IFNOT	2007	3	0
// OP_ADDRESS	29	158	2008
// OP_STOREP_F	1884	2008	0
// OP_LOAD_F	29	159	2009
// OP_GT	2009	1965	2010
// OP_IFNOT	2010	3	0
// OP_ADDRESS	29	159	2011
// OP_STOREP_F	1965	2011	0
// OP_LOAD_F	29	160	2012
// OP_GT	2012	1884	2013
// OP_IFNOT	2013	3	0
// OP_ADDRESS	29	160	2014
// OP_STOREP_F	1884	2014	0
// OP_LOAD_F	29	161	2015
// OP_GT	2015	1884	2016
// OP_IFNOT	2016	3	0
// OP_ADDRESS	29	161	2017
// OP_STOREP_F	1884	2017	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () bound_other_ammo =
{
    
    if(other.ammo_shells > 100.000)
    {
        other.ammo_shells = 100.000;
    }
    
    
    if(other.ammo_nails > 200.000)
    {
        other.ammo_nails = 200.000;
    }
    
    
    if(other.ammo_rockets > 100.000)
    {
        other.ammo_rockets = 100.000;
    }
    
    
    if(other.ammo_cells > 100.000)
    {
        other.ammo_cells = 100.000;
    }
    
};

/* TYPE: EV_POINTER */ ;
void() RankForWeapon;
// RankForWeapon
// function begins at statement 2097
// OP_EQ_F	2019	260	2020
// OP_IFNOT	2020	2	0
// OP_RETURN	1862	0	0
// OP_EQ_F	2019	259	2021
// OP_IFNOT	2021	2	0
// OP_RETURN	1863	0	0
// OP_EQ_F	2019	257	2022
// OP_IFNOT	2022	2	0
// OP_RETURN	370	0	0
// OP_EQ_F	2019	258	2023
// OP_IFNOT	2023	2	0
// OP_RETURN	371	0	0
// OP_EQ_F	2019	255	2024
// OP_IFNOT	2024	2	0
// OP_RETURN	313	0	0
// OP_EQ_F	2019	256	2025
// OP_IFNOT	2025	2	0
// OP_RETURN	314	0	0
// OP_RETURN	315	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% (float w) RankForWeapon =
{
    
    if(w == IT_LIGHTNING)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(w == IT_ROCKET_LAUNCHER)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(w == IT_SUPER_NAILGUN)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(w == IT_GRENADE_LAUNCHER)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(w == IT_SUPER_SHOTGUN)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(w == IT_NAILGUN)
    {
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

float ;
void() Deathmatch_Weapon;
// Deathmatch_Weapon
// function begins at statement 2117
// OP_LOAD_F	28	154	2031
// OP_STORE_V	2031	4	0
// OP_CALL1	2018	0	0
// OP_STORE_F	1	2029	0
// OP_STORE_V	2028	4	0
// OP_CALL1	2018	0	0
// OP_STORE_F	1	2030	0
// OP_LT	2030	2029	2032
// OP_IFNOT	2032	3	0
// OP_ADDRESS	28	154	2033
// OP_STOREP_F	2028	2033	0
// OP_DONE	0	0	0
%%RETURNTYPE%% (float old, float new) Deathmatch_Weapon =
{
    local float or;
    local float nr;
    or = RankForWeapon(self.weapon);
    nr = RankForWeapon(new);
    
    if(nr < or)
    {
        self.weapon = new;
    }
    
};

/* TYPE: EV_POINTER */ ;
void() W_BestWeapon;
void() weapon_touch;
// weapon_touch
// function begins at statement 2129
// OP_LOAD_F	29	182	2042
// OP_BITAND	2042	217	2043
// OP_NOT_F	2043	0	2044
// OP_IFNOT	2044	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2040	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2034	0	0
// OP_STORE_F	1	2037	0
// OP_STORE_ENT	2040	28	0
// OP_EQ_F	35	1863	2045
// OP_OR	2045	36	2046
// OP_IFNOT	2046	3	0
// OP_STORE_F	1862	2041	0
// OP_GOTO	2	0	0
// OP_STORE_F	337	2041	0
// OP_LOAD_S	28	129	2047
// OP_EQ_S	2047	2048	2049
// OP_IFNOT	2049	14	0
// OP_LOAD_F	29	162	2050
// OP_BITAND	2050	256	2051
// OP_AND	2041	2051	2052
// OP_IFNOT	2052	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	159	2053
// OP_STORE_F	2053	2036	0
// OP_STORE_F	256	2038	0
// OP_ADDRESS	29	159	2054
// OP_LOAD_F	29	159	2055
// OP_ADD_F	2055	304	2056
// OP_STOREP_F	2056	2054	0
// OP_GOTO	83	0	0
// OP_LOAD_S	28	129	2057
// OP_EQ_S	2057	2058	2059
// OP_IFNOT	2059	14	0
// OP_LOAD_F	29	162	2060
// OP_BITAND	2060	257	2061
// OP_AND	2041	2061	2062
// OP_IFNOT	2062	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2063
// OP_STORE_F	2063	2036	0
// OP_STORE_F	257	2038	0
// OP_ADDRESS	29	159	2064
// OP_LOAD_F	29	159	2065
// OP_ADD_F	2065	304	2066
// OP_STOREP_F	2066	2064	0
// OP_GOTO	67	0	0
// OP_LOAD_S	28	129	2067
// OP_EQ_S	2067	2068	2069
// OP_IFNOT	2069	14	0
// OP_LOAD_F	29	162	2070
// OP_BITAND	2070	255	2071
// OP_AND	2041	2071	2072
// OP_IFNOT	2072	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2073
// OP_STORE_F	2073	2036	0
// OP_STORE_F	255	2038	0
// OP_ADDRESS	29	158	2074
// OP_LOAD_F	29	158	2075
// OP_ADD_F	2075	313	2076
// OP_STOREP_F	2076	2074	0
// OP_GOTO	51	0	0
// OP_LOAD_S	28	129	2077
// OP_EQ_S	2077	2078	2079
// OP_IFNOT	2079	14	0
// OP_LOAD_F	29	162	2080
// OP_BITAND	2080	259	2081
// OP_AND	2041	2081	2082
// OP_IFNOT	2082	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2083
// OP_STORE_F	2083	2036	0
// OP_STORE_F	259	2038	0
// OP_ADDRESS	29	160	2084
// OP_LOAD_F	29	160	2085
// OP_ADD_F	2085	313	2086
// OP_STOREP_F	2086	2084	0
// OP_GOTO	35	0	0
// OP_LOAD_S	28	129	2087
// OP_EQ_S	2087	2088	2089
// OP_IFNOT	2089	14	0
// OP_LOAD_F	29	162	2090
// OP_BITAND	2090	258	2091
// OP_AND	2041	2091	2092
// OP_IFNOT	2092	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2093
// OP_STORE_F	2093	2036	0
// OP_STORE_F	258	2038	0
// OP_ADDRESS	29	160	2094
// OP_LOAD_F	29	160	2095
// OP_ADD_F	2095	313	2096
// OP_STOREP_F	2096	2094	0
// OP_GOTO	19	0	0
// OP_LOAD_S	28	129	2097
// OP_EQ_S	2097	2098	2099
// OP_IFNOT	2099	14	0
// OP_LOAD_F	29	162	2100
// OP_BITAND	2100	260	2101
// OP_AND	2041	2101	2102
// OP_IFNOT	2102	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	2103
// OP_STORE_F	2103	2036	0
// OP_STORE_F	260	2038	0
// OP_ADDRESS	29	161	2104
// OP_LOAD_F	29	161	2105
// OP_ADD_F	2105	1876	2106
// OP_STOREP_F	2106	2104	0
// OP_GOTO	3	0	0
// OP_STORE_V	2107	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2108	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	180	2109
// OP_STORE_V	29	4	0
// OP_STORE_V	2109	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1814	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2110	10	0
// OP_STORE_V	1862	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_CALL0	2005	0	0
// OP_LOAD_F	29	162	2111
// OP_STORE_F	2111	2039	0
// OP_ADDRESS	29	162	2112
// OP_LOAD_F	29	162	2113
// OP_BITOR	2113	2038	2114
// OP_STOREP_F	2114	2112	0
// OP_STORE_ENT	28	2040	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	2115
// OP_IFNOT	2115	4	0
// OP_ADDRESS	28	154	2116
// OP_STOREP_F	2038	2116	0
// OP_GOTO	4	0	0
// OP_STORE_V	2039	4	0
// OP_STORE_V	2038	7	0
// OP_CALL2	2026	0	0
// OP_CALL0	1800	0	0
// OP_STORE_ENT	2040	28	0
// OP_IFNOT	2041	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	2117
// OP_STOREP_S	343	2117	0
// OP_ADDRESS	28	104	2118
// OP_STOREP_F	237	2118	0
// OP_EQ_F	35	1862	2119
// OP_IFNOT	2119	4	0
// OP_ADDRESS	28	150	2120
// OP_ADD_F	31	304	2121
// OP_STOREP_F	2121	2120	0
// OP_ADDRESS	28	148	2122
// OP_STOREP_FNC	1801	2122	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_touch =
{
    local float hadammo;
    local float best;
    local float new;
    local float old;
    local entity stemp;
    local float leave;
    
    if(!(other.flags & FL_CLIENT))
    {
        return; /* TODO retvalue? */
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    if((deathmatch == H_MEGA) || coop)
    {
        leave = H_ROTTEN;
    }
    else    
    {
        leave = MSG_BROADCAST;
    }
    
    if(self.classname == "weapon_nailgun")
    {
        
        if(leave && (other.items & IT_NAILGUN))
        {
            return; /* TODO retvalue? */
        }
        
        hadammo = other.ammo_nails;
        new = IT_NAILGUN;
        other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
    }
    else    
    {
        if(self.classname == "weapon_supernailgun")
        {
            
            if(leave && (other.items & IT_SUPER_NAILGUN))
            {
                return; /* TODO retvalue? */
            }
            
            hadammo = other.ammo_rockets;
            new = IT_SUPER_NAILGUN;
            other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
        }
        else        
        {
            if(self.classname == "weapon_supershotgun")
            {
                
                if(leave && (other.items & IT_SUPER_SHOTGUN))
                {
                    return; /* TODO retvalue? */
                }
                
                hadammo = other.ammo_rockets;
                new = IT_SUPER_SHOTGUN;
                other.ammo_shells = other.ammo_shells + TE_LIGHTNING1;
            }
            else            
            {
                if(self.classname == "weapon_rocketlauncher")
                {
                    
                    if(leave && (other.items & IT_ROCKET_LAUNCHER))
                    {
                        return; /* TODO retvalue? */
                    }
                    
                    hadammo = other.ammo_rockets;
                    new = IT_ROCKET_LAUNCHER;
                    other.ammo_rockets = other.ammo_rockets + TE_LIGHTNING1;
                }
                else                
                {
                    if(self.classname == "weapon_grenadelauncher")
                    {
                        
                        if(leave && (other.items & IT_GRENADE_LAUNCHER))
                        {
                            return; /* TODO retvalue? */
                        }
                        
                        hadammo = other.ammo_rockets;
                        new = IT_GRENADE_LAUNCHER;
                        other.ammo_rockets = other.ammo_rockets + TE_LIGHTNING1;
                    }
                    else                    
                    {
                        if(self.classname == "weapon_lightning")
                        {
                            
                            if(leave && (other.items & IT_LIGHTNING))
                            {
                                return; /* TODO retvalue? */
                            }
                            
                            hadammo = other.ammo_rockets;
                            new = IT_LIGHTNING;
                            other.ammo_cells = other.ammo_cells + 15.000;
                        }
                        else                        
                        {
                            objerror("weapon_touch: unknown classname");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/pkup.wav", H_ROTTEN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    bound_other_ammo();
    old = other.items;
    other.items = other.items | new;
    stemp = self;
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else    
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
    self = stemp;
    
    if(leave)
    {
        return; /* TODO retvalue? */
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == H_ROTTEN)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

/* TYPE: EV_POINTER */ ;
void() weapon_supershotgun;
// weapon_supershotgun
// function begins at statement 2297
// OP_STORE_V	2124	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2124	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2125
// OP_STOREP_F	255	2125	0
// OP_ADDRESS	28	180	2126
// OP_STOREP_S	2127	2126	0
// OP_ADDRESS	28	146	2128
// OP_STOREP_FNC	2035	2128	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_supershotgun =
{
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() weapon_nailgun;
// weapon_nailgun
// function begins at statement 2314
// OP_STORE_V	2130	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2130	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2131
// OP_STOREP_F	256	2131	0
// OP_ADDRESS	28	180	2132
// OP_STOREP_S	2133	2132	0
// OP_ADDRESS	28	146	2134
// OP_STOREP_FNC	2035	2134	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_nailgun =
{
    precache_model("progs/g_nail.mdl");
    setmodel(self, "progs/g_nail.mdl");
    self.weapon = IT_NAILGUN;
    self.netname = "nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() weapon_supernailgun;
// weapon_supernailgun
// function begins at statement 2331
// OP_STORE_V	2136	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2136	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2137
// OP_STOREP_F	257	2137	0
// OP_ADDRESS	28	180	2138
// OP_STOREP_S	2139	2138	0
// OP_ADDRESS	28	146	2140
// OP_STOREP_FNC	2035	2140	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_supernailgun =
{
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() weapon_grenadelauncher;
// weapon_grenadelauncher
// function begins at statement 2348
// OP_STORE_V	2142	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2142	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2143
// OP_STOREP_F	370	2143	0
// OP_ADDRESS	28	180	2144
// OP_STOREP_S	2145	2144	0
// OP_ADDRESS	28	146	2146
// OP_STOREP_FNC	2035	2146	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_grenadelauncher =
{
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = AS_MELEE;
    self.netname = "Grenade Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() weapon_rocketlauncher;
// weapon_rocketlauncher
// function begins at statement 2365
// OP_STORE_V	2148	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2148	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2149
// OP_STOREP_F	370	2149	0
// OP_ADDRESS	28	180	2150
// OP_STOREP_S	2151	2150	0
// OP_ADDRESS	28	146	2152
// OP_STOREP_FNC	2035	2152	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_rocketlauncher =
{
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = AS_MELEE;
    self.netname = "Rocket Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() weapon_lightning;
// weapon_lightning
// function begins at statement 2382
// OP_STORE_V	2154	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2154	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	154	2155
// OP_STOREP_F	370	2155	0
// OP_ADDRESS	28	180	2156
// OP_STOREP_S	2157	2156	0
// OP_ADDRESS	28	146	2158
// OP_STOREP_FNC	2035	2158	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () weapon_lightning =
{
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = AS_MELEE;
    self.netname = "Thunderbolt";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() ammo_touch;
// ammo_touch
// function begins at statement 2399
// OP_LOAD_S	29	129	2162
// OP_NE_S	2162	712	2163
// OP_IFNOT	2163	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2164
// OP_LE	2164	337	2165
// OP_IFNOT	2165	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	2160	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2034	0	0
// OP_STORE_F	1	2161	0
// OP_STORE_ENT	2160	28	0
// OP_LOAD_F	28	154	2166
// OP_EQ_F	2166	1862	2167
// OP_IFNOT	2167	10	0
// OP_LOAD_F	29	158	2168
// OP_GE	2168	1884	2169
// OP_IFNOT	2169	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	158	2170
// OP_LOAD_F	29	158	2171
// OP_LOAD_F	28	419	2172
// OP_ADD_F	2171	2172	2173
// OP_STOREP_F	2173	2170	0
// OP_LOAD_F	28	154	2174
// OP_EQ_F	2174	1863	2175
// OP_IFNOT	2175	10	0
// OP_LOAD_F	29	159	2176
// OP_GE	2176	1965	2177
// OP_IFNOT	2177	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	159	2178
// OP_LOAD_F	29	159	2179
// OP_LOAD_F	28	419	2180
// OP_ADD_F	2179	2180	2181
// OP_STOREP_F	2181	2178	0
// OP_LOAD_F	28	154	2182
// OP_EQ_F	2182	370	2183
// OP_IFNOT	2183	10	0
// OP_LOAD_F	29	160	2184
// OP_GE	2184	1884	2185
// OP_IFNOT	2185	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	160	2186
// OP_LOAD_F	29	160	2187
// OP_LOAD_F	28	419	2188
// OP_ADD_F	2187	2188	2189
// OP_STOREP_F	2189	2186	0
// OP_LOAD_F	28	154	2190
// OP_EQ_F	2190	371	2191
// OP_IFNOT	2191	10	0
// OP_LOAD_F	29	161	2192
// OP_GE	2192	1884	2193
// OP_IFNOT	2193	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	161	2194
// OP_LOAD_F	29	161	2195
// OP_LOAD_F	28	419	2196
// OP_ADD_F	2195	2196	2197
// OP_STOREP_F	2197	2194	0
// OP_CALL0	2005	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2108	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	180	2198
// OP_STORE_V	29	4	0
// OP_STORE_V	2198	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1814	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2199	10	0
// OP_STORE_V	1862	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	29	154	2200
// OP_EQ_F	2200	2161	2201
// OP_IFNOT	2201	8	0
// OP_STORE_ENT	28	2160	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	2202
// OP_CALL0	2034	0	0
// OP_STOREP_F	1	2202	0
// OP_CALL0	1800	0	0
// OP_STORE_ENT	2160	28	0
// OP_STORE_ENT	28	2160	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	1800	0	0
// OP_STORE_ENT	2160	28	0
// OP_ADDRESS	28	130	2203
// OP_STOREP_S	343	2203	0
// OP_ADDRESS	28	104	2204
// OP_STOREP_F	237	2204	0
// OP_EQ_F	35	1862	2205
// OP_IFNOT	2205	4	0
// OP_ADDRESS	28	150	2206
// OP_ADD_F	31	304	2207
// OP_STOREP_F	2207	2206	0
// OP_ADDRESS	28	148	2208
// OP_STOREP_FNC	1801	2208	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () ammo_touch =
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(self.weapon == H_ROTTEN)
    {
        
        if(other.ammo_shells >= 100.000)
        {
            return; /* TODO retvalue? */
        }
        
        other.ammo_shells = other.ammo_shells + self.aflag;
    }
    
    
    if(self.weapon == H_MEGA)
    {
        
        if(other.ammo_nails >= 200.000)
        {
            return; /* TODO retvalue? */
        }
        
        other.ammo_nails = other.ammo_nails + self.aflag;
    }
    
    
    if(self.weapon == AS_MELEE)
    {
        
        if(other.ammo_rockets >= 100.000)
        {
            return; /* TODO retvalue? */
        }
        
        other.ammo_rockets = other.ammo_rockets + self.aflag;
    }
    
    
    if(self.weapon == AS_MISSILE)
    {
        
        if(other.ammo_cells >= 100.000)
        {
            return; /* TODO retvalue? */
        }
        
        other.ammo_cells = other.ammo_cells + self.aflag;
    }
    
    bound_other_ammo();
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/lock4.wav", H_ROTTEN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    
    if(other.weapon == best)
    {
        stemp = self;
        self = other;
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        self = stemp;
    }
    
    stemp = self;
    self = other;
    W_SetCurrentAmmo();
    self = stemp;
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == H_ROTTEN)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

/* TYPE: EV_POINTER */ ;
float WEAPON_BIG2 = 1.000;
void() item_shells;
// item_shells
// function begins at statement 2508
// OP_ADDRESS	28	146	2211
// OP_STOREP_FNC	2159	2211	0
// OP_LOAD_F	28	195	2212
// OP_BITAND	2212	2209	2213
// OP_IFNOT	2213	9	0
// OP_STORE_V	2214	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2214	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2215
// OP_STOREP_F	1733	2215	0
// OP_GOTO	8	0	0
// OP_STORE_V	2216	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2216	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2217
// OP_STOREP_F	894	2217	0
// OP_ADDRESS	28	154	2218
// OP_STOREP_F	2209	2218	0
// OP_ADDRESS	28	180	2219
// OP_STOREP_S	2220	2219	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_shells =
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_shell1.bsp");
        setmodel(self, "maps/b_shell1.bsp");
        self.aflag = 40.000;
    }
    else    
    {
        precache_model("maps/b_shell0.bsp");
        setmodel(self, "maps/b_shell0.bsp");
        self.aflag = 20.000;
    }
    
    self.weapon = WEAPON_BIG2;
    self.netname = "shells";
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

string IMMEDIATE = "shells";
void() item_spikes;
// item_spikes
// function begins at statement 2538
// OP_ADDRESS	28	146	2222
// OP_STOREP_FNC	2159	2222	0
// OP_LOAD_F	28	195	2223
// OP_BITAND	2223	2209	2224
// OP_IFNOT	2224	9	0
// OP_STORE_V	2225	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2225	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2226
// OP_STOREP_F	2227	2226	0
// OP_GOTO	8	0	0
// OP_STORE_V	2228	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2228	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2229
// OP_STOREP_F	1890	2229	0
// OP_ADDRESS	28	154	2230
// OP_STOREP_F	1863	2230	0
// OP_ADDRESS	28	180	2231
// OP_STOREP_S	2232	2231	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_spikes =
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_nail1.bsp");
        setmodel(self, "maps/b_nail1.bsp");
        self.aflag = 50.000;
    }
    else    
    {
        precache_model("maps/b_nail0.bsp");
        setmodel(self, "maps/b_nail0.bsp");
        self.aflag = 25.000;
    }
    
    self.weapon = H_MEGA;
    self.netname = "nails";
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

string IMMEDIATE = "nails";
void() item_rockets;
// item_rockets
// function begins at statement 2568
// OP_ADDRESS	28	146	2234
// OP_STOREP_FNC	2159	2234	0
// OP_LOAD_F	28	195	2235
// OP_BITAND	2235	2209	2236
// OP_IFNOT	2236	9	0
// OP_STORE_V	2237	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2237	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2238
// OP_STOREP_F	318	2238	0
// OP_GOTO	8	0	0
// OP_STORE_V	2239	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2239	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2240
// OP_STOREP_F	313	2240	0
// OP_ADDRESS	28	154	2241
// OP_STOREP_F	370	2241	0
// OP_ADDRESS	28	180	2242
// OP_STOREP_S	2243	2242	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_rockets =
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = TE_LAVASPLASH;
    }
    else    
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = TE_LIGHTNING1;
    }
    
    self.weapon = AS_MELEE;
    self.netname = "rockets";
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

string IMMEDIATE = "rockets";
void() item_cells;
// item_cells
// function begins at statement 2598
// OP_ADDRESS	28	146	2245
// OP_STOREP_FNC	2159	2245	0
// OP_LOAD_F	28	195	2246
// OP_BITAND	2246	2209	2247
// OP_IFNOT	2247	9	0
// OP_STORE_V	2248	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2248	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2249
// OP_STOREP_F	2250	2249	0
// OP_GOTO	8	0	0
// OP_STORE_V	2251	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2251	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2252
// OP_STOREP_F	314	2252	0
// OP_ADDRESS	28	154	2253
// OP_STOREP_F	371	2253	0
// OP_ADDRESS	28	180	2254
// OP_STOREP_S	2255	2254	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_cells =
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_batt1.bsp");
        setmodel(self, "maps/b_batt1.bsp");
        self.aflag = 12.000;
    }
    else    
    {
        precache_model("maps/b_batt0.bsp");
        setmodel(self, "maps/b_batt0.bsp");
        self.aflag = TE_LIGHTNING2;
    }
    
    self.weapon = AS_MISSILE;
    self.netname = "cells";
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

string IMMEDIATE = "cells";
float WEAPON_SHOTGUN = 1.000;
float WEAPON_ROCKET = 2.000;
float WEAPON_SPIKES = 4.000;
float WEAPON_BIG = 8.000;
void() item_weapon;
// item_weapon
// function begins at statement 2628
// OP_ADDRESS	28	146	2261
// OP_STOREP_FNC	2159	2261	0
// OP_LOAD_F	28	195	2262
// OP_BITAND	2262	2256	2263
// OP_IFNOT	2263	23	0
// OP_LOAD_F	28	195	2264
// OP_BITAND	2264	2259	2265
// OP_IFNOT	2265	9	0
// OP_STORE_V	2214	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2214	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2266
// OP_STOREP_F	1733	2266	0
// OP_GOTO	8	0	0
// OP_STORE_V	2216	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2216	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2267
// OP_STOREP_F	894	2267	0
// OP_ADDRESS	28	154	2268
// OP_STOREP_F	2256	2268	0
// OP_ADDRESS	28	180	2269
// OP_STOREP_S	2220	2269	0
// OP_LOAD_F	28	195	2270
// OP_BITAND	2270	2258	2271
// OP_IFNOT	2271	23	0
// OP_LOAD_F	28	195	2272
// OP_BITAND	2272	2259	2273
// OP_IFNOT	2273	9	0
// OP_STORE_V	2225	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2225	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2274
// OP_STOREP_F	1733	2274	0
// OP_GOTO	8	0	0
// OP_STORE_V	2228	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2228	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2275
// OP_STOREP_F	894	2275	0
// OP_ADDRESS	28	154	2276
// OP_STOREP_F	2257	2276	0
// OP_ADDRESS	28	180	2277
// OP_STOREP_S	2278	2277	0
// OP_LOAD_F	28	195	2279
// OP_BITAND	2279	2257	2280
// OP_IFNOT	2280	23	0
// OP_LOAD_F	28	195	2281
// OP_BITAND	2281	2259	2282
// OP_IFNOT	2282	9	0
// OP_STORE_V	2237	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2237	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2283
// OP_STOREP_F	318	2283	0
// OP_GOTO	8	0	0
// OP_STORE_V	2239	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2239	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	419	2284
// OP_STOREP_F	313	2284	0
// OP_ADDRESS	28	154	2285
// OP_STOREP_F	370	2285	0
// OP_ADDRESS	28	180	2286
// OP_STOREP_S	2243	2286	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	1892	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_weapon =
{
    self.touch = ammo_touch;
    
    if(self.spawnflags & WEAPON_SHOTGUN)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_shell1.bsp");
            setmodel(self, "maps/b_shell1.bsp");
            self.aflag = 40.000;
        }
        else        
        {
            precache_model("maps/b_shell0.bsp");
            setmodel(self, "maps/b_shell0.bsp");
            self.aflag = 20.000;
        }
        
        self.weapon = WEAPON_SHOTGUN;
        self.netname = "shells";
    }
    
    
    if(self.spawnflags & WEAPON_SPIKES)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_nail1.bsp");
            setmodel(self, "maps/b_nail1.bsp");
            self.aflag = 40.000;
        }
        else        
        {
            precache_model("maps/b_nail0.bsp");
            setmodel(self, "maps/b_nail0.bsp");
            self.aflag = 20.000;
        }
        
        self.weapon = WEAPON_ROCKET;
        self.netname = "spikes";
    }
    
    
    if(self.spawnflags & WEAPON_ROCKET)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_rock1.bsp");
            setmodel(self, "maps/b_rock1.bsp");
            self.aflag = TE_LAVASPLASH;
        }
        else        
        {
            precache_model("maps/b_rock0.bsp");
            setmodel(self, "maps/b_rock0.bsp");
            self.aflag = TE_LIGHTNING1;
        }
        
        self.weapon = AS_MELEE;
        self.netname = "rockets";
    }
    
    setsize(self, VEC_ORIGIN, '32.000 32.000 56.000');
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() key_touch;
// key_touch
// function begins at statement 2711
// OP_LOAD_S	29	129	2290
// OP_NE_S	2290	712	2291
// OP_IFNOT	2291	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2292
// OP_LE	2292	337	2293
// OP_IFNOT	2293	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	2294
// OP_LOAD_F	28	162	2295
// OP_BITAND	2294	2295	2296
// OP_IFNOT	2296	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2108	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	180	2297
// OP_STORE_V	29	4	0
// OP_STORE_V	2297	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1814	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	208	2298
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2298	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	29	162	2299
// OP_LOAD_F	29	162	2300
// OP_LOAD_F	28	162	2301
// OP_BITOR	2300	2301	2302
// OP_STOREP_F	2302	2299	0
// OP_NOT_F	36	0	2303
// OP_IFNOT	2303	5	0
// OP_ADDRESS	28	104	2304
// OP_STOREP_F	237	2304	0
// OP_ADDRESS	28	130	2305
// OP_STOREP_S	343	2305	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () key_touch =
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.items & self.items)
    {
        return; /* TODO retvalue? */
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, self.noise, WEAPON_SHOTGUN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    other.items = other.items | self.items;
    
    if(!coop)
    {
        self.solid = SOLID_NOT;
        self.model = string_null;
    }
    
    activator = other;
    SUB_UseTargets();
};

/* TYPE: EV_POINTER */ ;
void() key_setsounds;
// key_setsounds
// function begins at statement 2758
// OP_LOAD_F	30	352	2307
// OP_EQ_F	2307	337	2308
// OP_IFNOT	2308	5	0
// OP_STORE_V	2309	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2310
// OP_STOREP_S	2309	2310	0
// OP_LOAD_F	30	352	2311
// OP_EQ_F	2311	2256	2312
// OP_IFNOT	2312	5	0
// OP_STORE_V	2313	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2314
// OP_STOREP_S	2313	2314	0
// OP_LOAD_F	30	352	2315
// OP_EQ_F	2315	2257	2316
// OP_IFNOT	2316	5	0
// OP_STORE_V	2317	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	208	2318
// OP_STOREP_S	2317	2318	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () key_setsounds =
{
    
    if(world.worldtype == MSG_BROADCAST)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    
    
    if(world.worldtype == WEAPON_SHOTGUN)
    {
        precache_sound("misc/runekey.wav");
        self.noise = "misc/runekey.wav";
    }
    
    
    if(world.worldtype == WEAPON_ROCKET)
    {
        precache_sound2("misc/basekey.wav");
        self.noise = "misc/basekey.wav";
    }
    
};

/* TYPE: EV_POINTER */ ;
void() item_key1;
// item_key1
// function begins at statement 2780
// OP_LOAD_F	30	352	2320
// OP_EQ_F	2320	337	2321
// OP_IFNOT	2321	9	0
// OP_STORE_V	2322	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2322	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2323
// OP_STOREP_S	2324	2323	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	352	2325
// OP_EQ_F	2325	2256	2326
// OP_IFNOT	2326	9	0
// OP_STORE_V	2327	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2327	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2328
// OP_STOREP_S	2329	2328	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	352	2330
// OP_EQ_F	2330	2257	2331
// OP_IFNOT	2331	8	0
// OP_STORE_V	2332	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2332	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2333
// OP_STOREP_S	2334	2333	0
// OP_CALL0	2306	0	0
// OP_ADDRESS	28	146	2335
// OP_STOREP_FNC	2287	2335	0
// OP_ADDRESS	28	162	2336
// OP_STOREP_F	270	2336	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_key1 =
{
    if(world.worldtype == MSG_BROADCAST)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else    
    {
        if(world.worldtype == WEAPON_SHOTGUN)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else        
        {
            
            if(world.worldtype == WEAPON_ROCKET)
            {
                precache_model2("progs/b_s_key.mdl");
                setmodel(self, "progs/b_s_key.mdl");
                self.netname = "silver keycard";
            }
            
        }
        
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY1;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() item_key2;
// item_key2
// function begins at statement 2823
// OP_LOAD_F	30	352	2338
// OP_EQ_F	2338	337	2339
// OP_IFNOT	2339	8	0
// OP_STORE_V	2340	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2340	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2341
// OP_STOREP_S	2342	2341	0
// OP_LOAD_F	30	352	2343
// OP_EQ_F	2343	2256	2344
// OP_IFNOT	2344	8	0
// OP_STORE_V	2345	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2345	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2346
// OP_STOREP_S	2347	2346	0
// OP_LOAD_F	30	352	2348
// OP_EQ_F	2348	2257	2349
// OP_IFNOT	2349	8	0
// OP_STORE_V	2350	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2350	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2351
// OP_STOREP_S	2352	2351	0
// OP_CALL0	2306	0	0
// OP_ADDRESS	28	146	2353
// OP_STOREP_FNC	2287	2353	0
// OP_ADDRESS	28	162	2354
// OP_STOREP_F	271	2354	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_key2 =
{
    
    if(world.worldtype == MSG_BROADCAST)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    
    
    if(world.worldtype == WEAPON_SHOTGUN)
    {
        precache_model("progs/m_g_key.mdl");
        setmodel(self, "progs/m_g_key.mdl");
        self.netname = "gold runekey";
    }
    
    
    if(world.worldtype == WEAPON_ROCKET)
    {
        precache_model2("progs/b_g_key.mdl");
        setmodel(self, "progs/b_g_key.mdl");
        self.netname = "gold keycard";
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY2;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() sigil_touch;
// sigil_touch
// function begins at statement 2864
// OP_LOAD_S	29	129	2358
// OP_NE_S	2358	712	2359
// OP_IFNOT	2359	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2360
// OP_LE	2360	337	2361
// OP_IFNOT	2361	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2362	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	208	2363
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2363	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	104	2364
// OP_STOREP_F	237	2364	0
// OP_ADDRESS	28	130	2365
// OP_STOREP_S	343	2365	0
// OP_LOAD_F	28	195	2366
// OP_BITAND	2366	1876	2367
// OP_BITOR	38	2367	2368
// OP_STORE_F	2368	38	0
// OP_ADDRESS	28	129	2369
// OP_STOREP_S	569	2369	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () sigil_touch =
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    centerprint(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, WEAPON_SHOTGUN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & 15.000);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};

/* TYPE: EV_POINTER */ ;
void() item_sigil;
// item_sigil
// function begins at statement 2898
// OP_LOAD_F	28	195	2371
// OP_NOT_F	2371	0	2372
// OP_IFNOT	2372	3	0
// OP_STORE_V	2373	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	2313	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2374
// OP_STOREP_S	2313	2374	0
// OP_LOAD_F	28	195	2375
// OP_BITAND	2375	2256	2376
// OP_IFNOT	2376	6	0
// OP_STORE_V	2377	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2377	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2378
// OP_BITAND	2378	2257	2379
// OP_IFNOT	2379	6	0
// OP_STORE_V	2380	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2380	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2381
// OP_BITAND	2381	2258	2382
// OP_IFNOT	2382	6	0
// OP_STORE_V	2383	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2383	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	195	2384
// OP_BITAND	2384	2259	2385
// OP_IFNOT	2385	6	0
// OP_STORE_V	2386	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2386	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	146	2387
// OP_STOREP_FNC	2355	2387	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_sigil =
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & WEAPON_SHOTGUN)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & WEAPON_ROCKET)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & WEAPON_SPIKES)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & WEAPON_BIG)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = sigil_touch;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() powerup_touch;
// powerup_touch
// function begins at statement 2947
// OP_LOAD_S	29	129	2391
// OP_NE_S	2391	712	2392
// OP_IFNOT	2392	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2393
// OP_LE	2393	337	2394
// OP_IFNOT	2394	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2108	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	180	2395
// OP_STORE_V	29	4	0
// OP_STORE_V	2395	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1814	7	0
// OP_CALL2	469	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	394	2396
// OP_LOAD_S	28	130	2397
// OP_STOREP_S	2397	2396	0
// OP_LOAD_S	28	129	2398
// OP_EQ_S	2398	2399	2400
// OP_LOAD_S	28	129	2401
// OP_EQ_S	2401	2402	2403
// OP_OR	2400	2403	2404
// OP_IFNOT	2404	6	0
// OP_ADDRESS	28	150	2405
// OP_MUL_F	912	313	2406
// OP_ADD_F	31	2406	2407
// OP_STOREP_F	2407	2405	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	2408
// OP_ADD_F	31	912	2409
// OP_STOREP_F	2409	2408	0
// OP_ADDRESS	28	148	2410
// OP_STOREP_FNC	1801	2410	0
// OP_LOAD_S	28	208	2411
// OP_STORE_V	29	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2411	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_ADDRESS	28	104	2412
// OP_STOREP_F	237	2412	0
// OP_ADDRESS	29	162	2413
// OP_LOAD_F	29	162	2414
// OP_LOAD_F	28	162	2415
// OP_BITOR	2414	2415	2416
// OP_STOREP_F	2416	2413	0
// OP_ADDRESS	28	130	2417
// OP_STOREP_S	343	2417	0
// OP_LOAD_S	28	129	2418
// OP_EQ_S	2418	2419	2420
// OP_IFNOT	2420	6	0
// OP_ADDRESS	29	385	2421
// OP_STOREP_F	2256	2421	0
// OP_ADDRESS	29	378	2422
// OP_ADD_F	31	304	2423
// OP_STOREP_F	2423	2422	0
// OP_LOAD_S	28	129	2424
// OP_EQ_S	2424	2399	2425
// OP_IFNOT	2425	6	0
// OP_ADDRESS	29	379	2426
// OP_STOREP_F	2256	2426	0
// OP_ADDRESS	29	375	2427
// OP_ADD_F	31	304	2428
// OP_STOREP_F	2428	2427	0
// OP_LOAD_S	28	129	2429
// OP_EQ_S	2429	2402	2430
// OP_IFNOT	2430	6	0
// OP_ADDRESS	29	381	2431
// OP_STOREP_F	2256	2431	0
// OP_ADDRESS	29	376	2432
// OP_ADD_F	31	304	2433
// OP_STOREP_F	2433	2432	0
// OP_LOAD_S	28	129	2434
// OP_EQ_S	2434	2435	2436
// OP_IFNOT	2436	6	0
// OP_ADDRESS	29	383	2437
// OP_STOREP_F	2256	2437	0
// OP_ADDRESS	29	377	2438
// OP_ADD_F	31	304	2439
// OP_STOREP_F	2439	2438	0
// OP_STORE_ENT	29	346	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () powerup_touch =
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60.000 * TE_LIGHTNING1);
        }
        else        
        {
            self.nextthink = time + 60.000;
        }
        
        self.think = SUB_regen;
    }
    
    sound(other, CHAN_VOICE, self.noise, WEAPON_SHOTGUN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = WEAPON_SHOTGUN;
        other.radsuit_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = WEAPON_SHOTGUN;
        other.invincible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = WEAPON_SHOTGUN;
        other.invisible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = WEAPON_SHOTGUN;
        other.super_damage_finished = time + SVC_INTERMISSION;
    }
    
    activator = other;
    SUB_UseTargets();
};

float ;
void() item_artifact_invulnerability;
// item_artifact_invulnerability
// function begins at statement 3039
// OP_ADDRESS	28	146	2441
// OP_STOREP_FNC	2388	2441	0
// OP_STORE_V	2442	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2443	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2444	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1670	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2445
// OP_STOREP_S	2443	2445	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2442	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2446
// OP_STOREP_S	2447	2446	0
// OP_ADDRESS	28	162	2448
// OP_STOREP_F	273	2448	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_artifact_invulnerability =
{
    self.touch = powerup_touch;
    precache_model("progs/invulner.mdl");
    precache_sound("items/protect.wav");
    precache_sound("items/protect2.wav");
    precache_sound("items/protect3.wav");
    self.noise = "items/protect.wav";
    setmodel(self, "progs/invulner.mdl");
    self.netname = "Pentagram of Protection";
    self.items = IT_INVULNERABILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() item_artifact_envirosuit;
// item_artifact_envirosuit
// function begins at statement 3064
// OP_ADDRESS	28	146	2450
// OP_STOREP_FNC	2388	2450	0
// OP_STORE_V	2451	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2452	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2453	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2454
// OP_STOREP_S	2452	2454	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2451	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2455
// OP_STOREP_S	2456	2455	0
// OP_ADDRESS	28	162	2457
// OP_STOREP_F	274	2457	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_artifact_envirosuit =
{
    self.touch = powerup_touch;
    precache_model("progs/suit.mdl");
    precache_sound("items/suit.wav");
    precache_sound("items/suit2.wav");
    self.noise = "items/suit.wav";
    setmodel(self, "progs/suit.mdl");
    self.netname = "Biosuit";
    self.items = IT_SUIT;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() item_artifact_invisibility;
// item_artifact_invisibility
// function begins at statement 3087
// OP_ADDRESS	28	146	2459
// OP_STOREP_FNC	2388	2459	0
// OP_STORE_V	2460	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2461	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2462	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2463	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2464
// OP_STOREP_S	2461	2464	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2460	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2465
// OP_STOREP_S	2466	2465	0
// OP_ADDRESS	28	162	2467
// OP_STOREP_F	272	2467	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_artifact_invisibility =
{
    self.touch = powerup_touch;
    precache_model("progs/invisibl.mdl");
    precache_sound("items/inv1.wav");
    precache_sound("items/inv2.wav");
    precache_sound("items/inv3.wav");
    self.noise = "items/inv1.wav";
    setmodel(self, "progs/invisibl.mdl");
    self.netname = "Ring of Shadows";
    self.items = IT_INVISIBILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() item_artifact_super_damage;
// item_artifact_super_damage
// function begins at statement 3112
// OP_ADDRESS	28	146	2469
// OP_STOREP_FNC	2388	2469	0
// OP_STORE_V	2470	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2471	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2472	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2473	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	2474
// OP_STOREP_S	2471	2474	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2470	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	180	2475
// OP_STOREP_S	2476	2475	0
// OP_ADDRESS	28	162	2477
// OP_STOREP_F	275	2477	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_CALL0	1834	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () item_artifact_super_damage =
{
    self.touch = powerup_touch;
    precache_model("progs/quaddama.mdl");
    precache_sound("items/damage.wav");
    precache_sound("items/damage2.wav");
    precache_sound("items/damage3.wav");
    self.noise = "items/damage.wav";
    setmodel(self, "progs/quaddama.mdl");
    self.netname = "Quad Damage";
    self.items = IT_QUAD;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};

/* TYPE: EV_POINTER */ ;
void() BackpackTouch;
// BackpackTouch
// function begins at statement 3137
// OP_LOAD_S	29	129	2485
// OP_NE_S	2485	712	2486
// OP_IFNOT	2486	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	2487
// OP_LE	2487	337	2488
// OP_IFNOT	2488	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	337	2484	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2489	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	162	2490
// OP_IFNOT	2490	14	0
// OP_LOAD_F	29	162	2491
// OP_LOAD_F	28	162	2492
// OP_BITAND	2491	2492	2493
// OP_EQ_F	2493	337	2494
// OP_IFNOT	2494	9	0
// OP_STORE_F	2256	2484	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2495	7	0
// OP_CALL2	469	0	0
// OP_LOAD_S	28	180	2496
// OP_STORE_V	29	4	0
// OP_STORE_V	2496	7	0
// OP_CALL2	469	0	0
// OP_STORE_ENT	28	2483	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	2034	0	0
// OP_STORE_F	1	2480	0
// OP_STORE_ENT	2483	28	0
// OP_ADDRESS	29	158	2497
// OP_LOAD_F	29	158	2498
// OP_LOAD_F	28	158	2499
// OP_ADD_F	2498	2499	2500
// OP_STOREP_F	2500	2497	0
// OP_ADDRESS	29	159	2501
// OP_LOAD_F	29	159	2502
// OP_LOAD_F	28	159	2503
// OP_ADD_F	2502	2503	2504
// OP_STOREP_F	2504	2501	0
// OP_ADDRESS	29	160	2505
// OP_LOAD_F	29	160	2506
// OP_LOAD_F	28	160	2507
// OP_ADD_F	2506	2507	2508
// OP_STOREP_F	2508	2505	0
// OP_ADDRESS	29	161	2509
// OP_LOAD_F	29	161	2510
// OP_LOAD_F	28	161	2511
// OP_ADD_F	2510	2511	2512
// OP_STOREP_F	2512	2509	0
// OP_LOAD_F	28	162	2513
// OP_STORE_F	2513	2482	0
// OP_NOT_F	2482	0	2514
// OP_IFNOT	2514	3	0
// OP_LOAD_F	29	154	2515
// OP_STORE_F	2515	2482	0
// OP_LOAD_F	29	162	2516
// OP_STORE_F	2516	2481	0
// OP_ADDRESS	29	162	2517
// OP_LOAD_F	29	162	2518
// OP_BITOR	2518	2482	2519
// OP_STOREP_F	2519	2517	0
// OP_CALL0	2005	0	0
// OP_LOAD_F	28	158	2520
// OP_IFNOT	2520	16	0
// OP_IFNOT	2484	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	469	0	0
// OP_STORE_F	2256	2484	0
// OP_LOAD_F	28	158	2522
// OP_STORE_V	2522	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2479	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2479	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2523	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	159	2524
// OP_IFNOT	2524	16	0
// OP_IFNOT	2484	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	469	0	0
// OP_STORE_F	2256	2484	0
// OP_LOAD_F	28	159	2525
// OP_STORE_V	2525	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2479	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2479	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2526	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	160	2527
// OP_IFNOT	2527	16	0
// OP_IFNOT	2484	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	469	0	0
// OP_STORE_F	2256	2484	0
// OP_LOAD_F	28	160	2528
// OP_STORE_V	2528	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2479	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2479	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2529	7	0
// OP_CALL2	469	0	0
// OP_LOAD_F	28	161	2530
// OP_IFNOT	2530	16	0
// OP_IFNOT	2484	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2521	7	0
// OP_CALL2	469	0	0
// OP_STORE_F	2256	2484	0
// OP_LOAD_F	28	161	2531
// OP_STORE_V	2531	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	2479	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2479	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2532	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1814	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2199	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	1911	7	0
// OP_CALL2	466	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	2533
// OP_IFNOT	2533	4	0
// OP_ADDRESS	28	154	2534
// OP_STOREP_F	2482	2534	0
// OP_GOTO	4	0	0
// OP_STORE_V	2481	4	0
// OP_STORE_V	2482	7	0
// OP_CALL2	2026	0	0
// OP_CALL0	1800	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () BackpackTouch =
{
    local string s;
    local float best;
    local float old;
    local float new;
    local entity stemp;
    local float acount;
    
    if(other.classname != "player")
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.health <= MSG_BROADCAST)
    {
        return; /* TODO retvalue? */
    }
    
    acount = MSG_BROADCAST;
    sprint(other, "You get ");
    
    if(self.items)
    {
        
        if((other.items & self.items) == MSG_BROADCAST)
        {
            acount = WEAPON_SHOTGUN;
            sprint(other, "the ");
            sprint(other, self.netname);
        }
        
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    other.ammo_shells = other.ammo_shells + self.ammo_shells;
    other.ammo_nails = other.ammo_nails + self.ammo_nails;
    other.ammo_rockets = other.ammo_rockets + self.ammo_rockets;
    other.ammo_cells = other.ammo_cells + self.ammo_cells;
    new = self.items;
    
    if(!new)
    {
        new = other.weapon;
    }
    
    old = other.items;
    other.items = other.items | new;
    bound_other_ammo();
    
    if(self.ammo_shells)
    {
        
        if(acount)
        {
            sprint(other, ", ");
        }
        
        acount = WEAPON_SHOTGUN;
        s = ftos(self.ammo_shells);
        sprint(other, s);
        sprint(other, " shells");
    }
    
    
    if(self.ammo_nails)
    {
        
        if(acount)
        {
            sprint(other, ", ");
        }
        
        acount = WEAPON_SHOTGUN;
        s = ftos(self.ammo_nails);
        sprint(other, s);
        sprint(other, " nails");
    }
    
    
    if(self.ammo_rockets)
    {
        
        if(acount)
        {
            sprint(other, ", ");
        }
        
        acount = WEAPON_SHOTGUN;
        s = ftos(self.ammo_rockets);
        sprint(other, s);
        sprint(other, " rockets");
    }
    
    
    if(self.ammo_cells)
    {
        
        if(acount)
        {
            sprint(other, ", ");
        }
        
        acount = WEAPON_SHOTGUN;
        s = ftos(self.ammo_cells);
        sprint(other, s);
        sprint(other, " cells");
    }
    
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/lock4.wav", WEAPON_SHOTGUN, ATTN_NORM);
    stuffcmd(other, "bf\n");
    remove(self);
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else    
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
};

/* TYPE: EV_POINTER */ ;
void() DropBackpack;
// DropBackpack
// function begins at statement 3295
// OP_LOAD_F	28	158	2537
// OP_LOAD_F	28	159	2538
// OP_ADD_F	2537	2538	2539
// OP_LOAD_F	28	160	2540
// OP_ADD_F	2539	2540	2541
// OP_LOAD_F	28	161	2542
// OP_ADD_F	2541	2542	2543
// OP_NOT_F	2543	0	2544
// OP_IFNOT	2544	2	0
// OP_RETURN	0	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	2536	0
// OP_ADDRESS	2536	105	2545
// OP_LOAD_V	28	105	2548
// OP_SUB_V	2548	2551	2554
// OP_STOREP_V	2554	2545	0
// OP_ADDRESS	2536	162	2557
// OP_LOAD_F	28	154	2558
// OP_STOREP_F	2558	2557	0
// OP_LOAD_F	2536	162	2559
// OP_EQ_F	2559	253	2560
// OP_IFNOT	2560	4	0
// OP_ADDRESS	2536	180	2561
// OP_STOREP_S	2562	2561	0
// OP_GOTO	45	0	0
// OP_LOAD_F	2536	162	2563
// OP_EQ_F	2563	254	2564
// OP_IFNOT	2564	4	0
// OP_ADDRESS	2536	180	2565
// OP_STOREP_S	2566	2565	0
// OP_GOTO	39	0	0
// OP_LOAD_F	2536	162	2567
// OP_EQ_F	2567	255	2568
// OP_IFNOT	2568	4	0
// OP_ADDRESS	2536	180	2569
// OP_STOREP_S	2127	2569	0
// OP_GOTO	33	0	0
// OP_LOAD_F	2536	162	2570
// OP_EQ_F	2570	256	2571
// OP_IFNOT	2571	4	0
// OP_ADDRESS	2536	180	2572
// OP_STOREP_S	2573	2572	0
// OP_GOTO	27	0	0
// OP_LOAD_F	2536	162	2574
// OP_EQ_F	2574	257	2575
// OP_IFNOT	2575	4	0
// OP_ADDRESS	2536	180	2576
// OP_STOREP_S	2139	2576	0
// OP_GOTO	21	0	0
// OP_LOAD_F	2536	162	2577
// OP_EQ_F	2577	258	2578
// OP_IFNOT	2578	4	0
// OP_ADDRESS	2536	180	2579
// OP_STOREP_S	2145	2579	0
// OP_GOTO	15	0	0
// OP_LOAD_F	2536	162	2580
// OP_EQ_F	2580	259	2581
// OP_IFNOT	2581	4	0
// OP_ADDRESS	2536	180	2582
// OP_STOREP_S	2151	2582	0
// OP_GOTO	9	0	0
// OP_LOAD_F	2536	162	2583
// OP_EQ_F	2583	260	2584
// OP_IFNOT	2584	4	0
// OP_ADDRESS	2536	180	2585
// OP_STOREP_S	2157	2585	0
// OP_GOTO	3	0	0
// OP_ADDRESS	2536	180	2586
// OP_STOREP_S	569	2586	0
// OP_ADDRESS	2536	158	2587
// OP_LOAD_F	28	158	2588
// OP_STOREP_F	2588	2587	0
// OP_ADDRESS	2536	159	2589
// OP_LOAD_F	28	159	2590
// OP_STOREP_F	2590	2589	0
// OP_ADDRESS	2536	160	2591
// OP_LOAD_F	28	160	2592
// OP_STOREP_F	2592	2591	0
// OP_ADDRESS	2536	161	2593
// OP_LOAD_F	28	161	2594
// OP_STOREP_F	2594	2593	0
// OP_ADDRESS	2536	116	2595
// OP_STOREP_F	2596	2595	0
// OP_ADDRESS	2536	114	2597
// OP_CALL0	452	0	0
// OP_MUL_F	1	1965	2599
// OP_ADD_F	2598	2599	2600
// OP_STOREP_F	2600	2597	0
// OP_ADDRESS	2536	115	2601
// OP_CALL0	452	0	0
// OP_MUL_F	1	1965	2602
// OP_ADD_F	2598	2602	2603
// OP_STOREP_F	2603	2601	0
// OP_ADDRESS	2536	182	2604
// OP_STOREP_F	222	2604	0
// OP_ADDRESS	2536	104	2605
// OP_STOREP_F	238	2605	0
// OP_ADDRESS	2536	103	2606
// OP_STOREP_F	231	2606	0
// OP_STORE_V	2536	4	0
// OP_STORE_V	2607	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	2536	4	0
// OP_STORE_V	1993	7	0
// OP_STORE_V	1996	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	2536	146	2608
// OP_STOREP_FNC	2478	2608	0
// OP_ADDRESS	2536	150	2609
// OP_ADD_F	31	1164	2610
// OP_STOREP_F	2610	2609	0
// OP_ADDRESS	2536	148	2611
// OP_STOREP_FNC	519	2611	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () DropBackpack =
{
    local entity item;
    
    if(!(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells))
    {
        return; /* TODO retvalue? */
    }
    
    item = spawn();
    item.origin = self.origin - '0.000 0.000 24.000';
    item.items = self.weapon;
    if(item.items == IT_AXE)
    {
        item.netname = "Axe";
    }
    else    
    {
        if(item.items == IT_SHOTGUN)
        {
            item.netname = "Shotgun";
        }
        else        
        {
            if(item.items == IT_SUPER_SHOTGUN)
            {
                item.netname = "Double-barrelled Shotgun";
            }
            else            
            {
                if(item.items == IT_NAILGUN)
                {
                    item.netname = "Nailgun";
                }
                else                
                {
                    if(item.items == IT_SUPER_NAILGUN)
                    {
                        item.netname = "Super Nailgun";
                    }
                    else                    
                    {
                        if(item.items == IT_GRENADE_LAUNCHER)
                        {
                            item.netname = "Grenade Launcher";
                        }
                        else                        
                        {
                            if(item.items == IT_ROCKET_LAUNCHER)
                            {
                                item.netname = "Rocket Launcher";
                            }
                            else                            
                            {
                                if(item.items == IT_LIGHTNING)
                                {
                                    item.netname = "Thunderbolt";
                                }
                                else                                
                                {
                                    item.netname = "";
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    item.ammo_shells = self.ammo_shells;
    item.ammo_nails = self.ammo_nails;
    item.ammo_rockets = self.ammo_rockets;
    item.ammo_cells = self.ammo_cells;
    item.velocity_z = 300.000;
    item.velocity = IMMEDIATE + (random() * 200.000);
    item.velocity_y = IMMEDIATE + (random() * 200.000);
    item.flags = FL_ITEM;
    item.solid = SOLID_TRIGGER;
    item.movetype = MOVETYPE_TOSS;
    setmodel(item, "progs/backpack.mdl");
    setsize(item, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    item.touch = BackpackTouch;
    item.nextthink = time + 120.000;
    item.think = SUB_Remove;
};

