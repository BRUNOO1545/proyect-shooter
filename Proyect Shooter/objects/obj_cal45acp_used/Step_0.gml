/// @description salir con fuerza

image_index = 6;

if (speed <= 0)
	{
		speed = 0;
		
		if (global.showbullet == 0)
			{
				instance_destroy();
			}
	}
else
	{
		speed -= 0.5;
		image_angle -= 15;
	}

//auto delete
if (global.detail_delete > 0) && (dtimer < 0)
	{
		instance_destroy();
	}
else
	{
		dtimer -= 1;
	}

//alpha
if (global.detail_delete > 0) && (dtimer <= 60)
	{
		image_alpha -= 0.03;
	}