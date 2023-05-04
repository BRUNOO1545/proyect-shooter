/// @description dibujar texto
draw_set_font(fnt_5);
draw_set_color(c_white);
draw_set_halign(fa_left);

var cx, cy, sep, txtlimit, newline_en, newline_es, news;
cx = 32;
cy = 75;
sep = 25;
txtlimit = room_width - 40;
newline_en = string_hash_to_newline(global.newstxten);
newline_es = string_hash_to_newline(global.newstxtes);
news = string_hash_to_newline(current_text);

draw_text_ext(cx, cy, string(news), sep, txtlimit);

#region //old text
/*
switch global.lang
	{
		//inglés
		case 1:
			draw_text_ext(cx, cy, string(newline_en), sep, txtlimit);
		break;
		
		//español
		case 2:
			draw_text_ext(cx, cy, string(newline_es), sep, txtlimit);
		break;
		
		//default
		default:
			draw_text_ext(cx, cy, string(newline_en), sep, txtlimit);
		break;
	}*/
#endregion

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt26));


//page num
if (page_limit > 1)
	{
		draw_set_font(fnt_1);
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height - 64,string(global.txt145) + " " + string(current_page) + " " + string(global.txt115) + " " + string(page_limit));
	}

//helpers
scr_controller_img()

if (global.helpers == 1)
	{
		//botones y texto de los mismos
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		//volume
		if (page_limit > 1)
			{
				draw_sprite_ext(ui, 3, 15, 555, 1, 1, 0, c_white, 1);
				draw_sprite_ext(ui, 4, 55, 555, 1, 1, 0, c_white, 1);
				draw_text(95, 557, string(global.txt147));
			}
	}