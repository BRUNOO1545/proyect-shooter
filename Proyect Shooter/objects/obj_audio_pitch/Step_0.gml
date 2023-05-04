//pitch de audio
scr_rooms()

//parar menu
audio_stop_sound(snd_menu);

//resume
if (global.audioresume == 1)
	{
		once = false;
		start = false;
		
		if instance_exists(obj_player)
			{
				pitch = 1;
			}
		else
			{
				pitch = 0;
			}
		
		global.audioresume = 0;
	}
else
	{
		//reproducir una vez
		if (once = true)
			{
				if !audio_is_playing(lvlsong)
					{
						audio_play_sound(lvlsong, 1, true);
					}
				
				once = false;
			}

		//reiniciar pitch
		if audio_is_playing(lvlsong) && (start = true) && (pitch < 1)
			{
				pitch += pitchspd;
		
				if (pitch >= 1)
					{
						start = false;
					}
			}


		//bajarlo (prueba)
		if !instance_exists(obj_player)
			{
				pitch -= 0.015;
			}
		else
			{
				pitch += 0.0005;
			}

		//no saturar pitch
		if (pitch > 1)
			{
				pitch = 1;
			}

		if (pitch < 0)
			{
				pitch = 0;
				audio_pause_sound(lvlsong);
			}
		else
			{
				audio_resume_sound(lvlsong);
			}

		//ajustar siempre el picth
		audio_sound_pitch(lvlsong, pitch);
		audio_sound_gain(lvlsong, global.music, 0);
	}