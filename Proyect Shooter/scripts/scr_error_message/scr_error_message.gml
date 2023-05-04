exception_unhandled_handler(function (exception){
	
	//crash user info and write
	var name, file, dat, time, day, info, extinfo, gml_stacktrace, croot, gameversion, dialog;
	name = "crash_log";
	file = "crash_log.ini";
	dat = global.debugroot + file;
	time = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
	day = string(current_month) + "/" + string(current_day) + "/" + string(current_year);
	info = string(exception.message);
	extinfo = string(exception.script);
	gml_stacktrace = string(exception.stacktrace);
	croot = "/%LocalAppData%/Proyect_Shooter/game_logs/";
	gameversion = "Game version: " + string(global.userversion) + ", Game internal version: " + string(global.iversion) + ", GM version: " + string(GM_runtime_version);
	
	if (global.gicCrashFullDialog == "True")
		{
			dialog = "Fatal Crash\n\n\nError Info: " + exception.message + "\n\nScript: " + exception.script + "\n\n\nA file was generated:\nName: crash_log.ini\nLocation: " + croot + "\n\nPlease report this error and share this file with the developer.";
		}
	else
		{
			dialog = "Fatal Crash\n\n\nA file was generated:\nName: crash_log.ini\nLocation: " + croot + "\n\nPlease report this error and share this file with the developer.";
		}
	
	ini_open(dat)
	ini_write_string(name, day + " - " + time + " ---- Game Stacktrace ", " " + gml_stacktrace)
	ini_write_string(name, day + " - " + time + " ---- Game Crash Script ", " " + extinfo)
	ini_write_string(name, day + " - " + time + " ---- Game Crash Description ", " " + info)
	ini_write_string(name, day + " - " + time + " ---- Game Version ", " " + gameversion)
	ini_close();
	
	ini_open(global.debugroot + "game_log.ini")
	ini_write_string("Crash_data", "Game Crashed At " + time + " - " + day + " ", " Please read the file crash_log.ini for more info.")
	ini_close();
	
	show_message(string(dialog));

});