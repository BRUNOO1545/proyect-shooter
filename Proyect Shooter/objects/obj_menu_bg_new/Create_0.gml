/// @description variables

randomize();

var count, _depth, cord_x, cord_y;

if (global.limitrain == true)
	{
		count = global.RainRandomValueLimit;
	}
else
	{
		count = global.RainRandomValue;
	}

if (global.christmas == 1) or (global.gamechrismas == true)
	{
		r1 = 180;
		r2 = 480;
		
		repeat(count)
			{
				_depth = choose(0, 2);
				cord_x = random_range(-800, room_width);
				cord_y = random_range(-64, room_height + 64);
				
				instance_create_depth(cord_x, cord_y, _depth, obj_snow);
			}
	}
else
	{
		r1 = 280;
		r2 = 960;
		
		repeat(count)
			{
				_depth = choose(0, 2);
				cord_x = random_range(-800, room_width);
				cord_y = random_range(-64, room_height + 64);
				
				instance_create_depth(cord_x, cord_y, _depth, obj_rain);
			}
	}

random_timer = irandom_range(r1, r2);
random_can = false;
storm_alpha = 0;
storm_alpha_2 = 1;