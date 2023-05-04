/// @description golpe enemigo segun arma
alarm[1] = 1;

switch (global.gun)
	{
		case 28:
			global.gun_type_to_enemy = "katana";
		break;
		
		default:
			global.gun_type_to_enemy = "knifed";
		break;
	}