debug = true;
info = "Game initialized. Game version: " + string(global.userversion) + ", Game internal version: " + string(global.iversion) + ", Using GameMaker Runtime: " + string(GM_runtime_version);

time = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
day = string(pretext) + string(current_month) + "/" + string(current_day) + "/" + string(current_year);

if (debug == true)
	{
		var dat = global.debugroot + file;
		
		ini_open(dat)
		ini_write_string(day, "---- " + time + " ----", info)
		ini_close();
		
		debug = false;
	}

//debug mode
if (global.debugmode == false)
	{
		instance_destroy();
	}