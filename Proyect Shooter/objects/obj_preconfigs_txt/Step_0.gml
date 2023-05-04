/// @description logica

//variables
scr_controller_menu()

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
					precfg_slc = 0;
					scr_preconfigs();
				break;
				
				case 1:
					precfg_slc = 1;
					scr_preconfigs();
				break;
				
				case 2:
					precfg_slc = 2;
					scr_preconfigs();
				break;
				
				case 3:
					precfg_slc = 3;
					scr_preconfigs();
				break;
				
				case 4:
					precfg_slc = 4;
					scr_preconfigs();
				break;
				
				case 5:
					precfg_slc = 5;
					scr_preconfigs();
				break;
			}
		
		obj_version.save_exist = true;
					
		//volver
		room_goto(graphics_room);
	}

//volver al menu de config
if (esc)
	{
		room_goto(graphics_room);
	}