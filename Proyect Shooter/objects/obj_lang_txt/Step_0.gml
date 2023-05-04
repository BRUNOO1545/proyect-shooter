/// @description logica

//variables
scr_controller_menu()
scr_datanames()

//subir o bajar
if (down)
	{
		if (op < limit)
			{
				op++;
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = 0;
					}
			}
	}

if (up)
	{
		if (op > 0)
			{
				op--;
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = limit;
					}
			}
	}

//switch de rooms
if (enter)
	{
		switch op
			{
				case 0:
					//declarar cambio
					global.lang = 1;
				break;
				
				case 1:
					//declarar cambio
					global.lang = 2;
				break;
			}
		
		
		//guardar
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_lang, global.lang)
		ini_write_real(__config_section, dn_langscreen, 1)
		ini_close();
		
		obj_version.save_exist = true;
		
		//volver al menu de config
		room_goto(lang_check);
	}

//volver al menu de config
if (global.langscreen == 1)
	{
		if (esc)
			{
				room_goto(config_room);
			}
	}