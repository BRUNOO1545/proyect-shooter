if object_exists(obj_player)
	{
		//seguir
		var _camspd = 100;
		camera_set_view_target(view_camera[0], obj_player);
		camera_set_view_speed(view_camera[0], _camspd, _camspd);
		
		
		//shake
		if (shake == true)
			{
				shake_angle = 0;
				
				if (knock_eff == false)
					{
						while (shake_angle == 0)
							{
								randomize();
								shake_angle = irandom_range(-range, range);
							}
					}
				else
					{
						randomize();
						shake_angle = choose(-knock_ratio, knock_ratio);
					}
				
				camera_set_view_angle(view_camera[0], shake_angle);
				shake = false;
			}
		else
			{
				camera_set_view_angle(view_camera[0], 0);
			}
	}
else
	{
		shake = false;
		shake_angle = 0;
	}


//deactivate objects
instance_deactivate_all(true);
var _range, cam, cam_x, cam_y, cam_w, cam_h;
_range = 64;
cam = view_camera[0];
cam_x = camera_get_view_x(cam) - _range;
cam_y = camera_get_view_y(cam) - _range;
cam_w = camera_get_view_width(cam) + _range;
cam_h = camera_get_view_height(cam) + _range;

instance_activate_region(cam_x, cam_y, cam_w, cam_h, true);

//objectos inportantes
scr_activate_important_obj();