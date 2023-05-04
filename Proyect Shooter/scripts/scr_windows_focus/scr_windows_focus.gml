function scr_windows_focus(){
	
	if (global.window_focus == 1) && (!window_has_focus() && (os_browser == browser_not_a_browser)) && !(room == pause_room) && (global.pause_timer < 0)
		{
			//guardar screenshot
			var file = "user/pause.png";
			screen_save(file);
		
			audio_pause_all();
		
			game_save("user/pause.sav");
		
			//audio
			audio_play_sound(snd_click, 1, false);
			audio_sound_gain(snd_click, global.sfx, 0);
		
			room_goto(pause_room);
		}

}