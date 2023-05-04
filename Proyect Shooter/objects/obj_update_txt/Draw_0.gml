/// @description dibujar teclas
draw_set_font(fnt_2);
draw_set_color(c_white);
draw_set_halign(fa_center);

if (global.update == true)
	{
		for (var i = 0; i <= limit; i++)
			{
				if (i == op)
					{
						txt_col = global.UiSelected_color;
					}
				else
					{
						txt_col = c_white;
					}
		
				draw_text_color(room_width/2, 500 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, 1);
			}
	}

//title
draw_set_halign(fa_center);

if (global.update == true)
	{
		//title
		draw_set_font(fnt_3);
		draw_text(room_width/2, 10, string(global.txt38));
		
		//version
		draw_set_font(fnt_2);
		draw_text(room_width/2, 96, string(global.txt42) + ": " + string(global.userversion) + "\n" + string(global.txt43) + ": " + string(global.uversiontxt));
		
		//server
		draw_set_font(fnt_3);
		
		var nl = string_hash_to_newline(global.txt41);
		draw_text(room_width/2, 364, string(nl));
	}
else
	{
		//title + text
		draw_set_font(fnt_3);
		
		var nl = string_hash_to_newline(global.txt39);
		draw_text(room_width/2, 10, string(global.txt37) + "\n\n\n\n\n" + string(nl));
	}

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);