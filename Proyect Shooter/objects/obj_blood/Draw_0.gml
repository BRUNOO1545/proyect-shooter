switch (global.blood_style)
	{
		case 0:
			draw_sprite_ext(spr_blood_new, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
		break;
		
		case 1:
			draw_sprite_ext(spr_blood, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
		break;
	}