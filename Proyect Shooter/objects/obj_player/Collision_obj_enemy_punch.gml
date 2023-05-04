/// @description golpe enemigo

if (player_using_shield == false)
	{
		player_killed = true;		
		
		//bg & shake eff
		//obj_game_bg.flash = true;
		obj_camera_control.shake = true;
		obj_camera_control.knock_eff = true;
		obj_camera_control.knock_ratio = 8;
	}
else
	{
		if !(instance_exists(obj_player_shield_kill))
			{
				player_shield_col_deleted = true;
				player_killed = true;
				
				//bg & shake eff
				//obj_game_bg.flash = true;
				obj_camera_control.shake = true;
				obj_camera_control.knock_eff = true;
				obj_camera_control.knock_ratio = 8;
			}
		else
			{
				//bg & shake eff
				//obj_game_bg.flash = true;
				obj_camera_control.shake = true;
				obj_camera_control.knock_eff = true;
				obj_camera_control.knock_ratio = 3;
			}
	}

//vibracion
scr_controller_vibration();
		
//audio
audio_play_sound(snd_knock, 0, false);
audio_sound_gain(snd_knock, global.sfx, 0);