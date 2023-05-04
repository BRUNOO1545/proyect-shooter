/// @description audio

//crear sonido
if !audio_is_playing(snd_menu) && ((room == menu_room) or (room == config_room) or (room == intro) or (room == continue_room))
	{
		if (global.first_launch == 1)
			{
				audio_play_sound(snd_menu, 1, true);
				audio_sound_gain(snd_menu, global.music, 0);
			}
	}