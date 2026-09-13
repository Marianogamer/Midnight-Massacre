image_angle += spin;

if (speed < 0.01)
{
	var pickup = instance_create_layer(x,y, "Instances", oWeaponPickup);
	pickup.sprite_index = sprite_index
	pickup.ammoPickup = ammoThrow;
	instance_destroy();
}







