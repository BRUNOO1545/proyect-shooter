randomize();
var blood_dir = instance_nearest(x, y, obj_blood_tipes);
dispersion = 5;
once_death = true;

if instance_exists(blood_dir)
	{
		direction = blood_dir.direction + random_range(-dispersion, dispersion);
	}
else
	{
		direction = random_range(0, 360) + random_range(-dispersion, dispersion);
	}

image_angle = direction;
speed = 8;
image_speed = 0;
depth = 3;