function scr_reload_sound(){

	switch global.gun
		{
			//AA-12
			case 0:
				audio_play_sound(snd_reload, 0, false);
				audio_sound_gain(snd_reload, global.sfx, 0);
			break;
			
			//S12K
			case 7:
				audio_play_sound(snd_s12k_reload, 0, false);
				audio_sound_gain(snd_s12k_reload, global.sfx, 0);
			break;
		}

}