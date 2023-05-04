/// @description dibujar texto

///fa right
draw_set_font(fnt_1);

//rgb
if (hue > 255)
	{
		hue = 0;
	}
else
	{
		hue += 1;
	}

rgb = make_color_hsv(hue, 255, 192);

//texto
var xcor1, xcor2, sel, col1, col2;
xcor1 = 32;
xcor2 = room_width - 32;
sel = rgb;
col1 = c_white;
col2 = c_white;


for (var i = 0; i <= limit; i++)
	{
		//col
		if (i == op)
			{
				col1 = sel;
				col2 = sel;
			}
		else
			{
				col1 = c_white;
				col2 = c_gray;
			}
		
		//stats
		draw_set_halign(fa_left);
		draw_text_color(xcor1, cy + (newline * i), string(stat[i]), col1, col1, col1, col1, 1);
		
		//data
		draw_set_halign(fa_right);
		draw_text_color(xcor2, cy + (newline * i), string(data[i]), col2, col2, col2, col2, 1);
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

		//desplazarse
		draw_sprite_ext(ui, 5, 15, 595, 1, 1, 0, c_white, 1);
		draw_sprite_ext(ui, 6, 55, 595, 1, 1, 0, c_white, 1);
		draw_text(95, 597, string(global.txt22));
	}

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt69));

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);