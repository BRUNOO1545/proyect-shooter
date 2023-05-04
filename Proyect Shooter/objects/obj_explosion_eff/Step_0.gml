/// @description data

image_speed = is;

if (image_index >= ii_max)
	{
		if (can_repeate == false)
			{
				instance_destroy();
			}
	}


if (image_index == 1)
	{
		repeat(10)
			{
				instance_create_depth(x, y, 2, obj_explosion_dots_eff);
			}
	}