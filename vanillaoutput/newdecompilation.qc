voidTODO (  ) SUB_Null =
{
};

voidTODO (  ) SUB_Remove =
{
    remove ( self );
};

voidTODO ( vector tdest, float tspeed, void() func ) SUB_CalcMove =
{
    local vector vdestdelta;
    local float len;
    local float traveltime;
    
    if ( !tspeed )
    {
        objerror ( "No speed is defined!" );
    }
    
    self.think1 = func;
    self.finaldest = tdest;
    self.think = SUB_CalcMoveDone;
    
    if ( tdest == self.origin )
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = (self.ltime + 0.100);
        return; /* TODO retvalue? */
    }
    
    vdestdelta = (tdest - self.origin);
    len = vlen ( vdestdelta );
    traveltime = (len / tspeed);
    
    if ( traveltime < 0.100 )
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = (self.ltime + 0.100);
        return; /* TODO retvalue? */
    }
    
    self.nextthink = (self.ltime + traveltime);
    self.velocity = (vdestdelta * (AS_STRAIGHT / traveltime));
};

