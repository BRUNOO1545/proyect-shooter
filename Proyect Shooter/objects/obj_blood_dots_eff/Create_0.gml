/// @description variables

randomize();
image_angle = random_range(0, 360);
image_index = irandom_range(0, 3);
image_speed = 0;
image_alpha = random_range(0.8, 1);
speed = random_range(0.5, 4);
alpha_spd = 0.02;
spd = 0.04;
angle = 1;
range = 32;
image_xscale = 0.3;
image_yscale = 0.3;

//angulo de disparo
var ed = instance_nearest(x, y, obj_bullet_collision);

if (instance_exists(ed))
	{
		if (instance_exists(obj_player)) && (obj_player.player_dead == false)
			{
				ia = ed.image_angle + 180 + random_range(-range, range);
			}
		else
			{
				ia = global.player_ang + 180 + random_range(-range, range);
			}
	}
else
	{
		ia = random_range(-range, range);
	}

direction = ia;