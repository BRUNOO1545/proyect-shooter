function scr_debug(){

	//variables
	scr_datanames();
	var cfg = global.config_file;

	if keyboard_check(vk_lcontrol) && keyboard_check(vk_space)
		{
			//FPS
			if keyboard_check_pressed(vk_f1)
				{
					if (global.showfps == 0)
						{
							global.showfps = 1;
						}
					else
						{
							global.showfps = 0;
						}
					
					//save
					ini_open(cfg)
					ini_write_real(__debug_section, dn_showfps, global.showfps)
					ini_close();
				}
			
			//SERVER
			if keyboard_check_pressed(vk_f2)
				{
					if (global.showserver == 0)
						{
							global.showserver = 1;
						}
					else
						{
							global.showserver = 0;
						}
					
					//save
					ini_open(cfg)
					ini_write_real(__debug_section, dn_showserver, global.showserver)
					ini_close();
				}
			
			//COLLISIONS
			if keyboard_check_pressed(vk_f3)
				{
					if (global.showcollisions == 0)
						{
							global.showcollisions = 1;
						}
					else
						{
							global.showcollisions = 0;
						}
					
					//save
					ini_open(cfg)
					ini_write_real(__debug_section, dn_showcollisions, global.showcollisions)
					ini_close();
				}
			
			//RESTART CONFIG DATA
			if keyboard_check_pressed(vk_f4)
				{
					if file_exists(cfg)
						{
							file_delete(cfg);
							game_restart();
						}
				}
		}

}