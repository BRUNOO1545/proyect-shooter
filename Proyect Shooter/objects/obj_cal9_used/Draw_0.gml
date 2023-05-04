if (global.general_shadows == 2)
	{
		var sep = global.gun_depth;
		draw_sprite_ext(spr_ui_bullet_used, image_index, x + sep, y + sep, image_xscale, image_yscale, image_angle, c_black, image_alpha);
	}

draw_self();