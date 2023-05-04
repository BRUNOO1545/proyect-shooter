if (is_xbox_bt == true)
	{
		if instance_exists(obj_xboxui_txt)
			{
				xbox_selected = obj_xboxui_txt.op;
			}
		else
			{
				xbox_selected = global.xboxui;
			}
		
		#region //xbox selected

		switch (xbox_selected)
			{
				case 0:
					xbox_spr = spr_ui_xboxbuttons_universal;
				break;
				
				case 1:
					xbox_spr = spr_ui_xboxbuttons_universal_style_2;
				break;
		
				case 2:
					xbox_spr = spr_ui_xboxbuttons;
				break;
		
				case 3:
					xbox_spr = spr_ui_xboxonebuttons;
				break;
		
				case 4:
					xbox_spr = spr_ui_xboxonebuttons_style_2;
				break;
		
				default:
					xbox_spr = spr_ui_xboxbuttons_universal;
				break;
			}

		#endregion

		#region //xbox pov

		if (xbox_pov_count == xbox_pov_count_limit)
			{
				if (xbox_pov_timer < 0)
					{
						xbox_pov_count = xbox_pov_count_max;
						xbox_pov_timer = xbox_pov_timer_max;
					}
				else
					{
						xbox_pov_timer -= 1;
					}
			}
		else
			{
				if (xbox_pov_timer < 0)
					{
						xbox_pov_count += 1;
						xbox_pov_timer = xbox_pov_timer_max;
					}
				else
					{
						xbox_pov_timer -= 1;
					}
			}

		#endregion

		#region //xbox ls

		if (xbox_ls_count == xbox_ls_count_limit)
			{
				if (xbox_ls_timer < 0)
					{
						xbox_ls_count = xbox_ls_count_max;
						xbox_ls_timer = xbox_ls_timer_max;
					}
				else
					{
						xbox_ls_timer -= 1;
					}
			}
		else
			{
				if (xbox_ls_timer < 0)
					{
						xbox_ls_count += 1;
						xbox_ls_timer = xbox_ls_timer_max;
					}
				else
					{
						xbox_ls_timer -= 1;
					}
			}

		#endregion

		#region //xbox rs

		if (xbox_rs_count == xbox_rs_count_limit)
			{
				if (xbox_rs_timer < 0)
					{
						xbox_rs_count = xbox_rs_count_max;
						xbox_rs_timer = xbox_rs_timer_max;
					}
				else
					{
						xbox_rs_timer -= 1;
					}
			}
		else
			{
				if (xbox_rs_timer < 0)
					{
						xbox_rs_count += 1;
						xbox_rs_timer = xbox_rs_timer_max;
					}
				else
					{
						xbox_rs_timer -= 1;
					}
			}

		#endregion
	}
else
	{
		if instance_exists(obj_psui_txt)
			{
				ps_selected = obj_psui_txt.op;
			}
		else
			{
				ps_selected = global.psui;
			}
		
		#region //ps selected

		switch (ps_selected)
			{
				case 0:
					ps_spr = spr_ui_psbuttons_universal;
				break;
				
				case 1:
					ps_spr = spr_ui_psbuttons_universal_style_2;
				break;
		
				case 2:
					ps_spr = spr_ui_ps4buttons;
				break;
		
				case 3:
					ps_spr = spr_ui_ps5buttons;
				break;
		
				default:
					ps_spr = spr_ui_psbuttons_universal;
				break;
			}

		#endregion

		#region //ps pov

		if (ps_pov_count == ps_pov_count_limit)
			{
				if (ps_pov_timer < 0)
					{
						ps_pov_count = ps_pov_count_max;
						ps_pov_timer = ps_pov_timer_max;
					}
				else
					{
						ps_pov_timer -= 1;
					}
			}
		else
			{
				if (ps_pov_timer < 0)
					{
						ps_pov_count += 1;
						ps_pov_timer = ps_pov_timer_max;
					}
				else
					{
						ps_pov_timer -= 1;
					}
			}

		#endregion

		#region //ps ls

		if (ps_ls_count == ps_ls_count_limit)
			{
				if (ps_ls_timer < 0)
					{
						ps_ls_count = ps_ls_count_max;
						ps_ls_timer = ps_ls_timer_max;
					}
				else
					{
						ps_ls_timer -= 1;
					}
			}
		else
			{
				if (ps_ls_timer < 0)
					{
						ps_ls_count += 1;
						ps_ls_timer = ps_ls_timer_max;
					}
				else
					{
						ps_ls_timer -= 1;
					}
			}

		#endregion

		#region //ps rs

		if (ps_rs_count == ps_rs_count_limit)
			{
				if (ps_rs_timer < 0)
					{
						ps_rs_count = ps_rs_count_max;
						ps_rs_timer = ps_rs_timer_max;
					}
				else
					{
						ps_rs_timer -= 1;
					}
			}
		else
			{
				if (ps_rs_timer < 0)
					{
						ps_rs_count += 1;
						ps_rs_timer = ps_rs_timer_max;
					}
				else
					{
						ps_rs_timer -= 1;
					}
			}

		#endregion
	}


//alternate
scr_controller_menu()

if (space)
	{
		if (_alpha == 0)
			{
				_alpha = 1;
			}
		else
			{
				_alpha = 0;
			}
	}