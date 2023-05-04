//cambiar imagen de moviemiento
image_speed = 0;

if (moveimg < 0)
	{
		//move
		if (ia == 10)
			{
				ia = 7;
			}
		else
			{
				ia += 1;
			}
		
		//view
		if (wa == 22)
			{
				wa = 19;
			}
		else
			{
				wa += 1;
			}
		
		moveimg = 30;
	}
else
	{
		moveimg -= 1;
	}


//llamar al script de controles
scr_controller_menu()

var pe = instance_exists(obj_player);

if (tab) && (pe)
	{
		if (showlist == true)
			{
				showlist = false;
			}
		else
			{
				showlist = true;
			}
	}

//si no existe eliminar lista
if !(pe)
	{
		showlist = false;
	}

//pause alpha
if (pause_alp > 0)
	{
		pause_alp -= 0.05;
	}