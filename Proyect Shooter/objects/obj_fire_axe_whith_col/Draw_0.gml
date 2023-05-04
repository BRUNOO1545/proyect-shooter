//fondo negro
if (global.general_shadows == 1) or (global.general_shadows == 2)
	{
		var sep = global.gun_depth;
		draw_sprite_ext(spr_ui_gun, image_index, x + sep, y + sep - iy, image_xscale, image_yscale, image_angle, c_black, 1);
	}

draw_sprite_ext(spr_ui_gun, image_index, x, y - iy, image_xscale, image_yscale, image_angle, c_white, 1);

if (global.showcollisions == true)
	{
		draw_circle(x, y - iy, rot, true);
	}