function scr_save_leveldata(){

	var file, _leveldata;
	file = working_directory + global.leveldata_file;
	_leveldata = "leveldata";


	ini_open(file)
	
	//level unlock
	ini_write_real(_leveldata, "ldUnlock0", global.lvl_unlock0)
	ini_write_real(_leveldata, "ldUnlock1", global.lvl_unlock1)
	ini_write_real(_leveldata, "ldUnlock2", global.lvl_unlock2)
			
	ini_close();

}