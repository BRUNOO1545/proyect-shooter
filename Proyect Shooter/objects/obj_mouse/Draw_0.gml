/// @description RGB
/*
//test
if instance_exists(obj_player)
	{
		var p1, p2;
		p1 = obj_player.x;
		p2 = obj_player.y;

		draw_rectangle(p1 + squaremax, p2 + squaremax, p1 - squaremax, p2 - squaremax, true);
	}
*/
//fondo negro
var sep = 2;

draw_sprite_ext(spr_new_mouse, image_index, x + sep, y + sep, 1, 1, 0, c_black, image_alpha);

//dibujarse
draw_self();

if (is_gun == true)
	{
		hue += 0.3;

		if (hue > 255)
			{
				hue = 0;
			}

		color = make_color_hsv(hue, 255, 255);

		image_blend = color;
	}
else
	{
		if (is_enemy == true)
			{
				image_blend = c_red;
			}
		else
			{
				image_blend = c_white;
			}
	}



//test
if (global.showcollisions == true)
	{
		scr_isgun();
		
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		draw_text(x + 10, y + 10, "X: " + string(x) + ", Y: " + string(y) + "\nLast collision: " + string(mouse_col_with));
	}