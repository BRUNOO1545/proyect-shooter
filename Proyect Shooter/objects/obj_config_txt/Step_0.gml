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
					room_goto(lang_room);
				break;
				
				case 1:
					room_goto(music_room);
				break;
				
				case 2:
					room_goto(sfx_room);
				break;
				
				case 3:
					room_goto(graphics_room);
				break;
				
				case 4:
					room_goto(gamepad_room);
				break;
				
				case 5:
					room_goto(accesibility_room);
				break;
			}
		
		global.UiSelected_Config = op;
	}


//salir de config
if (esc)
	{
		scr_uiselect_reset();
		room_goto(menu_room);
	}