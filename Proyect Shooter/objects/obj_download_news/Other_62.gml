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
						
						//debug
						if (global.debugmode == true)
							{
								obj_debug.debug = true;
								obj_debug.info = "News data downloaded.";
							}
					}
				else
					{
						global.downloaded = 1;
						obj_load.canrotate = false;
						obj_load.image_index = 0;
						
						//debug
						if (global.debugmode == true)
							{
								obj_debug.debug = true;
								obj_debug.info = "News data undefined.";
							}
					}
			}
		else
			{
				global.downloaded = 1;
				obj_load.canrotate = false;
				obj_load.image_index = 1;
				
				//debug
				if (global.debugmode == true)
					{
						obj_debug.debug = true;
						obj_debug.info = "News data error.";
					}
			}
	}


//leer
if file_exists(fname) && (once == true)
	{
		ini_open(fname)
		global.newstxten = ini_read_string("news", "newsen", "")
		global.newstxtes = ini_read_string("news", "newses", "")
		
		//test
		global.news_maxpage = ini_read_real(string(global.news_lang), "maxpages", 0)
		global.news_page1 = ini_read_string(string(global.news_lang), "page1", "")
		global.news_page2 = ini_read_string(string(global.news_lang), "page2", "")
		global.news_page3 = ini_read_string(string(global.news_lang), "page3", "")
		global.news_page4 = ini_read_string(string(global.news_lang), "page4", "")
		global.news_page5 = ini_read_string(string(global.news_lang), "page5", "")
		
		ini_close();
		
		//debug
		if (global.debugmode == true)
			{
				obj_debug.debug = true;
				obj_debug.info = "News data loaded.";
			}
		
		//leer solo una vez
		once = false;
	}