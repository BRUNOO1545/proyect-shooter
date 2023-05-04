x = camera_get_view_x(view_camera[0]) + 1276;
y = camera_get_view_y(view_camera[0]) + 610;
depth = -y;
image_speed = 0.3;
image_xscale = 1;
image_yscale = 1;
image_alpha = 0;
timer = 180;
mode = 0;

//debug
if (global.debugmode == true)
	{
		obj_debug.debug = true;
		obj_debug.info = "Saving user data.";
	}