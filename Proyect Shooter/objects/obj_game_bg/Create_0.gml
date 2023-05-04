/// @description random col
randomize();
hue = random_range(0, 255);
col = 0;
col2 = 0;
sat = 255;
flash = false;
depth = 99;

//rain
if !(instance_exists(obj_create_water))
	{
		instance_create_depth(x, y, 40, obj_create_water);
	}

//bg pause
pause_bg_timer_max = 15;
pause_bg_timer = 0;