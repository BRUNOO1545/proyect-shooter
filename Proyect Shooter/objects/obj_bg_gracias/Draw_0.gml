var cam_x, cam_y, cam_w, cam_h;
cam_x = 0;
cam_y = 100;
cam_w = room_width;
//cam_h = room_height - 228;//50;
cam_h = room_height - 64;

hue += 0.3;

if (hue > 255)
	{
		hue = 0;
	}

color_1 = make_color_hsv(hue, 255, 128);
color_2 = make_color_hsv(hue, 255, 32);

draw_rectangle_color(cam_x, cam_y, cam_w, cam_h, color_1, color_1, color_2, color_2, false);