/// @description dibujar texto

draw_self();
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_center);

switch global.downloaded
	{
		//descargando
		case 0:
			var nl = string_hash_to_newline(global.txt24);
			draw_text(object_index.x, object_index.y + 45, string(nl));
		break;
		
		//error
		case 1:
			var nl = string_hash_to_newline(global.txt25);
			draw_text(object_index.x, object_index.y + 45, string(nl));
		break;
	}

//texto "cancelando"
if instance_exists(obj_download_update)
	{
		if (obj_download_update.cancel == true)
			{
				draw_text(object_index.x, object_index.y + 45, "\n\n\n\n" + string(global.txt90));	
			}
	}