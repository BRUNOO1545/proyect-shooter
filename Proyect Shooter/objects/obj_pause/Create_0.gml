/// @description pause_timer
global.pausetimermax = 30;
global.pause_timer = global.pausetimermax;
gp_disconected = false;

//camera
if !(instance_exists(obj_camera_control))
	{
		instance_create_depth(x, y, -y, obj_camera_control);
	}

//bg
if !(instance_exists(obj_game_bg))
	{
		instance_create_depth(x, y, -y, obj_game_bg);
	}