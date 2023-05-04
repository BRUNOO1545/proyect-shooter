//llamar al script
scr_gunbar()

var ui_oldstyle = 0;

//cam
var xpos, ypos, gunxpos, gunypos, ii, sh, color_sh;

if (ui_oldstyle == 1)
	{
		//vars
		xpos = 0;
		ypos = 561;
		gunxpos = xpos + 96;
		gunypos = ypos + 48;
		sh = 2;
		color_sh = c_black;
		
		//empty
		if (global.gun == -1)
			{
				ii = spr_ui_empty;
			}
		else
			{
				ii = spr_ui_gun;
			}


		//dibujar cuadro y armas

		//cuadro
		if !(bullet <= 0)
			{/*
				if (hue > 255)
					{
						hue = 0;
					}
				else
					{
						hue+= hue_spd;
					}

				c_colored = make_color_hsv(hue, 255, 255);*/
				c_colored = c_dkgray;
			}
		else
			{
				c_colored = c_red;
			}


		if (colored_bg == true)
			{
				//draw_sprite_ext(spr_ui_gunbg_color, 0, xpos, ypos, 1, 1, 0, c_colored, image_alpha - 0.5);
				draw_sprite_ext(spr_ui_gunbg_color, 0, xpos, ypos, 1, 1, 0, c_dkgray, image_alpha - 0.1);
				draw_sprite_ext(spr_ui_gunbg_color, 1, xpos, ypos, 1, 1, 0, c_white, image_alpha);
			}
		else
			{
				//picana
				if (global.gun == 34)
					{
						var xpos_taser, ypos_taser, xpos_tasermax_mult, xpos_tasermax, ypos_tasermax, c_1, c_2, c_3, taser_range, taser_range2, xcale;
						xpos_taser = camera_get_view_width(view_camera[0])/2 - 112 + 32;//202;
						ypos_taser = ypos + 86;//ypos + 123;
						xpos_tasermax_mult = 224;
						xpos_tasermax = (xpos_tasermax_mult * global.taserbatery) / global.taserbaterymax;
						ypos_tasermax = 18;
						c_1 = c_white;
						c_2 = c_white;
						c_3 = c_black;
						taser_range = 2;
						taser_range2 = 10;
						xcale = 1;
				
						//bg
						draw_rectangle_color(xpos_taser - taser_range2 - 32, ypos_taser - taser_range2 - 2, xpos_taser + xpos_tasermax_mult + taser_range2, ypos_taser + ypos_tasermax + taser_range2, c_3, c_3, c_3, c_3, false);
				
						//barra
						draw_sprite_ext(spr_misc_logo, 4, xpos_taser - 40, ypos_taser - 8, xcale, xcale, 0, c_white, 1);
						draw_rectangle_color(xpos_taser - taser_range, ypos_taser - taser_range, xpos_taser + xpos_tasermax_mult + taser_range, ypos_taser + ypos_tasermax + taser_range, c_1, c_2, c_2, c_1, true);
						draw_rectangle_color(xpos_taser, ypos_taser, xpos_taser + xpos_tasermax, ypos_taser + ypos_tasermax, c_1, c_2, c_2, c_1, false);
					}
		
				draw_sprite_ext(spr_ui_gunbg, 0, xpos, ypos, 1, 1, 0, c_white, image_alpha);
			}


		//armas
		draw_sprite_ext(ii, gii, gunxpos + 5 + sh/2, gunypos + 5 + sh/2, 1, 1, 0, color_sh, image_alpha);
		draw_sprite_ext(ii, gii, gunxpos + 5 + sh, gunypos + 5 + sh, 1, 1, 0, color_sh, image_alpha);
		draw_sprite_ext(ii, gii, gunxpos + 5, gunypos + 5, 1, 1, 0, c_white, image_alpha);


		//texto
		draw_set_font(fnt_5);

		//color
		if (bullet <= 0)
			{
				color = c_red;
			}
		else
			{
				color = c_white;
			}

		//nombre
		draw_set_halign(fa_left);
		draw_text_color(xpos + 5 + sh, ypos + 100 + sh, string(name), color_sh, color_sh, color_sh, color_sh, image_alpha);
		draw_text_color(xpos + 5, ypos + 100, string(name), color, color, color, color, image_alpha);

		//municion
		var separator = "/";

		//draw
		if instance_exists(obj_player)
			{
				scr_is_hand_gun();
		
				if (obj_player.is_hand_gun == false)
					{
						draw_set_halign(fa_right);
						draw_text_color(xpos + 195 + sh, ypos + 100 + sh, string(bullet) + string(separator) + string(maxammo), color_sh, color_sh, color_sh, color_sh, image_alpha);
						draw_text_color(xpos + 195, ypos + 100, string(bullet) + string(separator) + string(maxammo), color, color, color, color, image_alpha);
					}
			}


		//score
		if instance_exists(obj_player)
			{
				var txtxpos, txtypos, scl, ang, sep;
				txtxpos = 1332 + iy;
				txtypos = 20 - iy;
				scl = 1 + iy/50;
				ang = 5 + iy/2;
				sep = 2;

				if (hue > 255)
					{
						hue = 0;
					}
				else
					{
						hue += colspd;
					}

				col = make_color_hsv(hue, 255, 255);

				draw_set_font(fnt_1);
				draw_set_halign(fa_right);
		
		
				var txt_limit = "WTF?";
		
				if (player_score < player_score_limit)
					{
						global.actual_points = player_score;
				
						draw_text_transformed_color(txtxpos + sep, txtypos + sep, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col2, col2, col2, col2, 1);
						draw_text_transformed_color(txtxpos, txtypos, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col, col, col, col, 1);
					}
				else
					{	
						global.actual_points = string(txt_limit);
				
						draw_text_transformed_color(txtxpos + sep, txtypos + sep, string(txt_limit), scl, scl, ang, col2, col2, col2, col2, 1);
						draw_text_transformed_color(txtxpos, txtypos, string(txt_limit), scl, scl, ang, col, col, col, col, 1);
					}
			}
	}
else
	{
		///new ui
		
		//vars
		xpos = -16;
		ypos = 516;
		gunxpos = xpos + 96;
		gunypos = ypos + 48;
		sh = 2;
		color_sh = c_black;
		
		//empty
		if (global.gun == -1)
			{
				ii = spr_ui_gun_col;
			}
		else
			{
				ii = spr_ui_gun_col;
			}


		//dibujar cuadro y armas

		//cuadro
		if !(bullet <= 0)
			{
				c_colored = c_dkgray;
			}
		else
			{
				c_colored = c_red;
			}

#region	//armas especiales
		
		//detectar
		var special_gun, spr_logo;
		
		if ((global.gun == 34) or (global.gun == 37) or (global.gun == 38))
			{
				special_gun = true;
			}
		else
			{
				special_gun = false;
			}
		
		//seleccionar
		if (special_gun == true)
			{
				switch (global.gun)
					{
						case 34:
							var xpos_taser, ypos_taser, xpos_tasermax_mult, xpos_tasermax, ypos_tasermax, c_1, c_2, c_3, taser_range, taser_range2, xcale;
							xpos_taser = camera_get_view_width(view_camera[0])/2 - 112 + 32;//202;
							ypos_taser = ypos + 126;//ypos + 123;
							xpos_tasermax_mult = 224;
							xpos_tasermax = (xpos_tasermax_mult * global.taserbatery) / global.taserbaterymax;
							ypos_tasermax = 18;
							c_1 = c_white;
							c_2 = c_white;
							c_3 = c_black;
							taser_range = 2;
							taser_range2 = 10;
							xcale = 1;
							spr_logo = 4;
						break;
				
						case 37:
							var xpos_taser, ypos_taser, xpos_tasermax_mult, xpos_tasermax, ypos_tasermax, c_1, c_2, c_3, taser_range, taser_range2, xcale;
							xpos_taser = camera_get_view_width(view_camera[0])/2 - 112 + 32;//202;
							ypos_taser = ypos + 126;//ypos + 123;
							xpos_tasermax_mult = 224;
							xpos_tasermax = (xpos_tasermax_mult * global.drillbatery) / global.drillbaterymax;
							ypos_tasermax = 18;
							c_1 = c_white;
							c_2 = c_white;
							c_3 = c_black;
							taser_range = 2;
							taser_range2 = 10;
							xcale = 1;
							spr_logo = 4;
						break;
				
						case 38:
							var xpos_taser, ypos_taser, xpos_tasermax_mult, xpos_tasermax, ypos_tasermax, c_1, c_2, c_3, taser_range, taser_range2, xcale;
							xpos_taser = camera_get_view_width(view_camera[0])/2 - 112 + 32;//202;
							ypos_taser = ypos + 126;//ypos + 123;
							xpos_tasermax_mult = 224;
							xpos_tasermax = (xpos_tasermax_mult * global.chainsawgas) / global.chainsawgasmax;
							ypos_tasermax = 18;
							c_1 = c_white;
							c_2 = c_white;
							c_3 = c_black;
							taser_range = 2;
							taser_range2 = 10;
							xcale = 1;
							spr_logo = 5;
						break;
					}
			
					//bg
					draw_rectangle_color(xpos_taser - taser_range2 - 32, ypos_taser - taser_range2 - 2, xpos_taser + xpos_tasermax_mult + taser_range2, ypos_taser + ypos_tasermax + taser_range2, c_3, c_3, c_3, c_3, false);
				
					//barra
					draw_sprite_ext(spr_misc_logo, spr_logo, xpos_taser - 40, ypos_taser - 8, xcale, xcale, 0, c_white, 1);
					draw_rectangle_color(xpos_taser - taser_range, ypos_taser - taser_range, xpos_taser + xpos_tasermax_mult + taser_range, ypos_taser + ypos_tasermax + taser_range, c_1, c_2, c_2, c_1, true);
					draw_rectangle_color(xpos_taser, ypos_taser, xpos_taser + xpos_tasermax, ypos_taser + ypos_tasermax, c_1, c_2, c_2, c_1, false);
			}
#endregion
		
		
		//color
		if (bullet <= 0)
			{
				color = c_red;
				color_ma = c_red;
			}
		else
			{
				color = c_white;
				color_ma = c_white;
			}
/*
		if (maxammo <= 0)
			{
				color_ma = c_red;
			}
		else
			{
				color_ma = c_white;
			}
*/
		
		//armas
		var gun_ang, last_gun;
		gun_ang = 90;
		last_gun = global.last_gun_used;
		
		draw_sprite_ext(ii, last_gun, gunxpos + 5 + sh/2, gunypos + 5 + sh/2, 1, 1, gun_ang, color_sh, image_alpha);
		draw_sprite_ext(ii, last_gun, gunxpos + 5 + sh, gunypos + 5 + sh, 1, 1, gun_ang, color_sh, image_alpha);
		draw_sprite_ext(ii, last_gun, gunxpos + 5, gunypos + 5, 1, 1, gun_ang, color, image_alpha);

		//texto
		draw_set_font(fnt_9);

		//nombre
		draw_set_halign(fa_left);
		draw_text_transformed_color(xpos + 25 + sh, ypos + 150 + sh, string(name), 1, 1, gun_ang, color_sh, color_sh, color_sh, color_sh, image_alpha);
		draw_text_transformed_color(xpos + 25, ypos + 150, string(name), 1, 1, gun_ang, color, color, color, color, image_alpha);

		//municion
		
		//draw
		if instance_exists(obj_player)
			{
				scr_is_hand_gun();
		
				if (global.last_gun_used_hand_gun == false)
					{
						draw_set_halign(fa_right);
						
						var ammo_x, ammo_y;
						ammo_x = 195;
						ammo_y = 100;
						
						//current ammo
						draw_set_font(fnt_8);
						draw_text_color(xpos + ammo_x + sh, ypos + ammo_y + sh, string(bullet), color_sh, color_sh, color_sh, color_sh, image_alpha);
						draw_text_color(xpos + ammo_x, ypos + ammo_y, string(bullet), color, color, color, color, image_alpha);
						
						//max ammo
						draw_set_font(fnt_9);
						draw_text_color(xpos + ammo_x + sh - 1, ypos + ammo_y + 32 + sh, string(maxammo), color_sh, color_sh, color_sh, color_sh, image_alpha);
						draw_text_color(xpos + ammo_x - 1, ypos + ammo_y + 32, string(maxammo), color_ma, color_ma, color_ma, color_ma, image_alpha);
					}
			}


		//score
		if instance_exists(obj_player)
			{
				var txtxpos, txtypos, scl, ang, sep;
				txtxpos = 1332 + iy;
				txtypos = 20 - iy;
				scl = 1 + iy/50;
				ang = 5 + iy/2;
				sep = 2;

				if (hue > 255)
					{
						hue = 0;
					}
				else
					{
						hue += colspd;
					}

				col = make_color_hsv(hue, 255, 255);

				draw_set_font(fnt_1);
				draw_set_halign(fa_right);
		
		
				var txt_limit = "WTF?";
		
				if (player_score < player_score_limit)
					{
						global.actual_points = player_score;
				
						draw_text_transformed_color(txtxpos + sep, txtypos + sep, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col2, col2, col2, col2, 1);
						draw_text_transformed_color(txtxpos, txtypos, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col, col, col, col, 1);
					}
				else
					{	
						global.actual_points = string(txt_limit);
				
						draw_text_transformed_color(txtxpos + sep, txtypos + sep, string(txt_limit), scl, scl, ang, col2, col2, col2, col2, 1);
						draw_text_transformed_color(txtxpos, txtypos, string(txt_limit), scl, scl, ang, col, col, col, col, 1);
					}
			}
	}