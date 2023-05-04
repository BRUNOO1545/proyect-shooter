if (speed <= 0)
	{
		speed = 0;
		instance_destroy();
	}
else
	{
		speed -= 0.5;
		image_angle -= speed;
	}