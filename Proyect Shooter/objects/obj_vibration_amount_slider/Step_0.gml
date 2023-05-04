/// @description cambiar volumen

//controller
scr_controller_menu()
scr_datanames()

if (controller_vibration_supported == true)
	{
		//bajar o subir
		if (left) && (global.gamepad_vibration_amount > 0.1)
			{
				global.gamepad_vibration_amount -= 0.1;
			}

		if (right) && (global.gamepad_vibration_amount < 1)
			{
				global.gamepad_vibration_amount += 0.1;
			}
		
		//vibration
		if (space)
			{
				if (controller_can_vibrate == false)
					{
						controller_can_vibrate = true;
					}
				else
					{
						controller_can_vibrate = false;
					}
			}
	}

if (global.controller > -1)
	{
		if (controller_can_vibrate == true)
			{
				gamepad_set_vibration(global.controller, global.gamepad_vibration_amount, global.gamepad_vibration_amount);
			}
		else
			{
				gamepad_set_vibration(global.controller, 0, 0);
			}
	}

//salir
if (esc)
	{
		if (controller_vibration_supported == true)
			{
				if (controller_can_vibrate == false)
					{
						controller_vibrate_act = false;
						
						//guardar y despues salir
						ini_open(global.config_file)
						ini_write_real(__config_section, dn_gamepadvibrationamount, global.gamepad_vibration_amount)
						ini_close();
						
						obj_version.save_exist = true;
						
						room_goto(gamepad_room);
					}
				else
					{
						controller_vibrate_act = true;
					}
			}
		else
			{
				room_goto(gamepad_room);
			}
	}