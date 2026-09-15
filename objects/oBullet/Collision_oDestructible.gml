x +=	lengthdir_x(speed,direction);
y +=	lengthdir_y(speed,direction);
with (other)
{
	hp -= other.damage;
	flash = 3;
	hitstop = other.direction;
}

instance_destroy();







