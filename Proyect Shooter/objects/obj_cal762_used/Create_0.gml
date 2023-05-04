randomize();
speed = random_range(2, 6);
depth = 3;
image_speed = 0;
image_index = 3;
image_xscale = 0.15;
image_yscale = 0.15;
direction = obj_player.image_angle - 90;

//auto delete
switch global.detail_delete
	{
		//desactivado
		case 0:
			dtimer = 0;
		break;
		
		//2s
		case 1:
			dtimer = 120;
		break;
		
		//5s
		case 2:
			dtimer = 300;
		break;
		
		//10s
		case 3:
			dtimer = 600;
		break;
	}