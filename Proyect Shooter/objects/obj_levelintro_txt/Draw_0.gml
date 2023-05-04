/// @description dibujar teclas

//variables
scr_rooms();

//alpha
if !(timer < timerl/timerdiv)
	{
		if (menu_alpha > 1)
			{
				menu_alpha = 1;
			}
		else
			{
				menu_alpha += 0.03;
			}
	}
else
	{
		if (menu_alpha < 0)
			{
				menu_alpha = 0;
			}
		else
			{
				menu_alpha -= 0.05;
			}
	}

//rgb
hue += hue_spd;

if (hue > 255)
	{
		hue = 0;
	}

hue_bg += hue_spd;

if (hue_bg > 255)
	{
		hue_bg = 0;
	}

hue_bg2 += hue_spd;

if (hue_bg2 > 255)
	{
		hue_bg2 = 0;
	}

color = make_color_hsv(hue, 255, menu_alpha*128);
color_bg = make_color_hsv(hue_bg, 255, menu_alpha*96);
color_bg2 = make_color_hsv(hue_bg2, 255, menu_alpha*96);
col_rgb_bight = make_color_hsv(hue, 255, menu_alpha*255);


//variables
var col, col_txt1, col_txt2, lock, sep, w, txt, scl, lvl, lvlsg, rml;
col = color;
col_txt1 = c_white;
col_txt2 = c_black;
lock = global.txt85;
sep = 50;
w = 1000;
scl = global.rooms;
lvl = string(global.txt88) + " " + string(scl);
lvlsg = lvlsongtxt;
rml = room_width;

//fondo
draw_rectangle_color(x_str, 100, x_lmt, 532, color_bg, color_bg2, color_bg2, color_bg, false);
//draw_rectangle_color(0, yu, room_width, yd, col, col, col, col, false);

//level name
xx += 0.5;
draw_set_font(fnt_6);
draw_set_halign(fa_left);

if (lvllock == 1)
	{
		txt = lvlname;
	}
else
	{
		txt = lock;
	}

//text
draw_text_ext_color(132 + xx, 204, string(txt), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
draw_text_ext_color(128 + xx, 200, string(txt), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);

if (scl > 0)
	{
		//lvl
		draw_text_ext_color(432 - xx, 104, string(lvl), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		draw_text_ext_color(428 - xx, 100, string(lvl), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
		
		//arriba
		//draw_text_ext_color(room_width/2 - xx, 10, string(lvl), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		//draw_text_ext_color(room_width/2 - xx, 10, string(lvl), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
		
		//songname
		//var sg_y = 600;
		var sg_y = 496;
		
		draw_sprite_ext(spr_misc_logo, 0, rml - 64 - xx, sg_y + 4, 1, 1, 0, col_txt2, menu_alpha);
		draw_sprite_ext(spr_misc_logo, 0, rml - 64 - xx, sg_y, 1, 1, 0, col_rgb_bight, menu_alpha);
		
		draw_set_font(fnt_1);
		draw_set_halign(fa_right);
		draw_text_ext_color(rml - 70 - xx, sg_y + 4, string(lvlsg), sep, w, col_txt2, col_txt2, col_txt2, col_txt2, menu_alpha);
		draw_text_ext_color(rml - 70 - xx, sg_y, string(lvlsg), sep, w, col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
	}

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
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, menu_alpha);
		draw_text_color(55, 637, string(global.txt89), col_txt1, col_txt1, col_txt1, col_txt1, menu_alpha);
	}

//carga
var xtimer, xlimit, ypt, mrg;
xtimer = timerl/100;
xlimit = 13.66*timer/xtimer;
ypt = room_height;
mrg = 4;

draw_line_width_color(0, ypt - mrg, xlimit, ypt - mrg, mrg, col, col);