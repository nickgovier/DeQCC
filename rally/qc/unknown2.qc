// FindSightEnemy
// function begins at statement 8631, parm_start=7211
// OP_STORE_V	7214	4	0
// OP_CALL1	472	0	0
// OP_STORE_F	1	7223	0
// OP_EQ_F	738	825	7224
// OP_LOAD_S	28	129	7225
// OP_EQ_S	7225	880	7226
// OP_AND	7224	7226	7227
// OP_IFNOT	7227	12	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7228	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	7221	0
// OP_NE_E	7221	30	7229
// OP_LOAD_F	7221	152	7230
// OP_GT	7230	817	7231
// OP_AND	7229	7231	7232
// OP_IFNOT	7232	2	0
// OP_RETURN	7221	0	0
// OP_STORE_V	7211	4	0
// OP_STORE_V	7217	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	7221	0
// OP_NE_E	7221	30	7233
// OP_IFNOT	7233	47	0
// OP_EQ_S	7219	7234	7235
// OP_LOAD_S	7221	129	7236
// OP_EQ_S	7219	7236	7237
// OP_OR	7235	7237	7238
// OP_NE_E	7221	7220	7239
// OP_AND	7238	7239	7240
// OP_IFNOT	7240	37	0
// OP_LOAD_S	7221	129	7241
// OP_EQ_S	7241	880	7242
// OP_LOAD_S	7221	129	7243
// OP_EQ_S	7243	7244	7245
// OP_OR	7242	7245	7246
// OP_LOAD_S	7221	129	7247
// OP_EQ_S	7247	3609	7248
// OP_OR	7246	7248	7249
// OP_LOAD_S	7221	129	7250
// OP_EQ_S	7250	7228	7251
// OP_OR	7249	7251	7252
// OP_LOAD_F	7221	152	7253
// OP_GT	7253	817	7254
// OP_AND	7252	7254	7255
// OP_IFNOT	7255	22	0
// OP_LOAD_V	7221	105	7256
// OP_SUB_V	7256	7211	7259
// OP_STORE_V	7259	4	0
// OP_CALL1	472	0	0
// OP_STORE_F	1	7222	0
// OP_STORE_V	7223	4	0
// OP_STORE_V	7222	7	0
// OP_CALL2	860	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	499	0	0
// OP_LE	1	7218	7262
// OP_IFNOT	7262	10	0
// OP_STORE_V	7211	4	0
// OP_LOAD_V	7221	105	7263
// OP_STORE_V	7263	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	7266
// OP_IFNOT	7266	2	0
// OP_RETURN	7221	0	0
// OP_LOAD_ENT	7221	164	7267
// OP_STORE_ENT	7267	7221	0
// OP_GOTO	-47	0	0
// OP_RETURN	7221	0	0
// OP_DONE	0	0	0
entity (vector org, vector dir, float dist, float angle_range, string filter_class, entity ignore) FindSightEnemy = 
{
    local entity trav;
    local float trav_yaw;
    local float dir_yaw;
    dir_yaw = vectoyaw(dir);
    
    if((rally_type_index == 4) && (self.classname == "player"))
    {
        trav = find(world, classname, "monster_boss");
        
        if((trav != world) && (trav.health > 0))
        {
            return trav;
        }
        
    }
    
    trav = findradius(org, dist);
    
    while(trav != world)
    {
        
        if(((filter_class == "all") || (filter_class == trav.classname)) && (trav != ignore))
        {
            
            if(((((trav.classname == "player") || (trav.classname == "rally_kangaroo")) || (trav.classname == "rally_dude")) || (trav.classname == "monster_boss")) && (trav.health > 0))
            {
                trav_yaw = vectoyaw(trav.origin - org);
                
                if(fabs(angle_diff(dir_yaw, trav_yaw)) <= angle_range)
                {
                    traceline(org, trav.origin, TRUE, world);
                    
                    if(trace_fraction == 1)
                    {
                        return trav;
                    }
                    
                }
                
            }
            
        }
        
        trav = trav.chain;
    }
    
    return trav;
};

void () T_MissileTouch;
// RocketSeek
// function begins at statement 8704, parm_start=7270
// OP_LOAD_ENT	28	181	7283
// OP_LOAD_F	7283	152	7284
// OP_LE	7284	817	7285
// OP_IFNOT	7285	4	0
// OP_ADDRESS	28	181	7286
// OP_STOREP_ENT	30	7286	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7287
// OP_EQ_E	7287	30	7288
// OP_IFNOT	7288	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	647	7289
// OP_SUB_F	31	827	7290
// OP_LT	7289	7290	7291
// OP_LOAD_ENT	28	201	7292
// OP_LOAD_S	7292	129	7293
// OP_NE_S	7293	7228	7294
// OP_LOAD_F	28	647	7295
// OP_SUB_F	31	855	7296
// OP_LT	7295	7296	7297
// OP_OR	7294	7297	7298
// OP_AND	7291	7298	7299
// OP_IFNOT	7299	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7300
// OP_LOAD_S	7300	129	7301
// OP_EQ_S	7301	880	7302
// OP_LOAD_ENT	28	181	7303
// OP_LOAD_V	7303	113	7304
// OP_EQ_V	7304	926	7307
// OP_AND	7302	7307	7308
// OP_IFNOT	7308	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7309
// OP_LOAD_S	7309	129	7310
// OP_EQ_S	7310	3609	7311
// OP_LOAD_ENT	28	181	7312
// OP_LOAD_S	7312	129	7313
// OP_EQ_S	7313	7244	7314
// OP_OR	7311	7314	7315
// OP_LOAD_V	28	105	7316
// OP_LOAD_ENT	28	181	7319
// OP_LOAD_V	7319	105	7320
// OP_SUB_V	7316	7320	7323
// OP_STORE_V	7323	4	0
// OP_CALL1	471	0	0
// OP_LT	1	2223	7326
// OP_AND	7315	7326	7327
// OP_IFNOT	7327	5	0
// OP_LOAD_ENT	28	181	7328
// OP_STORE_ENT	7328	29	0
// OP_CALL0	7268	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	113	7329
// OP_STORE_V	7329	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	7270	0
// OP_LOAD_ENT	28	181	7332
// OP_LOAD_V	7332	105	7333
// OP_STORE_V	7333	7280	0
// OP_LOAD_ENT	28	181	7336
// OP_LOAD_S	7336	129	7337
// OP_EQ_S	7337	7228	7338
// OP_IFNOT	7338	3	0
// OP_ADD_V	7280	2284	7339
// OP_STORE_V	7339	7280	0
// OP_LOAD_V	28	105	7342
// OP_SUB_V	7280	7342	7345
// OP_STORE_V	7345	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	7271	0
// OP_LOAD_V	28	113	7348
// OP_STORE_V	7348	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	7277	0
// OP_ADDRESS	28	113	7351
// OP_MUL_VF	7277	823	7354
// OP_ADD_V	7271	7354	7357
// OP_STORE_V	7357	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	7270	7360
// OP_STOREP_V	7360	7351	0
// OP_LOAD_V	28	113	7363
// OP_STORE_V	7363	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	7274	0
// OP_ADDRESS	28	117	7366
// OP_STORE_V	7274	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	7366	0
// OP_ADDRESS	28	150	7369
// OP_ADD_F	31	1988	7370
// OP_STOREP_F	7370	7369	0
// OP_DONE	0	0	0
void () RocketSeek = 
{
    local float current_speed;
    local vector target_vector;
    local vector vel;
    local vector unit_velocity;
    local vector target_org;
    
    if(self.enemy.health <= 0)
    {
        self.enemy = world;
        return;
    }
    
    
    if(self.enemy == world)
    {
        return;
    }
    
    
    if((self.last_idle < (time - 5)) && ((self.owner.classname != "monster_boss") || (self.last_idle < (time - 10))))
    {
        remove(self);
        return;
    }
    
    
    if((self.enemy.classname == "player") && (self.enemy.velocity == '0.000 0.000 0.000'))
    {
        return;
    }
    
    
    if(((self.enemy.classname == "rally_dude") || (self.enemy.classname == "rally_kangaroo")) && ((vlen(self.origin - self.enemy.origin)) < 64))
    {
        other = self.enemy;
        T_MissileTouch();
        return;
    }
    
    current_speed = vlen(self.velocity);
    target_org = self.enemy.origin;
    
    if(self.enemy.classname == "monster_boss")
    {
        target_org = target_org + '0.000 0.000 64.000';
    }
    
    target_vector = normalize(target_org - self.origin);
    unit_velocity = normalize(self.velocity);
    self.velocity = (normalize(target_vector + (unit_velocity * 3))) * current_speed;
    vel = normalize(self.velocity);
    self.angles = vectoangles(vel);
    self.nextthink = time + 0.05;
};

