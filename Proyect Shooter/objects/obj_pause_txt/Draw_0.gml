/// @description dibujar teclas

//fondo
if !(instance_exists(obj_pause_bg))
	{
		instance_create_depth(0, 0, 2, obj_pause_bg);
	}

//alpha
if (menu_alpha > 1)
	{
		menu_alpha = 1;
	}
else
	{
		menu_alpha += 0.01;
	}

//fondo de teclas
switch (pause_style)
	{
		case 0:
			//texto
			draw_set_font(fnt_8);
			draw_set_color(c_white);
			draw_set_halign(fa_left);
			
			var txt_sep = 32;
			
			//bg
			var rw, rh, lim, lim_y, cl, cl2, sp, _xsum;
			rw = 32;
			rh = 392;
			lim = string_width(global.txt134) + 64;//340;
			lim_y = 256;
			cl = c_blue;
			cl2 = c_white;
			sp = 3;
			
			draw_rectangle_color(rw, rh, rw + lim, rh + lim_y, cl, cl, cl, cl, false);
			//draw_rectangle_color(rw, rh, rw + lim, rh + lim_y, cl2, cl2, cl2, cl2, true);


			//teclas
			for (var i = 0; i <= limit; i++)
				{
					if (i == op)
						{
							//color outline
							var txt_large, c;
							txt_large = string_width(button[i]) + 4;
							c = c_white;
							
							draw_sprite_ext(spr_misc_logo, 2, rw/1.2 + txt_sep/2 - 2, rh + 128 + (32 * i) + sp, 0.5, 0.5, 0, c_black, 1);
							draw_sprite_ext(spr_misc_logo, 2, rw/1.2 + txt_sep/2 - 2, rh + 128 + (32 * i), 0.5, 0.5, 0, c, 1);
							//draw_rectangle_color(rw + txt_sep - 2, 504 + (32 * i), rw + txt_sep + txt_large, 534 + (32 * i), c, c, c, c, true);
				
							txt_col = c_white;
							_xsum = 8;
						}
					else
						{
							txt_col = c_gray;
							_xsum = 0;
						}
		
					//outline
					draw_text_color(rw + txt_sep + _xsum, rh + 116 + sp + (32 * i), string(button[i]), txt_col2, txt_col2, txt_col2, txt_col2, 1);
					draw_text_color(rw + txt_sep + _xsum, rh + 116 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, 1);
				}

			//title
			draw_set_font(fnt_8);
			draw_set_halign(fa_left);
			draw_text_color(rw + 32, rh + 10 + sp, string(global.txt134), txt_col2, txt_col2, txt_col2, txt_col2, 1);
			draw_text(rw + 32, rh + 10, string(global.txt134));


			//alerta de control
			scr_controller_disconected()

			if (gp_disconected == true)
				{
					var al_col, al_col2, txt;
					al_col = c_red;
					al_col2 = c_black;
					txt = global.txt31 + ": " + global.txt109;
		
					draw_set_font(fnt_1);
					draw_set_halign(fa_left);
					draw_text_color(10 + txt_al, 200 + txt_al, string(txt), al_col2, al_col2, al_col2, al_col2, 1);
					draw_text_color(10, 200, string(txt), al_col, al_col, al_col, al_col, 1);
				}

			//error
			if (load_error == true)
				{
					var al_col, al_col2, txt, xerr;
					al_col = c_red;
					al_col2 = c_black;
					txt = global.txt31 + ": " + global.txt122;
					//xerr = room_width/2;
					xerr = 10;
		
					draw_set_font(fnt_1);
					draw_set_halign(fa_left);
					draw_text_color(xerr + txt_al, 175 + txt_al, string(txt), al_col2, al_col2, al_col2, al_col2, 1);
					draw_text_color(xerr, 175, string(txt), al_col, al_col, al_col, al_col, 1);
				}
		break;
		
		case 1:
			//texto
			draw_set_font(fnt_2);
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			
			if (col_outline == true)
				{
					var rw, rh, lim, lim_y, cl, cl2;
					rw = room_width/2;
					rh = 480;
					lim = 200;
					lim_y = 170;
					cl = c_blue;
					cl2 = c_white;

					draw_rectangle_color(rw - lim, rh, rw + lim, rh + lim_y, cl, cl, cl, cl, false);
					draw_rectangle_color(rw - lim, rh, rw + lim, rh + lim_y, cl2, cl2, cl2, cl2, true);
				}


			//teclas
			for (var i = 0; i <= limit; i++)
				{
					if (i == op)
						{
							//color outline
							if (col_outline == true)
								{
									var txt_large, c;
									txt_large = string_width(button[i]) + 4;
									c = c_white;
						
									draw_rectangle_color(room_width/2 - txt_large/2 - 2, 504 + (32 * i), room_width/2 + txt_large/2, 534 + (32 * i), c, c, c, c, true);
								}
				
							//color de tecla
							if (color_act == 1)
								{
									txt_col = make_color_hsv(val_col, 255, val);
								}
							else
								{
									txt_col = make_color_hsv(val_col, 0, val);
								}
						}
					else
						{
							txt_col = c_white;
						}
		
					//outline
					if (col_outline == false)
						{
							draw_text_color(room_width/2 + txt_al, 500 + txt_al + (32 * i), string(button[i]), txt_col2, txt_col2, txt_col2, txt_col2, menu_alpha);
						}
		
					draw_text_color(room_width/2, 500 + (32 * i), string(button[i]), txt_col, txt_col, txt_col, txt_col, menu_alpha);
				}

			//title
			draw_set_font(fnt_3);
			draw_set_halign(fa_center);
			draw_text_color(room_width/2 + txt_al, 10 + txt_al, string(global.txt18), txt_col2, txt_col2, txt_col2, txt_col2, 1);
			draw_text(room_width/2, 10, string(global.txt18));


			//alerta de control
			scr_controller_disconected()

			if (gp_disconected == true)
				{
					var al_col, al_col2, txt;
					al_col = c_red;
					al_col2 = c_black;
					txt = global.txt31 + ": " + global.txt109;
		
					draw_set_font(fnt_1);
					draw_set_halign(fa_left);
					draw_text_color(10 + txt_al, 400 + txt_al, string(txt), al_col2, al_col2, al_col2, al_col2, 1);
					draw_text_color(10, 400, string(txt), al_col, al_col, al_col, al_col, 1);
				}

			//error
			if (load_error == true)
				{
					var al_col, al_col2, txt, xerr;
					al_col = c_red;
					al_col2 = c_black;
					txt = global.txt31 + ": " + global.txt122;
					//xerr = room_width/2;
					xerr = 10;
		
					draw_set_font(fnt_1);
					draw_set_halign(fa_left);
					draw_text_color(xerr + txt_al, 375 + txt_al, string(txt), al_col2, al_col2, al_col2, al_col2, 1);
					draw_text_color(xerr, 375, string(txt), al_col, al_col, al_col, al_col, 1);
				}
		break;
	}

//destello
var l = 32;

if (dest_alp <= 0)
	{
		dest_alp = 0;
	}
else
	{
		dest_alp -= 0.2;
	}

draw_sprite_stretched_ext(spr_col_1, 0, -l, -l, room_width + l, room_height + l, c_white, dest_alp);