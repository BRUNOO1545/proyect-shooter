function scr_datanames(){
	
	//nombre en los archivos de guardado
	__config_section = "config";
	__debug_section = "debug";
	
	#region //config
		var __init_cfg = "c";
	
		dn_firstlaunch = __init_cfg + "FirstLaunch";
		dn_lang = __init_cfg + "Lang";
		dn_music = __init_cfg + "Music";
		dn_sfx = __init_cfg + "SFX";
		dn_helpers = __init_cfg + "Helpers";
		dn_alert = __init_cfg + "Alert";
		dn_langscreen = __init_cfg + "Langscreen";
		dn_gamepaddeadzone = __init_cfg + "GamepadDeadZone";
		dn_gamepadsens = __init_cfg + "GamepadSens";
		dn_gamepadvelocity = __init_cfg + "GamepadVelocity";
		dn_gamepadvibration = __init_cfg + "GamepadVibration";
		dn_gamepadvibrationamount = __init_cfg + "GamepadVibrationAmount";
		dn_gamepadstart = __init_cfg + "GamepadStart";
		dn_xboxui = __init_cfg + "XboxUI";
		dn_psui = __init_cfg + "PSUI";
		dn_limitrain = __init_cfg + "LimitRain";
		dn_showbullet = __init_cfg + "ShowBullet";
		dn_showmagazine = __init_cfg + "ShowMagazine";
		dn_showgunpowder = __init_cfg + "ShowGunpowder";
		dn_pausenoise = __init_cfg + "PauseNoise";
		dn_pausecolor = __init_cfg + "PauseColor";
		dn_rpausebutton = __init_cfg + "RPauseButton";
		dn_pausedots = __init_cfg + "PauseDots";
		dn_pausestyle = __init_cfg + "PauseStyle";
		dn_generalshadows = __init_cfg + "GeneralShadows";
		dn_windowfocus = __init_cfg + "WindowFocus";
		dn_detaildelete = __init_cfg + "DetailDelete";
		dn_discordrich = __init_cfg + "DiscordRich";
		dn_separateshadows = __init_cfg + "SeparateShadows";
		dn_tipsstart = __init_cfg + "TipsStart";
		dn_bloodstyle = __init_cfg + "BloodStyle";
		dn_premenuanybutton = __init_cfg + "PreMenuAnyButton";
		dn_infinitescroll = __init_cfg + "InfiniteScroll";
		dn_displaymode = __init_cfg + "DisplayMode";
	#endregion
	
	#region //debug
		var __init_debug = "d";
	
		dn_showcollisions = __init_debug + "ShowCollisions";
		dn_showfps = __init_debug + "ShowFPS";
		dn_showserver = __init_debug + "ShowServer";
	#endregion
	
	//dn_ = __init_cfg + "";

}