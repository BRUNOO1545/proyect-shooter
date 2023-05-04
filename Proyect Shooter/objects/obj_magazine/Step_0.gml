image_index = rimg;
image_xscale = 0.15;
image_yscale = 0.15;

//rotar
if (speed <= 0)
	{
		speed = 0;
		
		if (global.showmagazine == 0)
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