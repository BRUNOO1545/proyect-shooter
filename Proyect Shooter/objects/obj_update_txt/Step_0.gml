/// @description logica

//variables
scr_controller_menu()

if (global.update == true)
	{
		//subir o bajar
		if (down) && (op < limit)
			{
				op++;
			}

		if (up) && (op > 0)
			{
				op--;
			}

		//switch de rooms
		if (enter)
			{
				switch op
					{
						case 0:
							execute_shell_simple(global.ulink1);
							game_end();
						break;
				
						case 1:
							execute_shell_simple(global.ulink2);
							game_end();
						break;
				
						case 2:
							execute_shell_simple(global.ulink3);
							game_end();
						break;
					}
			}
		
		//salir
		if (esc)
			{
				game_end();
			}
	}