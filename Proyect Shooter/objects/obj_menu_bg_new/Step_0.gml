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