///@description con movimiento al disparar

draw_set_font(fnt_1);
draw_set_color(c_white);

//variables
var xcam = camera_get_view_x(view_camera[0]) + 1366;
var ycam = camera_get_view_y(view_camera[0]) + 160;

//lamar al script
scr_controller_img()

if (showlist == true)
	{
		//dibujar
		var sep = 38;
		
		draw_set_halign(fa_right);

		//WASD
		draw_sprite(ui, ia, xcam - 47, ycam);
		draw_text(xcam - 57, ycam + 2, string(global.txt57));

		//vista
		draw_sprite(ui, wa, xcam - 47, ycam + (sep * 1));
		draw_text(xcam - 57, ycam + 2 + (sep * 1), string(global.txt58));

		//agarrar
		draw_sprite(ui, 13, xcam - 47, ycam + (sep * 2));
		draw_text(xcam - 57, ycam + 2 + (sep * 2), string(global.txt59));

		//disparar
		draw_sprite(ui, 14, xcam - 47, ycam + (sep * 3));
		draw_text(xcam - 57, ycam + 2 + (sep * 3), string(global.txt60));

		//recargar
		draw_sprite(ui, 12, xcam - 47, ycam + (sep * 4));
		draw_text(xcam - 57, ycam + 2 + (sep * 4), string(global.txt77));
		
		//crear municion (test)
		draw_sprite(ui, 26, xcam - 47, ycam + (sep * 5));
		draw_text(xcam - 57, ycam + 2 + (sep * 5), string(global.txt61) + " (TEST)");
/*
		//matar jugador (test)
		draw_sprite(ui, 24, xcam - 47, ycam + (sep * 6));
		draw_text(xcam - 57, ycam + 2 + (sep * 6), string(global.txt62) + " (TEST)");*/

		//mostrar texto (test)
		draw_sprite(ui, 18, xcam - 47, ycam + (sep * 6));
		draw_text(xcam - 57, ycam + 2 + (sep * 6), string(global.txt63) + " (TEST)");
	}


//pause
if (global.rpause_button == true) && (instance_exists(obj_player))
	{
		var col, txtxcam, txtycam;
		col = c_white;
		col2 = c_black;
		txtxcam = camera_get_view_x(view_camera[0]) + 8;
		txtycam = camera_get_view_y(view_camera[0]) + 8;
		
		draw_set_halign(fa_left);
		draw_sprite_ext(ui, 28, txtxcam + 1, txtycam + 1, 1, 1, 0, col2, pause_alp);
		draw_sprite_ext(ui, 28, txtxcam, txtycam, 1, 1, 0, col, pause_alp);
		draw_text_color(txtxcam + 43, txtycam + 6, string(global.txt93), col2, col2, col2, col2, pause_alp);
		draw_text_color(txtxcam + 40, txtycam + 3, string(global.txt93), col, col, col, col, pause_alp);
	}

/*
#region ///test

var text = string_hash_to_newline(dw_current_text);

var help_x, help_y, help_y_ext, help_rad, help_large, help_alt, help_bg_col_1, help_bg_col_2, help_bg_col_outline, help_bg_dist;
help_x = camera_get_view_x(view_camera[0]) + 683;
help_y = camera_get_view_y(view_camera[0]) + 600;
help_y_ext = 8;
help_rad = 16;
help_large = string_width_ext(string(text), 5, 20)/2 + 32;//256;
help_alt = string_height_ext(string(text), 5, 20) + help_y_ext;
help_bg_col_1 = c_blue;
help_bg_col_2 = c_blue;
help_bg_col_outline = c_white;
help_bg_dist = 4;

//dibujar cuadro
draw_roundrect_color_ext(help_x - help_large + help_bg_dist, help_y, help_x + help_large + help_bg_dist, help_y + help_alt + help_y_ext + help_bg_dist, help_rad, help_rad, c_black, c_black, false);
draw_roundrect_color_ext(help_x - help_large, help_y, help_x + help_large, help_y + help_alt + help_y_ext, help_rad, help_rad, help_bg_col_1, help_bg_col_2, false);
draw_roundrect_color_ext(help_x - help_large, help_y, help_x + help_large, help_y + help_alt + help_y_ext, help_rad, help_rad, help_bg_col_outline, help_bg_col_outline, true);

//texto
var _c = c_black;

draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_color(help_x + 3, help_y + help_y_ext + 3, string(text), _c, _c, _c, _c, 1);
draw_text(help_x, help_y + help_y_ext, string(text));


//lineas
repeat(10)
	{
		randomize();
		
		var rx, rx2, ry;
		rx = random_range((help_x - help_large), (help_x + help_large));
		rx2 = random_range((help_x - help_large), (help_x + help_large));
		ry = random_range(help_y, (help_y + help_alt + help_y_ext));

		draw_rectangle(rx, ry, rx2, ry, true);
	}

#endregion