function scr_controller_check(){

	//script
	scr_controller_support()

	//variables
	var ctl = global.controller;

	if gamepad_is_connected(ctl)
		{
			//pov
			ctl_up = gamepad_button_check(ctl, gp_padu);
			ctl_down = gamepad_button_check(ctl, gp_padd);
			ctl_right = gamepad_button_check(ctl, gp_padr);
			ctl_left = gamepad_button_check(ctl, gp_padl);
			
			//buttons
			ctl_a = gamepad_button_check(ctl, gp_face1);
			ctl_b = gamepad_button_check(ctl, gp_face2);
			ctl_x = gamepad_button_check(ctl, gp_face3);
			ctl_y = gamepad_button_check(ctl, gp_face4);
			ctl_l1 = gamepad_button_check(ctl, gp_shoulderl);
			ctl_l2 = gamepad_button_check(ctl, gp_shoulderlb);
			ctl_r1 = gamepad_button_check(ctl, gp_shoulderr);
			ctl_r2 = gamepad_button_check(ctl, gp_shoulderrb);
			ctl_start = gamepad_button_check(ctl, gp_start);
			ctl_select = gamepad_button_check(ctl, gp_select);
		}

}