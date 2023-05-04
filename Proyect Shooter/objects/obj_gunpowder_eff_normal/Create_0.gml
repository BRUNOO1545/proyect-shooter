/// @description variables iniciales

randomize();

eff_alp = random_range(0.5, 1);
rr = random_range(-8, 8);

image_speed = 0;
image_index = irandom_range(0, 5);

if instance_exists(obj_player)
	{
		direction = obj_player.image_angle + rr;
	}
else
	{
		instance_destroy();
	}

image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);
speed = random_range(6, 10);
depth = 0;