/// @description cambiar volumen

//controller
scr_controller_menu()
scr_datanames()

//bajar o subir
if (left) && (global.gamepad_velocity > 1)
	{
		global.gamepad_velocity -= 1;
	}

if (right) && (global.gamepad_velocity < 6)
	{
		global.gamepad_velocity += 1;
	}

//salir
if (esc)
	{
		//guardar y despues salir
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_gamepadvelocity, global.gamepad_velocity)
		ini_close();
		
		obj_version.save_exist = true;
		
		room_goto(gamepad_room);
	}