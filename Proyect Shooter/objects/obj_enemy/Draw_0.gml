draw_self();

var rot = 20;

if (global.showcollisions == true)
	{
		draw_circle(x, y, rot, true);
	}

if (state_data == true)
	{
		draw_set_font(fnt_5);
		draw_text(x, y, "state: " + string(state) + "\nenemy_knifed: " + string(enemy_knifed));
	}