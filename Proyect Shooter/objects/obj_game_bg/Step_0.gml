/// @description sat
if (sat < 255)
	{
		sat += 4;
	}

if (flash == true)
	{
		sat = 64;
		flash = false;
	}

//sumar hue
if (hue > 255)
	{
		hue = 0;
	}
else
	{
		hue += 0.1;
	}

//pause bg
if (global.resume == 1)
	{
		pause_bg_timer = pause_bg_timer_max;
	}
else
	{
		if (pause_bg_timer > 0)
			{
				//pause
				scr_pause_noise()

				repeat(amount)
					{
						instance_create_depth(x, y, -y, obj_dots);
					}
		
				pause_bg_timer -= 1;
			}
	}