if (image_alpha <= 0)
	{
		instance_destroy();
	}
else
	{
		image_alpha -= alpha_spd;
		speed -= spd;
		image_angle -= angle;
	}