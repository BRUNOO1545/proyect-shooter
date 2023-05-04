/// @description botones

//helpers
scr_controller_img()

if (global.helpers == 1)
	{
		//botones y texto de los mismos
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);

		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));

		switch global.downloaded
			{
				//error
				case 1:
					//enter
					draw_set_color(c_white);
					draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
					draw_text(55, 597, string(global.txt27));
				break;
				
				//downloaded
				case 2:
					//enter
					draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
					
					var timers = round(timer/60);
					
					if (timers >= 0)
						{
							draw_set_color(c_dkgray);
							draw_text(55, 597, string(global.txt28) + " (" + string(timers) + ")");
						}
					else
						{
							draw_set_color(c_white);
							draw_text(55, 597, string(global.txt28));
						}
					
					//space
					draw_sprite_ext(ui, 29, 15, 555, 1, 1, 0, c_white, 1);
					
					if !(global.buy_link == "")
						{
							if !(global.buy_link_name == "")
								{
									draw_set_color(c_white);
									draw_text(55, 557, string(global.txt113) + " - " + string(global.buy_link_name));
								}
							else
								{
									draw_set_color(c_white);
									draw_text(55, 557, string(global.txt113));
								}
						}
					else
						{
							draw_set_color(c_dkgray);
							draw_text(55, 557, string(global.txt113));
						}
				break;
			}
	}


//black bg
if (global.blackbg_buy_used == false)
	{
		if (_bg_alp > 0)
			{
				_bg_alp -= global.BG_MenuAlphaSpeed;
			}
		
		if (_bg_alp == 0)
			{
				global.blackbg_buy_used = true;
			}

		draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);
	}