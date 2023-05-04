/// @description dibujar texto

//title
draw_set_font(fnt_3);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt113) + " " + string(global.gametitle));

///imgs

if (global.buy_downloaded == true)
	{
		//rectangle  
		var xx, yy, xx_max, yy_max, mg, mg_2;
		xx = 64;
		yy = 100;
		xx_max = 300;
		yy_max = 300;
		mg = 2;
		mg_2 = 3;

		draw_rectangle(xx - mg_2, yy - mg_2, xx + xx_max + mg_2, yy + yy_max + mg_2, true);
		draw_rectangle(xx - mg, yy - mg, xx + xx_max + mg, yy + yy_max + mg, true);
		draw_rectangle(xx, yy, xx + xx_max, yy + yy_max, true);

		//load
		var ld_xcl = 1;

		draw_sprite_ext(spr_load, 0, xx + xx_max/2, yy + yy_max/2, ld_xcl, ld_xcl, ld_rot, c_white, 1);

		//imagen
		if sprite_exists(img)
			{
				draw_sprite_stretched(img, 0, xx, yy, xx_max, yy_max);
			}
		else
			{
				draw_sprite_stretched(spr_missing, 0, xx, yy, xx_max, yy_max);
			}
		
		//img name
		var w = 6;
		
		if (global.buy_img_limit > 0)
			{
				draw_set_font(fnt_1);
				draw_set_color(c_white);
				//draw_set_halign(fa_right);
				//draw_text(xx + xx_max - 3, yy + yy_max - 32 - w, string(img_scl + 1));
				
				draw_set_halign(fa_center);
				draw_text(xx + xx_max/2, yy + yy_max + 5, string(global.txt116) + " " + string(img_scl + 1) + " " + string(global.txt115) + " " + string(img_max + 1));
		
				//barra de carga
				draw_line_width(xx, yy + yy_max - w, xx + xx_max/img_timermax*img_timer, yy + yy_max - w, 12);
			}
		
		//texto
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		var sep, wd, txt_lang_1, txt_lang_2;
		sep = 20;
		wd = 800;
		txt_lang_1 = string_hash_to_newline(global.buy_txt_lang_1);
		txt_lang_2 = string_hash_to_newline(global.buy_txt_lang_2);
		
		switch (global.lang)
			{
				case 1:
					if !(txt_lang_1 == "")
						{
							draw_text_ext(400, 96, string(global.txt114) + ":\n\n" + string(txt_lang_1), sep, wd);
						}
					else
						{
							draw_text(400, 96, string(global.txt114) + ":\n\n" + string(global.txt117) + ".");
						}
				break;
				
				case 2:
					if !(txt_lang_2 == "")
						{
							draw_text_ext(400, 96, string(global.txt114) + ":\n\n" + string(txt_lang_2), sep, wd);
						}
					else
						{
							draw_text(400, 96, string(global.txt114) + ":\n\n" + string(global.txt117) + ".");
						}
				break;
			}
	}