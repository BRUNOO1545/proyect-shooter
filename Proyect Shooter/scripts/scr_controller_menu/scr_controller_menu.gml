function scr_controller_menu(){

	//llamar a la global
	scr_controller_support()
	
	//0 - 3 = xbox, 4 - 11 = generico o ps4
	var ctl = global.controller;

	if gamepad_is_connected(ctl)
		{
			up = gamepad_button_check_pressed(ctl, gp_padu);
			down = gamepad_button_check_pressed(ctl, gp_padd);
			left = gamepad_button_check_pressed(ctl, gp_padl);
			right = gamepad_button_check_pressed(ctl, gp_padr);
			enter = gamepad_button_check_pressed(ctl, gp_face1);
			esc = gamepad_button_check_pressed(ctl, gp_face2);
			space = gamepad_button_check_pressed(ctl, gp_face3);
			tab = gamepad_button_check_pressed(ctl, gp_shoulderr);
			del = gamepad_button_check_pressed(ctl, gp_shoulderl);
			
			buy = gamepad_button_check_pressed(ctl, gp_face4);
			
			//axis
			axis_vertical = gamepad_axis_value(ctl, gp_axislv);
			axis_horizontal = gamepad_axis_value(ctl, gp_axislh);
			
			scr_controller_axis();
		}
	else
		{
			up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
			down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
			left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
			right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
			enter = keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left);
			esc = keyboard_check_pressed(vk_escape) or mouse_check_button_pressed(mb_right);
			space = keyboard_check_pressed(vk_space);
			tab = keyboard_check_pressed(vk_tab);
			del = keyboard_check_pressed(vk_backspace);
			
			buy = keyboard_check_pressed(vk_space);
		}

}