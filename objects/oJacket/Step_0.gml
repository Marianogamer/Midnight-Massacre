image_angle = point_direction(x,y, mouse_x, mouse_y);


var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var horizontalspeed = right - left;
var verticalspeed = down - up;

x += horizontalspeed * walkSpeed;
y += verticalspeed * walkSpeed;

if (xprevious == x and yprevious == y)
{
	image_speed = 0;
	walkTimer = 0;
}
else
{
	image_speed = 1;
	walkTimer ++;
}

if (keyboard_check(vk_shift))
{
	if (!instance_exists(oTarget))
	{
		crosstarget = instance_create_layer(mouse_x, mouse_y, "Instances", oTarget);
	}
	
	crosstarget.x = clamp(mouse_x, x - 75, x + 75);
	crosstarget.y = clamp(mouse_y, y - 75, y + 75);
	crosstarget.timer = 5;
	oCamera.target = crosstarget;
}

if (mouse_check_button_released(mb_right) and weapon_sprite != JacketWalkUnarmed)
{
	var throwWeapon = instance_create_layer(x, y, "Instances", oWeaponThrow);
	throwWeapon.direction = image_angle;
	throwWeapon.speed = random_range(7,10);
	throwWeapon.sprite_index = M16;
	
	throwWeapon.ammoThrow = ammoPlayer;
	
	switch (weapon)
	{
		//Melee
		case "BasbeallBat" : throwWeapon.sprite_index = BaseballBat; break;
		case "Katana" : throwWeapon.sprite_index = Katana; break;
		
		//Firearms
		case "M16" : throwWeapon.sprite_index = M16; break;
		case "Uzi" : throwWeapon.sprite_index = Uzi; break;
		case "Shotgun" : throwWeapon.sprite_index = Shotgun; break;
		case "MP5" : throwWeapon.sprite_index = MP5; break;
	}
	weapon = "";
	weapon_sprite = JacketWalkUnarmed;
	
	ammoPlayer = 0;
}

if (mouse_check_button(mb_left) and ammoPlayer > 0)
{
	
	shoot_timer--;
	if (shoot_timer <=0)
	{
		
		var shotX = 0;
		var shotY = 0;
		
		switch(weapon)
		{
			case "M16":
			
				shotX = x + lengthdir_x(43, image_angle-22);
				shotY = y + lengthdir_y(16, image_angle-22);
			
				var shot = instance_create_layer(x,y, "Instances", oBullet);
				shot.direction = image_angle + random_range(-oControl.spread_M16, oControl.spread_M16);
				shot.speed     = oControl.ShotSpeed_M16;
				shot.friction  = oControl.friction_M16;
				shot.damage    = oControl.damage_M16;
		
				shoot_timer = oControl.shoot_timer_M16;
				ammoPlayer--;
				break;
				
			case "Uzi":
			
				shotX = x + lengthdir_x(42, image_angle-30);
				shotY = y + lengthdir_y(16, image_angle-30);
			
				var shot = instance_create_layer(x,y, "Instances", oBullet);
				shot.direction = image_angle + random_range(-oControl.spread_Uzi, oControl.spread_Uzi);
				shot.speed     = oControl.ShotSpeed_Uzi;
				shot.friction  = oControl.friction_Uzi;
				shot.damage    = oControl.damage_Uzi;
		
				shoot_timer = oControl.shoot_timer_Uzi;
				ammoPlayer--;
				break;
				
			case "MP5":
			
				shotX = x + lengthdir_x(42, image_angle-30);
				shotY = y + lengthdir_y(16, image_angle-30);
			
				var shot = instance_create_layer(x,y, "Instances", oBullet);
				shot.direction = image_angle + random_range(-oControl.spread_MP5, oControl.spread_MP5);
				shot.speed     = oControl.ShotSpeed_MP5;
				shot.friction  = oControl.friction_MP5;
				shot.damage    = oControl.damage_MP5;
		
				shoot_timer = oControl.shoot_timer_MP5;
				ammoPlayer--;
				break;
		}
	}
}