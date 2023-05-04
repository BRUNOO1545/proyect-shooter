image_index = current_fps;
image_angle = ia;
image_speed = 0;

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