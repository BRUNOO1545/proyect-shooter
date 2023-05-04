time = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
day = string(pretext) + string(current_month) + "/" + string(current_day) + "/" + string(current_year);

debug = true;
info = string(pretext2) + "Game ended without error." + string(pretext2);

if (debug == true)
	{
		var dat = global.debugroot + file;
		
		screen_save(string(global.debugroot) + "game_ended_screenshoot.png");
		
		ini_open(dat)
		ini_write_string(day, "---- " + time + " ----", info)
		ini_close();
		
		debug = false;
	}