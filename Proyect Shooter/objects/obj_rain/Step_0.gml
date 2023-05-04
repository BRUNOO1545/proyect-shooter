//movimiento
x += vel;
y += vel;

//destruccion
if (y > room_height + 64)
	{
		if (rain_mode == 1)
			{
				randomize();
				
				x = random_range(-800, room_width);
				y = -64;
			}
		else
			{
				instance_destroy();
			}
	}