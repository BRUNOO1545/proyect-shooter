/// @description nombre de botones

button[0] = global.txt100;
button[1] = global.txt148;
button[2] = global.txt33;
button[3] = global.txt35;
button[4] = global.txt111;
button[5] = global.txt65;
button[6] = global.txt66;

op = global.UiSelected_ConfigGamepad;
_bg_alp = 1;
txt_col = c_white;


if (global.gicGamepadOnly == "True")
	{
		txt_y = 270;
		limit = 4;
	}
else
	{
		txt_y = 240;
		limit = 6;
	}