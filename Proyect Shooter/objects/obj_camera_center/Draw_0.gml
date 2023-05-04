/// @description test coord

if (global.showcollisions == true)
	{
		draw_self();

		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text(x + 40, y + 10, "X: " + string(x) + ", Y: " + string(y));
	}