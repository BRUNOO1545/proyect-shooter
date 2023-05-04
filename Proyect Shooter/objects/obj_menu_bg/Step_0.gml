/// @description logica

//manta negra
storm_alpha_2 -= 0.03;

//truenos random
if (random_timer < 0)
	{
		random_can = true;
		random_timer = irandom_range(r1, r2);
	}
else
	{
		random_can = false;
		random_timer -= 1;
	}


//rayo
if (global.christmas == 0) or (global.gamechrismas == true)
	{
		if (random_can == true)
			{
				storm_alpha = 1;
			}
		else
			{
				storm_alpha -= 0.05;
			}
	}


//lluvia
if (rain_timer < 0)
	{
		rain_timer = random_range(1, rmax);
		rain_can = true;
	}
else
	{
		rain_timer -= 1;
	}

if (rain_can == true)
	{
		rain_can = false;
		xrange = random_range(-700, room_width);
		
		if (global.christmas == 1) or (global.gamechrismas == true)
			{
				instance_create_depth(xrange, -64, 0, obj_snow);
			}
		else
			{
				instance_create_depth(xrange, -64, 0, obj_rain);
			}
	}