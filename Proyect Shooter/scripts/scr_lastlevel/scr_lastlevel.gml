function scr_lastlevel(){

	//ultimo nivel jugado
	var file, _leveldata;
	file = working_directory + global.leveldata_file;
	_leveldata = "leveldata";


	ini_open(file)
	
	ini_write_real(_leveldata, "ldLastPlayed", global.lvl_lastplayed)
			
	ini_close();

}