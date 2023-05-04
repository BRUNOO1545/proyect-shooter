/// @description dibujar botones y texto

draw_self();
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_left);


//alpha del texto
if (introtimer > introtimerdiv)
	{
		esc_alpha += 0.02;
	}
else
	{
		esc_alpha -= 0.02;
	}

//dibujarlo
if (global.gicCanSkipIntro == "True")
	{
		scr_controller_img()

		if (global.helpers == 1)
			{
				draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, esc_alpha);
				draw_text_color(55, 637, string(global.txt0), c_white, c_white, c_white, c_white, esc_alpha);
			}
	}


//copy
if (global.gicShowIntroVersion == "True")
	{
		draw_set_halign(fa_center);
		draw_text_color(room_width/2, 650, string(global.version), c_gray, c_gray, c_gray, c_gray, esc_alpha);
	}


//rgb
if (hue > 255)
	{
		hue = 0;
	}
else
	{
		hue += 1;
	}

col = make_color_hsv(hue, 255, 255);
col2 = make_color_hsv(hue - 64, 255, 255);

var col_w, lmt;
col_w = c_white;
lmt = 2;
/*
draw_line_width_color(x_min + lmt, 100 + lmt, x_max + lmt, 100 + lmt, 10, col_w, col_w);
draw_line_width_color(x_min2 + lmt, 530 + lmt, x_max2 + lmt, 530 + lmt, 10, col_w, col_w);

draw_line_width_color(x_min, 100, x_max, 100, 10, col, col2);
draw_line_width_color(x_min2, 530, x_max2, 530, 10, col2, col);*/