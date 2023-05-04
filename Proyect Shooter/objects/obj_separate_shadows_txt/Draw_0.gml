/// @description dibujar teclas
draw_set_font(fnt_2);
draw_set_color(c_white);
draw_set_halign(fa_center);

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
		
		draw_text_color(room_width/2, 300 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, 1);
	}

//boton esc y texto
scr_controller_img()

if (global.helpers == 1)
	{
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));
		
		//enter
		draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
		draw_text(55, 597, string(global.txt21));

		//desplazarse
		draw_sprite_ext(ui, 5, 15, 555, 1, 1, 0, c_white, 1);
		draw_sprite_ext(ui, 6, 55, 555, 1, 1, 0, c_white, 1);
		draw_text(95, 557, string(global.txt22));
	}

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt131));

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);