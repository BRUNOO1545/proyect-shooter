/// @description actualizar estado

if (global.discord_rich == 1)
	{
		np_update();
	}
else
	{
		__np_shutdown();
	}
	
//desactivar contador
if (room == continue_room)
	{
		enemy_killed_counter = false;
	}

//contador de bajas
if (discord_ready == true)
	{
		if (enemy_killed_counter == true)
			{
				//datos
				if (reset_stats == false)
					{
						//actualiza constantemente
						np_setpresence(string(global.discord_info0) + ": " + string(global.actual_enemy_killed) + " - " + string(global.discord_info1) + ": " + string(global.actual_points), string(global.discord_info2) + ": " + string(global.actual_map), "rich_icon", "");
					}
				else
					{
						//vuelve a 0
						global.actual_enemy_killed = 0;
						global.actual_points = 0;
						global.actual_map = "";
						
						//actualiza
						np_setpresence(string(global.discord_info0) + ": " + string(global.actual_enemy_killed) + " - " + string(global.discord_info1) + ": " + string(global.actual_points), string(global.discord_info2) + ": " + string(global.actual_map), "rich_icon", "");
						
						//vuelve a falso
						reset_stats = false;
					}
			}
		else
			{
				//solo imagen
				np_setpresence("", "", "rich_icon", "");
			}
	}