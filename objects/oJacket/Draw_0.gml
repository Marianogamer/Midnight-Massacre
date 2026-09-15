if (walkTimer > 5)
{
	draw_sprite_ext(JacketLegs, image_index, x, y, image_xscale, image_yscale, playerAngle, image_blend, image_alpha);
}
draw_self();

draw_sprite_ext(weapon_sprite, image_index, x, y, image_xscale, image_yscale, playerAngle, image_blend, image_alpha);

if (oControl.debug == true)
{
	var text_1 = "Ammo: " + string(ammoPlayer);
	var text_2 = "Weapon: " + string(weapon);
	var text_3 = "HP: " + string(hp);
	draw_text_transformed(x,y-40, text_1, 1, 1, 0);
	draw_text_transformed(x,y-60, text_2, 1, 1, 0);
	draw_text_transformed(x,y-80, text_3, 1, 1, 0);
}