/// @description atras

//llamar al script
scr_controller_menu()

//esc
if (esc)
	{
		room_goto(menu_room);
	}

//sc
if (enter) && (tab)
	{
		if (sc == false)
			{
				sc = true;
			}
		else
			{
				sc = false;
			}
	}