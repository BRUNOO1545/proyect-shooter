/// @description nombre de botones

button[0] = global.txt16;
button[1] = global.txt15;

op = global.pause_color;
_bg_alp = 1;
txt_col = c_white;
limit = 1;

doesnt_support = false;

if !(global.pause_style == 1)
	{
		doesnt_support = true;
	}
else
	{
		doesnt_support = false;
	}