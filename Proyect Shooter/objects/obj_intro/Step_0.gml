//temporizador
if (introtimer <= 0)
	{
		if (global.first_launch == 1)
			{
				room_goto(save_alert);
			}
		else
			{		
				if (global.langscreen == 1)
					{
						if (global.alert == 1)
							{
								room_goto(save_alert);
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
	}
else
	{
		introtimer -= 1;
	}

//cambiar imagen y parpadear
switch (introtimer)
	{
		case 360:
			mode = 1;
			scale = true;
			image_index = 0;
			image_alpha = 1;
		break;
		
		case 300:
			scale = false;
		break;
		
		case 240:
			scale = true;
			image_index = 1;
			image_alpha = 1;
		break;
		
		case 180:
			scale = false;
		break;
		
		case 120:
			//mode = 2;
			scale = true;
			image_index = 2;
			image_alpha = 1;
		break;
		
		case 60:
			mode = 2;
			scale = false;
		break;
	}


//reducir imagen
if (scale = true)
	{
		image_xscale -= 0.001;
		image_yscale -= 0.001;
		image_alpha -= 0.017;
	}
else
	{
		image_xscale = 1;
		image_yscale = 1;
	}


//saltar intro
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
						introtimer = 0;
					}
			}
	}

/*
//lineas
switch mode
	{
		case 1:
			if (x_max < room_width + x_lmt)
				{
					x_max += x_spd;
				}
			
			if (x_max2 > -x_lmt)
				{
					x_max2 -= x_spd;
				}
		break;
		
		case 2:
			if (x_min < room_width + x_lmt)
				{
					x_min += x_spd;
				}
			
			if (x_min2 > -x_lmt)
				{
					x_min2 -= x_spd;
				}
		break;
	}