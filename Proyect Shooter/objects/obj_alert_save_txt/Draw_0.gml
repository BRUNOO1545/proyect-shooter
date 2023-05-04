/// @description dibujar texto
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_center);

var img, nl, c;
img = room_height/2;
nl = string_hash_to_newline(global.txt129);
c = c_white;

//texto e imagen
switch global.gicAutosaveType
	{
		case 0:
			draw_sprite_ext(spr_save_2_anim, ii, room_width/2 - 64, img - 96, 2, 2, 0, c, alp);
			draw_text_color(room_width/2, img + 220, string(nl), c, c, c, c, alp);
		break;
		
		case 1:
			draw_sprite_ext(spr_save_2_anim, ii, room_width/2 - 64, img - 32, 2, 2, 0, c, alp);
			draw_text_color(room_width/2, img - 96, string(nl), c, c, c, c, alp);
		break;
		
		case 2:
			//draw_sprite_ext(spr_player_bg, 0, room_width/2, img - 32, 2, 2, 0, c, alp - 0.2);
			draw_sprite_ext(spr_save_2_anim, ii, room_width/2 - 64, img - 96, 2, 2, 0, c, alp);
			draw_text_color(room_width/2, img + 256, string(nl), c, c, c, c, alp);
		break;
	}

//dibujarlo
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_left);

if (global.gicCanSkipIntro == "True")
	{
		scr_controller_img()

		if (global.helpers == 1)
			{
				draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, alp);
				draw_text_color(55, 637, string(global.txt89), c_white, c_white, c_white, c_white, alp);
			}
	}

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text_color(room_width/2, 10, string(global.txt128), c, c, c, c, alp);