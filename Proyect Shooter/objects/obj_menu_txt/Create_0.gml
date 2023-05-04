/// @description configs de menu de inicio

//menu de inicio
enter_touched = false;
txt_intro_alpha_spd = 0.05;

if (global.gicUsePreMenu == "True")
	{
		started = global.gamepremenustarted;
		
		if (global.gamepremenustarted == true)
			{
				bg_alpha = 0;
				txt_intro_alpha = 0;
			}
		else
			{
				bg_alpha = 1;
				txt_intro_alpha = 1;
			}
	}
else
	{
		started = true;
		bg_alpha = 0;
		txt_intro_alpha = 0;
	}

//nombre de botones
button[0] = global.txt1;
button[1] = global.txt2;
button[2] = global.txt92;
button[3] = global.txt3;
button[4] = global.txt44;
button[5] = global.txt4;

op = global.UiSelected_MainMenu;
menu_alpha = 0;
txt_col = c_white;
limit = 5;

randomize();
//val_col = random_range(0, 255);
val_col = 255;
val_start = 16;
val_limit = 96;
val_spd = 0.7;
val = val_start;
val_state = choose(0, 1);

//premenu
val_col_pm = 255;
val_start_pm = 16;
val_limit_pm = 194;
val_spd_pm = 2;
val_pm = val_start_pm;
val_state_pm = choose(0, 1);

//title
titlexcale = 1;
titleang = 0;
titleanglimit = 5;
titlespd = 0.02;

if (global.gametitleonce == false)
	{
		titlealp = 0;
	}
else
	{
		titlealp = 1;
	}

randomize();
mode = choose(0, 1);

//random tip
scr_random_tip();

//load main news test
load_rt = 0;