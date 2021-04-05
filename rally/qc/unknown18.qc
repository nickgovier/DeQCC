float LIGHTNING_ON = 1;
// lightning_think
// function begins at statement 23838, parm_start=16872
// OP_LOAD_F	28	182	16876
// OP_BITAND	16876	16870	16877
// OP_NOT_F	16877	0	16878
// OP_IFNOT	16878	64	0
// OP_LOAD_V	28	117	16879
// OP_STORE_V	16879	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	16882
// OP_STORE_V	16882	4	0
// OP_LOAD_V	28	105	16885
// OP_MUL_VF	59	2127	16888
// OP_ADD_V	16885	16888	16891
// OP_STORE_V	16891	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LOAD_V	28	105	16894
// OP_STORE_V	16894	16872	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	12083	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	328	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	514	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16872	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16873	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16874	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	511	0	0
// OP_STORE_ENT	28	16875	0
// OP_LOAD_ENT	28	201	16897
// OP_STORE_ENT	16897	28	0
// OP_LOAD_F	28	369	16898
// OP_STORE_V	16898	4	0
// OP_STORE_V	16899	7	0
// OP_CALL2	493	0	0
// OP_STORE_ENT	16875	28	0
// OP_ADDRESS	28	182	16900
// OP_LOAD_F	28	182	16901
// OP_BITOR	16901	16870	16902
// OP_STOREP_F	16902	16900	0
// OP_ADDRESS	28	150	16903
// OP_ADD_F	31	2575	16904
// OP_STOREP_F	16904	16903	0
// OP_GOTO	19	0	0
// OP_STORE_ENT	28	16875	0
// OP_LOAD_ENT	28	201	16905
// OP_STORE_ENT	16905	28	0
// OP_LOAD_F	28	369	16906
// OP_STORE_V	16906	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_STORE_ENT	16875	28	0
// OP_ADDRESS	28	182	16907
// OP_LOAD_F	28	182	16908
// OP_SUB_F	16908	16870	16909
// OP_STOREP_F	16909	16907	0
// OP_ADDRESS	28	150	16910
// OP_ADD_F	31	1182	16911
// OP_CALL0	466	0	0
// OP_MUL_F	1	819	16912
// OP_ADD_F	16911	16912	16913
// OP_STOREP_F	16913	16910	0
// OP_DONE	0	0	0
void () lightning_think = 
{
    local vector org;
    local entity oself;
    if(!(self.flags & LIGHTNING_ON))
    {
        makevectors(self.angles);
        traceline(self.origin, self.origin + (v_forward * 600), TRUE, self);
        org = self.origin;
        sound(self, CHAN_AUTO, "weapons/lhit.wav", 1, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
        WriteEntity(MSG_BROADCAST, self);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, trace_endpos_x);
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, 0);
        oself = self;
        self = self.owner;
        lightstyle(self.style, "z");
        self = oself;
        self.flags = self.flags | LIGHTNING_ON;
        self.nextthink = time + 0.3;
    }
    else
    {
        oself = self;
        self = self.owner;
        lightstyle(self.style, "a");
        self = oself;
        self.flags = self.flags - LIGHTNING_ON;
        self.nextthink = (time + 0.5) + (random() * 1);
    }
    
};

// rally_lightning
// function begins at statement 23924, parm_start=16915
// OP_ADDRESS	28	148	16915
// OP_STOREP_FNC	16871	16915	0
// OP_ADDRESS	28	150	16916
// OP_ADD_F	31	819	16917
// OP_CALL0	466	0	0
// OP_MUL_F	1	821	16918
// OP_ADD_F	16917	16918	16919
// OP_STOREP_F	16919	16916	0
// OP_DONE	0	0	0
void () rally_lightning = 
{
    self.think = lightning_think;
    self.nextthink = (time + 1) + (random() * 2);
};

