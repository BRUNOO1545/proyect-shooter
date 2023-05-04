var cam_x, cam_y, cam_w, cam_h, _buffer;
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
_buffer = 60;

hue += 0.3;

if (hue > 255)
	{
		hue = 0;
	}

color_1 = make_color_hsv(hue, 255, 128);

draw_rectangle_color(cam_x - _buffer, cam_y - _buffer, cam_x + cam_w + _buffer, cam_y + cam_h + _buffer, color_1, color_1, color_2, color_2, false);