/// @description switch de lenguaje

if (once == true)
	{
		//limites
		if (global.lang < 1) or (global.lang > 2)
			{
				global.lang = 1;
			}

		//cambio de lenguajes
		switch (global.lang)
			{
				//inglés
				case 1:
					/*
					//lvl name
					global.lvl0name = "INTRODUCTION";
					global.lvl1name = "WHAT BEGINS, ENDS";
			
					//lvl desc
					global.lvl0desc = "";
					global.lvl1desc = "AFTER THE ''ACCIDENT'', PETER DECIDES IT'LL NOT STAY LIKE THAT.";
					*/
			
					//news dir
					global.news_lang = "news_en";
			
					//declarar cambio
					global.langfile = global.lang_1;
					scr_load_lang();
					scr_lang_name();
				break;
		
				//español
				case 2:
					/*
					//lvl name
					global.lvl0name = "INTRODUCCIÓN";
					global.lvl1name = "LO QUE COMIENZA, TERMINA";
			
					//lvl desc
					global.lvl0desc = "";
					global.lvl1desc = "DESPUÉS DEL ''ACCIDENTE'', PETER DECIDE QUE NO SE QUEDARÁ ASÍ.";
					*/
			
					//news dir
					global.news_lang = "news_es";
			
					//declarar cambio
					global.langfile = global.lang_2;
					scr_load_lang();
					scr_lang_name();
				break;
		
				//default
				default:
					//news dir
					global.news_lang = "news_en";
			
					//declarar cambio
					global.langfile = global.lang_1;
					scr_load_lang();
					scr_lang_name();
				break;
			}


		if (room == lang_check)
			{
				if (global.langscreen == 1)
					{
						room_goto(config_room);
					}
				else
					{
						if (global.alert == 0)
							{
								room_goto(alpha_alert);
							}
						else
							{
								if (global.gicCheckUpdates == "True")
									{
										room_goto(update_room);
									}
								else
									{
										room_goto(menu_room);
									}
							}
				
						if (global.langscreen == 0)
							{
								global.langscreen = 1;
							}
					}
			}
	
		//finalizar
		once = false;
	}