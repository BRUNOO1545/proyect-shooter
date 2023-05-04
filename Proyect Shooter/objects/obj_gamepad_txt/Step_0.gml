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
					room_goto(vibration_room);
				break;
				
				case 1:
					room_goto(vibrationamount_room);
				break;
				
				case 2:
					room_goto(deadzone_room);
				break;
				
				case 3:
					room_goto(sens_room);
				break;
				
				case 4:
					room_goto(velocity_room);
				break;
				
				case 5:
					room_goto(xboxui_room);
				break;
				
				case 6:
					room_goto(psui_room);
				break;
			}
		
		global.UiSelected_ConfigGamepad = op;
	}


//salir de config
if (esc)
	{
		global.UiSelected_ConfigGamepad = 0;
		room_goto(config_room);
	}