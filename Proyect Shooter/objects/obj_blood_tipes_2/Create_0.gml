randomize();
depth = 4;
ia = 0;
limit = 2;
current_fps = irandom_range(0, limit);

image_angle = random_range(0, 360);
image_speed = 0;
image_index = current_fps;

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