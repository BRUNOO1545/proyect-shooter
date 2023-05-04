if (ia > limit)
	{
		ia = limit + 0.1;
	}
else
	{
		ia += 0.01;
	}

randomize();
color = choose(c_gray, c_dkgray);
//color = choose(make_color_hsv(128, 255, 128), make_color_hsv(128, 255, 255), make_color_hsv(128, 255, 64));


//puntos
scr_pause_noise()

repeat(amount)
	{
		instance_create_depth(x, y, -y, obj_dots);
	}
