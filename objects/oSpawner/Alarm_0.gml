if (instance_exists(oJacket) && !oJacket.is_dead) {
    if (instance_number(BasicZombie) < max_zombies) {
        
        var zombie_type = choose(BasicZombie, BoomerZombie); 
        instance_create_layer(x, y, "Instances", zombie_type);
    }
}

var spawn_delay = random_range(min_spawn_time, max_spawn_time);
alarm[0] = game_get_speed(gamespeed_fps) * spawn_delay;









