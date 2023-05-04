//fondo
randomize();

var lim, rsx, rsy, rsxm, rsym;
lim = 1;
rsx = random_range(-lim, lim);
rsy = random_range(-lim, lim);
rsxm = random_range(-lim, lim);
rsym = random_range(-lim, lim);


if file_exists(file)
	{
		draw_sprite_stretched_ext(spr, 0, 0 + rsx, 0 + rsy, room_width + rsxm, room_height - 0.5 + rsym, color, ia);
	}
else
	{
		draw_sprite_tiled_ext(spr_missing, 0, 0 + rsx, 0 + rsy, 1, 1, color, ia);
	}


var sqrmx, col;
sqrmx = 1;
col = c_black;

draw_rectangle_color(sqrmx, sqrmx, room_width - sqrmx*2, room_height - sqrmx*2, col, col, col, col, true);
