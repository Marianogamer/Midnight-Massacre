if (mouse_check_button_released(mb_right))
{

	switch (sprite_index)
	{
	
		//Melee
		case BaseballBat : other.weapon_sprite = JacketWalkBaseballBat; break;
		case Katana : other.weapon_sprite = JacketWalkKatana; break;
	
		//Firearms
		case M16 : other.weapon_sprite = JacketWalkM16; break;
		case Uzi : other.weapon_sprite = JacketWalkUzi; break;
		case Shotgun : other.weapon_sprite = JacketWalkShotgun; break;
		case MP5 : other.weapon_sprite = JacketWalkMP5; break;
	}

	instance_destroy();
}







