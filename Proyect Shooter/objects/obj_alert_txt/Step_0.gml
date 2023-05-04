/// @description logica

//variables
scr_controller_menu()
scr_datanames()

if (enter)
	{
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_firstlaunch, 1)
		ini_write_real(__config_section, dn_alert, 1)
		ini_close();
		
		//update var
		global.first_launch = 1;
		
		//update
		if (global.gicCheckUpdates == "True")
			{
				room_goto(update_room);
			}
		else
			{
				room_goto(menu_room);
			}
	}

if (esc)
	{
		game_end();
	}