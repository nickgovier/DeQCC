// Adminmenu
// function begins at statement 18487, parm_start=13333
// OP_STORE_V	28	4	0
// OP_STORE_V	13333	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13334	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13335	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13336	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13337	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13338	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13339	7	0
// OP_CALL2	518	0	0
// OP_DONE	0	0	0
void () Adminmenu = 
{
    sprint(self, "Admin Commands:\n");
    sprint(self, "1: kick\n");
    sprint(self, "2: change map\n");
    sprint(self, "3: set timelimit\n");
    sprint(self, "4: set fraglimit\n");
    sprint(self, "5: set temp1\n");
    sprint(self, "9: exit menu\n");
};

// CheckAdminCmd
// function begins at statement 18509, parm_start=13341
// OP_LT	114	619	13345
// OP_IFNOT	13345	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	198	13346
// OP_EQ_F	13346	13347	13348
// OP_IFNOT	13348	36	0
// OP_LOAD_F	28	258	13349
// OP_EQ_F	13349	808	13350
// OP_IFNOT	13350	19	0
// OP_ADDRESS	28	258	13351
// OP_STOREP_F	788	13351	0
// OP_LOAD_S	28	205	13352
// OP_STORE_V	13352	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	13353	4	0
// OP_CALL1	517	0	0
// OP_CALL0	13332	0	0
// OP_ADDRESS	28	259	13354
// OP_STOREP_F	619	13354	0
// OP_ADDRESS	28	262	13355
// OP_STOREP_F	677	13355	0
// OP_ADDRESS	28	261	13356
// OP_STOREP_F	677	13356	0
// OP_ADDRESS	28	260	13357
// OP_STOREP_F	619	13357	0
// OP_RETURN	0	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	258	13358
// OP_LT	13358	788	13359
// OP_IFNOT	13359	12	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13360	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	262	13361
// OP_STOREP_F	677	13361	0
// OP_ADDRESS	28	260	13362
// OP_STOREP_F	619	13362	0
// OP_ADDRESS	28	261	13363
// OP_STOREP_F	816	13363	0
// OP_ADDRESS	28	259	13364
// OP_STOREP_F	619	13364	0
// OP_LOAD_F	28	262	13365
// OP_IFNOT	13365	50	0
// OP_LOAD_F	28	198	13366
// OP_GT	13366	619	13367
// OP_LOAD_F	28	198	13368
// OP_LT	13368	830	13369
// OP_AND	13367	13369	13370
// OP_IFNOT	13370	44	0
// OP_ADDRESS	28	260	13371
// OP_LOAD_F	28	260	13372
// OP_MUL_F	13372	827	13373
// OP_STOREP_F	13373	13371	0
// OP_LOAD_F	28	198	13374
// OP_LT	13374	827	13375
// OP_IFNOT	13375	6	0
// OP_ADDRESS	28	260	13376
// OP_LOAD_F	28	260	13377
// OP_LOAD_F	28	198	13378
// OP_ADD_F	13377	13378	13379
// OP_STOREP_F	13379	13376	0
// OP_ADDRESS	28	198	13380
// OP_STOREP_F	619	13380	0
// OP_ADDRESS	28	261	13381
// OP_LOAD_F	28	261	13382
// OP_SUB_F	13382	677	13383
// OP_STOREP_F	13383	13381	0
// OP_LOAD_F	28	261	13384
// OP_LT	13384	677	13385
// OP_IFNOT	13385	23	0
// OP_ADDRESS	28	262	13386
// OP_STOREP_F	619	13386	0
// OP_LOAD_F	28	260	13387
// OP_EQ_F	13387	114	13388
// OP_IFNOT	13388	18	0
// OP_ADDRESS	28	258	13389
// OP_STOREP_F	788	13389	0
// OP_LOAD_S	28	205	13390
// OP_STORE_V	13390	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	13353	4	0
// OP_CALL1	517	0	0
// OP_CALL0	13332	0	0
// OP_ADDRESS	28	259	13391
// OP_STOREP_F	619	13391	0
// OP_ADDRESS	28	262	13392
// OP_STOREP_F	677	13392	0
// OP_ADDRESS	28	261	13393
// OP_STOREP_F	677	13393	0
// OP_ADDRESS	28	260	13394
// OP_STOREP_F	619	13394	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	258	13395
// OP_NE_F	13395	788	13396
// OP_IFNOT	13396	12	0
// OP_LOAD_F	28	198	13397
// OP_GT	13397	619	13398
// OP_LOAD_F	28	258	13399
// OP_LT	13399	788	13400
// OP_AND	13398	13400	13401
// OP_IFNOT	13401	3	0
// OP_ADDRESS	28	258	13402
// OP_STOREP_F	619	13402	0
// OP_ADDRESS	28	259	13403
// OP_STOREP_F	619	13403	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	262	13404
// OP_IFNOT	13404	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	259	13405
// OP_EQ_F	13405	619	13406
// OP_IFNOT	13406	107	0
// OP_ADDRESS	28	259	13407
// OP_LOAD_F	28	260	13408
// OP_STOREP_F	13408	13407	0
// OP_ADDRESS	28	260	13409
// OP_STOREP_F	619	13409	0
// OP_ADDRESS	28	262	13410
// OP_STOREP_F	677	13410	0
// OP_LOAD_F	28	259	13411
// OP_EQ_F	13411	677	13412
// OP_IFNOT	13412	44	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13413	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13343	0
// OP_STORE_F	677	13341	0
// OP_NE_E	13343	30	13414
// OP_IFNOT	13414	30	0
// OP_STORE_V	13341	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_LT	13341	827	13415
// OP_IFNOT	13415	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13416	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13344	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13416	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13343	205	13417
// OP_STORE_V	13417	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2073	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	13343	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13343	0
// OP_ADD_F	13341	677	13418
// OP_STORE_F	13418	13341	0
// OP_GOTO	-30	0	0
// OP_ADDRESS	28	261	13419
// OP_STOREP_F	806	13419	0
// OP_GOTO	53	0	0
// OP_LOAD_F	28	259	13420
// OP_EQ_F	13420	806	13421
// OP_IFNOT	13421	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13422	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	261	13423
// OP_STOREP_F	806	13423	0
// OP_GOTO	44	0	0
// OP_LOAD_F	28	259	13424
// OP_EQ_F	13424	788	13425
// OP_IFNOT	13425	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13426	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	261	13427
// OP_STOREP_F	806	13427	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	259	13428
// OP_EQ_F	13428	808	13429
// OP_IFNOT	13429	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13430	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	261	13431
// OP_STOREP_F	788	13431	0
// OP_GOTO	26	0	0
// OP_LOAD_F	28	259	13432
// OP_EQ_F	13432	813	13433
// OP_IFNOT	13433	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13434	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	261	13435
// OP_STOREP_F	788	13435	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	259	13436
// OP_EQ_F	13436	824	13437
// OP_IFNOT	13437	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13438	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	262	13439
// OP_STOREP_F	619	13439	0
// OP_ADDRESS	28	261	13440
// OP_STOREP_F	619	13440	0
// OP_ADDRESS	28	260	13441
// OP_STOREP_F	619	13441	0
// OP_ADDRESS	28	259	13442
// OP_STOREP_F	619	13442	0
// OP_ADDRESS	28	258	13443
// OP_STOREP_F	808	13443	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	259	13444
// OP_EQ_F	13444	677	13445
// OP_IFNOT	13445	54	0
// OP_LOAD_F	28	260	13446
// OP_SUB_F	13446	677	13447
// OP_STORE_F	13447	13341	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13343	0
// OP_NE_E	13343	30	13448
// OP_GT	13341	619	13449
// OP_AND	13448	13449	13450
// OP_IFNOT	13450	9	0
// OP_STORE_V	13343	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13343	0
// OP_SUB_F	13341	677	13451
// OP_STORE_F	13451	13341	0
// OP_GOTO	-11	0	0
// OP_NE_E	13343	30	13452
// OP_IFNOT	13452	18	0
// OP_STORE_V	13343	4	0
// OP_STORE_V	13453	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	13343	4	0
// OP_STORE_V	13454	7	0
// OP_CALL2	515	0	0
// OP_LOAD_S	13343	205	13455
// OP_STORE_V	13455	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	13456	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	28	205	13457
// OP_STORE_V	13457	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	517	0	0
// OP_GOTO	14	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13458	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	260	13459
// OP_STORE_V	13459	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13344	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2073	7	0
// OP_CALL2	518	0	0
// OP_GOTO	90	0	0
// OP_LOAD_F	28	259	13460
// OP_EQ_F	13460	806	13461
// OP_IFNOT	13461	37	0
// OP_LOAD_F	28	260	13462
// OP_STORE_F	13462	13342	0
// OP_BITAND	38	2977	13463
// OP_SUB_F	38	13463	13464
// OP_ADD_F	13464	13342	13465
// OP_STORE_F	13465	38	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13466	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	12900	4	0
// OP_CALL1	536	0	0
// OP_GE	13342	1	13467
// OP_IFNOT	13467	2	0
// OP_STORE_F	619	13342	0
// OP_STORE_V	13468	4	0
// OP_CALL1	537	0	0
// OP_MUL_F	13342	655	13469
// OP_STORE_V	13469	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	13341	0
// OP_STORE_V	13341	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	13344	4	0
// OP_CALL1	537	0	0
// OP_MUL_F	13341	827	13470
// OP_SUB_F	13342	13470	13471
// OP_STORE_F	13471	13341	0
// OP_STORE_V	13341	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	13344	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	13472	4	0
// OP_CALL1	537	0	0
// OP_GOTO	51	0	0
// OP_LOAD_F	28	259	13473
// OP_EQ_F	13473	788	13474
// OP_IFNOT	13474	15	0
// OP_LOAD_F	28	260	13475
// OP_STORE_V	13475	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	13476	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	13344	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13477	7	0
// OP_CALL2	518	0	0
// OP_GOTO	34	0	0
// OP_LOAD_F	28	259	13478
// OP_EQ_F	13478	808	13479
// OP_IFNOT	13479	15	0
// OP_LOAD_F	28	260	13480
// OP_STORE_V	13480	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	13481	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	13344	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13482	7	0
// OP_CALL2	518	0	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	259	13483
// OP_EQ_F	13483	813	13484
// OP_IFNOT	13484	14	0
// OP_LOAD_F	28	260	13485
// OP_STORE_V	13485	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13344	0
// OP_STORE_V	13486	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	13344	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13487	7	0
// OP_CALL2	518	0	0
// OP_CALL0	13332	0	0
// OP_ADDRESS	28	260	13488
// OP_STOREP_F	619	13488	0
// OP_ADDRESS	28	259	13489
// OP_STOREP_F	619	13489	0
// OP_ADDRESS	28	198	13490
// OP_STOREP_F	619	13490	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckAdminCmd = 
{
    local float n;
    local float n2;
    local entity p;
    local string st;
    
    if(admin_p < 0.000)
    {
        return;
    }
    
    
    if(self.impulse == 99.000)
    {
        if(self.accesslvl == 4.000)
        {
            self.accesslvl = 3.000;
            bprint(self.netname);
            bprint(" has become a sysop\n");
            Adminmenu();
            self.accessparm = 0.000;
            self.gettingnum = 1.000;
            self.numcurspos = 1.000;
            self.twonumbers = 0.000;
            return;
        }
        else
        {
            
            if(self.accesslvl < 3.000)
            {
                sprint(self, "Type your admin password (6 digits).\n");
                self.gettingnum = 1.000;
                self.twonumbers = 0.000;
                self.numcurspos = 6.000;
                self.accessparm = 0.000;
            }
            
        }
        
    }
    
    
    if(self.gettingnum)
    {
        
        if((self.impulse > 0.000) && (self.impulse < 11.000))
        {
            self.twonumbers = self.twonumbers * 10.000;
            
            if(self.impulse < 10.000)
            {
                self.twonumbers = self.twonumbers + self.impulse;
            }
            
            self.impulse = 0.000;
            self.numcurspos = self.numcurspos - 1.000;
            
            if(self.numcurspos < 1.000)
            {
                self.gettingnum = 0.000;
                
                if(self.twonumbers == admin_p)
                {
                    self.accesslvl = 3.000;
                    bprint(self.netname);
                    bprint(" has become a sysop\n");
                    Adminmenu();
                    self.accessparm = 0.000;
                    self.gettingnum = 1.000;
                    self.numcurspos = 1.000;
                    self.twonumbers = 0.000;
                    return;
                }
                
            }
            
        }
        
    }
    
    
    if(self.accesslvl != 3.000)
    {
        
        if((self.impulse > 0.000) && (self.accesslvl < 3.000))
        {
            self.accesslvl = 0.000;
        }
        
        self.accessparm = 0.000;
        return;
    }
    
    
    if(self.gettingnum)
    {
        return;
    }
    
    
    if(self.accessparm == 0.000)
    {
        self.accessparm = self.twonumbers;
        self.twonumbers = 0.000;
        self.gettingnum = 1.000;
        if(self.accessparm == 1.000)
        {
            sprint(self, "Kick (00 - 99):\n");
            p = find(world, classname, "player");
            n = 1.000;
            
            while(p != world)
            {
                st = ftos(n);
                
                if(n < 10.000)
                {
                    sprint(self, " ");
                }
                
                sprint(self, st);
                sprint(self, " ");
                sprint(self, p.netname);
                sprint(self, "\n");
                p = find(p, classname, "player");
                n = n + 1.000;
            }
            
            self.numcurspos = 2.000;
        }
        else
        {
            if(self.accessparm == 2.000)
            {
                sprint(self, "Run map(00-99).cfg file.\n");
                self.numcurspos = 2.000;
            }
            else
            {
                if(self.accessparm == 3.000)
                {
                    sprint(self, "Set timelimit (00-99).\n");
                    self.numcurspos = 2.000;
                }
                else
                {
                    if(self.accessparm == 4.000)
                    {
                        sprint(self, "Set fraglimit (000-999).\n");
                        self.numcurspos = 3.000;
                    }
                    else
                    {
                        if(self.accessparm == 5.000)
                        {
                            sprint(self, "Set temp1 (000-999).\n");
                            self.numcurspos = 3.000;
                        }
                        else
                        {
                            
                            if(self.accessparm == 9.000)
                            {
                                sprint(self, "Goodbye. Press impulse 99 to get back to menu.\n");
                                self.gettingnum = 0.000;
                                self.numcurspos = 0.000;
                                self.twonumbers = 0.000;
                                self.accessparm = 0.000;
                                self.accesslvl = 4.000;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    if(self.accessparm == 1.000)
    {
        n = self.twonumbers - 1.000;
        p = find(world, classname, "player");
        
        if((p != world) && (n > 0.000))
        {
            p = find(p, classname, "player");
            n = n - 1.000;
        }
        
    }
    
    if(p != world)
    {
        sprint(p, "\n\nYou have been kicked.\nGo abuse somewhere else.\n");
        stuffcmd(p, "disconnect\n");
        bprint(p.netname);
        bprint(" was kicked by ");
        bprint(self.netname);
        bprint("\n");
    }
    else
    {
        sprint(self, "Can't kick #");
        st = ftos(self.twonumbers);
        sprint(self, st);
        sprint(self, "\n");
    }
    
}
else
{
    if(self.accessparm == 2.000)
    {
        n2 = self.twonumbers;
        serverflags = (serverflags - (serverflags & 255.000)) + n2;
        sprint(self, "running map cfg file..\n");
        
        if(n2 >= cvar("noexit"))
        {
            n2 = 0.000;
        }
        
        localcmd("exec map");
        n = floor(n2 * 0.100);
        st = ftos(n);
        localcmd(st);
        n = n2 - (n * 10.000);
        st = ftos(n);
        localcmd(st);
        localcmd(".cfg\n");
    }
    else
    {
        if(self.accessparm == 3.000)
        {
            st = ftos(self.twonumbers);
            localcmd("timelimit ");
            localcmd(st);
            localcmd("\n");
            sprint(self, "Timelimit set\n");
        }
        else
        {
            if(self.accessparm == 4.000)
            {
                st = ftos(self.twonumbers);
                localcmd("fraglimit ");
                localcmd(st);
                localcmd("\n");
                sprint(self, "Fraglimit set\n");
            }
            else
            {
                
                if(self.accessparm == 5.000)
                {
                    st = ftos(self.twonumbers);
                    localcmd("temp1 ");
                    localcmd(st);
                    localcmd("\n");
                    sprint(self, "Fraglimit changed.\n");
                }
                
            }
            
        }
        
    }
    
}

Adminmenu();
self.twonumbers = 0.000;
self.accessparm = 0.000;
self.impulse = 0.000;
return;
};

/* ERROR INDENTATION */
