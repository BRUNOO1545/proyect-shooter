image_speed = 0.3;

if (room == pause_room)
	{
		instance_destroy();
	}

if (timer < 0)
	{
		//instance_create_depth(x, y, -y, obj_save_logo);
		instance_destroy();
	}
else
	{
		timer -= 1;
	}

switch timer
	{
		case 150:
			mode = 0;
		break;
		
		case 30:
			mode = 1;
		break;
	}

switch mode
	{
		case 0:
			if (image_alpha > 1)
				{
					image_alpha = 1;
				}
			else
				{
					image_alpha += 0.05;
				}
		break;
		
		case 1:
			if (image_alpha < 0)
				{
					image_alpha = 0;
				}
			else
				{
					image_alpha -= 0.05;
				}
		break;
	}