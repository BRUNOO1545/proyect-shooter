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
					room_goto(preconfigs_room);
				break;
				
				case 1:
					room_goto(generalshadows_room);
				break;
				
				case 2:
					room_goto(pausenoise_room);
				break;
				
				case 3:
					room_goto(showbullets_room);
				break;
				
				case 4:
					room_goto(showmagazine_room);
				break;
				
				case 5:
					room_goto(showgunpowder_room);
				break;
				
				case 6:
					room_goto(limitrain_room);
				break;
				
				case 7:
					room_goto(detaildelete_room);
				break;
				
				case 8:
					room_goto(displaymode_room);
				break;
			}
		
		global.UiSelected_ConfigGraphics = op;
	}


//salir de config
if (esc)
	{
		global.UiSelected_ConfigGraphics = 0;
		room_goto(config_room);
	}