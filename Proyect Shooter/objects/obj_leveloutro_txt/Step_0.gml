//move
if (x_start < x_mid)
	{
		x_start += x_speed;
	}
else
	{
		x_start = x_mid;
	}

if (x_limit > x_mid)
	{
		x_limit -= x_speed;
	}
else
	{
		x_limit = x_mid;
	}

//finish
if (x_start >= x_mid) && (x_limit <= x_mid)
	{
		if (timer < 0)
			{
				room_goto(menu_room);
				//room_restart();
			}
		else
			{
				timer -= 1;
				
				if (timer < 15)
					{
						eject_alpha = 0;
						//eject_alpha -= 0.1;
					}
			}
	}
else
	{
		//pause eff
		scr_pause_noise();

		repeat(amount)
			{
				instance_create_depth(x, y, 4, obj_dots);
			}
	}