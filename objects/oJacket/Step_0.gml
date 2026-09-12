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