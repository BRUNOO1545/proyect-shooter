depth = -y;

scr_debug()
scr_error_message()

//save logo
if (save_exist == true)
	{
		if !(instance_exists(obj_save_logo))
			{
				instance_create_depth(x, y, -y, obj_save_logo);
			}
		
		save_exist = false;
	}

//vibrar mando al inicio
if (room == menu_room)
	{
		if (global.gamepad_start == 1) && (once_vib == true)
			{
				gamepad_set_vibration(global.controller, global.gamepad_vibration_amount, global.gamepad_vibration_amount);
				alarm[0] = 20;
			}
		
		once_vib = false;
	}