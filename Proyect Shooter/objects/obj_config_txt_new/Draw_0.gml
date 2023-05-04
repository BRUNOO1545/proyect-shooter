/// @description dibujar teclas

//fondo
if (hue > 255)
	{
		hue -= 255;
	}
else
	{
		hue += 0.5;
	}

if (hue2 > 255)
	{
		hue2 -= 255;
	}
else
	{
		hue2 += 0.5;
	}

var bg_col = make_color_hsv(hue, 255, 150);
var bg_col2 = make_color_hsv(hue2, 255, 150);

draw_rectangle_color(0, 64, room_width, 500, bg_col, bg_col2, bg_col2, bg_col, false);

//menu logo
//rot += 0.5;
draw_sprite_ext(spr_config_logos, op, room_width - 200 + 3, 280 + 3, 5, 5, rot, c_black, 1);
draw_sprite_ext(spr_config_logos, op, room_width - 200, 280, 5, 5, rot, c_white, 1);

//black
draw_rectangle_color(0, 0, room_width, 64, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(0, 500, room_width, room_height, c_black, c_black, c_black, c_black, false);

//teclas
draw_set_font(fnt_2);
draw_set_color(c_white);
draw_set_halign(fa_left);

var x_sup;

for (var i = 0; i <= limit; i++)
	{
		if (i == op)
			{
				txt_col = c_white;
				//txt_col = global.UiSelected_color;
				x_sup = 8;
			}
		else
			{
				txt_col = global.UiSelected_color;
				//txt_col = c_white;
				x_sup = 0;
			}
		
		draw_text_color(64 + 2 + x_sup, 96 + 2 + (32 * i), string(button[i]), c_black, c_black, c_black, c_black, 1);
		draw_text_color(64 + x_sup, 96 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, 1);
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
draw_set_halign(fa_left);
draw_text(32, 10, string(global.txt3));

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);