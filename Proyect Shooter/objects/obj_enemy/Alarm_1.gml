/// @description knife dead

//local var
state = "dead";

//knifed
enemy_knifed = true;
		
//bg & shake eff
obj_game_bg.flash = true;
obj_camera_control.shake = true;
obj_camera_control.knock_eff = true;
obj_camera_control.knock_ratio = 8;
		
//scrore
obj_gunbar.player_score += 150;
		
//audio
audio_play_sound(snd_knock, 0, false);
audio_sound_gain(snd_knock, global.sfx, 0);
		
//vibracion
scr_controller_vibration();