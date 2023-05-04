function scr_controller_support(){
	
	scr_gameinitconfig();

	//joystick check
	if (global.gicGamepadSupport == "True")
		{
			if !gamepad_is_connected(0)
				{
					if gamepad_is_connected(4)
						{
							global.controller = 4;
						}
					else
						{
							global.controller = -1;
						}
				}
			else
				{
					global.controller = 0;
				}
		}
	else
		{
			global.controller = -1;
		}
	
}