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
					room_goto(helpers_room);
				break;
				
				case 1:
					room_goto(pausestyle_room);
				break;
				
				case 2:
					room_goto(pausedots_room);
				break;
				
				case 3:
					room_goto(pausecolor_room);
				break;
				
				case 4:
					room_goto(bloodstyle_room);
				break;
				
				case 5:
					room_goto(rpausebutton_room);
				break;
				
				case 6:
					room_goto(gamepadstart_room);
				break;
				
				case 7:
					room_goto(separateshadows_room);
				break;
				
				case 8:
					room_goto(tipsstart_room);
				break;
				
				case 9:
					room_goto(premenuanykey_room);
				break;
				
				case 10:
					room_goto(infinitescroll_room);
				break;
				
				case 11:
					room_goto(windowfocus_room);
				break;
				
				case 12:
					room_goto(discordrich_room);
				break;
			}
		
		global.UiSelected_ConfigAccesibility = op;
	}


//salir de config
if (esc)
	{
		global.UiSelected_ConfigAccesibility = 0;
		room_goto(config_room);
	}