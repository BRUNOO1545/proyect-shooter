/// @description dibujar lineas

switch (global.pause_dots)
	{
		case 0:
			randomize();

			var rx, ry, rxm;
			rx = random_range(0, room_width);
			ry = random_range(0, room_height);
			rxm = rx + random_range(-130, 130);
			
			draw_line(rx, ry, rxm, ry);
		break;
		
		case 1:
			var c_rx, c_ry, c_range;
			c_rx = random_range(0, room_width);
			c_ry = random_range(0, room_height);
			c_range = random_range(0.5, 2);
			
			draw_circle(c_rx, c_ry, c_range, false);
		break;
		
		case 2:
			var c_rx, c_ry, c_range, rx, ry, rxm;
			
			c_rx = random_range(0, room_width);
			c_ry = random_range(0, room_height);
			c_range = random_range(0.5, 2);
			
			draw_circle(c_rx, c_ry, c_range, false);
			
			rx = random_range(0, room_width);
			ry = random_range(0, room_height);
			rxm = rx + random_range(-130, 130);
			
			draw_line(rx, ry, rxm, ry);
		break;
		
		case 3:
			draw_self();
		break;
		
		default:
			sprite_index = spr_missing;
			draw_self();
		break;
	}