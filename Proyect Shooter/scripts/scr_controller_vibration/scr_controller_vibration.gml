function scr_controller_vibration(){
	
		var ctl = global.controller;
		
		//vibracion
		if (global.gamepad_vibration == 1)
			{
				if instance_exists(obj_player)
					{
						if (global.gun == 2)
							{
								gamepad_set_vibration(ctl, global.gamepad_vibration_amount, global.gamepad_vibration_amount);
								obj_player.alarm[2] = 15;
							}
						else
							{
								gamepad_set_vibration(ctl, global.gamepad_vibration_amount, global.gamepad_vibration_amount);
								obj_player.alarm[2] = 10;
							}
					}
				else
					{
						gamepad_set_vibration(ctl, global.gamepad_vibration_amount, global.gamepad_vibration_amount);
						obj_player_dead.alarm[0] = 20;
					}
			}
		else
			{
				gamepad_set_vibration(ctl, 0, 0);
			}

}