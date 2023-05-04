function scr_controller_pressanybutton(){
	
	//llamar a la global
	scr_controller_support()
	
	//0 - 3 = xbox, 4 - 11 = generico o ps4
	var ctl = global.controller;

	if gamepad_is_connected(ctl)
		{
			//any
			any_button = (gamepad_button_check_pressed(ctl, gp_face1) or
			gamepad_button_check_pressed(ctl, gp_face2)or gamepad_button_check_pressed(ctl, gp_face3) or
			gamepad_button_check_pressed(ctl, gp_face4) or gamepad_button_check_pressed(ctl, gp_shoulderl) or
			gamepad_button_check_pressed(ctl, gp_shoulderr) or gamepad_button_check_pressed(ctl, gp_shoulderlb) or
			gamepad_button_check_pressed(ctl, gp_shoulderrb) or gamepad_button_check_pressed(ctl, gp_start) or
			gamepad_button_check_pressed(ctl, gp_select) or gamepad_button_check_pressed(ctl, gp_stickl) or
			gamepad_button_check_pressed(ctl, gp_stickr) or gamepad_button_check_pressed(ctl, gp_padu) or
			gamepad_button_check_pressed(ctl, gp_padd) or gamepad_button_check_pressed(ctl, gp_padl) or
			gamepad_button_check_pressed(ctl, gp_padr));
		}
	else
		{
			//any
			any_button = keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any);
		}

}