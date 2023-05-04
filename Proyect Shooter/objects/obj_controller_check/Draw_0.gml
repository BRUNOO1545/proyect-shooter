if gamepad_is_connected(global.controller)
	{
		//llamar a las variables
		scr_controller_img()
		
		//txt
		draw_set_font(fnt_2);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(rw, rh, string(global.txt13) + ": " + string(gamepad_get_description(global.controller)));
		
		//pov
		draw_sprite_ext(ui, iipov, rw - 160, rh + 64, 3, 3, 0, c_white, 1);

		//buttons
		draw_sprite_ext(ui, 1, rw + 64, rh + 128, 1, 1, 0, iibta, 1);
		draw_sprite_ext(ui, 0, rw + 96, rh + 96, 1, 1, 0, iibtb, 1);
		draw_sprite_ext(ui, 2, rw + 32, rh + 96, 1, 1, 0, iibtx, 1);
		draw_sprite_ext(ui, 11, rw + 64, rh + 64, 1, 1, 0, iibty, 1);
	}