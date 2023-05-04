/// @description descargar archivo

if (candownload == true)
	{
		if (ds_map_find_value(async_load, "id") == link)
			{
				if (ds_map_find_value(async_load, "status") >= 0)
					{
						result = ds_map_find_value(async_load, "result");
						file = file_text_open_write(fname);
				
						if !is_undefined(result)
							{
								file_text_write_string(file, result);
								file_text_close(file);
		
								global.downloaded = 2;
								obj_load.canrotate = true;
								obj_load.image_index = 0;
								global.uexists = 1;
								
								if (global.debugmode == true)
									{
										obj_debug.debug = true;
										obj_debug.info = "Update data downloaded.";
									}
							}
						else
							{
								global.downloaded = 1;
								obj_load.canrotate = false;
								obj_load.image_index = 0;
								global.uexists = 0;
								
								if (global.debugmode == true)
									{
										obj_debug.debug = true;
										obj_debug.info = "Update data undefined.";
									}
							}
					}
				else
					{
						global.downloaded = 1;
						obj_load.canrotate = false;
						obj_load.image_index = 1;
						global.uexists = 0;
						
						if (global.debugmode == true)
							{
								obj_debug.debug = true;
								obj_debug.info = "Update data download error.";
							}
					}
			}

		//leer
		if file_exists(fname) && (once == true)
			{
				ini_open(fname)
				global.uversion = ini_read_real("update", "version", 0)
				global.uversiontxt = ini_read_string("update", "versiontxt", "")
				global.ulink1 = ini_read_string("update", "link1", "")
				global.ulink2 = ini_read_string("update", "link2", "")
				global.ulink3 = ini_read_string("update", "link3", "")
				global.ulink1name = ini_read_string("update", "link1name", "")
				global.ulink2name = ini_read_string("update", "link2name", "")
				global.ulink3name = ini_read_string("update", "link3name", "")
				global.christmas = ini_read_real("update", "snow", 0)
				ini_close();
				
				//debug
				if (global.debugmode == true)
					{
						obj_debug.debug = true;
						obj_debug.info = "Update data loaded. Update version: " + string(global.uversion);
					}
				
				//leer solo una vez
				once = false;
			}
	}
else
	{
		global.downloaded = 1;
		obj_load.canrotate = false;
		obj_load.image_index = 1;
		global.uexists = 0;
		cancel = false;
		
		if (global.debugmode == true)
			{
				obj_debug.debug = true;
				obj_debug.info = "Update data canceled.";
			}
	}