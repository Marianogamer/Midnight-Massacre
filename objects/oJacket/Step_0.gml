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