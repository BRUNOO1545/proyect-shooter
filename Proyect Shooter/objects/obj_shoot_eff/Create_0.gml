/// @description image speed
randomize();
image_speed = random_range(0.5, 1);
sprite_index = global.smk_ia;

if instance_exists(obj_player)
	{
		image_angle = obj_player.image_angle;
	}
else
	{
		instance_destroy();
	}