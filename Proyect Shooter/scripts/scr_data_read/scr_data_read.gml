function scr_data_read(){
	
	//script con nombres
	scr_datanames();
	
	//variables de uso en archivo
	var config, debug;
	config = __config_section;
	debug = __debug_section;

	//si no existe crearlo
	if !file_exists(global.config_file)
		{
			#region //Create config ini if doesnt exists.
				ini_open(global.config_file)
		
				//config
				ini_write_real(config, dn_firstlaunch, 0)
				ini_write_real(config, dn_lang, global.lang_default)
				ini_write_real(config, dn_music, 1)
				ini_write_real(config, dn_sfx, 0.5)
				ini_write_real(config, dn_helpers, 1)
				ini_write_real(config, dn_alert, 0)
				ini_write_real(config, dn_langscreen, 0)
				ini_write_real(config, dn_gamepaddeadzone, 0.2)
				ini_write_real(config, dn_gamepadsens, 2)
				ini_write_real(config, dn_gamepadvelocity, 4)
				ini_write_real(config, dn_gamepadvibration, 1)
				ini_write_real(config, dn_gamepadvibrationamount, 0.3)
				ini_write_real(config, dn_gamepadstart, 1)
				ini_write_real(config, dn_xboxui, 0)
				ini_write_real(config, dn_psui, 0)
				ini_write_real(config, dn_limitrain, 0)
				ini_write_real(config, dn_showbullet, 1)
				ini_write_real(config, dn_showmagazine, 1)
				ini_write_real(config, dn_showgunpowder, 1)
				ini_write_real(config, dn_pausenoise, 1)
				ini_write_real(config, dn_pausecolor, 0)
				ini_write_real(config, dn_rpausebutton, 1)
				ini_write_real(config, dn_pausedots, 0)
				ini_write_real(config, dn_pausestyle, 0)
				ini_write_real(config, dn_generalshadows, 1)
				ini_write_real(config, dn_windowfocus, 1)
				ini_write_real(config, dn_detaildelete, 1)
				ini_write_real(config, dn_discordrich, 1)
				ini_write_real(config, dn_separateshadows, 0)
				ini_write_real(config, dn_tipsstart, 1)
				ini_write_real(config, dn_bloodstyle, 0)
				ini_write_real(config, dn_premenuanybutton, 0)
				ini_write_real(config, dn_infinitescroll, 1)
				ini_write_real(config, dn_displaymode, 1)
		
				//debug
				ini_write_real(debug, dn_showcollisions, 0)
				ini_write_real(debug, dn_showfps, 0)
				ini_write_real(debug, dn_showserver, 0)
			
				ini_close();
			
				//reiniciar
				game_restart();
			#endregion
		}
	else
		{
			#region //Read congif ini.
				ini_open(global.config_file)

				//config
				global.first_launch = ini_read_real(config, dn_firstlaunch, 0)
				global.lang = ini_read_real(config, dn_lang, 1)
				global.music = ini_read_real(config, dn_music, 1)
				global.sfx = ini_read_real(config, dn_sfx, 0.5)
				global.helpers = ini_read_real(config, dn_helpers, 1)
				global.alert = ini_read_real(config, dn_alert, 0)
				global.langscreen = ini_read_real(config, dn_langscreen, 0)
				global.gamepad_deadzone = ini_read_real(config, dn_gamepaddeadzone, 0.2)
				global.gamepad_sens = ini_read_real(config, dn_gamepadsens, 2)
				global.gamepad_velocity = ini_read_real(config, dn_gamepadvelocity, 4)
				global.gamepad_vibration = ini_read_real(config, dn_gamepadvibration, 1)
				global.gamepad_vibration_amount = ini_read_real(config, dn_gamepadvibrationamount, 0.3)
				global.gamepad_start = ini_read_real(config, dn_gamepadstart, 1)
				global.xboxui = ini_read_real(config, dn_xboxui, 0)
				global.psui = ini_read_real(config, dn_psui, 0)
				global.limitrain = ini_read_real(config, dn_limitrain, 0)
				global.showbullet = ini_read_real(config, dn_showbullet, 1)
				global.showmagazine = ini_read_real(config, dn_showmagazine, 1)
				global.showgunpowder = ini_read_real(config, dn_showgunpowder, 1)
				global.pause_noise = ini_read_real(config, dn_pausenoise, 1)
				global.pause_color = ini_read_real(config, dn_pausecolor, 0)
				global.rpause_button = ini_read_real(config, dn_rpausebutton, 1)
				global.pause_dots = ini_read_real(config, dn_pausedots, 0)
				global.pause_style = ini_read_real(config, dn_pausestyle, 0)
				global.general_shadows = ini_read_real(config, dn_generalshadows, 2)
				global.window_focus = ini_read_real(config, dn_windowfocus, 1)
				global.detail_delete = ini_read_real(config, dn_detaildelete, 1)
				global.discord_rich = ini_read_real(config, dn_discordrich, 1)
				global.separate_shadows = ini_read_real(config, dn_separateshadows, 0)
				global.tips_start = ini_read_real(config, dn_tipsstart, 1)
				global.blood_style = ini_read_real(config, dn_bloodstyle, 0)
				global.premenu_any_button = ini_read_real(config, dn_premenuanybutton, 0)
				global.infinite_scroll = ini_read_real(config, dn_infinitescroll, 1)
				global.display_mode = ini_read_real(config, dn_displaymode, 1)

				//debug
				global.showcollisions = ini_read_real(debug, dn_showcollisions, 0)
				global.showfps = ini_read_real(debug, dn_showfps, 0)
				global.showserver = ini_read_real(debug, dn_showserver, 0)

				ini_close();
			#endregion
		}

}