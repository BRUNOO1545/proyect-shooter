/*//llamar al script
scr_gunbar()

//cam
var xpos, ypos, gunxpos, gunypos, ii, sh, color_sh;
xpos = camera_get_view_x(view_camera[0]) + 0;
ypos = camera_get_view_y(view_camera[0]) + 680 - 120;
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
draw_sprite_ext(spr_ui_gunbg, 0, xpos, ypos, 1, 1, 0, c_white, image_alpha);
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

draw_set_halign(fa_right);
draw_text_color(xpos + 195 + sh, ypos + 100 + sh, string(bullet) + string(separator) + string(maxammo), color_sh, color_sh, color_sh, color_sh, image_alpha);
draw_text_color(xpos + 195, ypos + 100, string(bullet) + string(separator) + string(maxammo), color, color, color, color, image_alpha);


//score
if instance_exists(obj_player)
	{
		var txtxpos, txtypos, scl, ang, sep;
		txtxpos = camera_get_view_x(view_camera[0]) + 1332 + iy;
		txtypos = camera_get_view_y(view_camera[0]) + 20 - iy;
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
		
		if (player_score < player_score_limit)
			{
				draw_text_transformed_color(txtxpos + sep, txtypos + sep, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col2, col2, col2, col2, 1);
				draw_text_transformed_color(txtxpos, txtypos, string(global.txt94) + ": " + string(player_score), scl, scl, ang, col, col, col, col, 1);
			}
		else
			{
				draw_text_transformed_color(txtxpos + sep, txtypos + sep, "WTF?", scl, scl, ang, col2, col2, col2, col2, 1);
				draw_text_transformed_color(txtxpos, txtypos, "WTF?", scl, scl, ang, col, col, col, col, 1);
			}
	}