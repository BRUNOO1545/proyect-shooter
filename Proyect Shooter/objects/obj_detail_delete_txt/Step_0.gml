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
					global.detail_delete = 0;
				break;
				
				case 1:
					//declarar cambio
					global.detail_delete = 1;
				break;
				
				case 2:
					//declarar cambio
					global.detail_delete = 2;
				break;
				
				case 3:
					//declarar cambio
					global.detail_delete = 3;
				break;
			}
				
		//guardar
		ini_open(global.config_file)
		ini_write_real(__config_section, dn_detaildelete, global.detail_delete)
		ini_close();
		
		obj_version.save_exist = true;
					
		//volver
		room_goto(graphics_room);
	}

//volver al menu de config
if (esc)
	{
		room_goto(graphics_room);
	}