voidTODO () SUB_Null =
{
};

voidTODO () SUB_Remove =
{
    // OP_STORE_V 28 4 0 => 4 = self
    remove(self);
};

voidTODO (vector tdest, float tspeed, void() func) SUB_CalcMove =
{
    local vector vdestdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
        // OP_STORE_V 588 4 0 => 4 = "No speed is defined!"
        objerror("No speed is defined!");
    }
    
    self.think1 = func;
    self.finaldest = tdest;
    self.think = SUB_CalcMoveDone;
    
    if(tdest == self.origin)
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.100;
        return; /* TODO retvalue? */
    }
    
    vdestdelta = tdest - self.origin;
    // OP_STORE_V 582 4 0 => 4 = vdestdelta
    len = vlen(vdestdelta);
    traveltime = len / tspeed;
    
    if(traveltime < 0.100)
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.100;
        return; /* TODO retvalue? */
    }
    
    self.nextthink = self.ltime + traveltime;
    self.velocity = vdestdelta * (AS_STRAIGHT / traveltime);
};

voidTODO () finale_4 =
{
    local vector oldo;
    local float x;
    local float y;
    local float z;
    local float r;
    local entity n;
    // OP_STORE_V 28 4 0 => 4 = self
    // OP_STORE_V 322 7 0 => 7 = CHAN_VOICE
    // OP_STORE_V 11462 10 0 => 10 = "boss2/pop2.wav"
    // OP_STORE_V 9491 13 0 => 13 = 
    // OP_STORE_V 326 16 0 => 16 = ATTN_NORM
    sound(self, CHAN_VOICE, "boss2/pop2.wav", , ATTN_NORM);
    oldo = self.origin;
    z = SECRET_YES_SHOOT;
    
    while(z <= IMMEDIATE)
    {
        x = -64.000;
        
        while(x <= IT_LIGHTNING)
        {
            y = -64.000;
            
            while(y <= IT_LIGHTNING)
            {
                self.origin = oldo + x;
                self.origin_y = oldo_y + y;
                self.origin_z = oldo_z + z;
                r = random();
                if(r < IMMEDIATE)
                {
                    // OP_STORE_V 3852 4 0 => 4 = IMMEDIATE
                    // OP_STORE_V 11477 7 0 => 7 = -999.000
                    ThrowGib(IMMEDIATE, -999.000);
                }
                else if(r < IMMEDIATE)
                {
                    // OP_STORE_V 3853 4 0 => 4 = IMMEDIATE
                    // OP_STORE_V 11477 7 0 => 7 = -999.000
                    ThrowGib(IMMEDIATE, -999.000);
                }
                else                
                {
                    // OP_STORE_V 3854 4 0 => 4 = IMMEDIATE
                    // OP_STORE_V 11477 7 0 => 7 = -999.000
                    ThrowGib(IMMEDIATE, -999.000);
                }
                
                y = y + DOOR_TOGGLE;
            }
            
            x = x + DOOR_TOGGLE;
        }
        
        z = z + IMMEDIATE;
    }
    
    // OP_STORE_V 339 4 0 => 4 = MSG_ALL
    // OP_STORE_V 305 7 0 => 7 = SVC_FINALE
    WriteByte(MSG_ALL, SVC_FINALE);
    // OP_STORE_V 339 4 0 => 4 = MSG_ALL
    // OP_STORE_V 11482 7 0 => 7 = "Congratulations and well done! You have\nbeaten the hideous Shub-Niggurath, and\nher hundreds of ugly changelings and\nmonsters. You have proven that your\nskill and your cunning are greater than\nall the powers of Quake. You are the\nmaster now. Id Software salutes you."
    WriteString(MSG_ALL, "Congratulations and well done! You have\nbeaten the hideous Shub-Niggurath, and\nher hundreds of ugly changelings and\nmonsters. You have proven that your\nskill and your cunning are greater than\nall the powers of Quake. You are the\nmaster now. Id Software salutes you.");
    // *** UNPROCESSED OPCODE OP_STORE_ENT 1 11461 0
    // OP_STORE_V 11461 4 0 => 4 = n
    // OP_STORE_V 3849 7 0 => 7 = IMMEDIATE
    setmodel(n, IMMEDIATE);
    oldo = oldo - '32.000 264.000 0.000';
    // OP_STORE_V 11461 4 0 => 4 = n
    // OP_STORE_V 11454 7 0 => 7 = oldo
    setorigin(n, oldo);
    n.angles = ;
    n.frame = ;
    // OP_STORE_V 28 4 0 => 4 = self
    remove(self);
    // OP_STORE_V 339 4 0 => 4 = MSG_ALL
    // OP_STORE_V 306 7 0 => 7 = SVC_CDTRACK
    WriteByte(MSG_ALL, SVC_CDTRACK);
    // OP_STORE_V 339 4 0 => 4 = MSG_ALL
    // OP_STORE_V 370 7 0 => 7 = AS_MELEE
    WriteByte(MSG_ALL, AS_MELEE);
    // OP_STORE_V 339 4 0 => 4 = MSG_ALL
    // OP_STORE_V 370 7 0 => 7 = AS_MELEE
    WriteByte(MSG_ALL, AS_MELEE);
    // OP_STORE_V 337 4 0 => 4 = MSG_BROADCAST
    // OP_STORE_V 3860 7 0 => 7 = IMMEDIATE
    lightstyle(MSG_BROADCAST, IMMEDIATE);
};

