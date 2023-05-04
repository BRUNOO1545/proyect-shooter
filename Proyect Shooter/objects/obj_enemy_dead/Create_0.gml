randomize();
ia = global.imgang;
image_xscale = global.enemy_xcale;
image_yscale = global.enemy_xcale;
image_speed = 0;
once = true;
once_blood = true;
depth = 3;
speed = random_range(6, 9);


//angulo de disparo
if instance_exists(obj_bullet_collision)
	{
		var ed = instance_nearest(x, y, obj_bullet_collision);

		direction = ed.direction;
		image_angle = ed.direction;
	}
else
	{
		direction = global.enemy_direction;
		image_angle = ia;
	}