//cambiar siempre

//crear sonido
if !audio_is_playing(snd_menu) && ((room = menu_room) or (room = config_room) or (room = intro))
	{
		if (global.first_launch == 1)
			{
				audio_play_sound(snd_menu, 1, true);
				audio_sound_gain(snd_menu, global.music, 0);
			}
	}
else
	{
		if (room == levelintro_room)
			{
				audio_sound_gain(snd_menu, 0, obj_levelintro_txt.timerl);
			}
		else
			{
				audio_sound_gain(snd_menu, global.music, 0);
			}
	}