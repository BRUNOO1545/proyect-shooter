/// @description logica

//variables
scr_controller_menu()
scr_controller_pressanybutton()
scr_rooms()

if (started == true)
	{
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
							global.restarted = false;
							global.rooms = 0;
							
							global.lvl_lastplayed = 0;
							scr_lastlevel();
							
							global.UiGameStarted = true;
							scr_uiselect_reset();
							global.UiGameStarted = false;
							
							room_goto(levelintro_room);
						break;
				
						case 1:
							room_goto(continue_room);
						break;
				
						case 2:
							room_goto(gun_room);
						break;
				
						case 3:
							room_goto(config_room);
						break;
				
						case 4:
							room_goto(about_room);
						break;
				
						case 5:
							game_end();
						break;
					}
		
				global.gametitleonce = true;
				global.UiSelected_MainMenu = op;
			}

		//news
		if (tab)
			{
				room_goto(news_room);
				global.gametitleonce = true;
				global.UiSelected_MainMenu = op;
			}

		//stats
		if (del)
			{
				room_goto(stats_room);
				global.gametitleonce = true;
				global.UiSelected_MainMenu = op;
			}

		//buy complete
		if (buy) && (global.gicIsDemo == "True")
			{
				room_goto(buy_room);
				global.gametitleonce = true;
				global.UiSelected_MainMenu = op;
			}

		#region //seleccionado
		
		if (val <= val_start)
			{
				val_state = 0;
			}

		if (val >= val_limit)
			{
				val_state = 1;
			}

		switch (val_state)
			{
				case 0:
					val += val_spd;
				break;
		
				case 1:
					val -= val_spd;
				break;
			}
		
		#endregion
	}
else
	{
		if (global.premenu_any_button == 1)
			{
				//start
				if (any_button)
					{
						//verificar enter
						enter_touched = true;
				
						//vibracion
						//obj_version.once_vib = true;
					}
			}
		else
			{
				//start
				if (enter)
					{
						//verificar enter
						enter_touched = true;
				
						//vibracion
						//obj_version.once_vib = true;
					}
			}
		
		//verificar
		if (enter_touched == true)
			{
				if (txt_intro_alpha <= 0)
					{
						global.gamepremenustarted = true;
						started = true;
					}
				else
					{
						txt_intro_alpha -= txt_intro_alpha_spd;
					}
			}
		/*
		//puntos
		scr_pause_noise()

		repeat(amount)
			{
				instance_create_depth(x, y, -y, obj_dots);
			}*/
		

		#region //titilar
		
		if (val_pm <= val_start_pm)
			{
				val_state_pm = 0;
			}

		if (val_pm >= val_limit_pm)
			{
				val_state_pm = 1;
			}

		switch (val_state_pm)
			{
				case 0:
					val_pm += val_spd_pm;
				break;
		
				case 1:
					val_pm -= val_spd_pm;
				break;
			}
		
		#endregion
	}

//title
if (titleang > titleanglimit)
	{
		mode = 0;
	}

if (titleang < -titleanglimit)
	{
		mode = 1;
	}

switch (mode)
	{
		case 0:
			titleang -= titlespd;
			titlexcale -= titlespd/titleanglimit/4;
		break;
		
		case 1:
			titleang += titlespd;
			titlexcale += titlespd/titleanglimit/4;
		break;
	}

if (titlealp < 1)
	{
		titlealp += titlespd/5;
	}