direction = point_direction(x, y, oJacket.x, oJacket.y);
image_angle = direction;

if (instance_exists(oJacket) && !oJacket.is_dead) {
    
    if (variable_global_exists("mp_grid")) 
	{
        if (mp_grid_path(global.mp_grid, path, x, y, oJacket.x, oJacket.y, true)) 
		{
            path_start(path, walkspeed, path_action_stop, false);
        }
    }
    
} else {
    path_end();
}





