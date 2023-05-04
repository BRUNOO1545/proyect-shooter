randomize();
xcl = 0.1;
ia = global.imgang;
image_xscale = global.enemy_xcale + xcl;
image_yscale = global.enemy_xcale + xcl;
image_speed = random_range(1, 5);
once = true;
once_blood = true;
//once_gore = true;
depth = 3;
speed = random_range(6, 9);
si = spr_enemy_dead;
sprite_index = si;

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