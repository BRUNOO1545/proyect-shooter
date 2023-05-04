//ocultar si no exite el jugador
if !instance_exists(obj_player) or (global.gun == -1)
	{
		if (image_alpha < 0.01)
			{
				image_alpha = 0;
			}
		else
			{
				image_alpha -= 0.06;
			}
	}
else
	{
		if (image_alpha >= 0.99)
			{
				image_alpha = 1;
			}
		else
			{
				image_alpha += 0.03;
			}
	}


//txt Y
if (iy <= -limit)
	{
		iys = 0;
	}

if (iy >= limit)
	{
		iys = 1;
	}

switch iys
	{
		case 0:
			iy += spd;
		break;
		
		case 1:
			iy -= spd;
		break;
	}