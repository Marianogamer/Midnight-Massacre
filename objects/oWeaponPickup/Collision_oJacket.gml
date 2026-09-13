if (mouse_check_button_released(mb_right))
{

	switch (sprite_index)
	{
	
		//Melee
		case BaseballBat :   other.weapon_sprite = JacketWalkBaseballBat; other.weapon = "BasbeallBat"; break;
		case Katana :        other.weapon_sprite = JacketWalkKatana; other.weapon = "Katana"; break;
	
		//Firearms
		case M16 :           other.weapon_sprite = JacketWalkM16; other.weapon = "M16"; break;
		case Uzi :           other.weapon_sprite = JacketWalkUzi; other.weapon = "Uzi"; break;
		case Shotgun :       other.weapon_sprite = JacketWalkShotgun; other.weapon = "Shotgun"; break;
		case MP5 :           other.weapon_sprite = JacketWalkMP5; other.weapon = "MP5"; break;
	}
	
	other.ammoPlayer = ammoPickup;
	
	instance_destroy();
}







