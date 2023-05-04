/// @description dibujar teclas

//variables
scr_rooms();

//alpha
if (menu_alpha > 1)
	{
		menu_alpha = 1;
	}
else
	{
		menu_alpha += 0.05;
	}

//rgb
hue += hue_spd;

if (hue > 255)
	{
		hue = 0;
	}

hue2 += hue_spd;

if (hue2 > 255)
	{
		hue2 = 0;
	}

hue3 += hue_spd;

if (hue3 > 255)
	{
		hue3 = 0;
	}

hue4 += hue_spd;

if (hue4 > 255)
	{
		hue4 = 0;
	}

color = make_color_hsv(hue, 255, 128);
color2 = make_color_hsv(hue2, 255, 128);
color3 = make_color_hsv(hue3, 255, 128);
color4 = make_color_hsv(hue4, 255, 128);


//variables
var col, col2, col3, col4, col_txt1, col_txt2, txt_x, txt_y, sep, w, lock, lock2;
//col = c_dkgray;
col = color;
col2 = color2;
col3 = color3;
col4 = color4;
col_txt1 = c_white;
col_txt2 = c_black;
txt_x = 400;
txt_y = 180;
sep = 35;
w = 900;
lock = global.txt85;
lock2 = global.txt86;

//fondo
// var rad = 50;
// draw_rectangle_color(0, 100, room_width, room_height - 150, col, col, col, col, false);
// draw_roundrect_color_ext(1, yu, room_width - 3, yd, rad, rad, col, col, false);
//draw_rectangle_color(0, yu, room_width, yd, col2, col, col, col2, false);
//draw_rectangle_color(0, yu, room_width, yd, col3, col, col2, col4, false);
//draw_rectangle_color(0, yu, room_width, yd, col2, col, col2, col, false);
draw_rectangle_color(0, yu, room_width, yd, col2, col2, col, col, false);

//imagen del nivel
if (lvllock == 1)
	{
		draw_sprite_ext(spr_prev, lvlselect, 204, 304 - iy, 2, 2, radio, c_black, menu_alpha);
		draw_sprite_ext(spr_prev, lvlselect, 200, 300 - iy, 2, 2, radio, c_white, menu_alpha);
	}
else
	{
		draw_sprite_ext(spr_prev_lock, 1, 204, 304 - iy, 2, 2, radio, c_black, menu_alpha);
		draw_sprite_ext(spr_prev_lock, 1, 200, 300 - iy, 2, 2, radio, c_white, menu_alpha);
	}

//lvl
if (lvlselect > 0)
	{
		var lvlsl, lvllt;
		lvlsl = lvlselect;
		lvllt = lvllimit;

		draw_set_font(fnt_1);
		draw_set_halign(fa_center);
		//draw_text_color(room_width/2 + 4, 494 + iy, string(global.txt88) + ": " + string(lvlsl) + "/" + string(lvllt), col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		//draw_text_color(room_width/2, 490 + iy, string(global.txt88) + ": " + string(lvlsl) + "/" + string(lvllt), col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
		draw_text_color(room_width/2 + 4, 494 + iy, string(global.txt88) + " " + string(lvlsl), col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		draw_text_color(room_width/2, 490 + iy, string(global.txt88) + " " + string(lvlsl), col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);

		//de lado
		// draw_set_halign(fa_right);
		// draw_text_color(room_width - 5, 106, string(global.txt88) + " " + string(lvlsl), col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		// draw_text_color(room_width - 9, 102, string(global.txt88) + " " + string(lvlsl), col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
	}

//name, desc
draw_set_font(fnt_2);
draw_set_halign(fa_left);

if (lvllock == 1)
	{
		draw_text_ext_color(txt_x + 4, txt_y + 4, string(lvlname) + "\n\n" + string(lvldesc), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		draw_text_ext_color(txt_x, txt_y, string(lvlname) + "\n\n" + string(lvldesc), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
	}
else
	{
		draw_text_ext_color(txt_x + 4, txt_y + 4, string(lock) + "\n\n" + string(lock2), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		draw_text_ext_color(txt_x, txt_y, string(lock) + "\n\n" + string(lock2), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
	}

//test
//draw_line(w, 0, w, room_height);

//helpers
scr_controller_img()

//botones y texto de los mismos
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_right);

if (global.helpers == 1)
	{
		draw_set_font(fnt_1);
		draw_set_halign(fa_left);
		
		//esc
		draw_set_color(c_white);
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));
		
		//enter
		if (lvllock == 1)
			{
				draw_set_color(c_white);	
			}
		else
			{
				draw_set_color(c_dkgray);
			}
		
		draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
		draw_text(55, 597, string(global.txt21));

		//desplazarse
		draw_set_color(c_white);
		draw_sprite_ext(ui, 3, 15, 555, 1, 1, 0, c_white, 1);
		draw_sprite_ext(ui, 4, 55, 555, 1, 1, 0, c_white, 1);
		draw_text(95, 557, string(global.txt22));
	}

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt2));