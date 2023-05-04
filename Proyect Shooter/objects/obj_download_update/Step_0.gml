/// @description salir y reintentar

//llamar al script
scr_controller_menu()

//update
if (global.downloaded == 2) && (global.uversion > global.iversion)
	{
		global.update = true;
	}
else
	{
		global.update = false;
	}

//salir normal
if (esc) && (((global.downloaded == 0) && (global.update == false)) or ((global.downloaded == 2) && (global.update == true)))
	{
		//game_end();
		candownload = false;
		cancel = true;
	}

//esc error
if (closetimer < 0) && (esc) && ((global.downloaded == 1) && (global.update == false))
	{
		game_end();	
	}
else
	{
		closetimer -= 1;
	}

//enter normal
if (enter) && (global.downloaded == 2) && (global.update == false)
	{
		room_goto(menu_room);
	}

//enter error
if (enter) && ((global.downloaded == 1) && (global.update == false))
	{
		room_restart();	
	}

//espacio error
if (space) && ((global.downloaded == 1) && (global.update == false))
	{
		room_goto(menu_room);	
	}


//timer
if ((global.downloaded == 2) && (global.update == false))
	{
		if (timer < 0)
			{
				room_goto(menu_room);
			}
		else
			{
				timer -= 1;
			}
	}