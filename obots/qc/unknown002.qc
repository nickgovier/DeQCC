
// func002277
// function begins at statement 27884, parm_start=16597
// OP_STORE_ENT	834	16597	0
// OP_IFNOT	16597	98	0
// OP_LOAD_F	16597	103	16598
// OP_EQ_F	16598	229	16599
// OP_IFNOT	16599	49	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16357	0	0
// OP_LOAD_F	16597	182	16600
// OP_BITAND	16600	225	16601
// OP_IFNOT	16601	23	0
// OP_ADDRESS	16597	114	16602
// OP_LOAD_F	16597	203	16603
// OP_STOREP_F	16603	16602	0
// OP_ADDRESS	16597	115	16604
// OP_LOAD_F	16597	204	16605
// OP_STOREP_F	16605	16604	0
// OP_LOAD_F	16597	575	16606
// OP_BITAND	16606	700	16607
// OP_LOAD_F	16597	189	16608
// OP_GT	16608	216	16609
// OP_OR	16607	16609	16610
// OP_LOAD_F	16597	186	16611
// OP_LT	16611	31	16612
// OP_OR	16610	16612	16613
// OP_IFNOT	16613	7	0
// OP_ADDRESS	16597	182	16614
// OP_LOAD_F	16597	182	16615
// OP_SUB_F	16615	225	16616
// OP_STOREP_F	16616	16614	0
// OP_ADDRESS	16597	186	16617
// OP_STOREP_F	213	16617	0
// OP_GOTO	6	0	0
// OP_LOAD_F	16597	189	16618
// OP_EQ_F	16618	216	16619
// OP_IFNOT	16619	3	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16322	0	0
// OP_LOAD_F	16597	189	16620
// OP_GE	16620	228	16621
// OP_LOAD_F	16597	182	16622
// OP_BITAND	16622	225	16623
// OP_LOAD_F	16597	189	16624
// OP_GT	16624	213	16625
// OP_AND	16623	16625	16626
// OP_OR	16621	16626	16627
// OP_IFNOT	16627	6	0
// OP_ADDRESS	16597	116	16628
// OP_LOAD_F	16597	116	16629
// OP_MUL_F	799	32	16630
// OP_ADD_F	16629	16630	16631
// OP_STOREP_F	16631	16628	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16325	0	0
// OP_LOAD_FNC	16597	148	16632
// OP_NE_FNC	16632	16476	16633
// OP_IFNOT	16633	7	0
// OP_ADDRESS	16597	553	16634
// OP_LOAD_FNC	16597	148	16635
// OP_STOREP_FNC	16635	16634	0
// OP_ADDRESS	16597	554	16636
// OP_LOAD_F	16597	150	16637
// OP_STOREP_F	16637	16636	0
// OP_ADDRESS	16597	148	16638
// OP_STOREP_FNC	16476	16638	0
// OP_ADDRESS	16597	150	16639
// OP_STOREP_F	31	16639	0
// OP_ADDRESS	16597	146	16640
// OP_STOREP_FNC	16470	16640	0
// OP_ADDRESS	16597	556	16641
// OP_LOAD_V	16597	105	16644
// OP_STOREP_V	16644	16641	0
// OP_ADDRESS	16597	560	16647
// OP_LOAD_V	16597	113	16650
// OP_STOREP_V	16650	16647	0
// OP_ADDRESS	16597	151	16653
// OP_STOREP_ENT	16597	16653	0
// OP_LOAD_F	16597	182	16654
// OP_BITAND	16654	223	16655
// OP_IFNOT	16655	6	0
// OP_ADDRESS	16597	182	16656
// OP_LOAD_F	16597	182	16657
// OP_BITOR	16657	699	16658
// OP_STOREP_F	16658	16656	0
// OP_GOTO	7	0	0
// OP_ADDRESS	16597	182	16659
// OP_LOAD_F	16597	182	16660
// OP_LOAD_F	16597	182	16661
// OP_BITAND	16661	699	16662
// OP_SUB_F	16660	16662	16663
// OP_STOREP_F	16663	16659	0
// OP_ADDRESS	16597	182	16664
// OP_LOAD_F	16597	182	16665
// OP_LOAD_F	16597	182	16666
// OP_BITAND	16666	223	16667
// OP_SUB_F	16665	16667	16668
// OP_STOREP_F	16668	16664	0
// OP_LOAD_ENT	16597	620	16669
// OP_STORE_ENT	16669	16597	0
// OP_GOTO	-97	0	0
// OP_DONE	0	0	0
void () func002277 = 
{
    local entity globaldef005781;
    globaldef005781 = firstBot;
    
    while(globaldef005781)
    {
        
        if(globaldef005781.movetype == MOVETYPE_STEP)
        {
            func002272(globaldef005781);
            if(globaldef005781.flags & FL_WATERJUMP)
            {
                globaldef005781.velocity_x = globaldef005781.movedir_x;
                globaldef005781.velocity_y = globaldef005781.movedir_y;
                
                if(((globaldef005781.botflags & globaldef000683) || (globaldef005781.waterlevel > FL_SWIM)) || (globaldef005781.teleport_time < time))
                {
                    globaldef005781.flags = globaldef005781.flags - FL_WATERJUMP;
                    globaldef005781.teleport_time = FALSE;
                }
                
            }
            else
            {
                
                if(globaldef005781.waterlevel == FL_SWIM)
                {
                    func002269(globaldef005781);
                }
                
            }
            
            
            if((globaldef005781.waterlevel >= MOVETYPE_WALK) || ((globaldef005781.flags & FL_WATERJUMP) && (globaldef005781.waterlevel > FALSE)))
            {
                globaldef005781.velocity_z = globaldef005781.velocity_z + (globaldef000782 * frametime);
            }
            
            func002270(globaldef005781);
        }
        
        
        if(globaldef005781.think != func002276)
        {
            globaldef005781.think2 = globaldef005781.think;
            globaldef005781.nextthink2 = globaldef005781.nextthink;
        }
        
        globaldef005781.think = func002276;
        globaldef005781.nextthink = time;
        globaldef005781.touch = func002275;
        globaldef005781.field000233 = globaldef005781.origin;
        globaldef005781.field000237 = globaldef005781.velocity;
        globaldef005781.groundentity = globaldef005781;
        if(globaldef005781.flags & FL_ONGROUND)
        {
            globaldef005781.flags = globaldef005781.flags | globaldef000682;
        }
        else
        {
            globaldef005781.flags = globaldef005781.flags - (globaldef005781.flags & globaldef000682);
        }
        
        globaldef005781.flags = globaldef005781.flags - (globaldef005781.flags & FL_ONGROUND);
        globaldef005781 = globaldef005781.next;
    }
    
};

