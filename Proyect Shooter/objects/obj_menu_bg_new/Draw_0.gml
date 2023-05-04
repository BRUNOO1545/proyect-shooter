/// @description dibujar

//manta blanca
depth = 3;
draw_sprite_stretched_ext(spr_menu_bg, 0, 0, 0, room_width, room_height, c_white, storm_alpha);

//manta negra
if (storm_alpha_2 > 0)
	{
		depth = -1;
		draw_sprite_stretched_ext(spr_menu_bg, 0, 0, 0, room_width, room_height, c_black, storm_alpha_2);
	}