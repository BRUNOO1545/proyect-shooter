/// @description variables

randomize();


if (global.christmas == 1) or (global.gamechrismas == true)
	{
		r1 = 180;
		r2 = 480;
	}
else
	{
		r1 = 280;
		r2 = 960;
	}

random_timer = irandom_range(r1, r2);
random_can = false;
storm_alpha = 0;
storm_alpha_2 = 1;
rain_can = false;

//tempo de spawn
if (global.limitrain == 0)
	{
		rmax = 2;
	}
else
	{
		rmax = 40;
	}

rain_timer = random_range(1, rmax);