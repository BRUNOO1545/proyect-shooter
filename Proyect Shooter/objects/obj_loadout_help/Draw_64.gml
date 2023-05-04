///@description sin movimiento al disparar

/*
#region ///test

var help_x, help_y, help_rad, help_large, help_alt, help_bg_col_1, help_bg_col_2, help_bg_col_outline;
help_x = 683;
help_y = 520;
help_rad = 10;
help_large = 128;
help_alt = 64;
help_bg_col_1 = c_black;
help_bg_col_2 = c_black;
help_bg_col_outline = c_white;


draw_roundrect_color_ext(help_x - help_large, help_y, help_x + help_large, help_y + help_alt, help_rad, help_rad, help_bg_col_1, help_bg_col_2, false);
draw_roundrect_color_ext(help_x - help_large, help_y, help_x + help_large, help_y + help_alt, help_rad, help_rad, help_bg_col_outline, help_bg_col_outline, true);

#endregion


draw_set_font(fnt_1);
draw_set_color(c_white);

//variables
var xcam = 1366;
var ycam = 160;

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
/*
		//mostrar texto (test)
		draw_sprite(ui, 18, xcam - 47, ycam + (sep * 6));
		draw_text(xcam - 57, ycam + 2 + (sep * 6), string(global.txt63) + " (TEST)");
	}

//pause
if (global.rpause_button == true) && (instance_exists(obj_player))
	{
		var col, txtxcam, txtycam;
		col = c_white;
		txtxcam = 8;
		txtycam = 8;
		
		draw_set_halign(fa_left);
		draw_sprite_ext(ui, 28, txtxcam, txtycam, 1, 1, 0, col, pause_alp);
		draw_text_color(txtxcam + 40, txtycam + 3, string(global.txt93), col, col, col, col, pause_alp);
	}