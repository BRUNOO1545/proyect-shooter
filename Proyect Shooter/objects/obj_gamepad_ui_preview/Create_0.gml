scale = 1;
_x = 32;
_y = 240;
_alpha = 0;

//room check
if (room == xboxui_room)
	{
		is_xbox_bt = true;
	}
else
	{
		is_xbox_bt = false;
	}

#region //xbox

//img
xbox_selected = global.xboxui;
xbox_spr = "";

//pov
xbox_pov_count_max = 3;
xbox_pov_count = xbox_pov_count_max;
xbox_pov_count_limit = 6;
xbox_pov_timer_max = 30;
xbox_pov_timer = xbox_pov_timer_max;

//left stick
xbox_ls_count_max = 7;
xbox_ls_count = xbox_ls_count_max;
xbox_ls_count_limit = 10;
xbox_ls_timer_max = 30;
xbox_ls_timer = xbox_ls_timer_max;

//right stick
xbox_rs_count_max = 19;
xbox_rs_count = xbox_rs_count_max;
xbox_rs_count_limit = 22;
xbox_rs_timer_max = 30;
xbox_rs_timer = xbox_rs_timer_max;

#endregion

#region //ps

//img
ps_selected = global.psui;
ps_spr = "";

//pov
ps_pov_count_max = 3;
ps_pov_count = ps_pov_count_max;
ps_pov_count_limit = 6;
ps_pov_timer_max = 30;
ps_pov_timer = ps_pov_timer_max;

//left stick
ps_ls_count_max = 7;
ps_ls_count = ps_ls_count_max;
ps_ls_count_limit = 10;
ps_ls_timer_max = 30;
ps_ls_timer = ps_ls_timer_max;

//right stick
ps_rs_count_max = 19;
ps_rs_count = ps_rs_count_max;
ps_rs_count_limit = 22;
ps_rs_timer_max = 30;
ps_rs_timer = ps_rs_timer_max;

#endregion