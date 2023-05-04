if (canshow == true)
	{
		var spr, x_txt, y_txt, _txt, rg, c_1, c_2, c_3, x_img, y_img;
		spr = spr_menu_bg;
		x_img = 64;
		y_img = 64;
		x_txt = x_img + 80;
		y_txt = y_img + 14;
		_txt = "STOP";
		rg = 3;
		c_1 = c_red;
		c_2 = c_green;
		c_3 = c_white;

		//fondo
		draw_sprite_stretched_ext(spr, 0, 0, 0, room_width, room_height - 0.5, c_blue, 1);

		//texto
		draw_sprite_ext(spr, 0, x_img - rg, y_img - rg, 1, 1, 0, c_1, 0.5);
		draw_sprite_ext(spr, 0, x_img + rg, y_img + rg, 1, 1, 0, c_2, 0.5);
		draw_sprite_ext(spr, 0, x_img, y_img, 1, 1, 0, c_3, 1);
		draw_set_font(fnt_2);
		draw_set_halign(fa_left);
		draw_text_color(x_txt - rg, y_txt - rg, string(_txt), c_1, c_1, c_1, c_1, 0.5);
		draw_text_color(x_txt + rg, y_txt + rg, string(_txt), c_2, c_2, c_2, c_2, 0.5);
		draw_text_color(x_txt, y_txt, string(_txt), c_3, c_3, c_3, c_3, 1);

		//barras blancas
		var w, w_rg;
		w = 10;
		w_rg = 1;
		
		draw_line_width_color(-w_rg, w/2 - w_rg, room_width + w_rg, w/2 - w_rg, w, c_3, c_3);
		draw_line_width_color(-w_rg, room_height - (w/2 + w_rg), room_width + w_rg, room_height - (w/2 + w_rg), w, c_3, c_3);
	}/*
else
	{
		draw_set_font(fnt_1);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(room_width/2, room_height/2, "THANKS FOR PLAYING");
	}