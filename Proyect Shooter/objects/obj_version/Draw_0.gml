/// @description  dibujar version e info
if (room == config_room) or (room == music_room) or (room == sfx_room) or ((room == lang_room) && (global.langscreen == 1)) or (room == helpers_room) or (room == gamepad_room) or (room == deadzone_room) or (room == sens_room) or (room == graphics_room) or (room == showbullets_room)
	{
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_text(room_width - 32, room_height - 64, "iv: " + string(global.iversion) + "\n v: " + string(global.userversion));
	}