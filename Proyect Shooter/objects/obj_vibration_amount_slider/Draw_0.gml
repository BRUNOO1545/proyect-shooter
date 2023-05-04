/// @description dibujar barra y texto

scr_controller_img()

if (global.helpers == 1)
	{
		//botones y texto
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		if (controller_vibration_supported == true)
			{
				//volume
				draw_sprite_ext(ui, 3, 15, 555, 1, 1, 0, c_white, 1);
				draw_sprite_ext(ui, 4, 55, 555, 1, 1, 0, c_white, 1);
				draw_text(95, 557, string(global.txt12));

				//space
				draw_sprite_ext(ui, 2, 15, 595, 1, 1, 0, c_white, 1);
				draw_text(55, 597, string(global.txt149));
			}

		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));
	}

if (controller_vibration_supported == true)
	{
		//slider y texto
		scr_slider()
		
		var vibact, vibval;
		vibval = round(global.gamepad_vibration_amount*100);
		
		if (controller_can_vibrate == true)
			{
				vibact = global.txt151;
			}
		else
			{
				vibact = global.txt150;
			}
		
		draw_set_font(fnt_2);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2 - 64, string(vibval) + "%");
		draw_text(room_width/2, room_height/2 + 76, string(vibact));
		draw_sprite(spr_slider, subimg, room_width/2, room_height/2);
		
		//vibration alert
		if (controller_vibrate_act == true)
			{
				draw_set_font(fnt_2);
				draw_set_color(c_red);
				draw_set_halign(fa_center);
				draw_text(room_width/2, room_height/2 - 256, string(global.txt152));
			}
	}
else
	{
		//si no esta activada la vibracion
		draw_set_font(fnt_2);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2 - 32, string(global.txt159));
	}

//title
draw_set_font(fnt_3);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt148));

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);