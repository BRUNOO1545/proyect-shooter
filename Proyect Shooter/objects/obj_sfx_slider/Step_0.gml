/// @description cambiar volumen

//controller
scr_controller_menu()
scr_datanames()

//bajar o subir
if (left) && (global.sfx > 0)
	{
		global.sfx -= 0.1;
	}

if (right) && (global.sfx < 1)
	{
		global.sfx += 0.1;
	}

//salir
if (esc)
	{
		//guardar y despues salir
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_sfx, global.sfx)
		ini_close();
		
		obj_version.save_exist = true;
		
		room_goto(config_room);
	}

//prueba de audio
if !audio_is_playing(random_audio) && (space)
	{
		audio_sound_gain(random_audio, global.sfx, 0);
		audio_play_sound(random_audio, 0, false);
	}