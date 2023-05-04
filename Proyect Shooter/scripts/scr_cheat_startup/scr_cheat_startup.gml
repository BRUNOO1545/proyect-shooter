function scr_cheat_startup(){

	//var
	var file, ic;
	file = global.root + "ic.dat";
	ic = 0;
	
	scr_cheat_detect();
	
	//data
	if !(file_exists(file))
		{
			ini_open(file)
			ini_write_real("ic", "ic", 0)
			ini_close();
			
			game_restart();
		}
	else
		{
			ini_open(file)
			ic = ini_read_real("ic", "ic", 0)
			ini_close();
			
			if (ic == 1)
				{
					game_end();
				}
		}

}