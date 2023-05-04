function scr_controller_axis(){
	
	//subir o bajar con gamepad
	var ctl, timermax;
	ctl = global.controller;
	timermax = 28/global.gamepad_velocity;

	if gamepad_is_connected(ctl) && (global.axistimer <= 0)
		{
			//deadzone
			gamepad_set_axis_deadzone(ctl, global.gamepad_deadzone);
		
			//horizontal
			if (axis_horizontal != 0)
				{
					if (axis_horizontal > 0)
						{
							left = false;
							right = true;
							
							global.axistimer = timermax;
						}
					else
						{
							left = true;
							right = false;
							
							global.axistimer = timermax;
						}
				}
		
			//vertical
			if (axis_vertical != 0)
				{
					if (axis_vertical > 0)
						{
							up = false;
							down = true;
							
							global.axistimer = timermax;
						}
					else
						{
							up = true;
							down = false;
							
							global.axistimer = timermax;
						}
				}
		}
	else
		{
			global.axistimer -= 1;
		}

}