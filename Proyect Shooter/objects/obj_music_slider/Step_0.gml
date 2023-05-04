/// @description cambiar volumen

//controller
scr_controller_menu()
scr_datanames()

//bajar o subir
if (left) && (global.music > 0)
	{
		global.music -= 0.1;
	}

if (right) && (global.music < 1)
	{
		global.music += 0.1;
	}

//salir
if (esc)
	{
		//guardar y despues salir
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_music, global.music)
		ini_close();
		
		obj_version.save_exist = true;
		
		room_goto(config_room);
	}