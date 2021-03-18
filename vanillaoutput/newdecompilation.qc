voidTODO () SUB_Null =
{
};

voidTODO () SUB_Remove =
{
    remove(self);
};

voidTODO (vector tdest, float tspeed, void() func) SUB_CalcMove =
{
    local vector vdestdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
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
                    ThrowGib(IMMEDIATE, -999.000);
                }
                else if(r < IMMEDIATE)
                {
                    ThrowGib(IMMEDIATE, -999.000);
                }
                else                
                {
                    ThrowGib(IMMEDIATE, -999.000);
                }
                
                y = y + DOOR_TOGGLE;
            }
            
            x = x + DOOR_TOGGLE;
        }
        
        z = z + IMMEDIATE;
    }
    
    WriteByte(MSG_ALL, SVC_FINALE);
    WriteString(MSG_ALL, "Congratulations and well done! You have\nbeaten the hideous Shub-Niggurath, and\nher hundreds of ugly changelings and\nmonsters. You have proven that your\nskill and your cunning are greater than\nall the powers of Quake. You are the\nmaster now. Id Software salutes you.");
    n = spawn();
    setmodel(n, IMMEDIATE);
    oldo = oldo - '32.000 264.000 0.000';
    setorigin(n, oldo);
    n.angles = ;
    n.frame = ;
    remove(self);
    WriteByte(MSG_ALL, SVC_CDTRACK);
    WriteByte(MSG_ALL, AS_MELEE);
    WriteByte(MSG_ALL, AS_MELEE);
    lightstyle(MSG_BROADCAST, IMMEDIATE);
};

voidTODO () door_fire =
{
    local entity oself;
    local entity starte;
    
    if(self.owner != self)
    {
        objerror("door_fire: self.owner != self");
    }
    
    
    if(self.items)
    {
        sound(self, CHAN_ITEM, self.noise4, DOOR_START_OPEN, ATTN_NORM);
    }
    
    self.message = string_null;
    oself = self;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        
        if((self.state == STATE_UP) || (self.state == STATE_TOP))
        {
            starte = self;
            do
            {
                door_go_down();
                self = self.enemy;
            } while ((self != starte) && (self != world));
            self = oself;
            return; /* TODO retvalue? */
        }
        
    }
    
    starte = self;
    do
    {
        door_go_up();
        self = self.enemy;
    } while ((self != starte) && (self != world));
    self = oself;
};

