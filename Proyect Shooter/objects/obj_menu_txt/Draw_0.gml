/// @description dibujar teclas

var sh, shbt, csh, txt_x_select;
sh = 3;
shbt = 2;
csh = c_black;

if (started == true)
	{
		draw_set_font(fnt_2);
		draw_set_color(c_white);
		draw_set_halign(fa_left);

		//alpha
		if (menu_alpha > 1)
			{
				menu_alpha = 1;
			}
		else
			{
				menu_alpha += 0.01;
			}

		/*
		//cuadrado
		var rc, alt, lmt, rr;
		rc = c_black;
		alt = 470;
		lmt = 360;
		rr = -1;//-1: false; 0 o mas: true

		draw_roundrect_ext(15, alt, lmt, room_height - 5, rr, rr, true);
		draw_roundrect_color_ext(15, alt, lmt, room_height - 5, rr, rr, rc, rc, false);
		*/

		//txt
		for (var i = 0; i <= limit; i++)
			{
				if (i == op)
					{
						//txt_col = c_gray;
						txt_col = make_color_hsv(val_col, 0, val);
						txt_x_select = 8;
					}
				else
					{
						txt_col = c_white;
						txt_x_select = 0;
					}
		
				draw_text_color(25 + sh + txt_x_select, 473 + sh + (32 * i), string(button[i]), csh, csh, csh, csh, menu_alpha);
				draw_text_color(25 + txt_x_select, 473 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, menu_alpha);
			}

		//helpers
		scr_controller_img()

		//var ny = 635;
		var ny, c_wt;
		ny = 200;
		c_wt = c_white;

		//botones y texto de los mismos
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_right);

		//del
		draw_sprite_ext(ui, 25, room_width - 47 + shbt, ny + shbt, 1, 1, 0, c_black, menu_alpha);
		draw_sprite_ext(ui, 25, room_width - 47, ny, 1, 1, 0, c_white, menu_alpha);
		draw_text_color(room_width - 57 + sh, ny + 2 + sh, string(global.txt69), csh, csh, csh, csh, 1);
		draw_text_color(room_width - 57, ny + 2, string(global.txt69), c_wt, c_wt, c_wt, c_wt, menu_alpha);

		//tab
		draw_sprite_ext(ui, 18, room_width - 47 + shbt, ny + 40 + shbt, 1, 1, 0, c_black, menu_alpha);
		draw_sprite_ext(ui, 18, room_width - 47, ny + 40, 1, 1, 0, c_white, menu_alpha);
		draw_text_color(room_width - 57 + sh, ny + 42 + sh, string(global.txt26), csh, csh, csh, csh, menu_alpha);
		draw_text_color(room_width - 57, ny + 42, string(global.txt26), c_wt, c_wt, c_wt, c_wt, menu_alpha);

		//buy complete
		if (global.gicIsDemo == "True")
			{
				var nyl = room_height;
		
				//space
				draw_sprite_ext(ui, 29, room_width - 47 + shbt, nyl - 42 + shbt, 1, 1, 0, c_black, menu_alpha);
				draw_sprite_ext(ui, 29, room_width - 47, nyl - 42, 1, 1, 0, c_white, menu_alpha);
				draw_text_color(room_width - 57 + sh, nyl - 40 + sh, string(global.txt113) + " " + string(global.gametitle), csh, csh, csh, csh, menu_alpha);
				draw_text_color(room_width - 57, nyl - 40, string(global.txt113) + " " + string(global.gametitle), c_white, c_white, c_white, c_white, menu_alpha);
			}
	}
else
	{
		//helpers
		scr_controller_img()

		var ny, rwt, txt_intro, txt_intro_any, c_w, c_ab;
		ny = 635;
		rwt = 0;
		txt_intro = global.txt123;
		txt_intro_any = global.txt84;
		c_w = c_white;
		c_ab = make_color_hsv(val_col_pm, 0, val_pm);

		//botones y texto de los mismos
		draw_set_font(fnt_1);
		draw_set_color(c_white);

		if (global.premenu_any_button == 1)
			{
				//any button
				draw_set_halign(fa_center);
				draw_text_color(room_width/2, ny + 2 + sh, string(txt_intro_any), csh, csh, csh, csh, txt_intro_alpha);
				draw_text_color(room_width/2, ny + 2, string(txt_intro_any), c_ab, c_ab, c_ab, c_ab, txt_intro_alpha);
			}
		else
			{
				//enter
				draw_set_halign(fa_left);
				draw_sprite_ext(ui, 1, rwt + 15 + shbt, ny + shbt, 1, 1, 0, c_black, txt_intro_alpha);
				draw_sprite_ext(ui, 1, rwt + 15, ny, 1, 1, 0, c_w, txt_intro_alpha);
				draw_text_color(rwt + 55 + sh, ny + 2 + sh, string(txt_intro), csh, csh, csh, csh, txt_intro_alpha);
				draw_text_color(rwt + 55, ny + 2, string(txt_intro), c_w, c_w, c_w, c_w, txt_intro_alpha);
			}
		
		//consejos
		if (global.tips_start == 1)
			{
				var txt_x, txt_y, txt_img_sep, txt_sep, txt_w, text, img_xcale;
				txt_x = room_width;
				txt_y = 400;
				txt_img_sep = 2;
				txt_sep = 30;
				txt_w = 450;
				text = tip;
				img_xcale = 1;
		
				//square
				var sqr_bg = false;
		
				if (sqr_bg == true)
					{
						var x_pos, x_pos_max, txt_x_max, txt_y_max, _buffer, rect_col;
						x_pos = 32;
						x_pos_max = 74;
						txt_x_max = string_width_ext(tip, txt_sep, txt_w);
						txt_y_max = string_height_ext(tip, txt_sep, txt_w);
						_buffer = 5;
						rect_col = c_black;
		
						draw_rectangle_color(txt_x - x_pos + _buffer, txt_y - _buffer, txt_x - txt_x_max - x_pos_max - _buffer, txt_y + txt_y_max + (_buffer*2), rect_col, rect_col, rect_col, rect_col, false);
						draw_rectangle(txt_x - x_pos + _buffer, txt_y - _buffer, txt_x - txt_x_max - x_pos_max - _buffer, txt_y + txt_y_max + (_buffer*2), true);
					}
		
				//img
				draw_sprite_ext(spr_misc_logo, 1, txt_x - 64, txt_y + 4, img_xcale, img_xcale, 0, c_black, txt_intro_alpha);
				draw_sprite_ext(spr_misc_logo, 1, txt_x - 64, txt_y, img_xcale, img_xcale, 0, c_w, txt_intro_alpha);
		
				//text
				draw_set_font(fnt_1);
				draw_set_halign(fa_right);
				draw_text_ext_color(txt_x - 72, txt_y + txt_img_sep + 4, string(text), txt_sep, txt_w, c_black, c_black, c_black, c_black, txt_intro_alpha);
				draw_text_ext_color(txt_x - 72, txt_y + txt_img_sep, string(text), txt_sep, txt_w, c_w, c_w, c_w, c_w, txt_intro_alpha);
			}
	}

//game title
if (global.gamereleased == false)
	{
		draw_set_font(fnt_4);
		draw_set_halign(fa_center);

		var xsep = 5;

		draw_set_color(c_black);
		draw_text(room_width/2 - xsep, room_height/2 - 300, string(global.gametitle));

		draw_set_color(c_white);
		draw_text(room_width/2 + xsep, room_height/2 - 300, string(global.gametitle));
	}
else
	{
		draw_set_font(fnt_4);
		draw_set_halign(fa_center);

		var xsep, c1, c2;
		xsep = 3;
		c1 = c_white;
		c2 = c_black;

		draw_text_transformed_color(room_width/2 - xsep, room_height/2 - 300, string(global.gametitle), titlexcale, titlexcale, titleang, c2, c2, c2, c2, titlealp);
		draw_text_transformed_color(room_width/2 - xsep/2, room_height/2 - 300, string(global.gametitle), titlexcale, titlexcale, titleang, c2, c2, c2, c2, titlealp);

		draw_text_transformed_color(room_width/2 + xsep, room_height/2 - 300, string(global.gametitle), titlexcale, titlexcale, titleang, c1, c1, c1, c1, titlealp);
	}

//news rectangle
/*
var c_col, c_col2, gr_txt;
c_col = c_black;
c_col2 = c_white;

if (global.gicIsDemo == "True")
	{
		gr_txt = 0;
	}
else
	{
		gr_txt = 32;
	}

//bg
draw_rectangle_color(room_width - 342, room_height - 240 + gr_txt, room_width - 16, room_height - 64 + gr_txt, c_col, c_col, c_col, c_col, false);
draw_rectangle_color(room_width - 342, room_height - 240 + gr_txt, room_width - 16, room_height - 64 + gr_txt, c_col2, c_col2, c_col2, c_col2, true);

//loading logo = x: 171, y:120;
load_rt -= 3;
draw_sprite_ext(spr_load, 0, room_width - 170, room_height - 120, 0.5, 0.5, load_rt, c_white, 1);
*/


//black bg
if (bg_alpha >= 0)
	{
		bg_alpha -= 0.01;
	}

var lmt = 32;

draw_sprite_stretched_ext(spr_bg_pause2, 0, -lmt, -lmt, room_width  + lmt, room_height + lmt, c_white, bg_alpha);


//test data
if (global.gicMenuBgShowInfo == "True")
	{
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text(32, 96, "obj_rain(" + string(instance_number(obj_rain)) + ")\nbg_spd(" + string(obj_bg_menu._xspd) + ")");
	}