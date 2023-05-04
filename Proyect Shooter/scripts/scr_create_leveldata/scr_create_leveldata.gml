function scr_create_leveldata(){

	var file, _leveldata;
	file = working_directory + global.leveldata_file;
	_leveldata = "leveldata";

	if !file_exists(file)
		{
			ini_open(file)
			
			//last level
			ini_write_real(_leveldata, "ldLastPlayed", 0)
			
			//level unlock
			ini_write_real(_leveldata, "ldUnlock0", 1)
			ini_write_real(_leveldata, "ldUnlock1", 1)
			ini_write_real(_leveldata, "ldUnlock2", 0)
			
			ini_close();
			
			game_restart();
		}
	else
		{
			ini_open(file)
			
			//last level
			global.lvl_lastplayed = ini_read_real(_leveldata, "ldLastPlayed", 0)
			
			//level unlock
			global.lvl_unlock0 = ini_read_real(_leveldata, "ldUnlock0", 1)
			global.lvl_unlock1 = ini_read_real(_leveldata, "ldUnlock1", 1)
			global.lvl_unlock2 = ini_read_real(_leveldata, "ldUnlock2", 0)
			
			ini_close();
		}

}