//bg
randomize();
var alp_bg = random_range(0.5, 0.9);
draw_sprite_ext(spr_player_bg, 0, x, y, 1, 1, 0, c_white, alp_bg);

//player
draw_self();

if (global.showcollisions == true)
	{
		draw_circle(x, y, 20, true);
	}