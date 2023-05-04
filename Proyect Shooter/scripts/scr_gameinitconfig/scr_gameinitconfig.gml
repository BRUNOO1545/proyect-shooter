function scr_gameinitconfig(){
	
	var gic_file = "gameinitconfig.gic";
	
	ini_open(gic_file)
	
	//global.gicIsConsole = ini_read_string("gic", "gicIsConsole", "")
	global.gicIsDemo = ini_read_string("gic", "gicIsDemo", "")
	global.gicCrashFullDialog = ini_read_string("gic", "gicCrashFullDialog", "")
	global.gicUsePreMenu = ini_read_string("gic", "gicUsePreMenu", "")
	global.gicMenuTransitionSpeed = ini_read_real("gic", "gicMenuTransitionSpeed", 0)
	global.gicCheckUpdates = ini_read_string("gic", "gicCheckUpdates", "")
	global.gicShowIntroVersion = ini_read_string("gic", "gicShowIntroVersion", "")
	global.gicShowVersion = ini_read_string("gic", "gicShowVersion", "")
	global.gicShowCursor = ini_read_string("gic", "gicShowCursor", "")
	global.gicCanSkipIntro = ini_read_string("gic", "gicCanSkipIntro", "")
	global.gicAutosaveType = ini_read_real("gic", "gicAutosaveType", 0)
	global.gicUiSelectedIntensity = ini_read_real("gic", "gicUiSelectedIntensity", 0)
	global.gicMenuBgShowInfo = ini_read_string("gic", "gicMenuBgShowInfo", "")
	global.gicMenuBgRandomRangeMin = ini_read_real("gic", "gicMenuBgRandomRangeMin", 0)
	global.gicMenuBgRandomRangeMax = ini_read_real("gic", "gicMenuBgRandomRangeMax", 0)
	global.gicMenuBgRandomRangeLimitMin = ini_read_real("gic", "gicMenuBgRandomRangeLimitMin", 0)
	global.gicMenuBgRandomRangeLimitMax = ini_read_real("gic", "gicMenuBgRandomRangeLimitMax", 0)
	global.gicForceFullscreen = ini_read_string("gic", "gicForceFullscreen", "")
	global.gicForceAlert = ini_read_string("gic", "gicForceAlert", "")
	global.gicGamepadSupport = ini_read_string("gic", "gicGamepadSupport", "")
	global.gicGamepadOnly = ini_read_string("gic", "gicGamepadOnly", "")
	global.gicGamepadType = ini_read_string("gic", "gicGamepadType", "")
	
	ini_close();

}