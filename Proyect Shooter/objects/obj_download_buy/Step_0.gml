/// @description salir y reintentar

//llamar al script
scr_controller_menu()

//salir
if (esc)
	{
		global.blackbg_buy_used = false;
		room_goto(menu_room);
	}

//reintentar
if (global.downloaded == 1)
	{
		if (enter)
			{
				room_restart();
			}
	}

//ir
if (buy) && !(global.buy_link == "")
	{
		execute_shell_simple(global.buy_link);
		game_end();
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