//llamar al script
scr_gunbar();

//variables
var col, alt, dist, dist2, dtalt;
col = c_black;
alt = 150;
dist = 2;
dist2 = 4;
dtalt = 32;

//bg
draw_sprite(spr_guns_bg, 0, 0, dtalt);

//blackbg
draw_rectangle_color(0, room_height - alt + 10, room_width, room_height, col, col, col, col, false);
draw_rectangle_color(0, 0, room_width, alt/2, col, col, col, col, false);

#region //gun data

	draw_set_font(fnt_6);
	draw_set_color(c_white);
	draw_set_halign(fa_center);

	//name
	draw_text_color(room_width/2 + dist2, 410 + dist2, string(name), col, col, col, col, 1);
	draw_text(room_width/2, 410, string(name));

	//type
	draw_set_font(fnt_10);
	draw_set_halign(fa_left);
	
	var gun_selected_color, gun_selected_xsum, gun_selector_style;
	gun_selector_style = 0;
	
	if (gun_selector_style == 1)
		{
			for (var gun_selected = 0; gun_selected <= gdGun_SelectorPosMax; gun_selected++)
				{
					if (gun_selected == gdGun_SelectorPos)
						{
							gun_selected_color = c_white;
							gun_selected_xsum = 8;
						}
					else
						{
							gun_selected_color = make_color_rgb(15, 15, 15);
							gun_selected_xsum = 0;// - (8 * -gun_selected);
						}
					
					draw_text_color(16 + dist2 - 3 + gun_selected_xsum, 160 + dist2 - 2 + (32 * gun_selected), string(gdGun_Type[gun_selected]), col, col, col, col, 1);
					draw_text_color(16 + gun_selected_xsum, 160 + (32 * gun_selected), string(gdGun_Type[gun_selected]), gun_selected_color, gun_selected_color, gun_selected_color, gun_selected_color, 1);
				}
		}
	else
		{
			for (var gun_selected = 0; gun_selected <= gdGun_SelectorPosMax; gun_selected++)
				{
					if (gun_selected == gdGun_SelectorPos)
						{
							gun_selected_color = c_black;
							gun_selected_xsum = 0;
							
							var txt_large, gscol;
							txt_large = 16 * (string_length(string(gdGun_Type[gun_selected])));
							/*
							hue += 0.5;
							
							if (hue > 255)
								{
									hue = 0;
								}
							
							gscol = make_color_hsv(hue, 255, 228);
							*/
							
							gscol = make_color_rgb(196, 196, 196);
							
							//color
							draw_rectangle_color(-32, 161 + (32 * gun_selected), 35 + txt_large, 193 + (32 * gun_selected), col, col, col, col, false);
							draw_rectangle_color(-32, 160 + (32 * gun_selected), 32 + txt_large, 190 + (32 * gun_selected), gscol, gscol, gscol, gscol, false);
						}
					else
						{
							gun_selected_color = c_white;
							gun_selected_xsum = 0;// - (8 * -gun_selected);
						}
					
					draw_text_color(16 + dist2 - 3 + gun_selected_xsum, 160 + dist2 - 2 + (32 * gun_selected), string(gdGun_Type[gun_selected]), col, col, col, col, 1);
					draw_text_color(16 + dist2 - 4 + gun_selected_xsum, 160 + dist2 - 3 + (32 * gun_selected), string(gdGun_Type[gun_selected]), col, col, col, col, 1);
					draw_text_color(16 + gun_selected_xsum, 160 + (32 * gun_selected), string(gdGun_Type[gun_selected]), gun_selected_color, gun_selected_color, gun_selected_color, gun_selected_color, 1);
				}
		}

	//gun
	draw_sprite_ext(spr_ui_gun, gii, room_width/2 + dist, room_height/2 - 96 - iy + dist, 3, 3, 0, col, 1);
	draw_sprite_ext(spr_ui_gun, gii, room_width/2, room_height/2 - 96 - iy, 3, 3, 0, c_white, 1);

	//bullet
	draw_set_font(fnt_1);
	draw_set_halign(fa_left);
	draw_text_color(128 + dist2, 418 + dist2 + dtalt, string(calname), col, col, col, col, 1);
	draw_text(128, 418 + dtalt, string(calname));
	draw_sprite_ext(spr_ui_bullet, bulletgii, 75 + dist2, 375 + dist2 + dtalt, 1, 1, 0, col, 1);
	draw_sprite_ext(spr_ui_bullet, bulletgii, 75, 375 + dtalt, 1, 1, 0, c_white, 1);

	//maxgun
	draw_set_halign(fa_right);
	draw_text_color(room_width - 96 + dist2, 418 + dist2 + dtalt, string(gun + 1) + "/" + string(gdGun_ShowMax + 1), col, col, col, col, 1);
	draw_text(room_width - 96, 418 + dtalt, string(gun + 1) + "/" + string(gdGun_ShowMax + 1));

#endregion

//boton
scr_controller_img()

if (global.helpers == 1)
	{
		//botones y texto
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);

		//switch
		draw_sprite_ext(ui, 3, 15, 555, 1, 1, 0, c_white, 1);
		draw_sprite_ext(ui, 4, 55, 555, 1, 1, 0, c_white, 1);
		draw_text(95, 557, string(global.txt11));
		
		//switch type
		draw_sprite_ext(ui, 5, 15, 595, 1, 1, 0, c_white, 1);
		draw_sprite_ext(ui, 6, 55, 595, 1, 1, 0, c_white, 1);
		draw_text(95, 597, string(global.txt155));

		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));
	}


//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt34));

//blackbg
draw_sprite_stretched_ext(spr_128x128, 0, 0, 0, room_width, room_height, c_black, blkbg_alpha);