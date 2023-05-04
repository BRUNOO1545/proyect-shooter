/// @description timer

//saltar
if (global.gicCanSkipIntro == "True")
	{
		//controller
		scr_controller_menu()
		
		//saltar
		if (esc)
			{
				if (esc_pushed == false)
					{
						esc_pushed = true;
						timer = 0;
					}
			}
	}

switch timer
	{
		case timerstart:
			mode = 0;
		break;
		
		case timerdiv:
			mode = 1;
		break;
	}

switch mode
	{
		case 0:
			if (alp < 1)
				{
					alp += alpspd;
				}
		break;
		
		case 1:
			if (alp > 0)
				{
					alp -= alpspd;
				}
		break;
	}

//anim
if (ii > 6)
	{
		ii = 0;
	}
else
	{
		ii += iispd;
	}


//timer 0
if (timer <= 0)
	{
		if (global.langscreen == 1)
			{
				if (global.alert == 1)
					{
						if (global.gicForceAlert == "True")
							{
								room_goto(alpha_alert);
							}
						else
							{
								if (global.gicCheckUpdates == "True")
									{
										room_goto(update_room);
									}
								else
									{
										room_goto(menu_room);
									}
							}
					}
				else
					{
						room_goto(alpha_alert);
					}
			}
		else
			{
				room_goto(lang_room);
			}	
	}
else
	{
		timer -= 1;
	}