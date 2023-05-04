/// @description botones

//helpers
scr_controller_img()

if (global.helpers == 1)
	{
		//botones y texto de los mismos
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);

		switch (global.downloaded)
			{
				//downloading
				case 0:
					//esc
					draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
					draw_text(55, 637, string(global.txt36));
				break;
				
				//error
				case 1:
					//enter
					draw_sprite_ext(ui, 1, 15, 555, 1, 1, 0, c_white, 1);
					draw_text(55, 557, string(global.txt27));
					
					//space
					draw_sprite_ext(ui, 2, 15, 595, 1, 1, 0, c_white, 1);
					draw_text(55, 597, string(global.txt40));
					
					//esc
					draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
					draw_text(55, 637, string(global.txt68));
				break;
				
				//downloaded
				case 2:
					if (global.update == true)
						{
							
							//desplazarse
							draw_sprite_ext(ui, 5, 15, 555, 1, 1, 0, c_white, 1);
							draw_sprite_ext(ui, 6, 55, 555, 1, 1, 0, c_white, 1);
							draw_text(95, 557, string(global.txt22));
							
							//enter
							draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
							draw_text(55, 597, string(global.txt21));
					
							//esc
							draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
							draw_text(55, 637, string(global.txt4));
						}
					else
						{
							//enter
							draw_sprite_ext(ui, 1, 15, 635, 1, 1, 0, c_white, 1);
							draw_text(55, 637, string(global.txt2) + " ("+ string(round(timer/60)) + ")");
						}
				break;
			}
		
		if !(global.downloaded == 2)
			{
				//title
				draw_set_font(fnt_3);
				draw_set_halign(fa_center);
				draw_text(room_width/2, 10, string(global.txt37));
			}
	}

//fondo negro

//black bg
if (global.blackbg_update_used == false)
	{
		if (_bg_alp > 0)
			{
				_bg_alp -= global.BG_MenuAlphaSpeed;
			}
		
		if (_bg_alp == 0)
			{
				global.blackbg_update_used = true;
			}

		draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);
	}