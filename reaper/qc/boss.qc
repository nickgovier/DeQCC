// monster_boss
// function begins at statement 15758, parm_start=9514
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    remove(self);
    return;
};

entity le1;
entity le2;
float lightning_end;
// lightning_fire
// function begins at statement 15762, parm_start=9518
// OP_GE	31	9516	9524
// OP_IFNOT	9524	6	0
// OP_STORE_ENT	9514	28	0
// OP_CALL0	6275	0	0
// OP_STORE_ENT	9515	28	0
// OP_CALL0	6275	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	9514	134	9525
// OP_LOAD_V	9514	138	9528
// OP_ADD_V	9525	9528	9531
// OP_MUL_VF	9531	677	9534
// OP_STORE_V	9534	9518	0
// OP_LOAD_F	9514	97	9537
// OP_SUB_F	9537	218	9538
// OP_STORE_F	9538	9520	0
// OP_LOAD_V	9515	134	9539
// OP_LOAD_V	9515	138	9542
// OP_ADD_V	9539	9542	9545
// OP_MUL_VF	9545	677	9548
// OP_STORE_V	9548	9521	0
// OP_LOAD_F	9515	97	9551
// OP_SUB_F	9551	218	9552
// OP_STORE_F	9552	9523	0
// OP_SUB_V	9521	9518	9553
// OP_STORE_V	9553	4	0
// OP_CALL1	454	0	0
// OP_MUL_VF	1	574	9556
// OP_SUB_V	9521	9556	9559
// OP_STORE_V	9559	9521	0
// OP_ADDRESS	28	150	9562
// OP_ADD_F	31	993	9563
// OP_STOREP_F	9563	9562	0
// OP_ADDRESS	28	148	9564
// OP_STOREP_FNC	9517	9564	0
// OP_STORE_V	339	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	317	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9518	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9519	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9520	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9521	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9522	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	9523	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () lightning_fire = 
{
    local vector p1;
    local vector p2;
    
    if(time >= lightning_end)
    {
        self = le1;
        door_go_down();
        self = le2;
        door_go_down();
        return;
    }
    
    p1 = (le1.mins + le1.maxs) * 0.500;
    p1_z = le1.absmin_z - FL_INWATER;
    p2 = (le2.mins + le2.maxs) * 0.500;
    p2_z = le2.absmin_z - FL_INWATER;
    p2 = p2 - ((normalize(p2 - p1)) * MUST_HAVE);
    self.nextthink = time + 0.100;
    self.think = lightning_fire;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, p1_x);
    WriteCoord(MSG_ALL, p1_y);
    WriteCoord(MSG_ALL, p1_z);
    WriteCoord(MSG_ALL, p2_x);
    WriteCoord(MSG_ALL, p2_y);
    WriteCoord(MSG_ALL, p2_z);
};

// lightning_use
// function begins at statement 15824, parm_start=9566
// OP_ADD_F	31	214	9566
// OP_GE	9516	9566	9567
// OP_IFNOT	9567	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	9568	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	9514	0
// OP_STORE_V	9514	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	9568	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	9515	0
// OP_NOT_ENT	9514	0	9569
// OP_NOT_ENT	9515	0	9570
// OP_OR	9569	9570	9571
// OP_IFNOT	9571	4	0
// OP_STORE_V	9572	4	0
// OP_CALL1	470	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	9514	433	9573
// OP_NE_F	9573	282	9574
// OP_LOAD_F	9514	433	9575
// OP_NE_F	9575	283	9576
// OP_AND	9574	9576	9577
// OP_LOAD_F	9515	433	9578
// OP_NE_F	9578	282	9579
// OP_LOAD_F	9515	433	9580
// OP_NE_F	9580	283	9581
// OP_AND	9579	9581	9582
// OP_OR	9577	9582	9583
// OP_LOAD_F	9514	433	9584
// OP_LOAD_F	9515	433	9585
// OP_NE_F	9584	9585	9586
// OP_OR	9583	9586	9587
// OP_IFNOT	9587	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	9514	150	9588
// OP_STOREP_F	276	9588	0
// OP_ADDRESS	9515	150	9589
// OP_STOREP_F	276	9589	0
// OP_ADD_F	31	214	9590
// OP_STORE_F	9590	9516	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4317	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	9517	0	0
// OP_DONE	0	0	0
void () lightning_use = 
{
    
    if(lightning_end >= (time + TRUE))
    {
        return;
    }
    
    le1 = find(world, target, "lightning");
    le2 = find(le1, target, "lightning");
    
    if(!le1 || !le2)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((le1.state != STATE_TOP) && (le1.state != STATE_BOTTOM)) || ((le2.state != STATE_TOP) && (le2.state != STATE_BOTTOM))) || (le1.state != le2.state))
    {
        return;
    }
    
    le1.nextthink = CONTENT_EMPTY;
    le2.nextthink = CONTENT_EMPTY;
    lightning_end = time + TRUE;
    sound(self, CHAN_VOICE, "misc/power.wav", TRUE, ATTN_NORM);
    lightning_fire();
};

// event_lightning
// function begins at statement 15876, parm_start=9592
// OP_ADDRESS	28	147	9592
// OP_STOREP_FNC	9565	9592	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = lightning_use;
};

