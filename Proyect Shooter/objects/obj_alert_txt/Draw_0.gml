/// @description dibujar texto
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_center);

var img, nl;
img = room_height/2;
nl = string_hash_to_newline(global.txt32);

draw_sprite(spr_load, 2, room_width/2, img - 128);
draw_text(room_width/2, img, string(nl));

//title
draw_set_font(fnt_3);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, string(global.txt31));

//helpers
scr_controller_img()

if (global.helpers == 1)
	{
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt30));
		
		//enter
		draw_sprite_ext(ui, 1, 15, 595, 1, 1, 0, c_white, 1);
		draw_text(55, 597, string(global.txt29));
	}

//black bg
if (_bg_alp > 0)
	{
		_bg_alp -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, _bg_alp);