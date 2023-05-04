/// @description dibujar
_x -= _xspd;

//fondo
var col1, col2;

switch (global.bg_type)
	{
		case 0:
			col1 = make_color_rgb(25, 0, 13);
			col2 = make_color_rgb(84, 9, 0);
		break;

		case 1:
			col1 = make_color_rgb(0, 1, 19);
			col2 = make_color_rgb(19, 2, 39);
		break;

		case 2:
			col1 = make_color_rgb(61, 11, 116);
			col2 = make_color_rgb(136, 36, 5);
		break;

		case 3:
			col1 = make_color_rgb(29, 76, 93);
			col2 = make_color_rgb(143, 112, 42);
		break;

		default:
			col1 = make_color_rgb(0, 0, 0);
			col2 = make_color_rgb(255, 255, 255);
		break;
	}

draw_rectangle_color(0, 0, room_width, room_height, col1, col1, col2, col2, false);


//rayos
var _obj = obj_menu_bg;

if instance_exists(_obj)
	{
		draw_sprite_stretched_ext(spr_menu_bg, 0, 0, 0, room_width, room_height, c_white, _obj.storm_alpha);
	}


//imagenes que pasan
draw_sprite_tiled(spr_city_bg_4, 0, _x, 0);
draw_sprite_tiled(spr_city_bg_1, 0, _x/2, 0);
draw_sprite_tiled(spr_city_bg_2, 0, _x/3, 0);
draw_sprite_tiled(spr_city_bg_3, 0, _x/4, 0);


//draw_text(100, 100, string(_xspd));