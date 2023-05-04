/// @description logica

//variables
scr_controller_menu()
scr_datanames()

//subir o bajar
if (down)
	{
		if (op < limit)
			{
				op++;
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = 0;
					}
			}
	}

if (up)
	{
		if (op > 0)
			{
				op--;
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = limit;
					}
			}
	}

//switch de rooms
if (enter)
	{
		switch op
			{
				case 0:
					//declarar cambio
					global.gamepad_vibration = 0;
				break;
				
				case 1:
					//declarar cambio
					global.gamepad_vibration = 1;
				break;
			}
		
		
		//guardar
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_gamepadvibration, global.gamepad_vibration)
		ini_close();
		
		obj_version.save_exist = true;
		
		//volver al menu de config
		room_goto(gamepad_room);
	}

//volver al menu de config
if (esc)
	{
		room_goto(gamepad_room);
	}