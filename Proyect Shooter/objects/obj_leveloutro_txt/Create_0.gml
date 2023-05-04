_buffer = 64;
x_start = 0 - _buffer;
x_limit = room_width + _buffer;
x_speed = 40;
x_mid = x_limit/2;
y_line = room_height/2;
timer = 40;
ia = 1;
eject_alpha = 1;

//pause eff
scr_pause_noise();

repeat(amount)
	{
		instance_create_depth(x, y, 4, obj_dots);
	}