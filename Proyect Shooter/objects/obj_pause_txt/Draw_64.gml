///@description song name

switch (pause_style)
	{	
		case 0:
			var _x, _y, _w, _h, c_1, c_2, _sep;
			_x = 32;
			_y = 32;
			_w = 16;
			_h = _w*3;
			c_1 = c_white;
			c_2 = c_black;
			_sep = 2;
			
			//bg
			draw_rectangle_color(_x + _sep, _y + _sep, _x + _w + _sep, _y + _h + _sep, c_2, c_2, c_2, c_2, false);
			draw_rectangle_color(_x + _w*2 + _sep, _y + _sep, _x + _w*2 + _w + _sep, _y + _h + _sep, c_2, c_2, c_2, c_2, false);
			
			//pause
			draw_rectangle_color(_x, _y, _x + _w, _y + _h, c_1, c_1, c_1, c_1, false);
			draw_rectangle_color(_x + _w*2, _y, _x + _w*2 + _w, _y + _h, c_1, c_1, c_1, c_1, false);
			
			//text
			draw_set_font(fnt_7);
			draw_set_halign(fa_left);
			draw_text_color(_x + _w*4.5 + _sep, _y + _w/3 + _sep, string(global.txt137), c_2, c_2, c_2, c_2, 1);
			draw_text_color(_x + _w*4.5, _y + _w/3, string(global.txt137), c_1, c_1, c_1, c_1, 1);
		break;
		
		case 1:
			draw_set_font(fnt_1);
			draw_set_color(c_white);
			
			var sx, sy;
			
			//medio
			sx = room_width/2;
			sy = 128;
			
			draw_set_halign(fa_center);
			draw_rectangle(sx - (string_width(global.songname)/2), sy, sx + (string_width(global.songname)/2 + 10), sy + (string_height(global.songname) + 3), true);
			draw_text_color(sx + 5 + txt_al, sy + 2 + txt_al, string(global.songname), txt_col2, txt_col2, txt_col2, txt_col2, 1);
			draw_text(sx + 5, sy + 2, string(global.songname));
		break;
	}


/*
//abajo der
sx = room_width - 2;
sy = room_height - string_height(global.songname) - 5;

draw_set_halign(fa_right);
draw_rectangle(sx - (string_width(global.songname) + 10), sy, sx, sy + (string_height(global.songname) + 3), true);
draw_text(sx - 5, sy + 2, string(global.songname));

*/