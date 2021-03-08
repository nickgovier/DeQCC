
void () player_pain;

void () player_stand1;

void (vector org) spawn_tfog;

void (vector org, entity death_owner) spawn_tdeath;
float modelindex_eyes /* = 0.000 */;
float modelindex_player /* = 0.000 */;
float intermission_running /* = 0.000 */;
float intermission_exittime /* = 0.000 */;

// function info_intermission
// function number 214 begins at statement 5596
/*
 * OP_DONE	0	0	0
 */

void () info_intermission = {


};

// function SetChangeParms
// function number 215 begins at statement 5597
/*
 * OP_LOAD_F	28	152	3945
 * OP_LE	3945	337	3946
 * OP_IFNOT	3946	3	0
 * OP_CALL0	90	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	162	3947
 * OP_LOAD_F	28	162	3948
 * OP_LOAD_F	28	162	3949
 * OP_BITOR	270	271	3950
 * OP_BITOR	3950	272	3951
 * OP_BITOR	3951	273	3952
 * OP_BITOR	3952	274	3953
 * OP_BITOR	3953	275	3954
 * OP_BITAND	3949	3954	3955
 * OP_SUB_F	3948	3955	3956
 * OP_STOREP_F	3956	3947	0
 * OP_LOAD_F	28	152	3957
 * OP_GT	3957	1884	3958
 * OP_IFNOT	3958	3	0
 * OP_ADDRESS	28	152	3959
 * OP_STOREP_F	1884	3959	0
 * OP_LOAD_F	28	152	3960
 * OP_LT	3960	2227	3961
 * OP_IFNOT	3961	3	0
 * OP_ADDRESS	28	152	3962
 * OP_STOREP_F	2227	3962	0
 * OP_LOAD_F	28	162	3963
 * OP_STORE_F	3963	43	0
 * OP_LOAD_F	28	152	3964
 * OP_STORE_F	3964	44	0
 * OP_LOAD_F	28	188	3965
 * OP_STORE_F	3965	45	0
 * OP_LOAD_F	28	158	3966
 * OP_LT	3966	1890	3967
 * OP_IFNOT	3967	3	0
 * OP_STORE_F	1890	46	0
 * OP_GOTO	3	0	0
 * OP_LOAD_F	28	158	3968
 * OP_STORE_F	3968	46	0
 * OP_LOAD_F	28	159	3969
 * OP_STORE_F	3969	47	0
 * OP_LOAD_F	28	160	3970
 * OP_STORE_F	3970	48	0
 * OP_LOAD_F	28	161	3971
 * OP_STORE_F	3971	49	0
 * OP_LOAD_F	28	154	3972
 * OP_STORE_F	3972	50	0
 * OP_LOAD_F	28	187	3973
 * OP_MUL_F	3973	1884	3974
 * OP_STORE_F	3974	51	0
 * OP_DONE	0	0	0
 */

void () SetChangeParms = {

   if ( (self.health <= MSG_BROADCAST) ) {

      SetNewParms ();
      return ;

   }
   self.items = (self.items - (self.items & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD)));
   if ( (self.health > 100.000) ) {

      self.health = 100.000;

   }
   if ( (self.health < 50.000) ) {

      self.health = 50.000;

   }
   parm1 = self.items;
   parm2 = self.health;
   parm3 = self.armorvalue;
   if ( (self.ammo_shells < 25.000) ) {

      parm4 = 25.000;

   } else {

      parm4 = self.ammo_shells;

   }
   parm5 = self.ammo_nails;
   parm6 = self.ammo_rockets;
   parm7 = self.ammo_cells;
   parm8 = self.weapon;
   parm9 = (self.armortype * 100.000);

};

// function SetNewParms
// function number 216 begins at statement 5648
/*
 * OP_BITOR	254	253	3975
 * OP_STORE_F	3975	43	0
 * OP_STORE_F	1884	44	0
 * OP_STORE_F	337	45	0
 * OP_STORE_F	1890	46	0
 * OP_STORE_F	337	47	0
 * OP_STORE_F	337	48	0
 * OP_STORE_F	337	49	0
 * OP_STORE_F	2256	50	0
 * OP_STORE_F	337	51	0
 * OP_DONE	0	0	0
 */

void () SetNewParms = {

   parm1 = (IT_SHOTGUN | IT_AXE);
   parm2 = 100.000;
   parm3 = MSG_BROADCAST;
   parm4 = 25.000;
   parm5 = MSG_BROADCAST;
   parm6 = MSG_BROADCAST;
   parm7 = MSG_BROADCAST;
   parm8 = WEAPON_SHOTGUN;
   parm9 = MSG_BROADCAST;

};

// function DecodeLevelParms
// function number 217 begins at statement 5659
/*
 * OP_NOT_F	35	0	3977
 * OP_IFNOT	3977	5	0
 * OP_LOAD_S	30	130	3978
 * OP_EQ_S	3978	3763	3979
 * OP_IFNOT	3979	2	0
 * OP_CALL0	90	0	0
 * OP_ADDRESS	28	162	3980
 * OP_STOREP_F	43	3980	0
 * OP_ADDRESS	28	152	3981
 * OP_STOREP_F	44	3981	0
 * OP_ADDRESS	28	188	3982
 * OP_STOREP_F	45	3982	0
 * OP_ADDRESS	28	158	3983
 * OP_STOREP_F	46	3983	0
 * OP_ADDRESS	28	159	3984
 * OP_STOREP_F	47	3984	0
 * OP_ADDRESS	28	160	3985
 * OP_STOREP_F	48	3985	0
 * OP_ADDRESS	28	161	3986
 * OP_STOREP_F	49	3986	0
 * OP_ADDRESS	28	154	3987
 * OP_STOREP_F	50	3987	0
 * OP_ADDRESS	28	187	3988
 * OP_MUL_F	51	2752	3989
 * OP_STOREP_F	3989	3988	0
 * OP_DONE	0	0	0
 */

void () DecodeLevelParms = {

   if ( !deathmatch ) {

      if ( (world.model == "maps/start.bsp") ) {

         SetNewParms ();

      }

   }
   self.items = parm1;
   self.health = parm2;
   self.armorvalue = parm3;
   self.ammo_shells = parm4;
   self.ammo_nails = parm5;
   self.ammo_rockets = parm6;
   self.ammo_cells = parm7;
   self.weapon = parm8;
   self.armortype = (parm9 * 0.010);

};

// function FindIntermission
// function number 218 begins at statement 5685
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3993	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3991	0
 * OP_IFNOT	3991	22	0
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	2258	3994
 * OP_STORE_F	3994	3992	0
 * OP_GT	3992	2256	3995
 * OP_IFNOT	3995	16	0
 * OP_STORE_V	3991	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3993	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3991	0
 * OP_NOT_ENT	3991	0	3996
 * OP_IFNOT	3996	6	0
 * OP_STORE_V	3991	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3993	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3991	0
 * OP_SUB_F	3992	2256	3997
 * OP_STORE_F	3997	3992	0
 * OP_GOTO	-16	0	0
 * OP_RETURN	3991	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3998	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3991	0
 * OP_IFNOT	3991	2	0
 * OP_RETURN	3991	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3999	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3991	0
 * OP_IFNOT	3991	2	0
 * OP_RETURN	3991	0	0
 * OP_STORE_V	4000	4	0
 * OP_CALL1	456	0	0
 * OP_RETURN	30	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ () FindIntermission = {

   local entity spot;
   local float cyc;

   spot = find (world,classname,"info_intermission");
   if ( spot ) {

      cyc = (random () * WEAPON_SPIKES);
      while ( (cyc > WEAPON_SHOTGUN) ) {

         spot = find (spot,classname,"info_intermission");
         if ( !spot ) {

            spot = find (spot,classname,"info_intermission");

         }
         cyc = (cyc - WEAPON_SHOTGUN);

      }
      return ( spot );

   }
   spot = find (world,classname,"info_player_start");
   if ( spot ) {

      return ( spot );

   }
   spot = find (world,classname,"testplayerstart");
   if ( spot ) {

      return ( spot );

   }
   objerror ("FindIntermission: no spot");
   return ( world );

};
string nextmap /* = "" */;

// function GotoNextMap
// function number 219 begins at statement 5730
/*
 * OP_STORE_V	4003	4	0
 * OP_CALL1	487	0	0
 * OP_IFNOT	1	4	0
 * OP_STORE_V	34	4	0
 * OP_CALL1	504	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4001	4	0
 * OP_CALL1	504	0	0
 * OP_DONE	0	0	0
 */

void () GotoNextMap = {

   if ( cvar ("samelevel") ) {

      changelevel (mapname);

   } else {

      changelevel (nextmap);

   }

};

// function ExitIntermission
// function number 220 begins at statement 5739
/*
 * OP_IFNOT	35	3	0
 * OP_CALL0	4002	0	0
 * OP_RETURN	0	0	0
 * OP_ADD_F	31	2256	4005
 * OP_STORE_F	4005	3943	0
 * OP_ADD_F	3942	2256	4006
 * OP_STORE_F	4006	3942	0
 * OP_EQ_F	3942	2257	4007
 * OP_IFNOT	4007	92	0
 * OP_LOAD_S	30	130	4008
 * OP_EQ_S	4008	3770	4009
 * OP_IFNOT	4009	29	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	2257	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	4010	4	0
 * OP_CALL1	487	0	0
 * OP_NOT_F	1	0	4011
 * OP_IFNOT	4011	8	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4012	7	0
 * OP_CALL2	499	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4013	7	0
 * OP_CALL2	499	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	60	0	0
 * OP_LOAD_S	30	130	4014
 * OP_EQ_S	4014	3777	4015
 * OP_IFNOT	4015	18	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	2257	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4016	7	0
 * OP_CALL2	499	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	40	0	0
 * OP_LOAD_S	30	130	4017
 * OP_EQ_S	4017	3784	4018
 * OP_IFNOT	4018	18	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	2257	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4019	7	0
 * OP_CALL2	499	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_S	30	130	4020
 * OP_EQ_S	4020	3792	4021
 * OP_IFNOT	4021	17	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	2257	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4022	7	0
 * OP_CALL2	499	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	4002	0	0
 * OP_EQ_F	3942	370	4023
 * OP_IFNOT	4023	19	0
 * OP_STORE_V	4010	4	0
 * OP_CALL1	487	0	0
 * OP_NOT_F	1	0	4024
 * OP_IFNOT	4024	5	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	307	7	0
 * OP_CALL2	493	0	0
 * OP_RETURN	0	0	0
 * OP_BITAND	38	1876	4025
 * OP_EQ_F	4025	1876	4026
 * OP_IFNOT	4026	8	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	305	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	4027	7	0
 * OP_CALL2	499	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	4002	0	0
 * OP_DONE	0	0	0
 */

void () ExitIntermission = {

   if ( deathmatch ) {

      GotoNextMap ();
      return ;

   }
   intermission_exittime = (time + WEAPON_SHOTGUN);
   intermission_running = (intermission_running + WEAPON_SHOTGUN);
   if ( (intermission_running == WEAPON_ROCKET) ) {

      if ( (world.model == "maps/e1m7.bsp") ) {

         WriteByte (MSG_ALL,SVC_CDTRACK);
         WriteByte (MSG_ALL,WEAPON_ROCKET);
         WriteByte (MSG_ALL,AS_MELEE);
         if ( !cvar ("registered") ) {

            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,"As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task in the other three\nhaunted lands of Quake. Or are you? If\nyou don't register Quake, you'll never\nknow what awaits you in the Realm of\nBlack Magic, the Netherworld, and the\nElder World!");

         } else {

            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,"As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task. A Rune of magic\npower lies at the end of each haunted\nland of Quake. Go forth, seek the\ntotality of the four Runes!");

         }
         return ;

      } else {

         if ( (world.model == "maps/e2m6.bsp") ) {

            WriteByte (MSG_ALL,SVC_CDTRACK);
            WriteByte (MSG_ALL,WEAPON_ROCKET);
            WriteByte (MSG_ALL,AS_MELEE);
            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,"The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death and horror. But she is not\ninviolate! Armed with this Rune, you\nrealize that once all four Runes are\ncombined, the gate to Shub-Niggurath's\nPit will open, and you can face the\nWitch-Goddess herself in her frightful\notherworld cathedral.");
            return ;

         } else {

            if ( (world.model == "maps/e3m6.bsp") ) {

               WriteByte (MSG_ALL,SVC_CDTRACK);
               WriteByte (MSG_ALL,WEAPON_ROCKET);
               WriteByte (MSG_ALL,AS_MELEE);
               WriteByte (MSG_ALL,SVC_FINALE);
               WriteString (MSG_ALL,"The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your soul, and become ever more\nhard and determined to destroy the\nhideous creatures whose mere existence\nthreatens the souls and psyches of all\nthe population of Earth.");
               return ;

            } else {

               if ( (world.model == "maps/e4m7.bsp") ) {

                  WriteByte (MSG_ALL,SVC_CDTRACK);
                  WriteByte (MSG_ALL,WEAPON_ROCKET);
                  WriteByte (MSG_ALL,AS_MELEE);
                  WriteByte (MSG_ALL,SVC_FINALE);
                  WriteString (MSG_ALL,"Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being Shub-Niggurath\nweaves her dire plans to clear off all\nlife from the Earth, and bring her own\nfoul offspring to our world! For all the\ndwellers in these nightmare dimensions\nare her descendants! Once all Runes of\nmagic power are united, the energy\nbehind them will blast open the Gateway\nto Shub-Niggurath, and you can travel\nthere to foil the Hell-Mother's plots\nin person.");
                  return ;

               }

            }

         }

      }
      GotoNextMap ();

   }
   if ( (intermission_running == AS_MELEE) ) {

      if ( !cvar ("registered") ) {

         WriteByte (MSG_ALL,SVC_SELLSCREEN);
         return ;

      }
      if ( ((serverflags & 15.000) == 15.000) ) {

         WriteByte (MSG_ALL,SVC_FINALE);
         WriteString (MSG_ALL,"Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront her as an avatar of avenging\nEarth-life. If you defeat her, you will\nbe remembered forever as the savior of\nthe planet. If she conquers, it will be\nas if you had never been born.");
         return ;

      }

   }
   GotoNextMap ();

};

// function IntermissionThink
// function number 221 begins at statement 5861
/*
 * OP_LT	31	3943	4029
 * OP_IFNOT	4029	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	170	4030
 * OP_NOT_F	4030	0	4031
 * OP_LOAD_F	28	171	4032
 * OP_NOT_F	4032	0	4033
 * OP_AND	4031	4033	4034
 * OP_LOAD_F	28	172	4035
 * OP_NOT_F	4035	0	4036
 * OP_AND	4034	4036	4037
 * OP_IFNOT	4037	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	4004	0	0
 * OP_DONE	0	0	0
 */

void () IntermissionThink = {

   if ( (time < intermission_exittime) ) {

      return ;

   }
   if ( ((!self.button0 && !self.button1) && !self.button2) ) {

      return ;

   }
   ExitIntermission ();

};

// function execute_changelevel
// function number 222 begins at statement 5876
/*
 * OP_STORE_F	2256	3942	0
 * OP_IFNOT	35	4	0
 * OP_ADD_F	31	313	4040
 * OP_STORE_F	4040	3943	0
 * OP_GOTO	3	0	0
 * OP_ADD_F	31	2257	4041
 * OP_STORE_F	4041	3943	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	370	7	0
 * OP_CALL2	493	0	0
 * OP_CALL0	3990	0	0
 * OP_STORE_ENT	1	4039	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	712	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	29	0
 * OP_NE_E	29	30	4042
 * OP_IFNOT	4042	31	0
 * OP_ADDRESS	29	166	4043
 * OP_STOREP_V	286	4043	0
 * OP_ADDRESS	29	117	4046
 * OP_ADDRESS	29	175	4049
 * OP_LOAD_V	4039	395	4052
 * OP_STOREP_V	4052	4049	0
 * OP_STOREP_V	4052	4046	0
 * OP_ADDRESS	29	174	4055
 * OP_STOREP_F	214	4055	0
 * OP_ADDRESS	29	150	4056
 * OP_ADD_F	31	1491	4057
 * OP_STOREP_F	4057	4056	0
 * OP_ADDRESS	29	163	4058
 * OP_STOREP_F	250	4058	0
 * OP_ADDRESS	29	104	4059
 * OP_STOREP_F	237	4059	0
 * OP_ADDRESS	29	103	4060
 * OP_STOREP_F	227	4060	0
 * OP_ADDRESS	29	93	4061
 * OP_STOREP_F	337	4061	0
 * OP_LOAD_V	4039	105	4062
 * OP_STORE_V	29	4	0
 * OP_STORE_V	4062	7	0
 * OP_CALL2	448	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	712	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	29	0
 * OP_GOTO	-31	0	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	493	0	0
 * OP_DONE	0	0	0
 */

void () execute_changelevel = {

   local entity pos;

   intermission_running = WEAPON_SHOTGUN;
   if ( deathmatch ) {

      intermission_exittime = (time + TE_LIGHTNING1);

   } else {

      intermission_exittime = (time + WEAPON_ROCKET);

   }
   WriteByte (MSG_ALL,SVC_CDTRACK);
   WriteByte (MSG_ALL,AS_MELEE);
   WriteByte (MSG_ALL,AS_MELEE);
   pos = FindIntermission ();
   other = find (world,classname,"player");
   while ( (other != world) ) {

      other.view_ofs = VEC_ORIGIN;
      other.v_angle = pos.mangle;
      other.angles = pos.mangle;
      other.fixangle = TRUE;
      other.nextthink = (time + 0.500);
      other.takedamage = DAMAGE_NO;
      other.solid = SOLID_NOT;
      other.movetype = MOVETYPE_NONE;
      other.modelindex = MSG_BROADCAST;
      setorigin (other,pos.origin);
      other = find (other,classname,"player");

   }
   WriteByte (MSG_ALL,SVC_INTERMISSION);

};

// function changelevel_touch
// function number 223 begins at statement 5935
/*
 * OP_LOAD_S	29	129	4067
 * OP_NE_S	4067	712	4068
 * OP_IFNOT	4068	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	4069	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	2256	4070
 * OP_STORE_V	4069	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	2257	4071
 * OP_NE_S	34	4072	4073
 * OP_AND	4071	4073	4074
 * OP_OR	4070	4074	4075
 * OP_IFNOT	4075	7	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	4076	13	0
 * OP_CALL4	520	0	0
 * OP_RETURN	0	0	0
 * OP_OR	36	35	4077
 * OP_IFNOT	4077	6	0
 * OP_LOAD_S	29	180	4078
 * OP_STORE_V	4078	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4079	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	28	351	4080
 * OP_STORE_S	4080	4001	0
 * OP_CALL0	518	0	0
 * OP_LOAD_F	28	195	4081
 * OP_BITAND	4081	2256	4082
 * OP_EQ_F	35	337	4083
 * OP_AND	4082	4083	4084
 * OP_IFNOT	4084	3	0
 * OP_CALL0	4002	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	146	4085
 * OP_STOREP_FNC	517	4085	0
 * OP_ADDRESS	28	148	4086
 * OP_STOREP_FNC	4038	4086	0
 * OP_ADDRESS	28	150	4087
 * OP_ADD_F	31	603	4088
 * OP_STOREP_F	4088	4087	0
 * OP_DONE	0	0	0
 */

void () changelevel_touch = {

   local entity pos;

   if ( (other.classname != "player") ) {

      return ;

   }
   if ( ((cvar ("noexit") == WEAPON_SHOTGUN) || ((cvar ("noexit") == WEAPON_ROCKET) && (mapname != "start"))) ) {

      T_Damage (other,self,self,50000.000);
      return ;

   }
   if ( (coop || deathmatch) ) {

      bprint (other.netname);
      bprint (" exited the level\n");

   }
   nextmap = self.map;
   SUB_UseTargets ();
   if ( ((self.spawnflags & WEAPON_SHOTGUN) && (deathmatch == MSG_BROADCAST)) ) {

      GotoNextMap ();
      return ;

   }
   self.touch = SUB_Null;
   self.think = execute_changelevel;
   self.nextthink = (time + 0.100);

};

// function trigger_changelevel
// function number 224 begins at statement 5980
/*
 * OP_LOAD_S	28	351	4090
 * OP_NOT_S	4090	0	4091
 * OP_IFNOT	4091	3	0
 * OP_STORE_V	4092	4	0
 * OP_CALL1	456	0	0
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	4093
 * OP_STOREP_FNC	4065	4093	0
 * OP_DONE	0	0	0
 */

void () trigger_changelevel = {

   if ( !self.map ) {

      objerror ("changelevel trigger doesn't have map");

   }
   InitTrigger ();
   self.touch = changelevel_touch;

};

void () set_suicide_frame;

// function respawn
// function number 225 begins at statement 5989
/*
 * OP_IFNOT	36	7	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	3901	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	511	0	0
 * OP_CALL0	88	0	0
 * OP_GOTO	9	0	0
 * OP_IFNOT	35	6	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	3901	0	0
 * OP_CALL0	90	0	0
 * OP_CALL0	88	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4096	4	0
 * OP_CALL1	488	0	0
 * OP_DONE	0	0	0
 */

void () respawn = {

   if ( coop ) {

      CopyToBodyQue (self);
      setspawnparms (self);
      PutClientInServer ();

   } else {

      if ( deathmatch ) {

         CopyToBodyQue (self);
         SetNewParms ();
         PutClientInServer ();

      } else {

         localcmd ("restart\n");

      }

   }

};

// function ClientKill
// function number 226 begins at statement 6005
/*
 * OP_OR	36	35	4097
 * OP_AND	3942	4097	4098
 * OP_IFNOT	4098	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	180	4099
 * OP_STORE_V	4099	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4100	4	0
 * OP_CALL1	468	0	0
 * OP_CALL0	4094	0	0
 * OP_ADDRESS	28	93	4101
 * OP_STOREP_F	3941	4101	0
 * OP_ADDRESS	28	153	4102
 * OP_LOAD_F	28	153	4103
 * OP_SUB_F	4103	2257	4104
 * OP_STOREP_F	4104	4102	0
 * OP_CALL0	4095	0	0
 * OP_DONE	0	0	0
 */

void () ClientKill = {

   if ( (intermission_running && (coop || deathmatch)) ) {

      return ;

   }
   bprint (self.netname);
   bprint (" suicides\n");
   set_suicide_frame ();
   self.modelindex = modelindex_player;
   self.frags = (self.frags - WEAPON_ROCKET);
   respawn ();

};

// function CheckSpawnPoint
// function number 227 begins at statement 6023
/*
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (vector v) CheckSpawnPoint = {

   return ( FALSE );

};

// function SelectSpawnPoint
// function number 228 begins at statement 6025
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3999	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	4110	0
 * OP_IFNOT	4110	2	0
 * OP_RETURN	4110	0	0
 * OP_IFNOT	36	17	0
 * OP_STORE_V	3801	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	4113	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3801	0
 * OP_EQ_E	3801	30	4114
 * OP_IFNOT	4114	6	0
 * OP_STORE_V	3801	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3998	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	3801	0
 * OP_NE_E	3801	30	4115
 * OP_IFNOT	4115	2	0
 * OP_RETURN	3801	0	0
 * OP_GOTO	34	0	0
 * OP_IFNOT	35	33	0
 * OP_STORE_ENT	3801	4110	0
 * OP_IFNOT	2256	31	0
 * OP_STORE_V	4110	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	4116	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	4110	0
 * OP_NE_E	4110	30	4117
 * OP_IFNOT	4117	23	0
 * OP_EQ_E	4110	3801	4118
 * OP_IFNOT	4118	2	0
 * OP_RETURN	3801	0	0
 * OP_STORE_F	337	4112	0
 * OP_LOAD_V	4110	105	4119
 * OP_STORE_V	4119	4	0
 * OP_STORE_V	306	7	0
 * OP_CALL2	467	0	0
 * OP_STORE_ENT	1	4111	0
 * OP_IFNOT	4111	9	0
 * OP_LOAD_S	4111	129	4122
 * OP_EQ_S	4122	712	4123
 * OP_IFNOT	4123	3	0
 * OP_ADD_F	4112	2256	4124
 * OP_STORE_F	4124	4112	0
 * OP_LOAD_ENT	4111	164	4125
 * OP_STORE_ENT	4125	4111	0
 * OP_GOTO	-8	0	0
 * OP_EQ_F	4112	337	4126
 * OP_IFNOT	4126	3	0
 * OP_STORE_ENT	4110	3801	0
 * OP_RETURN	4110	0	0
 * OP_GOTO	-30	0	0
 * OP_IFNOT	38	8	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	4127	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	4110	0
 * OP_IFNOT	4110	2	0
 * OP_RETURN	4110	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	3998	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	4110	0
 * OP_NOT_ENT	4110	0	4128
 * OP_IFNOT	4128	3	0
 * OP_STORE_V	4129	4	0
 * OP_CALL1	455	0	0
 * OP_RETURN	4110	0	0
 * OP_DONE	0	0	0
 */
entity () SelectSpawnPoint = {

   local entity spot;
   local entity thing;
   local float pcount;

   spot = find (world,classname,"testplayerstart");
   if ( spot ) {

      return ( spot );

   }
   if ( coop ) {

      lastspawn = find (lastspawn,classname,"info_player_coop");
      if ( (lastspawn == world) ) {

         lastspawn = find (lastspawn,classname,"info_player_start");

      }
      if ( (lastspawn != world) ) {

         return ( lastspawn );

      }

   } else {

      if ( deathmatch ) {

         spot = lastspawn;
         while ( WEAPON_SHOTGUN ) {

            spot = find (spot,classname,"info_player_deathmatch");
            if ( (spot != world) ) {

               if ( (spot == lastspawn) ) {

                  return ( lastspawn );

               }
               pcount = MSG_BROADCAST;
               thing = findradius (spot.origin,SVC_CDTRACK);
               while ( thing ) {

                  if ( (thing.classname == "player") ) {

                     pcount = (pcount + WEAPON_SHOTGUN);

                  }
                  thing = thing.chain;

               }
               if ( (pcount == MSG_BROADCAST) ) {

                  lastspawn = spot;
                  return ( spot );

               }

            }

         }

      }

   }
   if ( serverflags ) {

      spot = find (world,classname,"info_player_start2");
      if ( spot ) {

         return ( spot );

      }

   }
   spot = find (world,classname,"info_player_start");
   if ( !spot ) {

      error ("PutClientInServer: no info_player_start on level");

   }
   return ( spot );

};

void () PlayerDie;

// function PutClientInServer
// function number 229 begins at statement 6101
/*
 * OP_CALL0	4109	0	0
 * OP_STORE_ENT	1	4131	0
 * OP_ADDRESS	28	129	4132
 * OP_STOREP_S	712	4132	0
 * OP_ADDRESS	28	152	4133
 * OP_STOREP_F	1884	4133	0
 * OP_ADDRESS	28	163	4134
 * OP_STOREP_F	252	4134	0
 * OP_ADDRESS	28	104	4135
 * OP_STOREP_F	240	4135	0
 * OP_ADDRESS	28	103	4136
 * OP_STOREP_F	228	4136	0
 * OP_ADDRESS	28	388	4137
 * OP_STOREP_F	337	4137	0
 * OP_ADDRESS	28	185	4138
 * OP_STOREP_F	1884	4138	0
 * OP_ADDRESS	28	182	4139
 * OP_STOREP_F	217	4139	0
 * OP_ADDRESS	28	391	4140
 * OP_ADD_F	31	2250	4141
 * OP_STOREP_F	4141	4140	0
 * OP_ADDRESS	28	420	4142
 * OP_STOREP_F	2257	4142	0
 * OP_ADDRESS	28	377	4143
 * OP_STOREP_F	337	4143	0
 * OP_ADDRESS	28	378	4144
 * OP_STOREP_F	337	4144	0
 * OP_ADDRESS	28	376	4145
 * OP_STOREP_F	337	4145	0
 * OP_ADDRESS	28	375	4146
 * OP_STOREP_F	337	4146	0
 * OP_ADDRESS	28	133	4147
 * OP_STOREP_F	337	4147	0
 * OP_ADDRESS	28	379	4148
 * OP_STOREP_F	337	4148	0
 * OP_CALL0	3976	0	0
 * OP_CALL0	1800	0	0
 * OP_ADDRESS	28	373	4149
 * OP_STOREP_F	31	4149	0
 * OP_ADDRESS	28	361	4150
 * OP_STOREP_FNC	3936	4150	0
 * OP_ADDRESS	28	362	4151
 * OP_STOREP_FNC	4130	4151	0
 * OP_ADDRESS	28	165	4152
 * OP_STOREP_F	246	4152	0
 * OP_ADDRESS	28	417	4153
 * OP_STOREP_F	337	4153	0
 * OP_ADDRESS	28	105	4154
 * OP_ADDRESS	28	109	4157
 * OP_LOAD_V	4131	105	4160
 * OP_ADD_V	4160	534	4163
 * OP_STOREP_V	4163	4157	0
 * OP_STOREP_V	4163	4154	0
 * OP_ADDRESS	28	117	4166
 * OP_LOAD_V	4131	117	4169
 * OP_STOREP_V	4169	4166	0
 * OP_ADDRESS	28	174	4172
 * OP_STOREP_F	214	4172	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	3850	7	0
 * OP_CALL2	449	0	0
 * OP_LOAD_F	28	93	4173
 * OP_STORE_F	4173	3940	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	3849	7	0
 * OP_CALL2	449	0	0
 * OP_LOAD_F	28	93	4174
 * OP_STORE_F	4174	3941	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	292	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	166	4175
 * OP_STOREP_V	4178	4175	0
 * OP_ADDRESS	28	113	4181
 * OP_STOREP_V	286	4181	0
 * OP_CALL0	3937	0	0
 * OP_OR	35	36	4184
 * OP_IFNOT	4184	9	0
 * OP_LOAD_V	28	117	4185
 * OP_STORE_V	4185	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	28	105	4188
 * OP_MUL_VF	59	894	4191
 * OP_ADD_V	4188	4191	4194
 * OP_STORE_V	4194	4	0
 * OP_CALL1	3938	0	0
 * OP_LOAD_V	28	105	4197
 * OP_STORE_V	4197	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	3939	0	0
 * OP_DONE	0	0	0
 */

void () PutClientInServer = {

   local entity spot;

   spot = SelectSpawnPoint ();
   self.classname = "player";
   self.health = 100.000;
   self.takedamage = DAMAGE_AIM;
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_WALK;
   self.show_hostile = MSG_BROADCAST;
   self.max_health = 100.000;
   self.flags = FL_CLIENT;
   self.air_finished = (time + 12.000);
   self.dmg = WEAPON_ROCKET;
   self.super_damage_finished = MSG_BROADCAST;
   self.radsuit_finished = MSG_BROADCAST;
   self.invisible_finished = MSG_BROADCAST;
   self.invincible_finished = MSG_BROADCAST;
   self.effects = MSG_BROADCAST;
   self.invincible_time = MSG_BROADCAST;
   DecodeLevelParms ();
   W_SetCurrentAmmo ();
   self.attack_finished = time;
   self.th_pain = player_pain;
   self.th_die = PlayerDie;
   self.deadflag = DEAD_NO;
   self.pausetime = MSG_BROADCAST;
   self.oldorigin = (spot.origin + '0.000 0.000 1.000');
   self.origin = (spot.origin + '0.000 0.000 1.000');
   self.angles = spot.angles;
   self.fixangle = TRUE;
   setmodel (self,"progs/eyes.mdl");
   modelindex_eyes = self.modelindex;
   setmodel (self,"progs/player.mdl");
   modelindex_player = self.modelindex;
   setsize (self,VEC_HULL_MIN,VEC_HULL_MAX);
   self.view_ofs = '0.000 0.000 22.000';
   self.velocity = VEC_ORIGIN;
   player_stand1 ();
   if ( (deathmatch || coop) ) {

      makevectors (self.angles);
      spawn_tfog ((self.origin + (v_forward * 20.000)));

   }
   spawn_tdeath (self.origin,self);

};

// function info_player_start
// function number 230 begins at statement 6193
/*
 * OP_DONE	0	0	0
 */

void () info_player_start = {


};

// function info_player_start2
// function number 231 begins at statement 6194
/*
 * OP_DONE	0	0	0
 */

void () info_player_start2 = {


};

// function testplayerstart
// function number 232 begins at statement 6195
/*
 * OP_DONE	0	0	0
 */

void () testplayerstart = {


};

// function info_player_deathmatch
// function number 233 begins at statement 6196
/*
 * OP_DONE	0	0	0
 */

void () info_player_deathmatch = {


};

// function info_player_coop
// function number 234 begins at statement 6197
/*
 * OP_DONE	0	0	0
 */

void () info_player_coop = {


};

// function NextLevel
// function number 235 begins at statement 6198
/*
 * OP_EQ_S	34	4072	4206
 * OP_IFNOT	4206	39	0
 * OP_STORE_V	4010	4	0
 * OP_CALL1	487	0	0
 * OP_NOT_F	1	0	4207
 * OP_IFNOT	4207	3	0
 * OP_STORE_S	4208	34	0
 * OP_GOTO	28	0	0
 * OP_BITAND	38	2256	4209
 * OP_NOT_F	4209	0	4210
 * OP_IFNOT	4210	5	0
 * OP_STORE_S	4208	34	0
 * OP_BITOR	38	2256	4211
 * OP_STORE_F	4211	38	0
 * OP_GOTO	21	0	0
 * OP_BITAND	38	2257	4212
 * OP_NOT_F	4212	0	4213
 * OP_IFNOT	4213	5	0
 * OP_STORE_S	4214	34	0
 * OP_BITOR	38	2257	4215
 * OP_STORE_F	4215	38	0
 * OP_GOTO	14	0	0
 * OP_BITAND	38	2258	4216
 * OP_NOT_F	4216	0	4217
 * OP_IFNOT	4217	5	0
 * OP_STORE_S	4218	34	0
 * OP_BITOR	38	2258	4219
 * OP_STORE_F	4219	38	0
 * OP_GOTO	7	0	0
 * OP_BITAND	38	2259	4220
 * OP_NOT_F	4220	0	4221
 * OP_IFNOT	4221	4	0
 * OP_STORE_S	4222	34	0
 * OP_SUB_F	38	315	4223
 * OP_STORE_F	4223	38	0
 * OP_CALL0	459	0	0
 * OP_STORE_ENT	1	4205	0
 * OP_ADDRESS	4205	351	4224
 * OP_STOREP_S	34	4224	0
 * OP_GOTO	13	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	4225	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	4205	0
 * OP_NOT_ENT	4205	0	4226
 * OP_IFNOT	4226	6	0
 * OP_STORE_S	4072	34	0
 * OP_CALL0	459	0	0
 * OP_STORE_ENT	1	4205	0
 * OP_ADDRESS	4205	351	4227
 * OP_STOREP_S	34	4227	0
 * OP_LOAD_S	4205	351	4228
 * OP_STORE_S	4228	4001	0
 * OP_STORE_F	214	342	0
 * OP_LOAD_F	4205	150	4229
 * OP_LT	4229	31	4230
 * OP_IFNOT	4230	6	0
 * OP_ADDRESS	4205	148	4231
 * OP_STOREP_FNC	4038	4231	0
 * OP_ADDRESS	4205	150	4232
 * OP_ADD_F	31	603	4233
 * OP_STOREP_F	4233	4232	0
 * OP_DONE	0	0	0
 */

void () NextLevel = {

   local entity o;

   if ( (mapname == "start") ) {

      if ( !cvar ("registered") ) {

         mapname = "e1m1";

      } else {

         if ( !(serverflags & WEAPON_SHOTGUN) ) {

            mapname = "e1m1";
            serverflags = (serverflags | WEAPON_SHOTGUN);

         } else {

            if ( !(serverflags & WEAPON_ROCKET) ) {

               mapname = "e2m1";
               serverflags = (serverflags | WEAPON_ROCKET);

            } else {

               if ( !(serverflags & WEAPON_SPIKES) ) {

                  mapname = "e3m1";
                  serverflags = (serverflags | WEAPON_SPIKES);

               } else {

                  if ( !(serverflags & WEAPON_BIG) ) {

                     mapname = "e4m1";
                     serverflags = (serverflags - TE_WIZSPIKE);

                  }

               }

            }

         }

      }
      o = spawn ();
      o.map = mapname;

   } else {

      o = find (world,classname,"trigger_changelevel");
      if ( !o ) {

         mapname = "start";
         o = spawn ();
         o.map = mapname;

      }

   }
   nextmap = o.map;
   gameover = TRUE;
   if ( (o.nextthink < time) ) {

      o.think = execute_changelevel;
      o.nextthink = (time + 0.100);

   }

};

// function CheckRules
// function number 236 begins at statement 6262
/*
 * OP_IFNOT	342	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	4237	4	0
 * OP_CALL1	487	0	0
 * OP_MUL_F	1	912	4238
 * OP_STORE_F	4238	4235	0
 * OP_STORE_V	4239	4	0
 * OP_CALL1	487	0	0
 * OP_STORE_F	1	4236	0
 * OP_AND	35	4235	4240
 * OP_GE	31	4235	4241
 * OP_AND	4240	4241	4242
 * OP_IFNOT	4242	3	0
 * OP_CALL0	4204	0	0
 * OP_RETURN	0	0	0
 * OP_AND	35	4236	4243
 * OP_LOAD_F	28	153	4244
 * OP_GE	4244	4236	4245
 * OP_AND	4243	4245	4246
 * OP_IFNOT	4246	3	0
 * OP_CALL0	4204	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () CheckRules = {

   local float timelimit;
   local float fraglimit;

   if ( gameover ) {

      return ;

   }
   timelimit = (cvar ("timelimit") * 60.000);
   fraglimit = cvar ("fraglimit");
   if ( ((deathmatch && timelimit) && (time >= timelimit)) ) {

      NextLevel ();
      return ;

   }
   if ( ((deathmatch && fraglimit) && (self.frags >= fraglimit)) ) {

      NextLevel ();
      return ;

   }

};

// function PlayerDeathThink
// function number 237 begins at statement 6285
/*
 * OP_LOAD_F	28	182	4250
 * OP_BITAND	4250	223	4251
 * OP_IFNOT	4251	18	0
 * OP_LOAD_V	28	113	4252
 * OP_STORE_V	4252	4	0
 * OP_CALL1	457	0	0
 * OP_STORE_F	1	4249	0
 * OP_SUB_F	4249	894	4255
 * OP_STORE_F	4255	4249	0
 * OP_LE	4249	337	4256
 * OP_IFNOT	4256	4	0
 * OP_ADDRESS	28	113	4257
 * OP_STOREP_V	286	4257	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	113	4260
 * OP_LOAD_V	28	113	4263
 * OP_STORE_V	4263	4	0
 * OP_CALL1	454	0	0
 * OP_MUL_FV	4249	1	4266
 * OP_STOREP_V	4266	4260	0
 * OP_LOAD_F	28	165	4269
 * OP_EQ_F	4269	248	4270
 * OP_IFNOT	4270	11	0
 * OP_LOAD_F	28	172	4271
 * OP_LOAD_F	28	171	4272
 * OP_OR	4271	4272	4273
 * OP_LOAD_F	28	170	4274
 * OP_OR	4273	4274	4275
 * OP_IFNOT	4275	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	165	4276
 * OP_STOREP_F	249	4276	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	172	4277
 * OP_NOT_F	4277	0	4278
 * OP_LOAD_F	28	171	4279
 * OP_NOT_F	4279	0	4280
 * OP_AND	4278	4280	4281
 * OP_LOAD_F	28	170	4282
 * OP_NOT_F	4282	0	4283
 * OP_AND	4281	4283	4284
 * OP_IFNOT	4284	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	170	4285
 * OP_STOREP_F	337	4285	0
 * OP_ADDRESS	28	171	4286
 * OP_STOREP_F	337	4286	0
 * OP_ADDRESS	28	172	4287
 * OP_STOREP_F	337	4287	0
 * OP_CALL0	4095	0	0
 * OP_DONE	0	0	0
 */

void () PlayerDeathThink = {

   local entity old_self;
   local float forward;

   if ( (self.flags & FL_ONGROUND) ) {

      forward = vlen (self.velocity);
      forward = (forward - 20.000);
      if ( (forward <= MSG_BROADCAST) ) {

         self.velocity = VEC_ORIGIN;

      } else {

         self.velocity = (forward * normalize (self.velocity));

      }

   }
   if ( (self.deadflag == DEAD_DEAD) ) {

      if ( ((self.button2 || self.button1) || self.button0) ) {

         return ;

      }
      self.deadflag = DEAD_RESPAWNABLE;
      return ;

   }
   if ( ((!self.button2 && !self.button1) && !self.button0) ) {

      return ;

   }
   self.button0 = MSG_BROADCAST;
   self.button1 = MSG_BROADCAST;
   self.button2 = MSG_BROADCAST;
   respawn ();

};

// function PlayerJump
// function number 238 begins at statement 6336
/*
 * OP_LOAD_F	28	182	4295
 * OP_BITAND	4295	225	4296
 * OP_IFNOT	4296	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	189	4297
 * OP_GE	4297	2257	4298
 * OP_IFNOT	4298	38	0
 * OP_LOAD_F	28	190	4299
 * OP_EQ_F	4299	278	4300
 * OP_IFNOT	4300	4	0
 * OP_ADDRESS	28	116	4301
 * OP_STOREP_F	1884	4301	0
 * OP_GOTO	9	0	0
 * OP_LOAD_F	28	190	4302
 * OP_EQ_F	4302	279	4303
 * OP_IFNOT	4303	4	0
 * OP_ADDRESS	28	116	4304
 * OP_STOREP_F	788	4304	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	116	4305
 * OP_STOREP_F	2227	4305	0
 * OP_LOAD_F	28	390	4306
 * OP_LT	4306	31	4307
 * OP_IFNOT	4307	20	0
 * OP_ADDRESS	28	390	4308
 * OP_ADD_F	31	2256	4309
 * OP_STOREP_F	4309	4308	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	4310
 * OP_IFNOT	4310	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3847	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3848	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	182	4311
 * OP_BITAND	4311	223	4312
 * OP_NOT_F	4312	0	4313
 * OP_IFNOT	4313	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	182	4314
 * OP_BITAND	4314	226	4315
 * OP_NOT_F	4315	0	4316
 * OP_IFNOT	4316	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	182	4317
 * OP_LOAD_F	28	182	4318
 * OP_LOAD_F	28	182	4319
 * OP_BITAND	4319	226	4320
 * OP_SUB_F	4318	4320	4321
 * OP_STOREP_F	4321	4317	0
 * OP_ADDRESS	28	182	4322
 * OP_LOAD_F	28	182	4323
 * OP_SUB_F	4323	223	4324
 * OP_STOREP_F	4324	4322	0
 * OP_ADDRESS	28	172	4325
 * OP_STOREP_F	337	4325	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3810	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	116	4326
 * OP_LOAD_F	28	116	4327
 * OP_ADD_F	4327	4328	4329
 * OP_STOREP_F	4329	4326	0
 * OP_DONE	0	0	0
 */

void () PlayerJump = {

   local vector start;
   local vector end;

   if ( (self.flags & FL_WATERJUMP) ) {

      return ;

   }
   if ( (self.waterlevel >= WEAPON_ROCKET) ) {

      if ( (self.watertype == CONTENT_WATER) ) {

         self.velocity_z = 100.000;

      } else {

         if ( (self.watertype == CONTENT_SLIME) ) {

            self.velocity_z = 80.000;

         } else {

            self.velocity_z = 50.000;

         }

      }
      if ( (self.swim_flag < time) ) {

         self.swim_flag = (time + WEAPON_SHOTGUN);
         if ( (random () < 0.500) ) {

            sound (self,CHAN_BODY,"misc/water1.wav",WEAPON_SHOTGUN,ATTN_NORM);

         } else {

            sound (self,CHAN_BODY,"misc/water2.wav",WEAPON_SHOTGUN,ATTN_NORM);

         }

      }
      return ;

   }
   if ( !(self.flags & FL_ONGROUND) ) {

      return ;

   }
   if ( !(self.flags & FL_JUMPRELEASED) ) {

      return ;

   }
   self.flags = (self.flags - (self.flags & FL_JUMPRELEASED));
   self.flags = (self.flags - FL_ONGROUND);
   self.button2 = MSG_BROADCAST;
   sound (self,CHAN_BODY,"player/plyrjmp8.wav",WEAPON_SHOTGUN,ATTN_NORM);
   self.velocity_z = (self.velocity_z + 270.000);

};
.vector finalangle;

// function WaterMove
// function number 239 begins at statement 6413
/*
 * OP_LOAD_F	28	103	4332
 * OP_EQ_F	4332	233	4333
 * OP_IFNOT	4333	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	152	4334
 * OP_LT	4334	337	4335
 * OP_IFNOT	4335	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	189	4336
 * OP_NE_F	4336	370	4337
 * OP_IFNOT	4337	27	0
 * OP_LOAD_F	28	391	4338
 * OP_LT	4338	31	4339
 * OP_IFNOT	4339	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3816	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_F	28	391	4340
 * OP_ADD_F	31	317	4341
 * OP_LT	4340	4341	4342
 * OP_IFNOT	4342	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3815	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	391	4343
 * OP_ADD_F	31	2250	4344
 * OP_STOREP_F	4344	4343	0
 * OP_ADDRESS	28	420	4345
 * OP_STOREP_F	2257	4345	0
 * OP_GOTO	25	0	0
 * OP_LOAD_F	28	391	4346
 * OP_LT	4346	31	4347
 * OP_IFNOT	4347	22	0
 * OP_LOAD_F	28	374	4348
 * OP_LT	4348	31	4349
 * OP_IFNOT	4349	19	0
 * OP_ADDRESS	28	420	4350
 * OP_LOAD_F	28	420	4351
 * OP_ADD_F	4351	2257	4352
 * OP_STOREP_F	4352	4350	0
 * OP_LOAD_F	28	420	4353
 * OP_GT	4353	1876	4354
 * OP_IFNOT	4354	3	0
 * OP_ADDRESS	28	420	4355
 * OP_STOREP_F	318	4355	0
 * OP_LOAD_F	28	420	4356
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_STORE_V	4356	13	0
 * OP_CALL4	520	0	0
 * OP_ADDRESS	28	374	4357
 * OP_ADD_F	31	2256	4358
 * OP_STOREP_F	4358	4357	0
 * OP_LOAD_F	28	189	4359
 * OP_NOT_F	4359	0	4360
 * OP_IFNOT	4360	15	0
 * OP_LOAD_F	28	182	4361
 * OP_BITAND	4361	218	4362
 * OP_IFNOT	4362	11	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3844	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	182	4363
 * OP_LOAD_F	28	182	4364
 * OP_SUB_F	4364	218	4365
 * OP_STOREP_F	4365	4363	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	190	4366
 * OP_EQ_F	4366	280	4367
 * OP_IFNOT	4367	22	0
 * OP_LOAD_F	28	4330	4368
 * OP_LT	4368	31	4369
 * OP_IFNOT	4369	18	0
 * OP_LOAD_F	28	378	4370
 * OP_GT	4370	31	4371
 * OP_IFNOT	4371	5	0
 * OP_ADDRESS	28	4330	4372
 * OP_ADD_F	31	2256	4373
 * OP_STOREP_F	4373	4372	0
 * OP_GOTO	4	0	0
 * OP_ADDRESS	28	4330	4374
 * OP_ADD_F	31	836	4375
 * OP_STOREP_F	4375	4374	0
 * OP_LOAD_F	28	189	4376
 * OP_MUL_F	318	4376	4377
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_STORE_V	4377	13	0
 * OP_CALL4	520	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	28	190	4378
 * OP_EQ_F	4378	279	4379
 * OP_IFNOT	4379	17	0
 * OP_LOAD_F	28	4330	4380
 * OP_LT	4380	31	4381
 * OP_LOAD_F	28	378	4382
 * OP_LT	4382	31	4383
 * OP_AND	4381	4383	4384
 * OP_IFNOT	4384	11	0
 * OP_ADDRESS	28	4330	4385
 * OP_ADD_F	31	2256	4386
 * OP_STOREP_F	4386	4385	0
 * OP_LOAD_F	28	189	4387
 * OP_MUL_F	2258	4387	4388
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_STORE_V	4388	13	0
 * OP_CALL4	520	0	0
 * OP_LOAD_F	28	182	4389
 * OP_BITAND	4389	218	4390
 * OP_NOT_F	4390	0	4391
 * OP_IFNOT	4391	34	0
 * OP_LOAD_F	28	190	4392
 * OP_EQ_F	4392	280	4393
 * OP_IFNOT	4393	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3843	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	190	4394
 * OP_EQ_F	4394	278	4395
 * OP_IFNOT	4395	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3842	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	190	4396
 * OP_EQ_F	4396	279	4397
 * OP_IFNOT	4397	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3841	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	182	4398
 * OP_LOAD_F	28	182	4399
 * OP_ADD_F	4399	218	4400
 * OP_STOREP_F	4400	4398	0
 * OP_ADDRESS	28	4330	4401
 * OP_STOREP_F	337	4401	0
 * OP_LOAD_F	28	182	4402
 * OP_BITAND	4402	225	4403
 * OP_NOT_F	4403	0	4404
 * OP_IFNOT	4404	10	0
 * OP_ADDRESS	28	113	4405
 * OP_LOAD_V	28	113	4408
 * OP_LOAD_F	28	189	4411
 * OP_MUL_F	1964	4411	4412
 * OP_MUL_F	4412	32	4413
 * OP_LOAD_V	28	113	4414
 * OP_MUL_FV	4413	4414	4417
 * OP_SUB_V	4408	4417	4420
 * OP_STOREP_V	4420	4405	0
 * OP_DONE	0	0	0
 */

void () WaterMove = {

   if ( (self.movetype == MOVETYPE_NOCLIP) ) {

      return ;

   }
   if ( (self.health < MSG_BROADCAST) ) {

      return ;

   }
   if ( (self.waterlevel != AS_MELEE) ) {

      if ( (self.air_finished < time) ) {

         sound (self,CHAN_VOICE,"player/gasp2.wav",WEAPON_SHOTGUN,ATTN_NORM);

      } else {

         if ( (self.air_finished < (time + TE_LIGHTNING3)) ) {

            sound (self,CHAN_VOICE,"player/gasp1.wav",WEAPON_SHOTGUN,ATTN_NORM);

         }

      }
      self.air_finished = (time + 12.000);
      self.dmg = WEAPON_ROCKET;

   } else {

      if ( (self.air_finished < time) ) {

         if ( (self.pain_finished < time) ) {

            self.dmg = (self.dmg + WEAPON_ROCKET);
            if ( (self.dmg > 15.000) ) {

               self.dmg = TE_LAVASPLASH;

            }
            T_Damage (self,world,world,self.dmg);
            self.pain_finished = (time + WEAPON_SHOTGUN);

         }

      }

   }
   if ( !self.waterlevel ) {

      if ( (self.flags & FL_INWATER) ) {

         sound (self,CHAN_BODY,"misc/outwater.wav",WEAPON_SHOTGUN,ATTN_NORM);
         self.flags = (self.flags - FL_INWATER);

      }
      return ;

   }
   if ( (self.watertype == CONTENT_LAVA) ) {

      if ( (self.dmgtime < time) ) {

         if ( (self.radsuit_finished > time) ) {

            self.dmgtime = (time + WEAPON_SHOTGUN);

         } else {

            self.dmgtime = (time + 0.200);

         }
         T_Damage (self,world,world,(TE_LAVASPLASH * self.waterlevel));

      }

   } else {

      if ( (self.watertype == CONTENT_SLIME) ) {

         if ( ((self.dmgtime < time) && (self.radsuit_finished < time)) ) {

            self.dmgtime = (time + WEAPON_SHOTGUN);
            T_Damage (self,world,world,(WEAPON_SPIKES * self.waterlevel));

         }

      }

   }
   if ( !(self.flags & FL_INWATER) ) {

      if ( (self.watertype == CONTENT_LAVA) ) {

         sound (self,CHAN_BODY,"player/inlava.wav",WEAPON_SHOTGUN,ATTN_NORM);

      }
      if ( (self.watertype == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,"player/inh2o.wav",WEAPON_SHOTGUN,ATTN_NORM);

      }
      if ( (self.watertype == CONTENT_SLIME) ) {

         sound (self,CHAN_BODY,"player/slimbrn2.wav",WEAPON_SHOTGUN,ATTN_NORM);

      }
      self.flags = (self.flags + FL_INWATER);
      self.dmgtime = MSG_BROADCAST;

   }
   if ( !(self.flags & FL_WATERJUMP) ) {

      self.velocity = (self.velocity - (((0.800 * self.waterlevel) * frametime) * self.velocity));

   }

};

// function CheckWaterJump
// function number 240 begins at statement 6585
/*
 * OP_LOAD_V	28	117	4430
 * OP_STORE_V	4430	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	28	105	4433
 * OP_STORE_V	4433	4424	0
 * OP_ADD_F	4426	2259	4436
 * OP_STORE_F	4436	4426	0
 * OP_STORE_F	337	61	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	454	0	0
 * OP_MUL_VF	59	4437	4438
 * OP_ADD_V	4424	4438	4441
 * OP_STORE_V	4441	4427	0
 * OP_STORE_V	4424	4	0
 * OP_STORE_V	4427	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	461	0	0
 * OP_LT	70	2256	4444
 * OP_IFNOT	4444	34	0
 * OP_LOAD_F	28	141	4445
 * OP_ADD_F	4426	4445	4446
 * OP_SUB_F	4446	2259	4447
 * OP_STORE_F	4447	4426	0
 * OP_MUL_VF	59	4437	4448
 * OP_ADD_V	4424	4448	4451
 * OP_STORE_V	4451	4427	0
 * OP_ADDRESS	28	202	4454
 * OP_MUL_VF	74	4457	4458
 * OP_STOREP_V	4458	4454	0
 * OP_STORE_V	4424	4	0
 * OP_STORE_V	4427	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	461	0	0
 * OP_EQ_F	70	2256	4461
 * OP_IFNOT	4461	17	0
 * OP_ADDRESS	28	182	4462
 * OP_LOAD_F	28	182	4463
 * OP_BITOR	4463	225	4464
 * OP_STOREP_F	4464	4462	0
 * OP_ADDRESS	28	116	4465
 * OP_STOREP_F	3028	4465	0
 * OP_ADDRESS	28	182	4466
 * OP_LOAD_F	28	182	4467
 * OP_LOAD_F	28	182	4468
 * OP_BITAND	4468	226	4469
 * OP_SUB_F	4467	4469	4470
 * OP_STOREP_F	4470	4466	0
 * OP_ADDRESS	28	186	4471
 * OP_ADD_F	31	2257	4472
 * OP_STOREP_F	4472	4471	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () CheckWaterJump = {

   local vector start;
   local vector end;

   makevectors (self.angles);
   start = self.origin;
   start_z = (start_z + WEAPON_BIG);
   v_forward_z = MSG_BROADCAST;
   normalize (v_forward);
   end = (start + (v_forward * 24.000));
   traceline (start,end,TRUE,self);
   if ( (trace_fraction < WEAPON_SHOTGUN) ) {

      start_z = ((start_z + self.maxs_z) - WEAPON_BIG);
      end = (start + (v_forward * 24.000));
      self.movedir = (trace_plane_normal * -50.000);
      traceline (start,end,TRUE,self);
      if ( (trace_fraction == WEAPON_SHOTGUN) ) {

         self.flags = (self.flags | FL_WATERJUMP);
         self.velocity_z = 225.000;
         self.flags = (self.flags - (self.flags & FL_JUMPRELEASED));
         self.teleport_time = (time + WEAPON_ROCKET);
         return ;

      }

   }

};

// function PlayerPreThink
// function number 241 begins at statement 6639
/*
 * OP_IFNOT	3942	3	0
 * OP_CALL0	4028	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	166	4476
 * OP_EQ_V	4476	286	4479
 * OP_IFNOT	4479	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	175	4480
 * OP_STORE_V	4480	4	0
 * OP_CALL1	447	0	0
 * OP_CALL0	4234	0	0
 * OP_CALL0	4331	0	0
 * OP_LOAD_F	28	189	4483
 * OP_EQ_F	4483	2257	4484
 * OP_IFNOT	4484	2	0
 * OP_CALL0	4423	0	0
 * OP_LOAD_F	28	165	4485
 * OP_GE	4485	248	4486
 * OP_IFNOT	4486	3	0
 * OP_CALL0	4247	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	165	4487
 * OP_EQ_F	4487	247	4488
 * OP_IFNOT	4488	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	172	4489
 * OP_IFNOT	4489	3	0
 * OP_CALL0	4288	0	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	182	4490
 * OP_LOAD_F	28	182	4491
 * OP_BITOR	4491	226	4492
 * OP_STOREP_F	4492	4490	0
 * OP_LOAD_F	28	417	4493
 * OP_LT	31	4493	4494
 * OP_IFNOT	4494	3	0
 * OP_ADDRESS	28	113	4495
 * OP_STOREP_V	286	4495	0
 * OP_LOAD_F	28	373	4498
 * OP_GT	31	4498	4499
 * OP_LOAD_F	28	157	4500
 * OP_EQ_F	4500	337	4501
 * OP_AND	4499	4501	4502
 * OP_LOAD_F	28	154	4503
 * OP_NE_F	4503	253	4504
 * OP_AND	4502	4504	4505
 * OP_IFNOT	4505	5	0
 * OP_ADDRESS	28	154	4506
 * OP_CALL0	2034	0	0
 * OP_STOREP_F	1	4506	0
 * OP_CALL0	1800	0	0
 * OP_DONE	0	0	0
 */

void () PlayerPreThink = {

   local float mspeed;
   local float aspeed;
   local float r;

   if ( intermission_running ) {

      IntermissionThink ();
      return ;

   }
   if ( (self.view_ofs == VEC_ORIGIN) ) {

      return ;

   }
   makevectors (self.v_angle);
   CheckRules ();
   WaterMove ();
   if ( (self.waterlevel == WEAPON_ROCKET) ) {

      CheckWaterJump ();

   }
   if ( (self.deadflag >= DEAD_DEAD) ) {

      PlayerDeathThink ();
      return ;

   }
   if ( (self.deadflag == DEAD_DYING) ) {

      return ;

   }
   if ( self.button2 ) {

      PlayerJump ();

   } else {

      self.flags = (self.flags | FL_JUMPRELEASED);

   }
   if ( (time < self.pausetime) ) {

      self.velocity = VEC_ORIGIN;

   }
   if ( (((time > self.attack_finished) && (self.currentammo == MSG_BROADCAST)) && (self.weapon != IT_AXE)) ) {

      self.weapon = W_BestWeapon ();
      W_SetCurrentAmmo ();

   }

};

// function CheckPowerups
// function number 242 begins at statement 6691
/*
 * OP_LOAD_F	28	152	4508
 * OP_LE	4508	337	4509
 * OP_IFNOT	4509	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	376	4510
 * OP_IFNOT	4510	63	0
 * OP_LOAD_F	28	382	4511
 * OP_LT	4511	31	4512
 * OP_IFNOT	4512	13	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	2463	10	0
 * OP_STORE_V	1491	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	382	4513
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	370	4514
 * OP_ADD_F	4514	2256	4515
 * OP_ADD_F	31	4515	4516
 * OP_STOREP_F	4516	4513	0
 * OP_LOAD_F	28	376	4517
 * OP_ADD_F	31	370	4518
 * OP_LT	4517	4518	4519
 * OP_IFNOT	4519	28	0
 * OP_LOAD_F	28	381	4520
 * OP_EQ_F	4520	2256	4521
 * OP_IFNOT	4521	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4522	7	0
 * OP_CALL2	469	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	2462	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	381	4523
 * OP_ADD_F	31	2256	4524
 * OP_STOREP_F	4524	4523	0
 * OP_LOAD_F	28	381	4525
 * OP_LT	4525	31	4526
 * OP_IFNOT	4526	7	0
 * OP_ADDRESS	28	381	4527
 * OP_ADD_F	31	2256	4528
 * OP_STOREP_F	4528	4527	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_LOAD_F	28	376	4529
 * OP_LT	4529	31	4530
 * OP_IFNOT	4530	9	0
 * OP_ADDRESS	28	162	4531
 * OP_LOAD_F	28	162	4532
 * OP_SUB_F	4532	272	4533
 * OP_STOREP_F	4533	4531	0
 * OP_ADDRESS	28	376	4534
 * OP_STOREP_F	337	4534	0
 * OP_ADDRESS	28	381	4535
 * OP_STOREP_F	337	4535	0
 * OP_ADDRESS	28	131	4536
 * OP_STOREP_F	337	4536	0
 * OP_ADDRESS	28	93	4537
 * OP_STOREP_F	3940	4537	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	93	4538
 * OP_STOREP_F	3941	4538	0
 * OP_LOAD_F	28	375	4539
 * OP_IFNOT	4539	57	0
 * OP_LOAD_F	28	375	4540
 * OP_ADD_F	31	370	4541
 * OP_LT	4540	4541	4542
 * OP_IFNOT	4542	28	0
 * OP_LOAD_F	28	379	4543
 * OP_EQ_F	4543	2256	4544
 * OP_IFNOT	4544	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4545	7	0
 * OP_CALL2	469	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	2444	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	379	4546
 * OP_ADD_F	31	2256	4547
 * OP_STOREP_F	4547	4546	0
 * OP_LOAD_F	28	379	4548
 * OP_LT	4548	31	4549
 * OP_IFNOT	4549	7	0
 * OP_ADDRESS	28	379	4550
 * OP_ADD_F	31	2256	4551
 * OP_STOREP_F	4551	4550	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_LOAD_F	28	375	4552
 * OP_LT	4552	31	4553
 * OP_IFNOT	4553	9	0
 * OP_ADDRESS	28	162	4554
 * OP_LOAD_F	28	162	4555
 * OP_SUB_F	4555	273	4556
 * OP_STOREP_F	4556	4554	0
 * OP_ADDRESS	28	379	4557
 * OP_STOREP_F	337	4557	0
 * OP_ADDRESS	28	375	4558
 * OP_STOREP_F	337	4558	0
 * OP_LOAD_F	28	375	4559
 * OP_GT	4559	31	4560
 * OP_IFNOT	4560	6	0
 * OP_ADDRESS	28	133	4561
 * OP_LOAD_F	28	133	4562
 * OP_BITOR	4562	336	4563
 * OP_STOREP_F	4563	4561	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	133	4564
 * OP_LOAD_F	28	133	4565
 * OP_LOAD_F	28	133	4566
 * OP_BITAND	4566	336	4567
 * OP_SUB_F	4565	4567	4568
 * OP_STOREP_F	4568	4564	0
 * OP_LOAD_F	28	377	4569
 * OP_IFNOT	4569	57	0
 * OP_LOAD_F	28	377	4570
 * OP_ADD_F	31	370	4571
 * OP_LT	4570	4571	4572
 * OP_IFNOT	4572	28	0
 * OP_LOAD_F	28	383	4573
 * OP_EQ_F	4573	2256	4574
 * OP_IFNOT	4574	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4575	7	0
 * OP_CALL2	469	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	2472	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	383	4576
 * OP_ADD_F	31	2256	4577
 * OP_STOREP_F	4577	4576	0
 * OP_LOAD_F	28	383	4578
 * OP_LT	4578	31	4579
 * OP_IFNOT	4579	7	0
 * OP_ADDRESS	28	383	4580
 * OP_ADD_F	31	2256	4581
 * OP_STOREP_F	4581	4580	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_LOAD_F	28	377	4582
 * OP_LT	4582	31	4583
 * OP_IFNOT	4583	9	0
 * OP_ADDRESS	28	162	4584
 * OP_LOAD_F	28	162	4585
 * OP_SUB_F	4585	275	4586
 * OP_STOREP_F	4586	4584	0
 * OP_ADDRESS	28	377	4587
 * OP_STOREP_F	337	4587	0
 * OP_ADDRESS	28	383	4588
 * OP_STOREP_F	337	4588	0
 * OP_LOAD_F	28	377	4589
 * OP_GT	4589	31	4590
 * OP_IFNOT	4590	6	0
 * OP_ADDRESS	28	133	4591
 * OP_LOAD_F	28	133	4592
 * OP_BITOR	4592	336	4593
 * OP_STOREP_F	4593	4591	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	133	4594
 * OP_LOAD_F	28	133	4595
 * OP_LOAD_F	28	133	4596
 * OP_BITAND	4596	336	4597
 * OP_SUB_F	4595	4597	4598
 * OP_STOREP_F	4598	4594	0
 * OP_LOAD_F	28	378	4599
 * OP_IFNOT	4599	46	0
 * OP_ADDRESS	28	391	4600
 * OP_ADD_F	31	2250	4601
 * OP_STOREP_F	4601	4600	0
 * OP_LOAD_F	28	378	4602
 * OP_ADD_F	31	370	4603
 * OP_LT	4602	4603	4604
 * OP_IFNOT	4604	28	0
 * OP_LOAD_F	28	385	4605
 * OP_EQ_F	4605	2256	4606
 * OP_IFNOT	4606	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4607	7	0
 * OP_CALL2	469	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	2453	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	385	4608
 * OP_ADD_F	31	2256	4609
 * OP_STOREP_F	4609	4608	0
 * OP_LOAD_F	28	385	4610
 * OP_LT	4610	31	4611
 * OP_IFNOT	4611	7	0
 * OP_ADDRESS	28	385	4612
 * OP_ADD_F	31	2256	4613
 * OP_STOREP_F	4613	4612	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1911	7	0
 * OP_CALL2	466	0	0
 * OP_LOAD_F	28	378	4614
 * OP_LT	4614	31	4615
 * OP_IFNOT	4615	9	0
 * OP_ADDRESS	28	162	4616
 * OP_LOAD_F	28	162	4617
 * OP_SUB_F	4617	274	4618
 * OP_STOREP_F	4618	4616	0
 * OP_ADDRESS	28	385	4619
 * OP_STOREP_F	337	4619	0
 * OP_ADDRESS	28	378	4620
 * OP_STOREP_F	337	4620	0
 * OP_DONE	0	0	0
 */

void () CheckPowerups = {

   if ( (self.health <= MSG_BROADCAST) ) {

      return ;

   }
   if ( self.invisible_finished ) {

      if ( (self.invisible_sound < time) ) {

         sound (self,CHAN_AUTO,"items/inv3.wav",0.500,ATTN_IDLE);
         self.invisible_sound = (time + ((random () * AS_MELEE) + WEAPON_SHOTGUN));

      }
      if ( (self.invisible_finished < (time + AS_MELEE)) ) {

         if ( (self.invisible_time == WEAPON_SHOTGUN) ) {

            sprint (self,"Ring of Shadows magic is fading\n");
            stuffcmd (self,"bf\n");
            sound (self,CHAN_AUTO,"items/inv2.wav",WEAPON_SHOTGUN,ATTN_NORM);
            self.invisible_time = (time + WEAPON_SHOTGUN);

         }
         if ( (self.invisible_time < time) ) {

            self.invisible_time = (time + WEAPON_SHOTGUN);
            stuffcmd (self,"bf\n");

         }

      }
      if ( (self.invisible_finished < time) ) {

         self.items = (self.items - IT_INVISIBILITY);
         self.invisible_finished = MSG_BROADCAST;
         self.invisible_time = MSG_BROADCAST;

      }
      self.frame = MSG_BROADCAST;
      self.modelindex = modelindex_eyes;

   } else {

      self.modelindex = modelindex_player;

   }
   if ( self.invincible_finished ) {

      if ( (self.invincible_finished < (time + AS_MELEE)) ) {

         if ( (self.invincible_time == WEAPON_SHOTGUN) ) {

            sprint (self,"Protection is almost burned out\n");
            stuffcmd (self,"bf\n");
            sound (self,CHAN_AUTO,"items/protect2.wav",WEAPON_SHOTGUN,ATTN_NORM);
            self.invincible_time = (time + WEAPON_SHOTGUN);

         }
         if ( (self.invincible_time < time) ) {

            self.invincible_time = (time + WEAPON_SHOTGUN);
            stuffcmd (self,"bf\n");

         }

      }
      if ( (self.invincible_finished < time) ) {

         self.items = (self.items - IT_INVULNERABILITY);
         self.invincible_time = MSG_BROADCAST;
         self.invincible_finished = MSG_BROADCAST;

      }
      if ( (self.invincible_finished > time) ) {

         self.effects = (self.effects | EF_DIMLIGHT);

      } else {

         self.effects = (self.effects - (self.effects & EF_DIMLIGHT));

      }

   }
   if ( self.super_damage_finished ) {

      if ( (self.super_damage_finished < (time + AS_MELEE)) ) {

         if ( (self.super_time == WEAPON_SHOTGUN) ) {

            sprint (self,"Quad Damage is wearing off\n");
            stuffcmd (self,"bf\n");
            sound (self,CHAN_AUTO,"items/damage2.wav",WEAPON_SHOTGUN,ATTN_NORM);
            self.super_time = (time + WEAPON_SHOTGUN);

         }
         if ( (self.super_time < time) ) {

            self.super_time = (time + WEAPON_SHOTGUN);
            stuffcmd (self,"bf\n");

         }

      }
      if ( (self.super_damage_finished < time) ) {

         self.items = (self.items - IT_QUAD);
         self.super_damage_finished = MSG_BROADCAST;
         self.super_time = MSG_BROADCAST;

      }
      if ( (self.super_damage_finished > time) ) {

         self.effects = (self.effects | EF_DIMLIGHT);

      } else {

         self.effects = (self.effects - (self.effects & EF_DIMLIGHT));

      }

   }
   if ( self.radsuit_finished ) {

      self.air_finished = (time + 12.000);
      if ( (self.radsuit_finished < (time + AS_MELEE)) ) {

         if ( (self.rad_time == WEAPON_SHOTGUN) ) {

            sprint (self,"Air supply in Biosuit expiring\n");
            stuffcmd (self,"bf\n");
            sound (self,CHAN_AUTO,"items/suit2.wav",WEAPON_SHOTGUN,ATTN_NORM);
            self.rad_time = (time + WEAPON_SHOTGUN);

         }
         if ( (self.rad_time < time) ) {

            self.rad_time = (time + WEAPON_SHOTGUN);
            stuffcmd (self,"bf\n");

         }

      }
      if ( (self.radsuit_finished < time) ) {

         self.items = (self.items - IT_SUIT);
         self.rad_time = MSG_BROADCAST;
         self.radsuit_finished = MSG_BROADCAST;

      }

   }

};

// function PlayerPostThink
// function number 243 begins at statement 6925
/*
 * OP_LOAD_V	28	166	4624
 * OP_EQ_V	4624	286	4627
 * OP_IFNOT	4627	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	165	4628
 * OP_IFNOT	4628	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	3679	0	0
 * OP_LOAD_F	28	389	4629
 * OP_LT	4629	4630	4631
 * OP_LOAD_F	28	182	4632
 * OP_BITAND	4632	223	4633
 * OP_AND	4631	4633	4634
 * OP_LOAD_F	28	152	4635
 * OP_GT	4635	337	4636
 * OP_AND	4634	4636	4637
 * OP_IFNOT	4637	36	0
 * OP_LOAD_F	28	190	4638
 * OP_EQ_F	4638	278	4639
 * OP_IFNOT	4639	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3840	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	24	0	0
 * OP_LOAD_F	28	389	4640
 * OP_LT	4640	4641	4642
 * OP_IFNOT	4642	15	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_STORE_V	313	13	0
 * OP_CALL4	520	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3812	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	393	4643
 * OP_STOREP_S	4644	4643	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3811	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	389	4645
 * OP_STOREP_F	337	4645	0
 * OP_LOAD_F	28	182	4646
 * OP_BITAND	4646	223	4647
 * OP_NOT_F	4647	0	4648
 * OP_IFNOT	4648	4	0
 * OP_ADDRESS	28	389	4649
 * OP_LOAD_F	28	116	4650
 * OP_STOREP_F	4650	4649	0
 * OP_CALL0	4507	0	0
 * OP_DONE	0	0	0
 */

void () PlayerPostThink = {

   local float mspeed;
   local float aspeed;
   local float r;

   if ( (self.view_ofs == VEC_ORIGIN) ) {

      return ;

   }
   if ( self.deadflag ) {

      return ;

   }
   W_WeaponFrame ();
   if ( (((self.jump_flag < -300.000) && (self.flags & FL_ONGROUND)) && (self.health > MSG_BROADCAST)) ) {

      if ( (self.watertype == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,"player/h2ojump.wav",WEAPON_SHOTGUN,ATTN_NORM);

      } else {

         if ( (self.jump_flag < -650.000) ) {

            T_Damage (self,world,world,TE_LIGHTNING1);
            sound (self,CHAN_VOICE,"player/land2.wav",WEAPON_SHOTGUN,ATTN_NORM);
            self.deathtype = "falling";

         } else {

            sound (self,CHAN_VOICE,"player/land.wav",WEAPON_SHOTGUN,ATTN_NORM);

         }

      }
      self.jump_flag = MSG_BROADCAST;

   }
   if ( !(self.flags & FL_ONGROUND) ) {

      self.jump_flag = self.velocity_z;

   }
   CheckPowerups ();

};

// function ClientConnect
// function number 244 begins at statement 6986
/*
 * OP_LOAD_S	28	180	4651
 * OP_STORE_V	4651	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4652	4	0
 * OP_CALL1	468	0	0
 * OP_IFNOT	3942	2	0
 * OP_CALL0	4004	0	0
 * OP_DONE	0	0	0
 */

void () ClientConnect = {

   bprint (self.netname);
   bprint (" entered the game\n");
   if ( intermission_running ) {

      ExitIntermission ();

   }

};

// function ClientDisconnect
// function number 245 begins at statement 6994
/*
 * OP_IFNOT	342	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	180	4653
 * OP_STORE_V	4653	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4654	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_F	28	153	4655
 * OP_STORE_V	4655	4	0
 * OP_CALL1	471	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4656	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	3827	10	0
 * OP_STORE_V	2256	13	0
 * OP_STORE_V	325	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	4094	0	0
 * OP_DONE	0	0	0
 */

void () ClientDisconnect = {

   if ( gameover ) {

      return ;

   }
   bprint (self.netname);
   bprint (" left the game with ");
   bprint (ftos (self.frags));
   bprint (" frags\n");
   sound (self,CHAN_BODY,"player/tornoff2.wav",WEAPON_SHOTGUN,ATTN_NONE);
   set_suicide_frame ();

};

// function ClientObituary
// function number 246 begins at statement 7016
/*
 * OP_CALL0	452	0	0
 * OP_STORE_F	1	4659	0
 * OP_LOAD_S	4657	129	4662
 * OP_EQ_S	4662	712	4663
 * OP_IFNOT	4663	345	0
 * OP_LOAD_S	4658	129	4664
 * OP_EQ_S	4664	4665	4666
 * OP_IFNOT	4666	19	0
 * OP_LOAD_S	4657	180	4667
 * OP_STORE_V	4667	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4668	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_ENT	4658	201	4669
 * OP_LOAD_S	4669	180	4670
 * OP_STORE_V	4670	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	1814	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_ENT	4658	201	4671
 * OP_ADDRESS	4671	153	4672
 * OP_LOAD_ENT	4658	201	4673
 * OP_LOAD_F	4673	153	4674
 * OP_ADD_F	4674	2256	4675
 * OP_STOREP_F	4675	4672	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4676
 * OP_EQ_S	4676	4677	4678
 * OP_IFNOT	4678	13	0
 * OP_STORE_V	4679	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4657	180	4680
 * OP_STORE_V	4680	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4681	4	0
 * OP_CALL1	468	0	0
 * OP_ADDRESS	4657	153	4682
 * OP_LOAD_F	4657	153	4683
 * OP_SUB_F	4683	2256	4684
 * OP_STOREP_F	4684	4682	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4685
 * OP_EQ_S	4685	712	4686
 * OP_IFNOT	4686	127	0
 * OP_EQ_E	4657	4658	4687
 * OP_IFNOT	4687	27	0
 * OP_ADDRESS	4658	153	4688
 * OP_LOAD_F	4658	153	4689
 * OP_SUB_F	4689	2256	4690
 * OP_STOREP_F	4690	4688	0
 * OP_LOAD_S	4657	180	4691
 * OP_STORE_V	4691	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_F	4657	154	4692
 * OP_EQ_F	4692	260	4693
 * OP_LOAD_F	4657	189	4694
 * OP_GT	4694	2256	4695
 * OP_AND	4693	4695	4696
 * OP_IFNOT	4696	4	0
 * OP_STORE_V	4697	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	4657	154	4698
 * OP_EQ_F	4698	258	4699
 * OP_IFNOT	4699	4	0
 * OP_STORE_V	4700	4	0
 * OP_CALL1	468	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4701	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	97	0	0
 * OP_EQ_F	37	2257	4702
 * OP_LOAD_F	4657	184	4703
 * OP_GT	4703	337	4704
 * OP_AND	4702	4704	4705
 * OP_LOAD_F	4657	184	4706
 * OP_LOAD_F	4658	184	4707
 * OP_EQ_F	4706	4707	4708
 * OP_AND	4705	4708	4709
 * OP_IFNOT	4709	25	0
 * OP_LT	4659	3461	4710
 * OP_IFNOT	4710	3	0
 * OP_STORE_S	4711	4660	0
 * OP_GOTO	10	0	0
 * OP_LT	4659	1491	4712
 * OP_IFNOT	4712	3	0
 * OP_STORE_S	4713	4660	0
 * OP_GOTO	6	0	0
 * OP_LT	4659	3464	4714
 * OP_IFNOT	4714	3	0
 * OP_STORE_S	4715	4660	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	4716	4660	0
 * OP_LOAD_S	4658	180	4717
 * OP_STORE_V	4717	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4660	4	0
 * OP_CALL1	468	0	0
 * OP_ADDRESS	4658	153	4718
 * OP_LOAD_F	4658	153	4719
 * OP_SUB_F	4719	2256	4720
 * OP_STOREP_F	4720	4718	0
 * OP_RETURN	0	0	0
 * OP_GOTO	64	0	0
 * OP_ADDRESS	4658	153	4721
 * OP_LOAD_F	4658	153	4722
 * OP_ADD_F	4722	2256	4723
 * OP_STOREP_F	4723	4721	0
 * OP_LOAD_F	4658	154	4724
 * OP_STORE_F	4724	4659	0
 * OP_EQ_F	4659	253	4725
 * OP_IFNOT	4725	3	0
 * OP_STORE_S	4726	4660	0
 * OP_STORE_S	1814	4661	0
 * OP_EQ_F	4659	254	4727
 * OP_IFNOT	4727	3	0
 * OP_STORE_S	4728	4660	0
 * OP_STORE_S	4729	4661	0
 * OP_EQ_F	4659	255	4730
 * OP_IFNOT	4730	3	0
 * OP_STORE_S	4731	4660	0
 * OP_STORE_S	4732	4661	0
 * OP_EQ_F	4659	256	4733
 * OP_IFNOT	4733	3	0
 * OP_STORE_S	4734	4660	0
 * OP_STORE_S	1814	4661	0
 * OP_EQ_F	4659	257	4735
 * OP_IFNOT	4735	3	0
 * OP_STORE_S	4736	4660	0
 * OP_STORE_S	1814	4661	0
 * OP_EQ_F	4659	258	4737
 * OP_IFNOT	4737	8	0
 * OP_STORE_S	4738	4660	0
 * OP_STORE_S	4739	4661	0
 * OP_LOAD_F	4657	152	4740
 * OP_LT	4740	4741	4742
 * OP_IFNOT	4742	3	0
 * OP_STORE_S	4743	4660	0
 * OP_STORE_S	4744	4661	0
 * OP_EQ_F	4659	259	4745
 * OP_IFNOT	4745	8	0
 * OP_STORE_S	4746	4660	0
 * OP_STORE_S	4747	4661	0
 * OP_LOAD_F	4657	152	4748
 * OP_LT	4748	4741	4749
 * OP_IFNOT	4749	3	0
 * OP_STORE_S	4743	4660	0
 * OP_STORE_S	4747	4661	0
 * OP_EQ_F	4659	260	4750
 * OP_IFNOT	4750	8	0
 * OP_STORE_S	4751	4660	0
 * OP_LOAD_F	4658	189	4752
 * OP_GT	4752	2256	4753
 * OP_IFNOT	4753	3	0
 * OP_STORE_S	4754	4661	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	4755	4661	0
 * OP_LOAD_S	4657	180	4756
 * OP_STORE_V	4756	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4660	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	180	4757
 * OP_STORE_V	4757	4	0
 * OP_CALL1	468	0	0
 * OP_STORE_V	4661	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	180	0	0
 * OP_ADDRESS	4657	153	4758
 * OP_LOAD_F	4657	153	4759
 * OP_SUB_F	4759	2256	4760
 * OP_STOREP_F	4760	4758	0
 * OP_LOAD_S	4657	180	4761
 * OP_STORE_V	4761	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_F	4658	182	4762
 * OP_BITAND	4762	219	4763
 * OP_IFNOT	4763	82	0
 * OP_LOAD_S	4658	129	4764
 * OP_EQ_S	4764	1286	4765
 * OP_IFNOT	4765	3	0
 * OP_STORE_V	4766	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4767
 * OP_EQ_S	4767	1247	4768
 * OP_IFNOT	4768	3	0
 * OP_STORE_V	4769	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4770
 * OP_EQ_S	4770	1259	4771
 * OP_IFNOT	4771	3	0
 * OP_STORE_V	4772	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4773
 * OP_EQ_S	4773	1357	4774
 * OP_IFNOT	4774	3	0
 * OP_STORE_V	4775	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4776
 * OP_EQ_S	4776	1275	4777
 * OP_IFNOT	4777	3	0
 * OP_STORE_V	4778	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4779
 * OP_EQ_S	4779	4780	4781
 * OP_IFNOT	4781	3	0
 * OP_STORE_V	4782	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4783
 * OP_EQ_S	4783	1263	4784
 * OP_IFNOT	4784	3	0
 * OP_STORE_V	4785	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4786
 * OP_EQ_S	4786	823	4787
 * OP_IFNOT	4787	3	0
 * OP_STORE_V	4788	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4789
 * OP_EQ_S	4789	1112	4790
 * OP_IFNOT	4790	3	0
 * OP_STORE_V	4791	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4792
 * OP_EQ_S	4792	4793	4794
 * OP_IFNOT	4794	3	0
 * OP_STORE_V	4795	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4796
 * OP_EQ_S	4796	1290	4797
 * OP_IFNOT	4797	3	0
 * OP_STORE_V	4798	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4799
 * OP_EQ_S	4799	1243	4800
 * OP_IFNOT	4800	3	0
 * OP_STORE_V	4801	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4802
 * OP_EQ_S	4802	1267	4803
 * OP_IFNOT	4803	3	0
 * OP_STORE_V	4804	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4805
 * OP_EQ_S	4805	1271	4806
 * OP_IFNOT	4806	3	0
 * OP_STORE_V	4807	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4808
 * OP_EQ_S	4808	1251	4809
 * OP_IFNOT	4809	3	0
 * OP_STORE_V	4810	4	0
 * OP_CALL1	468	0	0
 * OP_LOAD_S	4658	129	4811
 * OP_EQ_S	4811	1255	4812
 * OP_IFNOT	4812	3	0
 * OP_STORE_V	4813	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4814
 * OP_EQ_S	4814	4815	4816
 * OP_IFNOT	4816	4	0
 * OP_STORE_V	4817	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	4658	104	4818
 * OP_EQ_F	4818	241	4819
 * OP_NE_E	4658	30	4820
 * OP_AND	4819	4820	4821
 * OP_IFNOT	4821	4	0
 * OP_STORE_V	4822	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4823
 * OP_EQ_S	4823	4824	4825
 * OP_LOAD_S	4658	129	4826
 * OP_EQ_S	4826	4827	4828
 * OP_OR	4825	4828	4829
 * OP_IFNOT	4829	4	0
 * OP_STORE_V	4830	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4831
 * OP_EQ_S	4831	4832	4833
 * OP_IFNOT	4833	4	0
 * OP_STORE_V	4834	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4658	129	4835
 * OP_EQ_S	4835	4225	4836
 * OP_IFNOT	4836	4	0
 * OP_STORE_V	4837	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	4657	190	4838
 * OP_STORE_F	4838	4659	0
 * OP_EQ_F	4659	278	4839
 * OP_IFNOT	4839	11	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	4840
 * OP_IFNOT	4840	4	0
 * OP_STORE_V	4841	4	0
 * OP_CALL1	468	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4842	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	30	0	0
 * OP_EQ_F	4659	279	4843
 * OP_IFNOT	4843	11	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	4844
 * OP_IFNOT	4844	4	0
 * OP_STORE_V	4845	4	0
 * OP_CALL1	468	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4846	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	18	0	0
 * OP_EQ_F	4659	280	4847
 * OP_IFNOT	4847	16	0
 * OP_LOAD_F	4657	152	4848
 * OP_LT	4848	4849	4850
 * OP_IFNOT	4850	4	0
 * OP_STORE_V	4851	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	4852
 * OP_IFNOT	4852	4	0
 * OP_STORE_V	4853	4	0
 * OP_CALL1	468	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	4854	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	4657	393	4855
 * OP_EQ_S	4855	4644	4856
 * OP_IFNOT	4856	6	0
 * OP_ADDRESS	4657	393	4857
 * OP_STOREP_S	569	4857	0
 * OP_STORE_V	4858	4	0
 * OP_CALL1	468	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	4859	4	0
 * OP_CALL1	468	0	0
 * OP_DONE	0	0	0
 */

void (entity targ, entity attacker) ClientObituary = {

   local float rnum;
   local string deathstring;
   local string deathstring2;

   rnum = random ();
   if ( (targ.classname == "player") ) {

      if ( (attacker.classname == "teledeath") ) {

         bprint (targ.netname);
         bprint (" was telefragged by ");
         bprint (attacker.owner.netname);
         bprint ("\n");
         attacker.owner.frags = (attacker.owner.frags + WEAPON_SHOTGUN);
         return ;

      }
      if ( (attacker.classname == "teledeath2") ) {

         bprint ("Satan's power deflects ");
         bprint (targ.netname);
         bprint ("'s telefrag\n");
         targ.frags = (targ.frags - WEAPON_SHOTGUN);
         return ;

      }
      if ( (attacker.classname == "player") ) {

         if ( (targ == attacker) ) {

            attacker.frags = (attacker.frags - WEAPON_SHOTGUN);
            bprint (targ.netname);
            if ( ((targ.weapon == IT_LIGHTNING) && (targ.waterlevel > WEAPON_SHOTGUN)) ) {

               bprint (" discharges into the water.\n");
               return ;

            }
            if ( (targ.weapon == IT_GRENADE_LAUNCHER) ) {

               bprint (" tries to put the pin back in\n");

            } else {

               bprint (" becomes bored with life\n");

            }
            return ;

         } else {

            if ( (((teamplay == WEAPON_ROCKET) && (targ.team > MSG_BROADCAST)) && (targ.team == attacker.team)) ) {

               if ( (rnum < 0.250) ) {

                  deathstring = " mows down a teammate\n";

               } else {

                  if ( (rnum < 0.500) ) {

                     deathstring = " checks his glasses\n";

                  } else {

                     if ( (rnum < 0.750) ) {

                        deathstring = " gets a frag for the other team\n";

                     } else {

                        deathstring = " loses another friend\n";

                     }

                  }

               }
               bprint (attacker.netname);
               bprint (deathstring);
               attacker.frags = (attacker.frags - WEAPON_SHOTGUN);
               return ;

            } else {

               attacker.frags = (attacker.frags + WEAPON_SHOTGUN);
               rnum = attacker.weapon;
               if ( (rnum == IT_AXE) ) {

                  deathstring = " was ax-murdered by ";
                  deathstring2 = "\n";

               }
               if ( (rnum == IT_SHOTGUN) ) {

                  deathstring = " chewed on ";
                  deathstring2 = "'s boomstick\n";

               }
               if ( (rnum == IT_SUPER_SHOTGUN) ) {

                  deathstring = " ate 2 loads of ";
                  deathstring2 = "'s buckshot\n";

               }
               if ( (rnum == IT_NAILGUN) ) {

                  deathstring = " was nailed by ";
                  deathstring2 = "\n";

               }
               if ( (rnum == IT_SUPER_NAILGUN) ) {

                  deathstring = " was punctured by ";
                  deathstring2 = "\n";

               }
               if ( (rnum == IT_GRENADE_LAUNCHER) ) {

                  deathstring = " eats ";
                  deathstring2 = "'s pineapple\n";
                  if ( (targ.health < -40.000) ) {

                     deathstring = " was gibbed by ";
                     deathstring2 = "'s grenade\n";

                  }

               }
               if ( (rnum == IT_ROCKET_LAUNCHER) ) {

                  deathstring = " rides ";
                  deathstring2 = "'s rocket\n";
                  if ( (targ.health < -40.000) ) {

                     deathstring = " was gibbed by ";
                     deathstring2 = "'s rocket\n";

                  }

               }
               if ( (rnum == IT_LIGHTNING) ) {

                  deathstring = " accepts ";
                  if ( (attacker.waterlevel > WEAPON_SHOTGUN) ) {

                     deathstring2 = "'s discharge\n";

                  } else {

                     deathstring2 = "'s shaft\n";

                  }

               }
               bprint (targ.netname);
               bprint (deathstring);
               bprint (attacker.netname);
               bprint (deathstring2);

            }

         }
         return ;

      } else {

         targ.frags = (targ.frags - WEAPON_SHOTGUN);
         bprint (targ.netname);
         if ( (attacker.flags & FL_MONSTER) ) {

            if ( (attacker.classname == "monster_army") ) {

               bprint (" was shot by a Grunt\n");

            }
            if ( (attacker.classname == "monster_demon1") ) {

               bprint (" was eviscerated by a Fiend\n");

            }
            if ( (attacker.classname == "monster_dog") ) {

               bprint (" was mauled by a Rottweiler\n");

            }
            if ( (attacker.classname == "monster_dragon") ) {

               bprint (" was fried by a Dragon\n");

            }
            if ( (attacker.classname == "monster_enforcer") ) {

               bprint (" was blasted by an Enforcer\n");

            }
            if ( (attacker.classname == "monster_fish") ) {

               bprint (" was fed to the Rotfish\n");

            }
            if ( (attacker.classname == "monster_hell_knight") ) {

               bprint (" was slain by a Death Knight\n");

            }
            if ( (attacker.classname == "monster_knight") ) {

               bprint (" was slashed by a Knight\n");

            }
            if ( (attacker.classname == "monster_ogre") ) {

               bprint (" was destroyed by an Ogre\n");

            }
            if ( (attacker.classname == "monster_oldone") ) {

               bprint (" became one with Shub-Niggurath\n");

            }
            if ( (attacker.classname == "monster_shalrath") ) {

               bprint (" was exploded by a Vore\n");

            }
            if ( (attacker.classname == "monster_shambler") ) {

               bprint (" was smashed by a Shambler\n");

            }
            if ( (attacker.classname == "monster_tarbaby") ) {

               bprint (" was slimed by a Spawn\n");

            }
            if ( (attacker.classname == "monster_vomit") ) {

               bprint (" was vomited on by a Vomitus\n");

            }
            if ( (attacker.classname == "monster_wizard") ) {

               bprint (" was scragged by a Scrag\n");

            }
            if ( (attacker.classname == "monster_zombie") ) {

               bprint (" joins the Zombies\n");

            }
            return ;

         }
         if ( (attacker.classname == "explo_box") ) {

            bprint (" blew up\n");
            return ;

         }
         if ( ((attacker.solid == SOLID_BSP) && (attacker != world)) ) {

            bprint (" was squished\n");
            return ;

         }
         if ( ((attacker.classname == "trap_shooter") || (attacker.classname == "trap_spikeshooter")) ) {

            bprint (" was spiked\n");
            return ;

         }
         if ( (attacker.classname == "fireball") ) {

            bprint (" ate a lavaball\n");
            return ;

         }
         if ( (attacker.classname == "trigger_changelevel") ) {

            bprint (" tried to leave\n");
            return ;

         }
         rnum = targ.watertype;
         if ( (rnum == CONTENT_WATER) ) {

            if ( (random () < 0.500) ) {

               bprint (" sleeps with the fishes\n");

            } else {

               bprint (" sucks it down\n");

            }
            return ;

         } else {

            if ( (rnum == CONTENT_SLIME) ) {

               if ( (random () < 0.500) ) {

                  bprint (" gulped a load of slime\n");

               } else {

                  bprint (" can't exist on slime alone\n");

               }
               return ;

            } else {

               if ( (rnum == CONTENT_LAVA) ) {

                  if ( (targ.health < -15.000) ) {

                     bprint (" burst into flames\n");
                     return ;

                  }
                  if ( (random () < 0.500) ) {

                     bprint (" turned into hot slag\n");

                  } else {

                     bprint (" visits the Volcano God\n");

                  }
                  return ;

               }

            }

         }
         if ( (targ.deathtype == "falling") ) {

            targ.deathtype = "";
            bprint (" fell to his death\n");
            return ;

         }
         bprint (" died\n");

      }

   }

};
