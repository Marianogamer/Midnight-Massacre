min_spawn_time = 5;
max_spawn_time = 10;

max_zombies = 10;

var spawn_delay = random_range(min_spawn_time, max_spawn_time);
alarm[0] = game_get_speed(gamespeed_fps) * spawn_delay;







