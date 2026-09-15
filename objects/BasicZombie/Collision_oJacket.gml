if (other.can_be_damaged && !other.is_dead) {
    other.hp -= damage;
    other.can_be_damaged = false;
    
    other.alarm[0] = game_get_speed(gamespeed_fps) * 2; 
    
    if (other.hp <= 0) {
        other.is_dead = true;
        other.sprite_index = JacketDead;
        other.image_index = 0;
        other.image_speed = 1;
    }
}









