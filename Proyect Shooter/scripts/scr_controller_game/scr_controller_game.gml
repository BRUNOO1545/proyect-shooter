function scr_controller_game(){

	//llamar a la global
	scr_controller_support()
	
	//0 - 3 = xbox, 4 - 11 = generico o ps4
	var ctl = global.controller;

	if gamepad_is_connected(ctl)
		{
			//move
			playerv = gamepad_axis_value(ctl, gp_axislv);
			playerh = gamepad_axis_value(ctl, gp_axislh);
			playerrv = gamepad_axis_value(ctl, gp_axisrv);
			playerrh = gamepad_axis_value(ctl, gp_axisrh);
			
			//actions
			playerfire = gamepad_button_check(ctl, gp_shoulderrb);
			playeresc = gamepad_button_check_pressed(ctl, gp_start);
			playerspace = gamepad_button_check_pressed(ctl, gp_face4);
			playerrestart = gamepad_button_check_pressed(ctl, gp_face1);
			playerreload = gamepad_button_check_pressed(ctl, gp_face3);
			//playerview = gamepad_button_check(ctl, gp_shoulderlb);
			
			//test
			//testkill = gamepad_button_check_pressed(ctl, gp_face2);
			testammo = gamepad_button_check_pressed(ctl, gp_face1);
		}
	else
		{
			//move
			playerup = keyboard_check(ord("W"));
			playerdown = keyboard_check(ord("S"));
			playerleft = keyboard_check(ord("A"));
			playerright = keyboard_check(ord("D"));
			
			//actions
			playerfire = mouse_check_button(mb_left);
			playeresc = keyboard_check_pressed(vk_escape);
			playerspace = mouse_check_button_pressed(mb_right);
			playerrestart = keyboard_check_pressed(ord("R"));
			playerreload = keyboard_check_pressed(ord("R"));
			//playerview = keyboard_check(vk_lshift);
			
			//test
			//testkill = keyboard_check(ord("L"));
			testammo = keyboard_check_pressed(vk_space);
		}

}