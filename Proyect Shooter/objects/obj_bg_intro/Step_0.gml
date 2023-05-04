/// @description fondo

scr_pause_noise()

repeat(amount)
	{
		instance_create_depth(x, y, -y, obj_dots);
	}
		
//audio
if (aud_start == true)
	{
		aud = snd_pause;
		
		if !(audio_is_playing(aud))
			{
				audio_play_sound(aud, 1, false);
				audio_sound_gain(aud, global.sfx, 0);
			}
		
		aud_start = false;
	}

//destruir
if (room == menu_room)
	{
		//stop
		audio_play_sound(snd_eject, 1, false);
		audio_sound_gain(snd_eject, global.sfx, 0);
		
		//parar menu
		audio_stop_sound(aud);
		
		//destruir
		instance_destroy();
	}