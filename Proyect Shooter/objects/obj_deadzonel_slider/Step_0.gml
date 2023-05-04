/// @description cambiar volumen

//limites
if (global.deadzone_l < 0.1)
	{
		global.deadzone_l = 0.1;
	}

if (global.deadzone_l > 0.7)
	{
		global.deadzone_l = 0.7;
	}


//controller
scr_controller_menu()

//bajar o subir
if (left)
	{
		global.deadzone_l -= 0.1;
	}

if (right)
	{
		global.deadzone_l += 0.1;
	}

//salir
if (esc)
	{
		//guardar y despues salir
		ini_open("user/data.ini")
		ini_write_real("config", "deadzone_l", global.deadzone_l)
		ini_close();
		
		room_goto(gamepad_room);
	}