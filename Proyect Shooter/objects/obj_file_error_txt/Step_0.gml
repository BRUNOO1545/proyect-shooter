/// @description logica

//variables
scr_controller_menu();

if (esc)
	{
		game_end();
	}

if (once == true)
	{
		if instance_exists(obj_debug)
			{
				var xpace = " ============================= ";
				
				obj_debug.debug = true;
				obj_debug.info = string(xpace) + "Missing File Located: " + string(global.fcMissingFile) + string(xpace);
			}
		
		once = false;
	}