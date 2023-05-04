/// @description salir y reintentar

//llamar al script
scr_controller_menu()

//salir
if (esc)
	{
		global.blackbg_news_used = false;
		room_goto(menu_room);
	}

if (global.downloaded == 1)
	{
		if (enter)
			{
				room_restart();
			}
	}

//error
if (global.downloaded == 2)
	{
		if (timer <= 0) && (enter)
			{
				room_restart();
				timer = 600;
			}
		else
			{
				timer -= 1;
			}
	}