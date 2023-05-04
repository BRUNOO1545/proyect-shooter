//linea
draw_line(x_start, y_line, x_limit, y_line);

//destello
ia -= 0.1;
draw_sprite_stretched_ext(spr_menu_bg, 0, 0, 0, room_width, room_height, c_white, ia);

/*
//ejected
var ps_xcale, txt_x, txt_y, txt, c_1, c_2, _bf;
ps_xcale = 1;
txt_x = 32;
txt_y = 32;
txt = "EJECTED";
c_1 = c_black;
c_2 = c_white;
_bf = 2;

draw_sprite_ext(spr_menu_bg, 0, txt_x + _bf, txt_y + _bf, ps_xcale, ps_xcale, 0, c_1, eject_alpha);
draw_sprite_ext(spr_menu_bg, 0, txt_x, txt_y, ps_xcale, ps_xcale, 0, c_2, eject_alpha);

draw_set_font(fnt_3);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_color(txt_x + 76 + _bf, txt_y + 8 + _bf, string(txt), c_1, c_1, c_1, c_1, eject_alpha);
draw_text_color(txt_x + 76, txt_y + 8, string(txt), c_2, c_2, c_2, c_2, eject_alpha);