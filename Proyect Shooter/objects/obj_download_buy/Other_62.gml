/// @description descargar archivo

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
						global.buy_downloaded = true;
						
						//debug
						if (global.debugmode == true)
							{
								obj_debug.debug = true;
								obj_debug.info = "Buy data downloaded.";
							}
					}
				else
					{
						global.downloaded = 1;
						obj_load.canrotate = false;
						obj_load.image_index = 0;
						global.buy_downloaded = false;
						
						//debug
						if (global.debugmode == true)
							{
								obj_debug.debug = true;
								obj_debug.info = "Buy data undefined.";
							}
					}
			}
		else
			{
				global.downloaded = 1;
				obj_load.canrotate = false;
				obj_load.image_index = 1;
				global.buy_downloaded = false;
				
				//debug
				if (global.debugmode == true)
					{
						obj_debug.debug = true;
						obj_debug.info = "Buy data error.";
					}
			}
	}


//leer
if file_exists(fname) && (once_load == true)
	{
		ini_open(fname)
		
		//link
		global.buy_link = ini_read_string("buy", "link", "")
		global.buy_link_name = ini_read_string("buy", "link_name", "")
		
		//image
		global.buy_img_limit = ini_read_real("buy", "img_limit", 0)
		global.buy_img_0 = sprite_add(ini_read_string("buy", "img_0", ""), 0, false, false, 0, 0)
		global.buy_img_1 = sprite_add(ini_read_string("buy", "img_1", ""), 0, false, false, 0, 0)
		global.buy_img_2 = sprite_add(ini_read_string("buy", "img_2", ""), 0, false, false, 0, 0)
		global.buy_img_3 = sprite_add(ini_read_string("buy", "img_3", ""), 0, false, false, 0, 0)
		global.buy_img_4 = sprite_add(ini_read_string("buy", "img_4", ""), 0, false, false, 0, 0)
		
		//txt
		global.buy_txt_lang_1 = ini_read_string("buy", "txt_lang_1", "")
		global.buy_txt_lang_2 = ini_read_string("buy", "txt_lang_2", "")
		ini_close();
		
		//debug
		if (global.debugmode == true)
			{
				obj_debug.debug = true;
				obj_debug.info = "Buy data loaded.";
			}
		
		//leer una vez
		once_load = false;
	}